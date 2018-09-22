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
// File created: 2018/09/22 10:38:34
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






 reg	srketi0zp08ci522v05q74mv_703;	 initial srketi0zp08ci522v05q74mv_703 = 1'b0 ;
 reg	l980p0udagzf6j93dzbrs9nt_542;	 initial l980p0udagzf6j93dzbrs9nt_542 = 1'b0 ;
 reg [4:0] wx1pxt0btpq5et9tpgvl8qo96_346;	 initial wx1pxt0btpq5et9tpgvl8qo96_346 = 5'b00000 ;
 reg [10:0] bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724;	 initial bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724 = 11'b00000000000 ;
 wire	zha4u4pk2gzm27wt7_892 ;
 reg	izl7ivgq4czqzorm_736;	 initial izl7ivgq4czqzorm_736 = 1'b1 ;
 reg	esvbc9tp62j55l4rx6pntpr5ls7_722;	 initial esvbc9tp62j55l4rx6pntpr5ls7_722 = 1'b0 ;
 reg	grmf6ndzgkuqh4yudvj7estf8p_584;	 initial grmf6ndzgkuqh4yudvj7estf8p_584 = 1'b1 ;
 reg	q94tjvjnwxyes4l1e8ehc7r7eu83aia_534;	 initial q94tjvjnwxyes4l1e8ehc7r7eu83aia_534 = 1'b0 ;
 wire [4:0] pra7szrata3pgm7r_29 ;
 wire [10:0] oeqsfwt6xwkw1p126lmxt3qo4gou13_717 ;
 wire	lkth0lyiqi95albhw8f2cnyacd_223 ;
 wire	r8rmohs6tzapsuo48h2_817 ;
 wire	g865w061fnyrnlmsl3qfme846b_882 ;
 wire	cfeitls1uq7yq7hmtoaygqv_300 ;
 wire	mpw315d0jgg0w9lnclghaunr7tau_21 ;
 wire	h3f3rqtpkhdqfsxeo2536tiob0u0o_4 ;
 wire	w6pgkw6lhkldu1tyv_451 ;
 wire	z77eehvsvd2qz5n0thntfrpr_560 ;
 wire	c04c4qqa4gnh38asegnv640p3jgd0c_245 ;
 wire	kyxbjors2xq592nfyz6_93 ;
 wire	rlykscoshafbpserf_604 ;
 wire	z7twqc1k5ru54g1qpeoxve8h02ipa4g_64 ;


 assign pra7szrata3pgm7r_29 = 
	wx1pxt0btpq5et9tpgvl8qo96_346 + 1 ;
 assign oeqsfwt6xwkw1p126lmxt3qo4gou13_717 = 
	bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724 + 1 ;
 assign lkth0lyiqi95albhw8f2cnyacd_223 = (
	((wx1pxt0btpq5et9tpgvl8qo96_346 > 5'b00000))?1'b1:
	0)  ;
 assign r8rmohs6tzapsuo48h2_817 = 
	rst | l980p0udagzf6j93dzbrs9nt_542 ;
 assign g865w061fnyrnlmsl3qfme846b_882 = 
	r8rmohs6tzapsuo48h2_817 | lkth0lyiqi95albhw8f2cnyacd_223 ;
 assign cfeitls1uq7yq7hmtoaygqv_300 = (
	((l980p0udagzf6j93dzbrs9nt_542 == 1'b1) && (z7twqc1k5ru54g1qpeoxve8h02ipa4g_64 == 1'b1) && (wx1pxt0btpq5et9tpgvl8qo96_346 == 5'b00000))?1'b1:
	((wx1pxt0btpq5et9tpgvl8qo96_346 != 5'b00000) && (l980p0udagzf6j93dzbrs9nt_542 != 1'b1))?1'b1:
	0)  ;
 assign mpw315d0jgg0w9lnclghaunr7tau_21 = (
	((srketi0zp08ci522v05q74mv_703 == 1'b1))?1'b1:
	0)  ;
 assign h3f3rqtpkhdqfsxeo2536tiob0u0o_4 = (
	((wx1pxt0btpq5et9tpgvl8qo96_346 == 5'b01111) && (l980p0udagzf6j93dzbrs9nt_542 != 1'b1) && (z7twqc1k5ru54g1qpeoxve8h02ipa4g_64 == 1'b1))?1'b1:
	((bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724 != 11'b00000000000) && (bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724 != 11'b10001001110) && (l980p0udagzf6j93dzbrs9nt_542 != 1'b1) && (z7twqc1k5ru54g1qpeoxve8h02ipa4g_64 == 1'b1))?1'b1:
	0)  ;
 assign w6pgkw6lhkldu1tyv_451 = (
	((bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724 == 11'b10001001110))?1'b1:
	0)  ;
 assign z77eehvsvd2qz5n0thntfrpr_560 = 
	1'b1 ;
 assign c04c4qqa4gnh38asegnv640p3jgd0c_245 = 
	1'b0 ;
 assign kyxbjors2xq592nfyz6_93 = 
	 ~(zha4u4pk2gzm27wt7_892) ;
 assign rlykscoshafbpserf_604 = (
	((bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724 == 11'b10001001110))?1'b1:
	0)  ;
 assign z7twqc1k5ru54g1qpeoxve8h02ipa4g_64 = 
	1'b1 ;
 assign reset_out_active_high 	= grmf6ndzgkuqh4yudvj7estf8p_584 ;
 assign reset_out_active_low 	= q94tjvjnwxyes4l1e8ehc7r7eu83aia_534 ;


assign zha4u4pk2gzm27wt7_892 = (
	((g865w061fnyrnlmsl3qfme846b_882 == 1'b1) && (wx1pxt0btpq5et9tpgvl8qo96_346 < 5'b10000))?z77eehvsvd2qz5n0thntfrpr_560 :
1'b0) ;



always @(posedge clk)
begin
		srketi0zp08ci522v05q74mv_703 <= rst ;
		l980p0udagzf6j93dzbrs9nt_542 <= srketi0zp08ci522v05q74mv_703 ;
	if (mpw315d0jgg0w9lnclghaunr7tau_21) 
	begin 
	  wx1pxt0btpq5et9tpgvl8qo96_346 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (cfeitls1uq7yq7hmtoaygqv_300) 
		begin 
			wx1pxt0btpq5et9tpgvl8qo96_346 <= pra7szrata3pgm7r_29 ;
		end 
	end 
	if (mpw315d0jgg0w9lnclghaunr7tau_21) 
	begin 
	  bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724 <= 11'b00000000000 ;
	 end 
	else 
	begin 
		if (h3f3rqtpkhdqfsxeo2536tiob0u0o_4) 
		begin 
			bct62rufgkm6jwqtj9x7mwkh7z4guz8w_724 <= oeqsfwt6xwkw1p126lmxt3qo4gou13_717 ;
		end 
	end 
	if (rst) 
	begin 
	  izl7ivgq4czqzorm_736 <= 1'b1 ;
	 end 
	else 
	begin 
			izl7ivgq4czqzorm_736 <= zha4u4pk2gzm27wt7_892 ;
	end 
	if (rst) 
	begin 
	  esvbc9tp62j55l4rx6pntpr5ls7_722 <= 1'b0 ;
	 end 
	else 
	begin 
			esvbc9tp62j55l4rx6pntpr5ls7_722 <= kyxbjors2xq592nfyz6_93 ;
	end 
	if (rst) 
	begin 
	  grmf6ndzgkuqh4yudvj7estf8p_584 <= 1'b1 ;
	 end 
	else 
	begin 
			grmf6ndzgkuqh4yudvj7estf8p_584 <= izl7ivgq4czqzorm_736 ;
	end 
	if (rst) 
	begin 
	  q94tjvjnwxyes4l1e8ehc7r7eu83aia_534 <= 1'b0 ;
	 end 
	else 
	begin 
			q94tjvjnwxyes4l1e8ehc7r7eu83aia_534 <= esvbc9tp62j55l4rx6pntpr5ls7_722 ;
	end 
		init_done <= rlykscoshafbpserf_604 ;
end

endmodule 
