// =================================================================================================
// File Name      : usb_if.v
// Module         : USB IF
// Function       : usb interface module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      2025/03/20   Stark.ye          Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module USB_IF (
    //CLK RST
    input                               CLK                                     ,//(i) [  1]
    input                               RST                                     ,//(i) [  1]

    //reg signal
    output                              REG_WR_REQ                              ,//(o)  [  1]
    output                              REG_RD_REQ                              ,//(o)  [  1]
    input                               REG_WR_ACK                              ,//(i)  [  1]
    input                               REG_RD_ACK                              ,//(i)  [  1]
    output      [  31:0]                REG_WR_DATA                             ,//(o)  [ 32]
    output      [  31:0]                REG_OP_ADDR                             ,//(o)  [ 32]

    //download signal
    input                               USB_DN_RDY                              ,//(i)  [  1]
    output                              USB_DN_REQ                              ,//(o)  [  1]
    output      [  15:0]                USB_DN_CH                               ,//(o)  [  1]
    output      [  31:0]                USB_DN_ADDR                             ,//(o)  [  1]
    output      [  31:0]                USB_DN_SIZE                             ,//(o)  [  1]
    output                              USB_DN_SOP                              ,//(o)  [  1]
    output                              USB_DN_EOP                              ,//(o)  [  1]
    output      [  31:0]                USB_DN_DATA                             ,//(o)  [ 32]
    output                              USB_DN_DVLD                             ,//(o)  [  1]

    //up signal
    output                              USB_UP_RDY                              ,//(o)  [  1]
    input                               USB_UP_REQ                              ,//(o)  [  1]
    output                              USB_UP_ACK                              ,//(o)  [  1]
    input                               USB_UP_DVLD                             ,//(i)  [  1]
    input       [  31:0]                USB_UP_DATA                             ,//(i)  [ 31]
    input                               USB_UP_SOP                              ,//(i)  [  1]
    input                               USB_UP_EOP                              ,//(i)  [  1]

    output                              USB_PCLK                                ,//(i)  [   1]
    output                              USB_SLCS                                ,//(o)  [   1]
    output      [   1:0]                USB_ADDR                                ,//(o)  [   2]
    output                              USB_SLRD                                ,//(o)  [   1]
    output                              USB_SLOE                                ,//(o)  [   1]
    input                               USB_FLAGA                               ,//(i)  [   1]
    input                               USB_FLAGB                               ,//(i)  [   1]
    inout       [  31:0]                USB_DATA                                ,//(io) [  32]
    output                              USB_PKEND                               ,//(o)  [   1]
    output                              USB_SLWR                                ,//(o)  [   1]
    output                              USB_RESET_N                              //(o)  [   1]
    );

// =============================================================================
// Parameter define
// =============================================================================

    parameter                           p_TYPE_REG_RD       = 16'h5A55          ;//(p) [ 16]
    parameter                           p_TYPE_REG_WR       = 16'h5055          ;//(p) [ 16]
    parameter                           p_TYPE_DN           = 16'h2A55          ;//(p) [ 16]
    parameter                           p_TYPE_UP           = 16'h2555          ;//(p) [ 16]

    parameter                           p_FSM_IDLE          = 7'b0000001        ;
    parameter                           p_FSM_RX_CMD        = 7'b0000010        ;
    parameter                           p_FSM_RX_DATA       = 7'b0000100        ;
    parameter                           p_FSM_TX_CMD        = 7'b0001000        ;
    parameter                           p_FSM_TX_DATA       = 7'b0010000        ;
    parameter                           p_FSM_WAIT          = 7'b0100000        ;
    parameter                           p_FSM_END           = 7'b1000000        ;

// =============================================================================
// Internal signal define
// =============================================================================

    reg         [  6:0]                 r_FSM                                   ;//(r) [  7]
    wire                                s_FSM_IDLE                              ;//(s) [  1]
    wire                                s_FSM_RX_CMD                            ;//(s) [  1]
    wire                                s_FSM_RX_DATA                           ;//(s) [  1]
    wire                                s_FSM_TX_CMD                            ;//(s) [  1]
    wire                                s_FSM_TX_DATA                           ;//(s) [  1]
    wire                                s_FSM_WAIT                              ;//(s) [  1]
    wire                                s_FSM_END                               ;//(s) [  1]

    wire                                s_USB_PCLK                              ;

    reg         [  31:0]                r_USB_RX_DATA                           ;
    reg         [  31:0]                r_RX_DATA                               ;
    reg         [  31:0]                r_RX_DATA_DFF                           ;

    reg                                 r_USB_SLCS                              ;
    reg                                 r_USB_SLOE                              ;
    reg         [   1:0]                r_USB_ADDR                              ;
    reg                                 r_USB_DIR                               ;

    reg                                 r_FSM_RX_CMD                            ;
    wire                                s_RX_CMD                                ;
    reg         [  15:0]                r_RX_CMD_SHIFT                          ;
    wire                                s_RX_CMD_EOF                            ;
    reg         [   7:0]                r_SLRD_CMD                              ;
    wire                                s_CMD_DVLD                              ;
    wire                                s_CMD_EOF                               ;
    reg                                 r_CMD_EOF                               ;
    reg         [  95:0]                r_CMD_DATA                              ;

    wire                                s_TYPE_REG_RD_EN                        ;
    wire                                s_TYPE_REG_WR_EN                        ;
    wire                                s_TYPE_DN_EN                            ;
    wire                                s_TYPE_UP_EN                            ;
    reg         [   3:0]                r_TPYE                                  ;

    reg         [  15:0]                r_RX_CH                                 ;
    reg         [  31:0]                r_RX_ADDR                               ;
    reg         [  31:0]                r_RX_SIZE                               ;

    reg         [  31:0]                r_RX_DSIZE                              ;
    wire                                s_RX_RDY                                ;
    reg                                 r_SLRD_DATA                             ;
    reg         [  31:0]                r_RX_DCNT                               ;
    wire                                s_RX_EOF                                ;
    reg         [   4:0]                r_RX_DVLD                               ;
    reg         [   4:0]                r_RX_EOF                                ;
    wire                                s_RX_DVLD                               ;
    wire                                s_RX_EOP                                ;
    wire                                s_RX_SOP                                ;

    reg                                 r_DN_REQ                                ;
    reg                                 r_DN_DVLD                               ;
    reg         [  31:0]                r_DN_DATA                               ;
    reg                                 r_DN_SOP                                ;
    reg                                 r_DN_EOP                                ;

    reg                                 r_REG_WR_REQ                            ;
    reg                                 r_REG_RD_REQ                            ;
    reg         [  31:0]                r_REG_WR_DATA                           ;
    reg         [  31:0]                r_REG_OP_ADDR                           ;

    reg                                 r_UP_REQ                                ;
    reg                                 r_FSM_TX_CMD                            ;
    wire                                s_TX_CMD                                ;
    reg         [   7:0]                r_TX_CMD_SHIFT                          ;
    wire                                s_TX_CMD_EOF                            ;
    wire                                s_TX_RDY                                ;

    reg                                 r_USB_SLWR                              ;
    reg         [  31:0]                r_USB_DATA                              ;
    reg                                 r_USB_PKEND                             ;

/*=============================================================================+/
||                                                                             ||
||               Output                                                        ||
||                                                                             ||
/+=============================================================================*/

    assign REG_WR_REQ                   = r_REG_WR_REQ                          ;
    assign REG_RD_REQ                   = r_REG_RD_REQ                          ;
    assign REG_WR_DATA                  = r_REG_WR_DATA                         ;
    assign REG_OP_ADDR                  = r_REG_OP_ADDR                         ;

    assign USB_DN_REQ                   = r_DN_REQ                              ;
    assign USB_DN_CH                    = r_RX_CH                               ;
    assign USB_DN_ADDR                  = r_RX_ADDR                             ;
    assign USB_DN_SIZE                  = r_RX_SIZE                             ;
    assign USB_DN_SOP                   = r_DN_SOP                              ;
    assign USB_DN_EOP                   = r_DN_EOP                              ;
    assign USB_DN_DATA                  = r_DN_DATA                             ;
    assign USB_DN_DVLD                  = r_DN_DVLD                             ;

    assign USB_UP_RDY                   = s_TX_RDY                              ;
    assign USB_UP_ACK                   = s_TX_CMD_EOF                          ;

    assign USB_PCLK                     = s_USB_PCLK                            ;
    assign USB_ADDR                     = r_USB_ADDR                            ;
    assign USB_PKEND                    = ~r_USB_PKEND                          ;
    assign USB_SLOE                     = r_USB_SLOE                            ;
    assign USB_SLRD                     = ~(r_SLRD_CMD[3] | r_SLRD_DATA)        ;
    assign USB_SLCS                     = r_USB_SLCS                            ;
    assign USB_SLWR                     = r_USB_SLWR                            ;
    assign USB_DATA                     = r_USB_DIR ? r_USB_DATA : 32'dz        ;
    assign USB_RESET_N                  = 1'b1                                  ;

/*=============================================================================+/
||                                                                             ||
||              FSM                                                            ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM                       <= p_FSM_IDLE ;
        end else begin
            case (r_FSM)
                p_FSM_IDLE :
                    if (USB_FLAGA) begin
                        r_FSM           <= p_FSM_RX_CMD ;
                    end else if (r_UP_REQ) begin
                        r_FSM           <= p_FSM_TX_CMD ;
                    end else begin
                        r_FSM           <= p_FSM_IDLE ;
                    end

                p_FSM_RX_CMD :
                    if (s_RX_CMD_EOF & r_TPYE[0]) begin
                        r_FSM           <= p_FSM_WAIT ;
                    end else if (s_RX_CMD_EOF) begin
                        r_FSM           <= p_FSM_RX_DATA ;
                    end else begin
                        r_FSM           <= p_FSM_RX_CMD ;
                    end

                p_FSM_RX_DATA :
                    if (s_RX_EOF) begin
                        r_FSM           <= p_FSM_WAIT ;
                    end else begin
                        r_FSM           <= p_FSM_RX_DATA ;
                    end

                p_FSM_TX_CMD :
                    if (s_TX_CMD_EOF) begin
                        r_FSM           <= p_FSM_TX_DATA ;
                    end else begin
                        r_FSM           <= p_FSM_TX_CMD ;
                    end

                p_FSM_TX_DATA :
                    if (r_USB_PKEND) begin
                        r_FSM           <= p_FSM_END ;
                    end else begin
                        r_FSM           <= p_FSM_TX_DATA ;
                    end

                p_FSM_WAIT :
                    if ((r_TPYE[0] & REG_RD_ACK) || (r_TPYE[1] & REG_WR_ACK)) begin
                        r_FSM           <= p_FSM_WAIT ;
                    end else begin
                        r_FSM           <= p_FSM_END ;
                    end

                p_FSM_END :
                        r_FSM           <= p_FSM_IDLE ;

                default :
                    r_FSM               <= p_FSM_IDLE ;
            endcase
        end
    end

    assign s_FSM_IDLE                   = r_FSM[0] ;
    assign s_FSM_RX_CMD                 = r_FSM[1] ;
    assign s_FSM_RX_DATA                = r_FSM[2] ;
    assign s_FSM_TX_CMD                 = r_FSM[3] ;
    assign s_FSM_TX_DATA                = r_FSM[4] ;
    assign s_FSM_WAIT                   = r_FSM[5] ;
    assign s_FSM_END                    = r_FSM[6] ;

/*=============================================================================+/
||                                                                             ||
||               control signal                                                ||
||                                                                             ||
/+=============================================================================*/

    ODDR #(
        .DDR_CLK_EDGE                   ( "SAME_EDGE"                           ))
    U_PCLK (
        .Q                              ( s_USB_PCLK                            ),// 1-bit DDR output data
        .C                              ( CLK                                   ),// 1-bit clock input
        .CE                             ( 1'b1                                  ),// 1-bit clock enable input
        .D1                             ( 1'b0                                  ),// 1-bit data input (associated with C)
        .D2                             ( 1'b1                                  ),// 1-bit data input (associated with C)
        .R                              ( 1'b0                                  ),// 1-bit reset input
        .S                              ( 1'b0                                  ) // 1-bit set input
    );

    always @ (posedge s_USB_PCLK) begin
        r_USB_RX_DATA                  <= USB_DATA ;
    end

    always @ (posedge CLK) begin
        if (RST) begin
            r_RX_DATA                   <= 'b0 ;
            r_RX_DATA_DFF               <= 'b0 ;
        end else begin
            r_RX_DATA                   <= r_USB_RX_DATA ;
            r_RX_DATA_DFF               <= r_RX_DATA ;
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_SLCS                  <= 'b1 ;
        end else begin
            if (s_FSM_RX_CMD | s_FSM_TX_CMD) begin
                r_USB_SLCS              <= 1'b0 ;
            end else if (s_FSM_END) begin
                r_USB_SLCS              <= 1'b1 ;
            end
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_SLOE                  <= 'b1 ;
        end else begin
            if (r_RX_CMD_SHIFT[2]) begin
                r_USB_SLOE              <= 1'b0 ;
            end else if (s_FSM_END | s_FSM_TX_CMD) begin
                r_USB_SLOE              <= 1'b1 ;
            end
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_ADDR                  <= 'b0;
        end else begin
            if (s_FSM_RX_CMD) begin
                r_USB_ADDR              <= 2'b0 ;
            end else if (p_FSM_TX_CMD) begin
                r_USB_ADDR              <= 2'b1 ;
            end
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_DIR                   <= 'b0 ;
        end else begin
            if (s_FSM_RX_CMD) begin
                r_USB_DIR               <= 1'b0 ;
            end else if (s_FSM_TX_CMD) begin
                r_USB_DIR               <= 1'b1 ;
            end
        end
    end

/*=============================================================================+/
||                                                                             ||
||               RX CMD                                                        ||
||                                                                             ||
/+=============================================================================*/

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM_RX_CMD                <= 'b0 ;
        end else begin
            r_FSM_RX_CMD                <= s_FSM_RX_CMD ;
        end
    end

    assign s_RX_CMD                     = s_FSM_RX_CMD & ~r_FSM_RX_CMD ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_RX_CMD_SHIFT              <= 'b0 ;
        end else begin
            if (s_RX_CMD) begin
                r_RX_CMD_SHIFT          <= 16'b1 ;
            end else begin
                r_RX_CMD_SHIFT          <= {r_RX_CMD_SHIFT[14:0], 1'b0} ;
            end
        end
    end

    assign s_RX_CMD_EOF                   = r_RX_CMD_SHIFT[15] ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_SLRD_CMD                  <= 'b0 ;
        end else begin
            if (r_RX_CMD_SHIFT[5]) begin
                r_SLRD_CMD              <= 8'b00000111 ;
            end else begin
                r_SLRD_CMD              <= {r_SLRD_CMD[6:0], 1'b0} ;
            end
        end
    end

    assign s_CMD_DVLD                   = r_SLRD_CMD[7] ;
    assign s_CMD_EOF                    = r_SLRD_CMD[7] & ~r_SLRD_CMD[6] ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_CMD_EOF                   <= 'b0 ;
        end else begin
            r_CMD_EOF                   <= s_CMD_EOF ;
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_CMD_DATA                  <= 'b0 ;
        end else begin
            if (s_CMD_DVLD) begin
                r_CMD_DATA              <= {r_CMD_DATA[63:0], r_RX_DATA_DFF} ;
            end else begin
                r_CMD_DATA              <= r_CMD_DATA ;
            end
        end
    end

    assign  s_TYPE_REG_RD_EN            = ( r_CMD_DATA[79:64] == p_TYPE_REG_RD  ) ;
    assign  s_TYPE_REG_WR_EN            = ( r_CMD_DATA[79:64] == p_TYPE_REG_WR  ) ;
    assign  s_TYPE_DN_EN                = ( r_CMD_DATA[79:64] == p_TYPE_DN      ) ;
    assign  s_TYPE_UP_EN                = ( r_CMD_DATA[79:64] == p_TYPE_UP      ) ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_TPYE                      <= 'b0 ;
        end else begin
            if (r_CMD_EOF & s_TYPE_REG_RD_EN) begin r_TPYE   <= 4'b0001 ; end
            if (r_CMD_EOF & s_TYPE_REG_WR_EN) begin r_TPYE   <= 4'b0010 ; end
            if (r_CMD_EOF & s_TYPE_DN_EN    ) begin r_TPYE   <= 4'b0100 ; end
            if (r_CMD_EOF & s_TYPE_UP_EN    ) begin r_TPYE   <= 4'b1000 ; end
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_RX_CH                     <= 'b0 ;
            r_RX_ADDR                   <= 'b0 ;
            r_RX_SIZE                   <= 'b0 ;
        end else begin
            if (r_CMD_EOF) begin
                r_RX_CH                 <= r_CMD_DATA[95:80] ;
                r_RX_ADDR               <= r_CMD_DATA[63:32] ;
                r_RX_SIZE               <= r_CMD_DATA[31:0]  ;
            end else begin
                r_RX_CH                 <= r_RX_CH   ;
                r_RX_ADDR               <= r_RX_ADDR ;
                r_RX_SIZE               <= r_RX_SIZE ;
            end
        end
    end

/*=============================================================================+/
||                                                                             ||
||               RX DATA                                                       ||
||                                                                             ||
/+=============================================================================*/

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_RX_DSIZE                  <= 'b0 ;
        end else begin
            if (r_TPYE[0] | r_TPYE[3]) begin
                r_RX_DSIZE              <= 32'h0 ;
            end else if (r_TPYE[1]) begin
                r_RX_DSIZE              <= 32'h1 ;
            end else if (r_TPYE[2]) begin
                r_RX_DSIZE              <= r_RX_SIZE[31:2] ;
            end
        end
    end

    assign s_RX_RDY                     = r_TPYE[2] & USB_DN_RDY ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_SLRD_DATA                 <= 'b0 ;
        end else begin
            if (s_FSM_RX_DATA) begin
                if (s_RX_RDY | r_TPYE[1]) begin
                    r_SLRD_DATA         <= 1'b1 ;
                end else if (s_RX_EOF | (s_RX_RDY== 1'b0))  begin
                    r_SLRD_DATA         <= 'b0 ;
                end
            end else begin
                r_SLRD_DATA             <= 'b0 ;
            end
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_RX_DCNT                   <= 'b0 ;
        end else begin
            if (s_RX_EOF) begin
                r_RX_DCNT               <= 'b0 ;
            end else if (r_SLRD_DATA) begin
                r_RX_DCNT               <= r_RX_DCNT + 1'b1 ;
            end
        end
    end

    assign s_RX_EOF                     = s_FSM_RX_DATA & (r_TPYE[2]  &  (r_RX_DCNT == r_RX_DSIZE - 1'b1 )) ? 1'b1 :
                                          s_FSM_RX_DATA & (r_TPYE[1]  &  (r_RX_DCNT == 16'h1)            )  ? 1'b1  : 1'b0 ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_RX_DVLD                   <= 'b0 ;
            r_RX_EOF                    <= 'b0 ;
        end else begin
            r_RX_DVLD                   <= { r_RX_DVLD[3:0] , r_SLRD_DATA } ;
            r_RX_EOF                    <= { r_RX_EOF [3:0] , s_RX_EOF } ;
        end
    end

    assign s_RX_DVLD                    = r_RX_DVLD[3] ;
    assign s_RX_EOP                     = r_RX_EOF[4] ;
    assign s_RX_SOP                     = s_RX_DVLD & ~r_RX_DVLD[4] ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_DN_REQ                    <= 'b0 ;
        end else begin
            r_DN_REQ                    <= s_RX_CMD_EOF & r_TPYE[2] ;
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_DN_DVLD                   <= 'b0 ;
            r_DN_DATA                   <= 'b0 ;
            r_DN_SOP                    <= 'b0 ;
            r_DN_EOP                    <= 'b0 ;
        end else begin
            r_DN_DVLD                   <= s_RX_DVLD & r_TPYE[2] ;
            r_DN_DATA                   <= r_RX_DATA_DFF   ;
            r_DN_SOP                    <= s_RX_SOP  & r_TPYE[2] ;
            r_DN_EOP                    <= s_RX_EOP  & r_TPYE[2] ;
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_WR_REQ                <= 'b0 ;
            r_REG_RD_REQ                <= 'b0 ;
            r_REG_WR_DATA               <= 'b0 ;
            r_REG_OP_ADDR               <= 'b0 ;
        end else begin
            r_REG_WR_REQ                <= s_RX_DVLD & r_TPYE[1] ;
            r_REG_RD_REQ                <= s_RX_CMD_EOF & r_TPYE[0]   ;
            r_REG_WR_DATA               <= r_RX_DATA_DFF ;
            r_REG_OP_ADDR               <= r_RX_ADDR ;
        end
    end

/*=============================================================================+/
||                                                                             ||
||               TX CMD                                                        ||
||                                                                             ||
/+=============================================================================*/

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_UP_REQ                    <= 'b0 ;
        end else begin
            if (USB_UP_REQ) begin
                r_UP_REQ                <= 1'b1 ;
            end else if (s_FSM_END) begin
                r_UP_REQ                <= 1'b0 ;
            end
        end
    end

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM_TX_CMD                <= 'b0 ;
        end else begin
            r_FSM_TX_CMD                <= s_FSM_TX_CMD ;
        end
    end

    assign s_TX_CMD                     = s_FSM_TX_CMD & ~r_FSM_TX_CMD ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_TX_CMD_SHIFT              <= 'b0 ;
        end else begin
            if (s_TX_CMD) begin
                r_TX_CMD_SHIFT          <= 8'b0000_0001 ;
            end else begin
                r_TX_CMD_SHIFT          <= {r_TX_CMD_SHIFT[6:0], 1'b0} ;
            end
        end
    end

    assign s_TX_CMD_EOF                 = r_TX_CMD_SHIFT[7] ;

/*=============================================================================+/
||                                                                             ||
||               TX DATA                                                       ||
||                                                                             ||
/+=============================================================================*/

    assign s_TX_RDY                     = USB_FLAGB & s_FSM_TX_DATA ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_SLWR                  <= 'b0 ;
            r_USB_DATA                  <= 'b0 ;
            r_USB_PKEND                 <= 'b0 ;
        end else begin
            r_USB_SLWR                  <= USB_UP_DVLD ;
            r_USB_DATA                  <= USB_UP_DATA ;
            r_USB_PKEND                 <= USB_UP_EOP  ;
        end
    end

endmodule