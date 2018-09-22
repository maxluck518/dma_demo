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
`timescale 1ns/1ps

module fallthrough_small_fifo_v2
    #(parameter WIDTH = 72,
      parameter MAX_DEPTH_BITS = 3,
      parameter PROG_FULL_THRESHOLD = 2**MAX_DEPTH_BITS - 2)
    (

     input [WIDTH-1:0] din,     // Data in
     input          wr_en,   // Write enable

     input          rd_en,   // Read the next word

     output reg [WIDTH-1:0]  dout,    // Data out
     output         full,
     output         nearly_full,
     output         prog_full,
     output         empty,

     input          reset,
     input          clk
     );

   reg                   fifo_valid, middle_valid, dout_valid;
   reg [(WIDTH-1):0]     middle_dout;

   wire [(WIDTH-1):0]    fifo_dout;
   wire                  fifo_empty, fifo_rd_en;
   wire                  will_update_middle, will_update_dout;

   // orig_fifo is just a normal (non-FWFT) synchronous or asynchronous FIFO
   small_fifo_v3
     #(.WIDTH (WIDTH),
       .MAX_DEPTH_BITS (MAX_DEPTH_BITS),
       .PROG_FULL_THRESHOLD (PROG_FULL_THRESHOLD))
       fifo
        (.din           (din),
         .wr_en         (wr_en),
         .rd_en         (fifo_rd_en),
         .dout          (fifo_dout),
         .full          (full),
         .nearly_full   (nearly_full),
         .prog_full     (prog_full),
         .empty         (fifo_empty),
         .reset         (reset),
         .clk           (clk)
         );

   assign will_update_middle = fifo_valid && (middle_valid == will_update_dout);
   assign will_update_dout = (middle_valid || fifo_valid) && (rd_en || !dout_valid);
   assign fifo_rd_en = (!fifo_empty) && !(middle_valid && dout_valid && fifo_valid);
   assign empty = !dout_valid;

   always @(posedge clk) begin
      if (reset)
         begin
            fifo_valid <= 0;
            middle_valid <= 0;
            dout_valid <= 0;
            dout <= 0;
            middle_dout <= 0;
         end
      else
         begin
            if (will_update_middle)
               middle_dout <= fifo_dout;
            
            if (will_update_dout)
               dout <= middle_valid ? middle_dout : fifo_dout;
            
            if (fifo_rd_en)
               fifo_valid <= 1;
            else if (will_update_middle || will_update_dout)
               fifo_valid <= 0;
            
            if (will_update_middle)
               middle_valid <= 1;
            else if (will_update_dout)
               middle_valid <= 0;
            
            if (will_update_dout)
               dout_valid <= 1;
            else if (rd_en)
               dout_valid <= 0;
         end 
     end
endmodule
