`timescale 1 ps / 1 ps

module onetswitch_top(
   inout [14:0]         DDR_addr,
   inout [2:0]          DDR_ba,
   inout                DDR_cas_n,
   inout                DDR_ck_n,
   inout                DDR_ck_p,
   inout                DDR_cke,
   inout                DDR_cs_n,
   inout [3:0]          DDR_dm,
   inout [31:0]         DDR_dq,
   inout [3:0]          DDR_dqs_n,
   inout [3:0]          DDR_dqs_p,
   inout                DDR_odt,
   inout                DDR_ras_n,
   inout                DDR_reset_n,
   inout                DDR_we_n,
   inout                FIXED_IO_ddr_vrn,
   inout                FIXED_IO_ddr_vrp,
   inout [53:0]         FIXED_IO_mio,
   inout                FIXED_IO_ps_clk,
   inout                FIXED_IO_ps_porb,
   inout                FIXED_IO_ps_srstb,

   input                rgmii_0_rxc    ,
   output               rgmii_0_txc    ,
   output               rgmii_0_tx_en  ,
   output [3:0]         rgmii_0_txd    ,
   input                rgmii_0_rx_dv  ,
   input [3:0]          rgmii_0_rxd    ,
   input                rgmii_1_rxc    ,
   output               rgmii_1_txc    ,
   output               rgmii_1_tx_en  ,
   output [3:0]         rgmii_1_txd    ,
   input                rgmii_1_rx_dv  ,
   input [3:0]          rgmii_1_rxd    ,
   input                rgmii_2_rxc    ,
   output               rgmii_2_txc    ,
   output               rgmii_2_tx_en  ,
   output [3:0]         rgmii_2_txd    ,
   input                rgmii_2_rx_dv  ,
   input [3:0]          rgmii_2_rxd    ,
   input                rgmii_3_rxc    ,
   output               rgmii_3_txc    ,
   output               rgmii_3_tx_en  ,
   output [3:0]         rgmii_3_txd    ,
   input                rgmii_3_rx_dv  ,
   input [3:0]          rgmii_3_rxd    ,
   inout                rgmii_0_mdio   ,
   output               rgmii_0_mdc    ,
   inout                rgmii_1_mdio   ,
   output               rgmii_1_mdc    ,
   inout                rgmii_2_mdio   ,
   output               rgmii_2_mdc    ,
   inout                rgmii_3_mdio   ,
   output               rgmii_3_mdc    ,
   input                rgmii_phy_int  ,
   output               rgmii_phy_rstn ,
   input                sfp_0_rxn,
   input                sfp_0_rxp,
   output               sfp_0_txn,
   output               sfp_0_txp,
   input                sfp_1_rxn,
   input                sfp_1_rxp,
   output               sfp_1_txn,
   output               sfp_1_txp,
   input                sfp_2_rxn,
   input                sfp_2_rxp,
   output               sfp_2_txn,
   output               sfp_2_txp,
   input                sfp_3_rxn,
   input                sfp_3_rxp,
   output               sfp_3_txn,
   output               sfp_3_txp,
   input                sfp_refclk_clk_n,
   input                sfp_refclk_clk_p,
   output [1:0]         pl_led      ,
   output [1:0]         pl_pmod
);

   wire bd_fclk0_125m ;
   wire bd_fclk1_75m  ;
   wire bd_fclk2_200m ;

   reg [23:0] cnt_0;
   reg [23:0] cnt_1;
   reg [23:0] cnt_2;
   reg [23:0] cnt_3;

   always @(posedge bd_fclk0_125m) begin
     cnt_0 <= cnt_0 + 1'b1;
   end
   always @(posedge bd_fclk1_75m) begin
     cnt_1 <= cnt_1 + 1'b1;
   end
   always @(posedge bd_fclk2_200m) begin
     cnt_2 <= cnt_2 + 1'b1;
   end
   always @(posedge bd_fclk2_200m) begin
     cnt_3 <= cnt_3 + 1'b1;
   end

   assign pl_led[0]  = cnt_0[23];
   assign pl_led[1]  = cnt_1[23];
   assign pl_pmod[0] = cnt_2[23];
   assign pl_pmod[1] = cnt_3[23];

onets_bd_wrapper i_onets_bd_wrapper(
   .DDR_addr            (DDR_addr),
   .DDR_ba              (DDR_ba),
   .DDR_cas_n           (DDR_cas_n),
   .DDR_ck_n            (DDR_ck_n),
   .DDR_ck_p            (DDR_ck_p),
   .DDR_cke             (DDR_cke),
   .DDR_cs_n            (DDR_cs_n),
   .DDR_dm              (DDR_dm),
   .DDR_dq              (DDR_dq),
   .DDR_dqs_n           (DDR_dqs_n),
   .DDR_dqs_p           (DDR_dqs_p),
   .DDR_odt             (DDR_odt),
   .DDR_ras_n           (DDR_ras_n),
   .DDR_reset_n         (DDR_reset_n),
   .DDR_we_n            (DDR_we_n),
   
   .FIXED_IO_ddr_vrn    (FIXED_IO_ddr_vrn),
   .FIXED_IO_ddr_vrp    (FIXED_IO_ddr_vrp),
   .FIXED_IO_mio        (FIXED_IO_mio),
   .FIXED_IO_ps_clk     (FIXED_IO_ps_clk),
   .FIXED_IO_ps_porb    (FIXED_IO_ps_porb),
   .FIXED_IO_ps_srstb   (FIXED_IO_ps_srstb),
   
   .bd_fclk0_125m       ( bd_fclk0_125m   ),
   .bd_fclk1_75m        ( bd_fclk1_75m    ),
   .bd_fclk2_200m       ( bd_fclk2_200m   ),
   
   .mdio_0_mdio_io      ( rgmii_0_mdio    ),
   .mdio_0_mdc          ( rgmii_0_mdc     ),
   .mdio_1_mdio_io      ( rgmii_1_mdio    ),
   .mdio_1_mdc          ( rgmii_1_mdc     ),
   .mdio_2_mdio_io      ( rgmii_2_mdio    ),
   .mdio_2_mdc          ( rgmii_2_mdc     ),
   .mdio_3_mdio_io      ( rgmii_3_mdio    ),
   .mdio_3_mdc          ( rgmii_3_mdc     ),
   .phy_rst_n_0         ( rgmii_phy_rstn  ),
   .phy_rst_n_1         ( ),
   .phy_rst_n_2         ( ),
   .phy_rst_n_3         ( ),
   .rgmii_0_rd          ( rgmii_0_rxd     ),
   .rgmii_0_rx_ctl      ( rgmii_0_rx_dv   ),
   .rgmii_0_rxc         ( rgmii_0_rxc     ),
   .rgmii_0_td          ( rgmii_0_txd     ),
   .rgmii_0_tx_ctl      ( rgmii_0_tx_en   ),
   .rgmii_0_txc         ( rgmii_0_txc     ),
   .rgmii_1_rd          ( rgmii_1_rxd     ),
   .rgmii_1_rx_ctl      ( rgmii_1_rx_dv   ),
   .rgmii_1_rxc         ( rgmii_1_rxc     ),
   .rgmii_1_td          ( rgmii_1_txd     ),
   .rgmii_1_tx_ctl      ( rgmii_1_tx_en   ),
   .rgmii_1_txc         ( rgmii_1_txc     ),
   .sfp_0_rxn           (sfp_0_rxn),
   .sfp_0_rxp           (sfp_0_rxp),
   .sfp_0_txn           (sfp_0_txn),
   .sfp_0_txp           (sfp_0_txp),
   .sfp_1_rxn           (sfp_1_rxn),
   .sfp_1_rxp           (sfp_1_rxp),
   .sfp_1_txn           (sfp_1_txn),
   .sfp_1_txp           (sfp_1_txp),
   .sfp_2_rxn           (sfp_2_rxn),
   .sfp_2_rxp           (sfp_2_rxp),
   .sfp_2_txn           (sfp_2_txn),
   .sfp_2_txp           (sfp_2_txp),
   .sfp_3_rxn           (sfp_3_rxn),
   .sfp_3_rxp           (sfp_3_rxp),
   .sfp_3_txn           (sfp_3_txn),
   .sfp_3_txp           (sfp_3_txp),
   .sfp_refclk_clk_n    (sfp_refclk_clk_n),
   .sfp_refclk_clk_p    (sfp_refclk_clk_p),
   .rgmii_2_rd          ( rgmii_2_rxd     ),
   .rgmii_2_rx_ctl      ( rgmii_2_rx_dv   ),
   .rgmii_2_rxc         ( rgmii_2_rxc     ),
   .rgmii_2_td          ( rgmii_2_txd     ),
   .rgmii_2_tx_ctl      ( rgmii_2_tx_en   ),
   .rgmii_2_txc         ( rgmii_2_txc     ),
   .rgmii_3_rd          ( rgmii_3_rxd     ),
   .rgmii_3_rx_ctl      ( rgmii_3_rx_dv   ),
   .rgmii_3_rxc         ( rgmii_3_rxc     ),
   .rgmii_3_td          ( rgmii_3_txd     ),
   .rgmii_3_tx_ctl      ( rgmii_3_tx_en   ),
   .rgmii_3_txc         ( rgmii_3_txc     )
);

endmodule
