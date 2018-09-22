module mem_to_fifo
#(
    parameter FIFO_DATA_WIDTH  = 20,
	parameter MEM_ADDR_WIDTH   = 19,
	parameter MEM_DATA_WIDTH   = 20,
	parameter MEM_USED_NUM     = 1024,
	parameter SIM_ONLY         = 0,
    parameter TIMESTAMP_WIDTH  = 32,
    parameter TIME_WAIT_THRESH = 32'h0000ffff
)
(
    // Global Ports
    input                             		clk,
	input							  		rst,
    input                                   start_report_trigger,
    output reg                              stop_report_trigger,

    output reg                              reg_req,
    output reg                              reg_rd_wr_L,
    output reg [MEM_ADDR_WIDTH-1:0]         reg_addr,

    input                                   reg_ack,
    input [MEM_DATA_WIDTH-1:0]              reg_rd_data,

    output reg                              fifo_wr_en,
    output reg [FIFO_DATA_WIDTH-1:0]        fifo_data,
    input                           		fifo_full,
    input                           		fifo_prog_full
);

reg                                 report_en;
reg [MEM_ADDR_WIDTH-1:0]            mem_report_addr;
reg [TIMESTAMP_WIDTH-1:0]           cnt;

// trigger
always@(posedge clk) begin
    reg_rd_wr_L <= 0;

    if(rst) begin
        report_en <= 0;
    end
    else begin
        if(start_report_trigger) begin
            report_en <= 1;
        end
        else if(stop_report_trigger) begin
            report_en <= 0;
        end
    end
end

// reg plane
always@(posedge clk) begin
    if(rst) begin
        reg_req             <= 0;
        reg_addr            <= 0;
        mem_report_addr     <= 0;
        stop_report_trigger <= 0;
    end
    else begin
        if(report_en) begin
            if(reg_addr == MEM_USED_NUM-1) begin
                reg_req             <= 0;
                reg_addr            <= 0;
                mem_report_addr     <= 0;
                stop_report_trigger <= 1;
            end
            else if(~fifo_prog_full) begin
                reg_req             <= 1;
                reg_addr            <= mem_report_addr;
                mem_report_addr     <= mem_report_addr + 1;
                stop_report_trigger <= 0;
            end
            else begin
                reg_req             <= 0;
                stop_report_trigger <= 0;
            end
        end
        else begin
            reg_req             <= 0;
            reg_addr            <= 0;
            mem_report_addr     <= 0;
        end
    end
end

// fifo plane
always@(posedge clk) begin
    if(rst) begin
        fifo_wr_en      <= 0;
        fifo_data       <= 0;
    end
    else begin
        if(reg_ack && ~fifo_prog_full) begin
            fifo_wr_en <= 1;
            fifo_data  <= reg_rd_data;
        end
        else begin
            fifo_wr_en <= 0;
            fifo_data  <= 0;
        end
    end
end

endmodule
