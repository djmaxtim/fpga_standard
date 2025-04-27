// =================================================================================================
// File Name      : srio_top.v
// Module         : SRIO_TOP
// Function       : srio top module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      20XX/XX/XX   XXX.XXX           Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module SRIO_TOP (
    //CLK RST
    input                               SRIO_CLK                                ,//(i)  [  1]
    input                               SRIO_RST                                ,//(i)  [  1]
    input                               USR_CLK                                 ,//(i)  [  1]
    input                               USR_RST                                 ,//(i)  [  1]

    //Initiator signal
    input       [  63:0]                AXIS_RX_IDATA                           ,//(i)  [ 64]
    input       [   7:0]                AXIS_RX_IKEEP                           ,//(i)  [  8]
    input                               AXIS_RX_ILAST                           ,//(i)  [  1]
    input                               AXIS_RX_IVALID                          ,//(i)  [  1]
    output                              AXIS_RX_IREADY                          ,//(o)  [  1]
    input       [  31:0]                AXIS_RX_IUSER                           ,//(i)  [ 22]

    output      [  63:0]                AXIS_TX_IDATA                           ,//(o)  [ 64]
    output      [   7:0]                AXIS_TX_IKEEP                           ,//(o)  [  8]
    output                              AXIS_TX_IVALID                          ,//(o)  [  1]
    output                              AXIS_TX_ILAST                           ,//(o)  [  1]
    input                               AXIS_TX_IREADY                          ,//(i)  [  1]
    output      [  31:0]                AXIS_TX_IUSER                           ,//(o)  [  4]

    //Target signal
    input       [  63:0]                AXIS_RX_TDATA                           ,//(i)  [ 64]
    input       [   7:0]                AXIS_RX_TKEEP                           ,//(i)  [  8]
    input                               AXIS_RX_TLAST                           ,//(i)  [  1]
    input                               AXIS_RX_TVALID                          ,//(i)  [  1]
    output                              AXIS_RX_TREADY                          ,//(o)  [  1]
    input       [  31:0]                AXIS_RX_TUSER                           ,//(i)  [ 22]

    output      [  63:0]                AXIS_TX_TDATA                           ,//(o)  [ 64]
    output      [   7:0]                AXIS_TX_TKEEP                           ,//(o)  [  8]
    output                              AXIS_TX_TVALID                          ,//(o)  [  1]
    output                              AXIS_TX_TLAST                           ,//(o)  [  1]
    input                               AXIS_TX_TREADY                          ,//(i)  [  1]
    output      [  31:0]                AXIS_TX_TUSER                           ,//(o)  [  4]

    output                              INI_WR_RDY                              ,//(i)  [ 16]
    input                               INI_WR_REQ                              ,//(i)  [  1]
    input       [  31:0]                INI_WR_ADDR                             ,//(o)  [ 32]
    input       [   8:0]                INI_WR_SIZE                             ,//(o)  [ 32]
    input       [  63:0]                INI_WR_DATA                             ,//(o)  [ 64]
    input                               INI_WR_DVLD                             ,//(o)  [  1]
    input                               INI_WR_SOF                              ,//(o)  [  1]
    input                               INI_WR_EOF                              ,//(o)  [  1]

    input                               INI_RD_RDY                              ,//(i)  [  1]
    input                               INI_RD_REQ                              ,//(i)  [  1]
    input       [   8:0]                INI_RD_SIZE                             ,//(i)  [ 32]
    input       [  31:0]                INI_RD_ADDR                             ,//(i)  [ 32]
    output      [  63:0]                INI_RD_DATA                             ,//(i)  [ 64]
    output                              INI_RD_DVLD                             ,//(i)  [  1]
    output                              INI_RD_SOF                              ,//(i)  [  1]
    output                              INI_RD_EOF                              ,//(i)  [  1]

    input                               INI_REG_WR_REQ                          ,//(i)  [  1]
    output                              INI_REG_WR_ACK                          ,//(o)  [  1]
    input       [  31:0]                INI_REG_WR_DATA                         ,//(i)  [ 32]
    input                               INI_REG_RD_REQ                          ,//(i)  [  1]
    output                              INI_REG_RD_ACK                          ,//(o)  [  1]
    output      [  31:0]                INI_REG_RD_DATA                         ,//(o)  [ 32]
    input       [  31:0]                INI_REG_OP_ADDR                         ,//(i)  [ 16]

    input                               TAG_WR_RDY                              ,//(i)  [ 16]
    output                              TAG_WR_REQ                              ,//(i)  [  1]
    output      [  31:0]                TAG_WR_ADDR                             ,//(o)  [ 32]
    output      [   8:0]                TAG_WR_SIZE                             ,//(o)  [ 32]
    output      [  63:0]                TAG_WR_DATA                             ,//(o)  [ 64]
    output                              TAG_WR_DVLD                             ,//(o)  [  1]
    output                              TAG_WR_SOF                              ,//(o)  [  1]
    output                              TAG_WR_EOF                              ,//(o)  [  1]

    output                              TAG_RD_RDY                              ,//(i)  [  1]
    output                              TAG_RD_REQ                              ,//(i)  [  1]
    output      [   8:0]                TAG_RD_SIZE                             ,//(i)  [ 32]
    output      [  31:0]                TAG_RD_ADDR                             ,//(i)  [ 32]
    input       [  63:0]                TAG_RD_DATA                             ,//(i)  [ 64]
    input                               TAG_RD_DVLD                             ,//(i)  [  1]
    input                               TAG_RD_SOF                              ,//(i)  [  1]
    input                               TAG_RD_EOF                              ,//(i)  [  1]

    output                              TAG_REG_WR_REQ                          ,//(i)  [  1]
    input                               TAG_REG_WR_ACK                          ,//(o)  [  1]
    output      [  31:0]                TAG_REG_WR_DATA                         ,//(i)  [ 32]
    output                              TAG_REG_RD_REQ                          ,//(i)  [  1]
    input                               TAG_REG_RD_ACK                          ,//(o)  [  1]
    input       [  31:0]                TAG_REG_RD_DATA                         ,//(o)  [ 32]
    output      [  31:0]                TAG_REG_OP_ADDR                          //(i)  [ 16]
    );

// =============================================================================
// Parameter define
// =============================================================================

// =============================================================================
// internal signal define
// =============================================================================

    wire                                s_INI_REG_TX_REQ                        ;
    wire                                s_INI_REG_TX_ACK                        ;
    wire        [  63:0]                s_INI_REG_TX_DATA                       ;
    wire                                s_INI_REG_TX_DVLD                       ;
    wire                                s_INI_REG_TX_SOP                        ;
    wire                                s_INI_REG_TX_EOP                        ;

    wire                                s_INI_WR_TX_RDY                         ;
    wire                                s_INI_WR_TX_REQ                         ;
    wire                                s_INI_WR_TX_ACK                         ;
    wire        [  63:0]                s_INI_WR_TX_DATA                        ;
    wire                                s_INI_WR_TX_DVLD                        ;
    wire                                s_INI_WR_TX_SOP                         ;
    wire                                s_INI_WR_TX_EOP                         ;

    wire                                s_INI_RD_TX_REQ                         ;
    wire                                s_INI_RD_TX_ACK                         ;
    wire        [  63:0]                s_INI_RD_TX_DATA                        ;
    wire                                s_INI_RD_TX_DVLD                        ;
    wire                                s_INI_RD_TX_SOP                         ;
    wire                                s_INI_RD_TX_EOP                         ;

    wire                                s_INI_TX_RDY                            ;
    wire                                s_INI_TX_SOP                            ;
    wire                                s_INI_TX_EOP                            ;
    wire                                s_INI_TX_DVLD                           ;
    wire        [  63:0]                s_INI_TX_DATA                           ;

    wire                                s_INI_RX_SOP                            ;
    wire                                s_INI_RX_EOP                            ;
    wire                                s_INI_RX_DVLD                           ;
    wire        [  63:0]                s_INI_RX_DATA                           ;

    wire                                s_TAG_RX_SOP                            ;
    wire                                s_TAG_RX_EOP                            ;
    wire                                s_TAG_RX_DVLD                           ;
    wire        [  63:0]                s_TAG_RX_DATA                           ;

    wire                                s_TAG_REG_TX_REQ                        ;
    wire                                s_TAG_REG_TX_ACK                        ;
    wire        [  63:0]                s_TAG_REG_TX_DATA                       ;
    wire                                s_TAG_REG_TX_DVLD                       ;
    wire                                s_TAG_REG_TX_SOP                        ;
    wire                                s_TAG_REG_TX_EOP                        ;

    wire                                s_TAG_DMA_TX_RDY                        ;
    wire                                s_TAG_DMA_TX_REQ                        ;
    wire                                s_TAG_DMA_TX_ACK                        ;
    wire        [  63:0]                s_TAG_DMA_TX_DATA                       ;
    wire                                s_TAG_DMA_TX_DVLD                       ;
    wire                                s_TAG_DMA_TX_SOP                        ;
    wire                                s_TAG_DMA_TX_EOP                        ;

    wire                                s_TAG_TX_RDY                            ;
    wire                                s_TAG_TX_SOP                            ;
    wire                                s_TAG_TX_EOP                            ;
    wire                                s_TAG_TX_DVLD                           ;
    wire         [  63:0]               s_TAG_TX_DATA                           ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||               SRIO IP                                                       ||
||                                                                             ||
/+=============================================================================*/

//  srio_5gx1_support U_SRIO_IP (
//      .sys_clkp                       ( SRIO_REFCLK_P                         ),
//      .sys_clkn                       ( SRIO_REFCLK_N                         ),
//      .sys_rst                        (                                       ),
//
//      .srio_rxn0                      ( SRIO_RXN                              ),
//      .srio_rxp0                      ( SRIO_RXP                              ),
//      .srio_txn0                      ( SRIO_TXN                              ),
//      .srio_txp0                      ( SRIO_TXP                              ),
//
//      .log_clk_out                    ( SRIO_USER_CLK                         ),
//      .phy_clk_out                    (                                       ),
//      .gt_clk_out                     (                                       ),
//      .gt_pcs_clk_out                 (                                       ),
//      .drpclk_out                     (                                       ),
//      .refclk_out                     (                                       ),
//      .clk_lock_out                   (                                       ),
//      .log_rst_out                    ( SRIO_USER_RST                         ),
//      .phy_rst_out                    (                                       ),
//      .buf_rst_out                    (                                       ),
//      .cfg_rst_out                    (                                       ),
//      .gt_pcs_rst_out                 (                                       ),
//
//      .gt0_qpll_clk_out               (                                       ),
//      .gt0_qpll_out_refclk_out        (                                       ),
//
//      .s_axi_maINIr_rst               ( 1'b0                                  ),
//
//      .s_axis_ireq_tvalid             ( s_AXIS_IREQ_TVALID                    ),
//      .s_axis_ireq_tready             ( s_AXIS_IREQ_TREADY                    ),
//      .s_axis_ireq_tlast              ( s_AXIS_IREQ_TLAST                     ),
//      .s_axis_ireq_tdata              ( s_AXIS_IREQ_TDATA                     ),
//      .s_axis_ireq_tkeep              ( s_AXIS_IREQ_TKEEP                     ),
//      .s_axis_ireq_tuser              ( s_AXIS_IREQ_TUSER                     ),
//
//      .m_axis_iresp_tvalid            ( s_AXIS_IREP_TVALID                    ),
//      .m_axis_iresp_tready            ( s_AXIS_IREP_TREADY                    ),
//      .m_axis_iresp_tlast             ( s_AXIS_IREP_TLAST                     ),
//      .m_axis_iresp_tdata             ( s_AXIS_IREP_TDATA                     ),
//      .m_axis_iresp_tkeep             ( s_AXIS_IREP_TKEEP                     ),
//      .m_axis_iresp_tuser             ( s_AXIS_IREP_TUSER                     ),
//
//      .m_axis_treq_tvalid             ( s_AXIS_TREQ_TVALID                    ),
//      .m_axis_treq_tready             ( s_AXIS_TREQ_TREADY                    ),
//      .m_axis_treq_tlast              ( s_AXIS_TREQ_TLAST                     ),
//      .m_axis_treq_tdata              ( s_AXIS_TREQ_TDATA                     ),
//      .m_axis_treq_tkeep              ( s_AXIS_TREQ_TKEEP                     ),
//      .m_axis_treq_tuser              ( s_AXIS_TREQ_TUSER                     ),
//
//      .s_axis_tresp_tvalid            ( s_AXIS_TREP_TVALID                    ),
//      .s_axis_tresp_tready            ( s_AXIS_TREP_TREADY                    ),
//      .s_axis_tresp_tlast             ( s_AXIS_TREP_TLAST                     ),
//      .s_axis_tresp_tdata             ( s_AXIS_TREP_TDATA                     ),
//      .s_axis_tresp_tkeep             ( s_AXIS_TREP_TKEEP                     ),
//      .s_axis_tresp_tuser             ( s_AXIS_TREP_TUSER                     ),
//
//      .s_axi_maINIr_awvalid           ( s_AXI_MAINIR_AWVALID                  ),
//      .s_axi_maINIr_awready           ( s_AXI_MAINIR_AWREADY                  ),
//      .s_axi_maINIr_awaddr            ( s_AXI_MAINIR_AWADDR                   ),
//      .s_axi_maINIr_wvalid            ( s_AXI_MAINIR_WVALID                   ),
//      .s_axi_maINIr_wready            ( s_AXI_MAINIR_WREADY                   ),
//      .s_axi_maINIr_wdata             ( s_AXI_MAINIR_WDATA                    ),
//      .s_axi_maINIr_bvalid            ( s_AXI_MAINIR_BVALID                   ),
//      .s_axi_maINIr_bready            ( s_AXI_MAINIR_BREADY                   ),
//      .s_axi_maINIr_bresp             ( s_AXI_MAINIR_BRESP                    ),
//
//      .s_axi_maINIr_arvalid           ( s_AXI_MAINIR_ARVALID                  ),
//      .s_axi_maINIr_arready           ( s_AXI_MAINIR_ARREADY                  ),
//      .s_axi_maINIr_araddr            ( s_AXI_MAINIR_ARADDR                   ),
//      .s_axi_maINIr_rvalid            ( s_AXI_MAINIR_RVALID                   ),
//      .s_axi_maINIr_rready            ( s_AXI_MAINIR_RREADY                   ),
//      .s_axi_maINIr_rdata             ( s_AXI_MAINIR_RDATA                    ),
//      .s_axi_maINIr_rresp             ( s_AXI_MAINIR_RRESP                    ),
//
//      .sim_train_en                   ( 1'b0                                  ),
//      .force_reinit                   ( 1'b0                                  ),
//      .phy_mce                        ( 1'b0                                  ),
//      .phy_link_reset                 ( 1'b0                                  ),
//
//      .phy_rcvd_mce                   (                                       ),
//      .phy_rcvd_link_reset            (                                       ),
//      .phy_debug                      (                                       ),
//      .gtrx_disperr_or                (                                       ),
//      .gtrx_notINIable_or             (                                       ),
//
//      .port_error                     (                                       ),
//      .port_timeout                   (                                       ),
//      .srio_host                      (                                       ),
//      .port_decode_error              (                                       ),
//      .deviceid                       ( s_DEVICEID                            ),
//      .idle2_selected                 (                                       ),
//
//      .phy_lcl_master_enable_out      (                                       ),
//      .buf_lcl_response_only_out      (                                       ),
//      .buf_lcl_tx_flow_control_out    (                                       ),
//      .buf_lcl_phy_buf_stat_out       (                                       ),
//      .phy_lcl_phy_next_fm_out        (                                       ),
//      .phy_lcl_phy_last_ack_out       (                                       ),
//      .phy_lcl_phy_rewind_out         (                                       ),
//      .phy_lcl_phy_rcvd_buf_stat_out  (                                       ),
//      .phy_lcl_maINI_only_out         (                                       ),
//
//      .port_initialized               (                                       ),
//      .link_initialized               ( s_SRIO_LINK                           ),
//      .idle_selected                  (                                       ),
//      .mode_1x                        (                                       )
//  );

/*=============================================================================+/
||                                                                             ||
||               INI_TX CONTROL                                                ||
||                                                                             ||
/+=============================================================================*/

    INI_REG_TX U_INI_REG_TX (
        .CLK                            ( USR_CLK                               ),
        .RST                            ( USR_RST                               ),

        .REG_WR_REQ                     ( INI_REG_WR_REQ                        ),
        .REG_WR_ACK                     ( INI_REG_WR_ACK                        ),
        .REG_WR_DATA                    ( INI_REG_WR_DATA                       ),
        .REG_RD_REQ                     ( INI_REG_RD_REQ                        ),
        .REG_RD_ACK                     ( INI_REG_RD_ACK                        ),
        .REG_OP_ADDR                    ( INI_REG_OP_ADDR                       ),

        .REG_TX_REQ                     ( s_INI_REG_TX_REQ                      ),
        .REG_TX_ACK                     ( s_INI_REG_TX_ACK                      ),
        .REG_TX_DATA                    ( s_INI_REG_TX_DATA                     ),
        .REG_TX_DVLD                    ( s_INI_REG_TX_DVLD                     ),
        .REG_TX_SOP                     ( s_INI_REG_TX_SOP                      ),
        .REG_TX_EOP                     ( s_INI_REG_TX_EOP                      )
    );

    INI_DMA_WR U_INI_DMA_WR (
        .CLK                            ( USR_CLK                               ),
        .RST                            ( USR_RST                               ),

        .DMA_WR_RDY                     ( INI_WR_RDY                            ),
        .DMA_WR_REQ                     ( INI_WR_REQ                            ),
        .DMA_WR_ADDR                    ( INI_WR_ADDR                           ),
        .DMA_WR_SIZE                    ( INI_WR_SIZE                           ),
        .DMA_WR_DATA                    ( INI_WR_DATA                           ),
        .DMA_WR_DVLD                    ( INI_WR_DVLD                           ),
        .DMA_WR_SOF                     ( INI_WR_SOF                            ),
        .DMA_WR_EOF                     ( INI_WR_EOF                            ),

        .DMA_WR_TX_RDY                  ( s_INI_WR_TX_RDY                       ),
        .DMA_WR_TX_REQ                  ( s_INI_WR_TX_REQ                       ),
        .DMA_WR_TX_ACK                  ( s_INI_WR_TX_ACK                       ),
        .DMA_WR_TX_DATA                 ( s_INI_WR_TX_DATA                      ),
        .DMA_WR_TX_DVLD                 ( s_INI_WR_TX_DVLD                      ),
        .DMA_WR_TX_SOP                  ( s_INI_WR_TX_SOP                       ),
        .DMA_WR_TX_EOP                  ( s_INI_WR_TX_EOP                       )
    );

    INI_DMA_RD U_INI_DMA_RD (
        .CLK                            ( USR_CLK                               ),
        .RST                            ( USR_RST                               ),

        .DMA_RD_REQ                     ( INI_RD_REQ                            ),
        .DMA_RD_ADDR                    ( INI_RD_ADDR                           ),
        .DMA_RD_SIZE                    ( INI_RD_SIZE                           ),

        .DMA_RD_TX_REQ                  ( s_INI_RD_TX_REQ                       ),
        .DMA_RD_TX_ACK                  ( s_INI_RD_TX_ACK                       ),
        .DMA_RD_TX_DATA                 ( s_INI_RD_TX_DATA                      ),
        .DMA_RD_TX_DVLD                 ( s_INI_RD_TX_DVLD                      ),
        .DMA_RD_TX_SOP                  ( s_INI_RD_TX_SOP                       ),
        .DMA_RD_TX_EOP                  ( s_INI_RD_TX_EOP                       )
    );

   ARBITA_CH6 U_ARBITA_TX0 (
        .CLK                            ( USR_CLK                               ),
        .RST                            ( USR_RST                               ),

        .ARBIT_RDY                      ( s_INI_TX_RDY                          ),
        .ARBIT_SOP                      ( s_INI_TX_SOP                          ),
        .ARBIT_EOP                      ( s_INI_TX_EOP                          ),
        .ARBIT_DVLD                     ( s_INI_TX_DVLD                         ),
        .ARBIT_DATA                     ( s_INI_TX_DATA                         ),

        .CHX_RDY                        ( s_INI_WR_TX_RDY                       ),

        .CH0_REQ                        ( s_INI_REG_TX_REQ                      ),
        .CH0_ACK                        ( s_INI_REG_TX_ACK                      ),
        .CH0_DATA                       ( s_INI_REG_TX_DATA                     ),
        .CH0_DVLD                       ( s_INI_REG_TX_DVLD                     ),
        .CH0_SOP                        ( s_INI_REG_TX_SOP                      ),
        .CH0_EOP                        ( s_INI_REG_TX_EOP                      ),

        .CH1_REQ                        ( s_INI_WR_TX_REQ                       ),
        .CH1_ACK                        ( s_INI_WR_TX_ACK                       ),
        .CH1_DATA                       ( s_INI_WR_TX_DATA                      ),
        .CH1_DVLD                       ( s_INI_WR_TX_DVLD                      ),
        .CH1_SOP                        ( s_INI_WR_TX_SOP                       ),
        .CH1_EOP                        ( s_INI_WR_TX_EOP                       ),

        .CH2_REQ                        ( s_INI_RD_TX_REQ                       ),
        .CH2_ACK                        ( s_INI_RD_TX_ACK                       ),
        .CH2_DATA                       ( s_INI_RD_TX_DATA                      ),
        .CH2_DVLD                       ( s_INI_RD_TX_DVLD                      ),
        .CH2_SOP                        ( s_INI_RD_TX_SOP                       ),
        .CH2_EOP                        ( s_INI_RD_TX_EOP                       ),

        .CH3_REQ                        ( 1'b0                                  ),
        .CH3_ACK                        (                                       ),
        .CH3_DATA                       ( 64'b0                                 ),
        .CH3_DVLD                       ( 1'b0                                  ),
        .CH3_SOP                        ( 1'b0                                  ),
        .CH3_EOP                        ( 1'b0                                  ),

        .CH4_REQ                        ( 1'b0                                  ),
        .CH4_ACK                        (                                       ),
        .CH4_DATA                       ( 64'b0                                 ),
        .CH4_DVLD                       ( 1'b0                                  ),
        .CH4_SOP                        ( 1'b0                                  ),
        .CH4_EOP                        ( 1'b0                                  ),

        .CH5_REQ                        ( 1'b0                                  ),
        .CH5_ACK                        (                                       ),
        .CH5_DATA                       ( 64'b0                                 ),
        .CH5_DVLD                       ( 1'b0                                  ),
        .CH5_SOP                        ( 1'b0                                  ),
        .CH5_EOP                        ( 1'b0                                  )
        );

    SRIO_TX U_INI_TX (
        .SRIO_CLK                       ( SRIO_CLK                              ),
        .SRIO_RST                       ( SRIO_RST                              ),
        .USER_CLK                       ( USR_CLK                               ),
        .USER_RST                       ( USR_RST                               ),

        .SRIO_TX_RDY                    ( s_INI_TX_RDY                          ),
        .SRIO_TX_SOP                    ( s_INI_TX_SOP                          ),
        .SRIO_TX_EOP                    ( s_INI_TX_EOP                          ),
        .SRIO_TX_DVLD                   ( s_INI_TX_DVLD                         ),
        .SRIO_TX_DATA                   ( s_INI_TX_DATA                         ),

        .AXI_TX_DATA                    ( AXIS_TX_IDATA                         ),
        .AXI_TX_KEEP                    ( AXIS_TX_IKEEP                         ),
        .AXI_TX_VALID                   ( AXIS_TX_IVALID                        ),
        .AXI_TX_LAST                    ( AXIS_TX_ILAST                         ),
        .AXI_TX_READY                   ( AXIS_TX_IREADY                        ),
        .AXI_TX_USER                    ( AXIS_TX_IUSER                         )
    );

/*=============================================================================+/
||                                                                             ||
||               INI RX CONTROL                                                ||
||                                                                             ||
/+=============================================================================*/

    SRIO_RX U_INI_RX (
        .SRIO_CLK                       ( SRIO_CLK                              ),
        .SRIO_RST                       ( SRIO_RST                              ),
        .USR_CLK                        ( USR_CLK                               ),
        .USR_RST                        ( USR_RST                               ),

        .AXI_RX_DATA                    ( AXIS_RX_IDATA                         ),
        .AXI_RX_KEEP                    ( AXIS_RX_IKEEP                         ),
        .AXI_RX_VALID                   ( AXIS_RX_IVALID                        ),
        .AXI_RX_LAST                    ( AXIS_RX_ILAST                         ),
        .AXI_RX_READY                   ( AXIS_RX_IREADY                        ),
        .AXI_RX_USER                    ( AXIS_RX_IUSER                         ),

        .SRIO_RX_SOP                    ( s_INI_RX_SOP                          ),
        .SRIO_RX_EOP                    ( s_INI_RX_EOP                          ),
        .SRIO_RX_DVLD                   ( s_INI_RX_DVLD                         ),
        .SRIO_RX_DATA                   ( s_INI_RX_DATA                         )
    );

    INI_RX_DEC U_INI_RX_DEC (
        .USR_CLK                        ( USR_CLK                               ),
        .USR_RST                        ( USR_RST                               ),

        .INI_SOP                        ( s_INI_RX_SOP                          ),
        .INI_EOP                        ( s_INI_RX_EOP                          ),
        .INI_DVLD                       ( s_INI_RX_DVLD                         ),
        .INI_DATA                       ( s_INI_RX_DATA                         ),

        .REG_RD_ACK                     ( INI_REG_RD_ACK                        ),
        .REG_RD_DATA                    ( INI_REG_RD_DATA                       ),

        .INI_RD_DATA                    ( INI_RD_DATA                           ),
        .INI_RD_DVLD                    ( INI_RD_DVLD                           ),
        .INI_RD_SOF                     ( INI_RD_SOF                            ),
        .INI_RD_EOF                     ( INI_RD_EOF                            )
    );

/*=============================================================================+/
||                                                                             ||
||               TAG RX CONTROL                                                ||
||                                                                             ||
/+=============================================================================*/

    SRIO_RX U_TAG_RX (
        .SRIO_CLK                       ( SRIO_CLK                              ),
        .SRIO_RST                       ( SRIO_RST                              ),
        .USR_CLK                        ( USR_CLK                               ),
        .USR_RST                        ( USR_RST                               ),

        .AXI_RX_DATA                    ( AXIS_RX_TDATA                         ),
        .AXI_RX_KEEP                    ( AXIS_RX_TKEEP                         ),
        .AXI_RX_VALID                   ( AXIS_RX_TVALID                        ),
        .AXI_RX_LAST                    ( AXIS_RX_TLAST                         ),
        .AXI_RX_READY                   ( AXIS_RX_TREADY                        ),
        .AXI_RX_USER                    ( AXIS_RX_TUSER                         ),

        .SRIO_RX_SOP                    ( s_TAG_RX_SOP                          ),
        .SRIO_RX_EOP                    ( s_TAG_RX_EOP                          ),
        .SRIO_RX_DVLD                   ( s_TAG_RX_DVLD                         ),
        .SRIO_RX_DATA                   ( s_TAG_RX_DATA                         )
    );

    TAG_RX_DEC U_TAG_RX_DEC (
        .USR_CLK                        ( USR_CLK                               ),
        .USR_RST                        ( USR_RST                               ),

        .TAG_SOP                        ( s_TAG_RX_SOP                          ),
        .TAG_EOP                        ( s_TAG_RX_EOP                          ),
        .TAG_DVLD                       ( s_TAG_RX_DVLD                         ),
        .TAG_DATA                       ( s_TAG_RX_DATA                         ),

        .REG_WR_REQ                     ( TAG_REG_WR_REQ                        ),
        .REG_WR_ACK                     ( TAG_REG_WR_ACK                        ),
        .REG_WR_DATA                    ( TAG_REG_WR_DATA                       ),
        .REG_RD_REQ                     ( TAG_REG_RD_REQ                        ),
        .REG_RD_ACK                     ( TAG_REG_RD_ACK                        ),
        .REG_OP_ADDR                    ( TAG_REG_OP_ADDR                       ),

        .DMA_WR_RDY                     ( TAG_WR_RDY                            ),
        .DMA_WR_REQ                     ( TAG_WR_REQ                            ),
        .DMA_WR_ADDR                    ( TAG_WR_ADDR                           ),
        .DMA_WR_SIZE                    ( TAG_WR_SIZE                           ),
        .DMA_WR_DATA                    ( TAG_WR_DATA                           ),
        .DMA_WR_DVLD                    ( TAG_WR_DVLD                           ),
        .DMA_WR_SOF                     ( TAG_WR_SOF                            ),
        .DMA_WR_EOF                     ( TAG_WR_EOF                            ),

        .DMA_RD_REQ                     ( TAG_RD_REQ                            ),
        .DMA_RD_SIZE                    ( TAG_RD_SIZE                           ),
        .DMA_RD_ADDR                    ( TAG_RD_ADDR                           )
    );

/*=============================================================================+/
||                                                                             ||
||               TAG TX CONTROL                                                ||
||                                                                             ||
/+=============================================================================*/

    TAG_REG_TX  U_TAG_REG_TX (
        .CLK                            ( USR_CLK                               ),
        .RST                            ( USR_RST                               ),

        .REG_OP_ADDR                    ( TAG_REG_OP_ADDR                       ),
        .REG_RD_ACK                     ( TAG_REG_RD_ACK                        ),
        .REG_RD_DATA                    ( TAG_REG_RD_DATA                       ),

        .REG_TX_REQ                     ( s_TAG_REG_TX_REQ                      ),
        .REG_TX_ACK                     ( s_TAG_REG_TX_ACK                      ),
        .REG_TX_DATA                    ( s_TAG_REG_TX_DATA                     ),
        .REG_TX_DVLD                    ( s_TAG_REG_TX_DVLD                     ),
        .REG_TX_SOP                     ( s_TAG_REG_TX_SOP                      ),
        .REG_TX_EOP                     ( s_TAG_REG_TX_EOP                      )
    );

    TAG_DMA_TX  U_TAG_DMA_TX (
        .CLK                            ( USR_CLK                               ),
        .RST                            ( USR_RST                               ),

        .DMA_RD_RDY                     ( TAG_RD_RDY                            ),
        .DMA_RD_REQ                     ( TAG_RD_REQ                            ),
        .DMA_RD_SIZE                    ( TAG_RD_SIZE                           ),
        .DMA_RD_ADDR                    ( TAG_RD_ADDR                           ),
        .DMA_RD_DATA                    ( TAG_RD_DATA                           ),
        .DMA_RD_DVLD                    ( TAG_RD_DVLD                           ),
        .DMA_RD_SOF                     ( TAG_RD_SOF                            ),
        .DMA_RD_EOF                     ( TAG_RD_EOF                            ),

        .DMA_TX_RDY                     ( s_TAG_DMA_TX_RDY                      ),
        .DMA_TX_REQ                     ( s_TAG_DMA_TX_REQ                      ),
        .DMA_TX_ACK                     ( s_TAG_DMA_TX_ACK                      ),
        .DMA_TX_DATA                    ( s_TAG_DMA_TX_DATA                     ),
        .DMA_TX_DVLD                    ( s_TAG_DMA_TX_DVLD                     ),
        .DMA_TX_SOP                     ( s_TAG_DMA_TX_SOP                      ),
        .DMA_TX_EOP                     ( s_TAG_DMA_TX_EOP                      )
    );

   ARBITA_CH6 U_ARBITA_TX1 (
        .CLK                            ( USR_CLK                               ),
        .RST                            ( USR_RST                               ),

        .ARBIT_RDY                      ( s_TAG_TX_RDY                          ),
        .ARBIT_SOP                      ( s_TAG_TX_SOP                          ),
        .ARBIT_EOP                      ( s_TAG_TX_EOP                          ),
        .ARBIT_DVLD                     ( s_TAG_TX_DVLD                         ),
        .ARBIT_DATA                     ( s_TAG_TX_DATA                         ),

        .CHX_RDY                        ( s_TAG_DMA_TX_RDY                      ),

        .CH0_REQ                        ( s_TAG_REG_TX_REQ                      ),
        .CH0_ACK                        ( s_TAG_REG_TX_ACK                      ),
        .CH0_DATA                       ( s_TAG_REG_TX_DATA                     ),
        .CH0_DVLD                       ( s_TAG_REG_TX_DVLD                     ),
        .CH0_SOP                        ( s_TAG_REG_TX_SOP                      ),
        .CH0_EOP                        ( s_TAG_REG_TX_EOP                      ),

        .CH1_REQ                        ( s_TAG_DMA_TX_REQ                      ),
        .CH1_ACK                        ( s_TAG_DMA_TX_ACK                      ),
        .CH1_DATA                       ( s_TAG_DMA_TX_DATA                     ),
        .CH1_DVLD                       ( s_TAG_DMA_TX_DVLD                     ),
        .CH1_SOP                        ( s_TAG_DMA_TX_SOP                      ),
        .CH1_EOP                        ( s_TAG_DMA_TX_EOP                      ),

        .CH2_REQ                        ( 1'b0                                  ),
        .CH2_ACK                        (                                       ),
        .CH2_DATA                       ( 64'b0                                 ),
        .CH2_DVLD                       ( 1'b0                                  ),
        .CH2_SOP                        ( 1'b0                                  ),
        .CH2_EOP                        ( 1'b0                                  ),

        .CH3_REQ                        ( 1'b0                                  ),
        .CH3_ACK                        (                                       ),
        .CH3_DATA                       ( 64'b0                                 ),
        .CH3_DVLD                       ( 1'b0                                  ),
        .CH3_SOP                        ( 1'b0                                  ),
        .CH3_EOP                        ( 1'b0                                  ),

        .CH4_REQ                        ( 1'b0                                  ),
        .CH4_ACK                        (                                       ),
        .CH4_DATA                       ( 64'b0                                 ),
        .CH4_DVLD                       ( 1'b0                                  ),
        .CH4_SOP                        ( 1'b0                                  ),
        .CH4_EOP                        ( 1'b0                                  ),

        .CH5_REQ                        ( 1'b0                                  ),
        .CH5_ACK                        (                                       ),
        .CH5_DATA                       ( 64'b0                                 ),
        .CH5_DVLD                       ( 1'b0                                  ),
        .CH5_SOP                        ( 1'b0                                  ),
        .CH5_EOP                        ( 1'b0                                  )
        );

    SRIO_TX U_TAG_TX (
        .SRIO_CLK                       ( SRIO_CLK                              ),
        .SRIO_RST                       ( SRIO_RST                              ),
        .USER_CLK                       ( USR_CLK                               ),
        .USER_RST                       ( USR_RST                               ),

        .SRIO_TX_RDY                    ( s_TAG_TX_RDY                          ),
        .SRIO_TX_SOP                    ( s_TAG_TX_SOP                          ),
        .SRIO_TX_EOP                    ( s_TAG_TX_EOP                          ),
        .SRIO_TX_DVLD                   ( s_TAG_TX_DVLD                         ),
        .SRIO_TX_DATA                   ( s_TAG_TX_DATA                         ),

        .AXI_TX_DATA                    ( AXIS_TX_TDATA                         ),
        .AXI_TX_KEEP                    ( AXIS_TX_TKEEP                         ),
        .AXI_TX_VALID                   ( AXIS_TX_TVALID                        ),
        .AXI_TX_LAST                    ( AXIS_TX_TLAST                         ),
        .AXI_TX_READY                   ( AXIS_TX_TREADY                        ),
        .AXI_TX_USER                    ( AXIS_TX_TUSER                         )
    );

endmodule