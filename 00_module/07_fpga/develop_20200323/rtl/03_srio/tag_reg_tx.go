// =================================================================================================
// File Name      : tag_reg_tx.v
// Module         : TAG_REG_TX
// Function       : Target register tx module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      2025/04/16   stark.ye          Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module TAG_REG_TX (
    //CLK RST
    input                               CLK                                     ,//(i) [  1]
    input                               RST                                     ,//(i) [  1]

    //signal
    input       [  31:0]                REG_OP_ADDR                              ,//(i) [  1]
    input                               REG_RD_ACK                              ,//(i) [  1]
    input       [  31:0]                REG_RD_DATA                             ,//(i) [ 32]

    //signal
    output                              REG_TX_REQ                              ,//(o) [  1]
    input                               REG_TX_ACK                              ,//(i) [  1]
    output      [  63:0]                REG_TX_DATA                             ,//(o) [ 32]
    output                              REG_TX_DVLD                             ,//(o) [  1]
    output                              REG_TX_SOP                              ,//(o) [  1]
    output                              REG_TX_EOP                               //(o) [  1]
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

    reg                                 r_BUF_WEN                               ;//(r)  [  1]
    reg         [  63:0]                r_BUF_WDT                               ;//(r)  [ 72]
    reg                                 r_BUF_REN                               ;//(r)  [  1]
    wire        [  63:0]                s_BUF_RDT                               ;//(s)  [ 72]
    wire                                s_BUF_EMPTY                             ;//(s)  [  1]

    wire                                s_REG_TX_RDY                            ;

    reg         [   2:0]                r_FSM                                   ;//(r)  [  3]
    wire                                s_FSM_REQ                               ;//(s)  [  1]

    reg                                 r_REG_TX_REQ                            ;
    reg         [  31:0]                r_REG_RD_DATA                           ;
    reg         [  31:0]                r_REG_OP_ADDR                           ;
    wire        [  63:0]                s_REG_TX_HEAD0                          ;
    wire        [  63:0]                s_REG_TX_HEAD1                          ;
    reg                                 r_REG_TX_ACK_DFF1                       ;
    reg                                 r_REG_TX_ACK_DFF2                       ;

    reg                                 r_REG_TX_SOP                            ;
    reg                                 r_REG_TX_EOP                            ;
    reg                                 r_REG_TX_DVLD                           ;
    reg         [  63:0]                r_REG_TX_DATA                           ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||               Output                                                        ||
||                                                                             ||
/+=============================================================================*/

    assign  REG_TX_REQ                  = r_REG_TX_REQ                          ;
    assign  REG_TX_DATA                 = r_REG_TX_DATA                         ;
    assign  REG_TX_DVLD                 = r_REG_TX_DVLD                         ;
    assign  REG_TX_SOP                  = r_REG_TX_SOP                          ;
    assign  REG_TX_EOP                  = r_REG_TX_EOP                          ;

/*=============================================================================+/
||                                                                             ||
||                         Reigster info buffer                                ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_BUF_WEN                   <= 'b0 ;
            r_BUF_WDT                   <= 'b0 ;
        end else begin
            r_BUF_WEN                   <= REG_RD_ACK ;
            r_BUF_WDT                   <= {REG_OP_ADDR , REG_RD_DATA} ;
        end
    end

    sfifo_i64o64_d512 U_CBUF (
        .srst                           ( RST                                   ),
        .clk                            ( CLK                                   ),

        .wr_en                          ( r_BUF_WEN                             ),
        .din                            ( r_BUF_WDT                             ),
        .full                           (                                       ),

        .rd_en                          ( r_BUF_REN                             ),
        .dout                           ( s_BUF_RDT                             ),
        .data_count                     (                                       ),
        .empty                          ( s_BUF_EMPTY                           )
        );

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_BUF_REN                  <= 'b0 ;
        end else begin
            r_BUF_REN                  <= REG_TX_ACK ;
        end
    end

    assign  s_REG_TX_RDY                = (~s_BUF_EMPTY) ;

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
                    if (s_REG_TX_RDY) begin
                        r_FSM           <= p_REQ ;
                    end else begin
                        r_FSM           <= p_IDLE ;
                    end

                p_REQ :
                    if (REG_TX_ACK) begin
                        r_FSM           <= p_TX ;
                    end else begin
                        r_FSM           <= p_REQ ;
                    end

                p_TX :
                    begin
                        if (r_REG_TX_EOP) begin
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
            r_REG_TX_REQ                <= 1'b0 ;
        end else begin
            r_REG_TX_REQ                <= s_ST_REQ ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_RD_DATA               <= 'b0 ;
            r_REG_OP_ADDR               <= 'b0 ;
        end else begin
            if (REG_TX_ACK) begin
                r_REG_RD_DATA           <= s_BUF_RDT[31: 0] ;
                r_REG_OP_ADDR           <= s_BUF_RDT[63:32] ;
            end
        end
    end

    assign s_REG_TX_HEAD0               = {
                                           p_SRC_ID         , //[63:56] Source ID
                                           p_TYPE_RESPONE   , //[55:48] type
                                           1'b0             , //[   47] R
                                           2'b1             , //[46:45] prio
                                           1'b0             , //[   44] CRF
                                           8'h0             , //[43:36] size - 1'b1
                                           2'b0             , //[35:34] R
                                           2'b0             , //[33:32] addr
                                           32'h0              //[31 :0] addr
                                           } ;

    assign s_REG_TX_HEAD1               = { 32'h1 , r_REG_RD_DATA} ;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_TX_ACK_DFF1           <= 'b0 ;
            r_REG_TX_ACK_DFF2           <= 'b0 ;
        end else begin
            r_REG_TX_ACK_DFF1           <= REG_TX_ACK           ;
            r_REG_TX_ACK_DFF2           <= r_REG_TX_ACK_DFF1    ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_TX_SOP                <= 'b0 ;
            r_REG_TX_EOP                <= 'b0 ;
            r_REG_TX_DVLD               <= 'b0 ;
            r_REG_TX_DATA               <= 'b0 ;
        end else begin
            if (r_REG_TX_ACK_DFF1) begin
                r_REG_TX_SOP            <= 1'b1             ;
                r_REG_TX_EOP            <= 1'b0             ;
                r_REG_TX_DVLD           <= 1'b1             ;
                r_REG_TX_DATA           <= s_REG_TX_HEAD0   ;
            end else if (r_REG_TX_ACK_DFF2) begin
                r_REG_TX_SOP            <= 1'b0             ;
                r_REG_TX_EOP            <= 1'b1             ;
                r_REG_TX_DVLD           <= 1'b1             ;
                r_REG_TX_DATA           <= s_REG_TX_HEAD1   ;
            end else begin
                r_REG_TX_SOP            <= 'b0 ;
                r_REG_TX_EOP            <= 'b0 ;
                r_REG_TX_DVLD           <= 'b0 ;
                r_REG_TX_DATA           <= 'b0 ;
            end
        end
    end

endmodule