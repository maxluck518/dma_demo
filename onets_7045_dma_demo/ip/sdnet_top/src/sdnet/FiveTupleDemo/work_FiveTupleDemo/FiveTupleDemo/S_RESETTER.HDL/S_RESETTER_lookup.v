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
// File name: S_RESETTER_lookup.v
// File created: 2018/09/22 15:51:11
// Created by: Xilinx SDNet Compiler version 2018.1.1, build 2258648

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_lookup (


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






 reg	qn3rosos11nzir713m081c250mo_339;	 initial qn3rosos11nzir713m081c250mo_339 = 1'b0 ;
 reg	wacjnxoftelgdu2aw_688;	 initial wacjnxoftelgdu2aw_688 = 1'b0 ;
 reg [4:0] olcmzg836o6fwddldi_212;	 initial olcmzg836o6fwddldi_212 = 5'b00000 ;
 reg [10:0] r52auqddq5mkp7d4_595;	 initial r52auqddq5mkp7d4_595 = 11'b00000000000 ;
 wire	c3fnbo39b2uqevfjbvpi9euwyh51o_354 ;
 reg	yu94ef7frqadm60eob9g2_34;	 initial yu94ef7frqadm60eob9g2_34 = 1'b1 ;
 reg	zog1pou0463cgnsuk384mw9ssax90ys_82;	 initial zog1pou0463cgnsuk384mw9ssax90ys_82 = 1'b0 ;
 reg	scia5diqkmx6zq7q7itj53_182;	 initial scia5diqkmx6zq7q7itj53_182 = 1'b1 ;
 reg	kxaw6oer3kj67awo57lidq2ekler_383;	 initial kxaw6oer3kj67awo57lidq2ekler_383 = 1'b0 ;
 wire [4:0] ymovhgag5vn00tkct86h629hd3ijo_208 ;
 wire [10:0] z7qycmjeuacexcbgtlbpz4gzclbp1i_903 ;
 wire	g88iwddz7lqmmyedv857y_327 ;
 wire	sh1juasajzwrwanxjhsbhei834_805 ;
 wire	sxqu9l1xil05wn7bhnizuz_16 ;
 wire	ydfre8dwt8a84slqlse7ci7k3m96w_702 ;
 wire	u6sgvem1a4ki8u3b79er8zzjkt8a84h8_562 ;
 wire	hi28rpjtqpkr9ob1y9dgjuu_71 ;
 wire	gu1goq82ziv6pklativw298bl57_313 ;
 wire	umklbk26s1t88yopl_417 ;
 wire	cco4rgt10czdnxnhfp0dmie_709 ;
 wire	erly3wolyk005b44ujej75ohzixy_252 ;
 wire	e4hyq74qs8kobbpy1zqwu474hy32sgj_830 ;
 wire	nfzaazbn6zzyk67qp5auuh1a9w_454 ;


 assign ymovhgag5vn00tkct86h629hd3ijo_208 = 
	olcmzg836o6fwddldi_212 + 1 ;
 assign z7qycmjeuacexcbgtlbpz4gzclbp1i_903 = 
	r52auqddq5mkp7d4_595 + 1 ;
 assign g88iwddz7lqmmyedv857y_327 = (
	((olcmzg836o6fwddldi_212 > 5'b00000))?1'b1:
	0)  ;
 assign sh1juasajzwrwanxjhsbhei834_805 = 
	rst | wacjnxoftelgdu2aw_688 ;
 assign sxqu9l1xil05wn7bhnizuz_16 = 
	sh1juasajzwrwanxjhsbhei834_805 | g88iwddz7lqmmyedv857y_327 ;
 assign ydfre8dwt8a84slqlse7ci7k3m96w_702 = (
	((wacjnxoftelgdu2aw_688 == 1'b1) && (nfzaazbn6zzyk67qp5auuh1a9w_454 == 1'b1) && (olcmzg836o6fwddldi_212 == 5'b00000))?1'b1:
	((olcmzg836o6fwddldi_212 != 5'b00000) && (wacjnxoftelgdu2aw_688 != 1'b1))?1'b1:
	0)  ;
 assign u6sgvem1a4ki8u3b79er8zzjkt8a84h8_562 = (
	((qn3rosos11nzir713m081c250mo_339 == 1'b1))?1'b1:
	0)  ;
 assign hi28rpjtqpkr9ob1y9dgjuu_71 = (
	((olcmzg836o6fwddldi_212 == 5'b01111) && (wacjnxoftelgdu2aw_688 != 1'b1) && (nfzaazbn6zzyk67qp5auuh1a9w_454 == 1'b1))?1'b1:
	((r52auqddq5mkp7d4_595 != 11'b00000000000) && (r52auqddq5mkp7d4_595 != 11'b10001001110) && (wacjnxoftelgdu2aw_688 != 1'b1) && (nfzaazbn6zzyk67qp5auuh1a9w_454 == 1'b1))?1'b1:
	0)  ;
 assign gu1goq82ziv6pklativw298bl57_313 = (
	((r52auqddq5mkp7d4_595 == 11'b10001001110))?1'b1:
	0)  ;
 assign umklbk26s1t88yopl_417 = 
	1'b1 ;
 assign cco4rgt10czdnxnhfp0dmie_709 = 
	1'b0 ;
 assign erly3wolyk005b44ujej75ohzixy_252 = 
	 ~(c3fnbo39b2uqevfjbvpi9euwyh51o_354) ;
 assign e4hyq74qs8kobbpy1zqwu474hy32sgj_830 = (
	((r52auqddq5mkp7d4_595 == 11'b10001001110))?1'b1:
	0)  ;
 assign nfzaazbn6zzyk67qp5auuh1a9w_454 = 
	1'b1 ;
 assign reset_out_active_high 	= scia5diqkmx6zq7q7itj53_182 ;
 assign reset_out_active_low 	= kxaw6oer3kj67awo57lidq2ekler_383 ;


assign c3fnbo39b2uqevfjbvpi9euwyh51o_354 = (
	((sxqu9l1xil05wn7bhnizuz_16 == 1'b1) && (olcmzg836o6fwddldi_212 < 5'b10000))?umklbk26s1t88yopl_417 :
1'b0) ;



always @(posedge clk)
begin
		qn3rosos11nzir713m081c250mo_339 <= rst ;
		wacjnxoftelgdu2aw_688 <= qn3rosos11nzir713m081c250mo_339 ;
	if (u6sgvem1a4ki8u3b79er8zzjkt8a84h8_562) 
	begin 
	  olcmzg836o6fwddldi_212 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (ydfre8dwt8a84slqlse7ci7k3m96w_702) 
		begin 
			olcmzg836o6fwddldi_212 <= ymovhgag5vn00tkct86h629hd3ijo_208 ;
		end 
	end 
	if (u6sgvem1a4ki8u3b79er8zzjkt8a84h8_562) 
	begin 
	  r52auqddq5mkp7d4_595 <= 11'b00000000000 ;
	 end 
	else 
	begin 
		if (hi28rpjtqpkr9ob1y9dgjuu_71) 
		begin 
			r52auqddq5mkp7d4_595 <= z7qycmjeuacexcbgtlbpz4gzclbp1i_903 ;
		end 
	end 
	if (rst) 
	begin 
	  yu94ef7frqadm60eob9g2_34 <= 1'b1 ;
	 end 
	else 
	begin 
			yu94ef7frqadm60eob9g2_34 <= c3fnbo39b2uqevfjbvpi9euwyh51o_354 ;
	end 
	if (rst) 
	begin 
	  zog1pou0463cgnsuk384mw9ssax90ys_82 <= 1'b0 ;
	 end 
	else 
	begin 
			zog1pou0463cgnsuk384mw9ssax90ys_82 <= erly3wolyk005b44ujej75ohzixy_252 ;
	end 
	if (rst) 
	begin 
	  scia5diqkmx6zq7q7itj53_182 <= 1'b1 ;
	 end 
	else 
	begin 
			scia5diqkmx6zq7q7itj53_182 <= yu94ef7frqadm60eob9g2_34 ;
	end 
	if (rst) 
	begin 
	  kxaw6oer3kj67awo57lidq2ekler_383 <= 1'b0 ;
	 end 
	else 
	begin 
			kxaw6oer3kj67awo57lidq2ekler_383 <= zog1pou0463cgnsuk384mw9ssax90ys_82 ;
	end 
		init_done <= e4hyq74qs8kobbpy1zqwu474hy32sgj_830 ;
end

endmodule 
