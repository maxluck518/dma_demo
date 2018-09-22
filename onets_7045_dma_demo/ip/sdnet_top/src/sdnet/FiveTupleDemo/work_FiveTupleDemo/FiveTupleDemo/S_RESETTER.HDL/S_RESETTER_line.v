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
//----------------------------------------------------------------------------


//----------------------------------------------------------------------------
// File name: S_RESETTER_line.v
// File created: 2018/09/22 15:51:11
// Created by: Xilinx SDNet Compiler version 2018.1.1, build 2258648

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_line (


     reset_out_active_high, 
     reset_out_active_low, 
     init_done, 

     clk, 
     rst 

);

//-------------------------------------------------------------
// I/O
//-------------------------------------------------------------
 output		reset_out_active_high ;
 output		reset_out_active_low ;
 output	reg	init_done ;
 input		clk ;
 input		rst ;






 reg	nz53z7a0em5f4a84vekfj_406;	 initial nz53z7a0em5f4a84vekfj_406 = 1'b0 ;
 reg	l9uy68d12i8kabcn701566c_362;	 initial l9uy68d12i8kabcn701566c_362 = 1'b0 ;
 reg [4:0] jdpfaq5pnlr97006yys9d76an_433;	 initial jdpfaq5pnlr97006yys9d76an_433 = 5'b00000 ;
 reg [4:0] ie5uiyl7bbt6xlgfvq3vm53oxmg_790;	 initial ie5uiyl7bbt6xlgfvq3vm53oxmg_790 = 5'b00000 ;
 wire	g408b9ibqevyelpe_358 ;
 reg	xnab9ov2le1n1gvutk_392;	 initial xnab9ov2le1n1gvutk_392 = 1'b1 ;
 reg	f1iy99mpq0u8ckns8ers7bc1gw055xr8_605;	 initial f1iy99mpq0u8ckns8ers7bc1gw055xr8_605 = 1'b0 ;
 reg	pzuepftp8r7oh6g1q1t_674;	 initial pzuepftp8r7oh6g1q1t_674 = 1'b1 ;
 reg	sij4jitl3yxp3idqtsbv4g88bsjl_412;	 initial sij4jitl3yxp3idqtsbv4g88bsjl_412 = 1'b0 ;
 wire [4:0] r3fztxa6g821l28h7_198 ;
 wire [4:0] q9luh5uuifknmkywbbk147up5d_439 ;
 wire	ifeizoqmwsv7cm5w9_889 ;
 wire	jwq1ite6jxskm4s8htp1jjviapz_11 ;
 wire	iuq9pwklcbo18o6iznt3oepdqcss_426 ;
 wire	vv2h9rndiu5gvxfc1hi4x58o_343 ;
 wire	l0kx12jed7amixddc906q_395 ;
 wire	d5kxiph98nqqn8gnlkoc_476 ;
 wire	qjhb8j1lkugx0ied12qjok5xr9u9jf_348 ;
 wire	kn4436j3hmeo63zngg0_10 ;
 wire	k4kgyfouq1e5zgwly_424 ;
 wire	tdspgt22zjmpgadwak2euuiwyob57g4z_512 ;
 wire	wl8llrutl4worjgpndvg8ajbw0_895 ;
 wire	jsf9w75vty645rql3t5mc7f1c_715 ;


 assign r3fztxa6g821l28h7_198 = 
	jdpfaq5pnlr97006yys9d76an_433 + 1 ;
 assign q9luh5uuifknmkywbbk147up5d_439 = 
	ie5uiyl7bbt6xlgfvq3vm53oxmg_790 + 1 ;
 assign ifeizoqmwsv7cm5w9_889 = (
	((jdpfaq5pnlr97006yys9d76an_433 > 5'b00000))?1'b1:
	0)  ;
 assign jwq1ite6jxskm4s8htp1jjviapz_11 = 
	rst | l9uy68d12i8kabcn701566c_362 ;
 assign iuq9pwklcbo18o6iznt3oepdqcss_426 = 
	jwq1ite6jxskm4s8htp1jjviapz_11 | ifeizoqmwsv7cm5w9_889 ;
 assign vv2h9rndiu5gvxfc1hi4x58o_343 = (
	((l9uy68d12i8kabcn701566c_362 == 1'b1) && (jsf9w75vty645rql3t5mc7f1c_715 == 1'b1) && (jdpfaq5pnlr97006yys9d76an_433 == 5'b00000))?1'b1:
	((jdpfaq5pnlr97006yys9d76an_433 != 5'b00000) && (l9uy68d12i8kabcn701566c_362 != 1'b1))?1'b1:
	0)  ;
 assign l0kx12jed7amixddc906q_395 = (
	((nz53z7a0em5f4a84vekfj_406 == 1'b1))?1'b1:
	0)  ;
 assign d5kxiph98nqqn8gnlkoc_476 = (
	((jdpfaq5pnlr97006yys9d76an_433 == 5'b01111) && (l9uy68d12i8kabcn701566c_362 != 1'b1) && (jsf9w75vty645rql3t5mc7f1c_715 == 1'b1))?1'b1:
	((ie5uiyl7bbt6xlgfvq3vm53oxmg_790 != 5'b00000) && (ie5uiyl7bbt6xlgfvq3vm53oxmg_790 != 5'b01111) && (l9uy68d12i8kabcn701566c_362 != 1'b1) && (jsf9w75vty645rql3t5mc7f1c_715 == 1'b1))?1'b1:
	0)  ;
 assign qjhb8j1lkugx0ied12qjok5xr9u9jf_348 = (
	((ie5uiyl7bbt6xlgfvq3vm53oxmg_790 == 5'b01111))?1'b1:
	0)  ;
 assign kn4436j3hmeo63zngg0_10 = 
	1'b1 ;
 assign k4kgyfouq1e5zgwly_424 = 
	1'b0 ;
 assign tdspgt22zjmpgadwak2euuiwyob57g4z_512 = 
	 ~(g408b9ibqevyelpe_358) ;
 assign wl8llrutl4worjgpndvg8ajbw0_895 = (
	((ie5uiyl7bbt6xlgfvq3vm53oxmg_790 == 5'b01111))?1'b1:
	0)  ;
 assign jsf9w75vty645rql3t5mc7f1c_715 = 
	1'b1 ;
 assign reset_out_active_high 	= pzuepftp8r7oh6g1q1t_674 ;
 assign reset_out_active_low 	= sij4jitl3yxp3idqtsbv4g88bsjl_412 ;


assign g408b9ibqevyelpe_358 = (
	((iuq9pwklcbo18o6iznt3oepdqcss_426 == 1'b1) && (jdpfaq5pnlr97006yys9d76an_433 < 5'b10000))?kn4436j3hmeo63zngg0_10 :
1'b0) ;



always @(posedge clk)
begin
		nz53z7a0em5f4a84vekfj_406 <= rst ;
		l9uy68d12i8kabcn701566c_362 <= nz53z7a0em5f4a84vekfj_406 ;
	if (l0kx12jed7amixddc906q_395) 
	begin 
	  jdpfaq5pnlr97006yys9d76an_433 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (vv2h9rndiu5gvxfc1hi4x58o_343) 
		begin 
			jdpfaq5pnlr97006yys9d76an_433 <= r3fztxa6g821l28h7_198 ;
		end 
	end 
	if (l0kx12jed7amixddc906q_395) 
	begin 
	  ie5uiyl7bbt6xlgfvq3vm53oxmg_790 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (d5kxiph98nqqn8gnlkoc_476) 
		begin 
			ie5uiyl7bbt6xlgfvq3vm53oxmg_790 <= q9luh5uuifknmkywbbk147up5d_439 ;
		end 
	end 
	if (rst) 
	begin 
	  xnab9ov2le1n1gvutk_392 <= 1'b1 ;
	 end 
	else 
	begin 
			xnab9ov2le1n1gvutk_392 <= g408b9ibqevyelpe_358 ;
	end 
	if (rst) 
	begin 
	  f1iy99mpq0u8ckns8ers7bc1gw055xr8_605 <= 1'b0 ;
	 end 
	else 
	begin 
			f1iy99mpq0u8ckns8ers7bc1gw055xr8_605 <= tdspgt22zjmpgadwak2euuiwyob57g4z_512 ;
	end 
	if (rst) 
	begin 
	  pzuepftp8r7oh6g1q1t_674 <= 1'b1 ;
	 end 
	else 
	begin 
			pzuepftp8r7oh6g1q1t_674 <= xnab9ov2le1n1gvutk_392 ;
	end 
	if (rst) 
	begin 
	  sij4jitl3yxp3idqtsbv4g88bsjl_412 <= 1'b0 ;
	 end 
	else 
	begin 
			sij4jitl3yxp3idqtsbv4g88bsjl_412 <= f1iy99mpq0u8ckns8ers7bc1gw055xr8_605 ;
	end 
		init_done <= wl8llrutl4worjgpndvg8ajbw0_895 ;
end

endmodule 
