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

module FiveTupleDemo_tb;


reg clk_lookup /* undriven */ ;
reg clk_line /* undriven */ ;
reg clk_control /* undriven */ ;
reg clk_line_rst /* undriven */ ;
reg clk_lookup_rst /* undriven */ ;
reg clk_control_rst /* undriven */ ;
reg [7:0] control_S_AXI_AWADDR /* undriven */ ;
reg [0:0] control_S_AXI_AWVALID /* undriven */ ;
reg [31:0] control_S_AXI_WDATA /* undriven */ ;
reg [3:0] control_S_AXI_WSTRB /* undriven */ ;
reg [0:0] control_S_AXI_WVALID /* undriven */ ;
reg [0:0] control_S_AXI_BREADY /* undriven */ ;
reg [7:0] control_S_AXI_ARADDR /* undriven */ ;
reg [0:0] control_S_AXI_ARVALID /* undriven */ ;
reg [0:0] control_S_AXI_RREADY /* undriven */ ;
wire [0:0] packet_in_instream_TVALID ;
wire [0:0] packet_in_instream_TREADY ;
wire [63:0] packet_in_instream_TDATA ;
wire [7:0] packet_in_instream_TKEEP ;
wire [0:0] packet_in_instream_TLAST ;
wire [0:0] tuple_in_metadata_in_VALID ;
wire [127:0] tuple_in_metadata_in_DATA ;
wire [0:0] control_S_AXI_AWREADY /* unused */ ;
wire [0:0] control_S_AXI_WREADY /* unused */ ;
wire [1:0] control_S_AXI_BRESP /* unused */ ;
wire [0:0] control_S_AXI_BVALID /* unused */ ;
wire [0:0] control_S_AXI_ARREADY /* unused */ ;
wire [31:0] control_S_AXI_RDATA /* unused */ ;
wire [1:0] control_S_AXI_RRESP /* unused */ ;
wire [0:0] control_S_AXI_RVALID /* unused */ ;
wire [0:0] enable_processing ;
wire [0:0] packet_out_outstream_TVALID ;
wire [0:0] packet_out_outstream_TREADY ;
wire [63:0] packet_out_outstream_TDATA ;
wire [7:0] packet_out_outstream_TKEEP ;
wire [0:0] packet_out_outstream_TLAST ;
wire [0:0] tuple_out_metadata_out_VALID ;
wire [127:0] tuple_out_metadata_out_DATA ;
wire [0:0] tuple_out_counter_index_out_VALID /* unused */ ;
wire [15:0] tuple_out_counter_index_out_DATA ;
wire [0:0] internal_rst_done /* unused */ ;
reg fw_done /* undriven */ ;
reg stim_file /* undriven */ ;
reg check_file /* undriven */ ;
reg end_sim_after_check /* undriven */ ;
wire stim_eof ;
wire tuple_in_valid ;
wire check_eof ;
wire tuple_out_valid ;
wire packet_out_avail /* unused */ ;
reg [31:0] idleCount ;
reg firstPacketOut ;

// black box
FiveTupleDemo
FiveTupleDemo_i
(
	.packet_in_instream_TVALID	( packet_in_instream_TVALID ),
	.packet_in_instream_TREADY	( packet_in_instream_TREADY ),
	.packet_in_instream_TDATA	( packet_in_instream_TDATA ),
	.packet_in_instream_TKEEP	( packet_in_instream_TKEEP ),
	.packet_in_instream_TLAST	( packet_in_instream_TLAST ),
	.tuple_in_metadata_in_VALID	( tuple_in_metadata_in_VALID ),
	.tuple_in_metadata_in_DATA	( tuple_in_metadata_in_DATA ),
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
	.enable_processing   	( enable_processing ),
	.packet_out_outstream_TVALID	( packet_out_outstream_TVALID ),
	.packet_out_outstream_TREADY	( packet_out_outstream_TREADY ),
	.packet_out_outstream_TDATA	( packet_out_outstream_TDATA ),
	.packet_out_outstream_TKEEP	( packet_out_outstream_TKEEP ),
	.packet_out_outstream_TLAST	( packet_out_outstream_TLAST ),
	.tuple_out_metadata_out_VALID	( tuple_out_metadata_out_VALID ),
	.tuple_out_metadata_out_DATA	( tuple_out_metadata_out_DATA ),
	.tuple_out_counter_index_out_VALID	( tuple_out_counter_index_out_VALID ),
	.tuple_out_counter_index_out_DATA	( tuple_out_counter_index_out_DATA ),
	.clk_line_rst        	( clk_line_rst ),
	.clk_line            	( clk_line ),
	.clk_lookup_rst      	( clk_lookup_rst ),
	.clk_lookup          	( clk_lookup ),
	.clk_control_rst     	( clk_control_rst ),
	.clk_control         	( clk_control ),
	.internal_rst_done   	( internal_rst_done )
);

assign packet_out_outstream_TREADY = 1'd1 ;

assign enable_processing = 1'd1 ;

TB_System_Stim
TB_System_Stim_i
(
	.tuple_in_metadata_in	( tuple_in_metadata_in_DATA ),
	.clk_n               	( ~clk_line ),
	.rst                 	( clk_line_rst ),
	.fw_done             	( fw_done ),
	.file_done           	( stim_file ),
	.stim_eof            	( stim_eof ),
	.tuple_in_valid      	( tuple_in_valid ),
	.packet_in_instream_TREADY	( packet_in_instream_TREADY ),
	.packet_in_instream_TVALID	( packet_in_instream_TVALID ),
	.packet_in_instream_TLAST	( packet_in_instream_TLAST ),
	.packet_in_instream_TKEEP	( packet_in_instream_TKEEP ),
	.packet_in_instream_TDATA	( packet_in_instream_TDATA )
);

assign tuple_in_metadata_in_VALID = tuple_in_valid ;

Check
TB_System_Check_i
(
	.packet_out_tready   	( packet_out_outstream_TREADY ),
	.packet_out_tvalid   	( packet_out_outstream_TVALID ),
	.packet_out_tlast    	( packet_out_outstream_TLAST ),
	.packet_out_tkeep    	( packet_out_outstream_TKEEP ),
	.packet_out_tdata    	( packet_out_outstream_TDATA ),
	.tuple_out_metadata_out	( tuple_out_metadata_out_DATA ),
	.tuple_out_counter_index_out	( tuple_out_counter_index_out_DATA ),
	.clk_n               	( clk_line ),
	.rst                 	( clk_line_rst ),
	.file_done           	( check_file ),
	.fw_done             	( fw_done ),
	.check_eof           	( check_eof ),
	.tuple_out_valid     	( tuple_out_valid ),
	.packet_out_avail    	( packet_out_avail )
);

assign tuple_out_valid = tuple_out_metadata_out_VALID ;

always @( posedge clk_line ) begin
	if ( clk_line_rst ) begin
		idleCount <= 0 ;
		firstPacketOut <= 0 ;
	end
	else  begin
		if ( ( packet_out_outstream_TLAST && packet_out_outstream_TVALID ) ) begin
			idleCount <= 0 ;
			firstPacketOut <= 1 ;
		end
		else  begin
			if ( firstPacketOut ) begin
				firstPacketOut <= 1 ;
				idleCount <= ( idleCount + 1 ) ;
				if ( ( ( ( ( ( idleCount == 1000 ) && check_file ) && fw_done ) && stim_eof ) && end_sim_after_check ) ) begin
					$display("[%0t]  INFO: stopping simulation after 1000 idle cycles", $time);
					if ( check_eof ) begin
						$display("[%0t]  INFO: all expected data successfully received", $time);
						$display("[%0t]  INFO: TEST PASSED", $time);
					end
					else  begin
						$display("[%0t] ERROR: some expected data not received", $time);
						$display("[%0t] ERROR: TEST FAILED", $time);
					end
					$finish(1);
				end
			end
		end
	end
end



always begin 
  #(12999 / 2) clk_lookup =  0; 
  #(12999 / 2) clk_lookup =  1; 
end


always begin 
  #(6400 / 2) clk_line =  0; 
  #(6400 / 2) clk_line =  1; 
end


always begin 
  #(12999 / 2) clk_control =  0; 
  #(12999 / 2) clk_control =  1; 
end


initial begin 
clk_line_rst = 1; 
#1000000 clk_line_rst = 0; 
end 


initial begin 
clk_lookup_rst = 1; 
#1000000 clk_lookup_rst = 0; 
end 


initial begin 
clk_control_rst = 1; 
#1000000 clk_control_rst = 0; 
end 



reg [31:0] read_data;
reg [1:0] read_resp;
reg [1:0] bresp;





import "DPI-C" context function  int CAM_GetAddrSize();
import "DPI-C" context function  void CAM_Init(input int tableID,input int clk_period,input int k,input int v,input int depth,input int aging);
import "DPI-C" context function  int CAM_GetSize(input int tableID,output int size_out);
import "DPI-C" context function  int CAM_SetLogLevel(input int tableID,input int msg_level);
import "DPI-C" context task  CAM_EnableDevice(input int tableID);
import "DPI-C" context task  CAM_WriteEntry(input int tableID,string key,string value,input int static_flag);
import "DPI-C" context task  CAM_EraseEntry(input int tableID,string key);
import "DPI-C" context function  string returnValue();
import "DPI-C" context function  int returnFound();
import "DPI-C" context task  CAM_ReadEntry(output int tableID,string key);
export "DPI-C" task SV_read_control;
export "DPI-C" task SV_write_control;






task SV_write_control(
    input  integer  addr,
    input  integer  data
);
$display("SV_write_control()- start");
axi4_lite_master_write_request_control(addr,data);
$display("SV_write_control()- done");
endtask

task SV_read_control(
    input   integer addr,
    output  integer  data
);
$display("SV_read_control()- start");
axi4_lite_master_read_request_control(addr,data);
$display("SV_read_control()- done");
endtask

task  axi4_lite_master_write_request_control(input integer addr,input integer data);
    @ (posedge clk_control);
        control_S_AXI_AWADDR  <= addr  ;
        control_S_AXI_AWVALID <= 1'b1;
        control_S_AXI_WDATA   <= data   ;
        control_S_AXI_WVALID  <= 1'b1  ;
        control_S_AXI_WSTRB   <= '1   ;
        fork
            begin
                wait(control_S_AXI_AWREADY);
                @ (posedge clk_control);
                control_S_AXI_AWVALID <= 1'b0;
            end
            begin
                wait(control_S_AXI_WREADY);
                @ (posedge clk_control);
                control_S_AXI_WVALID <= 1'b0;
                control_S_AXI_BREADY <= 1'b1;
                wait(control_S_AXI_BVALID);          
                bresp  <= control_S_AXI_BRESP;
                @ (posedge clk_control);
                control_S_AXI_BREADY <= 1'b0;
                wait(~control_S_AXI_BVALID);
            end         
        join
endtask: axi4_lite_master_write_request_control


task  axi4_lite_master_read_request_control(input integer addr,output integer data);
    @ (posedge clk_control);
        control_S_AXI_ARADDR  <= addr;
        control_S_AXI_ARVALID <= 1'b1;
        control_S_AXI_RREADY <= 1'b1;
        begin
            wait(control_S_AXI_RVALID);
            read_resp  <= control_S_AXI_RRESP;
            data  <= control_S_AXI_RDATA;
            @ (posedge clk_control);
            control_S_AXI_ARVALID    <= 1'b0;
            wait(~control_S_AXI_RVALID);
        end
endtask: axi4_lite_master_read_request_control




////////////// Update from file/////////////////
task update_lookup_from_file(input string file_name);
    integer fileid;
    integer count; 
    string  line; 
    integer index;
    string key[];
    int address[];
    string value[];
    string temp_key;
    int temp_address;
    string temp_value;

    fileid = $fopen(file_name, "r"); 
    if (fileid == 0) begin
        $display($sformatf("failed to open %s file",file_name));
        $finish;
    end
    index = 0;
    while(!$feof(fileid)) begin
        if($fgets(line, fileid)) begin
            if (line[0] != "#") begin //not a commented line
                count = $sscanf(line, "%s %s", temp_key,temp_value);
                if (count != 2) begin
                    $display("error in %s:%d : invalid format of string %s, expected key(hex) value(hex)\n", file_name, index, line);
                    $finish;
                end
                index = index + 1;
            end
        end
    end
    $fclose(fileid);
    key = new[index];
    value = new[index];
    
    index = 0;
    fileid = $fopen(file_name, "r"); 
    while(!$feof(fileid)) begin
        if($fgets(line, fileid)) begin
            if (line[0] != "#") begin //not a commented line
                count = $sscanf(line, "%s %s", key[index],value[index]);
                index = index + 1;            end
        end        
    end
    $fclose(fileid);
    for (int i=0;i <index;i++)  begin
        $display("CAM UPDATE %d: KEY(hex) = %s VALUE(hex) = %s",i,key[i],value[i]);
        CAM_WriteEntry (0, key[i], value[i], 0);    end
endtask :  update_lookup_from_file





initial begin
    control_S_AXI_AWADDR <= '0;
    control_S_AXI_AWVALID <= 1'b0;
    control_S_AXI_WDATA <= '0;
    control_S_AXI_WSTRB <= '0;
    control_S_AXI_WVALID <= 1'b0;
    control_S_AXI_BREADY <= 1'b0;
    control_S_AXI_ARADDR <= '0;
    control_S_AXI_ARVALID <= 1'b0;
    control_S_AXI_RREADY <= 1'b0;
end  




string packet_file = "Packet.user"; 



string tuple_file = "Tuple.user"; 



import "DPI-C" context function void FiveTupleDemo_DPI( 
    input string t_packet_file,             
    input int    t_packet_in_type,          
    input string t_tuple_file,              
    input int    t_packet_out_type,         
    input int    t_bus_width,               
    input int    t_verbosity                
);                                          



initial begin
    if ($value$plusargs("PKT=%s", packet_file)) begin end
    if ($value$plusargs("TUP=%s",  tuple_file)) begin end
    FiveTupleDemo_DPI(packet_file, 0, tuple_file, 1, 64, 1);
    fw_done = 0;
    stim_file = 1;
    check_file = 1;
    end_sim_after_check = 1;
    wait(internal_rst_done);
    #10000 
    CAM_Init(0,13000,104,15,1024,0);
    CAM_EnableDevice(0);
    update_lookup_from_file("lookup.tbl");
    #1000 fw_done = 1;
end



endmodule

// machine-generated file - do NOT modify by hand !
// File created on 2018/09/22 15:51:11
// by Barista HDL generation library, version TRUNK @ 1007984

