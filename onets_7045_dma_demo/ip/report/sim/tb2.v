module data_tb2
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

    wire                                            reg_req;
    wire                                            reg_rd_wr_L;
    wire [31:0]                                     reg_addr;
    wire [31:0]                                     reg_wr_data;
    wire                                            reg_ack;
    wire [31:0]                                     reg_rd_data;

    wire                                            udp_reg_req;
    wire                                            udp_reg_rd_wr_L;
    wire [31:0]                                     udp_reg_addr;
    wire [31:0]                                     udp_reg_wr_data;
    wire                                            udp_reg_ack;
    wire [31:0]                                     udp_reg_rd_data;

    wire                                            ctrl_reg_req;
    wire                                            ctrl_reg_rd_wr_L;
    wire [31:0]                                     ctrl_reg_addr;
    wire [31:0]                                     ctrl_reg_wr_data;
    wire                                            ctrl_reg_ack;
    wire [31:0]                                     ctrl_reg_rd_data;

    wire                                            report_reg_req;
    wire                                            report_reg_rd_wr_L;
    wire [31:0]                                     report_reg_addr;
    wire [31:0]                                     report_reg_wr_data;
    wire                                            report_reg_ack;
    wire [31:0]                                     report_reg_rd_data;

    wire                                            sw_rst;
    reg                                             sw_start_report;
    reg                                             sw_stop_report;
    wire                                            sw_stop_report_trigger;
    reg                                             wait_empty_en;

    reg [15:0]  cnt;
    localparam TIMER_THRESH = 16'hffff;

    always@(posedge axis_clk) begin
        if(~axis_aresetn) begin
            sw_stop_report <= 0;
        end
        else begin
            if(wait_empty_en & fifo_empty) begin
                sw_stop_report <= 1;
            end
            else if(sw_start_report) begin
                sw_stop_report <= 0;
            end
        end
    end

    always@(posedge axis_clk) begin
        if(~axis_aresetn) begin
            wait_empty_en <= 0;
        end
        else begin
            if(wait_empty_en) begin
                if(fifo_empty) begin
                    wait_empty_en <= 0;
                end
            end
            else begin
                if(sw_stop_report_trigger) begin
                    wait_empty_en <= 1;
                end
            end
        end
    end


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

    always@(posedge axis_clk) begin
        if(~axis_aresetn) begin
            sw_start_report <= 0;
            cnt            <= 0;
        end
        else begin
            cnt <= cnt + 1;
            if(cnt == TIMER_THRESH) begin
                sw_start_report <= 1;
            end
            else begin
                sw_start_report <= 0;
            end
        end
    end


    mem mem_inst
    (
        // Global Ports
        .clk                        (axis_clk),
    	.rst                        (~axis_aresetn),
    
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
        .start_report_trigger       (sw_start_report),
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
        .m_axis_tready              (1'b1),
        .m_axis_tlast               (m_axis_tlast)
    );

endmodule
