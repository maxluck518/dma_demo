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
// File name: S_RESETTER_control.v
// File created: 2018/09/22 15:51:11
// Created by: Xilinx SDNet Compiler version 2018.1.1, build 2258648

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_control (


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






 reg	gtxx15ian7akfbdlqwnbkel9f_74;	 initial gtxx15ian7akfbdlqwnbkel9f_74 = 1'b0 ;
 reg	ftdiyeq5e4veuoqbxpziwbx_100;	 initial ftdiyeq5e4veuoqbxpziwbx_100 = 1'b0 ;
 reg [4:0] x8ehw9izddqopwcmvtc843s13h9qimh7_590;	 initial x8ehw9izddqopwcmvtc843s13h9qimh7_590 = 5'b00000 ;
 reg [4:0] h8jgb4l8abp7kp65clf_353;	 initial h8jgb4l8abp7kp65clf_353 = 5'b00000 ;
 wire	qsbq4h75100a1ogzjukc4yz5gpizl_311 ;
 reg	wq9bprj8cngrinbs7yn19zsm1fxja2_725;	 initial wq9bprj8cngrinbs7yn19zsm1fxja2_725 = 1'b1 ;
 reg	tzxnybhy66w6wgmnjaj3i2_283;	 initial tzxnybhy66w6wgmnjaj3i2_283 = 1'b0 ;
 reg	wyvhwk3wmbi8jlrlmb4vvj0yhk_168;	 initial wyvhwk3wmbi8jlrlmb4vvj0yhk_168 = 1'b1 ;
 reg	nqi3w0xme8hl5jc92tazj_352;	 initial nqi3w0xme8hl5jc92tazj_352 = 1'b0 ;
 wire [4:0] bq3kk1awhtsixntkg6ovvx_683 ;
 wire [4:0] wok8is0cm5vzpl783hl_891 ;
 wire	hu0a3kohsvmg61w5ozpxrz_354 ;
 wire	fh7lmbzbwjc0ch5e_742 ;
 wire	zmkn1xvysg8316omk5bvnl_665 ;
 wire	v4ticexpnbql7gp9xc2le_713 ;
 wire	dgal75y9rkvw0ur3de7fo8u778_229 ;
 wire	cvbuvglw1aa2f3x2ac7wje_327 ;
 wire	ysdhc3f49ikvvbqck6gd8tt6km_261 ;
 wire	yygkv4j30tv1e3m8b47e80a_865 ;
 wire	zible68uhrzg2z6kwza_660 ;
 wire	uihw0ua7d6kc71jw9tocx5tiqq_847 ;
 wire	czbag0cka9jvybv3xbpcq9q2um_655 ;
 wire	f29hvh3z494csjptgcs9w3_851 ;


 assign bq3kk1awhtsixntkg6ovvx_683 = 
	x8ehw9izddqopwcmvtc843s13h9qimh7_590 + 1 ;
 assign wok8is0cm5vzpl783hl_891 = 
	h8jgb4l8abp7kp65clf_353 + 1 ;
 assign hu0a3kohsvmg61w5ozpxrz_354 = (
	((x8ehw9izddqopwcmvtc843s13h9qimh7_590 > 5'b00000))?1'b1:
	0)  ;
 assign fh7lmbzbwjc0ch5e_742 = 
	rst | ftdiyeq5e4veuoqbxpziwbx_100 ;
 assign zmkn1xvysg8316omk5bvnl_665 = 
	fh7lmbzbwjc0ch5e_742 | hu0a3kohsvmg61w5ozpxrz_354 ;
 assign v4ticexpnbql7gp9xc2le_713 = (
	((ftdiyeq5e4veuoqbxpziwbx_100 == 1'b1) && (f29hvh3z494csjptgcs9w3_851 == 1'b1) && (x8ehw9izddqopwcmvtc843s13h9qimh7_590 == 5'b00000))?1'b1:
	((x8ehw9izddqopwcmvtc843s13h9qimh7_590 != 5'b00000) && (ftdiyeq5e4veuoqbxpziwbx_100 != 1'b1))?1'b1:
	0)  ;
 assign dgal75y9rkvw0ur3de7fo8u778_229 = (
	((gtxx15ian7akfbdlqwnbkel9f_74 == 1'b1))?1'b1:
	0)  ;
 assign cvbuvglw1aa2f3x2ac7wje_327 = (
	((x8ehw9izddqopwcmvtc843s13h9qimh7_590 == 5'b01111) && (ftdiyeq5e4veuoqbxpziwbx_100 != 1'b1) && (f29hvh3z494csjptgcs9w3_851 == 1'b1))?1'b1:
	((h8jgb4l8abp7kp65clf_353 != 5'b00000) && (h8jgb4l8abp7kp65clf_353 != 5'b01111) && (ftdiyeq5e4veuoqbxpziwbx_100 != 1'b1) && (f29hvh3z494csjptgcs9w3_851 == 1'b1))?1'b1:
	0)  ;
 assign ysdhc3f49ikvvbqck6gd8tt6km_261 = (
	((h8jgb4l8abp7kp65clf_353 == 5'b01111))?1'b1:
	0)  ;
 assign yygkv4j30tv1e3m8b47e80a_865 = 
	1'b1 ;
 assign zible68uhrzg2z6kwza_660 = 
	1'b0 ;
 assign uihw0ua7d6kc71jw9tocx5tiqq_847 = 
	 ~(qsbq4h75100a1ogzjukc4yz5gpizl_311) ;
 assign czbag0cka9jvybv3xbpcq9q2um_655 = (
	((h8jgb4l8abp7kp65clf_353 == 5'b01111))?1'b1:
	0)  ;
 assign f29hvh3z494csjptgcs9w3_851 = 
	1'b1 ;
 assign reset_out_active_high 	= wyvhwk3wmbi8jlrlmb4vvj0yhk_168 ;
 assign reset_out_active_low 	= nqi3w0xme8hl5jc92tazj_352 ;


assign qsbq4h75100a1ogzjukc4yz5gpizl_311 = (
	((zmkn1xvysg8316omk5bvnl_665 == 1'b1) && (x8ehw9izddqopwcmvtc843s13h9qimh7_590 < 5'b10000))?yygkv4j30tv1e3m8b47e80a_865 :
1'b0) ;



always @(posedge clk)
begin
		gtxx15ian7akfbdlqwnbkel9f_74 <= rst ;
		ftdiyeq5e4veuoqbxpziwbx_100 <= gtxx15ian7akfbdlqwnbkel9f_74 ;
	if (dgal75y9rkvw0ur3de7fo8u778_229) 
	begin 
	  x8ehw9izddqopwcmvtc843s13h9qimh7_590 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (v4ticexpnbql7gp9xc2le_713) 
		begin 
			x8ehw9izddqopwcmvtc843s13h9qimh7_590 <= bq3kk1awhtsixntkg6ovvx_683 ;
		end 
	end 
	if (dgal75y9rkvw0ur3de7fo8u778_229) 
	begin 
	  h8jgb4l8abp7kp65clf_353 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (cvbuvglw1aa2f3x2ac7wje_327) 
		begin 
			h8jgb4l8abp7kp65clf_353 <= wok8is0cm5vzpl783hl_891 ;
		end 
	end 
	if (rst) 
	begin 
	  wq9bprj8cngrinbs7yn19zsm1fxja2_725 <= 1'b1 ;
	 end 
	else 
	begin 
			wq9bprj8cngrinbs7yn19zsm1fxja2_725 <= qsbq4h75100a1ogzjukc4yz5gpizl_311 ;
	end 
	if (rst) 
	begin 
	  tzxnybhy66w6wgmnjaj3i2_283 <= 1'b0 ;
	 end 
	else 
	begin 
			tzxnybhy66w6wgmnjaj3i2_283 <= uihw0ua7d6kc71jw9tocx5tiqq_847 ;
	end 
	if (rst) 
	begin 
	  wyvhwk3wmbi8jlrlmb4vvj0yhk_168 <= 1'b1 ;
	 end 
	else 
	begin 
			wyvhwk3wmbi8jlrlmb4vvj0yhk_168 <= wq9bprj8cngrinbs7yn19zsm1fxja2_725 ;
	end 
	if (rst) 
	begin 
	  nqi3w0xme8hl5jc92tazj_352 <= 1'b0 ;
	 end 
	else 
	begin 
			nqi3w0xme8hl5jc92tazj_352 <= tzxnybhy66w6wgmnjaj3i2_283 ;
	end 
		init_done <= czbag0cka9jvybv3xbpcq9q2um_655 ;
end

endmodule 
