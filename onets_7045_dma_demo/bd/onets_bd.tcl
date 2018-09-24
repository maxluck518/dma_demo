create_bd_design "onets_bd"

# Create interface ports
set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
set ext_reset_in [ create_bd_port -dir I ext_reset_in ]
set rxp_0 [ create_bd_port -dir I rxp_0 ]
set rxp_1 [ create_bd_port -dir I rxp_1 ]
set txp_0 [ create_bd_port -dir O txp_0 ]
set txp_1 [ create_bd_port -dir O txp_1 ]
set rxn_0 [ create_bd_port -dir I rxn_0 ]
set rxn_1 [ create_bd_port -dir I rxn_1 ]
set txn_0 [ create_bd_port -dir O txn_0 ]
set txn_1 [ create_bd_port -dir O txn_1 ]
set refclk_p [ create_bd_port -dir I refclk_p ]
set refclk_n [ create_bd_port -dir I refclk_n ]

set core_status_0 [ create_bd_port -dir O -from 7 -to 0 core_status_0 ]
set core_status_1 [ create_bd_port -dir O -from 7 -to 0 core_status_1 ]

# Create ports
set bd_fclk0_125m [ create_bd_port -dir O -type clk bd_fclk0_125m ]
set bd_fclk1_75m [ create_bd_port -dir O -type clk bd_fclk1_75m ]
set bd_fclk2_200m [ create_bd_port -dir O -type clk bd_fclk2_200m ]

# zynq
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {125} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {76.923080} CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_EN_CLK2_PORT {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_IRQ_F2P_INTR {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1}] [get_bd_cells processing_system7_0]

# 10g ethernet subsystem
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_10g_ethernet:3.1 axi_10g_ethernet_0
set_property -dict [list CONFIG.SupportLevel {1}] [get_bd_cells axi_10g_ethernet_0]
make_bd_intf_pins_external  [get_bd_intf_pins axi_10g_ethernet_0/rx_statistics]
make_bd_intf_pins_external  [get_bd_intf_pins axi_10g_ethernet_0/tx_statistics]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_10g_ethernet:3.1 axi_10g_ethernet_1
make_bd_intf_pins_external  [get_bd_intf_pins axi_10g_ethernet_1/rx_statistics]
make_bd_intf_pins_external  [get_bd_intf_pins axi_10g_ethernet_1/tx_statistics]
make_bd_intf_pins_external  [get_bd_intf_pins axi_10g_ethernet_3/tx_statistics]

# rst_ps7_0_156M
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_156M

# rst_ps7_0_75M
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_75M

# axi_ic_hp
set axi_ic_hp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_hp ]
set_property -dict [ list CONFIG.NUM_MI {1} CONFIG.NUM_SI {3}  ] $axi_ic_hp
# axi_ic_gp
set axi_ic_gp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_gp ]
set_property -dict [ list CONFIG.NUM_MI {10} CONFIG.NUM_SI {1}  ] $axi_ic_gp

# Create instance: axi_dma_0, and set properties
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
set_property -dict [list CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {64} CONFIG.c_mm2s_burst_size {8} CONFIG.c_sg_include_stscntrl_strm {0}] [get_bd_cells axi_dma_0]

# Create instance: xlconcat, and set properties
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
set_property -dict [list CONFIG.NUM_PORTS {12}] [get_bd_cells xlconcat_0]

# Create instance: gnd, and set properties
set gnd [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd]
set_property -dict [list CONFIG.CONST_VAL {0}] [get_bd_cells gnd]

# Create instance: vcc, and set properties
set vcc [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc]
set_property -dict [list CONFIG.CONST_VAL {1}] [get_bd_cells vcc]

set pause_val [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pause_val ]
set_property -dict [list CONFIG.CONST_WIDTH {16} CONFIG.CONST_VAL {0}] [get_bd_cells pause_val]

set tx_ifg_delay [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 tx_ifg_delay ]
set_property -dict [list CONFIG.CONST_WIDTH {8} CONFIG.CONST_VAL {0}] [get_bd_cells tx_ifg_delay]

# Create instance: user_ip, and set properties
set sdnet_top [ create_bd_cell -type ip -vlnv xilinx.com:user:sdnet_top:1.0 sdnet_top ]
set pkt_report [ create_bd_cell -type ip -vlnv xilinx.com:user:report:1.0 pkt_report ]
set dma_eth [ create_bd_cell -type ip -vlnv xilinx.com:user:dma_eth:1.0 dma_eth ]

# Create instance: bram, and set properties
set bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 bram ]
set_property -dict [list CONFIG.Memory_Type {True_Dual_Port_RAM} CONFIG.Enable_32bit_Address {true} CONFIG.Use_Byte_Write_Enable {true} CONFIG.Byte_Size {8} CONFIG.Enable_B {Use_ENB_Pin} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Use_RSTA_Pin {true} CONFIG.Use_RSTB_Pin {true} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Write_Rate {50} CONFIG.Port_B_Enable_Rate {100} CONFIG.use_bram_block {BRAM_Controller} CONFIG.EN_SAFETY_CKT {true}] [get_bd_cells bram]

# Create instance: axi_bram_controller, and set properties
set axi_bram_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl ]

# 10g ethernet connection
connect_bd_net [ get_bd_ports refclk_p]                        [ get_bd_pins axi_10g_ethernet_0/refclk_p]
connect_bd_net [ get_bd_ports refclk_n]                        [ get_bd_pins axi_10g_ethernet_0/refclk_n]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/s_axi_aresetn] [ get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/s_axi_aclk]    [ get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [ get_bd_pins axi_10g_ethernet_1/s_axi_aresetn] [ get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [ get_bd_pins axi_10g_ethernet_1/s_axi_aclk]    [ get_bd_pins processing_system7_0/FCLK_CLK1]

connect_bd_net [get_bd_ports rxp_0] [get_bd_pins axi_10g_ethernet_0/rxp]
connect_bd_net [get_bd_ports rxn_0] [get_bd_pins axi_10g_ethernet_0/rxn]
connect_bd_net [get_bd_ports rxp_1] [get_bd_pins axi_10g_ethernet_1/rxp]
connect_bd_net [get_bd_ports rxn_1] [get_bd_pins axi_10g_ethernet_1/rxn]
connect_bd_net [get_bd_ports txp_0] [get_bd_pins axi_10g_ethernet_0/txp]
connect_bd_net [get_bd_ports txn_0] [get_bd_pins axi_10g_ethernet_0/txn]
connect_bd_net [get_bd_ports txp_1] [get_bd_pins axi_10g_ethernet_1/txp]
connect_bd_net [get_bd_ports txn_1] [get_bd_pins axi_10g_ethernet_1/txn]

connect_bd_net [get_bd_ports core_status_0] [get_bd_pins axi_10g_ethernet_0/pcspma_status]
connect_bd_net [get_bd_ports core_status_1] [get_bd_pins axi_10g_ethernet_1/pcspma_status]

connect_bd_net [get_bd_ports bd_fclk0_125m] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_ports bd_fclk1_75m] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_ports bd_fclk2_200m] [get_bd_pins processing_system7_0/FCLK_CLK2]

connect_bd_net [get_bd_pins axi_10g_ethernet_0/s_axis_pause_tdata] [get_bd_pins pause_val/dout]
connect_bd_net [get_bd_pins axi_10g_ethernet_1/s_axis_pause_tdata] [get_bd_pins pause_val/dout]
connect_bd_net [get_bd_pins axi_10g_ethernet_0/s_axis_pause_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins axi_10g_ethernet_1/s_axis_pause_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins axi_10g_ethernet_0/tx_ifg_delay] [get_bd_pins tx_ifg_delay/dout] 
connect_bd_net [get_bd_pins axi_10g_ethernet_1/tx_ifg_delay] [get_bd_pins tx_ifg_delay/dout] 

connect_bd_net [get_bd_pins axi_10g_ethernet_0/tx_fault] [get_bd_pins gnd/dout] 
connect_bd_net [get_bd_pins axi_10g_ethernet_1/tx_fault] [get_bd_pins gnd/dout] 
connect_bd_net [get_bd_pins axi_10g_ethernet_0/sim_speedup_control] [get_bd_pins gnd/dout] 
connect_bd_net [get_bd_pins axi_10g_ethernet_1/sim_speedup_control] [get_bd_pins gnd/dout] 

connect_bd_net [get_bd_pins axi_10g_ethernet_0/signal_detect] [get_bd_pins vcc/dout]
connect_bd_net [get_bd_pins axi_10g_ethernet_1/signal_detect] [get_bd_pins vcc/dout]

connect_bd_net [get_bd_pins axi_10g_ethernet_0/dclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_10g_ethernet_1/dclk] [get_bd_pins processing_system7_0/FCLK_CLK0]

connect_bd_net [get_bd_pins axi_10g_ethernet_0/xgmacint] [get_bd_pins xlconcat_0/In0]
connect_bd_net [get_bd_pins axi_10g_ethernet_1/xgmacint] [get_bd_pins xlconcat_0/In1]

connect_bd_net [ get_bd_pins axi_10g_ethernet_0/areset_datapathclk_out] [ get_bd_pins axi_10g_ethernet_1/areset_coreclk]     
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/txusrclk_out] [ get_bd_pins axi_10g_ethernet_1/txusrclk]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/txusrclk2_out] [ get_bd_pins axi_10g_ethernet_1/txusrclk2]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/txuserrdy_out] [ get_bd_pins axi_10g_ethernet_1/txuserrdy]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/coreclk_out] [ get_bd_pins axi_10g_ethernet_1/coreclk]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/gttxreset_out] [ get_bd_pins axi_10g_ethernet_1/gttxreset]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/gtrxreset_out] [ get_bd_pins axi_10g_ethernet_1/gtrxreset]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/qplllock_out] [ get_bd_pins axi_10g_ethernet_1/qplllock]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/qplloutclk_out] [ get_bd_pins axi_10g_ethernet_1/qplloutclk]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/qplloutrefclk_out] [ get_bd_pins axi_10g_ethernet_1/qplloutrefclk]
connect_bd_net [ get_bd_pins axi_10g_ethernet_0/reset_counter_done_out] [ get_bd_pins axi_10g_ethernet_1/reset_counter_done]

# system reset connection
connect_bd_net [get_bd_ports ext_reset_in] [get_bd_pins rst_ps7_0_156M/ext_reset_in]
connect_bd_net [get_bd_ports ext_reset_in] [get_bd_pins rst_ps7_0_75M/ext_reset_in]
connect_bd_net [get_bd_pins rst_ps7_0_156M/mb_debug_sys_rst] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins rst_ps7_0_75M/mb_debug_sys_rst] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins rst_ps7_0_75M/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins rst_ps7_0_156M/slowest_sync_clk] [get_bd_pins axi_10g_ethernet_0/coreclk_out]

connect_bd_net [get_bd_pins rst_ps7_0_156M/aux_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
connect_bd_net [get_bd_pins rst_ps7_0_75M/aux_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]

connect_bd_net [get_bd_pins rst_ps7_0_75M/peripheral_reset] [get_bd_pins axi_10g_ethernet_0/reset]
connect_bd_net [get_bd_pins rst_ps7_0_75M/peripheral_reset] [get_bd_pins axi_10g_ethernet_1/areset]

connect_bd_net [get_bd_pins rst_ps7_0_156M/peripheral_aresetn] [get_bd_pins axi_10g_ethernet_0/rx_axis_aresetn]
connect_bd_net [get_bd_pins rst_ps7_0_156M/peripheral_aresetn] [get_bd_pins axi_10g_ethernet_0/tx_axis_aresetn]
connect_bd_net [get_bd_pins rst_ps7_0_156M/peripheral_aresetn] [get_bd_pins axi_10g_ethernet_1/rx_axis_aresetn]
connect_bd_net [get_bd_pins rst_ps7_0_156M/peripheral_aresetn] [get_bd_pins axi_10g_ethernet_1/tx_axis_aresetn]

connect_bd_net [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_sg_aclk] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_10g_ethernet_0/coreclk_out]

connect_bd_net [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins xlconcat_0/In4]
connect_bd_net [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In5]

# axi_ic_gp connection
connect_bd_net [get_bd_pins axi_ic_gp/ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/S00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M01_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M02_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M03_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M04_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M05_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M06_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M07_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M08_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M09_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]

connect_bd_net [get_bd_pins axi_ic_gp/ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/S00_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M00_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M01_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M02_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M03_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M04_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M05_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M06_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M07_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M08_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M09_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]

connect_bd_intf_net [ get_bd_intf_pins axi_10g_ethernet_0/s_axi] -boundary_type upper          [ get_bd_intf_pins axi_ic_gp/M00_AXI]
connect_bd_intf_net [ get_bd_intf_pins axi_10g_ethernet_1/s_axi] -boundary_type upper          [ get_bd_intf_pins axi_ic_gp/M01_AXI]
connect_bd_intf_net [ get_bd_intf_pins axi_dma_0/S_AXI_LITE] -boundary_type upper              [ get_bd_intf_pins axi_ic_gp/M04_AXI]

# axi_ic_hp connection
connect_bd_net [get_bd_pins axi_ic_hp/ACLK] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_net [get_bd_pins axi_ic_hp/M00_ACLK] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_net [get_bd_pins axi_ic_hp/S00_ACLK] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_net [get_bd_pins axi_ic_hp/S01_ACLK] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_net [get_bd_pins axi_ic_hp/S02_ACLK] [get_bd_pins axi_10g_ethernet_0/coreclk_out]

connect_bd_net [get_bd_pins axi_ic_hp/ARESETN] [get_bd_pins rst_ps7_0_156M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_hp/M00_ARESETN] [get_bd_pins rst_ps7_0_156M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_hp/S00_ARESETN] [get_bd_pins rst_ps7_0_156M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_hp/S01_ARESETN] [get_bd_pins rst_ps7_0_156M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_hp/S02_ARESETN] [get_bd_pins rst_ps7_0_156M/peripheral_aresetn]

connect_bd_intf_net [ get_bd_intf_pins axi_dma_0/M_AXI_SG] -boundary_type upper   [ get_bd_intf_pins axi_ic_hp/S00_AXI]
connect_bd_intf_net [ get_bd_intf_pins axi_dma_0/M_AXI_MM2S] -boundary_type upper [ get_bd_intf_pins axi_ic_hp/S01_AXI]
connect_bd_intf_net [ get_bd_intf_pins axi_dma_0/M_AXI_S2MM] -boundary_type upper [ get_bd_intf_pins axi_ic_hp/S02_AXI]

# zynq connection
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/S_AXI_HP0] -boundary_type upper [get_bd_intf_pins axi_ic_hp/M00_AXI] 
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] -boundary_type upper [get_bd_intf_pins axi_ic_gp/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/FIXED_IO] [get_bd_intf_ports FIXED_IO]
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/DDR] [get_bd_intf_ports DDR]
connect_bd_net [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
connect_bd_net [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins axi_10g_ethernet_0/coreclk_out]

# dma_eth connection
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins dma_eth/s_axis_rxd_1]
connect_bd_intf_net [get_bd_intf_pins axi_10g_ethernet_0/m_axis_rx] [get_bd_intf_pins dma_eth/s_axis_rxd_0]
connect_bd_intf_net [get_bd_intf_pins dma_eth/m_axis_txd_0] [get_bd_intf_pins sdnet_top/s_axis]
connect_bd_net [get_bd_pins dma_eth/s_axis_rxd_aclk] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_net [get_bd_pins dma_eth/s_axis_rxd_aresetn] [get_bd_pins rst_ps7_0_156M/peripheral_aresetn]

# sdnet_top connection
connect_bd_net [get_bd_pins sdnet_top/axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins sdnet_top/axi_resetn] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins sdnet_top/axis_resetn] [get_bd_pins rst_ps7_0_156M/peripheral_aresetn]
connect_bd_net [get_bd_pins sdnet_top/axis_aclk] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_ic_gp/M08_AXI] [get_bd_intf_pins sdnet_top/s_axi]
connect_bd_intf_net [get_bd_intf_pins sdnet_top/m_axis] [get_bd_intf_pins axi_10g_ethernet_1/s_axis_tx]
connect_bd_intf_net [get_bd_intf_pins axi_10g_ethernet_1/m_axis_rx] [get_bd_intf_pins axi_10g_ethernet_0/s_axis_tx]

# pkt_report connection
connect_bd_net [get_bd_pins pkt_report/s_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins pkt_report/s_axi_aresetn] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins pkt_report/axis_aresetn] [get_bd_pins rst_ps7_0_156M/peripheral_aresetn]
connect_bd_net [get_bd_pins pkt_report/axis_clk] [get_bd_pins axi_10g_ethernet_0/coreclk_out]
connect_bd_intf_net [get_bd_intf_pins pkt_report/s_axi] -boundary_type upper [get_bd_intf_pins axi_ic_gp/M09_AXI]
connect_bd_intf_net [get_bd_intf_pins pkt_report/m_axis] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]

# bram connection
connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl/BRAM_PORTA] [get_bd_intf_pins bram/BRAM_PORTA]
connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl/BRAM_PORTB] [get_bd_intf_pins bram/BRAM_PORTB]
connect_bd_net [get_bd_pins axi_bram_ctrl/s_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_bram_ctrl/s_axi_aresetn] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_ic_gp/M07_AXI] [get_bd_intf_pins axi_bram_ctrl/S_AXI]

# Create address segments
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_SG] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM

create_bd_addr_seg -range 0x10000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
create_bd_addr_seg -range 0x40000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_10g_ethernet_0/s_axi/REG0] SEG_eth_buf_REG
create_bd_addr_seg -range 0x10000 -offset 0x43C40000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_10g_ethernet_1/s_axi/REG0] SEG_eth_buf_REG2
create_bd_addr_seg -range 0x10000 -offset 0x44000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs sdnet_top/s_axi/REG0] SEG_eth_buf_REG4
create_bd_addr_seg -range 0x10000 -offset 0x45000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_bram_ctrl/S_AXI/MEM0] SEG_eth_buf_REG6
create_bd_addr_seg -range 0x8000000 -offset 0x48000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pkt_report/s_axi/REG0] SEG_eth_buf_REG8
save_bd_design
