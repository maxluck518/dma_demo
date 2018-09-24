module ctrl_logic
(
    //axis inteface clk
    input                                           axis_clk,
    input                                           axis_aresetn,

    input                                           fifo_empty,
    output                                          sw_start_report_trigger,
    input                                           sw_stop_report_trigger,
    input                                           sw_start_report,
    output reg                                      sw_stop_report
);

    reg                                             wait_empty_en;
    reg                                             sw_start_report_pre;

    assign sw_start_report_trigger = !sw_start_report_pre & sw_start_report;

    always@(posedge axis_clk) begin
        if(~axis_aresetn) begin
            sw_start_report_pre <= 0;
        end
        else begin
            sw_start_report_pre <= sw_start_report;
        end
    end

    always@(posedge axis_clk) begin
        if(~axis_aresetn) begin
            sw_stop_report <= 0;
        end
        else begin
            if(wait_empty_en & fifo_empty) begin
                sw_stop_report <= 1;
            end
            else if(sw_start_report_trigger) begin
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
