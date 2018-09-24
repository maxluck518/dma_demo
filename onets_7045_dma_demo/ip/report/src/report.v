module report
#(
    //Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH  = 64,
    parameter C_M_AXIS_TUSER_WIDTH = 8,
	parameter MEM_ADDR_WIDTH       = 19,
	parameter MEM_DATA_WIDTH       = 20,
	parameter MEM_USED_NUM         = 1000,
    parameter FIFO_DATA_WIDTH      = 20
)
(
    //axis inteface clk
    input                                           axis_clk,
    input                                           axis_aresetn,
   
    //axi interface clk
    input                                           s_axi_aclk, 
    input                                           s_axi_aresetn,
    //------------------------------//
    //AXI-lite Slave interface
    //------------------------------//
    // Write address channel
    input [31:0]                                    s_axi_awaddr,
    input [2:0]	                                    s_axi_awprot,
    input                                           s_axi_awvalid,
    output                                          s_axi_awready,

    // Write Data Channel
    input [31:0]                                    s_axi_wdata, 
    input [3:0]                                     s_axi_wstrb,
    input                                           s_axi_wvalid,
    output                                          s_axi_wready,

    // Write Response Channel
    output [1:0]                                    s_axi_bresp,
    output                                          s_axi_bvalid,
    input                                           s_axi_bready,

    // Read Address channel
    input [31:0]                                    s_axi_araddr,
    input [2:0]                                     s_axi_arprot,
    input                                           s_axi_arvalid,
    output                                          s_axi_arready,

    // Read Data Channel
    output [31:0]                                   s_axi_rdata,
    output [1:0]                                    s_axi_rresp,
    output                                          s_axi_rvalid,
    input                                           s_axi_rready,

    // AXI Stream Ports
    (*MARK_DEBUG="true"*)output  [C_M_AXIS_DATA_WIDTH-1:0]               m_axis_tdata,
    (*MARK_DEBUG="true"*)output  [((C_M_AXIS_DATA_WIDTH/8))-1:0]         m_axis_tstrb,
    (*MARK_DEBUG="true"*)output                                          m_axis_tvalid,
    (*MARK_DEBUG="true"*)input                                           m_axis_tready,
    (*MARK_DEBUG="true"*)output                                          m_axis_tlast
);
    
    wire                                            sw_report_en;
    // FIFO Ports
    (*MARK_DEBUG="true"*)wire                                            fifo_wr_en;
    (*MARK_DEBUG="true"*)wire  [FIFO_DATA_WIDTH-1:0]                     fifo_din;
    (*MARK_DEBUG="true"*)wire                                            fifo_full;
    (*MARK_DEBUG="true"*)wire                                            fifo_prog_full;		
    (*MARK_DEBUG="true"*)wire                                            fifo_empty;
    (*MARK_DEBUG="true"*)wire                                            reg_req;
    (*MARK_DEBUG="true"*)wire                                            reg_rd_wr_L;
    (*MARK_DEBUG="true"*)wire [31:0]                                     reg_addr;
    (*MARK_DEBUG="true"*)wire [31:0]                                     reg_wr_data;
    (*MARK_DEBUG="true"*)wire                                            reg_ack;
    (*MARK_DEBUG="true"*)wire [31:0]                                     reg_rd_data;
    (*MARK_DEBUG="true"*)wire                                            udp_reg_req;
    (*MARK_DEBUG="true"*)wire                                            udp_reg_rd_wr_L;
    (*MARK_DEBUG="true"*)wire [31:0]                                     udp_reg_addr;
    (*MARK_DEBUG="true"*)wire [31:0]                                     udp_reg_wr_data;
    (*MARK_DEBUG="true"*)wire                                            udp_reg_ack;
    (*MARK_DEBUG="true"*)wire [31:0]                                     udp_reg_rd_data;
    (*MARK_DEBUG="true"*)wire                                            ctrl_reg_req;
    (*MARK_DEBUG="true"*)wire                                            ctrl_reg_rd_wr_L;
    (*MARK_DEBUG="true"*)wire [31:0]                                     ctrl_reg_addr;
    (*MARK_DEBUG="true"*)wire [31:0]                                     ctrl_reg_wr_data;
    (*MARK_DEBUG="true"*)wire                                            ctrl_reg_ack;
    (*MARK_DEBUG="true"*)wire [31:0]                                     ctrl_reg_rd_data;
    (*MARK_DEBUG="true"*)wire                                            report_reg_req;
    (*MARK_DEBUG="true"*)wire                                            report_reg_rd_wr_L;
    (*MARK_DEBUG="true"*)wire [31:0]                                     report_reg_addr;
    (*MARK_DEBUG="true"*)wire [31:0]                                     report_reg_wr_data;
    (*MARK_DEBUG="true"*)wire                                            report_reg_ack;
    (*MARK_DEBUG="true"*)wire [31:0]                                     report_reg_rd_data;

    (*MARK_DEBUG="true"*)wire                                            sw_rst;
    (*MARK_DEBUG="true"*)wire                                            sw_start_report;
    (*MARK_DEBUG="true"*)wire                                            sw_stop_report;
    (*MARK_DEBUG="true"*)wire                                            sw_start_report_trigger;
    (*MARK_DEBUG="true"*)wire                                            sw_stop_report_trigger;

    axi_to_reg_bus axi_to_reg_bus_inst
    (
       
       .reset                   (~axis_aresetn),
       .clk                     (axis_clk),
       .s_axi_aclk              (s_axi_aclk   ),
       .s_axi_aresetn           (s_axi_aresetn),
       .s_axi_awaddr            (s_axi_awaddr ),
       .s_axi_awprot            (s_axi_awprot ),
       .s_axi_awvalid           (s_axi_awvalid),
       .s_axi_awready           (s_axi_awready),
                                              
       .s_axi_wdata             (s_axi_wdata  ),
       .s_axi_wstrb             (s_axi_wstrb  ),
       .s_axi_wvalid            (s_axi_wvalid ),
       .s_axi_wready            (s_axi_wready ),
                                              
       .s_axi_bresp             (s_axi_bresp  ),
       .s_axi_bvalid            (s_axi_bvalid ),
       .s_axi_bready            (s_axi_bready ),
                                              
       .s_axi_araddr            (s_axi_araddr ),
       .s_axi_arprot            (s_axi_arprot ),
       .s_axi_arvalid           (s_axi_arvalid),
       .s_axi_arready           (s_axi_arready),
                                              
       .s_axi_rdata             (s_axi_rdata  ),
       .s_axi_rresp             (s_axi_rresp  ),
       .s_axi_rvalid            (s_axi_rvalid ),
       .s_axi_rready            (s_axi_rready ),
                                              
       .reg_req                 (reg_req      ),
       .reg_rd_wr_L             (reg_rd_wr_L  ),
       .reg_addr                (reg_addr     ),
       .reg_wr_data             (reg_wr_data  ),
                                              
       .reg_ack                 (reg_ack      ),
       .reg_rd_data             (reg_rd_data  )
       
    );
    
    udp_reg_path_decode udp_reg_path_decode_inst 
    (
       .reg_req                 (reg_req        ),
       .reg_rd_wr_L             (reg_rd_wr_L    ),
       .reg_addr                (reg_addr       ),
       .reg_wr_data             (reg_wr_data    ),
                                                
       .reg_ack                 (reg_ack        ),
       .reg_rd_data             (reg_rd_data    ),
                                                
       .ctrl_reg_req            (ctrl_reg_req    ),
       .ctrl_reg_rd_wr_L        (ctrl_reg_rd_wr_L),
       .ctrl_reg_addr           (ctrl_reg_addr   ),
       .ctrl_reg_wr_data        (ctrl_reg_wr_data),
                                                
       .ctrl_reg_ack            (ctrl_reg_ack    ),
       .ctrl_reg_rd_data        (ctrl_reg_rd_data),
                                                
       .udp_reg_req             (udp_reg_req    ),
       .udp_reg_rd_wr_L         (udp_reg_rd_wr_L),
       .udp_reg_addr            (udp_reg_addr   ),
       .udp_reg_wr_data         (udp_reg_wr_data),
                                                
       .udp_reg_ack             (udp_reg_ack    ),
       .udp_reg_rd_data         (udp_reg_rd_data),
                                                
       .clk                     (axis_clk       ),
       .reset                   (~axis_aresetn  )
    );

    ctrl_logic ctrl_logic_inst
    (
        .axis_clk                   (axis_clk              ),
        .axis_aresetn               (axis_aresetn          ),

        .fifo_empty                 (fifo_empty            ),
        .sw_start_report_trigger    (sw_start_report_trigger),
        .sw_stop_report_trigger     (sw_stop_report_trigger),
        .sw_start_report            (sw_start_report       ),
        .sw_stop_report             (sw_stop_report        )
    );

    ctrl_mem ctrl_mem_inst
    (
        .clk                    (axis_clk         ),
    	.rst                    (~axis_aresetn    ),
        .sw_rst                 (sw_rst           ),
        .sw_start_report        (sw_start_report  ),
        .sw_stop_report         (sw_stop_report   ),
                                             
        .reg_req                (ctrl_reg_req     ),
        .reg_rd_wr_L            (ctrl_reg_rd_wr_L ),
        .reg_wr_data            (ctrl_reg_wr_data ),
        .reg_addr               (ctrl_reg_addr    ),
                                             
        .reg_ack                (ctrl_reg_ack     ),
        .reg_rd_data            (ctrl_reg_rd_data )
    
    );
    
    mem mem_inst
    (
        // Global Ports
        .clk                        (axis_clk),
    	.rst                        (~axis_aresetn),
    
        .reg_req_1                  (udp_reg_req    ),
        .reg_rd_wr_L_1              (udp_reg_rd_wr_L),
        .reg_addr_1                 (udp_reg_addr   ),
        .reg_wr_data_1              (udp_reg_wr_data),
                                                    
        .reg_ack_1                  (udp_reg_ack    ),
        .reg_rd_data_1              (udp_reg_rd_data),

        .reg_req_2                  (report_reg_req    ),
        .reg_rd_wr_L_2              (report_reg_rd_wr_L),
        .reg_addr_2                 (report_reg_addr   ),
        .reg_wr_data_2              (report_reg_wr_data),
                                                    
        .reg_ack_2                  (report_reg_ack    ),
        .reg_rd_data_2              (report_reg_rd_data)
    
    );

    
    mem_to_fifo mem_to_fifo_inst
    (
        // Global Ports
        .clk                        (axis_clk),
    	.rst                        (~axis_aresetn),
        .start_report_trigger       (sw_start_report_trigger),
        .stop_report_trigger        (sw_stop_report_trigger),
    
        .reg_req                    (report_reg_req    ),
        .reg_rd_wr_L                (report_reg_rd_wr_L),
        .reg_addr                   (report_reg_addr   ),
                                                
        .reg_ack                    (report_reg_ack    ),
        .reg_rd_data                (report_reg_rd_data),
    
        .fifo_wr_en                 (fifo_wr_en),
        .fifo_data                  (fifo_din),
        .fifo_full                  (fifo_full),
        .fifo_prog_full             (fifo_prog_full)
    );
    
    fifo_to_axis 
    #(
        //Master AXI Stream Data Width
        .C_M_AXIS_DATA_WIDTH   (C_M_AXIS_DATA_WIDTH   ),
        .C_M_AXIS_TUSER_WIDTH  (C_M_AXIS_TUSER_WIDTH  ),
        .FIFO_DATA_WIDTH       (FIFO_DATA_WIDTH       )
    )fifo_to_axis_inst
    (
        // Global Ports
        .axis_clk                   (axis_clk),
        .axis_aresetn               (axis_aresetn),
        .fifo_clk                   (axis_clk),
    
        .fifo_wr_en                 (fifo_wr_en),
        .fifo_din                   (fifo_din),
        .fifo_full                  (fifo_full),
        .fifo_prog_full		        (fifo_prog_full),
        .fifo_empty                 (fifo_empty),
    
        .m_axis_tdata               (m_axis_tdata),
        .m_axis_tstrb               (m_axis_tstrb),
        .m_axis_tvalid              (m_axis_tvalid),
        .m_axis_tready              (m_axis_tready),
        .m_axis_tlast               (m_axis_tlast)
    );

endmodule
