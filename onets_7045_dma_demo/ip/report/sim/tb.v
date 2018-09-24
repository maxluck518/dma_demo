module data_tb
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
);
    // Global Ports
    reg                                             axis_clk;
    reg                                             axis_aresetn;
    wire                                            fifo_clk;

    // FIFO Ports
    wire                                            fifo_wr_en;
    wire  [FIFO_DATA_WIDTH-1:0]                     fifo_din;
    wire                                            fifo_full;
    wire                                            fifo_prog_full;		

    // AXI Stream Ports
    wire  [C_M_AXIS_DATA_WIDTH-1:0]                 m_axis_tdata;
    wire  [((C_M_AXIS_DATA_WIDTH/8))-1:0]           m_axis_tstrb;
    wire  [C_M_AXIS_TUSER_WIDTH-1:0]                m_axis_tuser;
    wire                                            m_axis_tvalid;
    wire                                            m_axis_tready;
    wire                                            m_axis_tlast;

    // Misc
    wire                                            sw_rst;

    wire                                            reg_req;
    wire                                            reg_rd_wr_L;
    wire [MEM_ADDR_WIDTH-1:0]                       reg_wr_data;
    wire [MEM_ADDR_WIDTH-1:0]                       reg_addr;

    wire                                            reg_ack;
    wire [MEM_DATA_WIDTH-1:0]                       reg_rd_data;

    always # 2.5 axis_clk = ~axis_clk;

    integer i;
    initial begin
        axis_aresetn = 0;
        axis_clk = 0;
        for(i = 0;i<100;i=i+1) begin
            @(posedge axis_clk);
        end
        axis_aresetn = 1;
    end

mem mem_inst
(
    // Global Ports
    .clk                        (axis_clk),
	.rst                        (~axis_aresetn),

    .reg_req_2                  (reg_req    ),
    .reg_rd_wr_L_2              (reg_rd_wr_L),
    .reg_wr_data_2              (reg_wr_data),
    .reg_addr_2                 (reg_addr   ),
                                          
    .reg_ack_2                  (reg_ack    ),
    .reg_rd_data_2              (reg_rd_data)

);

mem_to_fifo mem_to_fifo_inst
(
    // Global Ports
    .clk                        (axis_clk),
	.rst                        (~axis_aresetn),

    .reg_req                    (reg_req    ),
    .reg_rd_wr_L                (reg_rd_wr_L),
    .reg_addr                   (reg_addr   ),
                                            
    .reg_ack                    (reg_ack    ),
    .reg_rd_data                (reg_rd_data),

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

    .m_axis_tdata               (m_axis_tdata),
    .m_axis_tstrb               (m_axis_tstrb),
    .m_axis_tuser               (m_axis_tuser),
    .m_axis_tvalid              (m_axis_tvalid),
    .m_axis_tready              (1'b1),
    .m_axis_tlast               (m_axis_tlast)

);

endmodule
