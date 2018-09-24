module ctrl_mem
#(
	parameter MEM_ADDR_WIDTH   = 4,
	parameter MEM_DATA_WIDTH   = 32,
	parameter MEM_USED_NUM     = 10,
	parameter SIM_ONLY         = 0
)
(
    // Global Ports
    input                             		clk,
	input							  		rst,
    output                                  sw_rst,
    output                                  sw_start_report,
    input                                   sw_stop_report,

    input                                   reg_req,
    input                                   reg_rd_wr_L,
    input [MEM_DATA_WIDTH-1:0]              reg_wr_data,
    input [MEM_ADDR_WIDTH-1:0]              reg_addr,

    output reg                              reg_ack,
    output reg [MEM_DATA_WIDTH-1:0]         reg_rd_data

);

reg [MEM_DATA_WIDTH-1:0] mem[MEM_USED_NUM-1:0];
assign sw_rst          = mem[0][0:0];
assign sw_start_report = mem[1][0:0];

integer i;
initial begin
    for(i = 0;i<MEM_USED_NUM;i=i+1) begin
        mem[i] = 0;
    end
end

// always @(posedge clk) begin
    // if(rst) begin
        // mem[2][0:0] <= 0;
    // end
    // else begin
        // mem[2][0:0] <= sw_stop_report;
    // end
// end

always @(posedge clk) begin
    if(rst) begin
        reg_ack     <= 0;
        reg_rd_data <= 0;
    end
    else begin
        mem[2][0:0] <= sw_stop_report;
        if(reg_req) begin
            reg_ack     <= 1;
            if(!reg_rd_wr_L) begin
                if(reg_addr != 2) begin
                    mem[reg_addr] <= reg_wr_data;
                end
            end
            else begin
                reg_rd_data <= mem[reg_addr];
            end
        end
        else begin
            reg_ack     <= 0;
        end
    end
end

endmodule
