// =================================================================================================
// File Name      : ini_dma_wr.v
// Module         : INI_DMA_WR
// Function       : Initiator DMA write module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      2025/04/16   stark.ye          Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module INI_DMA_WR (
    //CLK RST
    input                               CLK                                     ,//(i) [  1]
    input                               RST                                     ,//(i) [  1]

    //signal
    output                              DMA_WR_RDY                              ,//(i) [  1]
    input                               DMA_WR_REQ                              ,//(i) [  1]
    input       [  31:0]                DMA_WR_ADDR                             ,//(i) [  1]
    input       [   8:0]                DMA_WR_SIZE                             ,//(i) [  1]
    input       [  63:0]                DMA_WR_DATA                             ,//(i) [  1]
    input                               DMA_WR_DVLD                             ,//(i) [  1]
    input                               DMA_WR_SOF                              ,//(i) [  1]
    input                               DMA_WR_EOF                              ,//(i) [  1]

    input                               DMA_WR_TX_RDY                           ,//(o) [  1]
    output                              DMA_WR_TX_REQ                           ,//(o) [  1]
    input                               DMA_WR_TX_ACK                           ,//(o) [  1]
    output      [  63:0]                DMA_WR_TX_DATA                          ,//(o) [  1]
    output                              DMA_WR_TX_DVLD                          ,//(o) [  1]
    output                              DMA_WR_TX_SOP                           ,//(o) [  1]
    output                              DMA_WR_TX_EOP                            //(o) [  1]
    );

// =============================================================================
// Parameter define
// =============================================================================

    parameter                           p_SRC_ID            = 8'h00             ;//(p) [ 8]

    parameter                           p_TYPE_NWRITE       = 8'h54             ;//(p) [ 8]
    parameter                           p_TYPE_SWRITE       = 8'h60             ;//(p) [ 8]
    parameter                           p_TYPE_NREAD        = 8'h24             ;//(p) [ 8]
    parameter                           p_TYPE_RESPONE      = 8'hD8             ;//(p) [ 8]

    localparam                          p_IDLE              = 4'b0001           ;//(p) [ 4]
    localparam                          p_REQ               = 4'b0010           ;//(p) [ 4]
    localparam                          p_HEAD              = 4'b0100           ;//(p) [ 4]
    localparam                          p_DATA              = 4'b1000           ;//(p) [ 4]

// =============================================================================
// Internal signal define
// =============================================================================

    reg                                 r_DMA_WR_RDY                            ;

    reg                                 r_CBUF_WEN                              ;
    reg         [  63:0]                r_CBUF_WDT                              ;
    reg                                 r_CBUF_REN                              ;
    wire        [  63:0]                s_CBUF_RDT                              ;
    wire                                s_CBUF_EMPTY                            ;

    reg         [   7:0]                r_DBUF_PCNT                             ;
    reg                                 r_DBUF_WEND                             ;
    reg                                 r_DBUF_WEN                              ;
    reg         [  63:0]                r_DBUF_WDT                              ;
    reg                                 r_DBUF_REN                              ;
    wire        [  63:0]                s_DBUF_RDT                              ;
    wire        [   9:0]                s_DBUF_DCNT                             ;
    reg                                 r_DBUF_RDY                              ;
    wire                                s_DBUF_EMPTY                            ;
    reg         [   9:0]                r_DBUF_RCNT                             ;
    reg                                 r_DBUF_DVLD                             ;
    reg         [  63:0]                r_DBUF_DATA                             ;
    wire                                s_DBUF_REND                             ;

    reg         [   3:0]                r_FSM                                   ;
    wire                                s_ST_IDLE                               ;
    wire                                s_ST_REQ                                ;
    wire                                s_ST_HEAD                               ;
    wire                                s_ST_DATA                               ;

    reg         [  31:0]                r_DMA_WR_TX_ADDR                        ;
    reg         [   7:0]                r_DMA_WR_TX_SIZE                        ;
    wire        [   7:0]                s_DMA_WR_TX_SIZE                        ;
    wire        [  63:0]                s_DMA_WR_TX_HEAD                        ;

    reg                                 r_DMA_WR_TX_REQ                         ;
    reg                                 r_DMA_WR_TX_SOP                         ;
    reg                                 r_DMA_WR_TX_EOP                         ;
    reg                                 r_DMA_WR_TX_DVLD                        ;
    reg         [  63:0]                r_DMA_WR_TX_DATA                        ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||               Output                                                        ||
||                                                                             ||
/+=============================================================================*/

    assign  DMA_WR_RDY                  = r_DMA_WR_RDY                          ;//(i)  [  1]

    assign  DMA_WR_TX_REQ               = r_DMA_WR_TX_REQ                       ;//(o)  [  1]
    assign  DMA_WR_TX_DATA              = r_DMA_WR_TX_DATA                      ;//(o)  [ 64]
    assign  DMA_WR_TX_DVLD              = r_DMA_WR_TX_DVLD                      ;//(o)  [  1]
    assign  DMA_WR_TX_SOP               = r_DMA_WR_TX_SOP                       ;//(o)  [  1]
    assign  DMA_WR_TX_EOP               = r_DMA_WR_TX_EOP                       ;//(o)  [  1]

/*=============================================================================+/
||                                                                             ||
||                         DMA write info buffer                               ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_CBUF_WEN                  <= 'b0 ;
            r_CBUF_WDT                  <= 'b0 ;
        end else begin
            r_CBUF_WEN                  <= DMA_WR_REQ  ;
            r_CBUF_WDT[31 : 0]          <= DMA_WR_ADDR ;
            r_CBUF_WDT[63 :32]          <= {23'h0 , DMA_WR_SIZE} ;
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
            r_CBUF_REN                  <= DMA_WR_TX_ACK ;
        end
    end

/*=============================================================================+/
||                                                                             ||
||                         DMA write data buffer                               ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_WEN                  <= 'b0 ;
            r_DBUF_WDT                  <= 'b0 ;
            r_DBUF_WEND                 <= 'b0 ;
        end else begin
            r_DBUF_WEN                  <= DMA_WR_DVLD ;
            r_DBUF_WDT[63:0]            <= DMA_WR_DATA ;
            r_DBUF_WEND                 <= DMA_WR_EOF ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DMA_WR_RDY                <= 'b0 ;
        end else begin
            r_DMA_WR_RDY                <= ~ s_DBUF_DCNT[9] ;
        end
    end

    sfifo_i64o64_d512 U_DBUF (
        .clk                            ( CLK                                   ),//(i)
        .srst                           ( RST                                   ),//(i)
        .wr_en                          ( r_DBUF_WEN                            ),//(i)
        .din                            ( r_DBUF_WDT                            ),//(i)
        .rd_en                          ( r_DBUF_REN                            ),//(o)
        .dout                           ( s_DBUF_RDT                            ),//(o)
        .empty                          ( s_DBUF_EMPTY                          ),//(o)
        .full                           (                                       ),//(o)
        .data_count                     ( s_DBUF_DCNT                           ) //(o)
        );

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_PCNT                 <= 8'd0 ;
        end else begin
            if (r_DBUF_WEND == 1'b1 && s_DBUF_REND == 1'b0)begin
                r_DBUF_PCNT             <= r_DBUF_PCNT + 1'b1 ;
            end else if( r_DBUF_WEND == 1'b0 && s_DBUF_REND == 1'b1)begin
                r_DBUF_PCNT             <= r_DBUF_PCNT - 1'b1 ;
            end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_RDY                  <= 1'b0 ;
        end else begin
            r_DBUF_RDY                  <= | r_DBUF_PCNT ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_RCNT                 <= 10'd0 ;
        end else begin
            if (r_CBUF_REN) begin
                r_DBUF_RCNT             <= s_CBUF_RDT[63 :35] ; // 64bit = 8byte
            end else if (r_DBUF_RCNT != 10'd0) begin
                r_DBUF_RCNT             <= r_DBUF_RCNT - 1'b1 ;
            end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_REN                  <= 'b0 ;
        end else begin
            r_DBUF_REN                  <= (| r_DBUF_RCNT) & DMA_WR_TX_RDY;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_DVLD                 <= 'b0 ;
            r_DBUF_DATA                 <= 'b0 ;
        end else begin
            r_DBUF_DVLD                 <= r_DBUF_REN       ;
            r_DBUF_DATA                 <= s_DBUF_RDT[63:0] ;
        end
    end

//  always @(posedge CLK or posedge RST) begin
//      if (RST) begin
//          r_DBUF_REND                 <= 'b0 ;
//      end else begin
//          r_DBUF_REND                 <= (~r_DBUF_REN) & r_DBUF_DVLD ;
//      end
//  end

    assign s_DBUF_REND                  = (~r_DBUF_REN) & r_DBUF_DVLD ;

/*==========================================================================+/
||                                                                          ||
||                                   FSM                                    ||
||                                                                          ||
/+==========================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM                       <= p_IDLE ;
        end else begin
            case (r_FSM)
                p_IDLE :
                    begin
                        if (r_DBUF_RDY) begin
                            r_FSM       <= p_REQ ;
                        end else begin
                            r_FSM       <= p_IDLE ;
                        end
                    end

                p_REQ :
                    begin
                        if ( r_CBUF_REN ) begin
                            r_FSM       <= p_HEAD ;
                        end else begin
                            r_FSM       <= p_REQ ;
                        end
                    end
                p_HEAD :
                    begin
                        r_FSM           <= p_DATA ;
                    end
                p_DATA :
                    begin
                        if ( r_DMA_WR_TX_EOP ) begin
                            r_FSM       <= p_IDLE ;
                        end else begin
                            r_FSM       <= p_DATA ;
                        end
                    end
                default :
                    begin
                        r_FSM           <= p_IDLE ;
                    end
            endcase
        end
    end

    assign  s_ST_IDLE                   = r_FSM[0] ;
    assign  s_ST_REQ                    = r_FSM[1] ;
    assign  s_ST_HEAD                   = r_FSM[2] ;
    assign  s_ST_DATA                   = r_FSM[3] ;

/*=============================================================================+/
||                                                                             ||
||                 DMA write packet header                                     ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DMA_WR_TX_ADDR            <= 'b0 ;
            r_DMA_WR_TX_SIZE            <= 'b0 ;
        end else begin
            if (r_CBUF_REN) begin
                r_DMA_WR_TX_ADDR        <= s_CBUF_RDT[31 : 0] ;
                r_DMA_WR_TX_SIZE        <= s_CBUF_RDT[40 :32] ;
            end
        end
    end

    assign s_DMA_WR_TX_SIZE             = r_DMA_WR_TX_SIZE - 1'b1 ;

    assign s_DMA_WR_TX_HEAD             = {
                                           p_SRC_ID         , //[63:56] Source ID
                                           p_TYPE_SWRITE    , //[55:48] type
                                           1'b0             , //[   47] R
                                           2'b0             , //[46:45] prio
                                           1'b0             , //[   44] CRF
                                           s_DMA_WR_TX_SIZE , //[43:36] size - 1'b1
                                           2'b0             , //[35:34] R
                                           2'b0             , //[33:32] addr
                                           r_DMA_WR_TX_ADDR   //[31 :0] addr
                                           } ;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DMA_WR_TX_REQ             <= 1'b0 ;
        end else begin
            r_DMA_WR_TX_REQ             <= s_ST_REQ ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DMA_WR_TX_SOP             <= 'b0 ;
            r_DMA_WR_TX_EOP             <= 'b0 ;
            r_DMA_WR_TX_DVLD            <= 'b0 ;
            r_DMA_WR_TX_DATA            <= 'b0 ;
        end else begin
            if (s_ST_HEAD) begin
                r_DMA_WR_TX_SOP         <= 1'b1             ;
                r_DMA_WR_TX_EOP         <= 1'b0             ;
                r_DMA_WR_TX_DVLD        <= 1'b1             ;
                r_DMA_WR_TX_DATA        <= s_DMA_WR_TX_HEAD   ;
            end else if (s_ST_DATA) begin
                r_DMA_WR_TX_SOP         <= 1'b0             ;
                r_DMA_WR_TX_EOP         <= s_DBUF_REND      ;
                r_DMA_WR_TX_DVLD        <= r_DBUF_DVLD      ;
                r_DMA_WR_TX_DATA        <= r_DBUF_DATA      ;
            end else begin
                r_DMA_WR_TX_SOP         <= 'b0 ;
                r_DMA_WR_TX_EOP         <= 'b0 ;
                r_DMA_WR_TX_DVLD        <= 'b0 ;
                r_DMA_WR_TX_DATA        <= 'b0 ;
            end

        end
    end

endmodule