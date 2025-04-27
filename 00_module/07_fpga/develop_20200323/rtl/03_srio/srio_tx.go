// =================================================================================================
// File Name      : srio_tx.v
// Module         : SRIO_TX
// Function       : SRIO transmit module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.Level    Date         Coded by          Contents            Comp
// 0.0.1        2025/04/16   stark.ye          create new
// =================================================================================================
// End Revision
// =================================================================================================

`timescale 1ps / 1ps

module SRIO_TX (
    //clock reset
    input                               SRIO_CLK                                ,//(i)  [  1]
    input                               SRIO_RST                                ,//(i)  [  1]
    input                               USER_CLK                                ,//(i)  [  1]
    input                               USER_RST                                ,//(i)  [  1]
    //SRIO rx
    output      [  63:0]                AXI_TX_DATA                             ,//(o) [ 63]
    output      [   7:0]                AXI_TX_KEEP                             ,//(o) [  8]
    output                              AXI_TX_VALID                            ,//(o) [  1]
    output                              AXI_TX_LAST                             ,//(o) [  1]
    output      [  31:0]                AXI_TX_USER                             ,//(o) [  1]
    input                               AXI_TX_READY                            ,//(i) [  1]

    //SRIO rx
    output                              SRIO_TX_RDY                              ,//(o) [  1]
    input                               SRIO_TX_SOP                              ,//(i) [  1]
    input                               SRIO_TX_EOP                              ,//(i) [  1]
    input                               SRIO_TX_DVLD                             ,//(i) [  1]
    input       [  63:0]                SRIO_TX_DATA                              //(i) [ 64]
    );

// =============================================================================
// Internal Signal Declare
// =============================================================================

    reg                                 r_BUF_WEN                               ;//(r)  [  1]
    reg         [  71:0]                r_BUF_WDT                               ;//(r)  [ 72]

    wire                                s_BUF_REN                               ;//(s)  [  1]
    reg                                 r_BUF_REN                               ;//(r)  [  1]
    wire        [  71:0]                s_BUF_RDT                               ;//(s)  [ 72]
    wire                                s_BUF_EMPTY                             ;//(s)  [  1]
    wire                                s_BUF_AEMPTY                            ;//(s)  [  1]
    wire        [  10:0]                s_BUF_WDCNT                             ;//(s)  [ 12]
    reg         [   3:0]                r_BUF_RSHFT                             ;//(r)  [  4]
    reg                                 r_SRIO_TX_RDY                            ;//(r)  [  1]

    wire                                s_AXI_TX_VALID                         ;//(s)  [  1]
    wire        [  63:0]                s_AXI_TX_DATA                          ;//(s)  [ 32]
    wire                                s_AXI_TX_LAST                          ;//(s)  [  1]
    wire        [   7:0]                s_AXI_TX_KEEP                          ;//(s)  [  4]

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||                          Output Port                                        ||
||                                                                             ||
/+=============================================================================*/

    assign  AXI_TX_DATA                 = s_AXI_TX_DATA                         ;
    assign  AXI_TX_KEEP                 = s_AXI_TX_KEEP                         ;
    assign  AXI_TX_VALID                = s_AXI_TX_VALID                        ;
    assign  AXI_TX_LAST                 = s_AXI_TX_LAST                         ;
    assign  AXI_TX_USER                 = 32'h00AD0000                          ;

    assign  SRIO_TX_RDY                  = r_SRIO_TX_RDY                        ;

/*=============================================================================+/
||                                                                             ||
||                                Data Buffer                                  ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_BUF_WEN                   <= 'b0 ;
        end else begin
            r_BUF_WEN                   <= SRIO_TX_DVLD ;
        end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_BUF_WDT                   <= 'd0 ;
        end else begin
            r_BUF_WDT                   <= {6'h0,SRIO_TX_SOP,SRIO_TX_EOP,SRIO_TX_DATA} ;
        end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_SRIO_TX_RDY               <= 1'b1 ;
        end else begin
            r_SRIO_TX_RDY               <= ~ s_BUF_WDCNT[10] ;
        end
    end

    afifo_i72o72_d2048 U_SRIO_DBUF (
        .rst                            ( SRIO_RST                              ),
        .wr_clk                         ( USER_CLK                              ),
        .rd_clk                         ( SRIO_CLK                              ),
        .wr_en                          ( r_BUF_WEN                             ),
        .din                            ( r_BUF_WDT                             ),
        .rd_en                          ( s_BUF_REN                             ),
        .dout                           ( s_BUF_RDT                             ),
        .full                           (                                       ),
        .almost_full                    (                                       ),
        .empty                          ( s_BUF_EMPTY                           ),
        .almost_empty                   ( s_BUF_AEMPTY                          ),
        .rd_data_count                  (                                       ),
        .wr_data_count                  ( s_BUF_WDCNT                           ),
        .wr_rst_busy                    (                                       ),
        .rd_rst_busy                    (                                       )
        );

    always @(posedge SRIO_CLK or posedge SRIO_RST) begin
        if (SRIO_RST) begin
            r_BUF_RSHFT                <= 4'b0001 ;
        end else begin
            if (s_BUF_AEMPTY == 1'b0) begin
                r_BUF_RSHFT             <= 4'b0001 ;
            end else begin
                r_BUF_RSHFT             <= {r_BUF_RSHFT[2:0], r_BUF_RSHFT[3]} ;
            end
        end
    end

    always @(posedge SRIO_CLK or posedge SRIO_RST) begin
        if (SRIO_RST) begin
            r_BUF_REN                   <= 1'b0 ;
        end else begin
            r_BUF_REN                   <= (s_BUF_AEMPTY == 1'b1) ? r_BUF_RSHFT[3] : 1'b1 ;
        end
    end

    assign s_BUF_REN                    = r_BUF_REN & AXI_TX_READY & (~s_BUF_EMPTY) ;

    assign s_AXI_TX_VALID              = s_BUF_REN                    ;
    assign s_AXI_TX_DATA               = s_BUF_RDT[63:0]              ;
    assign s_AXI_TX_LAST               = s_BUF_RDT[64]    & s_BUF_REN ;
    assign s_AXI_TX_KEEP               = 8'b1111_1111                 ;

endmodule