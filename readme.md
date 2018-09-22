# ONetSwitch45 DMA Burst Demo

## About ONetSwitch
* [MainPage](https://www.kickstarter.com/projects/onetswitch/onetswitch-open-source-hardware-for-networking)
* [Wiki](https://github.com/MeshSr/ONetSwitch/wiki)
* [Github](https://github.com/MeshSr)

## Version
* Xilinx Vivado 2017.4
* Xilinx SDNet 2017.4


## Features
* Zynq Processing Sysyem
* 10G Ethernet IP Core x 2
* Programmable Packets Parser, FlowTable and Processing Pipeline
* Passive_measurement module
* DMA burst channel

## AXI Register Space

### AXI BUS

| IP               | range      | address    |
| ---------------- | ---------- | ---------- |
| Ethernet0        | 256k       | 0x43c00000 |
| Ethernet1        | 256k       | 0x43c40000 |
| sdnet_top        | 64k        | 0x44000000 |
| pkt_report       | 128M       | 0x48000000 |

### Control signals in pkt_report

| signals          | start address | end address   |
| ---------------- | ------------- | ------------- |
| sw_rst           | 0x48100000    | 0x48100003    |
| sw_start_report  | 0x48100004    | 0x48100007    |
| sw_stop_report   | 0x48100008    | 0x4810000B    |
| counter_item     | 0x48200000    | 0x48200FFF    |

## Getting Started
### Quick Started
Just copy all the files in *./ready_to_download/sd_card/* into the FAT partition of SD_card, and start the device.

### Started from Source File
#### 1. build the vivado project
Download the repository: 
```
$ git clone https://github.com/maxluck518/dma_demo
```
Open Vivado 2017.4 and move into the dir downloaded before, then run the following tcl command:
```
$ source ./onets_7045_dma_demo.tcl
```
Wait until the script completed.

#### 2. Generate boot.bin
1) Run Synethesis,Implement and Generate bitstream steps in Vivado;

2) Wait until the Steps completed,Launch Vivado SDK to generate boot.bin and
devicetree.dtc

For more details, please refer to the documents: [UG973](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug973-vivado-release-notes-install-license.pdf)

## SDNet Usage
### RTL Design
Currently, the project only support for only 1 action for packet forwarding. 


#### Parser 
Extact the tcp/ip five-tuple(dst_ip,src_ip,proto,dst_port,src_port) 

#### Lookup Table
| key (phy_src_port,dip,sip,proto,dport,sport) | mask (wildcard_for_key) | value (phy_dst_port) |
| :-:                                          | :-:                     | :-:                  |
| 112 bits                                     | 112 bits                | 8 bits               |

#### Action
Based on the value got from the lookup table, Each packet can be sent to the specific phy_port.

For more about SDNet : [UG1252](https://china.xilinx.com/support/documentation/sw_manuals/xilinx2018_1/ug1252-p4-sdnet.pdf), [UG1012](https://china.xilinx.com/support/documentation/sw_manuals/xilinx2018_1/UG1012-sdnet-packet-processor.pdf)


### Software Agent
The Software Agent is used for downloading flow_entry to the lookup table in SDNet.

#### Quick Started
Use the Prebuild app *download_flow_entry* in *./ready_to_download/tools/*

##### 1. Create the table_entry_file
Create :
```
$ touch test.txt
```
Edit :
```
$ vim test.txt
```

##### 2. Download the table_entry
```
$ ./download_flow_entry test.txt
```

For more details about the flow_entry format: [flow_table](https://github.com/maxluck518/flow_table/tree/fivetuple)



To be continued!

