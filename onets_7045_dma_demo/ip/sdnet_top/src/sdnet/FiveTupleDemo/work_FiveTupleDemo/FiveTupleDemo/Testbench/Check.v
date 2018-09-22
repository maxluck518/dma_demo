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
Output Checking Module
*/

`timescale 1 ps / 1 ps

module Check (
	file_done,
	fw_done,
	rst,
	clk_n,
	check_eof,
	tuple_out_valid,
	tuple_out_metadata_out,
	tuple_out_counter_index_out,
	packet_out_avail,
	packet_out_tready,
	packet_out_tvalid,
	packet_out_tlast,
	packet_out_tkeep,
	packet_out_tdata
);

input file_done ;
input fw_done ;
input rst ;
input clk_n ;
output check_eof ;
input tuple_out_valid ;
input [127:0] tuple_out_metadata_out ;
input [15:0] tuple_out_counter_index_out ;
output packet_out_avail ;
input packet_out_tready ;
input packet_out_tvalid ;
input packet_out_tlast ;
input [7:0] packet_out_tkeep ;
input [63:0] packet_out_tdata ;

reg [31:0] fd_pkt ;
reg [31:0] fd_tup ;
reg check_eof ;
reg [31:0] pktCnt ;
reg [31:0] wordCnt ;
wire ready ;
wire dataVld ;
wire dataEop ;
reg [127:0] tuple_exp_tuple_out_metadata_out ;
reg [15:0] tuple_exp_tuple_out_counter_index_out ;
wire packet_out_avail ;
reg packet_exp_tlast ;
reg [7:0] packet_exp_tkeep ;
reg [63:0] packet_exp_tdata ;
reg [63:0] packet_out_mask ;

always @( posedge file_done ) begin
	fd_pkt <= $fopen("Packet_expect.axi", "r") ;
	fd_tup <= $fopen("Tuple_expect.txt", "r") ;
end

always @( posedge clk_n ) begin
	if ( rst ) begin
		pktCnt <= 1 ;
		wordCnt <= 0 ;
	end
	else  begin
		if ( ( dataVld && ready ) ) begin
			pktCnt <= ( dataEop ? ( pktCnt + 1 ) : pktCnt ) ;
			wordCnt <= ( dataEop ? 0 : ( wordCnt + 1 ) ) ;
		end
	end
end

always @( posedge clk_n ) begin
	if ( rst ) begin
		tuple_exp_tuple_out_metadata_out <= 'hX ;
		tuple_exp_tuple_out_counter_index_out <= 'hX ;
	end
	if ( ( ( ( !rst && file_done ) && fw_done ) && tuple_out_valid ) ) begin
		if ( ( 32'h2 != $fscanf(fd_tup, "%x %x ", tuple_exp_tuple_out_metadata_out, tuple_exp_tuple_out_counter_index_out) ) ) begin
			$display("[%0t] ERROR: error reading expected tuple file", $time);
			$finish(1);
		end
		else  begin
			if ( ( { tuple_exp_tuple_out_metadata_out, tuple_exp_tuple_out_counter_index_out } == { tuple_out_metadata_out, tuple_out_counter_index_out } ) ) begin
				$display("[%0t]  INFO: packet %0d tuple OK < tuple_out_metadata_out, tuple_out_counter_index_out > = < %x %x >", $time, pktCnt, tuple_out_metadata_out, tuple_out_counter_index_out);
			end
			else  begin
				$display("[%0t] ERROR: tuple mismatch for packet %0d", $time, pktCnt);
				$display("expected < tuple_out_metadata_out, tuple_out_counter_index_out > = < %x %x >", tuple_exp_tuple_out_metadata_out, tuple_exp_tuple_out_counter_index_out);
				$display("actual   < tuple_out_metadata_out, tuple_out_counter_index_out > = < %x %x >", tuple_out_metadata_out, tuple_out_counter_index_out);
				$finish(1);
			end
		end
	end
end

assign packet_out_avail = 1 ;

always @* begin
	packet_out_mask[7:0] = ( packet_out_tlast ? { 8{packet_out_tkeep[0]} } : 8'd255 ) ;
	packet_out_mask[15:8] = ( packet_out_tlast ? { 8{packet_out_tkeep[1]} } : 8'd255 ) ;
	packet_out_mask[23:16] = ( packet_out_tlast ? { 8{packet_out_tkeep[2]} } : 8'd255 ) ;
	packet_out_mask[31:24] = ( packet_out_tlast ? { 8{packet_out_tkeep[3]} } : 8'd255 ) ;
	packet_out_mask[39:32] = ( packet_out_tlast ? { 8{packet_out_tkeep[4]} } : 8'd255 ) ;
	packet_out_mask[47:40] = ( packet_out_tlast ? { 8{packet_out_tkeep[5]} } : 8'd255 ) ;
	packet_out_mask[55:48] = ( packet_out_tlast ? { 8{packet_out_tkeep[6]} } : 8'd255 ) ;
	packet_out_mask[63:56] = ( packet_out_tlast ? { 8{packet_out_tkeep[7]} } : 8'd255 ) ;
end

assign ready = packet_out_tready ;

assign dataVld = packet_out_tvalid ;

assign dataEop = packet_out_tlast ;

always @( posedge clk_n ) begin
	if ( rst ) begin
		packet_exp_tlast <= 'hX ;
		packet_exp_tkeep <= 'hX ;
		packet_exp_tdata <= 'hX ;
	end
	else  begin
		if ( file_done ) begin
			check_eof <= $feof(fd_pkt) ;
		end
	end
	if ( ( ( ( ( !rst && file_done ) && fw_done ) && packet_out_tvalid ) && packet_out_tready ) ) begin
		if ( ( 32'h3 != $fscanf(fd_pkt, "%x %x %x ", packet_exp_tlast, packet_exp_tkeep, packet_exp_tdata) ) ) begin
			$display("[%0t] ERROR: error reading expected packet file", $time);
			$finish(1);
		end
		else  begin
			if ( ( ( ( packet_exp_tlast == packet_out_tlast ) && ( packet_exp_tkeep == packet_out_tkeep ) ) && ( packet_exp_tdata == ( packet_out_tdata & packet_out_mask ) ) ) ) begin
				$display("[%0t]  INFO: packet %0d  data OK (tlast, tkeep, tdata) = (%b, %x, %x)", $time, pktCnt, packet_out_tlast, packet_out_tkeep, packet_out_tdata);
			end
			else  begin
				$display("[%0t] ERROR: packet mismatch in packet %0d cycle %0d", $time, pktCnt, wordCnt);
				$display("expected (tlast, tkeep, tdata) = (%b, %x, %x)", packet_exp_tlast, packet_exp_tkeep, packet_exp_tdata);
				$display("actual   (tlast, tkeep, tdata) = (%b, %x, %x)", packet_out_tlast, packet_out_tkeep, ( packet_out_tdata & packet_out_mask ));
				$finish(1);
			end
		end
	end
end


endmodule

// machine-generated file - do NOT modify by hand !
// File created on 2018/09/22 15:51:11
// by Barista HDL generation library, version TRUNK @ 1007984

