module ctrl_logic
(
    //axis inteface clk
    input                                           axis_clk,
    input                                           axis_aresetn,

    input                                           fifo_empty,
    input                                           sw_start_report,
    input                                           sw_stop_report_trigger,
    output reg                                      sw_stop_report
);

    reg                                             wait_empty_en;

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
endmodule
