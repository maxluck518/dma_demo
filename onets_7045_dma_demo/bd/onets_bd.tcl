create_bd_design "onets_bd"

# Create interface ports
set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
set ext_reset_in [ create_bd_port -dir I ext_reset_in ]

# Create ports
set bd_fclk0_125m [ create_bd_port -dir O -type clk bd_fclk0_125m ]
set bd_fclk1_75m [ create_bd_port -dir O -type clk bd_fclk1_75m ]
set bd_fclk2_200m [ create_bd_port -dir O -type clk bd_fclk2_200m ]

# zynq
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {125} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {76.923080} CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_EN_CLK2_PORT {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_IRQ_F2P_INTR {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1}] [get_bd_cells processing_system7_0]

# rst_ps7_0_75M
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_75M

# axi_ic_hp
set axi_ic_hp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_hp ]
set_property -dict [ list CONFIG.NUM_MI {1} CONFIG.NUM_SI {3}  ] $axi_ic_hp
# axi_ic_gp
set axi_ic_gp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_gp ]
set_property -dict [ list CONFIG.NUM_MI {1} CONFIG.NUM_SI {1}  ] $axi_ic_gp

# Create instance: axi_dma_0, and set properties
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
set_property -dict [list CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {64} CONFIG.c_mm2s_burst_size {8} CONFIG.c_sg_include_stscntrl_strm {0}] [get_bd_cells axi_dma_0]

# Create instance: xlconcat, and set properties
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
set_property -dict [list CONFIG.NUM_PORTS {2}] [get_bd_cells xlconcat_0]

# Create instance: gnd, and set properties
set gnd [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd]
set_property -dict [list CONFIG.CONST_VAL {0}] [get_bd_cells gnd]

# Create instance: user_ip, and set properties

connect_bd_net [get_bd_ports bd_fclk0_125m] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_ports bd_fclk1_75m] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_ports bd_fclk2_200m] [get_bd_pins processing_system7_0/FCLK_CLK2]
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/DDR] [get_bd_intf_ports DDR]
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/FIXED_IO] [get_bd_intf_ports FIXED_IO]

# system reset connection
connect_bd_net [get_bd_ports ext_reset_in] [get_bd_pins rst_ps7_0_75M/ext_reset_in]
connect_bd_net [get_bd_pins rst_ps7_0_75M/mb_debug_sys_rst] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins rst_ps7_0_75M/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK1]

connect_bd_net [get_bd_pins rst_ps7_0_75M/aux_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]

# connect_bd_net [get_bd_pins rst_ps7_0_75M/peripheral_reset] [get_bd_pins axi_10g_ethernet_0/reset]
# connect_bd_net [get_bd_pins rst_ps7_0_75M/peripheral_reset] [get_bd_pins axi_10g_ethernet_1/areset]

connect_bd_net [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins xlconcat_0/In0]
connect_bd_net [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In1]

# axi_ic_gp connection
connect_bd_net [get_bd_pins axi_ic_gp/ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/S00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_ic_gp/M00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]

connect_bd_net [get_bd_pins axi_ic_gp/ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/S00_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_gp/M00_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]

connect_bd_intf_net [ get_bd_intf_pins axi_dma_0/S_AXI_LITE] -boundary_type upper              [ get_bd_intf_pins axi_ic_gp/M00_AXI]

# axi_ic_hp connection
connect_bd_net [get_bd_pins axi_ic_hp/ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1] 
connect_bd_net [get_bd_pins axi_ic_hp/M00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1] 
connect_bd_net [get_bd_pins axi_ic_hp/S00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1] 
connect_bd_net [get_bd_pins axi_ic_hp/S01_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1] 
connect_bd_net [get_bd_pins axi_ic_hp/S02_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1] 

connect_bd_net [get_bd_pins axi_ic_hp/ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_hp/M00_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_hp/S00_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_hp/S01_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_ic_hp/S02_ARESETN] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]

connect_bd_intf_net [ get_bd_intf_pins axi_dma_0/M_AXI_SG] -boundary_type upper   [ get_bd_intf_pins axi_ic_hp/S00_AXI]
connect_bd_intf_net [ get_bd_intf_pins axi_dma_0/M_AXI_MM2S] -boundary_type upper [ get_bd_intf_pins axi_ic_hp/S01_AXI]
connect_bd_intf_net [ get_bd_intf_pins axi_dma_0/M_AXI_S2MM] -boundary_type upper [ get_bd_intf_pins axi_ic_hp/S02_AXI]

# dma connection
connect_bd_net [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_sg_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins rst_ps7_0_75M/peripheral_aresetn]
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]

# zynq connection
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/S_AXI_HP0] -boundary_type upper [get_bd_intf_pins axi_ic_hp/M00_AXI] 
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] -boundary_type upper [get_bd_intf_pins axi_ic_gp/S00_AXI]
connect_bd_net [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
connect_bd_net [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1]


# Create address segments
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_SG] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM

create_bd_addr_seg -range 0x10000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
save_bd_design
