`timescale 1 ps / 1 ps
module sdnet_top
#(
    // Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH=64,
    parameter C_S_AXIS_DATA_WIDTH=64,
    parameter C_S_AXIS_TUSER_WIDTH=1,
    parameter TUPLE_WIDTH = 128,
    parameter PKTLEN_WIDTH= 16,
    parameter ID_WIDTH = 16
)
(
    input                                           axis_aclk,
    input                                           axis_resetn,

    input                                           axi_aclk,
    input                                           axi_resetn,

    input [7:0]                                     s_axi_awaddr,
    input [0:0]                                     s_axi_awvalid,
    output [0:0]                                    s_axi_awready,
    input [31:0]                                    s_axi_wdata,
    input [3:0]                                     s_axi_wstrb,
    input [0:0]                                     s_axi_wvalid,
    output [0:0]                                    s_axi_wready,
    output [1:0]                                    s_axi_bresp,
    output [0:0]                                    s_axi_bvalid,
    input [0:0]                                     s_axi_bready,
    input [7:0]                                     s_axi_araddr,
    input [0:0]                                     s_axi_arvalid,
    output [0:0]                                    s_axi_arready,
    output [31:0]                                   s_axi_rdata,
    output [1:0]                                    s_axi_rresp,
    output [0:0]                                    s_axi_rvalid,
    input [0:0]                                     s_axi_rready,

    input [C_S_AXIS_DATA_WIDTH - 1:0]               s_axis_tdata,
    input [C_S_AXIS_TUSER_WIDTH - 1:0]              s_axis_tuser,
    input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0]       s_axis_tstrb,
    input                                           s_axis_tvalid,
    output                                          s_axis_tready,
    input                                           s_axis_tlast,

    output  [C_M_AXIS_DATA_WIDTH - 1:0]             m_axis_tdata,
    output  [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0]     m_axis_tstrb,
    output                                          m_axis_tvalid,
    input                                           m_axis_tready,
    output                                          m_axis_tlast,

    (*MARK_DEBUG="true"*)output [PKTLEN_WIDTH-1:0]                       sdnet_tuple_out_pktlen,
    (*MARK_DEBUG="true"*)output [ID_WIDTH-1:0]                           sdnet_tuple_out_id,
    (*MARK_DEBUG="true"*)output                                          sdnet_tuple_out_valid
	
);

    (*MARK_DEBUG="true"*)wire [C_S_AXIS_DATA_WIDTH - 1:0]                sdnet_axis_tdata;
    (*MARK_DEBUG="true"*)wire [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0]        sdnet_axis_tstrb;
    (*MARK_DEBUG="true"*)wire                                            sdnet_axis_tvalid;
    (*MARK_DEBUG="true"*)wire                                            sdnet_axis_tready;
    (*MARK_DEBUG="true"*)wire                                            sdnet_axis_tlast;
    (*MARK_DEBUG="true"*)wire [TUPLE_WIDTH - 1:0]                        sdnet_tuple_in_data;
    (*MARK_DEBUG="true"*)wire                                            sdnet_tuple_in_valid;

    add_pktlen
    #(
        .C_M_AXIS_DATA_WIDTH    (C_M_AXIS_DATA_WIDTH   ),
        .C_S_AXIS_DATA_WIDTH    (C_S_AXIS_DATA_WIDTH   ),
        .TUPLE_WIDTH            (TUPLE_WIDTH           ),
        .C_S_AXIS_TUSER_WIDTH   (C_S_AXIS_TUSER_WIDTH  ),
        .C_LEN_WIDTH            (PKTLEN_WIDTH          ),
        .C_SPT_WIDTH            (8),
        .C_DPT_WIDTH            (8),
        .C_DEFAULT_VALUE_ENABLE (1),
        .C_DEFAULT_SRC_PORT     (0),
        .C_DEFAULT_DST_PORT     (0)
    )
    (
        .axis_aclk                      (axis_aclk      ),
        .axis_resetn                    (axis_resetn    ),

        .s_axis_tdata                   (s_axis_tdata   ),
        .s_axis_tuser                   (),
        .s_axis_tstrb                   (s_axis_tstrb   ),
        .s_axis_tvalid                  (s_axis_tvalid  ),
        .s_axis_tready                  (s_axis_tready  ),
        .s_axis_tlast                   (s_axis_tlast   ),

        .m_axis_tdata                   (sdnet_axis_tdata ),
        .m_axis_tstrb                   (sdnet_axis_tstrb ),
        .m_axis_tvalid                  (sdnet_axis_tvalid),
        .m_axis_tready                  (sdnet_axis_tready),
        .m_axis_tlast                   (sdnet_axis_tlast ),

        .tuple_out_VALID                (sdnet_tuple_in_valid),
        .tuple_out_DATA                 (sdnet_tuple_in_data)
    );

    FiveTupleDemo FiveTupleDemo_inst
    (
        .packet_in_instream_TVALID              (sdnet_axis_tvalid),
        .packet_in_instream_TREADY              (sdnet_axis_tready),
        .packet_in_instream_TDATA               (sdnet_axis_tdata ),
        .packet_in_instream_TKEEP               (sdnet_axis_tstrb ),
        .packet_in_instream_TLAST               (sdnet_axis_tlast ),
        .tuple_in_metadata_in_VALID             (sdnet_tuple_in_valid),
        .tuple_in_metadata_in_DATA              (sdnet_tuple_in_data ),
        .control_S_AXI_AWADDR                   (s_axi_awaddr ),
        .control_S_AXI_AWVALID                  (s_axi_awvalid),
        .control_S_AXI_AWREADY                  (s_axi_awready),
        .control_S_AXI_WDATA                    (s_axi_wdata  ),
        .control_S_AXI_WSTRB                    (s_axi_wstrb  ),
        .control_S_AXI_WVALID                   (s_axi_wvalid ),
        .control_S_AXI_WREADY                   (s_axi_wready ),
        .control_S_AXI_BRESP                    (s_axi_bresp  ),
        .control_S_AXI_BVALID                   (s_axi_bvalid ),
        .control_S_AXI_BREADY                   (s_axi_bready ),
        .control_S_AXI_ARADDR                   (s_axi_araddr ),
        .control_S_AXI_ARVALID                  (s_axi_arvalid),
        .control_S_AXI_ARREADY                  (s_axi_arready),
        .control_S_AXI_RDATA                    (s_axi_rdata  ),
        .control_S_AXI_RRESP                    (s_axi_rresp  ),
        .control_S_AXI_RVALID                   (s_axi_rvalid ),
        .control_S_AXI_RREADY                   (s_axi_rready ),
        .enable_processing                      (1'b1),
        .packet_out_outstream_TVALID            (m_axis_tvalid),
        .packet_out_outstream_TREADY            (m_axis_tready),
        .packet_out_outstream_TDATA             (m_axis_tdata ),
        .packet_out_outstream_TKEEP             (m_axis_tstrb ),
        .packet_out_outstream_TLAST             (m_axis_tlast ),
        .tuple_out_metadata_out_VALID           (sdnet_tuple_out_valid),
        .tuple_out_metadata_out_DATA            (sdnet_tuple_out_pktlen),
        .tuple_out_counter_index_out_VALID      (),
        .tuple_out_counter_index_out_DATA       (sdnet_tuple_out_id),
        .clk_line_rst                           (~axis_resetn),
        .clk_line                               (axis_aclk),
        .clk_lookup_rst                         (~axi_resetn),
        .clk_lookup                             (axi_aclk),
        .clk_control_rst                        (~axi_resetn),
        .clk_control                            (axi_aclk),
        .internal_rst_done                      ()
    );

endmodule
