/* ****************************************************************************
 * Copyright (c) 2018, Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1.  Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 * 2.  Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 * 3.  Neither the name of the copyright holder nor the names of its
 *     contributors may be used to endorse or promote products derived from
 *     this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION). HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * ************************************************************************* */
`timescale 1 ps / 1 ps
module add_pktlen
#(
    // Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH=256,
    parameter C_S_AXIS_DATA_WIDTH=256,
    parameter TUPLE_WIDTH = 128,

    parameter C_S_AXIS_TUSER_WIDTH=1,

    parameter C_LEN_WIDTH=16,
    parameter C_SPT_WIDTH=8,
    parameter C_DPT_WIDTH=8,

    parameter C_DEFAULT_VALUE_ENABLE=1,
    parameter C_DEFAULT_SRC_PORT=0,
    parameter C_DEFAULT_DST_PORT=0
)
(
    input                                           axis_aclk,
    input                                           axis_resetn,

    input [C_S_AXIS_DATA_WIDTH - 1:0]               s_axis_tdata,
    input [C_S_AXIS_TUSER_WIDTH - 1:0]              s_axis_tuser,
    input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0]       s_axis_tstrb,
    input                                           s_axis_tvalid,
    output reg                                      s_axis_tready,
    input                                           s_axis_tlast,

    output reg [C_M_AXIS_DATA_WIDTH - 1:0]          m_axis_tdata,
    output reg [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0]  m_axis_tstrb,
    output reg                                      m_axis_tvalid,
    input                                           m_axis_tready,
    output reg                                      m_axis_tlast,

    output reg                                      tuple_out_VALID,
    output [TUPLE_WIDTH-1:0]                        tuple_out_DATA

	
);
   
   function integer log2;
      input integer number;
      begin
         log2=0;
         while(2**log2<number) begin
            log2=log2+1;
         end
      end
   endfunction // log2

   localparam MAX_PKT_SIZE = 4096; // In bytes
   localparam LENGTH_COUNTER_WIDTH = log2(C_S_AXIS_DATA_WIDTH / 8);
   localparam IN_FIFO_DEPTH_BIT = log2(MAX_PKT_SIZE/(C_S_AXIS_DATA_WIDTH / 8));
   localparam M_S_RATIO_COUNT = C_M_AXIS_DATA_WIDTH / C_S_AXIS_DATA_WIDTH;
   localparam S_M_RATIO_COUNT = C_S_AXIS_DATA_WIDTH / C_M_AXIS_DATA_WIDTH;

   wire in_fifo_nearly_full;
   reg  in_fifo_rd_en;
   wire in_fifo_empty;
   wire [C_S_AXIS_DATA_WIDTH - 1:0] s_axis_tdata_fifo;
   wire [C_S_AXIS_TUSER_WIDTH - 1:0] s_axis_tuser_fifo;
   wire [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] s_axis_tstrb_fifo;
   wire s_axis_tlast_fifo;

   reg  info_fifo_wr_en;
   reg  info_fifo_rd_en;
   wire info_fifo_empty;
   wire info_fifo_nearly_full;
   reg  [C_LEN_WIDTH - 1:0] length_in;
   reg  [C_LEN_WIDTH - 1:0] length_prev, length_prev_next;
   reg  [LENGTH_COUNTER_WIDTH:0] local_sum;



   reg  first_time, first_time_next;

   integer i, j, k;

    wire [C_LEN_WIDTH - 1:0] tuser_len;
   	wire [C_SPT_WIDTH - 1:0] tuser_spt = C_DEFAULT_SRC_PORT;
   	wire [C_DPT_WIDTH - 1:0] tuser_dpt = C_DEFAULT_DST_PORT;

    reg metadata_state, metadata_state_next;
    localparam METADATA_STATE_WAIT_START = 0;
    localparam METADATA_STATE_WAIT_END = 1;


    fallthrough_small_fifo_v2 #
    (.WIDTH(C_S_AXIS_DATA_WIDTH+C_S_AXIS_DATA_WIDTH / 8 + C_S_AXIS_TUSER_WIDTH + 1),
     .MAX_DEPTH_BITS(IN_FIFO_DEPTH_BIT)
    )
      input_fifo
        (.din           ({s_axis_tlast, s_axis_tuser, s_axis_tstrb, s_axis_tdata}),  // Data in
         .wr_en         (s_axis_tvalid & s_axis_tready),             // Write enable
         .rd_en         (in_fifo_rd_en),    // Read the next word
         .dout          ({s_axis_tlast_fifo, s_axis_tuser_fifo, s_axis_tstrb_fifo, s_axis_tdata_fifo}),
         .full          (),
         .nearly_full   (in_fifo_nearly_full),
         .prog_full     (),
         .empty         (in_fifo_empty),
         .reset         (~axis_resetn),
         .clk           (axis_aclk)
         );

	////////////////////////////////////////////////////////////////
	// The following code generates metadata for each packet
	// 1. Count incoming bytes and present to tuser_len
	// 2. Fill tuser_dpt and tuser_spt with default value
	////////////////////////////////////////////////////////////////

    always @(posedge axis_aclk) begin
        s_axis_tready <= ~in_fifo_nearly_full;
    end

    fallthrough_small_fifo_v2 #
    (.WIDTH(C_LEN_WIDTH),
     .MAX_DEPTH_BITS(9))
      info_fifo
        (.din           (length_in),  // Data in
         .wr_en         (info_fifo_wr_en),             // Write enable
         .rd_en         (info_fifo_rd_en),    // Read the next word
         .dout          (tuser_len),
         .full          (),
         .nearly_full   (info_fifo_nearly_full),
         .prog_full     (),
         .empty         (info_fifo_empty),
         .reset         (~axis_resetn),
         .clk           (axis_aclk)
         );

	always @(*) begin
		local_sum = 0;
		for ( i=0; i< C_S_AXIS_DATA_WIDTH / 8; i=i+1 ) begin
			if ( s_axis_tstrb[i] ) begin
				local_sum = i+1;
			end
		end
    end

    always @(*) begin
        info_fifo_wr_en = 1'b0;
        length_prev_next = length_prev;
        length_in = length_prev + local_sum;
        if(s_axis_tvalid & s_axis_tready) begin
        	length_prev_next = length_prev + local_sum;
        	if(s_axis_tlast) begin
        	   info_fifo_wr_en = 1'b1;
        	   length_prev_next = 0;
        	end
        end
    end

	// tuser_len assignment
    assign tuple_out_DATA[15:0] = tuser_len; 
    assign tuple_out_DATA[23:16] = tuser_spt;
    assign tuple_out_DATA[31:24] = tuser_dpt;
    assign tuple_out_DATA[127:32] = 96'b0; 

    always @(*) begin
        first_time_next = first_time;
        m_axis_tdata = s_axis_tdata_fifo;
        m_axis_tstrb = s_axis_tstrb_fifo;
        m_axis_tlast = s_axis_tlast_fifo;
        m_axis_tvalid = 1'b0;
        in_fifo_rd_en = 1'b0;
        info_fifo_rd_en = 1'b0;
        tuple_out_VALID = 1'b0;
        if(~in_fifo_empty) begin
            if(first_time) begin
                if(~info_fifo_empty) begin
                    m_axis_tvalid = 1'b1;
                    tuple_out_VALID = 1'b1;
                    if(m_axis_tready) begin
                        in_fifo_rd_en = 1'b1;
                        info_fifo_rd_en = 1'b1;
                        first_time_next = 1'b0;
                    end
                end
            end
            else begin
                m_axis_tvalid = 1'b1;
                if(m_axis_tready) begin
                    in_fifo_rd_en = 1'b1;
                    if(s_axis_tlast_fifo) begin
                        first_time_next = 1'b1;
                    end
                end
            end
        end
    end

    always @(posedge axis_aclk) begin
        if (~axis_resetn) begin
            first_time <= 1'b1;
            length_prev <= 1'b0;
        end
        else begin
            first_time <= first_time_next;
            length_prev <= length_prev_next;
        end
    end

endmodule
