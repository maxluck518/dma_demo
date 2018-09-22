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
// File name: S_SYNCER_for__OUT_.v
// File created: 2018/09/22 10:38:34
// Created by: Xilinx SDNet Compiler version 2018.1.1, build 2258648

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_SYNCER_for__OUT_ (
     packet_in_PACKET1_TVALID, 
     packet_in_PACKET1_TDATA, 
     packet_in_PACKET1_TKEEP, 
     packet_in_PACKET1_TLAST, 
     packet_out_PACKET1_TREADY, 
     tuple_in_TUPLE0_VALID, 
     tuple_in_TUPLE0_DATA, 
     tuple_in_TUPLE2_VALID, 
     tuple_in_TUPLE2_DATA, 
     backpressure_in, 


     packet_out_PACKET1_TVALID, 
     packet_out_PACKET1_TDATA, 
     packet_out_PACKET1_TKEEP, 
     packet_out_PACKET1_TLAST, 
     packet_in_PACKET1_TREADY, 
     tuple_out_TUPLE0_VALID, 
     tuple_out_TUPLE0_DATA, 
     tuple_out_TUPLE2_VALID, 
     tuple_out_TUPLE2_DATA, 
     backpressure_out, 

     clk_in_0, 
     clk_out_0, 
     clk_in_1, 
     clk_out_1, 
     clk_in_2, 
     clk_out_2, 
     rst_in_0, 
     rst_out_0, 
     rst_in_1, 
     rst_out_1, 
     rst_in_2, 
     rst_out_2 

);

//-------------------------------------------------------------
// I/O
//-------------------------------------------------------------
 input		packet_in_PACKET1_TVALID ;
 input	 [255:0] packet_in_PACKET1_TDATA ;
 input	 [31:0] packet_in_PACKET1_TKEEP ;
 input		packet_in_PACKET1_TLAST ;
 input		packet_out_PACKET1_TREADY ;
 input		tuple_in_TUPLE0_VALID ;
 input	 [15:0] tuple_in_TUPLE0_DATA ;
 input		tuple_in_TUPLE2_VALID ;
 input	 [127:0] tuple_in_TUPLE2_DATA ;
 input		backpressure_in ;
 output		packet_out_PACKET1_TVALID ;
 output	 [255:0] packet_out_PACKET1_TDATA ;
 output	 [31:0] packet_out_PACKET1_TKEEP ;
 output		packet_out_PACKET1_TLAST ;
 output		packet_in_PACKET1_TREADY ;
 output		tuple_out_TUPLE0_VALID ;
 output	 [15:0] tuple_out_TUPLE0_DATA ;
 output		tuple_out_TUPLE2_VALID ;
 output	 [127:0] tuple_out_TUPLE2_DATA ;
 output	reg	backpressure_out ;
 input		clk_in_0 ;
 input		clk_out_0 ;
 input		clk_in_1 ;
 input		clk_out_1 ;
 input		clk_in_2 ;
 input		clk_out_2 ;
 input		rst_in_0 ;
 input		rst_out_0 ;
 input		rst_in_1 ;
 input		rst_out_1 ;
 input		rst_in_2 ;
 input		rst_out_2 ;






 reg	fn7vn6ehrvxyyg35p_423;	 initial fn7vn6ehrvxyyg35p_423 = 1'b0 ;
 wire	i95jgkgkummijiskw4az16_903 ;
 wire [289:0] uviozwv9v29f2g927a0vlgbxcn_525 ;
 wire	wk10ktwt9hdq4qlm_417 ;
 wire	s8jbbsmi8yxk08npjn_249 ;
 wire	p9fjhogyztyu46iuqko8foyuaoyfcnb_21 ;
 wire [8:0] hr9iosaf5zjt7nl20tr8v20svvmn00k0_339 ;
 wire [8:0] srhmv7wt8qr7eakob3ijs_196 ;
 wire	kfnugzkeam9alr1ycfppitb019_179 ;
 wire	wrhvg4g875j04ikawydftsq14_24 ;
 wire	do8sary3tnvdpc58cj3f_852 ;
 wire	wv6pvhrjrbxxgg089p_841 ;
 wire	togklcrgaz7dqaryv3efao7o_543 ;
 wire	pt93xkqd6uf9rewj5_68 ;
 wire	yakp2br8djgr8ep1ai_898 ;
 reg	fxymfab7xoa64qicjhq0adeho3_774;	 initial fxymfab7xoa64qicjhq0adeho3_774 = 1'b0 ;
 wire	fln10s2vuchfq1p4u3rsxvh9mau90g_360 ;
 reg	qgjruswsbb1tamjjot2yywghdqo_452;	 initial qgjruswsbb1tamjjot2yywghdqo_452 = 1'b0 ;
 reg	arr1n29mhfswyiw4e_585;	 initial arr1n29mhfswyiw4e_585 = 1'b0 ;
 wire	kaeey12kw3to248i3r_603 ;
 wire [0:0] c1ssh8c24bxsfky9uj2_552 ;
 wire	ivl6mef5mvuo6w0voq27p0t1ecah00_639 ;
 wire	vqkaind1vbnv30s8mxgaenz_462 ;
 wire	l1j9zf6mkzuvuswwqh1nl2gs8doqk1vk_206 ;
 wire [8:0] oz6sr8wg15pr7gkjnm0mrogfl98wb_721 ;
 wire [8:0] sqyl0s19w1d8ihg2wjjfdh6o6sz_30 ;
 wire	zgnuvbgpp95knsh5vcvlcrb3_823 ;
 wire	rinoid9w2obsp9aul4hx17jc_9 ;
 wire	a65zyig8gf4mi8tcsax1_762 ;
 wire	bkj3yo4kx30l3si1teq_78 ;
 wire	r9utmm5xwgger0u1iu1r2tufdxhm5_382 ;
 wire	cvvzykfdyzypkjxorrc6y6_18 ;
 reg	eusx6h4jhr20z6o0x4wjfk6rp5g_542;	 initial eusx6h4jhr20z6o0x4wjfk6rp5g_542 = 1'b0 ;
 reg	muxy2r75hhvr1gyfp127pqynyirdpz2_190;	 initial muxy2r75hhvr1gyfp127pqynyirdpz2_190 = 1'b1 ;
 reg [8:0] bp33pjwgimayshb6z8_125;	 initial bp33pjwgimayshb6z8_125 = 9'b000000000 ;
 reg	e5vpvq8503frf7mgjo2mioz5a3mvxjt_621;	 initial e5vpvq8503frf7mgjo2mioz5a3mvxjt_621 = 1'b0 ;
 wire	vt5j3ksvf8ch12fz1nty_882 ;
 wire [15:0] angvhizitg55uc2a2lxd2iq5i9m3_338 ;
 wire	npgr7e0h4gadmn2hhg3h8lx6on_626 ;
 wire	ppniwt70ch65rcvr969dxfuqbon08d1u_24 ;
 wire	qmbbh40vbg2jdnqtsdp_751 ;
 wire [6:0] u98oik73v7y4lovw8l_562 ;
 wire [6:0] vg67nvki2yr9k0p26ln3ldwzprfx_592 ;
 wire	aps9y0zob9owbvjd_442 ;
 wire	oy3y4l5rp2vec4cgs35lgdgal4_559 ;
 wire	sdmh7hjav4fiejms4sc97bcy17lbw_72 ;
 wire	arv5p5irxnuos9rms2xux83gxe_124 ;
 wire	gkfb8pm5fltanb8kju_428 ;
 wire	ocz3ypnnm65pn46bi_197 ;
 wire	fojuq20d16xyei9e8y5lb4mrw_564 ;
 wire [127:0] i16cll9vw8bgm32sz97kroc1z0g85npg_158 ;
 wire	o7rh84ul5pnnns8qodpeazvd1lo15pua_667 ;
 wire	kfylt8hkhs7e0bqmvfv7w30ueuvn1k_622 ;
 wire	lilxqxkzbspkjmrpq92c4h3qn3_306 ;
 wire [7:0] d2mugjmdz3wne8j94qahm804yu7_357 ;
 wire [7:0] f4n9gfe8wtwgzgh0d4ujx0e5_799 ;
 wire	jiuyksvgm5nvzsr1laloe92y4lxmp7_766 ;
 wire	ex08yikb4z8c0hpaeu6o9aybjvkr360o_614 ;
 wire	vdsnfmngbdodmm0gyqref3j3o4_660 ;
 wire	q9as9u73gjl310y4e8fc630r3_603 ;
 wire	makr8en8fzwg2s0spb_244 ;
 wire	fuc2lw3uc6p9rwlri_269 ;
 reg	t0ywnpbzwfcn73jbtbqon_273;	 initial t0ywnpbzwfcn73jbtbqon_273 = 1'b0 ;
 reg	iuuw0mbwtc7hrus024bsyy6_265;	 initial iuuw0mbwtc7hrus024bsyy6_265 = 1'b0 ;
 reg	y3u54ja3k9dn8n1sxxwl_280;	 initial y3u54ja3k9dn8n1sxxwl_280 = 1'b0 ;
 wire	yivca39v4wamxssrmb6sjsp_243 ;
 wire [289:0] oefb2mjipd025emo2u5ur0ga7qh_549 ;
 wire	bd9t9oopjl17wu4avujfri5e8_669 ;
 wire [289:0] cu667ojx6y8yu0t3j36x5s_205 ;
 wire	qrsgpkwivy1rxcd6mly2rficxvuoegj_748 ;
 wire	i1g5v9qtpdakv05pf8_247 ;
 wire	vq2nt3j0yea0w8qqsw0f9f8a6eaus_218 ;
 wire	q7399khnw0g70evim87nf4vo_539 ;
 wire	so2m0e2f66zvq42ksvs1d_545 ;
 wire	nykjn6ex5tlpeh1sc7vp8ph0j_489 ;
 wire	evkcwrqu2ep9fjf5k8y0v7e4kef_49 ;
 wire	ymjpsn38033wpxbqzz1a5_109 ;
 wire	ccz2wfnb35dc6h5tmd7w6qvh_771 ;
 wire	eu5ib86s76f1boeapvqz_268 ;
 wire	vlx3709xlf8l8f0qfc240o51nyo9o2i_695 ;
 wire	cbfm53dihhvl4ecc045g6bzmp9cfe_364 ;
 wire	jcxockafwxkgfnt4brnq_645 ;
 wire	mziaa3xlrxc3tg2crztls6yh1bz_145 ;
 wire [31:0] z8dp4j2pmc59gb71upjmtn54vghd_902 ;
 wire [255:0] hm9d4teakvein1ifbuc1fis_367 ;
 wire	cth1ca99atqud6a7q_461 ;
 wire	fveneo5lqts092ouvbvsw2b_416 ;
 wire	lz5jvsi6xxlblrt4_809 ;
 wire	vthnlsjficg7dnv4g2ijy1ebhndfx_322 ;
 wire	ehs3yi5h9d6twvp89pcyg2_172 ;
 wire	aeao7xr17aga9ijb8o1lp_350 ;
 wire	g7h7pzdct05so5ov38m_752 ;
 wire	n04c5nggqte10gg2hah6su9kt_214 ;
 wire	v4yjzzllxhp13fqwer_758 ;
 wire	ppvfgg1m7fzak1n1xu905ulv_432 ;
 wire	cowuorfn072uqd73diyrni5qnqcn0vra_842 ;
 wire	gt6gcx4sr4wsyjnarckqnat3sl8900gr_285 ;
 wire	b8xiffjj70uhxvo623dl655950s43_409 ;
 wire	ngta2q33fcngx4ik828ol6hjvfdrogzb_848 ;
 wire	s0sylnclw949cy14i_423 ;
 wire	hkra5rub6fdtnflklw9b4_834 ;
 wire [0:0] yqnbgxtmk53uqqw7_353 ;
 wire	lg511aoxz7tdgk83_216 ;
 wire	x5dsiy5nct6e0ikvgtp7fx0xtbhv6g_347 ;
 wire [8:0] ei52f4c74f2hiw23k6_862 ;
 wire	t64hc7rj89xlvv042yb56xvitri_152 ;
 wire	vxx6nsm0vs8568a6cw_357 ;
 wire	va3mteq83viy30qz_555 ;
 wire	okkqbwz78a1iougk4iza410mn83h0_126 ;
 wire	cuu3xdww73f17mfy9jmqx10wcq2yxwv_342 ;
 wire	juhbi1chq2jh4mjo_829 ;
 wire	ge55p2ha4wc0xnhe9ymdg7_662 ;
 wire [15:0] j09gkd7jyqvbg5r93jif86ex0gzu8jzp_45 ;
 wire	s9e33psq2jbcykf6ccfj_763 ;
 wire [15:0] askymxtsrqw65yvkmcnpp0hcibd1z_2 ;
 wire	pvwvwwfysgddg0n8xykxan2wa8w_39 ;
 wire	q0kxfdeeqmtt2tczykrp6h1qqjzl_860 ;
 wire	m1kvuh4l0gj5ycn82sesoyzejgq_144 ;
 wire [127:0] zex0z3r2qfwf2nsibf58ovi87s_372 ;
 wire	qo9299e2ufmntsjqk_886 ;
 wire [127:0] s7k3kgoavi8he1yn758u5ya4f6okkd_33 ;
 wire	dgkpz7nivlcvl4nt6e3l5_20 ;
 wire	iilj537qrq3o2gow_445 ;
 wire	cpz82mko6csqplqcun954lvmguhjikmw_848 ;
 wire	z4hjh9uahms05lnk63b7p_201 ;
 wire	n0gnt9c97jh9agf06jkpxlrya_123 ;


 assign yivca39v4wamxssrmb6sjsp_243 = 
	 ~(backpressure_in) ;
 assign oefb2mjipd025emo2u5ur0ga7qh_549 = 
	{packet_in_PACKET1_TVALID, packet_in_PACKET1_TDATA, packet_in_PACKET1_TKEEP, packet_in_PACKET1_TLAST} ;
 assign bd9t9oopjl17wu4avujfri5e8_669 	= packet_in_PACKET1_TVALID ;
 assign cu667ojx6y8yu0t3j36x5s_205 	= oefb2mjipd025emo2u5ur0ga7qh_549[289:0] ;
 assign qrsgpkwivy1rxcd6mly2rficxvuoegj_748 = 
	okkqbwz78a1iougk4iza410mn83h0_126 | z4hjh9uahms05lnk63b7p_201 ;
 assign i1g5v9qtpdakv05pf8_247 = 
	1'b0 ;
 assign vq2nt3j0yea0w8qqsw0f9f8a6eaus_218 = 
	1'b1 ;
 assign q7399khnw0g70evim87nf4vo_539 = 
	 ~(fln10s2vuchfq1p4u3rsxvh9mau90g_360) ;
 assign so2m0e2f66zvq42ksvs1d_545 = 
	juhbi1chq2jh4mjo_829 & qrsgpkwivy1rxcd6mly2rficxvuoegj_748 & jcxockafwxkgfnt4brnq_645 ;
 assign nykjn6ex5tlpeh1sc7vp8ph0j_489 = 
	q7399khnw0g70evim87nf4vo_539 & fxymfab7xoa64qicjhq0adeho3_774 & jcxockafwxkgfnt4brnq_645 & okkqbwz78a1iougk4iza410mn83h0_126 & juhbi1chq2jh4mjo_829 ;
 assign evkcwrqu2ep9fjf5k8y0v7e4kef_49 = 
	so2m0e2f66zvq42ksvs1d_545 | nykjn6ex5tlpeh1sc7vp8ph0j_489 ;
 assign ymjpsn38033wpxbqzz1a5_109 = 
	yivca39v4wamxssrmb6sjsp_243 & evkcwrqu2ep9fjf5k8y0v7e4kef_49 ;
 assign ccz2wfnb35dc6h5tmd7w6qvh_771 = 
	backpressure_in & fn7vn6ehrvxyyg35p_423 & juhbi1chq2jh4mjo_829 & va3mteq83viy30qz_555 & z4hjh9uahms05lnk63b7p_201 & q7399khnw0g70evim87nf4vo_539 ;
 assign eu5ib86s76f1boeapvqz_268 = 
	ymjpsn38033wpxbqzz1a5_109 | ccz2wfnb35dc6h5tmd7w6qvh_771 ;
 assign vlx3709xlf8l8f0qfc240o51nyo9o2i_695 	= eu5ib86s76f1boeapvqz_268 ;
 assign cbfm53dihhvl4ecc045g6bzmp9cfe_364 = 
	1'b0 ;
 assign jcxockafwxkgfnt4brnq_645 = 
	 ~(wk10ktwt9hdq4qlm_417) ;
 assign mziaa3xlrxc3tg2crztls6yh1bz_145 	= uviozwv9v29f2g927a0vlgbxcn_525[0] ;
 assign z8dp4j2pmc59gb71upjmtn54vghd_902 	= uviozwv9v29f2g927a0vlgbxcn_525[32:1] ;
 assign hm9d4teakvein1ifbuc1fis_367 	= uviozwv9v29f2g927a0vlgbxcn_525[288:33] ;
 assign cth1ca99atqud6a7q_461 	= uviozwv9v29f2g927a0vlgbxcn_525[289] ;
 assign fveneo5lqts092ouvbvsw2b_416 = 
	fn7vn6ehrvxyyg35p_423 | arr1n29mhfswyiw4e_585 ;
 assign lz5jvsi6xxlblrt4_809 = 
	qgjruswsbb1tamjjot2yywghdqo_452 | jcxockafwxkgfnt4brnq_645 ;
 assign vthnlsjficg7dnv4g2ijy1ebhndfx_322 = 
	lz5jvsi6xxlblrt4_809 & juhbi1chq2jh4mjo_829 & qrsgpkwivy1rxcd6mly2rficxvuoegj_748 ;
 assign ehs3yi5h9d6twvp89pcyg2_172 = 
	vthnlsjficg7dnv4g2ijy1ebhndfx_322 | fxymfab7xoa64qicjhq0adeho3_774 ;
 assign aeao7xr17aga9ijb8o1lp_350 = 
	backpressure_in & cth1ca99atqud6a7q_461 & ehs3yi5h9d6twvp89pcyg2_172 ;
 assign g7h7pzdct05so5ov38m_752 = 
	va3mteq83viy30qz_555 & e5vpvq8503frf7mgjo2mioz5a3mvxjt_621 ;
 assign n04c5nggqte10gg2hah6su9kt_214 = 
	g7h7pzdct05so5ov38m_752 | okkqbwz78a1iougk4iza410mn83h0_126 | mziaa3xlrxc3tg2crztls6yh1bz_145 ;
 assign v4yjzzllxhp13fqwer_758 = 
	yivca39v4wamxssrmb6sjsp_243 & fxymfab7xoa64qicjhq0adeho3_774 & cth1ca99atqud6a7q_461 & n04c5nggqte10gg2hah6su9kt_214 ;
 assign ppvfgg1m7fzak1n1xu905ulv_432 	= fxymfab7xoa64qicjhq0adeho3_774 ;
 assign cowuorfn072uqd73diyrni5qnqcn0vra_842 	= packet_in_PACKET1_TVALID ;
 assign gt6gcx4sr4wsyjnarckqnat3sl8900gr_285 = 
	1'b0 ;
 assign b8xiffjj70uhxvo623dl655950s43_409 = 
	1'b1 ;
 assign ngta2q33fcngx4ik828ol6hjvfdrogzb_848 = (
	((eusx6h4jhr20z6o0x4wjfk6rp5g_542 == 1'b1) && (packet_in_PACKET1_TVALID == 1'b1))?1'b1:
	((muxy2r75hhvr1gyfp127pqynyirdpz2_190 == 1'b1) && (packet_in_PACKET1_TVALID == 1'b1))?1'b1:
	0)  ;
 assign s0sylnclw949cy14i_423 = (
	((packet_in_PACKET1_TVALID == 1'b1) && (packet_in_PACKET1_TLAST == 1'b1))?1'b1:
	0)  ;
 assign hkra5rub6fdtnflklw9b4_834 = (
	((packet_in_PACKET1_TVALID == 1'b1) && (packet_in_PACKET1_TLAST == 1'b0))?1'b1:
	0)  ;
 assign yqnbgxtmk53uqqw7_353 = ngta2q33fcngx4ik828ol6hjvfdrogzb_848 ;
 assign lg511aoxz7tdgk83_216 	= eu5ib86s76f1boeapvqz_268 ;
 assign x5dsiy5nct6e0ikvgtp7fx0xtbhv6g_347 = 
	1'b0 ;
 assign ei52f4c74f2hiw23k6_862 	= oz6sr8wg15pr7gkjnm0mrogfl98wb_721[8:0] ;
 assign t64hc7rj89xlvv042yb56xvitri_152 = (
	((ei52f4c74f2hiw23k6_862 != bp33pjwgimayshb6z8_125))?1'b1:
	0)  ;
 assign vxx6nsm0vs8568a6cw_357 = c1ssh8c24bxsfky9uj2_552 ;
 assign va3mteq83viy30qz_555 = c1ssh8c24bxsfky9uj2_552 ;
 assign okkqbwz78a1iougk4iza410mn83h0_126 = 
	 ~(va3mteq83viy30qz_555) ;
 assign cuu3xdww73f17mfy9jmqx10wcq2yxwv_342 	= ivl6mef5mvuo6w0voq27p0t1ecah00_639 ;
 assign juhbi1chq2jh4mjo_829 = 
	 ~(ivl6mef5mvuo6w0voq27p0t1ecah00_639) ;
 assign ge55p2ha4wc0xnhe9ymdg7_662 = 
	z4hjh9uahms05lnk63b7p_201 & juhbi1chq2jh4mjo_829 & vxx6nsm0vs8568a6cw_357 & eu5ib86s76f1boeapvqz_268 ;
 assign j09gkd7jyqvbg5r93jif86ex0gzu8jzp_45 = 
	tuple_in_TUPLE0_DATA ;
 assign s9e33psq2jbcykf6ccfj_763 	= tuple_in_TUPLE0_VALID ;
 assign askymxtsrqw65yvkmcnpp0hcibd1z_2 	= j09gkd7jyqvbg5r93jif86ex0gzu8jzp_45[15:0] ;
 assign pvwvwwfysgddg0n8xykxan2wa8w_39 = 
	 ~(npgr7e0h4gadmn2hhg3h8lx6on_626) ;
 assign q0kxfdeeqmtt2tczykrp6h1qqjzl_860 	= ge55p2ha4wc0xnhe9ymdg7_662 ;
 assign m1kvuh4l0gj5ycn82sesoyzejgq_144 = 
	1'b0 ;
 assign zex0z3r2qfwf2nsibf58ovi87s_372 = 
	tuple_in_TUPLE2_DATA ;
 assign qo9299e2ufmntsjqk_886 	= tuple_in_TUPLE2_VALID ;
 assign s7k3kgoavi8he1yn758u5ya4f6okkd_33 	= zex0z3r2qfwf2nsibf58ovi87s_372[127:0] ;
 assign dgkpz7nivlcvl4nt6e3l5_20 = 
	 ~(o7rh84ul5pnnns8qodpeazvd1lo15pua_667) ;
 assign iilj537qrq3o2gow_445 	= ge55p2ha4wc0xnhe9ymdg7_662 ;
 assign cpz82mko6csqplqcun954lvmguhjikmw_848 = 
	1'b0 ;
 assign z4hjh9uahms05lnk63b7p_201 = 
	jcxockafwxkgfnt4brnq_645 & pvwvwwfysgddg0n8xykxan2wa8w_39 & dgkpz7nivlcvl4nt6e3l5_20 ;
 assign n0gnt9c97jh9agf06jkpxlrya_123 = 
	t0ywnpbzwfcn73jbtbqon_273 | iuuw0mbwtc7hrus024bsyy6_265 | y3u54ja3k9dn8n1sxxwl_280 ;
 assign packet_out_PACKET1_TVALID 	= ppvfgg1m7fzak1n1xu905ulv_432 ;
 assign packet_out_PACKET1_TDATA 	= hm9d4teakvein1ifbuc1fis_367[255:0] ;
 assign packet_out_PACKET1_TKEEP 	= z8dp4j2pmc59gb71upjmtn54vghd_902[31:0] ;
 assign packet_out_PACKET1_TLAST 	= mziaa3xlrxc3tg2crztls6yh1bz_145 ;
 assign packet_in_PACKET1_TREADY 	= packet_out_PACKET1_TREADY ;
 assign tuple_out_TUPLE0_VALID 	= e5vpvq8503frf7mgjo2mioz5a3mvxjt_621 ;
 assign tuple_out_TUPLE0_DATA 	= angvhizitg55uc2a2lxd2iq5i9m3_338[15:0] ;
 assign tuple_out_TUPLE2_VALID 	= e5vpvq8503frf7mgjo2mioz5a3mvxjt_621 ;
 assign tuple_out_TUPLE2_DATA 	= i16cll9vw8bgm32sz97kroc1z0g85npg_158[127:0] ;


assign yakp2br8djgr8ep1ai_898 = (
	((eu5ib86s76f1boeapvqz_268 == 1'b1))?vq2nt3j0yea0w8qqsw0f9f8a6eaus_218 :
	((yivca39v4wamxssrmb6sjsp_243 == 1'b1))?i1g5v9qtpdakv05pf8_247 :
	fxymfab7xoa64qicjhq0adeho3_774 ) ;

assign fln10s2vuchfq1p4u3rsxvh9mau90g_360 = (
	((fxymfab7xoa64qicjhq0adeho3_774 == 1'b1) && (yivca39v4wamxssrmb6sjsp_243 == 1'b1))?i1g5v9qtpdakv05pf8_247 :
	fxymfab7xoa64qicjhq0adeho3_774 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	fn7vn6ehrvxyyg35p_423 <= 1'b0 ;
	fxymfab7xoa64qicjhq0adeho3_774 <= 1'b0 ;
	qgjruswsbb1tamjjot2yywghdqo_452 <= 1'b0 ;
	arr1n29mhfswyiw4e_585 <= 1'b0 ;
	bp33pjwgimayshb6z8_125 <= 9'b000000000 ;
	t0ywnpbzwfcn73jbtbqon_273 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		fn7vn6ehrvxyyg35p_423 <= backpressure_in ;
		fxymfab7xoa64qicjhq0adeho3_774 <= yakp2br8djgr8ep1ai_898 ;
		qgjruswsbb1tamjjot2yywghdqo_452 <= jcxockafwxkgfnt4brnq_645 ;
		arr1n29mhfswyiw4e_585 <= eu5ib86s76f1boeapvqz_268 ;
		bp33pjwgimayshb6z8_125 <= ei52f4c74f2hiw23k6_862 ;
		t0ywnpbzwfcn73jbtbqon_273 <= s8jbbsmi8yxk08npjn_249 ;
		backpressure_out <= n0gnt9c97jh9agf06jkpxlrya_123 ;
  end
end

always @(posedge clk_in_0)
begin
  if (rst_in_0) 
  begin
	eusx6h4jhr20z6o0x4wjfk6rp5g_542 <= 1'b0 ;
	muxy2r75hhvr1gyfp127pqynyirdpz2_190 <= 1'b1 ;
   end
  else
  begin
	if (hkra5rub6fdtnflklw9b4_834) 
	begin 
	  eusx6h4jhr20z6o0x4wjfk6rp5g_542 <= 1'b0 ;
	 end 
	else 
	begin 
		if (s0sylnclw949cy14i_423) 
		begin 
			eusx6h4jhr20z6o0x4wjfk6rp5g_542 <= b8xiffjj70uhxvo623dl655950s43_409 ;
		end 
	end 
	if (ngta2q33fcngx4ik828ol6hjvfdrogzb_848) 
	begin 
		muxy2r75hhvr1gyfp127pqynyirdpz2_190 <= gt6gcx4sr4wsyjnarckqnat3sl8900gr_285 ;
	end 
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	e5vpvq8503frf7mgjo2mioz5a3mvxjt_621 <= 1'b0 ;
	iuuw0mbwtc7hrus024bsyy6_265 <= 1'b0 ;
   end
  else
  begin
		e5vpvq8503frf7mgjo2mioz5a3mvxjt_621 <= ge55p2ha4wc0xnhe9ymdg7_662 ;
		iuuw0mbwtc7hrus024bsyy6_265 <= ppniwt70ch65rcvr969dxfuqbon08d1u_24 ;
  end
end

always @(posedge clk_out_2)
begin
  if (rst_in_0) 
  begin
	y3u54ja3k9dn8n1sxxwl_280 <= 1'b0 ;
   end
  else
  begin
		y3u54ja3k9dn8n1sxxwl_280 <= kfylt8hkhs7e0bqmvfv7w30ueuvn1k_622 ;
  end
end

defparam i88yuvvci6ef8j2galqf_9.WRITE_DATA_WIDTH = 290; 
defparam i88yuvvci6ef8j2galqf_9.FIFO_WRITE_DEPTH = 512; 
defparam i88yuvvci6ef8j2galqf_9.PROG_FULL_THRESH = 203; 
defparam i88yuvvci6ef8j2galqf_9.PROG_EMPTY_THRESH = 203; 
defparam i88yuvvci6ef8j2galqf_9.READ_MODE = "STD"; 
defparam i88yuvvci6ef8j2galqf_9.WR_DATA_COUNT_WIDTH = 9; 
defparam i88yuvvci6ef8j2galqf_9.RD_DATA_COUNT_WIDTH = 9; 
defparam i88yuvvci6ef8j2galqf_9.DOUT_RESET_VALUE = "0"; 
defparam i88yuvvci6ef8j2galqf_9.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync i88yuvvci6ef8j2galqf_9 (
	.wr_en(bd9t9oopjl17wu4avujfri5e8_669),
	.din(cu667ojx6y8yu0t3j36x5s_205),
	.rd_en(vlx3709xlf8l8f0qfc240o51nyo9o2i_695),
	.sleep(cbfm53dihhvl4ecc045g6bzmp9cfe_364),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(i95jgkgkummijiskw4az16_903), 
	.dout(uviozwv9v29f2g927a0vlgbxcn_525), 
	.empty(wk10ktwt9hdq4qlm_417), 
	.prog_full(s8jbbsmi8yxk08npjn_249), 
	.full(p9fjhogyztyu46iuqko8foyuaoyfcnb_21), 
	.rd_data_count(hr9iosaf5zjt7nl20tr8v20svvmn00k0_339), 
	.wr_data_count(srhmv7wt8qr7eakob3ijs_196), 
	.wr_rst_busy(kfnugzkeam9alr1ycfppitb019_179), 
	.rd_rst_busy(wrhvg4g875j04ikawydftsq14_24), 
	.overflow(do8sary3tnvdpc58cj3f_852), 
	.underflow(wv6pvhrjrbxxgg089p_841), 
	.sbiterr(togklcrgaz7dqaryv3efao7o_543), 
	.dbiterr(pt93xkqd6uf9rewj5_68), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.WRITE_DATA_WIDTH = 1; 
defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.FIFO_WRITE_DEPTH = 512; 
defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.PROG_FULL_THRESH = 203; 
defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.PROG_EMPTY_THRESH = 203; 
defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.READ_MODE = "FWFT"; 
defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.WR_DATA_COUNT_WIDTH = 9; 
defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.RD_DATA_COUNT_WIDTH = 9; 
defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.DOUT_RESET_VALUE = "0"; 
defparam i544jv13yp5s83l13tbf6vt20gjuwi77_1881.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync i544jv13yp5s83l13tbf6vt20gjuwi77_1881 (
	.wr_en(cowuorfn072uqd73diyrni5qnqcn0vra_842),
	.din(yqnbgxtmk53uqqw7_353),
	.rd_en(lg511aoxz7tdgk83_216),
	.sleep(x5dsiy5nct6e0ikvgtp7fx0xtbhv6g_347),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(kaeey12kw3to248i3r_603), 
	.dout(c1ssh8c24bxsfky9uj2_552), 
	.empty(ivl6mef5mvuo6w0voq27p0t1ecah00_639), 
	.prog_full(vqkaind1vbnv30s8mxgaenz_462), 
	.full(l1j9zf6mkzuvuswwqh1nl2gs8doqk1vk_206), 
	.rd_data_count(oz6sr8wg15pr7gkjnm0mrogfl98wb_721), 
	.wr_data_count(sqyl0s19w1d8ihg2wjjfdh6o6sz_30), 
	.wr_rst_busy(zgnuvbgpp95knsh5vcvlcrb3_823), 
	.rd_rst_busy(rinoid9w2obsp9aul4hx17jc_9), 
	.overflow(a65zyig8gf4mi8tcsax1_762), 
	.underflow(bkj3yo4kx30l3si1teq_78), 
	.sbiterr(r9utmm5xwgger0u1iu1r2tufdxhm5_382), 
	.dbiterr(cvvzykfdyzypkjxorrc6y6_18), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam lth5b7l2mnjxd13ryaw_1151.WRITE_DATA_WIDTH = 16; 
defparam lth5b7l2mnjxd13ryaw_1151.FIFO_WRITE_DEPTH = 128; 
defparam lth5b7l2mnjxd13ryaw_1151.PROG_FULL_THRESH = 49; 
defparam lth5b7l2mnjxd13ryaw_1151.PROG_EMPTY_THRESH = 49; 
defparam lth5b7l2mnjxd13ryaw_1151.READ_MODE = "STD"; 
defparam lth5b7l2mnjxd13ryaw_1151.WR_DATA_COUNT_WIDTH = 7; 
defparam lth5b7l2mnjxd13ryaw_1151.RD_DATA_COUNT_WIDTH = 7; 
defparam lth5b7l2mnjxd13ryaw_1151.DOUT_RESET_VALUE = "0"; 
defparam lth5b7l2mnjxd13ryaw_1151.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_async lth5b7l2mnjxd13ryaw_1151 (
	.wr_en(s9e33psq2jbcykf6ccfj_763),
	.din(askymxtsrqw65yvkmcnpp0hcibd1z_2),
	.rd_en(q0kxfdeeqmtt2tczykrp6h1qqjzl_860),
	.sleep(m1kvuh4l0gj5ycn82sesoyzejgq_144),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(vt5j3ksvf8ch12fz1nty_882), 
	.dout(angvhizitg55uc2a2lxd2iq5i9m3_338), 
	.empty(npgr7e0h4gadmn2hhg3h8lx6on_626), 
	.prog_full(ppniwt70ch65rcvr969dxfuqbon08d1u_24), 
	.full(qmbbh40vbg2jdnqtsdp_751), 
	.rd_data_count(u98oik73v7y4lovw8l_562), 
	.wr_data_count(vg67nvki2yr9k0p26ln3ldwzprfx_592), 
	.wr_rst_busy(aps9y0zob9owbvjd_442), 
	.rd_rst_busy(oy3y4l5rp2vec4cgs35lgdgal4_559), 
	.overflow(sdmh7hjav4fiejms4sc97bcy17lbw_72), 
	.underflow(arv5p5irxnuos9rms2xux83gxe_124), 
	.sbiterr(gkfb8pm5fltanb8kju_428), 
	.dbiterr(ocz3ypnnm65pn46bi_197), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

defparam bssrcotaks0980tb4m8yir63ghgv_342.WRITE_DATA_WIDTH = 128; 
defparam bssrcotaks0980tb4m8yir63ghgv_342.FIFO_WRITE_DEPTH = 256; 
defparam bssrcotaks0980tb4m8yir63ghgv_342.PROG_FULL_THRESH = 145; 
defparam bssrcotaks0980tb4m8yir63ghgv_342.PROG_EMPTY_THRESH = 145; 
defparam bssrcotaks0980tb4m8yir63ghgv_342.READ_MODE = "STD"; 
defparam bssrcotaks0980tb4m8yir63ghgv_342.WR_DATA_COUNT_WIDTH = 8; 
defparam bssrcotaks0980tb4m8yir63ghgv_342.RD_DATA_COUNT_WIDTH = 8; 
defparam bssrcotaks0980tb4m8yir63ghgv_342.DOUT_RESET_VALUE = "0"; 
defparam bssrcotaks0980tb4m8yir63ghgv_342.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async bssrcotaks0980tb4m8yir63ghgv_342 (
	.wr_en(qo9299e2ufmntsjqk_886),
	.din(s7k3kgoavi8he1yn758u5ya4f6okkd_33),
	.rd_en(iilj537qrq3o2gow_445),
	.sleep(cpz82mko6csqplqcun954lvmguhjikmw_848),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(fojuq20d16xyei9e8y5lb4mrw_564), 
	.dout(i16cll9vw8bgm32sz97kroc1z0g85npg_158), 
	.empty(o7rh84ul5pnnns8qodpeazvd1lo15pua_667), 
	.prog_full(kfylt8hkhs7e0bqmvfv7w30ueuvn1k_622), 
	.full(lilxqxkzbspkjmrpq92c4h3qn3_306), 
	.rd_data_count(d2mugjmdz3wne8j94qahm804yu7_357), 
	.wr_data_count(f4n9gfe8wtwgzgh0d4ujx0e5_799), 
	.wr_rst_busy(jiuyksvgm5nvzsr1laloe92y4lxmp7_766), 
	.rd_rst_busy(ex08yikb4z8c0hpaeu6o9aybjvkr360o_614), 
	.overflow(vdsnfmngbdodmm0gyqref3j3o4_660), 
	.underflow(q9as9u73gjl310y4e8fc630r3_603), 
	.sbiterr(makr8en8fzwg2s0spb_244), 
	.dbiterr(fuc2lw3uc6p9rwlri_269), 

	.wr_clk(clk_in_2), 

	.rd_clk(clk_out_2), 
	.rst(rst_in_2) 
); 

endmodule 
