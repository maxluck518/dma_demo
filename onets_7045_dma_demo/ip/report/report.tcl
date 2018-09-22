set ip_proj_root [pwd]
set ip_proj_name "report"
set ip_proj_part "xc7z045ffg676-2"

create_project $ip_proj_name $ip_proj_root -part $ip_proj_part -force

add_files ./src/ctrl_mem.v
add_files ./src/ctrl_logic.v
add_files ./src/report.v
add_files ./src/mem.v
add_files ./src/fifo_to_axis.v
add_files ./src/reg_bus/axi_to_reg_bus.v
add_files ./src/reg_bus/udp_reg_path_decode.v
add_files ./src/mem_to_fifo.v

set_property top report [current_fileset]

cd $ip_proj_root

ipx::package_project -root_dir $ip_proj_root -vendor xilinx.com -library user -taxonomy /UserIP
ipx::associate_bus_interfaces -busif m_axis -clock axis_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif s_axi -clock s_axi_aclk [ipx::current_core]
set_property core_revision 2 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
set_property  ip_repo_paths  /home/mjw/github/dma_demo2/onets_7045_dma_demo/ip/report [current_project]
ipx::archive_core $ip_proj_name.zip [ipx::current_core]
set_property  ip_repo_paths  $ip_proj_root [current_project]
update_ip_catalog

close_project
