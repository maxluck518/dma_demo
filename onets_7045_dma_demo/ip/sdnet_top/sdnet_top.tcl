set ip_proj_root [pwd]
set ip_proj_name "sdnet_top"
set ip_proj_part "xc7z045ffg676-2"

create_project $ip_proj_name $ip_proj_root -part $ip_proj_part -force

# user add : add_files
add_files ./src/sdnet_top.v
add_files ./src/add_pktlen.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/Testbench/Check.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/Testbench/TB_System_Stim.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_RESETTER.HDL/S_RESETTER_control.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_RESETTER.HDL/S_RESETTER_line.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_RESETTER.HDL/S_RESETTER_lookup.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/OF_parser.HDL/OF_parser.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/ACL.HDL/ACL.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_PROTOCOL_ADAPTERs.HDL/S_PROTOCOL_ADAPTER_INGRESS.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_PROTOCOL_ADAPTERs.HDL/S_PROTOCOL_ADAPTER_EGRESS.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_SYNCERs.HDL/S_SYNCER_for__OUT_.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_BRIDGERs.HDL/S_BRIDGER_for_lookup_tuple_in_request.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_CONTROLLERs.HDL/S_CONTROLLER_FiveTupleDemo.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/FiveTupleDemo.v
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/Testbench/FiveTupleDemo_tb.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/ACL.HDL/xpm_memory.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/ACL.HDL/xpm_cdc.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_SYNCERs.HDL/xpm_memory.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_SYNCERs.HDL/xpm_fifo.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_SYNCERs.HDL/xpm_cdc.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_BRIDGERs.HDL/xpm_memory.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_BRIDGERs.HDL/xpm_fifo.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_BRIDGERs.HDL/xpm_cdc.sv
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/OF_parser.HDL/OF_parser.vp
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/ACL.HDL/ACL.vp
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_PROTOCOL_ADAPTERs.HDL/S_PROTOCOL_ADAPTER_INGRESS.vp
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_PROTOCOL_ADAPTERs.HDL/S_PROTOCOL_ADAPTER_EGRESS.vp
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_BRIDGERs.HDL/S_BRIDGER_for_lookup_tuple_in_request.vp
add_files ./src/sdnet/FiveTupleDemo/work_FiveTupleDemo/FiveTupleDemo/S_CONTROLLERs.HDL/S_CONTROLLER_FiveTupleDemo.vp

set_property top sdnet_top [current_fileset]

cd $ip_proj_root

ipx::package_project -root_dir $ip_proj_root -vendor xilinx.com -library user -taxonomy /UserIP
ipx::associate_bus_interfaces -busif s_axis -clock axis_aclk [ipx::current_core]
ipx::associate_bus_interfaces -busif m_axis -clock axis_aclk [ipx::current_core]
ipx::associate_bus_interfaces -busif s_axi -clock axi_aclk [ipx::current_core]
set_property core_revision 2 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
set_property  ip_repo_paths  /home/mjw/github/dma_demo2/onets_7045_dma_demo/ip/report [current_project]
ipx::archive_core $ip_proj_name.zip [ipx::current_core]
set_property  ip_repo_paths  $ip_proj_root [current_project]
update_ip_catalog

close_project
