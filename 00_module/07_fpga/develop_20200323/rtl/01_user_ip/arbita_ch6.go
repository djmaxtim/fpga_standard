// =================================================================================================
// File Name      : arbita_ch6.v
// Module         : ARBITA_CH6
// Function       : ARBITA_CH6
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.Level    Date         Coded by          Contents            Comp
// 0.0.1        2018/08/24   chen.y            create new          speed-clouds
// =================================================================================================
// End Revision
// =================================================================================================

`timescale 1ps / 1ps

module ARBITA_CH6 (
    //system signals
    input                               CLK                                     ,//(i)  [  1]
    input                               RST                                     ,//(i)  [  1]
    //completion packet tx
    input                               ARBIT_RDY                               ,//(i)  [  1]
    output                              ARBIT_SOP                               ,//(o)  [  1]
    output                              ARBIT_EOP                               ,//(o)  [  1]
    output                              ARBIT_DVLD                              ,//(o)  [  1]
    output      [  63:0]                ARBIT_DATA                              ,//(o)  [ 64]

    output                              CHX_RDY                                 ,

    input                               CH0_REQ                                 ,//(i)  [  1]
    output                              CH0_ACK                                 ,//(o)  [  1]
    input                               CH0_SOP                                 ,//(i)  [  1]
    input                               CH0_EOP                                 ,//(i)  [  1]
    input                               CH0_DVLD                                ,//(i)  [  1]
    input       [  63:0]                CH0_DATA                                ,//(i)  [ 64]

    input                               CH1_REQ                                 ,//(i)  [  1]
    output                              CH1_ACK                                 ,//(o)  [  1]
    input                               CH1_SOP                                 ,//(i)  [  1]
    input                               CH1_EOP                                 ,//(i)  [  1]
    input                               CH1_DVLD                                ,//(i)  [  1]
    input       [  63:0]                CH1_DATA                                ,//(i)  [ 64]

    input                               CH2_REQ                                 ,//(i)  [  1]
    output                              CH2_ACK                                 ,//(o)  [  1]
    input                               CH2_SOP                                 ,//(i)  [  1]
    input                               CH2_EOP                                 ,//(i)  [  1]
    input                               CH2_DVLD                                ,//(i)  [  1]
    input       [  63:0]                CH2_DATA                                ,//(i)  [ 64]

    input                               CH3_REQ                                 ,//(i)  [  1]
    output                              CH3_ACK                                 ,//(o)  [  1]
    input                               CH3_SOP                                 ,//(i)  [  1]
    input                               CH3_EOP                                 ,//(i)  [  1]
    input                               CH3_DVLD                                ,//(i)  [  1]
    input       [  63:0]                CH3_DATA                                ,//(i)  [ 64]

    input                               CH4_REQ                                 ,//(i)  [  1]
    output                              CH4_ACK                                 ,//(o)  [  1]
    input                               CH4_SOP                                 ,//(i)  [  1]
    input                               CH4_EOP                                 ,//(i)  [  1]
    input                               CH4_DVLD                                ,//(i)  [  1]
    input       [  63:0]                CH4_DATA                                ,//(i)  [ 64]

    input                               CH5_REQ                                 ,//(i)  [  1]
    output                              CH5_ACK                                 ,//(o)  [  1]
    input                               CH5_SOP                                 ,//(i)  [  1]
    input                               CH5_EOP                                 ,//(i)  [  1]
    input                               CH5_DVLD                                ,//(i)  [  1]
    input       [  63:0]                CH5_DATA                                 //(i)  [ 64]
    );

// =============================================================================
// localparam Declare
// =============================================================================

    localparam                          P_IDLE  = 8'b0000_0001                  ;//(p)  [ 18]
    localparam                          P_CHK   = 8'b0000_0010                  ;//(p)  [ 18]
    localparam                          P_CH0   = 8'b0000_0100                  ;//(p)  [ 18]
    localparam                          P_CH1   = 8'b0000_1000                  ;//(p)  [ 18]
    localparam                          P_CH2   = 8'b0001_0000                  ;//(p)  [ 18]
    localparam                          P_CH3   = 8'b0010_0000                  ;//(p)  [ 18]
    localparam                          P_CH4   = 8'b0100_0000                  ;//(p)  [ 18]
    localparam                          P_CH5   = 8'b1000_0000                  ;//(p)  [ 18]

// =============================================================================
// Internal Signal Declare
// =============================================================================

    reg         [   7:0]                r_FSM                                   ;//(r)  [  8]
    wire                                s_FSM_IDLE                              ;//(s)  [  1]
    wire                                s_FSM_CHK                               ;//(s)  [  1]
    wire                                s_FSM_CH0                               ;//(s)  [  1]
    wire                                s_FSM_CH1                               ;//(s)  [  1]
    wire                                s_FSM_CH2                               ;//(s)  [  1]
    wire                                s_FSM_CH3                               ;//(s)  [  1]
    wire                                s_FSM_CH4                               ;//(s)  [  1]
    wire                                s_FSM_CH5                               ;//(s)  [  1]

    reg                                 r_FSM_CH0                               ;//(r)  [  1]
    reg                                 r_FSM_CH1                               ;//(r)  [  1]
    reg                                 r_FSM_CH2                               ;//(r)  [  1]
    reg                                 r_FSM_CH3                               ;//(r)  [  1]
    reg                                 r_FSM_CH4                               ;//(r)  [  1]
    reg                                 r_FSM_CH5                               ;//(r)  [  1]

    wire                                s_CH0_ACK                               ;//(s)  [  1]
    wire                                s_CH1_ACK                               ;//(s)  [  1]
    wire                                s_CH2_ACK                               ;//(s)  [  1]
    wire                                s_CH3_ACK                               ;//(s)  [  1]
    wire                                s_CH4_ACK                               ;//(s)  [  1]
    wire                                s_CH5_ACK                               ;//(s)  [  1]

    reg                                 r_CH0_ACK                               ;//(r)  [  1]
    reg                                 r_CH1_ACK                               ;//(r)  [  1]
    reg                                 r_CH2_ACK                               ;//(r)  [  1]
    reg                                 r_CH3_ACK                               ;//(r)  [  1]
    reg                                 r_CH4_ACK                               ;//(r)  [  1]
    reg                                 r_CH5_ACK                               ;//(r)  [  1]

    reg                                 r_ARBIT_SOP                             ;//(r)  [  1]
    reg                                 r_ARBIT_EOP                             ;//(r)  [  1]
    reg                                 r_ARBIT_DVLD                            ;//(r)  [  1]
    reg         [  63:0]                r_ARBIT_DATA                            ;//(r)  [ 64]

// =================================================================================================
// RTL Body
// =================================================================================================

/*==============================================================================+/
||                                                                              ||
||                           Output Ports                                       ||
||                                                                              ||
/+==============================================================================*/

    assign  CH0_ACK                     = r_CH0_ACK                             ;
    assign  CH1_ACK                     = r_CH1_ACK                             ;
    assign  CH2_ACK                     = r_CH2_ACK                             ;
    assign  CH3_ACK                     = r_CH3_ACK                             ;
    assign  CH4_ACK                     = r_CH4_ACK                             ;
    assign  CH5_ACK                     = r_CH5_ACK                             ;
    assign  CHX_RDY                     = ARBIT_RDY                             ;

    assign  ARBIT_SOP                   = r_ARBIT_SOP                           ;
    assign  ARBIT_EOP                   = r_ARBIT_EOP                           ;
    assign  ARBIT_DVLD                  = r_ARBIT_DVLD                          ;
    assign  ARBIT_DATA                  = r_ARBIT_DATA                          ;

/*==============================================================================+/
||                                                                              ||
||                             Arbiter FSM                                      ||
||                                                                              ||
/+==============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM   <= P_IDLE;
        end else begin
            case (r_FSM)
                P_IDLE  :
                    begin
                        if (ARBIT_RDY == 1'b1) begin
                            r_FSM       <= P_CHK ;
                        end else begin
                            r_FSM       <= P_IDLE ;
                        end
                    end

                P_CHK  :
                    begin
                        if (CH0_REQ) begin
                            r_FSM       <= P_CH0 ;
                        end else if (CH1_REQ) begin
                            r_FSM       <= P_CH1 ;
                        end else if (CH2_REQ) begin
                            r_FSM       <= P_CH2 ;
                        end else if (CH3_REQ) begin
                            r_FSM       <= P_CH3 ;
                        end else if (CH4_REQ) begin
                            r_FSM       <= P_CH4 ;
                        end else if (CH5_REQ) begin
                            r_FSM       <= P_CH5 ;
                        end else begin
                            r_FSM       <= P_CHK ;
                        end
                    end

                P_CH0   :
                    begin
                        if (CH0_EOP == 1'b1) begin
                            r_FSM       <= P_IDLE ;
                        end else begin
                            r_FSM       <= P_CH0 ;
                        end
                    end

                P_CH1   :
                    begin
                        if (CH1_EOP == 1'b1) begin
                            r_FSM       <= P_IDLE ;
                        end else begin
                            r_FSM       <= P_CH1 ;
                        end
                    end

                P_CH2   :
                    begin
                        if (CH2_EOP == 1'b1) begin
                            r_FSM       <= P_IDLE ;
                        end else begin
                            r_FSM       <= P_CH2 ;
                        end
                    end

                P_CH3   :
                    begin
                        if (CH3_EOP == 1'b1) begin
                            r_FSM       <= P_IDLE ;
                        end else begin
                            r_FSM       <= P_CH3 ;
                        end
                    end

                P_CH4   :
                    begin
                        if (CH4_EOP == 1'b1) begin
                            r_FSM       <= P_IDLE ;
                        end else begin
                            r_FSM       <= P_CH4 ;
                        end
                    end

                P_CH5   :
                    begin
                        if (CH5_EOP == 1'b1) begin
                            r_FSM       <= P_IDLE ;
                        end else begin
                            r_FSM       <= P_CH5 ;
                        end
                    end

                default :
                    begin
                        r_FSM           <= P_IDLE ;
                    end
            endcase
        end
    end

    assign  s_FSM_IDLE                  = r_FSM[0]  ;
    assign  s_FSM_CHK                   = r_FSM[1]  ;
    assign  s_FSM_CH0                   = r_FSM[2]  ;
    assign  s_FSM_CH1                   = r_FSM[3]  ;
    assign  s_FSM_CH2                   = r_FSM[4]  ;
    assign  s_FSM_CH3                   = r_FSM[5]  ;
    assign  s_FSM_CH4                   = r_FSM[6]  ;
    assign  s_FSM_CH5                   = r_FSM[7]  ;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM_CH0                   <= 'b0 ;
            r_FSM_CH1                   <= 'b0 ;
            r_FSM_CH2                   <= 'b0 ;
            r_FSM_CH3                   <= 'b0 ;
            r_FSM_CH4                   <= 'b0 ;
            r_FSM_CH5                   <= 'b0 ;
        end else begin
            r_FSM_CH0                   <= s_FSM_CH0  ;
            r_FSM_CH1                   <= s_FSM_CH1  ;
            r_FSM_CH2                   <= s_FSM_CH2  ;
            r_FSM_CH3                   <= s_FSM_CH3  ;
            r_FSM_CH4                   <= s_FSM_CH4  ;
            r_FSM_CH5                   <= s_FSM_CH5  ;
        end
    end

    assign  s_CH0_ACK                   = s_FSM_CHK & ( CH0_REQ)                                                                        ;
    assign  s_CH1_ACK                   = s_FSM_CHK & (~CH0_REQ)  & ( CH1_REQ)                                                          ;
    assign  s_CH2_ACK                   = s_FSM_CHK & (~CH0_REQ)  & (~CH1_REQ)  & ( CH2_REQ)                                            ;
    assign  s_CH3_ACK                   = s_FSM_CHK & (~CH0_REQ)  & (~CH1_REQ)  & (~CH2_REQ)  & ( CH3_REQ)                              ;
    assign  s_CH4_ACK                   = s_FSM_CHK & (~CH0_REQ)  & (~CH1_REQ)  & (~CH2_REQ)  & (~CH3_REQ) & ( CH4_REQ)                 ;
    assign  s_CH5_ACK                   = s_FSM_CHK & (~CH0_REQ)  & (~CH1_REQ)  & (~CH2_REQ)  & (~CH3_REQ) & (~CH4_REQ) & ( CH5_REQ)    ;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_CH0_ACK                   <= 'b0 ;
            r_CH1_ACK                   <= 'b0 ;
            r_CH2_ACK                   <= 'b0 ;
            r_CH3_ACK                   <= 'b0 ;
            r_CH4_ACK                   <= 'b0 ;
            r_CH5_ACK                   <= 'b0 ;
        end else begin
            r_CH0_ACK                   <= s_CH0_ACK  ;
            r_CH1_ACK                   <= s_CH1_ACK  ;
            r_CH2_ACK                   <= s_CH2_ACK  ;
            r_CH3_ACK                   <= s_CH3_ACK  ;
            r_CH4_ACK                   <= s_CH4_ACK  ;
            r_CH5_ACK                   <= s_CH5_ACK  ;
        end
    end

/*=============================================================================+/
||                                                                             ||
||                                 Data Select                                 ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_ARBIT_SOP                 <= 'b0 ;
            r_ARBIT_EOP                 <= 'b0 ;
            r_ARBIT_DVLD                <= 'b0 ;
            r_ARBIT_DATA                <= 'b0 ;
        end else begin
            if (r_FSM_CH0) begin
                r_ARBIT_SOP             <= CH0_SOP  ;
                r_ARBIT_EOP             <= CH0_EOP  ;
                r_ARBIT_DVLD            <= CH0_DVLD ;
                r_ARBIT_DATA            <= CH0_DATA ;
            end else if (r_FSM_CH1) begin
                r_ARBIT_SOP             <= CH1_SOP  ;
                r_ARBIT_EOP             <= CH1_EOP  ;
                r_ARBIT_DVLD            <= CH1_DVLD ;
                r_ARBIT_DATA            <= CH1_DATA ;
            end else if (r_FSM_CH2) begin
                r_ARBIT_SOP             <= CH2_SOP  ;
                r_ARBIT_EOP             <= CH2_EOP  ;
                r_ARBIT_DVLD            <= CH2_DVLD ;
                r_ARBIT_DATA            <= CH2_DATA ;
            end else if (r_FSM_CH3) begin
                r_ARBIT_SOP             <= CH3_SOP  ;
                r_ARBIT_EOP             <= CH3_EOP  ;
                r_ARBIT_DVLD            <= CH3_DVLD ;
                r_ARBIT_DATA            <= CH3_DATA ;
            end else if (r_FSM_CH4) begin
                r_ARBIT_SOP             <= CH4_SOP  ;
                r_ARBIT_EOP             <= CH4_EOP  ;
                r_ARBIT_DVLD            <= CH4_DVLD ;
                r_ARBIT_DATA            <= CH4_DATA ;
            end else if (r_FSM_CH5) begin
                r_ARBIT_SOP             <= CH5_SOP  ;
                r_ARBIT_EOP             <= CH5_EOP  ;
                r_ARBIT_DVLD            <= CH5_DVLD ;
                r_ARBIT_DATA            <= CH5_DATA ;
            end else begin
                r_ARBIT_SOP             <= 'b0 ;
                r_ARBIT_EOP             <= 'b0 ;
                r_ARBIT_DVLD            <= 'b0 ;
                r_ARBIT_DATA            <= 'b0 ;
            end
        end
    end

endmodule