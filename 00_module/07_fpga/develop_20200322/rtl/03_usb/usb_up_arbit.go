// =================================================================================================
// File Name      : usb_up_arbit.v
// Module         : USB_UP_ARBIT
// Function       : Upload Arbiter module
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

module USB_UP_ARBIT (
    //system
    input                               CLK                                     ,//(i)  [  1]
    input                               RST                                     ,//(i)  [  1]
    //dma
    input                               USB_UP0_REQ                             ,//(i)  [  1]
    output                              USB_UP0_ACK                             ,//(o)  [  1]
    output                              USB_UP0_RDY                             ,//(i)  [  1]
    input                               USB_UP0_DVLD                            ,//(i)  [  1]
    input       [  31:0]                USB_UP0_DATA                            ,//(i)  [ 64]
    input                               USB_UP0_SOP                             ,//(i)  [  1]
    input                               USB_UP0_EOP                             ,//(i)  [  1]

    input                               USB_UP1_REQ                             ,//(i)  [  1]
    output                              USB_UP1_ACK                             ,//(o)  [  1]
    output                              USB_UP1_RDY                             ,//(o)  [  1]
    input                               USB_UP1_DVLD                            ,//(i)  [  1]
    input       [  31:0]                USB_UP1_DATA                            ,//(i)  [ 64]
    input                               USB_UP1_SOP                             ,//(i)  [  1]
    input                               USB_UP1_EOP                             ,//(i)  [  1]
    //tx
    input                               USB_UP_RDY                              ,//(o)  [  1]
    output                              USB_UP_REQ                              ,//(o)  [  1]
    input                               USB_UP_ACK                              ,//(i)  [  1]
    output                              USB_UP_DVLD                             ,//(o)  [  1]
    output      [  31:0]                USB_UP_DATA                             ,//(o)  [ 64]
    output                              USB_UP_SOP                              ,//(o)  [  1]
    output                              USB_UP_EOP                               //(o)  [  1]
    );

// =============================================================================
// localparam Declare
// =============================================================================

    localparam                          P_IDLE          = 5'b00001              ;//(p)  [  9]
    localparam                          P_CH0_REQ       = 5'b00010              ;//(p)  [  9]
    localparam                          P_CH0_TX        = 5'b00100              ;//(p)  [  9]
    localparam                          P_CH1_REQ       = 5'b01000              ;//(p)  [  9]
    localparam                          P_CH1_TX        = 5'b10000              ;//(p)  [  9]

// =============================================================================
// Internal signal define
// =============================================================================

    reg         [   4:0]                r_FSM                                   ;//(r)  [  5]
    wire                                s_FSM_CH0_TX                            ;//(s)  [  1]
    wire                                s_FSM_CH1_TX                            ;//(s)  [  1]
    reg                                 r_FSM_CH0_TX                            ;//(r)  [  1]
    reg                                 r_FSM_CH1_TX                            ;//(r)  [  1]

    reg                                 r_USB_UP_REQ                            ;//(r)  [  1]
    reg                                 r_USB_UP_ACK                            ;//(r)  [  1]
    reg                                 r_USB_UP_DVLD                           ;//(r)  [  5]
    reg                                 r_USB_UP_SOP                            ;//(r)  [  1]
    reg                                 r_USB_UP_EOP                            ;//(r)  [  1]
    reg         [  31:0]                r_USB_UP_DATA                           ;//(r)  [ 64]

    wire                                s_USB_UP0_ACK                           ;//(s)  [  1]
    wire                                s_USB_UP1_ACK                           ;//(s)  [  1]

    wire                                s_USB_UP0_RDY                           ;//(r)  [  1]
    wire                                s_USB_UP1_RDY                           ;//(r)  [  1]

// ================================================================================================
// RTL Body
// ================================================================================================

/*============================================================================+/
||                                                                            ||
||                                Output Port                                 ||
||                                                                            ||
/+============================================================================*/

    assign  USB_UP0_ACK                 = s_USB_UP0_ACK                         ;
    assign  USB_UP0_RDY                 = s_USB_UP0_RDY                         ;
    assign  USB_UP1_ACK                 = s_USB_UP1_ACK                         ;
    assign  USB_UP1_RDY                 = s_USB_UP1_RDY                         ;

    assign  USB_UP_REQ                  = r_USB_UP_REQ                          ;
    assign  USB_UP_DVLD                 = r_USB_UP_DVLD                         ;
    assign  USB_UP_DATA                 = r_USB_UP_DATA                         ;
    assign  USB_UP_SOP                  = r_USB_UP_SOP                          ;
    assign  USB_UP_EOP                  = r_USB_UP_EOP                          ;

/*============================================================================+/
||                                                                            ||
||                         Upload Arbiter Control FSM                         ||
||                                                                            ||
/+============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM   <= P_IDLE ;
        end else begin
            case (r_FSM)
                P_IDLE  :
                    begin
                        r_FSM           <= P_CH0_REQ ;
                    end
                P_CH0_REQ   :
                    begin
                        if (USB_UP0_REQ == 1'b1) begin
                            r_FSM       <= P_CH0_TX ;
                        end else if (USB_UP1_REQ == 1'b1) begin
                            r_FSM       <= P_CH1_TX ;
                        end else begin
                            r_FSM       <= P_CH0_REQ ;
                        end
                    end
                P_CH0_TX   :
                    begin
                        if (USB_UP0_EOP == 1'b1) begin
                            r_FSM       <= P_CH1_REQ ;
                        end else begin
                            r_FSM       <= P_CH0_TX ;
                        end
                    end
                P_CH1_REQ   :
                    begin
                        if (USB_UP1_REQ == 1'b1) begin
                            r_FSM       <= P_CH1_TX ;
                        end else if (USB_UP0_REQ == 1'b1) begin
                            r_FSM       <= P_CH0_TX ;
                        end else begin
                            r_FSM       <= P_CH1_REQ ;
                        end
                    end
                P_CH1_TX   :
                    begin
                        if (USB_UP1_EOP == 1'b1) begin
                            r_FSM       <= P_CH0_REQ ;
                        end else begin
                            r_FSM       <= P_CH1_TX ;
                        end
                    end
                default :
                    begin
                        r_FSM           <= P_IDLE ;
                    end
            endcase
        end
    end

    assign  s_FSM_CH0_TX                = r_FSM[2] ;
    assign  s_FSM_CH1_TX                = r_FSM[4] ;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM_CH0_TX                <= 'b0 ;
            r_FSM_CH1_TX                <= 'b0 ;
        end else begin
            r_FSM_CH0_TX                <= s_FSM_CH0_TX  ;
            r_FSM_CH1_TX                <= s_FSM_CH1_TX  ;
        end
    end

/*============================================================================+/
||                                                                            ||
||              Download request packet generate control                      ||
||                                                                            ||
/+============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_UP_REQ                <= 'b0 ;
        end else begin
            r_USB_UP_REQ                <= s_FSM_CH0_TX | s_FSM_CH1_TX ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_UP_DVLD               <= 'b0 ;
            r_USB_UP_DATA               <= 'b0 ;
            r_USB_UP_SOP                <= 'b0 ;
            r_USB_UP_EOP                <= 'b0 ;
        end else begin
            if (r_FSM_CH0_TX) begin
                r_USB_UP_DVLD           <= USB_UP0_DVLD ;
                r_USB_UP_DATA           <= USB_UP0_DATA ;
                r_USB_UP_SOP            <= USB_UP0_SOP  ;
                r_USB_UP_EOP            <= USB_UP0_EOP  ;
            end else if (r_FSM_CH1_TX) begin
                r_USB_UP_DVLD           <= USB_UP1_DVLD ;
                r_USB_UP_DATA           <= USB_UP1_DATA ;
                r_USB_UP_SOP            <= USB_UP1_SOP  ;
                r_USB_UP_EOP            <= USB_UP1_EOP  ;
            end else begin
                r_USB_UP_DVLD           <= 'b0 ;
                r_USB_UP_DATA           <= 'b0 ;
                r_USB_UP_SOP            <= 'b0 ;
                r_USB_UP_EOP            <= 'b0 ;
            end
        end
    end

    assign  s_USB_UP0_ACK               = r_FSM_CH0_TX & USB_UP_ACK ;
    assign  s_USB_UP1_ACK               = r_FSM_CH1_TX & USB_UP_ACK ;

    assign  s_USB_UP0_RDY               = s_FSM_CH0_TX & USB_UP_RDY ;
    assign  s_USB_UP1_RDY               = s_FSM_CH1_TX & USB_UP_RDY ;

endmodule
