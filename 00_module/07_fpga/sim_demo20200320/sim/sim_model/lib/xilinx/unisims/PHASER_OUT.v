// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/fuji/PHASER_OUT.v,v 1.16.46.1 2011/06/02 18:47:24 robh Exp $
///////////////////////////////////////////////////////
//  Copyright (c) 2010 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version : 10.1
//  \  \           Description : Xilinx Functional Simulation Library Component
//  /  /                         Fujisan PHASER OUT
// /__/   /\       Filename    : PHASER_OUT.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision: Comment:
//  22APR2010 Initial UNI/UNP/SIM version from yaml
//  12JUL2010 enable secureip
//  14JUL2010 Hook up GSR
//  26AUG2010 rtl, yaml update
//  24SEP2010 rtl, yaml update
//  13OCT2010 rtl, yaml update
//  26OCT2010 rtl update
//  02NOV2010 yaml update, correct tieoffs
//  05NOV2010 secureip parameter name update
//  01DEC2010 yaml update, REFCLK_PERIOD max
//  20DEC2010 587097 yaml update, OUTPUT_CLK_SRC, STG1_BYPASS
//  02FEB2011 592485 yaml, rtl update
//  02JUN2011 610011 rtl update, ADD REFCLK_PERIOD parameter
///////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module PHASER_OUT (
  COARSEOVERFLOW,
  COUNTERREADVAL,
  FINEOVERFLOW,
  OCLK,
  OCLKDELAYED,
  OCLKDIV,
  OSERDESRST,

  COARSEENABLE,
  COARSEINC,
  COUNTERLOADEN,
  COUNTERLOADVAL,
  COUNTERREADEN,
  DIVIDERST,
  EDGEADV,
  FINEENABLE,
  FINEINC,
  FREQREFCLK,
  MEMREFCLK,
  PHASEREFCLK,
  RST,
  SELFINEOCLKDELAY,
  SYNCIN,
  SYSCLK
);

  parameter integer CLKOUT_DIV = 4;
  parameter COARSE_BYPASS = "FALSE";
  parameter integer COARSE_DELAY = 0;
  parameter EN_OSERDES_RST = "FALSE";
  parameter integer FINE_DELAY = 0;
  parameter OCLKDELAY_INV = "FALSE";
  parameter integer OCLK_DELAY = 0;
  parameter OUTPUT_CLK_SRC = "PHASE_REF";
  parameter real REFCLK_PERIOD = 0.000;
  parameter SYNC_IN_DIV_RST = "FALSE";
  
  localparam in_delay = 1;
  localparam out_delay = 1;
  localparam INCLK_DELAY = 0;
  localparam OUTCLK_DELAY = 1;
  localparam MODULE_NAME = "PHASER_OUT";

  output COARSEOVERFLOW;
  output FINEOVERFLOW;
  output OCLK;
  output OCLKDELAYED;
  output OCLKDIV;
  output OSERDESRST;
  output [8:0] COUNTERREADVAL;

  input COARSEENABLE;
  input COARSEINC;
  input COUNTERLOADEN;
  input COUNTERREADEN;
  input DIVIDERST;
  input EDGEADV;
  input FINEENABLE;
  input FINEINC;
  input FREQREFCLK;
  input MEMREFCLK;
  input PHASEREFCLK;
  input RST;
  input SELFINEOCLKDELAY;
  input SYNCIN;
  input SYSCLK;
  input [8:0] COUNTERLOADVAL;

  reg REFCLK_PERIOD_BINARY;
  reg [0:0] COARSE_BYPASS_BINARY;
  reg [0:0] CTL_MODE_BINARY;
  reg [0:0] DATA_CTL_N_BINARY;
  reg [0:0] DATA_RD_CYCLES_BINARY;
  reg [0:0] EN_OSERDES_RST_BINARY;
  reg [0:0] EN_TEST_RING_BINARY;
  reg [0:0] OCLKDELAY_INV_BINARY;
  reg [0:0] PHASER_OUT_EN_BINARY;
  reg [0:0] STG1_BYPASS_BINARY;
  reg [0:0] SYNC_IN_DIV_RST_BINARY;
  reg [10:0] TEST_OPT_BINARY;
  reg [1:0] OUTPUT_CLK_SRC_BINARY;
  reg [3:0] CLKOUT_DIV_BINARY;
  reg [3:0] CLKOUT_DIV_POS_BINARY;
  reg [3:0] CLKOUT_DIV_ST_BINARY;
  reg [5:0] COARSE_DELAY_BINARY;
  reg [5:0] FINE_DELAY_BINARY;
  reg [5:0] OCLK_DELAY_BINARY;

  tri0 GSR = glbl.GSR;

  initial begin
    case (CLKOUT_DIV)
      4 : CLKOUT_DIV_BINARY <= 4'b0010;
      2 : CLKOUT_DIV_BINARY <= 4'b0000;
      3 : CLKOUT_DIV_BINARY <= 4'b0001;
      5 : CLKOUT_DIV_BINARY <= 4'b0011;
      6 : CLKOUT_DIV_BINARY <= 4'b0100;
      7 : CLKOUT_DIV_BINARY <= 4'b0101;
      8 : CLKOUT_DIV_BINARY <= 4'b0110;
      9 : CLKOUT_DIV_BINARY <= 4'b0111;
      10 : CLKOUT_DIV_BINARY <= 4'b1000;
      11 : CLKOUT_DIV_BINARY <= 4'b1001;
      12 : CLKOUT_DIV_BINARY <= 4'b1010;
      13 : CLKOUT_DIV_BINARY <= 4'b1011;
      14 : CLKOUT_DIV_BINARY <= 4'b1100;
      15 : CLKOUT_DIV_BINARY <= 4'b1101;
      16 : CLKOUT_DIV_BINARY <= 4'b1110;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLKOUT_DIV on %s instance %m is set to %d.  Legal values for this attribute are 2 to 16.", MODULE_NAME, CLKOUT_DIV);
        $finish;
      end
    endcase

    case (COARSE_BYPASS)
      "FALSE" : COARSE_BYPASS_BINARY <= 1'b0;
      "TRUE" : COARSE_BYPASS_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute COARSE_BYPASS on %s instance %m is set to %s.  Legal values for this attribute are FALSE or TRUE.", MODULE_NAME, COARSE_BYPASS);
        $finish;
      end
    endcase

    CTL_MODE_BINARY <= 1'b0; // model alert

    DATA_CTL_N_BINARY <= 1'b0;

    DATA_RD_CYCLES_BINARY <= 1'b0;
    case (EN_OSERDES_RST)
      "FALSE" : EN_OSERDES_RST_BINARY <= 1'b0;
      "TRUE" : EN_OSERDES_RST_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute EN_OSERDES_RST on %s instance %m is set to %s.  Legal values for this attribute are FALSE or TRUE.", MODULE_NAME, EN_OSERDES_RST);
        $finish;
      end
    endcase

    EN_TEST_RING_BINARY <= 1'b0;

    case (OCLKDELAY_INV)
      "FALSE" : OCLKDELAY_INV_BINARY <= 1'b0;
      "TRUE" : OCLKDELAY_INV_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute OCLKDELAY_INV on %s instance %m is set to %s.  Legal values for this attribute are FALSE or TRUE.", MODULE_NAME, OCLKDELAY_INV);
        $finish;
      end
    endcase

    case (OUTPUT_CLK_SRC)
      "PHASE_REF" : OUTPUT_CLK_SRC_BINARY <= 2'b00;
      "DELAYED_PHASE_REF" : OUTPUT_CLK_SRC_BINARY <= 2'b11;
      "DELAYED_REF" : OUTPUT_CLK_SRC_BINARY <= 2'b01;
      "FREQ_REF" : OUTPUT_CLK_SRC_BINARY <= 2'b10;
      default : begin
        $display("Attribute Syntax Error : The Attribute OUTPUT_CLK_SRC on %s instance %m is set to %s.  Legal values for this attribute are PHASE_REF, DELAYED_PHASE_REF, DELAYED_REF or FREQ_REF.", MODULE_NAME, OUTPUT_CLK_SRC);
        $finish;
      end
    endcase

    PHASER_OUT_EN_BINARY <= 1'b1;

    if (OUTPUT_CLK_SRC == "DELAYED_PHASE_REF")
      STG1_BYPASS_BINARY <= 1'b0;
    else
      STG1_BYPASS_BINARY <= 1'b1;

    case (SYNC_IN_DIV_RST)
      "FALSE" : SYNC_IN_DIV_RST_BINARY <= 1'b0;
      "TRUE" : SYNC_IN_DIV_RST_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute SYNC_IN_DIV_RST on %s instance %m is set to %s.  Legal values for this attribute are FALSE or TRUE.", MODULE_NAME, SYNC_IN_DIV_RST);
        $finish;
      end
    endcase

    case (CLKOUT_DIV)
        2   : CLKOUT_DIV_POS_BINARY <= 4'b0001;
        3   : CLKOUT_DIV_POS_BINARY <= 4'b0001;
        4   : CLKOUT_DIV_POS_BINARY <= 4'b0010;
        5   : CLKOUT_DIV_POS_BINARY <= 4'b0010;
        6   : CLKOUT_DIV_POS_BINARY <= 4'b0011;
        7   : CLKOUT_DIV_POS_BINARY <= 4'b0011;
        8   : CLKOUT_DIV_POS_BINARY <= 4'b0100;
        9   : CLKOUT_DIV_POS_BINARY <= 4'b0100;
       10   : CLKOUT_DIV_POS_BINARY <= 4'b0101;
       11   : CLKOUT_DIV_POS_BINARY <= 4'b0101;
       12   : CLKOUT_DIV_POS_BINARY <= 4'b0110;
       13   : CLKOUT_DIV_POS_BINARY <= 4'b0110;
       14   : CLKOUT_DIV_POS_BINARY <= 4'b0111;
       15   : CLKOUT_DIV_POS_BINARY <= 4'b0111;
       16   : CLKOUT_DIV_POS_BINARY <= 4'b1000;
     default: CLKOUT_DIV_POS_BINARY <= 4'b0010;
    endcase

    CLKOUT_DIV_ST_BINARY <= 4'b0000;

    if ((COARSE_DELAY >= 0) && (COARSE_DELAY <= 63))
      COARSE_DELAY_BINARY <= COARSE_DELAY;
    else begin
      $display("Attribute Syntax Error : The Attribute COARSE_DELAY on %s instance %m is set to %d.  Legal values for this attribute are 0 to 63.", MODULE_NAME, COARSE_DELAY);
      $finish;
    end

    if ((FINE_DELAY >= 0) && (FINE_DELAY <= 63))
      FINE_DELAY_BINARY <= FINE_DELAY;
    else begin
      $display("Attribute Syntax Error : The Attribute FINE_DELAY on %s instance %m is set to %d.  Legal values for this attribute are 0 to 63.", MODULE_NAME, FINE_DELAY);
      $finish;
    end

    if ((OCLK_DELAY >= 0) && (OCLK_DELAY <= 63))
      OCLK_DELAY_BINARY <= OCLK_DELAY;
    else begin
      $display("Attribute Syntax Error : The Attribute OCLK_DELAY on %s instance %m is set to %d.  Legal values for this attribute are 0 to 63.", MODULE_NAME, OCLK_DELAY);
      $finish;
    end

    if ((REFCLK_PERIOD >= 0.000) && (REFCLK_PERIOD <= 10.000))
      REFCLK_PERIOD_BINARY <= 1'b1;
    else begin
      $display("Attribute Syntax Error : The Attribute REFCLK_PERIOD on %s instance %m is set to %2.3f.  Legal values for this attribute are 0.000 to 10.000.", MODULE_NAME, REFCLK_PERIOD);
      $finish;
    end

    TEST_OPT_BINARY <= 11'b0;

  end

  wire [1:0] delay_CTSBUS;
  wire [1:0] delay_DQSBUS;
  wire [1:0] delay_DTSBUS;
  wire [3:0] delay_TESTOUT;
  wire [8:0] delay_COUNTERREADVAL;
  wire delay_COARSEOVERFLOW;
  wire delay_FINEOVERFLOW;
  wire delay_OCLK;
  wire delay_OCLKDELAYED;
  wire delay_OCLKDIV;
  wire delay_OSERDESRST;
  wire delay_RDENABLE;
  wire delay_SCANOUT;

  wire [15:0] delay_TESTIN = 16'hffff;
  wire [1:0] delay_ENCALIB = 2'b11;
  wire [1:0] delay_ENCALIBPHY = 2'b0;
  wire [8:0] delay_COUNTERLOADVAL;
  wire delay_BURSTPENDING = 1'b1;
  wire delay_BURSTPENDINGPHY = 1'b0;
  wire delay_COARSEENABLE;
  wire delay_COARSEINC;
  wire delay_COUNTERLOADEN;
  wire delay_COUNTERREADEN;
  wire delay_DIVIDERST;
  wire delay_EDGEADV;
  wire delay_FINEENABLE;
  wire delay_FINEINC;
  wire delay_FREQREFCLK;
  wire delay_MEMREFCLK;
  wire delay_PHASEREFCLK;
  wire delay_RST;
  wire delay_SCANCLK = 1'b1;
  wire delay_SCANENB = 1'b1;
  wire delay_SCANIN = 1'b1;
  wire delay_SCANMODEB = 1'b1;
  wire delay_SELFINEOCLKDELAY;
  wire delay_SYNCIN;
  wire delay_SYSCLK;
  wire delay_GSR;

  assign #(OUTCLK_DELAY) OCLK = delay_OCLK;
  assign #(OUTCLK_DELAY) OCLKDELAYED = delay_OCLKDELAYED;
  assign #(OUTCLK_DELAY) OCLKDIV = delay_OCLKDIV;

  assign #(out_delay) COARSEOVERFLOW = delay_COARSEOVERFLOW;
  assign #(out_delay) COUNTERREADVAL = delay_COUNTERREADVAL;
  assign #(out_delay) FINEOVERFLOW = delay_FINEOVERFLOW;
  assign #(out_delay) OSERDESRST = delay_OSERDESRST;

  assign #(INCLK_DELAY) delay_FREQREFCLK = FREQREFCLK;
  assign #(INCLK_DELAY) delay_SYSCLK = SYSCLK;

  assign #(in_delay) delay_COARSEENABLE = COARSEENABLE;
  assign #(in_delay) delay_COARSEINC = COARSEINC;
  assign #(in_delay) delay_COUNTERLOADEN = COUNTERLOADEN;
  assign #(in_delay) delay_COUNTERLOADVAL = COUNTERLOADVAL;
  assign #(in_delay) delay_COUNTERREADEN = COUNTERREADEN;
  assign #(in_delay) delay_DIVIDERST = DIVIDERST;
  assign #(in_delay) delay_EDGEADV = EDGEADV;
  assign #(in_delay) delay_FINEENABLE = FINEENABLE;
  assign #(in_delay) delay_FINEINC = FINEINC;
  assign #(in_delay) delay_MEMREFCLK = MEMREFCLK;
  assign #(in_delay) delay_PHASEREFCLK = PHASEREFCLK;
  assign #(in_delay) delay_RST = RST;
  assign #(in_delay) delay_SELFINEOCLKDELAY = SELFINEOCLKDELAY;
  assign #(in_delay) delay_SYNCIN = SYNCIN;
  assign delay_GSR = GSR;

  SIP_PHASER_OUT #(
    .REFCLK_PERIOD (REFCLK_PERIOD)
    ) PHASER_OUT_INST (
    .CLKOUT_DIV (CLKOUT_DIV_BINARY),
    .CLKOUT_DIV_POS (CLKOUT_DIV_POS_BINARY),
    .CLKOUT_DIV_ST (CLKOUT_DIV_ST_BINARY),
    .COARSE_BYPASS (COARSE_BYPASS_BINARY),
    .COARSE_DELAY (COARSE_DELAY_BINARY),
    .CTL_MODE (CTL_MODE_BINARY),
    .DATA_CTL_N (DATA_CTL_N_BINARY),
    .DATA_RD_CYCLES (DATA_RD_CYCLES_BINARY),
    .EN_OSERDES_RST (EN_OSERDES_RST_BINARY),
    .EN_TEST_RING (EN_TEST_RING_BINARY),
    .FINE_DELAY (FINE_DELAY_BINARY),
    .OCLKDELAY_INV (OCLKDELAY_INV_BINARY),
    .OCLK_DELAY (OCLK_DELAY_BINARY),
    .OUTPUT_CLK_SRC (OUTPUT_CLK_SRC_BINARY),
    .PHASER_OUT_EN (PHASER_OUT_EN_BINARY),
    .STG1_BYPASS (STG1_BYPASS_BINARY),
    .SYNC_IN_DIV_RST (SYNC_IN_DIV_RST_BINARY),
    .TEST_OPT (TEST_OPT_BINARY),

    .COARSEOVERFLOW (delay_COARSEOVERFLOW),
    .COUNTERREADVAL (delay_COUNTERREADVAL),
    .CTSBUS (delay_CTSBUS),
    .DQSBUS (delay_DQSBUS),
    .DTSBUS (delay_DTSBUS),
    .FINEOVERFLOW (delay_FINEOVERFLOW),
    .OCLK (delay_OCLK),
    .OCLKDELAYED (delay_OCLKDELAYED),
    .OCLKDIV (delay_OCLKDIV),
    .OSERDESRST (delay_OSERDESRST),
    .RDENABLE (delay_RDENABLE),
    .SCANOUT (delay_SCANOUT),
    .TESTOUT (delay_TESTOUT),
    .BURSTPENDING (delay_BURSTPENDING),
    .BURSTPENDINGPHY (delay_BURSTPENDINGPHY),
    .COARSEENABLE (delay_COARSEENABLE),
    .COARSEINC (delay_COARSEINC),
    .COUNTERLOADEN (delay_COUNTERLOADEN),
    .COUNTERLOADVAL (delay_COUNTERLOADVAL),
    .COUNTERREADEN (delay_COUNTERREADEN),
    .DIVIDERST (delay_DIVIDERST),
    .EDGEADV (delay_EDGEADV),
    .ENCALIB (delay_ENCALIB),
    .ENCALIBPHY (delay_ENCALIBPHY),
    .FINEENABLE (delay_FINEENABLE),
    .FINEINC (delay_FINEINC),
    .FREQREFCLK (delay_FREQREFCLK),
    .MEMREFCLK (delay_MEMREFCLK),
    .PHASEREFCLK (delay_PHASEREFCLK),
    .RST (delay_RST),
    .SCANCLK (delay_SCANCLK),
    .SCANENB (delay_SCANENB),
    .SCANIN (delay_SCANIN),
    .SCANMODEB (delay_SCANMODEB),
    .SELFINEOCLKDELAY (delay_SELFINEOCLKDELAY),
    .SYNCIN (delay_SYNCIN),
    .SYSCLK (delay_SYSCLK),
    .TESTIN (delay_TESTIN),
    .GSR (delay_GSR)
  );

endmodule // PHASER_OUT
