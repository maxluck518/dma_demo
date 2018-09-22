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
// File created: 2018/09/22 10:38:34
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






 reg	w31g2vfy0e0msxoq6im_101;	 initial w31g2vfy0e0msxoq6im_101 = 1'b0 ;
 reg	njzdy24fnf3xjbwm3o_222;	 initial njzdy24fnf3xjbwm3o_222 = 1'b0 ;
 reg [4:0] nz4aj5729ses8ihnn4ickdf1uqq_305;	 initial nz4aj5729ses8ihnn4ickdf1uqq_305 = 5'b00000 ;
 reg [4:0] zwsl1m87pop9h94okz8a_667;	 initial zwsl1m87pop9h94okz8a_667 = 5'b00000 ;
 wire	q3ozi7ef8yjcnxrcr_735 ;
 reg	g9ey9oavvssis15059_305;	 initial g9ey9oavvssis15059_305 = 1'b1 ;
 reg	cwpygdajj0vckrehx7un11x9zx6f_337;	 initial cwpygdajj0vckrehx7un11x9zx6f_337 = 1'b0 ;
 reg	p28yjhvh1e26r94im0yj_348;	 initial p28yjhvh1e26r94im0yj_348 = 1'b1 ;
 reg	hskhclhdydieusdw7lfuy0qfxzd40yv7_499;	 initial hskhclhdydieusdw7lfuy0qfxzd40yv7_499 = 1'b0 ;
 wire [4:0] ht2sbq47w7n9hq8fauxwv_426 ;
 wire [4:0] d4aymkyewucakhgsp2p8gfb4bg_435 ;
 wire	acikrmra49pjx0i0yb_421 ;
 wire	pyhm9brefwp1mpf27ngbwh6nht_66 ;
 wire	hgh92fkgslt9cco0he2y5wum1q4snr8_76 ;
 wire	u6o2tt5hfoxf45m8dbj4vf9gufjx76v_411 ;
 wire	a493ybm8ve2c8q6t90laurz0_219 ;
 wire	r3b6vs75gwd0j50eiudzc_845 ;
 wire	a5fuyggpv3z5x2kusce3svbqrdqk78_11 ;
 wire	cc77tu2swc5a9t687enny_14 ;
 wire	wekrivbdl97slgdtjkss0_582 ;
 wire	eqv3a03z5ulvqkhutaku5rvf1at3oah5_420 ;
 wire	nnkxhkp4yxs9fxl0u93hkcpaa_138 ;
 wire	dwwh6ak01u4hnnp19uxm5om5clubt2_786 ;


 assign ht2sbq47w7n9hq8fauxwv_426 = 
	nz4aj5729ses8ihnn4ickdf1uqq_305 + 1 ;
 assign d4aymkyewucakhgsp2p8gfb4bg_435 = 
	zwsl1m87pop9h94okz8a_667 + 1 ;
 assign acikrmra49pjx0i0yb_421 = (
	((nz4aj5729ses8ihnn4ickdf1uqq_305 > 5'b00000))?1'b1:
	0)  ;
 assign pyhm9brefwp1mpf27ngbwh6nht_66 = 
	rst | njzdy24fnf3xjbwm3o_222 ;
 assign hgh92fkgslt9cco0he2y5wum1q4snr8_76 = 
	pyhm9brefwp1mpf27ngbwh6nht_66 | acikrmra49pjx0i0yb_421 ;
 assign u6o2tt5hfoxf45m8dbj4vf9gufjx76v_411 = (
	((njzdy24fnf3xjbwm3o_222 == 1'b1) && (dwwh6ak01u4hnnp19uxm5om5clubt2_786 == 1'b1) && (nz4aj5729ses8ihnn4ickdf1uqq_305 == 5'b00000))?1'b1:
	((nz4aj5729ses8ihnn4ickdf1uqq_305 != 5'b00000) && (njzdy24fnf3xjbwm3o_222 != 1'b1))?1'b1:
	0)  ;
 assign a493ybm8ve2c8q6t90laurz0_219 = (
	((w31g2vfy0e0msxoq6im_101 == 1'b1))?1'b1:
	0)  ;
 assign r3b6vs75gwd0j50eiudzc_845 = (
	((nz4aj5729ses8ihnn4ickdf1uqq_305 == 5'b01111) && (njzdy24fnf3xjbwm3o_222 != 1'b1) && (dwwh6ak01u4hnnp19uxm5om5clubt2_786 == 1'b1))?1'b1:
	((zwsl1m87pop9h94okz8a_667 != 5'b00000) && (zwsl1m87pop9h94okz8a_667 != 5'b01111) && (njzdy24fnf3xjbwm3o_222 != 1'b1) && (dwwh6ak01u4hnnp19uxm5om5clubt2_786 == 1'b1))?1'b1:
	0)  ;
 assign a5fuyggpv3z5x2kusce3svbqrdqk78_11 = (
	((zwsl1m87pop9h94okz8a_667 == 5'b01111))?1'b1:
	0)  ;
 assign cc77tu2swc5a9t687enny_14 = 
	1'b1 ;
 assign wekrivbdl97slgdtjkss0_582 = 
	1'b0 ;
 assign eqv3a03z5ulvqkhutaku5rvf1at3oah5_420 = 
	 ~(q3ozi7ef8yjcnxrcr_735) ;
 assign nnkxhkp4yxs9fxl0u93hkcpaa_138 = (
	((zwsl1m87pop9h94okz8a_667 == 5'b01111))?1'b1:
	0)  ;
 assign dwwh6ak01u4hnnp19uxm5om5clubt2_786 = 
	1'b1 ;
 assign reset_out_active_high 	= p28yjhvh1e26r94im0yj_348 ;
 assign reset_out_active_low 	= hskhclhdydieusdw7lfuy0qfxzd40yv7_499 ;


assign q3ozi7ef8yjcnxrcr_735 = (
	((hgh92fkgslt9cco0he2y5wum1q4snr8_76 == 1'b1) && (nz4aj5729ses8ihnn4ickdf1uqq_305 < 5'b10000))?cc77tu2swc5a9t687enny_14 :
1'b0) ;



always @(posedge clk)
begin
		w31g2vfy0e0msxoq6im_101 <= rst ;
		njzdy24fnf3xjbwm3o_222 <= w31g2vfy0e0msxoq6im_101 ;
	if (a493ybm8ve2c8q6t90laurz0_219) 
	begin 
	  nz4aj5729ses8ihnn4ickdf1uqq_305 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (u6o2tt5hfoxf45m8dbj4vf9gufjx76v_411) 
		begin 
			nz4aj5729ses8ihnn4ickdf1uqq_305 <= ht2sbq47w7n9hq8fauxwv_426 ;
		end 
	end 
	if (a493ybm8ve2c8q6t90laurz0_219) 
	begin 
	  zwsl1m87pop9h94okz8a_667 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (r3b6vs75gwd0j50eiudzc_845) 
		begin 
			zwsl1m87pop9h94okz8a_667 <= d4aymkyewucakhgsp2p8gfb4bg_435 ;
		end 
	end 
	if (rst) 
	begin 
	  g9ey9oavvssis15059_305 <= 1'b1 ;
	 end 
	else 
	begin 
			g9ey9oavvssis15059_305 <= q3ozi7ef8yjcnxrcr_735 ;
	end 
	if (rst) 
	begin 
	  cwpygdajj0vckrehx7un11x9zx6f_337 <= 1'b0 ;
	 end 
	else 
	begin 
			cwpygdajj0vckrehx7un11x9zx6f_337 <= eqv3a03z5ulvqkhutaku5rvf1at3oah5_420 ;
	end 
	if (rst) 
	begin 
	  p28yjhvh1e26r94im0yj_348 <= 1'b1 ;
	 end 
	else 
	begin 
			p28yjhvh1e26r94im0yj_348 <= g9ey9oavvssis15059_305 ;
	end 
	if (rst) 
	begin 
	  hskhclhdydieusdw7lfuy0qfxzd40yv7_499 <= 1'b0 ;
	 end 
	else 
	begin 
			hskhclhdydieusdw7lfuy0qfxzd40yv7_499 <= cwpygdajj0vckrehx7un11x9zx6f_337 ;
	end 
		init_done <= nnkxhkp4yxs9fxl0u93hkcpaa_138 ;
end

endmodule 
