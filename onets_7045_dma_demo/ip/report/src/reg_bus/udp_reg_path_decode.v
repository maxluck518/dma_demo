
module udp_reg_path_decode (
   input                reg_req,
   input                reg_rd_wr_L,
   input [31:0]         reg_addr,
   input [31:0]         reg_wr_data,
   
   output reg           reg_ack,
   output reg [31:0]    reg_rd_data,

   // interface to core registers
   output reg           ctrl_reg_req,
   output reg           ctrl_reg_rd_wr_L,
   output reg [31:0]    ctrl_reg_addr,
   output reg [31:0]    ctrl_reg_wr_data,

   input                ctrl_reg_ack,
   input [31:0]         ctrl_reg_rd_data,

   // interface to user data path
   output reg           udp_reg_req,
   output reg           udp_reg_rd_wr_L,
   output reg [31:0]    udp_reg_addr,
   output reg [31:0]    udp_reg_wr_data,

   input                udp_reg_ack,
   input [31:0]         udp_reg_rd_data,


   input                clk,
   input                reset
);
   always @(posedge clk) begin

      if(reset) begin
         reg_ack <= 1'b0;
         reg_rd_data <= 32'h0;

         ctrl_reg_req <= 1'b0;
         ctrl_reg_rd_wr_L <= 1'b1;
         ctrl_reg_addr <= 31'h0;
         ctrl_reg_wr_data <= 31'h0;

         udp_reg_req <= 1'b0;
         udp_reg_rd_wr_L <= 1'b1;
         udp_reg_addr <= 31'h0;
         udp_reg_wr_data <= 31'h0;
      end
      else begin
         casez (reg_addr[23:20])
           4'b0001: begin
              reg_ack <= ctrl_reg_ack;
              reg_rd_data <= ctrl_reg_rd_data;

              ctrl_reg_req <= reg_req;
              ctrl_reg_rd_wr_L <= reg_rd_wr_L;
              ctrl_reg_addr <= reg_addr[31:2];
              ctrl_reg_wr_data <= reg_wr_data;
           end

           4'b0010: begin
              reg_ack <= udp_reg_ack;
              reg_rd_data <= udp_reg_rd_data;

              udp_reg_req <= reg_req;
              udp_reg_rd_wr_L <= reg_rd_wr_L;
              udp_reg_addr <= reg_addr[31:2];
              udp_reg_wr_data <= reg_wr_data;
           end
           
           default: begin
              reg_ack <= reg_req;
              reg_rd_data <= 32'h DEAD_BEEF;
           end 
         endcase
      end

   end

endmodule 
