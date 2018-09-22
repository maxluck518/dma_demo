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
// File created: 2018/09/22 10:38:34
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






 reg	w7pp6wyt0mq7kwj1u6fevlan_742;	 initial w7pp6wyt0mq7kwj1u6fevlan_742 = 1'b0 ;
 reg	pc64o3hmo78foeh75t2lf0xv_654;	 initial pc64o3hmo78foeh75t2lf0xv_654 = 1'b0 ;
 reg [4:0] x9rcs12rd6s2h5bgqsii8kk2tn_295;	 initial x9rcs12rd6s2h5bgqsii8kk2tn_295 = 5'b00000 ;
 reg [4:0] i0j5u51kfdal3pleka7nkmqg31ry06rd_429;	 initial i0j5u51kfdal3pleka7nkmqg31ry06rd_429 = 5'b00000 ;
 wire	k8mcetbbfsxdmb58j5irvuf_855 ;
 reg	avtvhu0q2pnytp68_276;	 initial avtvhu0q2pnytp68_276 = 1'b1 ;
 reg	zjcgudgd7398pvcsn5s861ju_399;	 initial zjcgudgd7398pvcsn5s861ju_399 = 1'b0 ;
 reg	jobjctkhtm7a044rz5ytzcz50qz_670;	 initial jobjctkhtm7a044rz5ytzcz50qz_670 = 1'b1 ;
 reg	kgs7k1p875cwlll2xllnnm0jgc_614;	 initial kgs7k1p875cwlll2xllnnm0jgc_614 = 1'b0 ;
 wire [4:0] dutdwp6s0lfrrqenhdm91w7_453 ;
 wire [4:0] yfm34j9ptecioamx3b2t1rcujzryj38d_144 ;
 wire	kb6rbkezgs0ospykf8r4xli88i27ag_278 ;
 wire	mh2u8zsxsiw85hngm5w9h6glva5wvk_407 ;
 wire	c1ucdueaebypdmreyl1hv2z5_490 ;
 wire	n3o1yfbfbugnqiqabiws330l_611 ;
 wire	jzul7b4b9qmfueo465qnnesd8lbl_736 ;
 wire	f7skrkls92tyu4nqk5c1zzq3ax3m4bs_841 ;
 wire	ackgnk7ju1uf32tyw2wvfc4xukzzi2_225 ;
 wire	h00vsrxxktj6xfgzxkkzy737oe639ceq_337 ;
 wire	l1yuhw4592ezg9d5m_577 ;
 wire	u6fdb9z8iasiqtfox44_68 ;
 wire	yy78zyymorixwrpthdwcmpjqlf12_595 ;
 wire	ilysc5tqnbidfh8v_593 ;


 assign dutdwp6s0lfrrqenhdm91w7_453 = 
	x9rcs12rd6s2h5bgqsii8kk2tn_295 + 1 ;
 assign yfm34j9ptecioamx3b2t1rcujzryj38d_144 = 
	i0j5u51kfdal3pleka7nkmqg31ry06rd_429 + 1 ;
 assign kb6rbkezgs0ospykf8r4xli88i27ag_278 = (
	((x9rcs12rd6s2h5bgqsii8kk2tn_295 > 5'b00000))?1'b1:
	0)  ;
 assign mh2u8zsxsiw85hngm5w9h6glva5wvk_407 = 
	rst | pc64o3hmo78foeh75t2lf0xv_654 ;
 assign c1ucdueaebypdmreyl1hv2z5_490 = 
	mh2u8zsxsiw85hngm5w9h6glva5wvk_407 | kb6rbkezgs0ospykf8r4xli88i27ag_278 ;
 assign n3o1yfbfbugnqiqabiws330l_611 = (
	((pc64o3hmo78foeh75t2lf0xv_654 == 1'b1) && (ilysc5tqnbidfh8v_593 == 1'b1) && (x9rcs12rd6s2h5bgqsii8kk2tn_295 == 5'b00000))?1'b1:
	((x9rcs12rd6s2h5bgqsii8kk2tn_295 != 5'b00000) && (pc64o3hmo78foeh75t2lf0xv_654 != 1'b1))?1'b1:
	0)  ;
 assign jzul7b4b9qmfueo465qnnesd8lbl_736 = (
	((w7pp6wyt0mq7kwj1u6fevlan_742 == 1'b1))?1'b1:
	0)  ;
 assign f7skrkls92tyu4nqk5c1zzq3ax3m4bs_841 = (
	((x9rcs12rd6s2h5bgqsii8kk2tn_295 == 5'b01111) && (pc64o3hmo78foeh75t2lf0xv_654 != 1'b1) && (ilysc5tqnbidfh8v_593 == 1'b1))?1'b1:
	((i0j5u51kfdal3pleka7nkmqg31ry06rd_429 != 5'b00000) && (i0j5u51kfdal3pleka7nkmqg31ry06rd_429 != 5'b01111) && (pc64o3hmo78foeh75t2lf0xv_654 != 1'b1) && (ilysc5tqnbidfh8v_593 == 1'b1))?1'b1:
	0)  ;
 assign ackgnk7ju1uf32tyw2wvfc4xukzzi2_225 = (
	((i0j5u51kfdal3pleka7nkmqg31ry06rd_429 == 5'b01111))?1'b1:
	0)  ;
 assign h00vsrxxktj6xfgzxkkzy737oe639ceq_337 = 
	1'b1 ;
 assign l1yuhw4592ezg9d5m_577 = 
	1'b0 ;
 assign u6fdb9z8iasiqtfox44_68 = 
	 ~(k8mcetbbfsxdmb58j5irvuf_855) ;
 assign yy78zyymorixwrpthdwcmpjqlf12_595 = (
	((i0j5u51kfdal3pleka7nkmqg31ry06rd_429 == 5'b01111))?1'b1:
	0)  ;
 assign ilysc5tqnbidfh8v_593 = 
	1'b1 ;
 assign reset_out_active_high 	= jobjctkhtm7a044rz5ytzcz50qz_670 ;
 assign reset_out_active_low 	= kgs7k1p875cwlll2xllnnm0jgc_614 ;


assign k8mcetbbfsxdmb58j5irvuf_855 = (
	((c1ucdueaebypdmreyl1hv2z5_490 == 1'b1) && (x9rcs12rd6s2h5bgqsii8kk2tn_295 < 5'b10000))?h00vsrxxktj6xfgzxkkzy737oe639ceq_337 :
1'b0) ;



always @(posedge clk)
begin
		w7pp6wyt0mq7kwj1u6fevlan_742 <= rst ;
		pc64o3hmo78foeh75t2lf0xv_654 <= w7pp6wyt0mq7kwj1u6fevlan_742 ;
	if (jzul7b4b9qmfueo465qnnesd8lbl_736) 
	begin 
	  x9rcs12rd6s2h5bgqsii8kk2tn_295 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (n3o1yfbfbugnqiqabiws330l_611) 
		begin 
			x9rcs12rd6s2h5bgqsii8kk2tn_295 <= dutdwp6s0lfrrqenhdm91w7_453 ;
		end 
	end 
	if (jzul7b4b9qmfueo465qnnesd8lbl_736) 
	begin 
	  i0j5u51kfdal3pleka7nkmqg31ry06rd_429 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (f7skrkls92tyu4nqk5c1zzq3ax3m4bs_841) 
		begin 
			i0j5u51kfdal3pleka7nkmqg31ry06rd_429 <= yfm34j9ptecioamx3b2t1rcujzryj38d_144 ;
		end 
	end 
	if (rst) 
	begin 
	  avtvhu0q2pnytp68_276 <= 1'b1 ;
	 end 
	else 
	begin 
			avtvhu0q2pnytp68_276 <= k8mcetbbfsxdmb58j5irvuf_855 ;
	end 
	if (rst) 
	begin 
	  zjcgudgd7398pvcsn5s861ju_399 <= 1'b0 ;
	 end 
	else 
	begin 
			zjcgudgd7398pvcsn5s861ju_399 <= u6fdb9z8iasiqtfox44_68 ;
	end 
	if (rst) 
	begin 
	  jobjctkhtm7a044rz5ytzcz50qz_670 <= 1'b1 ;
	 end 
	else 
	begin 
			jobjctkhtm7a044rz5ytzcz50qz_670 <= avtvhu0q2pnytp68_276 ;
	end 
	if (rst) 
	begin 
	  kgs7k1p875cwlll2xllnnm0jgc_614 <= 1'b0 ;
	 end 
	else 
	begin 
			kgs7k1p875cwlll2xllnnm0jgc_614 <= zjcgudgd7398pvcsn5s861ju_399 ;
	end 
		init_done <= yy78zyymorixwrpthdwcmpjqlf12_595 ;
end

endmodule 
