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
localparam FILL   = 1;

// -- Signals

(*MARK_DEBUG="true"*)reg [2:0]            state;
reg [2:0]                                 state_next;

reg                                       fifo_rd_en;
wire   [FIFO_DATA_WIDTH-1:0]              fifo_dout;

reg [C_M_AXIS_DATA_WIDTH-1:0]             m_axis_tdata_next;
reg [((C_M_AXIS_DATA_WIDTH/8))-1:0]       m_axis_tstrb_next;
reg                                       m_axis_tvalid_next;
reg                                       m_axis_tlast_next;

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
always@(*) begin
    state_next = state;
    m_axis_tdata_next = m_axis_tdata;
    m_axis_tstrb_next = m_axis_tstrb;
    m_axis_tlast_next = m_axis_tlast;
    m_axis_tvalid_next = 0;
    fifo_rd_en = 0;
    case(state) 
        IDLE: begin
            if(m_axis_tready & ~fifo_empty) begin
                state_next = FILL;
                m_axis_tdata_next = fifo_dout;
                m_axis_tstrb_next = 8'hff;
                m_axis_tlast_next = 0;
                m_axis_tvalid_next = 1;
                fifo_rd_en = 1;
            end
        end
        FILL: begin
            if(m_axis_tready) begin
                if(fifo_empty) begin
                    state_next = IDLE;
                    m_axis_tdata_next = fifo_dout;
                    m_axis_tstrb_next = 8'hff;
                    m_axis_tlast_next = 1;
                    m_axis_tvalid_next = 1;
                    fifo_rd_en = 0;
                end
                else begin
                    m_axis_tdata_next = fifo_dout;
                    m_axis_tstrb_next = 8'hff;
                    m_axis_tlast_next = 0;
                    m_axis_tvalid_next = 1;
                    fifo_rd_en = 1;
                end
            end
            else begin
                fifo_rd_en = 0;
            end
        end
    endcase
end
always@(posedge axis_clk) begin
    if(~axis_aresetn) begin
        state <= 0;
        m_axis_tdata <= 0;
        m_axis_tstrb <= 0;
        m_axis_tlast <= 0;
        m_axis_tvalid <= 0;
    end
    else begin
        state <= state_next;
        m_axis_tdata <= m_axis_tdata_next;
        m_axis_tstrb <= m_axis_tstrb_next;
        m_axis_tlast <= m_axis_tlast_next;
        m_axis_tvalid <= m_axis_tvalid_next;
    end
end

endmodule
