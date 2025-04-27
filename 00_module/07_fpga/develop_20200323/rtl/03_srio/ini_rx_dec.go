// =================================================================================================
// File Name      : INI_rx_dec.v
// Module         : INI_RX_DEC
// Function       : Initiator receive decode module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      2025/04/16   stark.ye          Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module INI_RX_DEC (
    input                               USR_CLK                                 ,//(i) [  1]
    input                               USR_RST                                 ,//(i) [  1]

    input                               INI_SOP                                 ,//(i) [  1]
    input                               INI_EOP                                 ,//(i) [  1]
    input                               INI_DVLD                                ,//(i) [  1]
    input       [  63:0]                INI_DATA                                ,//(i) [ 64]

    output                              REG_RD_ACK                              ,//(o) [  1]
    output      [  31:0]                REG_RD_DATA                             ,//(o) [ 31]

    output      [  63:0]                INI_RD_DATA                             ,//(o) [ 64]
    output                              INI_RD_DVLD                             ,//(o) [  1]
    output                              INI_RD_SOF                              ,//(o) [  1]
    output                              INI_RD_EOF                               //(o) [  1]
    );

// =============================================================================
// Parameter define
// =============================================================================

    parameter                           p_SRC_ID            = 8'h00             ;//(p) [ 8]

    parameter                           p_TYPE_NWRITE       = 8'h54             ;//(p) [ 8]
    parameter                           p_TYPE_SWRITE       = 8'h60             ;//(p) [ 8]
    parameter                           p_TYPE_NREAD        = 8'h24             ;//(p) [ 8]
    parameter                           p_TYPE_RESPONE      = 8'hD8             ;//(p) [ 8]

// =============================================================================
// INIernal signal define
// =============================================================================

    reg                                 r_INI_SOP                               ;//(r) [  1]
    reg                                 r_INI_EOP                               ;//(r) [  1]
    reg                                 r_INI_DVLD                              ;//(r) [  1]
    reg         [  63:0]                r_INI_DATA                              ;//(r) [ 32]

    reg                                 r_INI_SOP_LOCK1                         ;
    reg                                 r_INI_SOP_LOCK2                         ;

    wire                                s_INI_PL_SOP1                           ;
    wire                                s_INI_PL_SOP2                           ;
    wire                                s_RESPONE_EN                            ;
    wire                                s_TYPE_REG_RD                           ;
    wire                                s_TYPE_DMA_RD                           ;

    reg                                 r_DMA_RD_SEL                            ;

    reg                                 r_REG_RD_ACK                            ;
    reg         [  31:0]                r_REG_RD_DATA                           ;//(r) [ 32]

    reg         [  63:0]                r_INI_RD_DATA                           ;//(r) [ 32]
    reg                                 r_INI_RD_DVLD                           ;
    reg                                 r_INI_RD_SOF                            ;
    reg                                 r_INI_RD_EOF                            ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||               Output                                                        ||
||                                                                             ||
/+=============================================================================*/

    assign  REG_RD_ACK                 = r_REG_RD_ACK                           ;
    assign  REG_RD_DATA                = r_REG_RD_DATA                          ;

    assign  INI_RD_DATA                = r_INI_RD_DATA                          ;
    assign  INI_RD_DVLD                = r_INI_RD_DVLD                          ;
    assign  INI_RD_SOF                 = r_INI_RD_SOF                           ;
    assign  INI_RD_EOF                 = r_INI_RD_EOF                           ;

/*========================================================================+/
||                                                                        ||
||                            Command  Decoder                            ||
||                                                                        ||
/+========================================================================*/

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_INI_SOP                   <= 'b0 ;
            r_INI_EOP                   <= 'b0 ;
            r_INI_DVLD                  <= 'b0 ;
            r_INI_DATA                  <= 'b0 ;
        end else begin
            r_INI_SOP                   <= INI_SOP  ;
            r_INI_EOP                   <= INI_EOP  ;
            r_INI_DVLD                  <= INI_DVLD ;
            r_INI_DATA                  <= INI_DATA ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_INI_SOP_LOCK1          <= 1'b0 ;
        end else begin
            if (r_INI_SOP & s_RESPONE_EN) begin
                r_INI_SOP_LOCK1      <= 1'b1 ;
            end else if (r_INI_DVLD) begin
                r_INI_SOP_LOCK1      <= 1'b0 ;
            end
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_INI_SOP_LOCK2          <= 1'b0 ;
        end else begin
            if (s_INI_PL_SOP1 & s_TYPE_DMA_RD) begin
                r_INI_SOP_LOCK2      <= 1'b1 ;
            end else if (r_INI_DVLD) begin
                r_INI_SOP_LOCK2      <= 1'b0 ;
            end
        end
    end

    assign s_INI_PL_SOP1                = r_INI_SOP_LOCK1 & r_INI_DVLD ;
    assign s_INI_PL_SOP2                = r_INI_SOP_LOCK2 & r_INI_DVLD ;

    assign s_RESPONE_EN                 = ( r_INI_SOP == 1'b1 && r_INI_DATA[55:48] == p_TYPE_RESPONE  ) ? 1'b1 : 1'b0 ;

    assign s_TYPE_REG_RD                = ( s_INI_PL_SOP1 == 1'b1 && r_INI_DATA[32] == 1'b1  ) ? 1'b1 : 1'b0 ;
    assign s_TYPE_DMA_RD                = ( s_INI_PL_SOP1 == 1'b1 && r_INI_DATA[33] == 1'b1  ) ? 1'b1 : 1'b0 ;

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_RD_SEL                <= 1'b0 ;
        end else begin
            if (s_TYPE_DMA_RD)          r_DMA_RD_SEL    <= 1'b1 ;    else if ( r_INI_EOP == 1'b1 )    r_DMA_RD_SEL  <= 1'b0 ;
        end
    end

/*============================================================================+/
||                                                                            ||
||                              REG RD Packet                                 ||
||                                                                            ||
/+============================================================================*/

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_REG_RD_ACK                <= 'b0 ;
            r_REG_RD_DATA               <= 'b0 ;
        end else begin
            r_REG_RD_ACK                <= s_TYPE_REG_RD & r_INI_EOP ;

            if (s_TYPE_REG_RD) begin
                r_REG_RD_DATA           <= r_INI_DATA[31:0] ;  //single mode
            end
        end
    end

/*============================================================================+/
||                                                                            ||
||                             DMA RD Packet                                  ||
||                                                                            ||
/+============================================================================*/

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_INI_RD_DATA               <= 'b0 ;
        end else begin
            r_INI_RD_DATA               <= r_INI_DATA[63:0]  ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_INI_RD_DVLD               <= 'b0 ;
        end else begin
            r_INI_RD_DVLD               <= r_DMA_RD_SEL & r_INI_DVLD ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_INI_RD_SOF                <= 'b0 ;
            r_INI_RD_EOF                <= 'b0 ;
        end else begin
            r_INI_RD_SOF                <= s_INI_PL_SOP2 ;
            r_INI_RD_EOF                <= r_DMA_RD_SEL & r_INI_EOP & r_INI_DVLD ;
        end
    end

endmodule