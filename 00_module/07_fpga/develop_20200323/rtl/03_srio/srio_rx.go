// =================================================================================================
// File Name      : srio_rx.v
// Module         : SRIO_RX
// Function       : SRIO receive module
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

module SRIO_RX (
    //clock reset
    input                               SRIO_CLK                                ,//(i)  [  1]
    input                               SRIO_RST                                ,//(i)  [  1]
    input                               USR_CLK                                 ,//(i)  [  1]
    input                               USR_RST                                 ,//(i)  [  1]

    //SRIO rx
    input       [  63:0]                AXI_RX_DATA                             ,//(i) [ 63]
    input       [   7:0]                AXI_RX_KEEP                             ,//(i) [  8]
    input                               AXI_RX_VALID                            ,//(i) [  1]
    input                               AXI_RX_LAST                             ,//(i) [  1]
    output                              AXI_RX_READY                            ,//(i) [  1]
    input       [  31:0]                AXI_RX_USER                             ,//(i) [  1]

    //SRIO rx
    output                              SRIO_RX_SOP                             ,//(o) [  1]
    output                              SRIO_RX_EOP                             ,//(o) [  1]
    output                              SRIO_RX_DVLD                            ,//(o) [  1]
    output      [  63:0]                SRIO_RX_DATA                             //(o) [ 64]
    );

// =============================================================================
// Internal Signal Declare
// =============================================================================

    reg                                 r_AXI_RX_TFRIST                         ;//(r)  [  1]
    reg                                 r_RX_ST_SOP                             ;//(r)  [  1]
    reg                                 r_RX_ST_EOP                             ;//(r)  [  1]
    reg                                 r_RX_ST_DVLD                            ;//(r)  [  1]
    reg         [  63:0]                r_RX_ST_DATA                            ;//(r)  [ 64]
    wire        [  63:0]                s_RX_READY                              ;//(r)  [ 64]

    reg                                 r_BUF_WEN                               ;//(r)  [  1]
    reg         [  71:0]                r_BUF_WDT                               ;//(r)  [ 72]
    wire                                s_BUF_RDY                               ;//(r)  [  4]

    wire                                s_BUF_REN                               ;//(s)  [  1]
    reg                                 r_BUF_REN                               ;//(r)  [  1]
    wire        [  71:0]                s_BUF_RDT                               ;//(s)  [ 72]
    wire                                s_BUF_EMPTY                             ;//(s)  [  1]
    wire                                s_BUF_AEMPTY                            ;//(s)  [  1]
    reg         [   3:0]                r_BUF_RSHFT                             ;//(r)  [  4]
    wire        [  10:0]                s_BUF_WCNT                              ;//(r)  [  4]


    reg                                 r_SRIO_RX_SOP                           ;//(r)  [  1]
    reg                                 r_SRIO_RX_EOP                           ;//(r)  [  1]
    reg                                 r_SRIO_RX_DVLD                          ;//(r)  [  1]
    reg         [  63:0]                r_SRIO_RX_DATA                          ;//(r)  [ 64]

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||                          Output Port                                        ||
||                                                                             ||
/+=============================================================================*/

    assign  AXI_RX_READY                = s_BUF_RDY                             ;

    assign  SRIO_RX_SOP                 = r_SRIO_RX_SOP                         ;
    assign  SRIO_RX_EOP                 = r_SRIO_RX_EOP                         ;
    assign  SRIO_RX_DVLD                = r_SRIO_RX_DVLD                        ;
    assign  SRIO_RX_DATA                = r_SRIO_RX_DATA                        ;

/*=============================================================================+/
||                                                                             ||
||                                Input DFF                                    ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge SRIO_CLK or posedge SRIO_RST) begin
        if (SRIO_RST) begin
            r_AXI_RX_TFRIST             <= 1'b1 ;
        end else begin
            if (AXI_RX_VALID) begin
                r_AXI_RX_TFRIST         <= AXI_RX_LAST ;
            end
        end
    end

    always @(posedge SRIO_CLK or posedge SRIO_RST) begin
        if (SRIO_RST) begin
            r_RX_ST_SOP                 <= 'b0 ;
            r_RX_ST_EOP                 <= 'b0 ;
            r_RX_ST_DVLD                <= 'b0 ;
            r_RX_ST_DATA                <= 'b0 ;
        end else begin
            r_RX_ST_SOP                 <= AXI_RX_VALID & r_AXI_RX_TFRIST  ;
            r_RX_ST_EOP                 <= AXI_RX_VALID &   AXI_RX_LAST    ;
            r_RX_ST_DVLD                <= AXI_RX_VALID                    ;
            r_RX_ST_DATA                <= AXI_RX_DATA                     ;
        end
    end

/*=============================================================================+/
||                                                                             ||
||                                Data Buffer                                  ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge SRIO_CLK or posedge SRIO_RST) begin
        if (SRIO_RST) begin
            r_BUF_WEN                   <= 'b0 ;
        end else begin
            r_BUF_WEN                   <= r_RX_ST_DVLD ;
        end
    end

    always @(posedge SRIO_CLK or posedge SRIO_RST) begin
        if (SRIO_RST) begin
            r_BUF_WDT                   <= 'd0 ;
        end else begin
            r_BUF_WDT                   <= {6'h0,r_RX_ST_SOP,r_RX_ST_EOP,r_RX_ST_DATA} ;
        end
    end

    assign s_BUF_RDY                    = ~s_BUF_WCNT[10] ;

    afifo_i72o72_d2048 U_SRIO_DBUF (
        .rst                            ( SRIO_RST           ),
        .wr_clk                         ( SRIO_CLK           ),
        .rd_clk                         ( USR_CLK           ),
        .wr_en                          ( r_BUF_WEN          ),
        .din                            ( r_BUF_WDT          ),
        .rd_en                          ( r_BUF_REN          ),
        .dout                           ( s_BUF_RDT          ),
        .full                           (                    ),
        .almost_full                    (                    ),
        .empty                          ( s_BUF_EMPTY        ),
        .almost_empty                   ( s_BUF_AEMPTY       ),
        .rd_data_count                  (                    ),
        .wr_data_count                  ( s_BUF_WCNT         ),
        .wr_rst_busy                    (                    ),
        .rd_rst_busy                    (                    )
        );

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_BUF_RSHFT                 <= 4'b0001 ;
        end else begin
            if (s_BUF_AEMPTY == 1'b0) begin
                r_BUF_RSHFT             <= 4'b0001 ;
            end else begin
                r_BUF_RSHFT             <= {r_BUF_RSHFT[2:0], r_BUF_RSHFT[3]} ;
            end
        end
    end

    assign s_BUF_REN                    = (s_BUF_AEMPTY == 1'b1) ? r_BUF_RSHFT[3] : 1'b1 ;

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_BUF_REN                   <= 1'b0 ;
        end else begin
            r_BUF_REN                   <= s_BUF_REN & (~s_BUF_EMPTY) ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_SRIO_RX_SOP               <= 'b0 ;
            r_SRIO_RX_EOP               <= 'b0 ;
            r_SRIO_RX_DVLD              <= 'b0 ;
            r_SRIO_RX_DATA              <= 'b0 ;
        end else begin
            r_SRIO_RX_SOP               <= s_BUF_RDT[65] & r_BUF_REN  ;
            r_SRIO_RX_EOP               <= s_BUF_RDT[64] & r_BUF_REN  ;
            r_SRIO_RX_DVLD              <=                 r_BUF_REN  ;
            r_SRIO_RX_DATA              <= s_BUF_RDT[63:0]            ;
        end
    end

endmodule