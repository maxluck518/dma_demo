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
// File created: 2018/09/22 15:51:11
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
 input	 [63:0] packet_in_PACKET1_TDATA ;
 input	 [7:0] packet_in_PACKET1_TKEEP ;
 input		packet_in_PACKET1_TLAST ;
 input		packet_out_PACKET1_TREADY ;
 input		tuple_in_TUPLE0_VALID ;
 input	 [15:0] tuple_in_TUPLE0_DATA ;
 input		tuple_in_TUPLE2_VALID ;
 input	 [127:0] tuple_in_TUPLE2_DATA ;
 input		backpressure_in ;
 output		packet_out_PACKET1_TVALID ;
 output	 [63:0] packet_out_PACKET1_TDATA ;
 output	 [7:0] packet_out_PACKET1_TKEEP ;
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






 reg	gf52op4xlif4ks1u7xi75fpnjiu_667;	 initial gf52op4xlif4ks1u7xi75fpnjiu_667 = 1'b0 ;
 wire	t7dtxju0kdzzc0ynfxdgndangie0a7_663 ;
 wire [73:0] b3xxwky4abpksu3evjcap7r03_608 ;
 wire	ytrqzpr7kwqzru0n71qsd_633 ;
 wire	xyclle6hg27gnz31xtv6vt1_443 ;
 wire	uz3rxfkwb5qtddgosc57vm73pxid8g_475 ;
 wire [8:0] di28bn79yp4shj80t6xcm64lg6_120 ;
 wire [8:0] bthk6zb13msf6r5ct_22 ;
 wire	klqnms2w3v43rcyg0s267seuahcug_62 ;
 wire	zy4z5wrnighfxpr9dts3etswh6d_472 ;
 wire	d0qtmp23a6fo0twfzrdd4rl6q_152 ;
 wire	ohh74e6a6u83jk0a7crym_509 ;
 wire	kddkgm0wnzlid19mx8dcwwirjzxr1965_839 ;
 wire	pzzikoc270t1lzsrp252eskwadb6ipr_193 ;
 wire	alfbnp2y3vdkz52e9mvd482wl0_826 ;
 reg	v7374xn8hfloa35tum59j2co_718;	 initial v7374xn8hfloa35tum59j2co_718 = 1'b0 ;
 wire	mlcxc7ord8k05mbjx0pu55dqgh7yn_686 ;
 reg	b8r3eaxnc6i5edc0xun_67;	 initial b8r3eaxnc6i5edc0xun_67 = 1'b0 ;
 reg	anqudwc6oww6k3pomfbehvmxnqvxxk_551;	 initial anqudwc6oww6k3pomfbehvmxnqvxxk_551 = 1'b0 ;
 wire	if263u3kw38fqna5wr_456 ;
 wire [0:0] ed96g7jemtkumaqer_782 ;
 wire	sr3krmee589mvdndfai8a25i7krq_22 ;
 wire	tpxzf1l265oq2gcrh6_721 ;
 wire	nkj16alena6jqurr0b0_309 ;
 wire [8:0] orxz6goj77pmzfdpekas1z2gu5f_503 ;
 wire [8:0] dl4l11aei009o2vw5_30 ;
 wire	mu8wt153xi3ksreb2vzqq6_408 ;
 wire	yy5xcxiabg7b4kaoo3ytv7ih_773 ;
 wire	qxgf47opm4v0j92k_157 ;
 wire	i1k9umucw860k2odtu_71 ;
 wire	jjkh0cbf4ifwypo1bmf8jdm6_221 ;
 wire	od74t882zhwxnp45kq_531 ;
 reg	fvhqnkjr6bt5kxtr983umwxml0ubwil8_220;	 initial fvhqnkjr6bt5kxtr983umwxml0ubwil8_220 = 1'b0 ;
 reg	pv53et24q02o063ywg14wr2lepkkdcx_305;	 initial pv53et24q02o063ywg14wr2lepkkdcx_305 = 1'b1 ;
 reg [8:0] iosnhuj50ps2m6ae8e813_31;	 initial iosnhuj50ps2m6ae8e813_31 = 9'b000000000 ;
 reg	uqpakmk57v09t0d2v8s8_853;	 initial uqpakmk57v09t0d2v8s8_853 = 1'b0 ;
 wire	kki5c7iup4z2yq1dgdx0byim6kg_559 ;
 wire [15:0] ilvqbctuu74ah9gwdl6z9fhrc05r8ugf_664 ;
 wire	o6zsjdmo29lt40xd5u0esnn4t5nhe_643 ;
 wire	rpf39nvxdazjg57wzxg3ea_33 ;
 wire	dzlynnvneuexxl9j8rq75u6rcoe3bh_177 ;
 wire [6:0] bo790dlzp6onkrkuuzs42terbv_782 ;
 wire [6:0] mhj24nuecym7sddptt_649 ;
 wire	m76hsji4gwpti8x59dlgwa_709 ;
 wire	zluiy7o7rhahdzj81kn865x_895 ;
 wire	uq8ohv2287t90d9kq8dm_607 ;
 wire	jxuz54w73wl98bbgk11m1rgiufl3_766 ;
 wire	gplrmw7rxbm6ey076o1lkoqhakf1iu_17 ;
 wire	eodwas1vf3dm7l4d39xmklhml_601 ;
 wire	ixafsze1t3p2vtjl24yt15ttflptjf5k_374 ;
 wire [127:0] xcnv20rzmme3mpuaq23io106rdm9_555 ;
 wire	n6ft6bxpyrowl15ird_359 ;
 wire	z4bgxp2kdgocdxtvt_511 ;
 wire	tal2whuuf6e9ps9pcv0vkxqobv_348 ;
 wire [7:0] mzmp5qschoit09y854z7xy6jf496_143 ;
 wire [7:0] ocj4n6pa7xfqb4178ilcosp35bt6sd_387 ;
 wire	tlz3oxh2dox3cuqh_0 ;
 wire	pzhtvv7wyy1271c5pa9rkwzzyvilrml_247 ;
 wire	yof21bpwsobup6zm0c3fs7samyyorcb_387 ;
 wire	co4xb83znizeex7ae8prabkh9_34 ;
 wire	wb86k7nwsb2yjzhfwrx4_315 ;
 wire	l6p9rpwlijw8mjirqpazlv8vvko_884 ;
 reg	dbcysju99p2zoay9y171o7i1ok71_736;	 initial dbcysju99p2zoay9y171o7i1ok71_736 = 1'b0 ;
 reg	dfh5mdcn7dd78ls441_461;	 initial dfh5mdcn7dd78ls441_461 = 1'b0 ;
 reg	vbszdhvi1c5w3s6ruanohi_499;	 initial vbszdhvi1c5w3s6ruanohi_499 = 1'b0 ;
 wire	kcijxdt7p3ftl4u0_218 ;
 wire [73:0] myt5uzxgb3pyfjxukdkzn38g6xpyk_378 ;
 wire	yo87e2d8eqouehlb7rbk08rs_220 ;
 wire [73:0] przdau8r9svp2ikmqjsyqut9po5iqg_431 ;
 wire	v8nr9d6ohrnwpn4ys_623 ;
 wire	oqr9lucnji1thtrc3qm9d4wfk6dhv_806 ;
 wire	jnfixh11vklyju153v7txvfhds9k1tn_267 ;
 wire	aa6vcum56qkvtvw7psf3n6v9luhoq_508 ;
 wire	io6a55zamfpdcm309j9sj_421 ;
 wire	cu0nzppmq8nlui7f_586 ;
 wire	retzdc0a40v4scjprt_608 ;
 wire	kim45eyn3ln1ujibe94dh_761 ;
 wire	qbcfwobp17bigxfr29fi4u6_355 ;
 wire	oujsu72qcp830pf7mpnk54b_387 ;
 wire	id6oxxad9ynad2se6q11ibdmuilz_423 ;
 wire	cn75avosvoxwn0uullm6bmc81ju_212 ;
 wire	w77mhoghc12idl8c_377 ;
 wire	wg4t5385t9qytqk0tv6jdfmcyejwa3_878 ;
 wire [7:0] djlchdh23ghnyb4jsimf74pi_547 ;
 wire [63:0] jnt4x10tb64tdrw716zzb5_336 ;
 wire	l2sb3ynigdlp734dtg01ib7c12cb_78 ;
 wire	zfc5s4cnh3zv91uzxpp_244 ;
 wire	jztda46huu9sn3e9xfw43_850 ;
 wire	i67kj99n3gqsqnx7e9e6cq5p3_81 ;
 wire	r2y3ux5s1ugno1jdddi_490 ;
 wire	o3878dl5m4rhe5g1niuauiirnkaosz_572 ;
 wire	q3hj067b0xsjdk2qofzao_159 ;
 wire	gpum1441cesn7hdwtj_826 ;
 wire	pl2cr60os5q2kwbe_422 ;
 wire	y545lh8ycxtsvyxb_314 ;
 wire	irrilnspdqosrh9sx9v_738 ;
 wire	zrub0kvx6uq5fr7ykwtg5_704 ;
 wire	wasrsve4ox2rds2g7jp5l_826 ;
 wire	kcbl9i7z3k6xkj628zwaonpe5lxb3z_556 ;
 wire	ipvnlu709ovliwjtuoer3k8_78 ;
 wire	p32d4k84beqpw5wco550u_120 ;
 wire [0:0] q4r603df9pjvrode1ib3_685 ;
 wire	r3ixyqhxkxxyadjjep_501 ;
 wire	ycy8aql6d7nacutlo9ty1xh_704 ;
 wire [8:0] y24oc7b8j5w6755474ej_138 ;
 wire	coa9es2lzzyezua0nmjbkkxm4f6_233 ;
 wire	ekygsegst425ibvu8n4dabx3o0bty_89 ;
 wire	f1viw336tjotx7k3eye56ks8ir7tuqj_645 ;
 wire	v8f28jzez3yvf86x9r2gyco9s_517 ;
 wire	qidg1zlydu9qczdqhaz_605 ;
 wire	qkmyhlqwlwizt0ta8nt5ouhisz2q2go_334 ;
 wire	f48hpx4udyvim78vivbvski_875 ;
 wire [15:0] k4w141d600hd0yfo_858 ;
 wire	iaec71ou2117vnaz2ien278t_360 ;
 wire [15:0] qolqesyk1nygkqq2cuahcn2gcdy4tp_737 ;
 wire	f7wytbjupcvlglztjhz_559 ;
 wire	ofd8aza69bv4d229t_3 ;
 wire	jr684ijctjih57dpp8e6svi599vcn5_131 ;
 wire [127:0] dafo823di0cndpapd_727 ;
 wire	o9me316lpas6cqtvu66dy_318 ;
 wire [127:0] btb4p7jrkohl19zwd6_143 ;
 wire	aighkey5vne8f85bphxrljy64uslaj_729 ;
 wire	sq1xi9ibd0oxho22a7tiadjhcnvn_451 ;
 wire	k5w8irxw1140p4gvpwkdr2p2r0c_416 ;
 wire	qchvcrjqcof9b047ebn6l1t_255 ;
 wire	hak0x1l7kq6djv205x4o138vqrm_343 ;


 assign kcijxdt7p3ftl4u0_218 = 
	 ~(backpressure_in) ;
 assign myt5uzxgb3pyfjxukdkzn38g6xpyk_378 = 
	{packet_in_PACKET1_TVALID, packet_in_PACKET1_TDATA, packet_in_PACKET1_TKEEP, packet_in_PACKET1_TLAST} ;
 assign yo87e2d8eqouehlb7rbk08rs_220 	= packet_in_PACKET1_TVALID ;
 assign przdau8r9svp2ikmqjsyqut9po5iqg_431 	= myt5uzxgb3pyfjxukdkzn38g6xpyk_378[73:0] ;
 assign v8nr9d6ohrnwpn4ys_623 = 
	v8f28jzez3yvf86x9r2gyco9s_517 | qchvcrjqcof9b047ebn6l1t_255 ;
 assign oqr9lucnji1thtrc3qm9d4wfk6dhv_806 = 
	1'b0 ;
 assign jnfixh11vklyju153v7txvfhds9k1tn_267 = 
	1'b1 ;
 assign aa6vcum56qkvtvw7psf3n6v9luhoq_508 = 
	 ~(mlcxc7ord8k05mbjx0pu55dqgh7yn_686) ;
 assign io6a55zamfpdcm309j9sj_421 = 
	qkmyhlqwlwizt0ta8nt5ouhisz2q2go_334 & v8nr9d6ohrnwpn4ys_623 & w77mhoghc12idl8c_377 ;
 assign cu0nzppmq8nlui7f_586 = 
	aa6vcum56qkvtvw7psf3n6v9luhoq_508 & v7374xn8hfloa35tum59j2co_718 & w77mhoghc12idl8c_377 & v8f28jzez3yvf86x9r2gyco9s_517 & qkmyhlqwlwizt0ta8nt5ouhisz2q2go_334 ;
 assign retzdc0a40v4scjprt_608 = 
	io6a55zamfpdcm309j9sj_421 | cu0nzppmq8nlui7f_586 ;
 assign kim45eyn3ln1ujibe94dh_761 = 
	kcijxdt7p3ftl4u0_218 & retzdc0a40v4scjprt_608 ;
 assign qbcfwobp17bigxfr29fi4u6_355 = 
	backpressure_in & gf52op4xlif4ks1u7xi75fpnjiu_667 & qkmyhlqwlwizt0ta8nt5ouhisz2q2go_334 & f1viw336tjotx7k3eye56ks8ir7tuqj_645 & qchvcrjqcof9b047ebn6l1t_255 & aa6vcum56qkvtvw7psf3n6v9luhoq_508 ;
 assign oujsu72qcp830pf7mpnk54b_387 = 
	kim45eyn3ln1ujibe94dh_761 | qbcfwobp17bigxfr29fi4u6_355 ;
 assign id6oxxad9ynad2se6q11ibdmuilz_423 	= oujsu72qcp830pf7mpnk54b_387 ;
 assign cn75avosvoxwn0uullm6bmc81ju_212 = 
	1'b0 ;
 assign w77mhoghc12idl8c_377 = 
	 ~(ytrqzpr7kwqzru0n71qsd_633) ;
 assign wg4t5385t9qytqk0tv6jdfmcyejwa3_878 	= b3xxwky4abpksu3evjcap7r03_608[0] ;
 assign djlchdh23ghnyb4jsimf74pi_547 	= b3xxwky4abpksu3evjcap7r03_608[8:1] ;
 assign jnt4x10tb64tdrw716zzb5_336 	= b3xxwky4abpksu3evjcap7r03_608[72:9] ;
 assign l2sb3ynigdlp734dtg01ib7c12cb_78 	= b3xxwky4abpksu3evjcap7r03_608[73] ;
 assign zfc5s4cnh3zv91uzxpp_244 = 
	gf52op4xlif4ks1u7xi75fpnjiu_667 | anqudwc6oww6k3pomfbehvmxnqvxxk_551 ;
 assign jztda46huu9sn3e9xfw43_850 = 
	b8r3eaxnc6i5edc0xun_67 | w77mhoghc12idl8c_377 ;
 assign i67kj99n3gqsqnx7e9e6cq5p3_81 = 
	jztda46huu9sn3e9xfw43_850 & qkmyhlqwlwizt0ta8nt5ouhisz2q2go_334 & v8nr9d6ohrnwpn4ys_623 ;
 assign r2y3ux5s1ugno1jdddi_490 = 
	i67kj99n3gqsqnx7e9e6cq5p3_81 | v7374xn8hfloa35tum59j2co_718 ;
 assign o3878dl5m4rhe5g1niuauiirnkaosz_572 = 
	backpressure_in & l2sb3ynigdlp734dtg01ib7c12cb_78 & r2y3ux5s1ugno1jdddi_490 ;
 assign q3hj067b0xsjdk2qofzao_159 = 
	f1viw336tjotx7k3eye56ks8ir7tuqj_645 & uqpakmk57v09t0d2v8s8_853 ;
 assign gpum1441cesn7hdwtj_826 = 
	q3hj067b0xsjdk2qofzao_159 | v8f28jzez3yvf86x9r2gyco9s_517 | wg4t5385t9qytqk0tv6jdfmcyejwa3_878 ;
 assign pl2cr60os5q2kwbe_422 = 
	kcijxdt7p3ftl4u0_218 & v7374xn8hfloa35tum59j2co_718 & l2sb3ynigdlp734dtg01ib7c12cb_78 & gpum1441cesn7hdwtj_826 ;
 assign y545lh8ycxtsvyxb_314 	= v7374xn8hfloa35tum59j2co_718 ;
 assign irrilnspdqosrh9sx9v_738 	= packet_in_PACKET1_TVALID ;
 assign zrub0kvx6uq5fr7ykwtg5_704 = 
	1'b0 ;
 assign wasrsve4ox2rds2g7jp5l_826 = 
	1'b1 ;
 assign kcbl9i7z3k6xkj628zwaonpe5lxb3z_556 = (
	((fvhqnkjr6bt5kxtr983umwxml0ubwil8_220 == 1'b1) && (packet_in_PACKET1_TVALID == 1'b1))?1'b1:
	((pv53et24q02o063ywg14wr2lepkkdcx_305 == 1'b1) && (packet_in_PACKET1_TVALID == 1'b1))?1'b1:
	0)  ;
 assign ipvnlu709ovliwjtuoer3k8_78 = (
	((packet_in_PACKET1_TVALID == 1'b1) && (packet_in_PACKET1_TLAST == 1'b1))?1'b1:
	0)  ;
 assign p32d4k84beqpw5wco550u_120 = (
	((packet_in_PACKET1_TVALID == 1'b1) && (packet_in_PACKET1_TLAST == 1'b0))?1'b1:
	0)  ;
 assign q4r603df9pjvrode1ib3_685 = kcbl9i7z3k6xkj628zwaonpe5lxb3z_556 ;
 assign r3ixyqhxkxxyadjjep_501 	= oujsu72qcp830pf7mpnk54b_387 ;
 assign ycy8aql6d7nacutlo9ty1xh_704 = 
	1'b0 ;
 assign y24oc7b8j5w6755474ej_138 	= orxz6goj77pmzfdpekas1z2gu5f_503[8:0] ;
 assign coa9es2lzzyezua0nmjbkkxm4f6_233 = (
	((y24oc7b8j5w6755474ej_138 != iosnhuj50ps2m6ae8e813_31))?1'b1:
	0)  ;
 assign ekygsegst425ibvu8n4dabx3o0bty_89 = ed96g7jemtkumaqer_782 ;
 assign f1viw336tjotx7k3eye56ks8ir7tuqj_645 = ed96g7jemtkumaqer_782 ;
 assign v8f28jzez3yvf86x9r2gyco9s_517 = 
	 ~(f1viw336tjotx7k3eye56ks8ir7tuqj_645) ;
 assign qidg1zlydu9qczdqhaz_605 	= sr3krmee589mvdndfai8a25i7krq_22 ;
 assign qkmyhlqwlwizt0ta8nt5ouhisz2q2go_334 = 
	 ~(sr3krmee589mvdndfai8a25i7krq_22) ;
 assign f48hpx4udyvim78vivbvski_875 = 
	qchvcrjqcof9b047ebn6l1t_255 & qkmyhlqwlwizt0ta8nt5ouhisz2q2go_334 & ekygsegst425ibvu8n4dabx3o0bty_89 & oujsu72qcp830pf7mpnk54b_387 ;
 assign k4w141d600hd0yfo_858 = 
	tuple_in_TUPLE0_DATA ;
 assign iaec71ou2117vnaz2ien278t_360 	= tuple_in_TUPLE0_VALID ;
 assign qolqesyk1nygkqq2cuahcn2gcdy4tp_737 	= k4w141d600hd0yfo_858[15:0] ;
 assign f7wytbjupcvlglztjhz_559 = 
	 ~(o6zsjdmo29lt40xd5u0esnn4t5nhe_643) ;
 assign ofd8aza69bv4d229t_3 	= f48hpx4udyvim78vivbvski_875 ;
 assign jr684ijctjih57dpp8e6svi599vcn5_131 = 
	1'b0 ;
 assign dafo823di0cndpapd_727 = 
	tuple_in_TUPLE2_DATA ;
 assign o9me316lpas6cqtvu66dy_318 	= tuple_in_TUPLE2_VALID ;
 assign btb4p7jrkohl19zwd6_143 	= dafo823di0cndpapd_727[127:0] ;
 assign aighkey5vne8f85bphxrljy64uslaj_729 = 
	 ~(n6ft6bxpyrowl15ird_359) ;
 assign sq1xi9ibd0oxho22a7tiadjhcnvn_451 	= f48hpx4udyvim78vivbvski_875 ;
 assign k5w8irxw1140p4gvpwkdr2p2r0c_416 = 
	1'b0 ;
 assign qchvcrjqcof9b047ebn6l1t_255 = 
	w77mhoghc12idl8c_377 & f7wytbjupcvlglztjhz_559 & aighkey5vne8f85bphxrljy64uslaj_729 ;
 assign hak0x1l7kq6djv205x4o138vqrm_343 = 
	dbcysju99p2zoay9y171o7i1ok71_736 | dfh5mdcn7dd78ls441_461 | vbszdhvi1c5w3s6ruanohi_499 ;
 assign packet_out_PACKET1_TVALID 	= y545lh8ycxtsvyxb_314 ;
 assign packet_out_PACKET1_TDATA 	= jnt4x10tb64tdrw716zzb5_336[63:0] ;
 assign packet_out_PACKET1_TKEEP 	= djlchdh23ghnyb4jsimf74pi_547[7:0] ;
 assign packet_out_PACKET1_TLAST 	= wg4t5385t9qytqk0tv6jdfmcyejwa3_878 ;
 assign packet_in_PACKET1_TREADY 	= packet_out_PACKET1_TREADY ;
 assign tuple_out_TUPLE0_VALID 	= uqpakmk57v09t0d2v8s8_853 ;
 assign tuple_out_TUPLE0_DATA 	= ilvqbctuu74ah9gwdl6z9fhrc05r8ugf_664[15:0] ;
 assign tuple_out_TUPLE2_VALID 	= uqpakmk57v09t0d2v8s8_853 ;
 assign tuple_out_TUPLE2_DATA 	= xcnv20rzmme3mpuaq23io106rdm9_555[127:0] ;


assign alfbnp2y3vdkz52e9mvd482wl0_826 = (
	((oujsu72qcp830pf7mpnk54b_387 == 1'b1))?jnfixh11vklyju153v7txvfhds9k1tn_267 :
	((kcijxdt7p3ftl4u0_218 == 1'b1))?oqr9lucnji1thtrc3qm9d4wfk6dhv_806 :
	v7374xn8hfloa35tum59j2co_718 ) ;

assign mlcxc7ord8k05mbjx0pu55dqgh7yn_686 = (
	((v7374xn8hfloa35tum59j2co_718 == 1'b1) && (kcijxdt7p3ftl4u0_218 == 1'b1))?oqr9lucnji1thtrc3qm9d4wfk6dhv_806 :
	v7374xn8hfloa35tum59j2co_718 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	gf52op4xlif4ks1u7xi75fpnjiu_667 <= 1'b0 ;
	v7374xn8hfloa35tum59j2co_718 <= 1'b0 ;
	b8r3eaxnc6i5edc0xun_67 <= 1'b0 ;
	anqudwc6oww6k3pomfbehvmxnqvxxk_551 <= 1'b0 ;
	iosnhuj50ps2m6ae8e813_31 <= 9'b000000000 ;
	dbcysju99p2zoay9y171o7i1ok71_736 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		gf52op4xlif4ks1u7xi75fpnjiu_667 <= backpressure_in ;
		v7374xn8hfloa35tum59j2co_718 <= alfbnp2y3vdkz52e9mvd482wl0_826 ;
		b8r3eaxnc6i5edc0xun_67 <= w77mhoghc12idl8c_377 ;
		anqudwc6oww6k3pomfbehvmxnqvxxk_551 <= oujsu72qcp830pf7mpnk54b_387 ;
		iosnhuj50ps2m6ae8e813_31 <= y24oc7b8j5w6755474ej_138 ;
		dbcysju99p2zoay9y171o7i1ok71_736 <= xyclle6hg27gnz31xtv6vt1_443 ;
		backpressure_out <= hak0x1l7kq6djv205x4o138vqrm_343 ;
  end
end

always @(posedge clk_in_0)
begin
  if (rst_in_0) 
  begin
	fvhqnkjr6bt5kxtr983umwxml0ubwil8_220 <= 1'b0 ;
	pv53et24q02o063ywg14wr2lepkkdcx_305 <= 1'b1 ;
   end
  else
  begin
	if (p32d4k84beqpw5wco550u_120) 
	begin 
	  fvhqnkjr6bt5kxtr983umwxml0ubwil8_220 <= 1'b0 ;
	 end 
	else 
	begin 
		if (ipvnlu709ovliwjtuoer3k8_78) 
		begin 
			fvhqnkjr6bt5kxtr983umwxml0ubwil8_220 <= wasrsve4ox2rds2g7jp5l_826 ;
		end 
	end 
	if (kcbl9i7z3k6xkj628zwaonpe5lxb3z_556) 
	begin 
		pv53et24q02o063ywg14wr2lepkkdcx_305 <= zrub0kvx6uq5fr7ykwtg5_704 ;
	end 
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	uqpakmk57v09t0d2v8s8_853 <= 1'b0 ;
	dfh5mdcn7dd78ls441_461 <= 1'b0 ;
   end
  else
  begin
		uqpakmk57v09t0d2v8s8_853 <= f48hpx4udyvim78vivbvski_875 ;
		dfh5mdcn7dd78ls441_461 <= rpf39nvxdazjg57wzxg3ea_33 ;
  end
end

always @(posedge clk_out_2)
begin
  if (rst_in_0) 
  begin
	vbszdhvi1c5w3s6ruanohi_499 <= 1'b0 ;
   end
  else
  begin
		vbszdhvi1c5w3s6ruanohi_499 <= z4bgxp2kdgocdxtvt_511 ;
  end
end

defparam dvajjec5y94tjpjm6u7uil_2140.WRITE_DATA_WIDTH = 74; 
defparam dvajjec5y94tjpjm6u7uil_2140.FIFO_WRITE_DEPTH = 512; 
defparam dvajjec5y94tjpjm6u7uil_2140.PROG_FULL_THRESH = 362; 
defparam dvajjec5y94tjpjm6u7uil_2140.PROG_EMPTY_THRESH = 362; 
defparam dvajjec5y94tjpjm6u7uil_2140.READ_MODE = "STD"; 
defparam dvajjec5y94tjpjm6u7uil_2140.WR_DATA_COUNT_WIDTH = 9; 
defparam dvajjec5y94tjpjm6u7uil_2140.RD_DATA_COUNT_WIDTH = 9; 
defparam dvajjec5y94tjpjm6u7uil_2140.DOUT_RESET_VALUE = "0"; 
defparam dvajjec5y94tjpjm6u7uil_2140.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync dvajjec5y94tjpjm6u7uil_2140 (
	.wr_en(yo87e2d8eqouehlb7rbk08rs_220),
	.din(przdau8r9svp2ikmqjsyqut9po5iqg_431),
	.rd_en(id6oxxad9ynad2se6q11ibdmuilz_423),
	.sleep(cn75avosvoxwn0uullm6bmc81ju_212),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(t7dtxju0kdzzc0ynfxdgndangie0a7_663), 
	.dout(b3xxwky4abpksu3evjcap7r03_608), 
	.empty(ytrqzpr7kwqzru0n71qsd_633), 
	.prog_full(xyclle6hg27gnz31xtv6vt1_443), 
	.full(uz3rxfkwb5qtddgosc57vm73pxid8g_475), 
	.rd_data_count(di28bn79yp4shj80t6xcm64lg6_120), 
	.wr_data_count(bthk6zb13msf6r5ct_22), 
	.wr_rst_busy(klqnms2w3v43rcyg0s267seuahcug_62), 
	.rd_rst_busy(zy4z5wrnighfxpr9dts3etswh6d_472), 
	.overflow(d0qtmp23a6fo0twfzrdd4rl6q_152), 
	.underflow(ohh74e6a6u83jk0a7crym_509), 
	.sbiterr(kddkgm0wnzlid19mx8dcwwirjzxr1965_839), 
	.dbiterr(pzzikoc270t1lzsrp252eskwadb6ipr_193), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam xuyen88v65xupya2a61cygjr_1063.WRITE_DATA_WIDTH = 1; 
defparam xuyen88v65xupya2a61cygjr_1063.FIFO_WRITE_DEPTH = 512; 
defparam xuyen88v65xupya2a61cygjr_1063.PROG_FULL_THRESH = 362; 
defparam xuyen88v65xupya2a61cygjr_1063.PROG_EMPTY_THRESH = 362; 
defparam xuyen88v65xupya2a61cygjr_1063.READ_MODE = "FWFT"; 
defparam xuyen88v65xupya2a61cygjr_1063.WR_DATA_COUNT_WIDTH = 9; 
defparam xuyen88v65xupya2a61cygjr_1063.RD_DATA_COUNT_WIDTH = 9; 
defparam xuyen88v65xupya2a61cygjr_1063.DOUT_RESET_VALUE = "0"; 
defparam xuyen88v65xupya2a61cygjr_1063.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync xuyen88v65xupya2a61cygjr_1063 (
	.wr_en(irrilnspdqosrh9sx9v_738),
	.din(q4r603df9pjvrode1ib3_685),
	.rd_en(r3ixyqhxkxxyadjjep_501),
	.sleep(ycy8aql6d7nacutlo9ty1xh_704),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(if263u3kw38fqna5wr_456), 
	.dout(ed96g7jemtkumaqer_782), 
	.empty(sr3krmee589mvdndfai8a25i7krq_22), 
	.prog_full(tpxzf1l265oq2gcrh6_721), 
	.full(nkj16alena6jqurr0b0_309), 
	.rd_data_count(orxz6goj77pmzfdpekas1z2gu5f_503), 
	.wr_data_count(dl4l11aei009o2vw5_30), 
	.wr_rst_busy(mu8wt153xi3ksreb2vzqq6_408), 
	.rd_rst_busy(yy5xcxiabg7b4kaoo3ytv7ih_773), 
	.overflow(qxgf47opm4v0j92k_157), 
	.underflow(i1k9umucw860k2odtu_71), 
	.sbiterr(jjkh0cbf4ifwypo1bmf8jdm6_221), 
	.dbiterr(od74t882zhwxnp45kq_531), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.WRITE_DATA_WIDTH = 16; 
defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.FIFO_WRITE_DEPTH = 128; 
defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.PROG_FULL_THRESH = 33; 
defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.PROG_EMPTY_THRESH = 33; 
defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.READ_MODE = "STD"; 
defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.WR_DATA_COUNT_WIDTH = 7; 
defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.RD_DATA_COUNT_WIDTH = 7; 
defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.DOUT_RESET_VALUE = "0"; 
defparam cjmonajxjtpas4zmjs862abl59fh6p_1515.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_async cjmonajxjtpas4zmjs862abl59fh6p_1515 (
	.wr_en(iaec71ou2117vnaz2ien278t_360),
	.din(qolqesyk1nygkqq2cuahcn2gcdy4tp_737),
	.rd_en(ofd8aza69bv4d229t_3),
	.sleep(jr684ijctjih57dpp8e6svi599vcn5_131),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(kki5c7iup4z2yq1dgdx0byim6kg_559), 
	.dout(ilvqbctuu74ah9gwdl6z9fhrc05r8ugf_664), 
	.empty(o6zsjdmo29lt40xd5u0esnn4t5nhe_643), 
	.prog_full(rpf39nvxdazjg57wzxg3ea_33), 
	.full(dzlynnvneuexxl9j8rq75u6rcoe3bh_177), 
	.rd_data_count(bo790dlzp6onkrkuuzs42terbv_782), 
	.wr_data_count(mhj24nuecym7sddptt_649), 
	.wr_rst_busy(m76hsji4gwpti8x59dlgwa_709), 
	.rd_rst_busy(zluiy7o7rhahdzj81kn865x_895), 
	.overflow(uq8ohv2287t90d9kq8dm_607), 
	.underflow(jxuz54w73wl98bbgk11m1rgiufl3_766), 
	.sbiterr(gplrmw7rxbm6ey076o1lkoqhakf1iu_17), 
	.dbiterr(eodwas1vf3dm7l4d39xmklhml_601), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

defparam k3gmwww8lqwwskm1_2044.WRITE_DATA_WIDTH = 128; 
defparam k3gmwww8lqwwskm1_2044.FIFO_WRITE_DEPTH = 256; 
defparam k3gmwww8lqwwskm1_2044.PROG_FULL_THRESH = 129; 
defparam k3gmwww8lqwwskm1_2044.PROG_EMPTY_THRESH = 129; 
defparam k3gmwww8lqwwskm1_2044.READ_MODE = "STD"; 
defparam k3gmwww8lqwwskm1_2044.WR_DATA_COUNT_WIDTH = 8; 
defparam k3gmwww8lqwwskm1_2044.RD_DATA_COUNT_WIDTH = 8; 
defparam k3gmwww8lqwwskm1_2044.DOUT_RESET_VALUE = "0"; 
defparam k3gmwww8lqwwskm1_2044.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async k3gmwww8lqwwskm1_2044 (
	.wr_en(o9me316lpas6cqtvu66dy_318),
	.din(btb4p7jrkohl19zwd6_143),
	.rd_en(sq1xi9ibd0oxho22a7tiadjhcnvn_451),
	.sleep(k5w8irxw1140p4gvpwkdr2p2r0c_416),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(ixafsze1t3p2vtjl24yt15ttflptjf5k_374), 
	.dout(xcnv20rzmme3mpuaq23io106rdm9_555), 
	.empty(n6ft6bxpyrowl15ird_359), 
	.prog_full(z4bgxp2kdgocdxtvt_511), 
	.full(tal2whuuf6e9ps9pcv0vkxqobv_348), 
	.rd_data_count(mzmp5qschoit09y854z7xy6jf496_143), 
	.wr_data_count(ocj4n6pa7xfqb4178ilcosp35bt6sd_387), 
	.wr_rst_busy(tlz3oxh2dox3cuqh_0), 
	.rd_rst_busy(pzhtvv7wyy1271c5pa9rkwzzyvilrml_247), 
	.overflow(yof21bpwsobup6zm0c3fs7samyyorcb_387), 
	.underflow(co4xb83znizeex7ae8prabkh9_34), 
	.sbiterr(wb86k7nwsb2yjzhfwrx4_315), 
	.dbiterr(l6p9rpwlijw8mjirqpazlv8vvko_884), 

	.wr_clk(clk_in_2), 

	.rd_clk(clk_out_2), 
	.rst(rst_in_2) 
); 

endmodule 
