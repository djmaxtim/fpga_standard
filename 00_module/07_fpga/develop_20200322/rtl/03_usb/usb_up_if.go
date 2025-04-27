// =================================================================================================
// File Name      : usb_up_if.v
// Module         : USB_UP_IF
// Function       : Upload interface
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      2025/03/20   Stark.ye          Creat new
// =================================================================================================
// End Revision
// =================================================================================================

`timescale 1ps / 1ps

module USB_UP_IF (
    //clock and reset
    input                               USER_CLK                                ,//(i)  [  1]
    input                               USER_RST                                ,//(i)  [  1]
    input                               SYS_CLK                                 ,//(i)  [  1]
    input                               SYS_RST                                 ,//(i)  [  1]

    //local buffer
    input                               UP_LBUF_REQ                             ,//(i)  [  1] Local buffer read request
    input       [  15:0]                UP_LBUF_VCH                             ,//(i)  [ 16] Local buffer read channel
    input       [  31:0]                UP_LBUF_ADDR                            ,//(i)  [ 16] Local buffer read channel
    input       [  31:0]                UP_LBUF_SIZE                            ,//(i)  [ 16] Local buffer read channel
    input       [  31:0]                UP_LBUF_DATA                            ,//(i)  [ 64] Local buffer read data
    input                               UP_LBUF_DVLD                            ,//(i)  [  1] Locak buffer read data valid
    input                               UP_LBUF_SOF                             ,//(i)  [  1] Locak buffer read start of file
    input                               UP_LBUF_EOF                             ,//(i)  [  1] Locak buffer read end of file
    output                              UP_LBUF_RDY                             ,//(i)  [  1] Locak buffer read end of file

    //usb tx
    output                              DMA_UP_REQ                              ,//(o)  [  1]
    input                               DMA_UP_ACK                              ,//(i)  [  1]
    input                               DMA_UP_RDY                              ,//(o)  [  1]
    output                              DMA_UP_DVLD                             ,//(o)  [  1]
    output      [  31:0]                DMA_UP_DATA                             ,//(o)  [ 64]
    output                              DMA_UP_SOP                              ,//(o)  [  1]
    output                              DMA_UP_EOP                               //(o)  [  1]
    );

// =============================================================================
// Parameter Declare
// =============================================================================

    parameter                           p_TYPE_REG_RD       = 16'h5A55          ;//(p) [ 16]
    parameter                           p_TYPE_REG_WR       = 16'h5055          ;//(p) [ 16]
    parameter                           p_TYPE_DN           = 16'h2A55          ;//(p) [ 16]
    parameter                           p_TYPE_UP           = 16'h2555          ;//(p) [ 16]

    parameter                           p_IDLE              = 5'b0_0001         ;
    parameter                           p_CBUF_REQ          = 5'b0_0010         ;
    parameter                           p_TX_REQ            = 5'b0_0100         ;
    parameter                           p_TX_HEAD           = 5'b0_1000         ;
    parameter                           p_TX_DATA           = 5'b1_0000         ;

// =============================================================================
// Internal Signal Declare
// =============================================================================

    reg                                 r_CBUF_WEN                              ;
    reg         [  89:0]                r_CBUF_WDT                              ;
    wire                                s_CBUF_RST                              ;
    wire                                s_CBUF_REN                              ;
    wire        [  89:0]                s_CBUF_RDT                              ;
    wire                                s_CBUF_EMPTY                            ;
    reg                                 r_CBUF_RDY                              ;
    reg                                 r_CBUF_DVLD                             ;
    reg         [  89:0]                r_CBUF_DATA                             ;

    reg                                 r_UP_FILE_REQ                           ;
    reg         [  15:0]                r_UP_FILE_VCH                           ;
    reg         [  31:0]                r_UP_FILE_ADDR                          ;
    reg         [  31:0]                r_UP_FILE_SIZE                          ;
    reg         [  31:0]                r_UP_DNUM                               ;

    reg         [   4:0]                r_FSM                                   ;//(r) [  4]
    wire                                s_ST_IDLE                               ;
    wire                                s_ST_CBUF_REQ                           ;
    wire                                s_ST_TX_REQ                             ;
    wire                                s_ST_TX_HEAD                            ;
    wire                                s_ST_TX_DATA                            ;

    reg                                 r_DBUF_WEN                              ;
    reg         [  31:0]                r_DBUF_WDT                              ;
    wire                                s_UP_LBUF_RDY                           ;
    reg         [  31:0]                r_DBUF_RDT                              ;
    wire                                s_DBUF_AEMPTY                           ;
    wire                                s_DBUF_EMPTY                            ;
    wire        [  10:0]                s_DBUF_WDCNT                            ;
    reg         [   3:0]                r_DBUF_RSHFT                            ;
    wire                                s_DBUF_REN                              ;
    reg                                 r_DBUF_REN                              ;
    wire        [  31:0]                s_DBUF_RDT                              ;

    wire                                s_DMA_UP_HEAD0                          ;
    wire                                s_DMA_UP_HEAD1                          ;
    wire                                s_DMA_UP_HEAD2                          ;
    reg         [   3:0]                r_DMA_UP_SHIFT                          ;
    reg         [  31:0]                r_DMA_UP_DCNT                           ;
    wire                                s_DMA_UP_END                            ;
    reg                                 r_DMA_UP_DVLD                           ;
    reg         [  31:0]                r_DMA_UP_DATA                           ;
    reg                                 r_DMA_UP_SOP                            ;
    reg                                 r_DMA_UP_EOP                            ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||                              Output Ports                                   ||
||                                                                             ||
/+=============================================================================*/

    assign UP_LBUF_RDY               = s_UP_LBUF_RDY                         ;

    assign DMA_UP_REQ                   = s_ST_CBUF_REQ                         ;
    assign DMA_UP_DVLD                  = r_DMA_UP_DVLD                         ;
    assign DMA_UP_DATA                  = r_DMA_UP_DATA                         ;
    assign DMA_UP_SOP                   = r_DMA_UP_SOP                          ;
    assign DMA_UP_EOP                   = r_DMA_UP_EOP                          ;

/*=============================================================================+/
||                                                                             ||
||                               Control Buffer                                ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge SYS_CLK or posedge SYS_RST) begin
        if (SYS_RST) begin
            r_CBUF_WEN                  <= 'b0 ;
            r_CBUF_WDT                  <= 'b0 ;
        end else begin
            r_CBUF_WEN                  <= UP_LBUF_REQ  ;
            r_CBUF_WDT[89:80]           <= 10'd0        ;
            r_CBUF_WDT[79:64]           <= UP_LBUF_VCH  ;
            r_CBUF_WDT[63:32]           <= UP_LBUF_ADDR ;
            r_CBUF_WDT[31:0]            <= UP_LBUF_SIZE ;
        end
    end

    assign  s_CBUF_RST                  = USER_RST | SYS_RST ;

    afifo_i90o90_d512 U_CBUF (
        .wr_clk                         ( SYS_CLK           ),
        .rd_clk                         ( USER_CLK          ),
        .rst                            ( s_CBUF_RST        ),
        .wr_en                          ( r_CBUF_WEN        ),
        .din                            ( r_CBUF_WDT        ),
        .rd_en                          ( s_CBUF_REN        ),
        .dout                           ( s_CBUF_RDT        ),
        .full                           (                   ),
        .almost_full                    (                   ),
        .empty                          ( s_CBUF_EMPTY      ),
        .almost_empty                   (                   ),
        .rd_data_count                  (                   ),
        .wr_data_count                  (                   )
        );

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_CBUF_RDY                  <= 1'b0 ;
        end else begin
            r_CBUF_RDY                  <= ~ s_CBUF_EMPTY ;
        end
    end

    assign s_CBUF_REN                   = s_ST_CBUF_REQ & r_CBUF_RDY ;

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_CBUF_DVLD                 <= 'b0 ;
            r_CBUF_DATA                 <= 'b0 ;
        end else begin
            r_CBUF_DVLD                 <= s_CBUF_REN ;
            r_CBUF_DATA                 <= s_CBUF_RDT ;
        end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_UP_FILE_REQ               <= 'b0 ;
            r_UP_FILE_VCH               <= 'b0 ;
            r_UP_FILE_ADDR              <= 'b0 ;
            r_UP_FILE_SIZE              <= 'b0 ;
        end else begin
            if (s_CBUF_REN) begin
                r_UP_FILE_REQ           <= s_CBUF_REN ;
                r_UP_FILE_VCH           <= s_CBUF_RDT[79:64] ;
                r_UP_FILE_ADDR          <= s_CBUF_RDT[63:32] ;
                r_UP_FILE_SIZE          <= s_CBUF_RDT[31:0]  ;
            end
        end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_UP_DNUM                   <= 'd0 ;
        end else begin
            if (r_CBUF_DVLD) begin
                r_UP_DNUM               <= r_CBUF_DATA[31:2] ; // One Clock Data = 8byte
            end
        end
    end

/*============================================================================+/
||                                                                            ||
||                             Upload DMA Control FSM                         ||
||                                                                            ||
/+============================================================================*/

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_FSM                       <= p_IDLE ;
        end else begin
            case (r_FSM)
                p_IDLE :
                    begin
                        if (r_CBUF_RDY) begin
                            r_FSM       <= p_CBUF_REQ ;
                        end else begin
                            r_FSM       <= p_IDLE ;
                        end
                    end
                p_CBUF_REQ :
                    begin
                        r_FSM           <= p_TX_REQ ;
                    end
                p_TX_REQ :
                    begin
                        if (DMA_UP_ACK) begin
                            r_FSM       <= p_TX_DATA ;
                        end else begin
                            r_FSM       <= p_TX_REQ ;
                        end
                    end
                p_TX_HEAD :
                    begin
                        if (r_DMA_UP_SHIFT[2]) begin
                            r_FSM       <= p_TX_DATA ;
                        end else begin
                            r_FSM       <= p_TX_HEAD ;
                        end
                    end
                p_TX_DATA :
                    begin
                        if (r_DMA_UP_EOP) begin
                            r_FSM       <= p_IDLE ;
                        end else begin
                            r_FSM       <= p_TX_DATA ;
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
    assign  s_ST_CBUF_REQ               = r_FSM[1] ;
    assign  s_ST_TX_REQ                 = r_FSM[2] ;
    assign  s_ST_TX_HEAD                = r_FSM[3] ;
    assign  s_ST_TX_DATA                = r_FSM[4] ;

/*============================================================================+/
||                                                                            ||
||                             Upload DATA Control                            ||
||                                                                            ||
/+============================================================================*/

    always @(posedge SYS_CLK or posedge SYS_RST) begin
        if (SYS_RST) begin
            r_DBUF_WEN                  <= 'b0 ;
            r_DBUF_WDT                  <= 'b0 ;
        end else begin
            r_DBUF_WEN                  <= UP_LBUF_DVLD  ;
            r_DBUF_WDT                  <= UP_LBUF_DATA ;
        end
    end

    assign s_UP_LBUF_RDY                = ~s_DBUF_WDCNT[10] ;

    afifo_i32o32_d2048 U_DN_LBUF (
        .wr_clk                         ( SYS_CLK               ),
        .rd_clk                         ( USER_CLK              ),
        .rst                            ( SYS_RST               ),
        .wr_en                          ( r_DBUF_WEN            ),
        .din                            ( r_DBUF_WDT            ),
        .rd_en                          ( r_DBUF_REN            ),
        .dout                           ( s_DBUF_RDT            ),
        .full                           (                       ),
        .almost_full                    (                       ),
        .empty                          ( s_DBUF_EMPTY          ),
        .almost_empty                   ( s_DBUF_AEMPTY         ),
        .rd_data_count                  (                       ),
        .wr_data_count                  ( s_DBUF_WDCNT          )
        );

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DBUF_RSHFT                <= 4'b0001 ;
        end else begin
            if (s_DBUF_AEMPTY == 1'b0) begin
                r_DBUF_RSHFT            <= 4'b0001 ;
            end else begin
                r_DBUF_RSHFT            <= {r_DBUF_RSHFT[2:0], r_DBUF_RSHFT[3]} ;
            end
        end
    end

    assign s_DBUF_REN                   = (s_DBUF_AEMPTY == 1'b1) ? r_DBUF_RSHFT[3] : 1'b1 ;

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DBUF_REN                  <= 1'b0 ;
        end else begin
            r_DBUF_REN                  <= s_DBUF_REN & (~s_DBUF_EMPTY) & DMA_UP_RDY & s_ST_TX_DATA ;
        end
    end

/*========================================================================+/
||                                                                        ||
||                       Upload Packet Transmit                           ||
||                                                                        ||
/+========================================================================*/

    assign s_DMA_UP_HEAD0              = { r_UP_FILE_VCH  , p_TYPE_UP} ;
    assign s_DMA_UP_HEAD1              = r_UP_FILE_ADDR ;
    assign s_DMA_UP_HEAD2              = r_UP_FILE_SIZE ;

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DMA_UP_SHIFT              <= 'b0 ;
        end else begin
            r_DMA_UP_SHIFT              <= {r_DMA_UP_SHIFT[2:0] , s_ST_TX_HEAD} ;
        end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DMA_UP_DCNT               <= 'b0 ;
        end else begin
            if (s_ST_IDLE) begin
                r_DMA_UP_DCNT           <= 'b0 ;
            end else if (r_DBUF_REN) begin
                r_DMA_UP_DCNT           <= r_DMA_UP_DCNT + 1'b1 ;
            end
        end
    end

    assign s_DMA_UP_END                 = (r_DBUF_REN == 1'b1 && r_DMA_UP_DCNT == r_UP_DNUM - 1'b1) ? 1'b1 : 1'b0 ;

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DMA_UP_DVLD               <= 'b0 ;
            r_DMA_UP_DATA               <= 'b0 ;
            r_DMA_UP_SOP                <= 'b0 ;
            r_DMA_UP_EOP                <= 'b0 ;
        end else begin
            if (r_DMA_UP_SHIFT[0]) begin
                r_DMA_UP_DVLD           <= 1'b1 ;
                r_DMA_UP_DATA           <= s_DMA_UP_HEAD0 ;
                r_DMA_UP_SOP            <= 1'b1 ;
                r_DMA_UP_EOP            <= 1'b0 ;
            end else if (r_DMA_UP_SHIFT[1]) begin
                r_DMA_UP_DVLD           <= 1'b1 ;
                r_DMA_UP_DATA           <= s_DMA_UP_HEAD1 ;
                r_DMA_UP_SOP            <= 1'b0 ;
                r_DMA_UP_EOP            <= 1'b0 ;
            end else if (r_DMA_UP_SHIFT[2]) begin
                r_DMA_UP_DVLD           <= 1'b1 ;
                r_DMA_UP_DATA           <= s_DMA_UP_HEAD2 ;
                r_DMA_UP_SOP            <= 1'b0 ;
                r_DMA_UP_EOP            <= 1'b0 ;
            end else if (s_ST_TX_DATA) begin
                r_DMA_UP_DVLD           <= r_DBUF_REN ;
                r_DMA_UP_DATA           <= s_DBUF_RDT ;
                r_DMA_UP_SOP            <= 1'b0 ;
                r_DMA_UP_EOP            <= s_DMA_UP_END ;
            end
        end
    end

endmodule

