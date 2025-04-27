// =================================================================================================
// File Name      : reg_ack.v
// Module         : REG_ACK
// Function       : usb reg packet generate module
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

module REG_ACK (
    //system signals
    input                               CLK                                     ,//(i)  [  1]  Systerm clock(125mhz)
    input                               RST                                     ,//(i)  [  1]  Async. reset(low active)
    //register control
    input                               REG_RD_REQ                              ,//(i)  [  1]  Register read request
    input                               REG_RD_ACK                              ,//(i)  [  1]  Register read data
    output                              REG_RD_OK                               ,//(o)  [  1]  Register read ok
    input       [  31:0]                REG_RD_DATA                             ,//(i)  [ 32]  Register read address
    input       [  31:0]                REG_OP_ADDR                             ,//(i)  [ 64]  Register read data valid
    //tx
    output                              REG_TX_REQ                              ,//(o)  [  1]  Completion packet TX request
    input                               REG_TX_ACK                              ,//(i)  [  1]  Completion packet TX acknowledge
    output      [  31:0]                REG_TX_DATA                             ,//(o)  [ 64]  Completion packet TX data
    output                              REG_TX_DVLD                             ,//(o)  [  1]  Completion packet TX valid
    output                              REG_TX_SOP                              ,//(o)  [  1]  Completion packet TX start
    output                              REG_TX_EOP                               //(o)  [  1]  Completion packet TX end
    );

// ==============================================================================
// localparam Declare
// ==============================================================================

    parameter                           p_TYPE_REG_RD       = 16'h5A55          ;//(p) [ 16]
    parameter                           p_TYPE_REG_WR       = 16'h5055          ;//(p) [ 16]
    parameter                           p_TYPE_DN           = 16'h2A55          ;//(p) [ 16]
    parameter                           p_TYPE_UP           = 16'h2555          ;//(p) [ 16]

// ==============================================================================
// Internal Signal Declare
// ==============================================================================

    reg         [  31:0]                r_TX_DATA                               ;
    reg         [  31:0]                r_TX_ADDR                               ;
    wire        [  31:0]                s_REG_HEAD0                             ;
    wire        [  31:0]                s_REG_HEAD1                             ;
    wire        [  31:0]                s_REG_HEAD2                             ;

    reg                                 r_REG_RD_ACK_DFF1                       ;
    reg                                 r_REG_RD_ACK_DFF2                       ;
    reg                                 r_REG_TX_REQ                            ;

    reg                                 r_REG_TX_ACK_DFF1                       ;
    reg                                 r_REG_TX_ACK_DFF2                       ;
    reg                                 r_REG_TX_ACK_DFF3                       ;

    reg                                 r_REG_TX_DVLD                           ;
    reg                                 r_REG_TX_SOP                            ;
    reg                                 r_REG_TX_EOP                            ;
    reg         [  31:0]                r_REG_TX_DATA                           ;

    reg                                 r_REG_RD_OK                             ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||                              Output Port                                    ||
||                                                                             ||
/+=============================================================================*/

    assign  REG_RD_OK                   = r_REG_RD_OK                           ;

    assign  REG_TX_REQ                  = r_REG_TX_REQ                          ;
    assign  REG_TX_DVLD                 = r_REG_TX_DVLD                         ;
    assign  REG_TX_SOP                  = r_REG_TX_SOP                          ;
    assign  REG_TX_EOP                  = r_REG_TX_EOP                          ;
    assign  REG_TX_DATA                 = r_REG_TX_DATA                         ;

/*=============================================================================+/
||                                                                             ||
||                      CPLD Packet Generete                                   ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_TX_ADDR                   <= 'b0 ;
            r_TX_DATA                   <= 'b0 ;
        end else begin
            if (REG_RD_ACK) begin
                r_TX_ADDR               <= REG_OP_ADDR;
                r_TX_DATA               <= REG_RD_DATA;
            end
        end
    end

    assign s_REG_HEAD0                  = {16'h0 ,p_TYPE_REG_RD};
    assign s_REG_HEAD1                  = r_TX_ADDR ;
    assign s_REG_HEAD2                  = r_TX_DATA ;

/*==========================================================================+/
||                                                                          ||
||                     Register CPLD Transmit Generete                      ||
||                                                                          ||
/+==========================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_RD_ACK_DFF1           <= 1'b0 ;
            r_REG_RD_ACK_DFF2           <= 1'b0 ;
        end else begin
            r_REG_RD_ACK_DFF1           <= REG_RD_ACK        ;
            r_REG_RD_ACK_DFF2           <= r_REG_RD_ACK_DFF1 ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_TX_REQ                <= 1'b0 ;
        end else begin
            if (r_REG_RD_ACK_DFF2) begin
                r_REG_TX_REQ            <= 1'b1 ;
            end else if (r_REG_TX_ACK_DFF3) begin
                r_REG_TX_REQ            <= 1'b0 ;
            end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_TX_ACK_DFF1           <= 'b0 ;
            r_REG_TX_ACK_DFF2           <= 'b0 ;
            r_REG_TX_ACK_DFF3           <= 'b0 ;
        end else begin
            r_REG_TX_ACK_DFF1           <= REG_TX_ACK ;
            r_REG_TX_ACK_DFF2           <= r_REG_TX_ACK_DFF1 ;
            r_REG_TX_ACK_DFF3           <= r_REG_TX_ACK_DFF2 ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_TX_DVLD               <= 'b0 ;
            r_REG_TX_SOP                <= 'b0 ;
            r_REG_TX_EOP                <= 'b0 ;
            r_REG_TX_DATA               <= 'b0 ;
        end else begin
            if (r_REG_TX_ACK_DFF1) begin
                r_REG_TX_DVLD           <= 1'b1         ;
                r_REG_TX_SOP            <= 1'b1         ;
                r_REG_TX_EOP            <= 1'b0         ;
                r_REG_TX_DATA           <= s_REG_HEAD0  ;
            end else if (r_REG_TX_ACK_DFF2) begin
                r_REG_TX_DVLD           <= 1'b1         ;
                r_REG_TX_SOP            <= 1'b0         ;
                r_REG_TX_EOP            <= 1'b0         ;
                r_REG_TX_DATA           <= s_REG_HEAD1  ;
            end else if (r_REG_TX_ACK_DFF3) begin
                r_REG_TX_DVLD           <= 1'b1         ;
                r_REG_TX_SOP            <= 1'b0         ;
                r_REG_TX_EOP            <= 1'b1         ;
                r_REG_TX_DATA           <= s_REG_HEAD2  ;
            end else begin
                r_REG_TX_DVLD           <= 'b0 ;
                r_REG_TX_SOP            <= 'b0 ;
                r_REG_TX_EOP            <= 'b0 ;
                r_REG_TX_DATA           <= 'b0 ;
            end

        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_RD_OK                 <= 'b0 ;
        end else begin
            r_REG_RD_OK                 <= r_REG_TX_ACK_DFF3 ;
        end
    end

endmodule

