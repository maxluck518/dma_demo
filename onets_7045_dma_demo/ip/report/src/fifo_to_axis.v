/*******************************************************************************
 *
 *  NetFPGA-10G http://www.netfpga.org
 *
 *  File:
 *        fifo_to_axis.v
 *
 *  Library:
 *        hw/osnt/pcores/nf10_pcap_replay_uengine_v1_00_a
 *
 *  Module:
 *        fifo_to_axis
 *
 *  Author:
 *        Muhammad Shahbaz
 *
 *  Description:
 *
 *
 *  Copyright notice:
 *        Copyright (C) 2010, 2011 The Board of Trustees of The Leland Stanford
 *                                 Junior University
 *
 *  Licence:
 *        This file is part of the NetFPGA 10G development base package.
 *
 *        This file is free code: you can redistribute it and/or modify it under
 *        the terms of the GNU Lesser General Public License version 2.1 as
 *        published by the Free Software Foundation.
 *
 *        This package is distributed in the hope that it will be useful, but
 *        WITHOUT ANY WARRANTY; without even the implied warranty of
 *        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *        Lesser General Public License for more details.
 *
 *        You should have received a copy of the GNU Lesser General Public
 *        License along with the NetFPGA source package.  If not, see
 *        http://www.gnu.org/licenses/.
 *
 */

module fifo_to_axis
#(
    //Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH  = 64,
    parameter C_M_AXIS_TUSER_WIDTH = 8,
    parameter FIFO_DATA_WIDTH      = 20 
)
(
    // Global Ports
    input                                           axis_clk,
    input                                           axis_aresetn,
    input                                           fifo_clk,

    // FIFO Ports
    input                                           fifo_wr_en,
    input [FIFO_DATA_WIDTH-1:0]                     fifo_din,
    output                                          fifo_full,
    output                                          fifo_prog_full,		
    output                                          fifo_empty,

    // output [FIFO_DATA_WIDTH-1:0]                    fifo_dout,
    // input                                           fifo_rd_en,
    // input                                           fifo_empty,

    // AXI Stream Ports
    output reg [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_tdata,
    output reg [((C_M_AXIS_DATA_WIDTH/8))-1:0]      m_axis_tstrb,
    output reg [C_M_AXIS_TUSER_WIDTH-1:0]           m_axis_tuser,
    output reg                                      m_axis_tvalid,
    input                                           m_axis_tready,
    output reg                                      m_axis_tlast

);

localparam IDLE   = 0;
localparam FILL_1 = 1;
localparam FILL_2 = 2;
localparam FILL_3 = 3;

// -- Signals

reg [2:0]                                 state;
reg [2:0]                                 state_next;
reg [4:0]                                 cnt;
reg [4:0]                                 cnt_next;

reg                                       fifo_rd_en;
wire   [FIFO_DATA_WIDTH-1:0]              fifo_dout;

reg [24-1:0]                              tmp_data_1;
reg [24-1:0]                              tmp_data_2;
reg [24/8-1:0]                            tmp_strb_1;
reg [24/8-1:0]                            tmp_strb_2;

reg [24-1:0]                              fill_1_data;
reg [24-1:0]                              fill_1_data_next;
reg [24/8-1:0]                            fill_1_strb;
reg [24/8-1:0]                            fill_1_strb_next;

wire [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_tdata_t;
wire [((C_M_AXIS_DATA_WIDTH/8))-1:0]      m_axis_tstrb_t;
reg                                       m_axis_tvalid_t;
reg                                       m_axis_tlast_t;

// fifo write plane

fallthrough_small_fifo_v2
#(
    .WIDTH                (FIFO_DATA_WIDTH),
    .MAX_DEPTH_BITS       (10)
) report_fifo
(
    .din               (fifo_din),
    .wr_en             (fifo_wr_en),
    .full              (fifo_full),
    .prog_full         (fifo_prog_full),
    // .nearly_full       (),

    .dout              (fifo_dout),
    .rd_en             (fifo_rd_en),
    .empty             (fifo_empty),

    .reset             (~axis_aresetn),
    .clk               (axis_clk)
);

// fifo read plane

always@(posedge axis_clk) begin
    if(~axis_aresetn) begin
        m_axis_tdata  <= 0;
        m_axis_tstrb  <= 0;
        m_axis_tlast  <= 0;
        m_axis_tvalid <= 0;
    end
    else begin
        m_axis_tdata  <= m_axis_tdata_t;
        m_axis_tstrb  <= m_axis_tstrb_t;
        m_axis_tlast  <= m_axis_tlast_t;
        m_axis_tvalid <= m_axis_tvalid_t;
    end
end

assign m_axis_tdata_t = {16'h0000,tmp_data_2,tmp_data_1};
assign m_axis_tstrb_t = {2'b00,tmp_strb_2,tmp_strb_1};

always@(*) begin
    state_next = state;
    cnt_next = cnt;
    fifo_rd_en = 0;
    tmp_data_1 = 0;
    tmp_data_2 = 0;
    tmp_strb_1 = 0;
    tmp_strb_2 = 0;
    fill_1_data_next = fill_1_data;
    fill_1_strb_next = fill_1_strb;
    m_axis_tvalid_t = 0;
    m_axis_tlast_t = 0;
    case(state)
        IDLE: begin
            if(m_axis_tready & ~fifo_empty) begin
                state_next = FILL_2;
                tmp_data_1 = {4'b0000,fifo_dout};
                tmp_strb_1 = 3'b111;
            end
        end
        FILL_1: begin
            fill_1_data_next = {4'b0000,fifo_dout};
            fill_1_strb_next = 3'b111;
            if(m_axis_tready & ~fifo_empty) begin
                state_next = FILL_2;
                fifo_rd_en = 1;
            end
        end
        FILL_2: begin
            tmp_data_1 = fill_1_data;
            tmp_strb_1 = fill_1_strb;
            tmp_data_2 = {4'b0000,fifo_dout};
            tmp_strb_2 = 3'b111;
            m_axis_tvalid_t = 1;
            if(m_axis_tready & ~fifo_empty) begin
                state_next = FILL_1;
                fifo_rd_en = 1;
            end
            else begin
                state_next = IDLE;
                fifo_rd_en = 0;
            end

            if(cnt == 4'h9) begin
                cnt_next = 0;
                m_axis_tlast_t = 1;
            end
            else begin
                cnt_next = cnt + 1;
            end
        end
    endcase
end

always@(posedge axis_clk) begin
    if(~axis_aresetn) begin
        fill_1_data <= 0;
        fill_1_strb <= 0;
        state       <= IDLE;
        cnt         <= 0;
    end
    else begin
        fill_1_data <= fill_1_data_next;
        fill_1_strb <= fill_1_strb_next;
        state <= state_next;
        cnt   <= cnt_next;
    end
end
	
endmodule
