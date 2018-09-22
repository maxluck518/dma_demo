//----------------------------------------------------------------------------
//   This file is owned and controlled by Xilinx and must be used solely    //
//   for design, simulation, implementation and creation of design files    //
//   limited to Xilinx devices or technologies. Use with non-Xilinx         //
//   devices or technologies is expressly prohibited and immediately        //
//   terminates your license.                                               //
//                                                                          //
//   XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY   //
//   FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY   //
//   PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE            //
//   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS     //
//   MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY     //
//   CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY      //
//   RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY      //
//   DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE  //
//   IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         //
//   REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        //
//   INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A  //
//   PARTICULAR PURPOSE.                                                    //
//                                                                          //
//   Xilinx products are not intended for use in life support appliances,   //
//   devices, or systems.  Use in such applications are expressly           //
//   prohibited.                                                            //
//                                                                          //
//   (c) Copyright 1995-2015 Xilinx, Inc.                                   //
//   All rights reserved.                                                   //
//----------------------------------------------------------------------------
// Xilinx SDNet Compiler version 2018.1.1, build 2258648
//----------------------------------------------------------------------------
/*

*/

`timescale 1 ps / 1 ps

module FiveTupleDemo (
	packet_in_instream_TVALID,
	packet_in_instream_TREADY,
	packet_in_instream_TDATA,
	packet_in_instream_TKEEP,
	packet_in_instream_TLAST,
	tuple_in_metadata_in_VALID,
	tuple_in_metadata_in_DATA,
	control_S_AXI_AWADDR,
	control_S_AXI_AWVALID,
	control_S_AXI_AWREADY,
	control_S_AXI_WDATA,
	control_S_AXI_WSTRB,
	control_S_AXI_WVALID,
	control_S_AXI_WREADY,
	control_S_AXI_BRESP,
	control_S_AXI_BVALID,
	control_S_AXI_BREADY,
	control_S_AXI_ARADDR,
	control_S_AXI_ARVALID,
	control_S_AXI_ARREADY,
	control_S_AXI_RDATA,
	control_S_AXI_RRESP,
	control_S_AXI_RVALID,
	control_S_AXI_RREADY,
	enable_processing,
	packet_out_outstream_TVALID,
	packet_out_outstream_TREADY,
	packet_out_outstream_TDATA,
	packet_out_outstream_TKEEP,
	packet_out_outstream_TLAST,
	tuple_out_metadata_out_VALID,
	tuple_out_metadata_out_DATA,
	tuple_out_counter_index_out_VALID,
	tuple_out_counter_index_out_DATA,
	clk_line_rst,
	clk_line,
	clk_lookup_rst,
	clk_lookup,
	clk_control_rst,
	clk_control,
	internal_rst_done
);

input [0:0] packet_in_instream_TVALID ;
output [0:0] packet_in_instream_TREADY ;
input [63:0] packet_in_instream_TDATA ;
input [7:0] packet_in_instream_TKEEP ;
input [0:0] packet_in_instream_TLAST ;
input [0:0] tuple_in_metadata_in_VALID ;
input [127:0] tuple_in_metadata_in_DATA ;
input [7:0] control_S_AXI_AWADDR ;
input [0:0] control_S_AXI_AWVALID ;
output [0:0] control_S_AXI_AWREADY ;
input [31:0] control_S_AXI_WDATA ;
input [3:0] control_S_AXI_WSTRB ;
input [0:0] control_S_AXI_WVALID ;
output [0:0] control_S_AXI_WREADY ;
output [1:0] control_S_AXI_BRESP ;
output [0:0] control_S_AXI_BVALID ;
input [0:0] control_S_AXI_BREADY ;
input [7:0] control_S_AXI_ARADDR ;
input [0:0] control_S_AXI_ARVALID ;
output [0:0] control_S_AXI_ARREADY ;
output [31:0] control_S_AXI_RDATA ;
output [1:0] control_S_AXI_RRESP ;
output [0:0] control_S_AXI_RVALID ;
input [0:0] control_S_AXI_RREADY ;
input [0:0] enable_processing ;
output [0:0] packet_out_outstream_TVALID ;
input [0:0] packet_out_outstream_TREADY ;
output [63:0] packet_out_outstream_TDATA ;
output [7:0] packet_out_outstream_TKEEP ;
output [0:0] packet_out_outstream_TLAST ;
output [0:0] tuple_out_metadata_out_VALID ;
output [127:0] tuple_out_metadata_out_DATA ;
output [0:0] tuple_out_counter_index_out_VALID ;
output [15:0] tuple_out_counter_index_out_DATA ;
(* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *) input clk_line_rst ;
input clk_line ;
(* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *) input clk_lookup_rst ;
input clk_lookup ;
(* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *) input clk_control_rst ;
input clk_control ;
output [0:0] internal_rst_done ;

wire [0:0] packet_in_instream_TREADY ;
wire [0:0] control_S_AXI_AWREADY ;
wire [0:0] control_S_AXI_WREADY ;
wire [1:0] control_S_AXI_BRESP ;
wire [0:0] control_S_AXI_BVALID ;
wire [0:0] control_S_AXI_ARREADY ;
wire [31:0] control_S_AXI_RDATA ;
wire [1:0] control_S_AXI_RRESP ;
wire [0:0] control_S_AXI_RVALID ;
wire [0:0] packet_out_outstream_TVALID ;
wire [63:0] packet_out_outstream_TDATA ;
wire [7:0] packet_out_outstream_TKEEP ;
wire [0:0] packet_out_outstream_TLAST ;
wire [0:0] tuple_out_metadata_out_VALID ;
wire [127:0] tuple_out_metadata_out_DATA ;
wire [0:0] tuple_out_counter_index_out_VALID ;
wire [15:0] tuple_out_counter_index_out_DATA ;
wire [0:0] S_PROTOCOL_ADAPTER_INGRESS__tuple_out_control_____parser__tuple_in_control_VALID ;
wire [21:0] S_PROTOCOL_ADAPTER_INGRESS__tuple_out_control_____parser__tuple_in_control_DATA ;
wire [0:0] S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_SOF ;
wire [0:0] S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_EOF ;
wire [0:0] S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_VAL ;
wire [0:0] S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_RDY /* unused */ ;
wire [63:0] S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_DAT ;
wire [3:0] S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_CNT ;
wire [0:0] S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_ERR ;
wire [0:0] parser__tuple_out_fields_____S_BRIDGER_for_lookup_tuple_in_request__tuple_in_VALID ;
wire [103:0] parser__tuple_out_fields_____S_BRIDGER_for_lookup_tuple_in_request__tuple_in_DATA ;
wire [0:0] S_BRIDGER_for_lookup_tuple_in_request__tuple_out_____lookup__tuple_in_request_VALID ;
wire [103:0] S_BRIDGER_for_lookup_tuple_in_request__tuple_out_____lookup__tuple_in_request_DATA ;
wire [0:0] parser__tuple_out_control_____S_PROTOCOL_ADAPTER_EGRESS__tuple_in_control_VALID ;
wire [21:0] parser__tuple_out_control_____S_PROTOCOL_ADAPTER_EGRESS__tuple_in_control_DATA ;
wire [0:0] parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_SOF ;
wire [0:0] parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_EOF ;
wire [0:0] parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_VAL ;
wire [0:0] parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_RDY ;
wire [63:0] parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_DAT ;
wire [3:0] parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_CNT ;
wire [0:0] parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_ERR ;
wire [0:0] lookup__tuple_out_response_____S_SYNCER_for__OUT___tuple_in_TUPLE0_VALID ;
wire [15:0] lookup__tuple_out_response_____S_SYNCER_for__OUT___tuple_in_TUPLE0_DATA ;
wire [0:0] S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TVALID ;
wire [0:0] S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TREADY ;
wire [63:0] S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TDATA ;
wire [7:0] S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TKEEP ;
wire [0:0] S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TLAST ;
wire [7:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWADDR ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWVALID ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWREADY ;
wire [31:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WDATA ;
wire [3:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WSTRB ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WVALID ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WREADY ;
wire [1:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BRESP ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BVALID ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BREADY ;
wire [7:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARADDR ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARVALID ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARREADY ;
wire [31:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RDATA ;
wire [1:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RRESP ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RVALID ;
wire [0:0] S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RREADY ;
wire clk_line_init_done ;
wire clk_line_rst_high ;
wire clk_line_rst_low /* unused */ ;
wire clk_lookup_init_done ;
wire clk_lookup_rst_high ;
wire clk_lookup_rst_low /* unused */ ;
wire clk_control_init_done ;
wire clk_control_rst_high ;
wire clk_control_rst_low ;
wire [0:0] internal_rst_done ;
wire S_SYNCER_for__OUT_______IN__BACKPRESSURE ;
reg S_SYNCER_for__OUT_______IN__BACKPRESSURE_1 ;
reg S_SYNCER_for__OUT_______IN__BACKPRESSURE_2 ;
reg S_SYNCER_for__OUT_______IN__BACKPRESSURE_3 ;
wire _source_zero_BACKPRESSURE /* unused */ ;

// black box
S_RESETTER_line
S_RESET_clk_line
(
	.clk                 	( clk_line ),
	.rst                 	( clk_line_rst ),
	.reset_out_active_high	( clk_line_rst_high ),
	.reset_out_active_low	( clk_line_rst_low ),
	.init_done           	( clk_line_init_done )
);

// black box
S_RESETTER_lookup
S_RESET_clk_lookup
(
	.clk                 	( clk_lookup ),
	.rst                 	( clk_lookup_rst ),
	.reset_out_active_high	( clk_lookup_rst_high ),
	.reset_out_active_low	( clk_lookup_rst_low ),
	.init_done           	( clk_lookup_init_done )
);

// black box
S_RESETTER_control
S_RESET_clk_control
(
	.clk                 	( clk_control ),
	.rst                 	( clk_control_rst ),
	.reset_out_active_high	( clk_control_rst_high ),
	.reset_out_active_low	( clk_control_rst_low ),
	.init_done           	( clk_control_init_done )
);

assign internal_rst_done = ( ( clk_line_init_done && clk_lookup_init_done ) && clk_control_init_done ) ;

always @( posedge clk_line ) begin
	if ( clk_line_rst_high ) begin
		S_SYNCER_for__OUT_______IN__BACKPRESSURE_1 <= 0 ;
		S_SYNCER_for__OUT_______IN__BACKPRESSURE_2 <= 0 ;
		S_SYNCER_for__OUT_______IN__BACKPRESSURE_3 <= 0 ;
	end
	else  begin
		S_SYNCER_for__OUT_______IN__BACKPRESSURE_1 <= S_SYNCER_for__OUT_______IN__BACKPRESSURE ;
		S_SYNCER_for__OUT_______IN__BACKPRESSURE_2 <= S_SYNCER_for__OUT_______IN__BACKPRESSURE_1 ;
		S_SYNCER_for__OUT_______IN__BACKPRESSURE_3 <= S_SYNCER_for__OUT_______IN__BACKPRESSURE_2 ;
	end
end

assign packet_in_instream_TREADY = ~S_SYNCER_for__OUT_______IN__BACKPRESSURE_3 ;

assign _source_zero_BACKPRESSURE = 1'd0 ;

// black box
OF_parser
parser
(
	.tuple_in_control_VALID	( S_PROTOCOL_ADAPTER_INGRESS__tuple_out_control_____parser__tuple_in_control_VALID ),
	.tuple_in_control_DATA	( S_PROTOCOL_ADAPTER_INGRESS__tuple_out_control_____parser__tuple_in_control_DATA ),
	.packet_in_SOF       	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_SOF ),
	.packet_in_EOF       	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_EOF ),
	.packet_in_VAL       	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_VAL ),
	.packet_in_RDY       	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_RDY ),
	.packet_in_DAT       	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_DAT ),
	.packet_in_CNT       	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_CNT ),
	.packet_in_ERR       	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_ERR ),
	.tuple_out_fields_VALID	( parser__tuple_out_fields_____S_BRIDGER_for_lookup_tuple_in_request__tuple_in_VALID ),
	.tuple_out_fields_DATA	( parser__tuple_out_fields_____S_BRIDGER_for_lookup_tuple_in_request__tuple_in_DATA ),
	.tuple_out_control_VALID	( parser__tuple_out_control_____S_PROTOCOL_ADAPTER_EGRESS__tuple_in_control_VALID ),
	.tuple_out_control_DATA	( parser__tuple_out_control_____S_PROTOCOL_ADAPTER_EGRESS__tuple_in_control_DATA ),
	.packet_out_SOF      	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_SOF ),
	.packet_out_EOF      	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_EOF ),
	.packet_out_VAL      	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_VAL ),
	.packet_out_RDY      	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_RDY ),
	.packet_out_DAT      	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_DAT ),
	.packet_out_CNT      	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_CNT ),
	.packet_out_ERR      	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_ERR ),
	.clk_line            	( clk_line ),
	.rst                 	( clk_line_rst_high )
);

// black box
ACL
lookup
(
	.tuple_in_request_VALID	( S_BRIDGER_for_lookup_tuple_in_request__tuple_out_____lookup__tuple_in_request_VALID ),
	.tuple_in_request_DATA	( S_BRIDGER_for_lookup_tuple_in_request__tuple_out_____lookup__tuple_in_request_DATA ),
	.tuple_out_response_VALID	( lookup__tuple_out_response_____S_SYNCER_for__OUT___tuple_in_TUPLE0_VALID ),
	.tuple_out_response_DATA	( lookup__tuple_out_response_____S_SYNCER_for__OUT___tuple_in_TUPLE0_DATA ),
	.control_S_AXI_AWADDR	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWADDR ),
	.control_S_AXI_AWVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWVALID ),
	.control_S_AXI_AWREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWREADY ),
	.control_S_AXI_WDATA 	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WDATA ),
	.control_S_AXI_WSTRB 	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WSTRB ),
	.control_S_AXI_WVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WVALID ),
	.control_S_AXI_WREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WREADY ),
	.control_S_AXI_BRESP 	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BRESP ),
	.control_S_AXI_BVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BVALID ),
	.control_S_AXI_BREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BREADY ),
	.control_S_AXI_ARADDR	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARADDR ),
	.control_S_AXI_ARVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARVALID ),
	.control_S_AXI_ARREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARREADY ),
	.control_S_AXI_RDATA 	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RDATA ),
	.control_S_AXI_RRESP 	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RRESP ),
	.control_S_AXI_RVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RVALID ),
	.control_S_AXI_RREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RREADY ),
	.clk_lookup          	( clk_lookup ),
	.clk_control         	( clk_control ),
	.clk_lookup_rst_high 	( clk_lookup_rst_high ),
	.clk_control_rst_low 	( clk_control_rst_low )
);

// black box
S_PROTOCOL_ADAPTER_INGRESS
S_PROTOCOL_ADAPTER_INGRESS
(
	.packet_in_TVALID    	( packet_in_instream_TVALID ),
	.packet_in_TREADY    	(  ),
	.packet_in_TDATA     	( packet_in_instream_TDATA ),
	.packet_in_TKEEP     	( packet_in_instream_TKEEP ),
	.packet_in_TLAST     	( packet_in_instream_TLAST ),
	.tuple_out_control_VALID	( S_PROTOCOL_ADAPTER_INGRESS__tuple_out_control_____parser__tuple_in_control_VALID ),
	.tuple_out_control_DATA	( S_PROTOCOL_ADAPTER_INGRESS__tuple_out_control_____parser__tuple_in_control_DATA ),
	.packet_out_SOF      	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_SOF ),
	.packet_out_EOF      	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_EOF ),
	.packet_out_VAL      	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_VAL ),
	.packet_out_RDY      	( packet_in_instream_TREADY ),
	.packet_out_DAT      	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_DAT ),
	.packet_out_CNT      	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_CNT ),
	.packet_out_ERR      	( S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_S_PROTOCOL_ADAPTER_INGRESS__packet_out_____parser__packet_in_ERR ),
	.plain_in_init       	( enable_processing ),
	.clk_line            	( clk_line ),
	.rst                 	( clk_line_rst_high )
);

// black box
S_BRIDGER_for_lookup_tuple_in_request
S_BRIDGER_for_lookup_tuple_in_request
(
	.tuple_in_VALID      	( parser__tuple_out_fields_____S_BRIDGER_for_lookup_tuple_in_request__tuple_in_VALID ),
	.tuple_in_DATA       	( parser__tuple_out_fields_____S_BRIDGER_for_lookup_tuple_in_request__tuple_in_DATA ),
	.tuple_out_VALID     	( S_BRIDGER_for_lookup_tuple_in_request__tuple_out_____lookup__tuple_in_request_VALID ),
	.tuple_out_DATA      	( S_BRIDGER_for_lookup_tuple_in_request__tuple_out_____lookup__tuple_in_request_DATA ),
	.clk_lookup          	( clk_lookup ),
	.clk_line            	( clk_line ),
	.clk_line_rst_high   	( clk_line_rst_high ),
	.clk_lookup_rst_high 	( clk_lookup_rst_high )
);

// black box
S_PROTOCOL_ADAPTER_EGRESS
S_PROTOCOL_ADAPTER_EGRESS
(
	.tuple_in_control_VALID	( parser__tuple_out_control_____S_PROTOCOL_ADAPTER_EGRESS__tuple_in_control_VALID ),
	.tuple_in_control_DATA	( parser__tuple_out_control_____S_PROTOCOL_ADAPTER_EGRESS__tuple_in_control_DATA ),
	.packet_in_SOF       	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_SOF ),
	.packet_in_EOF       	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_EOF ),
	.packet_in_VAL       	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_VAL ),
	.packet_in_RDY       	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_RDY ),
	.packet_in_DAT       	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_DAT ),
	.packet_in_CNT       	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_CNT ),
	.packet_in_ERR       	( parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_parser__packet_out_____S_PROTOCOL_ADAPTER_EGRESS__packet_in_ERR ),
	.packet_out_TVALID   	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TVALID ),
	.packet_out_TREADY   	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TREADY ),
	.packet_out_TDATA    	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TDATA ),
	.packet_out_TKEEP    	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TKEEP ),
	.packet_out_TLAST    	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TLAST ),
	.clk_line            	( clk_line ),
	.rst                 	( clk_line_rst_high )
);

// black box
S_SYNCER_for__OUT_
S_SYNCER_for__OUT_
(
	.tuple_in_TUPLE0_VALID	( lookup__tuple_out_response_____S_SYNCER_for__OUT___tuple_in_TUPLE0_VALID ),
	.tuple_in_TUPLE0_DATA	( lookup__tuple_out_response_____S_SYNCER_for__OUT___tuple_in_TUPLE0_DATA ),
	.tuple_out_TUPLE0_VALID	( tuple_out_counter_index_out_VALID ),
	.tuple_out_TUPLE0_DATA	( tuple_out_counter_index_out_DATA ),
	.packet_in_PACKET1_TVALID	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TVALID ),
	.packet_in_PACKET1_TREADY	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TREADY ),
	.packet_in_PACKET1_TDATA	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TDATA ),
	.packet_in_PACKET1_TKEEP	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TKEEP ),
	.packet_in_PACKET1_TLAST	( S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_S_PROTOCOL_ADAPTER_EGRESS__packet_out_____S_SYNCER_for__OUT___packet_in_PACKET1_TLAST ),
	.packet_out_PACKET1_TVALID	( packet_out_outstream_TVALID ),
	.packet_out_PACKET1_TREADY	( packet_out_outstream_TREADY ),
	.packet_out_PACKET1_TDATA	( packet_out_outstream_TDATA ),
	.packet_out_PACKET1_TKEEP	( packet_out_outstream_TKEEP ),
	.packet_out_PACKET1_TLAST	( packet_out_outstream_TLAST ),
	.tuple_in_TUPLE2_VALID	( tuple_in_metadata_in_VALID ),
	.tuple_in_TUPLE2_DATA	( tuple_in_metadata_in_DATA ),
	.tuple_out_TUPLE2_VALID	( tuple_out_metadata_out_VALID ),
	.tuple_out_TUPLE2_DATA	( tuple_out_metadata_out_DATA ),
	.backpressure_in     	( ~(packet_out_outstream_TREADY) ),
	.backpressure_out    	( S_SYNCER_for__OUT_______IN__BACKPRESSURE ),
	.clk_in_0            	( clk_line ),
	.rst_in_0            	( clk_line_rst_high ),
	.clk_out_0           	( clk_line ),
	.rst_out_0           	( clk_line_rst_high ),
	.clk_in_1            	( clk_lookup ),
	.rst_in_1            	( clk_lookup_rst_high ),
	.clk_out_1           	( clk_line ),
	.rst_out_1           	( clk_line_rst_high ),
	.clk_in_2            	( clk_line ),
	.rst_in_2            	( clk_line_rst_high ),
	.clk_out_2           	( clk_line ),
	.rst_out_2           	( clk_line_rst_high )
);

// black box
S_CONTROLLER_FiveTupleDemo
S_CONTROL_FiveTupleDemo
(
	.enable_processing   	( ),
	.lookup_control_S_AXI_AWADDR	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWADDR ),
	.lookup_control_S_AXI_AWVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWVALID ),
	.lookup_control_S_AXI_AWREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_AWREADY ),
	.lookup_control_S_AXI_WDATA	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WDATA ),
	.lookup_control_S_AXI_WSTRB	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WSTRB ),
	.lookup_control_S_AXI_WVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WVALID ),
	.lookup_control_S_AXI_WREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_WREADY ),
	.lookup_control_S_AXI_BRESP	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BRESP ),
	.lookup_control_S_AXI_BVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BVALID ),
	.lookup_control_S_AXI_BREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_BREADY ),
	.lookup_control_S_AXI_ARADDR	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARADDR ),
	.lookup_control_S_AXI_ARVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARVALID ),
	.lookup_control_S_AXI_ARREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_ARREADY ),
	.lookup_control_S_AXI_RDATA	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RDATA ),
	.lookup_control_S_AXI_RRESP	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RRESP ),
	.lookup_control_S_AXI_RVALID	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RVALID ),
	.lookup_control_S_AXI_RREADY	( S_CONTROL_FiveTupleDemo__lookup_control_____lookup__control_S_AXI_RREADY ),
	.control_S_AXI_AWADDR	( control_S_AXI_AWADDR ),
	.control_S_AXI_AWVALID	( control_S_AXI_AWVALID ),
	.control_S_AXI_AWREADY	( control_S_AXI_AWREADY ),
	.control_S_AXI_WDATA 	( control_S_AXI_WDATA ),
	.control_S_AXI_WSTRB 	( control_S_AXI_WSTRB ),
	.control_S_AXI_WVALID	( control_S_AXI_WVALID ),
	.control_S_AXI_WREADY	( control_S_AXI_WREADY ),
	.control_S_AXI_BRESP 	( control_S_AXI_BRESP ),
	.control_S_AXI_BVALID	( control_S_AXI_BVALID ),
	.control_S_AXI_BREADY	( control_S_AXI_BREADY ),
	.control_S_AXI_ARADDR	( control_S_AXI_ARADDR ),
	.control_S_AXI_ARVALID	( control_S_AXI_ARVALID ),
	.control_S_AXI_ARREADY	( control_S_AXI_ARREADY ),
	.control_S_AXI_RDATA 	( control_S_AXI_RDATA ),
	.control_S_AXI_RRESP 	( control_S_AXI_RRESP ),
	.control_S_AXI_RVALID	( control_S_AXI_RVALID ),
	.control_S_AXI_RREADY	( control_S_AXI_RREADY ),
	.clk_control         	( clk_control ),
	.rst                 	( clk_control_rst_high )
);


endmodule

// machine-generated file - do NOT modify by hand !
// File created on 2018/09/22 15:51:11
// by Barista HDL generation library, version TRUNK @ 1007984

