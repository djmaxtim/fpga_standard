// =================================================================================================
// File Name      : int_dma_rd.v
// Module         : INT_DMA_RD
// Function       : Initiator DMA read module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      2025/04/16   stark.ye          Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module INI_DMA_RD (
    //CLK RST
    input                               CLK                                     ,//(i) [  1]
    input                               RST                                     ,//(i) [  1]

    //signal
    input                               DMA_RD_REQ                              ,//(i) [  1]
    output      [  31:0]                DMA_RD_ADDR                             ,//(o) [  1]
    input       [   8:0]                DMA_RD_SIZE                             ,//(i) [ 32]

    //signal
    output                              DMA_RD_TX_REQ                           ,//(o) [  1]
    input                               DMA_RD_TX_ACK                           ,//(i) [  1]
    output      [  63:0]                DMA_RD_TX_DATA                          ,//(o) [ 32]
    output                              DMA_RD_TX_DVLD                          ,//(o) [  1]
    output                              DMA_RD_TX_SOP                           ,//(o) [  1]
    output                              DMA_RD_TX_EOP                            //(o) [  1]
    );

// =============================================================================
// Parameter define
// =============================================================================

    parameter                           p_SRC_ID            = 8'h00             ;//(p) [ 8]

    parameter                           p_TYPE_NWRITE       = 8'h54             ;//(p) [ 8]
    parameter                           p_TYPE_SWRITE       = 8'h60             ;//(p) [ 8]
    parameter                           p_TYPE_NREAD        = 8'h24             ;//(p) [ 8]
    parameter                           p_TYPE_RESPONE      = 8'hD8             ;//(p) [ 8]

    localparam                          p_IDLE              = 3'b001            ;//(p) [ 3]
    localparam                          p_REQ               = 3'b010            ;//(p) [ 3]
    localparam                          p_TX                = 3'b100            ;//(p) [ 3]

// =============================================================================
// Internal signal define
// =============================================================================

    reg                                 r_CBUF_WEN                              ;
    reg         [  63:0]                r_CBUF_WDT                              ;
    reg                                 r_CBUF_REN                              ;
    wire        [  63:0]                s_CBUF_RDT                              ;
    wire                                s_CBUF_EMPTY                            ;

    wire                                s_DMA_RD_RDY                            ;

    reg         [   2:0]                r_FSM                                   ;
    wire                                s_FSM_REQ                               ;

    reg                                 r_DMA_RD_TX_REQ                         ;
    reg         [  31:0]                r_DMA_RD_ADDR                           ;
    reg         [   7:0]                r_DMA_RD_SIZE                           ;
    wire        [   7:0]                s_DMA_RD_SIZE                           ;
    wire        [  63:0]                s_DMA_RD_TX_HEAD                        ;
    reg                                 r_DMA_RD_TX_ACK_DFF1                    ;

    reg                                 r_DMA_RD_TX_SOP                         ;
    reg                                 r_DMA_RD_TX_EOP                         ;
    reg                                 r_DMA_RD_TX_DVLD                        ;
    reg         [  63:0]                r_DMA_RD_TX_DATA                        ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||               Output                                                        ||
||                                                                             ||
/+=============================================================================*/

    assign DMA_RD_TX_REQ                = r_DMA_RD_TX_REQ                       ;
    assign DMA_RD_TX_DATA               = r_DMA_RD_TX_DATA                      ;
    assign DMA_RD_TX_DVLD               = r_DMA_RD_TX_DVLD                      ;
    assign DMA_RD_TX_SOP                = r_DMA_RD_TX_SOP                       ;
    assign DMA_RD_TX_EOP                = r_DMA_RD_TX_EOP                       ;

/*=============================================================================+/
||                                                                             ||
||                         Reigster info buffer                                ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_CBUF_WEN                  <= 'b0 ;
            r_CBUF_WDT                  <= 'b0 ;
        end else begin
            r_CBUF_WEN                  <= DMA_RD_REQ  ;
            r_CBUF_WDT[31: 0]           <= DMA_RD_ADDR ;
            r_CBUF_WDT[63:32]           <= {23'h0 , DMA_RD_SIZE} ;
        end
    end

    sfifo_i64o64_d512 U_CBUF (
        .srst                           ( RST                                   ),
        .clk                            ( CLK                                   ),

        .wr_en                          ( r_CBUF_WEN                            ),
        .din                            ( r_CBUF_WDT                            ),
        .full                           (                                       ),

        .rd_en                          ( r_CBUF_REN                            ),
        .dout                           ( s_CBUF_RDT                            ),
        .data_count                     (                                       ),
        .empty                          ( s_CBUF_EMPTY                          )
        );

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_CBUF_REN                  <= 'b0 ;
        end else begin
            r_CBUF_REN                  <= DMA_RD_TX_ACK ;
        end
    end

    assign  s_DMA_RD_RDY                = (~s_CBUF_EMPTY) ;

/*=============================================================================+/
||                                                                             ||
||              FSM                                                            ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM                       <= p_IDLE ;
        end else begin
            case (r_FSM)
                p_IDLE :
                    if (s_DMA_RD_RDY) begin
                        r_FSM           <= p_REQ ;
                    end else begin
                        r_FSM           <= p_IDLE ;
                    end

                p_REQ :
                    if (DMA_RD_TX_ACK) begin
                        r_FSM           <= p_TX ;
                    end else begin
                        r_FSM           <= p_REQ ;
                    end

                p_TX :
                    begin
                        if (r_DMA_RD_TX_EOP) begin
                            r_FSM       <= p_IDLE ;
                        end else begin
                            r_FSM       <= p_TX ;
                        end
                    end

                default :
                    r_FSM               <= p_IDLE ;
            endcase
        end
    end

    assign s_ST_REQ                     = r_FSM[1] ;

/*==========================================================================+/
||                                                                          ||
||              Reigster  packet generate                                   ||
||                                                                          ||
/+==========================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DMA_RD_TX_REQ             <= 1'b0 ;
        end else begin
            r_DMA_RD_TX_REQ             <= s_ST_REQ ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DMA_RD_ADDR               <= 'b0 ;
            r_DMA_RD_SIZE               <= 'b0 ;
        end else begin
            if (DMA_RD_TX_ACK) begin
                r_DMA_RD_ADDR           <= s_CBUF_RDT[31: 0] ;
                r_DMA_RD_SIZE           <= s_CBUF_RDT[40:32] ;
            end
        end
    end

    assign s_DMA_RD_SIZE                = r_DMA_RD_SIZE - 1'b1 ;

    assign s_DMA_RD_TX_HEAD             = {
                                           p_SRC_ID         , //[63:56] Source ID
                                           p_TYPE_NREAD     , //[55:48] type
                                           1'b0             , //[   47] R
                                           2'b0             , //[46:45] prio
                                           1'b0             , //[   44] CRF
                                           s_DMA_RD_SIZE             , //[43:36] size - 1'b1
                                           2'b0             , //[35:34] R
                                           2'b0             , //[33:32] addr
                                           r_DMA_RD_ADDR      //[31 :0] addr
                                           } ;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DMA_RD_TX_ACK_DFF1        <= 'b0 ;
        end else begin
            r_DMA_RD_TX_ACK_DFF1        <= DMA_RD_TX_ACK           ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DMA_RD_TX_SOP             <= 'b0 ;
            r_DMA_RD_TX_EOP             <= 'b0 ;
            r_DMA_RD_TX_DVLD            <= 'b0 ;
            r_DMA_RD_TX_DATA            <= 'b0 ;
        end else begin
            if (r_DMA_RD_TX_ACK_DFF1) begin
                r_DMA_RD_TX_SOP         <= 1'b1             ;
                r_DMA_RD_TX_EOP         <= 1'b0             ;
                r_DMA_RD_TX_DVLD        <= 1'b1             ;
                r_DMA_RD_TX_DATA        <= s_DMA_RD_TX_HEAD    ;
            end else begin
                r_DMA_RD_TX_SOP         <= 'b0 ;
                r_DMA_RD_TX_EOP         <= 'b0 ;
                r_DMA_RD_TX_DVLD        <= 'b0 ;
                r_DMA_RD_TX_DATA        <= 'b0 ;
            end
        end
    end

endmodule