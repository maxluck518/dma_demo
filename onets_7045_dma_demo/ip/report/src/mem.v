module mem
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

    input                                   reg_req_1,
    input                                   reg_rd_wr_L_1,
    input [MEM_DATA_WIDTH-1:0]              reg_wr_data_1,
    input [MEM_ADDR_WIDTH-1:0]              reg_addr_1,

    output reg                              reg_ack_1,
    output reg [MEM_DATA_WIDTH-1:0]         reg_rd_data_1,

    input                                   reg_req_2,
    input                                   reg_rd_wr_L_2,
    input [MEM_DATA_WIDTH-1:0]              reg_wr_data_2,
    input [MEM_ADDR_WIDTH-1:0]              reg_addr_2,

    output reg                              reg_ack_2,
    output reg [MEM_DATA_WIDTH-1:0]         reg_rd_data_2

);
reg [MEM_DATA_WIDTH-1:0] mem[MEM_USED_NUM-1:0];

integer i;
initial begin
    for(i = 0;i<MEM_USED_NUM;i=i+1) begin
        mem[i] = i;
    end
end

always @(posedge clk) begin
    if(rst) begin
        reg_ack_1     <= 0;
        reg_rd_data_1 <= 0;
    end
    else begin
        if(reg_req_1) begin
            reg_ack_1     <= 1;
            if(!reg_rd_wr_L_1) begin
                mem[reg_addr_1] <= reg_wr_data_1;
            end
            else begin
                reg_rd_data_1 <= mem[reg_addr_1];
            end
        end
        else begin
            reg_ack_1     <= 0;
        end
    end
end

always @(posedge clk) begin
    if(rst) begin
        reg_ack_2     <= 0;
        reg_rd_data_2 <= 0;
    end
    else begin
        if(reg_req_2) begin
            reg_ack_2     <= 1;
            if(!reg_rd_wr_L_2) begin
                mem[reg_addr_2] <= reg_wr_data_2;
            end
            else begin
                reg_rd_data_2 <= mem[reg_addr_2];
            end
        end
        else begin
            reg_ack_2     <= 0;
        end
    end
end

endmodule
