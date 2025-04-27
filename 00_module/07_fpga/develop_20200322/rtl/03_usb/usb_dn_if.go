// =================================================================================================
// File Name      : usb_dn_if.v
// Module         : USB_DN_IF
// Function       :
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

module USB_DN_IF (
    input                               SYS_CLK                                 ,//(i)  [  1]
    input                               SYS_RST                                 ,//(i)  [  1]
    input                               USER_CLK                                ,//(i)  [  1]
    input                               USER_RST                                ,//(i)  [  1]

    input                               DN_FILE_REQ                             ,//(i)  [  1]
    input       [  15:0]                DN_FILE_VCH                             ,//(i)  [ 16]
    input       [  31:0]                DN_FILE_ADDR                            ,//(i)  [ 32]
    input       [  31:0]                DN_FILE_SIZE                            ,//(i)  [ 32]

    output                              DN_LBUF_RDY                             ,//(i)  [  1]
    input       [  31:0]                DN_LBUF_DATA                            ,//(i)  [ 64]
    input                               DN_LBUF_DVLD                            ,//(i)  [  1]
    input                               DN_LBUF_SOP                             ,//(i)  [  1]
    input                               DN_LBUF_EOP                             ,//(i)  [  1]

    input       [  15:0]                DMA_DN_RDY                              ,//(i)  [ 16]
    output      [  31:0]                DMA_DN_DATA                             ,//(o)  [ 64]
    output                              DMA_DN_DVLD                             ,//(o)  [  1]
    output                              DMA_DN_SOF                              ,//(o)  [  1]
    output                              DMA_DN_EOF                              ,//(o)  [  1]
    output                              DMA_DN_REQ                              ,//(o)  [ 16]
    output      [  15:0]                DMA_DN_VCH                              ,//(o)  [ 16]
    output      [  31:0]                DMA_DN_ADDR                             ,//(o)  [ 32]
    output      [  31:0]                DMA_DN_SIZE                              //(o)  [ 32]
    );

// =============================================================================
// Parameter Declare
// =============================================================================

    parameter                           p_IDLE          = 5'b0_0001            ;
    parameter                           p_CBUF_REQ      = 5'b0_0010            ;
    parameter                           p_LBUF_CHK      = 5'b0_0100            ;
    parameter                           p_LBUF_REQ      = 5'b0_1000            ;
    parameter                           p_END           = 5'b1_0000            ;

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

    reg                                 r_DN_FILE_REQ                           ;
    reg         [  15:0]                r_DN_FILE_VCH                           ;
    reg         [  31:0]                r_DN_FILE_ADDR                          ;
    reg         [  31:0]                r_DN_FILE_SIZE                          ;
    reg         [  31:0]                r_DN_DNUM                               ;

    reg                                 r_DMA_DN_RDY                            ;

    reg         [   5:0]                r_FSM                                   ;//(r) [  4]
    wire                                s_ST_IDLE                               ;//(s) [  1]

    reg                                 r_DBUF_WEN                              ;
    reg         [  31:0]                r_DBUF_WDT                              ;
    reg                                 r_DBUF_REN                              ;
    reg         [  31:0]                r_DBUF_RDT                              ;
    wire                                s_DBUF_AEMPTY                           ;
    wire                                s_DBUF_EMPTY                            ;
    wire                                s_DN_LBUF_RDY                            ;
    wire        [  10:0]                s_DBUF_WDCNT                            ;
    reg         [   3:0]                r_DBUF_RSHFT                            ;
    wire                                s_DBUF_REN                              ;

    reg                                 r_DN_LBUF_RD_DATA                       ;
    reg         [  31:0]                r_DN_LBUF_RD_DVLD                       ;
    reg         [  31:0]                r_DN_LBUF_RD_DCNT                       ;

    wire                                s_DMA_DN_SOF                            ;
    wire                                s_DMA_DN_EOF                            ;
    reg                                 r_DMA_DN_DEN                            ;

    reg         [  31:0]                r_DMA_DN_DATA                           ;
    reg                                 r_DMA_DN_DVLD                           ;
    reg                                 r_DMA_DN_SOF                            ;
    reg                                 r_DMA_DN_EOF                            ;
    reg                                 r_DMA_DN_REQ                            ;
    reg         [  15:0]                r_DMA_DN_VCH                            ;
    reg         [  31:0]                r_DMA_DN_ADDR                           ;
    reg         [  31:0]                r_DMA_DN_SIZE                           ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||                              Output Ports                                   ||
||                                                                             ||
/+=============================================================================*/

    assign  DN_LBUF_RDY                 = s_DN_LBUF_RDY                         ;

    assign  DMA_DN_DATA                 = r_DMA_DN_DATA                         ;
    assign  DMA_DN_DVLD                 = r_DMA_DN_DVLD                         ;
    assign  DMA_DN_SOF                  = r_DMA_DN_SOF                          ;
    assign  DMA_DN_EOF                  = r_DMA_DN_EOF                          ;
    assign  DMA_DN_REQ                  = r_DMA_DN_REQ                          ;
    assign  DMA_DN_VCH                  = r_DMA_DN_VCH                          ;
    assign  DMA_DN_ADDR                 = r_DMA_DN_ADDR                         ;
    assign  DMA_DN_SIZE                 = r_DMA_DN_SIZE                         ;

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
            r_CBUF_WEN                  <= DN_FILE_REQ  ;
            r_CBUF_WDT[89:80]           <= 10'd0        ;
            r_CBUF_WDT[79:64]           <= DN_FILE_VCH  ;
            r_CBUF_WDT[63:32]           <= DN_FILE_ADDR ;
            r_CBUF_WDT[31:0]            <= DN_FILE_SIZE ;
        end
    end

    assign  s_CBUF_RST                  = USER_RST | SYS_RST ;

    afifo_i90o90_d512 U_CBUF (
        .wr_clk                         ( SYS_CLK          ),
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

    assign s_CBUF_REN                   = s_ST_IDLE & r_CBUF_RDY ;

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
            r_DN_FILE_REQ               <= 'b0 ;
            r_DN_FILE_VCH               <= 'b0 ;
            r_DN_FILE_ADDR              <= 'b0 ;
            r_DN_FILE_SIZE              <= 'b0 ;
        end else begin
            r_DN_FILE_REQ               <= s_CBUF_REN ;

            if (s_CBUF_REN) begin
                r_DN_FILE_VCH           <= s_CBUF_RDT[79:64] ;
                r_DN_FILE_ADDR          <= s_CBUF_RDT[63:32] ;
                r_DN_FILE_SIZE          <= s_CBUF_RDT[31:0]  ;
            end
        end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DN_DNUM                   <= 'd0 ;
        end else begin
            if (r_CBUF_DVLD) begin
                r_DN_DNUM               <= r_CBUF_DATA[31:2] ; // One Clock Data = 8byte
            end
        end
    end

/*===========================================================================+/
||                                                                           ||
||                             FSM                                           ||
||                                                                           ||
/+===========================================================================*/

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DMA_DN_RDY                <= 'b0 ;
        end else begin
            r_DMA_DN_RDY                <= r_DN_FILE_VCH[0]  & DMA_DN_RDY[0]  |
                                           r_DN_FILE_VCH[1]  & DMA_DN_RDY[1]  |
                                           r_DN_FILE_VCH[2]  & DMA_DN_RDY[2]  |
                                           r_DN_FILE_VCH[3]  & DMA_DN_RDY[3]  |
                                           r_DN_FILE_VCH[4]  & DMA_DN_RDY[4]  |
                                           r_DN_FILE_VCH[5]  & DMA_DN_RDY[5]  |
                                           r_DN_FILE_VCH[6]  & DMA_DN_RDY[6]  |
                                           r_DN_FILE_VCH[7]  & DMA_DN_RDY[7]  |
                                           r_DN_FILE_VCH[8]  & DMA_DN_RDY[8]  |
                                           r_DN_FILE_VCH[9]  & DMA_DN_RDY[9]  |
                                           r_DN_FILE_VCH[10] & DMA_DN_RDY[10] |
                                           r_DN_FILE_VCH[11] & DMA_DN_RDY[11] |
                                           r_DN_FILE_VCH[12] & DMA_DN_RDY[12] |
                                           r_DN_FILE_VCH[13] & DMA_DN_RDY[13] |
                                           r_DN_FILE_VCH[14] & DMA_DN_RDY[14] |
                                           r_DN_FILE_VCH[15] & DMA_DN_RDY[15] ;
        end
    end

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
                        r_FSM           <= p_LBUF_CHK ;
                    end
                p_LBUF_CHK :
                    begin
                        if (DN_LBUF_RDY & r_DMA_DN_RDY) begin
                            r_FSM       <= p_LBUF_REQ ;
                        end else begin
                            r_FSM       <= p_LBUF_CHK ;
                        end
                    end
                p_LBUF_REQ :
                    begin
                        if (DN_LBUF_EOP) begin
                            r_FSM       <= p_END ;
                        end else begin
                            r_FSM       <= p_LBUF_REQ ;
                        end
                    end
                p_END :
                    begin
                        r_FSM           <= p_IDLE ;
                    end
                default :
                    begin
                        r_FSM           <= p_IDLE ;
                    end
            endcase
        end
    end

    assign  s_ST_IDLE                   = r_FSM[0] ;

/*=============================================================================+/
||                                                                             ||
||                       Download Local Buffer IF                              ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge SYS_CLK or posedge SYS_RST) begin
        if (SYS_RST) begin
            r_DBUF_WEN                  <= 'b0 ;
            r_DBUF_WDT                  <= 'b0 ;
        end else begin
            r_DBUF_WEN                  <= DN_LBUF_DVLD  ;
            r_DBUF_WDT                  <= DN_LBUF_DATA  ;
        end
    end

    assign s_DN_LBUF_RDY                = ~s_DBUF_WDCNT[10] ;

    afifo_i32o32_d2048 U_DN_LBUF (
        .wr_clk                         ( SYS_CLK               ),
        .rd_clk                         ( USER_CLK              ),
        .rst                            ( SYS_RST               ),
        .wr_en                          ( r_DBUF_WEN            ),
        .din                            ( r_DBUF_WDT            ),
        .rd_en                          ( r_DBUF_REN            ),
        .dout                           ( s_DBUF_RDT            ),
        .full                           (                       ),
        .almost_full                    ( s_DBUF_AEMPTY         ),
        .empty                          ( s_DBUF_EMPTY          ),
        .almost_empty                   (                       ),
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
            r_DBUF_REN                  <= s_DBUF_REN & (~s_DBUF_EMPTY) & r_DMA_DN_RDY ;
        end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DN_LBUF_RD_DATA           <= 'b0 ;
            r_DN_LBUF_RD_DVLD           <= 'b0 ;
        end else begin
            r_DN_LBUF_RD_DATA           <= r_DBUF_REN ;
            r_DN_LBUF_RD_DVLD           <= s_DBUF_RDT ;
         end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DN_LBUF_RD_DCNT           <= 'b0 ;
        end else begin
            if (r_CBUF_DVLD) begin
                r_DN_LBUF_RD_DCNT       <= 'b0 ;
            end else if (r_DN_LBUF_RD_DATA) begin
                r_DN_LBUF_RD_DCNT       <= r_DN_LBUF_RD_DCNT + 1'b1 ;
            end
        end
    end

/*============================================================================+/
||                                                                            ||
||                                 Data Output                                ||
||                                                                            ||
/+============================================================================*/

    assign s_DMA_DN_SOF                 = (r_DN_LBUF_RD_DVLD == 1'b1 && r_DN_LBUF_RD_DCNT == 31'd1    ) ? 1'b1 : 1'b0 ;
    assign s_DMA_DN_EOF                 = (r_DN_LBUF_RD_DVLD == 1'b1 && r_DN_LBUF_RD_DCNT == r_DN_DNUM) ? 1'b1 : 1'b0 ;

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DMA_DN_DEN                <= 1'b0 ;
        end else begin
            if (r_CBUF_DVLD) begin
                r_DMA_DN_DEN            <= 1'b1 ;
            end else if (s_DMA_DN_EOF) begin
                r_DMA_DN_DEN            <= 1'b0 ;
            end
        end
    end

    always @(posedge USER_CLK or posedge USER_RST) begin
        if (USER_RST) begin
            r_DMA_DN_DATA               <= 'b0 ;
            r_DMA_DN_DVLD               <= 'b0 ;
            r_DMA_DN_SOF                <= 'b0 ;
            r_DMA_DN_EOF                <= 'b0 ;
            r_DMA_DN_REQ                <= 'b0 ;
            r_DMA_DN_VCH                <= 'b0 ;
            r_DMA_DN_ADDR               <= 'b0 ;
            r_DMA_DN_SIZE               <= 'b0 ;
        end else begin
            r_DMA_DN_DATA               <= r_DN_LBUF_RD_DATA                ;
            r_DMA_DN_DVLD               <= r_DN_LBUF_RD_DVLD & r_DMA_DN_DEN ;

            r_DMA_DN_SOF                <= s_DMA_DN_SOF                     ;
            r_DMA_DN_EOF                <= s_DMA_DN_EOF                     ;

            r_DMA_DN_REQ                <= r_DN_FILE_REQ                    ;
            r_DMA_DN_VCH                <= r_DN_FILE_VCH                    ;
            r_DMA_DN_ADDR               <= r_DN_FILE_ADDR                   ;
            r_DMA_DN_SIZE               <= r_DN_FILE_SIZE                   ;
        end
    end

endmodule
