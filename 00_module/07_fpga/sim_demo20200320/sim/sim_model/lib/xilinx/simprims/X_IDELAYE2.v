///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 12.0
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Input Fixed or Variable Delay Element.
// /___/   /\     Filename : X_IDELAYE2.v
// \   \  /  \    Timestamp : Sat Sep 19 14:17:57 PDT 2009
//  \___\/\___\
//
// Revision:
//    09/19/09 - Initial version.
//    12/03/10 - CR 582681 - Updated init delay value 
//    12/20/10 - CR 587496 - Made pulses to be in transport mode
//    02/01/11 - CR 592255 - Updated default value of HIGH_PERFORMANCE_MODE.
// End Revision

`timescale  1 ps / 1 ps

module X_IDELAYE2 (CNTVALUEOUT, DATAOUT, C, CE, CINVCTRL, CNTVALUEIN, DATAIN, IDATAIN, INC, LD, LDPIPEEN, REGRST);

    parameter CINVCTRL_SEL = "FALSE";
    parameter DELAY_SRC = "IDATAIN";
    parameter HIGH_PERFORMANCE_MODE    = "FALSE";
    parameter IDELAY_TYPE  = "FIXED";
    parameter integer IDELAY_VALUE = 0;
    parameter PIPE_SEL = "FALSE";
    parameter real REFCLK_FREQUENCY = 200.0;
    parameter SIGNAL_PATTERN    = "DATA";

    parameter LOC = "UNPLACED";
    parameter integer SIM_DELAY_D = 0;
    localparam DELAY_D = (IDELAY_TYPE == "VARIABLE") ? SIM_DELAY_D : 0;

    output [4:0] CNTVALUEOUT;
    output DATAOUT;

    input C;
    input CE;
    input CINVCTRL;
    input [4:0] CNTVALUEIN;
    input DATAIN;
    input IDATAIN;
    input INC;
    input LD;
    input LDPIPEEN;
    input REGRST;


    tri0  GSR = glbl.GSR;
    real  CALC_TAPDELAY ; 
    real  INIT_DELAY;

//------------------- constants ------------------------------------

    localparam MAX_DELAY_COUNT = 31; 
    localparam MIN_DELAY_COUNT = 0; 

    localparam MAX_REFCLK_FREQUENCYL = 210.0;
    localparam MIN_REFCLK_FREQUENCYL = 190.0;

    localparam MAX_REFCLK_FREQUENCYH = 310.0;
    localparam MIN_REFCLK_FREQUENCYH = 290.0;


//------------------- variable declaration -------------------------

    integer idelay_count;
    integer CNTVALUEIN_INTEGER;
    reg [4:0] cntvalueout_pre;

    reg notifier;

    reg data_mux = 0;
    reg tap_out   = 0;
    reg DATAOUT_reg   = 0;

    wire delay_chain_0,  delay_chain_1,  delay_chain_2,  delay_chain_3,
         delay_chain_4,  delay_chain_5,  delay_chain_6,  delay_chain_7,
         delay_chain_8,  delay_chain_9,  delay_chain_10, delay_chain_11,
         delay_chain_12, delay_chain_13, delay_chain_14, delay_chain_15,
         delay_chain_16, delay_chain_17, delay_chain_18, delay_chain_19,
         delay_chain_20, delay_chain_21, delay_chain_22, delay_chain_23,
         delay_chain_24, delay_chain_25, delay_chain_26, delay_chain_27,
         delay_chain_28, delay_chain_29, delay_chain_30, delay_chain_31;

    reg  c_in;
    wire ce_in;
    wire clkin_in;
    wire [4:0] cntvaluein_in;
    wire datain_in;
    wire gsr_in;
    wire idatain_in;
    wire inc_in;
    wire odatain_in;
    wire ld_in;
    wire t_in;
    wire cinvctrl_in;
    wire ldpipeen_in;
    wire regrst_in;

    wire c_in_pre;

   reg [4:0] qcntvalueout_reg = 5'b0;
   reg [4:0] qcntvalueout_mux = 5'b0;


//----------------------------------------------------------------------
//------------------------  Output buffering  ------------------------------
//----------------------------------------------------------------------
    wire DATAOUT = tap_out;
    wire [4:0] CNTVALUEOUT = cntvalueout_pre;

    assign cinvctrl_in = CINVCTRL;
    assign datain_in = DATAIN;
    assign idatain_in = IDATAIN;
    assign gsr_in = GSR;

//*** GLOBAL hidden GSR pin
    always @(gsr_in) begin
	if (gsr_in == 1'b1) begin
//   For simprims, the fixed/Default Delay values are taken from the sdf.
            if (IDELAY_TYPE == "FIXED")
                assign idelay_count = 0;
            else
                assign idelay_count = IDELAY_VALUE;
        end
	else if (gsr_in == 1'b0) begin
	    deassign idelay_count;
	end
    end


//------------------------------------------------------------
//---------------------   Initialization  --------------------
//------------------------------------------------------------

    initial begin

        //-------- CINVCTRL_SEL check

        case (CINVCTRL_SEL)
            "TRUE", "FALSE" : ;
            default : begin
               $display("Attribute Syntax Error : The attribute CINVCTRL_SEL on X_IDELAYE2 instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.",  CINVCTRL_SEL);
               $finish;
            end
        endcase

        //-------- DELAY_SRC check

        if (DELAY_SRC != "DATAIN" && DELAY_SRC != "IDATAIN") begin
            $display("Attribute Syntax Error : The attribute DELAY_SRC on X_IDELAYE2 instance %m is set to %s.  Legal values for this attribute are DATAIN or IDATAIN", DELAY_SRC);
            $finish;
        end



        //-------- HIGH_PERFORMANCE_MODE check

        case (HIGH_PERFORMANCE_MODE)
            "TRUE", "FALSE" : ;
            default : begin
               $display("Attribute Syntax Error : The attribute HIGH_PERFORMANCE_MODE on X_IDELAYE2 instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.",  HIGH_PERFORMANCE_MODE);
               $finish;
            end
        endcase


        //-------- IDELAY_TYPE check

        if (IDELAY_TYPE != "FIXED" && IDELAY_TYPE != "VARIABLE" && IDELAY_TYPE != "VAR_LOAD" && IDELAY_TYPE != "VAR_LOAD_PIPE") begin

            $display("Attribute Syntax Error : The attribute IDELAY_TYPE on X_IDELAYE2 instance %m is set to %s.  Legal values for this attribute are FIXED, VARIABLE, VAR_LOAD or VAR_LOAD_PIPE", IDELAY_TYPE);
            $finish;

        end


        //-------- IDELAY_VALUE check

        if (IDELAY_VALUE < MIN_DELAY_COUNT || IDELAY_VALUE > MAX_DELAY_COUNT) begin
            $display("Attribute Syntax Error : The attribute IDELAY_VALUE on X_IDELAYE2 instance %m is set to %d.  Legal values for this attribute are 0, 1, 2, 3, .... or 31", IDELAY_VALUE);
            $finish;

        end

        //-------- PIPE_SEL check

        case (PIPE_SEL)
            "TRUE", "FALSE" : ;
            default : begin
               $display("Attribute Syntax Error : The attribute PIPE_SEL on X_IDELAYE2 instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.",  PIPE_SEL);
               $finish;
            end
        endcase


        //-------- REFCLK_FREQUENCY check

        if (REFCLK_FREQUENCY < MIN_REFCLK_FREQUENCYL || REFCLK_FREQUENCY > MAX_REFCLK_FREQUENCYH) begin
            $display("Attribute Syntax Error : The attribute REFCLK_FREQUENCY on X_IDELAYE2 instance %m is set to %f.  Legal values for this attribute are 175.0 to 225.0", REFCLK_FREQUENCY);
            $finish;

        end

        //-------- SIGNAL_PATTERN check

        case (SIGNAL_PATTERN)
            "CLOCK", "DATA" : ;
            default : begin
               $display("Attribute Syntax Error : The attribute SIGNAL_PATTERN on X_IDELAYE2 instance %m is set to %s.  Legal values for this attribute are DATA or CLOCK.",  SIGNAL_PATTERN);
               $finish;
            end
        endcase


        //-------- CALC_TAPDELAY check

        INIT_DELAY = 600;

    end // initial begin

    // CALC_TAPDELAY value
    initial begin
        if ((REFCLK_FREQUENCY <= MAX_REFCLK_FREQUENCYH) && (REFCLK_FREQUENCY >= MIN_REFCLK_FREQUENCYH))
                begin
                        CALC_TAPDELAY = 52;
                end
        else
                begin
                        CALC_TAPDELAY = 78;
                end
    end

//----------------------------------------------------------------------
//------------------------ Dynamic clock inversion ---------------------
//----------------------------------------------------------------------

//    always @(c_in_pre or cinvctrl_in) begin
//        case (CINVCTRL_SEL)
//                "TRUE" : c_in = (cinvctrl_in ? ~c_in_pre : c_in_pre);
//                "FALSE" : c_in = c_in_pre;
//        endcase
//    end

   generate
      case (CINVCTRL_SEL)
         "TRUE"  : always @(c_in_pre or cinvctrl_in) c_in = (cinvctrl_in ? ~c_in_pre : c_in_pre);
         "FALSE" : always @(c_in_pre) c_in = c_in_pre;
      endcase
   endgenerate

//----------------------------------------------------------------------
//------------------------      CNTVALUEOUT        ---------------------
//----------------------------------------------------------------------
    always @(idelay_count) begin
//  Fixed CNTVALUEOUT for when in FIXED mode because of simprim. 
       if(IDELAY_TYPE != "FIXED")
           assign cntvalueout_pre = idelay_count;
       else
           assign cntvalueout_pre = IDELAY_VALUE;
    end

//----------------------------------------------------------------------
//--------------------------  CNTVALUEIN LOAD --------------------------
//----------------------------------------------------------------------
    always @(posedge c_in) begin
       if (regrst_in == 1'b1) 
              qcntvalueout_reg = 5'b0;
       else if (regrst_in == 1'b0 && ldpipeen_in == 1'b1) begin
              qcntvalueout_reg =  CNTVALUEIN_INTEGER;
       end 
    end  // always @(posedge c_in)

   generate
      case (PIPE_SEL)
         "TRUE"  : always @(qcntvalueout_reg) qcntvalueout_mux   <= qcntvalueout_reg;
         "FALSE" : always @(CNTVALUEIN_INTEGER) qcntvalueout_mux   <= CNTVALUEIN_INTEGER;
      endcase
    endgenerate

//----------------------------------------------------------------------
//--------------------------  IDELAY_COUNT  ----------------------------
//----------------------------------------------------------------------
    always @(posedge c_in) begin

        if (IDELAY_TYPE == "VARIABLE" | IDELAY_TYPE == "VAR_LOAD" | IDELAY_TYPE == "VAR_LOAD_PIPE") begin
            if (ld_in == 1'b1) begin
                case (IDELAY_TYPE)
                        "VARIABLE" : idelay_count = IDELAY_VALUE;
                        "VAR_LOAD", "VAR_LOAD_PIPE" : idelay_count = qcntvalueout_mux;
                endcase
            end
            else if (ld_in == 1'b0 && ce_in == 1'b1) begin
                if (inc_in == 1'b1) begin
                    case (IDELAY_TYPE)
                        "VARIABLE", "VAR_LOAD", "VAR_LOAD_PIPE" : begin
                                        if (idelay_count < MAX_DELAY_COUNT)
                                          idelay_count = idelay_count + 1;
                                        else if (idelay_count == MAX_DELAY_COUNT)
                                          idelay_count = MIN_DELAY_COUNT;
                                     end
                    endcase
                end
                else if (inc_in == 1'b0) begin
                    case (IDELAY_TYPE)
                        "VARIABLE", "VAR_LOAD", "VAR_LOAD_PIPE" : begin
                                        if (idelay_count >  MIN_DELAY_COUNT)
                                          idelay_count = idelay_count - 1;
                                        else if (idelay_count == MIN_DELAY_COUNT)
                                          idelay_count = MAX_DELAY_COUNT;
                                     end
                    endcase
                end
            end
        end //
    end // always @ (posedge c_in)
  
    always @(cntvaluein_in or gsr_in) begin
                case (cntvaluein_in)
                        5'b00000 : assign CNTVALUEIN_INTEGER = 0;
                        5'b00001 : assign CNTVALUEIN_INTEGER = 1;
                        5'b00010 : assign CNTVALUEIN_INTEGER = 2;
                        5'b00011 : assign CNTVALUEIN_INTEGER = 3;
                        5'b00100 : assign CNTVALUEIN_INTEGER = 4;
                        5'b00101 : assign CNTVALUEIN_INTEGER = 5;
                        5'b00110 : assign CNTVALUEIN_INTEGER = 6;
                        5'b00111 : assign CNTVALUEIN_INTEGER = 7;
                        5'b01000 : assign CNTVALUEIN_INTEGER = 8;
                        5'b01001 : assign CNTVALUEIN_INTEGER = 9;
                        5'b01010 : assign CNTVALUEIN_INTEGER = 10;
                        5'b01011 : assign CNTVALUEIN_INTEGER = 11;
                        5'b01100 : assign CNTVALUEIN_INTEGER = 12;
                        5'b01101 : assign CNTVALUEIN_INTEGER = 13;
                        5'b01110 : assign CNTVALUEIN_INTEGER = 14;
                        5'b01111 : assign CNTVALUEIN_INTEGER = 15;
                        5'b10000 : assign CNTVALUEIN_INTEGER = 16;
                        5'b10001 : assign CNTVALUEIN_INTEGER = 17;
                        5'b10010 : assign CNTVALUEIN_INTEGER = 18;
                        5'b10011 : assign CNTVALUEIN_INTEGER = 19;
                        5'b10100 : assign CNTVALUEIN_INTEGER = 20;
                        5'b10101 : assign CNTVALUEIN_INTEGER = 21;
                        5'b10110 : assign CNTVALUEIN_INTEGER = 22;
                        5'b10111 : assign CNTVALUEIN_INTEGER = 23;
                        5'b11000 : assign CNTVALUEIN_INTEGER = 24;
                        5'b11001 : assign CNTVALUEIN_INTEGER = 25;
                        5'b11010 : assign CNTVALUEIN_INTEGER = 26;
                        5'b11011 : assign CNTVALUEIN_INTEGER = 27;
                        5'b11100 : assign CNTVALUEIN_INTEGER = 28;
                        5'b11101 : assign CNTVALUEIN_INTEGER = 29;
                        5'b11110 : assign CNTVALUEIN_INTEGER = 30;
                        5'b11111 : assign CNTVALUEIN_INTEGER = 31;
                endcase
    end

 
//*********************************************************
//*** SELECT IDATA signal
//*********************************************************

    always @(datain_in or idatain_in) begin

        case (DELAY_SRC)

            "IDATAIN" : begin
                         data_mux <= idatain_in;
                        end
            "DATAIN" : begin
                         data_mux <= datain_in;
                       end
            default : begin
                          $display("Attribute Syntax Error : The attribute DELAY_SRC on X_IODELAYE2 instance %m is set to %s.  Legal values for this attribute are DATAIN or IDATAIN", DELAY_SRC);
                          $finish;
                      end

        endcase // case(DELAY_SRC)

    end // always @(datain_in or idatain_in)

//*********************************************************
//*** DELAY IDATA signal
//*********************************************************
    assign #(DELAY_D)     delay_chain_0  = data_mux;
    assign #CALC_TAPDELAY delay_chain_1  = delay_chain_0;
    assign #CALC_TAPDELAY delay_chain_2  = delay_chain_1;
    assign #CALC_TAPDELAY delay_chain_3  = delay_chain_2;
    assign #CALC_TAPDELAY delay_chain_4  = delay_chain_3;
    assign #CALC_TAPDELAY delay_chain_5  = delay_chain_4;
    assign #CALC_TAPDELAY delay_chain_6  = delay_chain_5;
    assign #CALC_TAPDELAY delay_chain_7  = delay_chain_6;
    assign #CALC_TAPDELAY delay_chain_8  = delay_chain_7;
    assign #CALC_TAPDELAY delay_chain_9  = delay_chain_8;
    assign #CALC_TAPDELAY delay_chain_10 = delay_chain_9;
    assign #CALC_TAPDELAY delay_chain_11 = delay_chain_10;
    assign #CALC_TAPDELAY delay_chain_12 = delay_chain_11;
    assign #CALC_TAPDELAY delay_chain_13 = delay_chain_12;
    assign #CALC_TAPDELAY delay_chain_14 = delay_chain_13;
    assign #CALC_TAPDELAY delay_chain_15 = delay_chain_14;
    assign #CALC_TAPDELAY delay_chain_16 = delay_chain_15;
    assign #CALC_TAPDELAY delay_chain_17 = delay_chain_16;
    assign #CALC_TAPDELAY delay_chain_18 = delay_chain_17;
    assign #CALC_TAPDELAY delay_chain_19 = delay_chain_18;
    assign #CALC_TAPDELAY delay_chain_20 = delay_chain_19;
    assign #CALC_TAPDELAY delay_chain_21 = delay_chain_20;
    assign #CALC_TAPDELAY delay_chain_22 = delay_chain_21;
    assign #CALC_TAPDELAY delay_chain_23 = delay_chain_22;
    assign #CALC_TAPDELAY delay_chain_24 = delay_chain_23;
    assign #CALC_TAPDELAY delay_chain_25 = delay_chain_24;
    assign #CALC_TAPDELAY delay_chain_26 = delay_chain_25;
    assign #CALC_TAPDELAY delay_chain_27 = delay_chain_26;
    assign #CALC_TAPDELAY delay_chain_28 = delay_chain_27;
    assign #CALC_TAPDELAY delay_chain_29 = delay_chain_28;
    assign #CALC_TAPDELAY delay_chain_30 = delay_chain_29;
    assign #CALC_TAPDELAY delay_chain_31 = delay_chain_30;

//*********************************************************
//*** assign delay
//*********************************************************
    always @(idelay_count) begin
        case (idelay_count)
            0:  assign tap_out = delay_chain_0;
            1:  assign tap_out = delay_chain_1;
            2:  assign tap_out = delay_chain_2;
            3:  assign tap_out = delay_chain_3;
            4:  assign tap_out = delay_chain_4;
            5:  assign tap_out = delay_chain_5;
            6:  assign tap_out = delay_chain_6;
            7:  assign tap_out = delay_chain_7;
            8:  assign tap_out = delay_chain_8;
            9:  assign tap_out = delay_chain_9;
            10: assign tap_out = delay_chain_10;
            11: assign tap_out = delay_chain_11;
            12: assign tap_out = delay_chain_12;
            13: assign tap_out = delay_chain_13;
            14: assign tap_out = delay_chain_14;
            15: assign tap_out = delay_chain_15;
            16: assign tap_out = delay_chain_16;
            17: assign tap_out = delay_chain_17;
            18: assign tap_out = delay_chain_18;
            19: assign tap_out = delay_chain_19;
            20: assign tap_out = delay_chain_20;
            21: assign tap_out = delay_chain_21;
            22: assign tap_out = delay_chain_22;
            23: assign tap_out = delay_chain_23;
            24: assign tap_out = delay_chain_24;
            25: assign tap_out = delay_chain_25;
            26: assign tap_out = delay_chain_26;
            27: assign tap_out = delay_chain_27;
            28: assign tap_out = delay_chain_28;
            29: assign tap_out = delay_chain_29;
            30: assign tap_out = delay_chain_30;
            31: assign tap_out = delay_chain_31;
            default:
                assign tap_out = delay_chain_0;
        endcase
    end // always @ (idelay_count)

//*** Timing Checks Start here

    always @(notifier) begin
        tap_out <= 1'bx;
    end


    specify

        ( C *> CNTVALUEOUT) = (100:100:100, 100:100:100);
        ( C => DATAOUT) = (0:0:0, 0:0:0);
        ( CINVCTRL *> CNTVALUEOUT) = (100:100:100, 100:100:100);
        ( CINVCTRL => DATAOUT) = (100:100:100, 100:100:100);
        ( DATAIN => DATAOUT) = (100:100:100, 100:100:100);
        ( IDATAIN => DATAOUT) = (100:100:100, 100:100:100);

        $period (negedge C, 0:0:0, notifier);
        $period (posedge C, 0:0:0, notifier);
 
        $setuphold (posedge C, posedge CE,  0:0:0, 0:0:0, notifier, , , c_in_pre, ce_in);
        $setuphold (posedge C, negedge CE,  0:0:0, 0:0:0, notifier, , , c_in_pre, ce_in);
        $setuphold (posedge C, posedge INC, 0:0:0, 0:0:0, notifier, , , c_in_pre, inc_in);
        $setuphold (posedge C, negedge INC, 0:0:0, 0:0:0, notifier, , , c_in_pre, inc_in);
        $setuphold (posedge C, posedge LD, 0:0:0, 0:0:0, notifier, , , c_in_pre, ld_in);
        $setuphold (posedge C, negedge LD, 0:0:0, 0:0:0, notifier, , , c_in_pre, ld_in);
        $setuphold (posedge C, posedge CNTVALUEIN, 0:0:0, 0:0:0, notifier, , , c_in_pre, cntvaluein_in);
        $setuphold (posedge C, negedge CNTVALUEIN, 0:0:0, 0:0:0, notifier, , , c_in_pre, cntvaluein_in);
        $setuphold (posedge C, posedge LDPIPEEN, 0:0:0, 0:0:0, notifier, , , c_in_pre, ldpipeen_in);
        $setuphold (posedge C, negedge LDPIPEEN, 0:0:0, 0:0:0, notifier, , , c_in_pre, ldpipeen_in);
        $setuphold (posedge C, posedge REGRST,  0:0:0, 0:0:0, notifier, , , c_in_pre, regrst_in);
        $setuphold (posedge C, negedge REGRST,  0:0:0, 0:0:0, notifier, , , c_in_pre, regrst_in);


        specparam PATHPULSE$ = 0;

    endspecify

endmodule // X_IDELAYE2
