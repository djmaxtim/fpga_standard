// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Apr 25 14:11:20 2025
// Host        : DESKTOP-OBM7L7C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ JESD204_PHY_sim_netlist.v
// Design      : JESD204_PHY
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "jesd204_phy_v4_0_12,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tx_sys_reset,
    rx_sys_reset,
    tx_reset_gt,
    rx_reset_gt,
    tx_reset_done,
    rx_reset_done,
    common0_qpll_clk_in,
    common0_qpll_refclk_in,
    common1_qpll_clk_in,
    common1_qpll_refclk_in,
    common0_qpll_lock_in,
    common1_qpll_lock_in,
    qpll_reset_out,
    rxencommaalign,
    tx_core_clk,
    txoutclk,
    rx_core_clk,
    rxoutclk,
    drpclk,
    gt_prbssel,
    gt0_txcharisk,
    gt0_txdata,
    gt1_txcharisk,
    gt1_txdata,
    gt2_txcharisk,
    gt2_txdata,
    gt3_txcharisk,
    gt3_txdata,
    gt4_txcharisk,
    gt4_txdata,
    gt5_txcharisk,
    gt5_txdata,
    gt6_txcharisk,
    gt6_txdata,
    gt7_txcharisk,
    gt7_txdata,
    gt0_rxcharisk,
    gt0_rxdisperr,
    gt0_rxnotintable,
    gt0_rxdata,
    gt1_rxcharisk,
    gt1_rxdisperr,
    gt1_rxnotintable,
    gt1_rxdata,
    gt2_rxcharisk,
    gt2_rxdisperr,
    gt2_rxnotintable,
    gt2_rxdata,
    gt3_rxcharisk,
    gt3_rxdisperr,
    gt3_rxnotintable,
    gt3_rxdata,
    gt4_rxcharisk,
    gt4_rxdisperr,
    gt4_rxnotintable,
    gt4_rxdata,
    gt5_rxcharisk,
    gt5_rxdisperr,
    gt5_rxnotintable,
    gt5_rxdata,
    gt6_rxcharisk,
    gt6_rxdisperr,
    gt6_rxnotintable,
    gt6_rxdata,
    gt7_rxcharisk,
    gt7_rxdisperr,
    gt7_rxnotintable,
    gt7_rxdata,
    rxn_in,
    rxp_in,
    txn_out,
    txp_out);
  input tx_sys_reset;
  input rx_sys_reset;
  input tx_reset_gt;
  input rx_reset_gt;
  output tx_reset_done;
  output rx_reset_done;
  input common0_qpll_clk_in;
  input common0_qpll_refclk_in;
  input common1_qpll_clk_in;
  input common1_qpll_refclk_in;
  input common0_qpll_lock_in;
  input common1_qpll_lock_in;
  output qpll_reset_out;
  input rxencommaalign;
  input tx_core_clk;
  output txoutclk;
  input rx_core_clk;
  output rxoutclk;
  input drpclk;
  input [2:0]gt_prbssel;
  input [3:0]gt0_txcharisk;
  input [31:0]gt0_txdata;
  input [3:0]gt1_txcharisk;
  input [31:0]gt1_txdata;
  input [3:0]gt2_txcharisk;
  input [31:0]gt2_txdata;
  input [3:0]gt3_txcharisk;
  input [31:0]gt3_txdata;
  input [3:0]gt4_txcharisk;
  input [31:0]gt4_txdata;
  input [3:0]gt5_txcharisk;
  input [31:0]gt5_txdata;
  input [3:0]gt6_txcharisk;
  input [31:0]gt6_txdata;
  input [3:0]gt7_txcharisk;
  input [31:0]gt7_txdata;
  output [3:0]gt0_rxcharisk;
  output [3:0]gt0_rxdisperr;
  output [3:0]gt0_rxnotintable;
  output [31:0]gt0_rxdata;
  output [3:0]gt1_rxcharisk;
  output [3:0]gt1_rxdisperr;
  output [3:0]gt1_rxnotintable;
  output [31:0]gt1_rxdata;
  output [3:0]gt2_rxcharisk;
  output [3:0]gt2_rxdisperr;
  output [3:0]gt2_rxnotintable;
  output [31:0]gt2_rxdata;
  output [3:0]gt3_rxcharisk;
  output [3:0]gt3_rxdisperr;
  output [3:0]gt3_rxnotintable;
  output [31:0]gt3_rxdata;
  output [3:0]gt4_rxcharisk;
  output [3:0]gt4_rxdisperr;
  output [3:0]gt4_rxnotintable;
  output [31:0]gt4_rxdata;
  output [3:0]gt5_rxcharisk;
  output [3:0]gt5_rxdisperr;
  output [3:0]gt5_rxnotintable;
  output [31:0]gt5_rxdata;
  output [3:0]gt6_rxcharisk;
  output [3:0]gt6_rxdisperr;
  output [3:0]gt6_rxnotintable;
  output [31:0]gt6_rxdata;
  output [3:0]gt7_rxcharisk;
  output [3:0]gt7_rxdisperr;
  output [3:0]gt7_rxnotintable;
  output [31:0]gt7_rxdata;
  input [7:0]rxn_in;
  input [7:0]rxp_in;
  output [7:0]txn_out;
  output [7:0]txp_out;

  wire common0_qpll_clk_in;
  wire common0_qpll_lock_in;
  wire common0_qpll_refclk_in;
  wire common1_qpll_clk_in;
  wire common1_qpll_lock_in;
  wire common1_qpll_refclk_in;
  wire drpclk;
  wire [3:0]gt0_rxcharisk;
  wire [31:0]gt0_rxdata;
  wire [3:0]gt0_rxdisperr;
  wire [3:0]gt0_rxnotintable;
  wire [3:0]gt0_txcharisk;
  wire [31:0]gt0_txdata;
  wire [3:0]gt1_rxcharisk;
  wire [31:0]gt1_rxdata;
  wire [3:0]gt1_rxdisperr;
  wire [3:0]gt1_rxnotintable;
  wire [3:0]gt1_txcharisk;
  wire [31:0]gt1_txdata;
  wire [3:0]gt2_rxcharisk;
  wire [31:0]gt2_rxdata;
  wire [3:0]gt2_rxdisperr;
  wire [3:0]gt2_rxnotintable;
  wire [3:0]gt2_txcharisk;
  wire [31:0]gt2_txdata;
  wire [3:0]gt3_rxcharisk;
  wire [31:0]gt3_rxdata;
  wire [3:0]gt3_rxdisperr;
  wire [3:0]gt3_rxnotintable;
  wire [3:0]gt3_txcharisk;
  wire [31:0]gt3_txdata;
  wire [3:0]gt4_rxcharisk;
  wire [31:0]gt4_rxdata;
  wire [3:0]gt4_rxdisperr;
  wire [3:0]gt4_rxnotintable;
  wire [3:0]gt4_txcharisk;
  wire [31:0]gt4_txdata;
  wire [3:0]gt5_rxcharisk;
  wire [31:0]gt5_rxdata;
  wire [3:0]gt5_rxdisperr;
  wire [3:0]gt5_rxnotintable;
  wire [3:0]gt5_txcharisk;
  wire [31:0]gt5_txdata;
  wire [3:0]gt6_rxcharisk;
  wire [31:0]gt6_rxdata;
  wire [3:0]gt6_rxdisperr;
  wire [3:0]gt6_rxnotintable;
  wire [3:0]gt6_txcharisk;
  wire [31:0]gt6_txdata;
  wire [3:0]gt7_rxcharisk;
  wire [31:0]gt7_rxdata;
  wire [3:0]gt7_rxdisperr;
  wire [3:0]gt7_rxnotintable;
  wire [3:0]gt7_txcharisk;
  wire [31:0]gt7_txdata;
  wire [2:0]gt_prbssel;
  wire qpll_reset_out;
  wire rx_core_clk;
  wire rx_reset_done;
  wire rx_reset_gt;
  wire rx_sys_reset;
  wire rxencommaalign;
  wire [7:0]rxn_in;
  wire rxoutclk;
  wire [7:0]rxp_in;
  wire tx_core_clk;
  wire tx_reset_done;
  wire tx_reset_gt;
  wire tx_sys_reset;
  wire [7:0]txn_out;
  wire txoutclk;
  wire [7:0]txp_out;
  wire NLW_inst_gt0_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt0_drprdy_UNCONNECTED;
  wire NLW_inst_gt0_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt0_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt0_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt0_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt0_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt0_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt0_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt1_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt1_drprdy_UNCONNECTED;
  wire NLW_inst_gt1_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt1_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt1_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt1_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt1_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt1_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt1_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt2_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt2_drprdy_UNCONNECTED;
  wire NLW_inst_gt2_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt2_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt2_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt2_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt2_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt2_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt2_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt3_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt3_drprdy_UNCONNECTED;
  wire NLW_inst_gt3_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt3_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt3_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt3_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt3_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt3_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt3_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt4_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt4_drprdy_UNCONNECTED;
  wire NLW_inst_gt4_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt4_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt4_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt4_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt4_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt4_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt4_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt5_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt5_drprdy_UNCONNECTED;
  wire NLW_inst_gt5_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt5_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt5_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt5_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt5_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt5_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt5_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt6_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt6_drprdy_UNCONNECTED;
  wire NLW_inst_gt6_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt6_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt6_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt6_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt6_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt6_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt6_txresetdone_out_UNCONNECTED;
  wire NLW_inst_gt7_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt7_drprdy_UNCONNECTED;
  wire NLW_inst_gt7_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt7_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt7_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt7_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt7_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt7_rxresetdone_out_UNCONNECTED;
  wire NLW_inst_gt7_txresetdone_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt0_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt0_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt0_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt0_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt0_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt0_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt1_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt1_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt1_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt1_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt1_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt1_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt2_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt2_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt2_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt2_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt2_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt2_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt3_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt3_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt3_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt3_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt3_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt3_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt4_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt4_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt4_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt4_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt4_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt4_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt5_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt5_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt5_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt5_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt5_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt5_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt6_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt6_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt6_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt6_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt6_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt6_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt7_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt7_drpdo_UNCONNECTED;
  wire [2:0]NLW_inst_gt7_rxbufstatus_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt7_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt7_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt7_txbufstatus_out_UNCONNECTED;

  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* rx_pll_sel = "3" *) 
  (* tx_pll_sel = "3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_block inst
       (.common0_qpll_clk_in(common0_qpll_clk_in),
        .common0_qpll_lock_in(common0_qpll_lock_in),
        .common0_qpll_refclk_in(common0_qpll_refclk_in),
        .common1_qpll_clk_in(common1_qpll_clk_in),
        .common1_qpll_lock_in(common1_qpll_lock_in),
        .common1_qpll_refclk_in(common1_qpll_refclk_in),
        .cpll_refclk(1'b0),
        .drpclk(drpclk),
        .gt0_cplllock_out(NLW_inst_gt0_cplllock_out_UNCONNECTED),
        .gt0_dmonitorout_out(NLW_inst_gt0_dmonitorout_out_UNCONNECTED[7:0]),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdo(NLW_inst_gt0_drpdo_UNCONNECTED[15:0]),
        .gt0_drpen(1'b0),
        .gt0_drprdy(NLW_inst_gt0_drprdy_UNCONNECTED),
        .gt0_drpwe(1'b0),
        .gt0_eyescandataerror_out(NLW_inst_gt0_eyescandataerror_out_UNCONNECTED),
        .gt0_eyescanreset_in(1'b0),
        .gt0_eyescantrigger_in(1'b0),
        .gt0_loopback_in({1'b0,1'b0,1'b0}),
        .gt0_rxbufreset_in(1'b0),
        .gt0_rxbufstatus_out(NLW_inst_gt0_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt0_rxbyteisaligned_out(NLW_inst_gt0_rxbyteisaligned_out_UNCONNECTED),
        .gt0_rxbyterealign_out(NLW_inst_gt0_rxbyterealign_out_UNCONNECTED),
        .gt0_rxcdrhold_in(1'b0),
        .gt0_rxcharisk(gt0_rxcharisk),
        .gt0_rxcommadet_out(NLW_inst_gt0_rxcommadet_out_UNCONNECTED),
        .gt0_rxdata(gt0_rxdata),
        .gt0_rxdfelpmreset_in(1'b0),
        .gt0_rxdisperr(gt0_rxdisperr),
        .gt0_rxlpmen_in(1'b1),
        .gt0_rxmonitorout_out(NLW_inst_gt0_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt0_rxmonitorsel_in({1'b0,1'b0}),
        .gt0_rxnotintable(gt0_rxnotintable),
        .gt0_rxpcsreset_in(1'b0),
        .gt0_rxpd_in({1'b0,1'b0}),
        .gt0_rxpmareset_in(1'b0),
        .gt0_rxpolarity_in(1'b0),
        .gt0_rxprbscntreset_in(1'b0),
        .gt0_rxprbserr_out(NLW_inst_gt0_rxprbserr_out_UNCONNECTED),
        .gt0_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt0_rxresetdone_out(NLW_inst_gt0_rxresetdone_out_UNCONNECTED),
        .gt0_rxstatus_out(NLW_inst_gt0_rxstatus_out_UNCONNECTED[2:0]),
        .gt0_txbufstatus_out(NLW_inst_gt0_txbufstatus_out_UNCONNECTED[1:0]),
        .gt0_txcharisk(gt0_txcharisk),
        .gt0_txdata(gt0_txdata),
        .gt0_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt0_txinhibit_in(1'b0),
        .gt0_txpcsreset_in(1'b0),
        .gt0_txpd_in({1'b0,1'b0}),
        .gt0_txpmareset_in(1'b0),
        .gt0_txpolarity_in(1'b0),
        .gt0_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_txprbsforceerr_in(1'b0),
        .gt0_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_txresetdone_out(NLW_inst_gt0_txresetdone_out_UNCONNECTED),
        .gt1_cplllock_out(NLW_inst_gt1_cplllock_out_UNCONNECTED),
        .gt1_dmonitorout_out(NLW_inst_gt1_dmonitorout_out_UNCONNECTED[7:0]),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdo(NLW_inst_gt1_drpdo_UNCONNECTED[15:0]),
        .gt1_drpen(1'b0),
        .gt1_drprdy(NLW_inst_gt1_drprdy_UNCONNECTED),
        .gt1_drpwe(1'b0),
        .gt1_eyescandataerror_out(NLW_inst_gt1_eyescandataerror_out_UNCONNECTED),
        .gt1_eyescanreset_in(1'b0),
        .gt1_eyescantrigger_in(1'b0),
        .gt1_loopback_in({1'b0,1'b0,1'b0}),
        .gt1_rxbufreset_in(1'b0),
        .gt1_rxbufstatus_out(NLW_inst_gt1_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt1_rxbyteisaligned_out(NLW_inst_gt1_rxbyteisaligned_out_UNCONNECTED),
        .gt1_rxbyterealign_out(NLW_inst_gt1_rxbyterealign_out_UNCONNECTED),
        .gt1_rxcdrhold_in(1'b0),
        .gt1_rxcharisk(gt1_rxcharisk),
        .gt1_rxcommadet_out(NLW_inst_gt1_rxcommadet_out_UNCONNECTED),
        .gt1_rxdata(gt1_rxdata),
        .gt1_rxdfelpmreset_in(1'b0),
        .gt1_rxdisperr(gt1_rxdisperr),
        .gt1_rxlpmen_in(1'b1),
        .gt1_rxmonitorout_out(NLW_inst_gt1_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt1_rxmonitorsel_in({1'b0,1'b0}),
        .gt1_rxnotintable(gt1_rxnotintable),
        .gt1_rxpcsreset_in(1'b0),
        .gt1_rxpd_in({1'b0,1'b0}),
        .gt1_rxpmareset_in(1'b0),
        .gt1_rxpolarity_in(1'b0),
        .gt1_rxprbscntreset_in(1'b0),
        .gt1_rxprbserr_out(NLW_inst_gt1_rxprbserr_out_UNCONNECTED),
        .gt1_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt1_rxresetdone_out(NLW_inst_gt1_rxresetdone_out_UNCONNECTED),
        .gt1_rxstatus_out(NLW_inst_gt1_rxstatus_out_UNCONNECTED[2:0]),
        .gt1_txbufstatus_out(NLW_inst_gt1_txbufstatus_out_UNCONNECTED[1:0]),
        .gt1_txcharisk(gt1_txcharisk),
        .gt1_txdata(gt1_txdata),
        .gt1_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt1_txinhibit_in(1'b0),
        .gt1_txpcsreset_in(1'b0),
        .gt1_txpd_in({1'b0,1'b0}),
        .gt1_txpmareset_in(1'b0),
        .gt1_txpolarity_in(1'b0),
        .gt1_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_txprbsforceerr_in(1'b0),
        .gt1_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_txresetdone_out(NLW_inst_gt1_txresetdone_out_UNCONNECTED),
        .gt2_cplllock_out(NLW_inst_gt2_cplllock_out_UNCONNECTED),
        .gt2_dmonitorout_out(NLW_inst_gt2_dmonitorout_out_UNCONNECTED[7:0]),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdo(NLW_inst_gt2_drpdo_UNCONNECTED[15:0]),
        .gt2_drpen(1'b0),
        .gt2_drprdy(NLW_inst_gt2_drprdy_UNCONNECTED),
        .gt2_drpwe(1'b0),
        .gt2_eyescandataerror_out(NLW_inst_gt2_eyescandataerror_out_UNCONNECTED),
        .gt2_eyescanreset_in(1'b0),
        .gt2_eyescantrigger_in(1'b0),
        .gt2_loopback_in({1'b0,1'b0,1'b0}),
        .gt2_rxbufreset_in(1'b0),
        .gt2_rxbufstatus_out(NLW_inst_gt2_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt2_rxbyteisaligned_out(NLW_inst_gt2_rxbyteisaligned_out_UNCONNECTED),
        .gt2_rxbyterealign_out(NLW_inst_gt2_rxbyterealign_out_UNCONNECTED),
        .gt2_rxcdrhold_in(1'b0),
        .gt2_rxcharisk(gt2_rxcharisk),
        .gt2_rxcommadet_out(NLW_inst_gt2_rxcommadet_out_UNCONNECTED),
        .gt2_rxdata(gt2_rxdata),
        .gt2_rxdfelpmreset_in(1'b0),
        .gt2_rxdisperr(gt2_rxdisperr),
        .gt2_rxlpmen_in(1'b1),
        .gt2_rxmonitorout_out(NLW_inst_gt2_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt2_rxmonitorsel_in({1'b0,1'b0}),
        .gt2_rxnotintable(gt2_rxnotintable),
        .gt2_rxpcsreset_in(1'b0),
        .gt2_rxpd_in({1'b0,1'b0}),
        .gt2_rxpmareset_in(1'b0),
        .gt2_rxpolarity_in(1'b0),
        .gt2_rxprbscntreset_in(1'b0),
        .gt2_rxprbserr_out(NLW_inst_gt2_rxprbserr_out_UNCONNECTED),
        .gt2_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt2_rxresetdone_out(NLW_inst_gt2_rxresetdone_out_UNCONNECTED),
        .gt2_rxstatus_out(NLW_inst_gt2_rxstatus_out_UNCONNECTED[2:0]),
        .gt2_txbufstatus_out(NLW_inst_gt2_txbufstatus_out_UNCONNECTED[1:0]),
        .gt2_txcharisk(gt2_txcharisk),
        .gt2_txdata(gt2_txdata),
        .gt2_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt2_txinhibit_in(1'b0),
        .gt2_txpcsreset_in(1'b0),
        .gt2_txpd_in({1'b0,1'b0}),
        .gt2_txpmareset_in(1'b0),
        .gt2_txpolarity_in(1'b0),
        .gt2_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_txprbsforceerr_in(1'b0),
        .gt2_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_txresetdone_out(NLW_inst_gt2_txresetdone_out_UNCONNECTED),
        .gt3_cplllock_out(NLW_inst_gt3_cplllock_out_UNCONNECTED),
        .gt3_dmonitorout_out(NLW_inst_gt3_dmonitorout_out_UNCONNECTED[7:0]),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdo(NLW_inst_gt3_drpdo_UNCONNECTED[15:0]),
        .gt3_drpen(1'b0),
        .gt3_drprdy(NLW_inst_gt3_drprdy_UNCONNECTED),
        .gt3_drpwe(1'b0),
        .gt3_eyescandataerror_out(NLW_inst_gt3_eyescandataerror_out_UNCONNECTED),
        .gt3_eyescanreset_in(1'b0),
        .gt3_eyescantrigger_in(1'b0),
        .gt3_loopback_in({1'b0,1'b0,1'b0}),
        .gt3_rxbufreset_in(1'b0),
        .gt3_rxbufstatus_out(NLW_inst_gt3_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt3_rxbyteisaligned_out(NLW_inst_gt3_rxbyteisaligned_out_UNCONNECTED),
        .gt3_rxbyterealign_out(NLW_inst_gt3_rxbyterealign_out_UNCONNECTED),
        .gt3_rxcdrhold_in(1'b0),
        .gt3_rxcharisk(gt3_rxcharisk),
        .gt3_rxcommadet_out(NLW_inst_gt3_rxcommadet_out_UNCONNECTED),
        .gt3_rxdata(gt3_rxdata),
        .gt3_rxdfelpmreset_in(1'b0),
        .gt3_rxdisperr(gt3_rxdisperr),
        .gt3_rxlpmen_in(1'b1),
        .gt3_rxmonitorout_out(NLW_inst_gt3_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt3_rxmonitorsel_in({1'b0,1'b0}),
        .gt3_rxnotintable(gt3_rxnotintable),
        .gt3_rxpcsreset_in(1'b0),
        .gt3_rxpd_in({1'b0,1'b0}),
        .gt3_rxpmareset_in(1'b0),
        .gt3_rxpolarity_in(1'b0),
        .gt3_rxprbscntreset_in(1'b0),
        .gt3_rxprbserr_out(NLW_inst_gt3_rxprbserr_out_UNCONNECTED),
        .gt3_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt3_rxresetdone_out(NLW_inst_gt3_rxresetdone_out_UNCONNECTED),
        .gt3_rxstatus_out(NLW_inst_gt3_rxstatus_out_UNCONNECTED[2:0]),
        .gt3_txbufstatus_out(NLW_inst_gt3_txbufstatus_out_UNCONNECTED[1:0]),
        .gt3_txcharisk(gt3_txcharisk),
        .gt3_txdata(gt3_txdata),
        .gt3_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt3_txinhibit_in(1'b0),
        .gt3_txpcsreset_in(1'b0),
        .gt3_txpd_in({1'b0,1'b0}),
        .gt3_txpmareset_in(1'b0),
        .gt3_txpolarity_in(1'b0),
        .gt3_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_txprbsforceerr_in(1'b0),
        .gt3_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_txresetdone_out(NLW_inst_gt3_txresetdone_out_UNCONNECTED),
        .gt4_cplllock_out(NLW_inst_gt4_cplllock_out_UNCONNECTED),
        .gt4_dmonitorout_out(NLW_inst_gt4_dmonitorout_out_UNCONNECTED[7:0]),
        .gt4_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_drpdo(NLW_inst_gt4_drpdo_UNCONNECTED[15:0]),
        .gt4_drpen(1'b0),
        .gt4_drprdy(NLW_inst_gt4_drprdy_UNCONNECTED),
        .gt4_drpwe(1'b0),
        .gt4_eyescandataerror_out(NLW_inst_gt4_eyescandataerror_out_UNCONNECTED),
        .gt4_eyescanreset_in(1'b0),
        .gt4_eyescantrigger_in(1'b0),
        .gt4_loopback_in({1'b0,1'b0,1'b0}),
        .gt4_rxbufreset_in(1'b0),
        .gt4_rxbufstatus_out(NLW_inst_gt4_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt4_rxbyteisaligned_out(NLW_inst_gt4_rxbyteisaligned_out_UNCONNECTED),
        .gt4_rxbyterealign_out(NLW_inst_gt4_rxbyterealign_out_UNCONNECTED),
        .gt4_rxcdrhold_in(1'b0),
        .gt4_rxcharisk(gt4_rxcharisk),
        .gt4_rxcommadet_out(NLW_inst_gt4_rxcommadet_out_UNCONNECTED),
        .gt4_rxdata(gt4_rxdata),
        .gt4_rxdfelpmreset_in(1'b0),
        .gt4_rxdisperr(gt4_rxdisperr),
        .gt4_rxlpmen_in(1'b1),
        .gt4_rxmonitorout_out(NLW_inst_gt4_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt4_rxmonitorsel_in({1'b0,1'b0}),
        .gt4_rxnotintable(gt4_rxnotintable),
        .gt4_rxpcsreset_in(1'b0),
        .gt4_rxpd_in({1'b0,1'b0}),
        .gt4_rxpmareset_in(1'b0),
        .gt4_rxpolarity_in(1'b0),
        .gt4_rxprbscntreset_in(1'b0),
        .gt4_rxprbserr_out(NLW_inst_gt4_rxprbserr_out_UNCONNECTED),
        .gt4_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt4_rxresetdone_out(NLW_inst_gt4_rxresetdone_out_UNCONNECTED),
        .gt4_rxstatus_out(NLW_inst_gt4_rxstatus_out_UNCONNECTED[2:0]),
        .gt4_txbufstatus_out(NLW_inst_gt4_txbufstatus_out_UNCONNECTED[1:0]),
        .gt4_txcharisk(gt4_txcharisk),
        .gt4_txdata(gt4_txdata),
        .gt4_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt4_txinhibit_in(1'b0),
        .gt4_txpcsreset_in(1'b0),
        .gt4_txpd_in({1'b0,1'b0}),
        .gt4_txpmareset_in(1'b0),
        .gt4_txpolarity_in(1'b0),
        .gt4_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_txprbsforceerr_in(1'b0),
        .gt4_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_txresetdone_out(NLW_inst_gt4_txresetdone_out_UNCONNECTED),
        .gt5_cplllock_out(NLW_inst_gt5_cplllock_out_UNCONNECTED),
        .gt5_dmonitorout_out(NLW_inst_gt5_dmonitorout_out_UNCONNECTED[7:0]),
        .gt5_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_drpdo(NLW_inst_gt5_drpdo_UNCONNECTED[15:0]),
        .gt5_drpen(1'b0),
        .gt5_drprdy(NLW_inst_gt5_drprdy_UNCONNECTED),
        .gt5_drpwe(1'b0),
        .gt5_eyescandataerror_out(NLW_inst_gt5_eyescandataerror_out_UNCONNECTED),
        .gt5_eyescanreset_in(1'b0),
        .gt5_eyescantrigger_in(1'b0),
        .gt5_loopback_in({1'b0,1'b0,1'b0}),
        .gt5_rxbufreset_in(1'b0),
        .gt5_rxbufstatus_out(NLW_inst_gt5_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt5_rxbyteisaligned_out(NLW_inst_gt5_rxbyteisaligned_out_UNCONNECTED),
        .gt5_rxbyterealign_out(NLW_inst_gt5_rxbyterealign_out_UNCONNECTED),
        .gt5_rxcdrhold_in(1'b0),
        .gt5_rxcharisk(gt5_rxcharisk),
        .gt5_rxcommadet_out(NLW_inst_gt5_rxcommadet_out_UNCONNECTED),
        .gt5_rxdata(gt5_rxdata),
        .gt5_rxdfelpmreset_in(1'b0),
        .gt5_rxdisperr(gt5_rxdisperr),
        .gt5_rxlpmen_in(1'b1),
        .gt5_rxmonitorout_out(NLW_inst_gt5_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt5_rxmonitorsel_in({1'b0,1'b0}),
        .gt5_rxnotintable(gt5_rxnotintable),
        .gt5_rxpcsreset_in(1'b0),
        .gt5_rxpd_in({1'b0,1'b0}),
        .gt5_rxpmareset_in(1'b0),
        .gt5_rxpolarity_in(1'b0),
        .gt5_rxprbscntreset_in(1'b0),
        .gt5_rxprbserr_out(NLW_inst_gt5_rxprbserr_out_UNCONNECTED),
        .gt5_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt5_rxresetdone_out(NLW_inst_gt5_rxresetdone_out_UNCONNECTED),
        .gt5_rxstatus_out(NLW_inst_gt5_rxstatus_out_UNCONNECTED[2:0]),
        .gt5_txbufstatus_out(NLW_inst_gt5_txbufstatus_out_UNCONNECTED[1:0]),
        .gt5_txcharisk(gt5_txcharisk),
        .gt5_txdata(gt5_txdata),
        .gt5_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt5_txinhibit_in(1'b0),
        .gt5_txpcsreset_in(1'b0),
        .gt5_txpd_in({1'b0,1'b0}),
        .gt5_txpmareset_in(1'b0),
        .gt5_txpolarity_in(1'b0),
        .gt5_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_txprbsforceerr_in(1'b0),
        .gt5_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_txresetdone_out(NLW_inst_gt5_txresetdone_out_UNCONNECTED),
        .gt6_cplllock_out(NLW_inst_gt6_cplllock_out_UNCONNECTED),
        .gt6_dmonitorout_out(NLW_inst_gt6_dmonitorout_out_UNCONNECTED[7:0]),
        .gt6_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_drpdo(NLW_inst_gt6_drpdo_UNCONNECTED[15:0]),
        .gt6_drpen(1'b0),
        .gt6_drprdy(NLW_inst_gt6_drprdy_UNCONNECTED),
        .gt6_drpwe(1'b0),
        .gt6_eyescandataerror_out(NLW_inst_gt6_eyescandataerror_out_UNCONNECTED),
        .gt6_eyescanreset_in(1'b0),
        .gt6_eyescantrigger_in(1'b0),
        .gt6_loopback_in({1'b0,1'b0,1'b0}),
        .gt6_rxbufreset_in(1'b0),
        .gt6_rxbufstatus_out(NLW_inst_gt6_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt6_rxbyteisaligned_out(NLW_inst_gt6_rxbyteisaligned_out_UNCONNECTED),
        .gt6_rxbyterealign_out(NLW_inst_gt6_rxbyterealign_out_UNCONNECTED),
        .gt6_rxcdrhold_in(1'b0),
        .gt6_rxcharisk(gt6_rxcharisk),
        .gt6_rxcommadet_out(NLW_inst_gt6_rxcommadet_out_UNCONNECTED),
        .gt6_rxdata(gt6_rxdata),
        .gt6_rxdfelpmreset_in(1'b0),
        .gt6_rxdisperr(gt6_rxdisperr),
        .gt6_rxlpmen_in(1'b1),
        .gt6_rxmonitorout_out(NLW_inst_gt6_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt6_rxmonitorsel_in({1'b0,1'b0}),
        .gt6_rxnotintable(gt6_rxnotintable),
        .gt6_rxpcsreset_in(1'b0),
        .gt6_rxpd_in({1'b0,1'b0}),
        .gt6_rxpmareset_in(1'b0),
        .gt6_rxpolarity_in(1'b0),
        .gt6_rxprbscntreset_in(1'b0),
        .gt6_rxprbserr_out(NLW_inst_gt6_rxprbserr_out_UNCONNECTED),
        .gt6_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt6_rxresetdone_out(NLW_inst_gt6_rxresetdone_out_UNCONNECTED),
        .gt6_rxstatus_out(NLW_inst_gt6_rxstatus_out_UNCONNECTED[2:0]),
        .gt6_txbufstatus_out(NLW_inst_gt6_txbufstatus_out_UNCONNECTED[1:0]),
        .gt6_txcharisk(gt6_txcharisk),
        .gt6_txdata(gt6_txdata),
        .gt6_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt6_txinhibit_in(1'b0),
        .gt6_txpcsreset_in(1'b0),
        .gt6_txpd_in({1'b0,1'b0}),
        .gt6_txpmareset_in(1'b0),
        .gt6_txpolarity_in(1'b0),
        .gt6_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_txprbsforceerr_in(1'b0),
        .gt6_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_txresetdone_out(NLW_inst_gt6_txresetdone_out_UNCONNECTED),
        .gt7_cplllock_out(NLW_inst_gt7_cplllock_out_UNCONNECTED),
        .gt7_dmonitorout_out(NLW_inst_gt7_dmonitorout_out_UNCONNECTED[7:0]),
        .gt7_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_drpdo(NLW_inst_gt7_drpdo_UNCONNECTED[15:0]),
        .gt7_drpen(1'b0),
        .gt7_drprdy(NLW_inst_gt7_drprdy_UNCONNECTED),
        .gt7_drpwe(1'b0),
        .gt7_eyescandataerror_out(NLW_inst_gt7_eyescandataerror_out_UNCONNECTED),
        .gt7_eyescanreset_in(1'b0),
        .gt7_eyescantrigger_in(1'b0),
        .gt7_loopback_in({1'b0,1'b0,1'b0}),
        .gt7_rxbufreset_in(1'b0),
        .gt7_rxbufstatus_out(NLW_inst_gt7_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt7_rxbyteisaligned_out(NLW_inst_gt7_rxbyteisaligned_out_UNCONNECTED),
        .gt7_rxbyterealign_out(NLW_inst_gt7_rxbyterealign_out_UNCONNECTED),
        .gt7_rxcdrhold_in(1'b0),
        .gt7_rxcharisk(gt7_rxcharisk),
        .gt7_rxcommadet_out(NLW_inst_gt7_rxcommadet_out_UNCONNECTED),
        .gt7_rxdata(gt7_rxdata),
        .gt7_rxdfelpmreset_in(1'b0),
        .gt7_rxdisperr(gt7_rxdisperr),
        .gt7_rxlpmen_in(1'b1),
        .gt7_rxmonitorout_out(NLW_inst_gt7_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt7_rxmonitorsel_in({1'b0,1'b0}),
        .gt7_rxnotintable(gt7_rxnotintable),
        .gt7_rxpcsreset_in(1'b0),
        .gt7_rxpd_in({1'b0,1'b0}),
        .gt7_rxpmareset_in(1'b0),
        .gt7_rxpolarity_in(1'b0),
        .gt7_rxprbscntreset_in(1'b0),
        .gt7_rxprbserr_out(NLW_inst_gt7_rxprbserr_out_UNCONNECTED),
        .gt7_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt7_rxresetdone_out(NLW_inst_gt7_rxresetdone_out_UNCONNECTED),
        .gt7_rxstatus_out(NLW_inst_gt7_rxstatus_out_UNCONNECTED[2:0]),
        .gt7_txbufstatus_out(NLW_inst_gt7_txbufstatus_out_UNCONNECTED[1:0]),
        .gt7_txcharisk(gt7_txcharisk),
        .gt7_txdata(gt7_txdata),
        .gt7_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt7_txinhibit_in(1'b0),
        .gt7_txpcsreset_in(1'b0),
        .gt7_txpd_in({1'b0,1'b0}),
        .gt7_txpmareset_in(1'b0),
        .gt7_txpolarity_in(1'b0),
        .gt7_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_txprbsforceerr_in(1'b0),
        .gt7_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_txresetdone_out(NLW_inst_gt7_txresetdone_out_UNCONNECTED),
        .gt_prbssel(gt_prbssel),
        .qpll_reset_out(qpll_reset_out),
        .rx_core_clk(rx_core_clk),
        .rx_reset_done(rx_reset_done),
        .rx_reset_gt(rx_reset_gt),
        .rx_sys_reset(rx_sys_reset),
        .rxencommaalign(rxencommaalign),
        .rxn_in(rxn_in),
        .rxoutclk(rxoutclk),
        .rxp_in(rxp_in),
        .tx_core_clk(tx_core_clk),
        .tx_reset_done(tx_reset_done),
        .tx_reset_gt(tx_reset_gt),
        .tx_sys_reset(tx_sys_reset),
        .txn_out(txn_out),
        .txoutclk(txoutclk),
        .txp_out(txp_out));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* rx_pll_sel = "3" *) (* tx_pll_sel = "3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_block
   (gt0_txresetdone_out,
    gt0_rxresetdone_out,
    gt0_cplllock_out,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_eyescanreset_in,
    gt0_txprbsforceerr_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txbufstatus_out,
    gt0_rxcdrhold_in,
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
    gt0_rxprbscntreset_in,
    gt0_rxbufreset_in,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_dmonitorout_out,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxlpmen_in,
    gt0_rxdfelpmreset_in,
    gt1_txresetdone_out,
    gt1_rxresetdone_out,
    gt1_cplllock_out,
    gt1_eyescandataerror_out,
    gt1_eyescantrigger_in,
    gt1_eyescanreset_in,
    gt1_txprbsforceerr_in,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txbufstatus_out,
    gt1_rxcdrhold_in,
    gt1_rxprbserr_out,
    gt1_rxprbssel_in,
    gt1_rxprbscntreset_in,
    gt1_rxbufreset_in,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_dmonitorout_out,
    gt1_rxmonitorout_out,
    gt1_rxmonitorsel_in,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxlpmen_in,
    gt1_rxdfelpmreset_in,
    gt2_txresetdone_out,
    gt2_rxresetdone_out,
    gt2_cplllock_out,
    gt2_eyescandataerror_out,
    gt2_eyescantrigger_in,
    gt2_eyescanreset_in,
    gt2_txprbsforceerr_in,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txbufstatus_out,
    gt2_rxcdrhold_in,
    gt2_rxprbserr_out,
    gt2_rxprbssel_in,
    gt2_rxprbscntreset_in,
    gt2_rxbufreset_in,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_dmonitorout_out,
    gt2_rxmonitorout_out,
    gt2_rxmonitorsel_in,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxlpmen_in,
    gt2_rxdfelpmreset_in,
    gt3_txresetdone_out,
    gt3_rxresetdone_out,
    gt3_cplllock_out,
    gt3_eyescandataerror_out,
    gt3_eyescantrigger_in,
    gt3_eyescanreset_in,
    gt3_txprbsforceerr_in,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txbufstatus_out,
    gt3_rxcdrhold_in,
    gt3_rxprbserr_out,
    gt3_rxprbssel_in,
    gt3_rxprbscntreset_in,
    gt3_rxbufreset_in,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_dmonitorout_out,
    gt3_rxmonitorout_out,
    gt3_rxmonitorsel_in,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxlpmen_in,
    gt3_rxdfelpmreset_in,
    gt4_txresetdone_out,
    gt4_rxresetdone_out,
    gt4_cplllock_out,
    gt4_eyescandataerror_out,
    gt4_eyescantrigger_in,
    gt4_eyescanreset_in,
    gt4_txprbsforceerr_in,
    gt4_txpcsreset_in,
    gt4_txpmareset_in,
    gt4_txbufstatus_out,
    gt4_rxcdrhold_in,
    gt4_rxprbserr_out,
    gt4_rxprbssel_in,
    gt4_rxprbscntreset_in,
    gt4_rxbufreset_in,
    gt4_rxbufstatus_out,
    gt4_rxstatus_out,
    gt4_rxbyteisaligned_out,
    gt4_rxbyterealign_out,
    gt4_rxcommadet_out,
    gt4_dmonitorout_out,
    gt4_rxmonitorout_out,
    gt4_rxmonitorsel_in,
    gt4_rxpcsreset_in,
    gt4_rxpmareset_in,
    gt4_rxlpmen_in,
    gt4_rxdfelpmreset_in,
    gt5_txresetdone_out,
    gt5_rxresetdone_out,
    gt5_cplllock_out,
    gt5_eyescandataerror_out,
    gt5_eyescantrigger_in,
    gt5_eyescanreset_in,
    gt5_txprbsforceerr_in,
    gt5_txpcsreset_in,
    gt5_txpmareset_in,
    gt5_txbufstatus_out,
    gt5_rxcdrhold_in,
    gt5_rxprbserr_out,
    gt5_rxprbssel_in,
    gt5_rxprbscntreset_in,
    gt5_rxbufreset_in,
    gt5_rxbufstatus_out,
    gt5_rxstatus_out,
    gt5_rxbyteisaligned_out,
    gt5_rxbyterealign_out,
    gt5_rxcommadet_out,
    gt5_dmonitorout_out,
    gt5_rxmonitorout_out,
    gt5_rxmonitorsel_in,
    gt5_rxpcsreset_in,
    gt5_rxpmareset_in,
    gt5_rxlpmen_in,
    gt5_rxdfelpmreset_in,
    gt6_txresetdone_out,
    gt6_rxresetdone_out,
    gt6_cplllock_out,
    gt6_eyescandataerror_out,
    gt6_eyescantrigger_in,
    gt6_eyescanreset_in,
    gt6_txprbsforceerr_in,
    gt6_txpcsreset_in,
    gt6_txpmareset_in,
    gt6_txbufstatus_out,
    gt6_rxcdrhold_in,
    gt6_rxprbserr_out,
    gt6_rxprbssel_in,
    gt6_rxprbscntreset_in,
    gt6_rxbufreset_in,
    gt6_rxbufstatus_out,
    gt6_rxstatus_out,
    gt6_rxbyteisaligned_out,
    gt6_rxbyterealign_out,
    gt6_rxcommadet_out,
    gt6_dmonitorout_out,
    gt6_rxmonitorout_out,
    gt6_rxmonitorsel_in,
    gt6_rxpcsreset_in,
    gt6_rxpmareset_in,
    gt6_rxlpmen_in,
    gt6_rxdfelpmreset_in,
    gt7_txresetdone_out,
    gt7_rxresetdone_out,
    gt7_cplllock_out,
    gt7_eyescandataerror_out,
    gt7_eyescantrigger_in,
    gt7_eyescanreset_in,
    gt7_txprbsforceerr_in,
    gt7_txpcsreset_in,
    gt7_txpmareset_in,
    gt7_txbufstatus_out,
    gt7_rxcdrhold_in,
    gt7_rxprbserr_out,
    gt7_rxprbssel_in,
    gt7_rxprbscntreset_in,
    gt7_rxbufreset_in,
    gt7_rxbufstatus_out,
    gt7_rxstatus_out,
    gt7_rxbyteisaligned_out,
    gt7_rxbyterealign_out,
    gt7_rxcommadet_out,
    gt7_dmonitorout_out,
    gt7_rxmonitorout_out,
    gt7_rxmonitorsel_in,
    gt7_rxpcsreset_in,
    gt7_rxpmareset_in,
    gt7_rxlpmen_in,
    gt7_rxdfelpmreset_in,
    tx_sys_reset,
    rx_sys_reset,
    tx_reset_gt,
    rx_reset_gt,
    tx_reset_done,
    rx_reset_done,
    cpll_refclk,
    common0_qpll_clk_in,
    common0_qpll_refclk_in,
    common1_qpll_clk_in,
    common1_qpll_refclk_in,
    common0_qpll_lock_in,
    common1_qpll_lock_in,
    qpll_reset_out,
    rxencommaalign,
    tx_core_clk,
    txoutclk,
    rx_core_clk,
    rxoutclk,
    drpclk,
    gt0_loopback_in,
    gt0_rxpd_in,
    gt0_txpd_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_txdiffctrl_in,
    gt0_txpolarity_in,
    gt0_txinhibit_in,
    gt0_rxpolarity_in,
    gt0_drpaddr,
    gt0_drpdi,
    gt0_drpen,
    gt0_drpwe,
    gt0_drpdo,
    gt0_drprdy,
    gt1_loopback_in,
    gt1_rxpd_in,
    gt1_txpd_in,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_txdiffctrl_in,
    gt1_txpolarity_in,
    gt1_txinhibit_in,
    gt1_rxpolarity_in,
    gt1_drpaddr,
    gt1_drpdi,
    gt1_drpen,
    gt1_drpwe,
    gt1_drpdo,
    gt1_drprdy,
    gt2_loopback_in,
    gt2_rxpd_in,
    gt2_txpd_in,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_txdiffctrl_in,
    gt2_txpolarity_in,
    gt2_txinhibit_in,
    gt2_rxpolarity_in,
    gt2_drpaddr,
    gt2_drpdi,
    gt2_drpen,
    gt2_drpwe,
    gt2_drpdo,
    gt2_drprdy,
    gt3_loopback_in,
    gt3_rxpd_in,
    gt3_txpd_in,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_txdiffctrl_in,
    gt3_txpolarity_in,
    gt3_txinhibit_in,
    gt3_rxpolarity_in,
    gt3_drpaddr,
    gt3_drpdi,
    gt3_drpen,
    gt3_drpwe,
    gt3_drpdo,
    gt3_drprdy,
    gt4_loopback_in,
    gt4_rxpd_in,
    gt4_txpd_in,
    gt4_txpostcursor_in,
    gt4_txprecursor_in,
    gt4_txdiffctrl_in,
    gt4_txpolarity_in,
    gt4_txinhibit_in,
    gt4_rxpolarity_in,
    gt4_drpaddr,
    gt4_drpdi,
    gt4_drpen,
    gt4_drpwe,
    gt4_drpdo,
    gt4_drprdy,
    gt5_loopback_in,
    gt5_rxpd_in,
    gt5_txpd_in,
    gt5_txpostcursor_in,
    gt5_txprecursor_in,
    gt5_txdiffctrl_in,
    gt5_txpolarity_in,
    gt5_txinhibit_in,
    gt5_rxpolarity_in,
    gt5_drpaddr,
    gt5_drpdi,
    gt5_drpen,
    gt5_drpwe,
    gt5_drpdo,
    gt5_drprdy,
    gt6_loopback_in,
    gt6_rxpd_in,
    gt6_txpd_in,
    gt6_txpostcursor_in,
    gt6_txprecursor_in,
    gt6_txdiffctrl_in,
    gt6_txpolarity_in,
    gt6_txinhibit_in,
    gt6_rxpolarity_in,
    gt6_drpaddr,
    gt6_drpdi,
    gt6_drpen,
    gt6_drpwe,
    gt6_drpdo,
    gt6_drprdy,
    gt7_loopback_in,
    gt7_rxpd_in,
    gt7_txpd_in,
    gt7_txpostcursor_in,
    gt7_txprecursor_in,
    gt7_txdiffctrl_in,
    gt7_txpolarity_in,
    gt7_txinhibit_in,
    gt7_rxpolarity_in,
    gt7_drpaddr,
    gt7_drpdi,
    gt7_drpen,
    gt7_drpwe,
    gt7_drpdo,
    gt7_drprdy,
    gt_prbssel,
    gt0_txdata,
    gt0_txcharisk,
    gt1_txdata,
    gt1_txcharisk,
    gt2_txdata,
    gt2_txcharisk,
    gt3_txdata,
    gt3_txcharisk,
    gt4_txdata,
    gt4_txcharisk,
    gt5_txdata,
    gt5_txcharisk,
    gt6_txdata,
    gt6_txcharisk,
    gt7_txdata,
    gt7_txcharisk,
    gt0_rxdata,
    gt0_rxcharisk,
    gt0_rxdisperr,
    gt0_rxnotintable,
    gt1_rxdata,
    gt1_rxcharisk,
    gt1_rxdisperr,
    gt1_rxnotintable,
    gt2_rxdata,
    gt2_rxcharisk,
    gt2_rxdisperr,
    gt2_rxnotintable,
    gt3_rxdata,
    gt3_rxcharisk,
    gt3_rxdisperr,
    gt3_rxnotintable,
    gt4_rxdata,
    gt4_rxcharisk,
    gt4_rxdisperr,
    gt4_rxnotintable,
    gt5_rxdata,
    gt5_rxcharisk,
    gt5_rxdisperr,
    gt5_rxnotintable,
    gt6_rxdata,
    gt6_rxcharisk,
    gt6_rxdisperr,
    gt6_rxnotintable,
    gt7_rxdata,
    gt7_rxcharisk,
    gt7_rxdisperr,
    gt7_rxnotintable,
    rxn_in,
    rxp_in,
    txn_out,
    txp_out);
  output gt0_txresetdone_out;
  output gt0_rxresetdone_out;
  output gt0_cplllock_out;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_eyescanreset_in;
  input gt0_txprbsforceerr_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  output [1:0]gt0_txbufstatus_out;
  input gt0_rxcdrhold_in;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  input gt0_rxbufreset_in;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output [7:0]gt0_dmonitorout_out;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxlpmen_in;
  input gt0_rxdfelpmreset_in;
  output gt1_txresetdone_out;
  output gt1_rxresetdone_out;
  output gt1_cplllock_out;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_eyescanreset_in;
  input gt1_txprbsforceerr_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  output [1:0]gt1_txbufstatus_out;
  input gt1_rxcdrhold_in;
  output gt1_rxprbserr_out;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  input gt1_rxbufreset_in;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  output [7:0]gt1_dmonitorout_out;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxlpmen_in;
  input gt1_rxdfelpmreset_in;
  output gt2_txresetdone_out;
  output gt2_rxresetdone_out;
  output gt2_cplllock_out;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_eyescanreset_in;
  input gt2_txprbsforceerr_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  output [1:0]gt2_txbufstatus_out;
  input gt2_rxcdrhold_in;
  output gt2_rxprbserr_out;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  input gt2_rxbufreset_in;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  output [7:0]gt2_dmonitorout_out;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxlpmen_in;
  input gt2_rxdfelpmreset_in;
  output gt3_txresetdone_out;
  output gt3_rxresetdone_out;
  output gt3_cplllock_out;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_eyescanreset_in;
  input gt3_txprbsforceerr_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  output [1:0]gt3_txbufstatus_out;
  input gt3_rxcdrhold_in;
  output gt3_rxprbserr_out;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  input gt3_rxbufreset_in;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  output [7:0]gt3_dmonitorout_out;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxlpmen_in;
  input gt3_rxdfelpmreset_in;
  output gt4_txresetdone_out;
  output gt4_rxresetdone_out;
  output gt4_cplllock_out;
  output gt4_eyescandataerror_out;
  input gt4_eyescantrigger_in;
  input gt4_eyescanreset_in;
  input gt4_txprbsforceerr_in;
  input gt4_txpcsreset_in;
  input gt4_txpmareset_in;
  output [1:0]gt4_txbufstatus_out;
  input gt4_rxcdrhold_in;
  output gt4_rxprbserr_out;
  input [2:0]gt4_rxprbssel_in;
  input gt4_rxprbscntreset_in;
  input gt4_rxbufreset_in;
  output [2:0]gt4_rxbufstatus_out;
  output [2:0]gt4_rxstatus_out;
  output gt4_rxbyteisaligned_out;
  output gt4_rxbyterealign_out;
  output gt4_rxcommadet_out;
  output [7:0]gt4_dmonitorout_out;
  output [6:0]gt4_rxmonitorout_out;
  input [1:0]gt4_rxmonitorsel_in;
  input gt4_rxpcsreset_in;
  input gt4_rxpmareset_in;
  input gt4_rxlpmen_in;
  input gt4_rxdfelpmreset_in;
  output gt5_txresetdone_out;
  output gt5_rxresetdone_out;
  output gt5_cplllock_out;
  output gt5_eyescandataerror_out;
  input gt5_eyescantrigger_in;
  input gt5_eyescanreset_in;
  input gt5_txprbsforceerr_in;
  input gt5_txpcsreset_in;
  input gt5_txpmareset_in;
  output [1:0]gt5_txbufstatus_out;
  input gt5_rxcdrhold_in;
  output gt5_rxprbserr_out;
  input [2:0]gt5_rxprbssel_in;
  input gt5_rxprbscntreset_in;
  input gt5_rxbufreset_in;
  output [2:0]gt5_rxbufstatus_out;
  output [2:0]gt5_rxstatus_out;
  output gt5_rxbyteisaligned_out;
  output gt5_rxbyterealign_out;
  output gt5_rxcommadet_out;
  output [7:0]gt5_dmonitorout_out;
  output [6:0]gt5_rxmonitorout_out;
  input [1:0]gt5_rxmonitorsel_in;
  input gt5_rxpcsreset_in;
  input gt5_rxpmareset_in;
  input gt5_rxlpmen_in;
  input gt5_rxdfelpmreset_in;
  output gt6_txresetdone_out;
  output gt6_rxresetdone_out;
  output gt6_cplllock_out;
  output gt6_eyescandataerror_out;
  input gt6_eyescantrigger_in;
  input gt6_eyescanreset_in;
  input gt6_txprbsforceerr_in;
  input gt6_txpcsreset_in;
  input gt6_txpmareset_in;
  output [1:0]gt6_txbufstatus_out;
  input gt6_rxcdrhold_in;
  output gt6_rxprbserr_out;
  input [2:0]gt6_rxprbssel_in;
  input gt6_rxprbscntreset_in;
  input gt6_rxbufreset_in;
  output [2:0]gt6_rxbufstatus_out;
  output [2:0]gt6_rxstatus_out;
  output gt6_rxbyteisaligned_out;
  output gt6_rxbyterealign_out;
  output gt6_rxcommadet_out;
  output [7:0]gt6_dmonitorout_out;
  output [6:0]gt6_rxmonitorout_out;
  input [1:0]gt6_rxmonitorsel_in;
  input gt6_rxpcsreset_in;
  input gt6_rxpmareset_in;
  input gt6_rxlpmen_in;
  input gt6_rxdfelpmreset_in;
  output gt7_txresetdone_out;
  output gt7_rxresetdone_out;
  output gt7_cplllock_out;
  output gt7_eyescandataerror_out;
  input gt7_eyescantrigger_in;
  input gt7_eyescanreset_in;
  input gt7_txprbsforceerr_in;
  input gt7_txpcsreset_in;
  input gt7_txpmareset_in;
  output [1:0]gt7_txbufstatus_out;
  input gt7_rxcdrhold_in;
  output gt7_rxprbserr_out;
  input [2:0]gt7_rxprbssel_in;
  input gt7_rxprbscntreset_in;
  input gt7_rxbufreset_in;
  output [2:0]gt7_rxbufstatus_out;
  output [2:0]gt7_rxstatus_out;
  output gt7_rxbyteisaligned_out;
  output gt7_rxbyterealign_out;
  output gt7_rxcommadet_out;
  output [7:0]gt7_dmonitorout_out;
  output [6:0]gt7_rxmonitorout_out;
  input [1:0]gt7_rxmonitorsel_in;
  input gt7_rxpcsreset_in;
  input gt7_rxpmareset_in;
  input gt7_rxlpmen_in;
  input gt7_rxdfelpmreset_in;
  input tx_sys_reset;
  input rx_sys_reset;
  input tx_reset_gt;
  input rx_reset_gt;
  output tx_reset_done;
  output rx_reset_done;
  input cpll_refclk;
  input common0_qpll_clk_in;
  input common0_qpll_refclk_in;
  input common1_qpll_clk_in;
  input common1_qpll_refclk_in;
  input common0_qpll_lock_in;
  input common1_qpll_lock_in;
  output qpll_reset_out;
  input rxencommaalign;
  input tx_core_clk;
  output txoutclk;
  input rx_core_clk;
  output rxoutclk;
  input drpclk;
  input [2:0]gt0_loopback_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_txpd_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [3:0]gt0_txdiffctrl_in;
  input gt0_txpolarity_in;
  input gt0_txinhibit_in;
  input gt0_rxpolarity_in;
  input [8:0]gt0_drpaddr;
  input [15:0]gt0_drpdi;
  input gt0_drpen;
  input gt0_drpwe;
  output [15:0]gt0_drpdo;
  output gt0_drprdy;
  input [2:0]gt1_loopback_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_txpd_in;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input [3:0]gt1_txdiffctrl_in;
  input gt1_txpolarity_in;
  input gt1_txinhibit_in;
  input gt1_rxpolarity_in;
  input [8:0]gt1_drpaddr;
  input [15:0]gt1_drpdi;
  input gt1_drpen;
  input gt1_drpwe;
  output [15:0]gt1_drpdo;
  output gt1_drprdy;
  input [2:0]gt2_loopback_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_txpd_in;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input [3:0]gt2_txdiffctrl_in;
  input gt2_txpolarity_in;
  input gt2_txinhibit_in;
  input gt2_rxpolarity_in;
  input [8:0]gt2_drpaddr;
  input [15:0]gt2_drpdi;
  input gt2_drpen;
  input gt2_drpwe;
  output [15:0]gt2_drpdo;
  output gt2_drprdy;
  input [2:0]gt3_loopback_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_txpd_in;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input [3:0]gt3_txdiffctrl_in;
  input gt3_txpolarity_in;
  input gt3_txinhibit_in;
  input gt3_rxpolarity_in;
  input [8:0]gt3_drpaddr;
  input [15:0]gt3_drpdi;
  input gt3_drpen;
  input gt3_drpwe;
  output [15:0]gt3_drpdo;
  output gt3_drprdy;
  input [2:0]gt4_loopback_in;
  input [1:0]gt4_rxpd_in;
  input [1:0]gt4_txpd_in;
  input [4:0]gt4_txpostcursor_in;
  input [4:0]gt4_txprecursor_in;
  input [3:0]gt4_txdiffctrl_in;
  input gt4_txpolarity_in;
  input gt4_txinhibit_in;
  input gt4_rxpolarity_in;
  input [8:0]gt4_drpaddr;
  input [15:0]gt4_drpdi;
  input gt4_drpen;
  input gt4_drpwe;
  output [15:0]gt4_drpdo;
  output gt4_drprdy;
  input [2:0]gt5_loopback_in;
  input [1:0]gt5_rxpd_in;
  input [1:0]gt5_txpd_in;
  input [4:0]gt5_txpostcursor_in;
  input [4:0]gt5_txprecursor_in;
  input [3:0]gt5_txdiffctrl_in;
  input gt5_txpolarity_in;
  input gt5_txinhibit_in;
  input gt5_rxpolarity_in;
  input [8:0]gt5_drpaddr;
  input [15:0]gt5_drpdi;
  input gt5_drpen;
  input gt5_drpwe;
  output [15:0]gt5_drpdo;
  output gt5_drprdy;
  input [2:0]gt6_loopback_in;
  input [1:0]gt6_rxpd_in;
  input [1:0]gt6_txpd_in;
  input [4:0]gt6_txpostcursor_in;
  input [4:0]gt6_txprecursor_in;
  input [3:0]gt6_txdiffctrl_in;
  input gt6_txpolarity_in;
  input gt6_txinhibit_in;
  input gt6_rxpolarity_in;
  input [8:0]gt6_drpaddr;
  input [15:0]gt6_drpdi;
  input gt6_drpen;
  input gt6_drpwe;
  output [15:0]gt6_drpdo;
  output gt6_drprdy;
  input [2:0]gt7_loopback_in;
  input [1:0]gt7_rxpd_in;
  input [1:0]gt7_txpd_in;
  input [4:0]gt7_txpostcursor_in;
  input [4:0]gt7_txprecursor_in;
  input [3:0]gt7_txdiffctrl_in;
  input gt7_txpolarity_in;
  input gt7_txinhibit_in;
  input gt7_rxpolarity_in;
  input [8:0]gt7_drpaddr;
  input [15:0]gt7_drpdi;
  input gt7_drpen;
  input gt7_drpwe;
  output [15:0]gt7_drpdo;
  output gt7_drprdy;
  input [2:0]gt_prbssel;
  input [31:0]gt0_txdata;
  input [3:0]gt0_txcharisk;
  input [31:0]gt1_txdata;
  input [3:0]gt1_txcharisk;
  input [31:0]gt2_txdata;
  input [3:0]gt2_txcharisk;
  input [31:0]gt3_txdata;
  input [3:0]gt3_txcharisk;
  input [31:0]gt4_txdata;
  input [3:0]gt4_txcharisk;
  input [31:0]gt5_txdata;
  input [3:0]gt5_txcharisk;
  input [31:0]gt6_txdata;
  input [3:0]gt6_txcharisk;
  input [31:0]gt7_txdata;
  input [3:0]gt7_txcharisk;
  output [31:0]gt0_rxdata;
  output [3:0]gt0_rxcharisk;
  output [3:0]gt0_rxdisperr;
  output [3:0]gt0_rxnotintable;
  output [31:0]gt1_rxdata;
  output [3:0]gt1_rxcharisk;
  output [3:0]gt1_rxdisperr;
  output [3:0]gt1_rxnotintable;
  output [31:0]gt2_rxdata;
  output [3:0]gt2_rxcharisk;
  output [3:0]gt2_rxdisperr;
  output [3:0]gt2_rxnotintable;
  output [31:0]gt3_rxdata;
  output [3:0]gt3_rxcharisk;
  output [3:0]gt3_rxdisperr;
  output [3:0]gt3_rxnotintable;
  output [31:0]gt4_rxdata;
  output [3:0]gt4_rxcharisk;
  output [3:0]gt4_rxdisperr;
  output [3:0]gt4_rxnotintable;
  output [31:0]gt5_rxdata;
  output [3:0]gt5_rxcharisk;
  output [3:0]gt5_rxdisperr;
  output [3:0]gt5_rxnotintable;
  output [31:0]gt6_rxdata;
  output [3:0]gt6_rxcharisk;
  output [3:0]gt6_rxdisperr;
  output [3:0]gt6_rxnotintable;
  output [31:0]gt7_rxdata;
  output [3:0]gt7_rxcharisk;
  output [3:0]gt7_rxdisperr;
  output [3:0]gt7_rxnotintable;
  input [7:0]rxn_in;
  input [7:0]rxp_in;
  output [7:0]txn_out;
  output [7:0]txp_out;

  wire \<const0> ;
  wire JESD204_PHY_gt_n_105;
  wire JESD204_PHY_gt_n_201;
  wire JESD204_PHY_gt_n_209;
  wire JESD204_PHY_gt_n_305;
  wire JESD204_PHY_gt_n_313;
  wire JESD204_PHY_gt_n_409;
  wire JESD204_PHY_gt_n_417;
  wire JESD204_PHY_gt_n_513;
  wire JESD204_PHY_gt_n_521;
  wire JESD204_PHY_gt_n_617;
  wire JESD204_PHY_gt_n_625;
  wire JESD204_PHY_gt_n_721;
  wire JESD204_PHY_gt_n_729;
  wire JESD204_PHY_gt_n_825;
  wire JESD204_PHY_gt_n_833;
  wire JESD204_PHY_gt_n_97;
  wire common0_qpll_clk_in;
  wire common0_qpll_lock_in;
  wire common0_qpll_refclk_in;
  wire common0_qpll_reset_i;
  wire common1_qpll_clk_in;
  wire common1_qpll_lock_in;
  wire common1_qpll_refclk_in;
  wire common1_qpll_reset_i;
  wire drpclk;
  wire [3:0]gt0_rxcharisk;
  wire [31:0]gt0_rxdata;
  wire [3:0]gt0_rxdisperr;
  wire [3:0]gt0_rxnotintable;
  wire [3:0]gt0_txcharisk;
  wire [31:0]gt0_txdata;
  wire [3:0]gt1_rxcharisk;
  wire [31:0]gt1_rxdata;
  wire [3:0]gt1_rxdisperr;
  wire [3:0]gt1_rxnotintable;
  wire [3:0]gt1_txcharisk;
  wire [31:0]gt1_txdata;
  wire [3:0]gt2_rxcharisk;
  wire [31:0]gt2_rxdata;
  wire [3:0]gt2_rxdisperr;
  wire [3:0]gt2_rxnotintable;
  wire [3:0]gt2_txcharisk;
  wire [31:0]gt2_txdata;
  wire [3:0]gt3_rxcharisk;
  wire [31:0]gt3_rxdata;
  wire [3:0]gt3_rxdisperr;
  wire [3:0]gt3_rxnotintable;
  wire [3:0]gt3_txcharisk;
  wire [31:0]gt3_txdata;
  wire [3:0]gt4_rxcharisk;
  wire [31:0]gt4_rxdata;
  wire [3:0]gt4_rxdisperr;
  wire [3:0]gt4_rxnotintable;
  wire [3:0]gt4_txcharisk;
  wire [31:0]gt4_txdata;
  wire [3:0]gt5_rxcharisk;
  wire [31:0]gt5_rxdata;
  wire [3:0]gt5_rxdisperr;
  wire [3:0]gt5_rxnotintable;
  wire [3:0]gt5_txcharisk;
  wire [31:0]gt5_txdata;
  wire [3:0]gt6_rxcharisk;
  wire [31:0]gt6_rxdata;
  wire [3:0]gt6_rxdisperr;
  wire [3:0]gt6_rxnotintable;
  wire [3:0]gt6_txcharisk;
  wire [31:0]gt6_txdata;
  wire [3:0]gt7_rxcharisk;
  wire [31:0]gt7_rxdata;
  wire [3:0]gt7_rxdisperr;
  wire [3:0]gt7_rxnotintable;
  wire [3:0]gt7_txcharisk;
  wire [31:0]gt7_txdata;
  wire [2:0]gt_prbssel;
  wire gt_rxfsmdone;
  wire gt_rxreset;
  wire gt_rxreset0;
  wire gt_txfsmdone;
  wire gt_txreset;
  wire gt_txreset0;
  wire qpll_reset_out;
  wire qplllock_i;
  wire rx_chan_rst_done;
  wire rx_chan_rst_done_r;
  wire rx_chan_rst_done_r_i_2_n_0;
  wire rx_core_clk;
  wire rx_pll_lock_i_reg_n_0;
  wire rx_reset_done;
  wire rx_reset_done_r0;
  wire rx_reset_gt;
  wire rx_rst_all_sync;
  wire rx_rst_gt_data_sync;
  wire rx_sys_reset;
  wire rxencommaalign;
  wire [7:0]rxn_in;
  wire rxoutclk;
  wire [7:0]rxp_in;
  wire tx_chan_rst_done;
  wire tx_chan_rst_done_r;
  wire tx_chan_rst_done_r_i_2_n_0;
  wire tx_core_clk;
  wire tx_reset_done;
  wire tx_reset_done_r0;
  wire tx_reset_gt;
  wire tx_rst_all_sync;
  wire tx_rst_gt_data_sync;
  wire tx_sys_reset;
  wire [7:0]txn_out;
  wire txoutclk;
  wire [7:0]txp_out;
  wire NLW_JESD204_PHY_gt_gt0_cpllfbclklost_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_cplllock_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_drprdy_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_eyescandataerror_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_rxbyterealign_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_rxcommadet_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_rxprbserr_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_txoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt0_txoutclkpcs_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_cpllfbclklost_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_cplllock_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_drprdy_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_eyescandataerror_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_rxbyterealign_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_rxcommadet_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_rxoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_rxprbserr_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_txoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_txoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt1_txoutclkpcs_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_cpllfbclklost_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_cplllock_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_drprdy_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_eyescandataerror_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_rxbyterealign_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_rxcommadet_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_rxoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_rxprbserr_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_txoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_txoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt2_txoutclkpcs_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_cpllfbclklost_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_cplllock_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_drprdy_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_eyescandataerror_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_rxbyterealign_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_rxcommadet_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_rxoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_rxprbserr_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_txoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_txoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt3_txoutclkpcs_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_cpllfbclklost_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_cplllock_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_drprdy_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_eyescandataerror_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_rxbyterealign_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_rxcommadet_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_rxoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_rxprbserr_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_txoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_txoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt4_txoutclkpcs_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_cpllfbclklost_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_cplllock_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_drprdy_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_eyescandataerror_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_rxbyterealign_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_rxcommadet_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_rxoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_rxprbserr_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_txoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_txoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt5_txoutclkpcs_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_cpllfbclklost_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_cplllock_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_drprdy_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_eyescandataerror_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_rxbyterealign_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_rxcommadet_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_rxoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_rxprbserr_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_txoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_txoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt6_txoutclkpcs_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_cpllfbclklost_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_cplllock_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_drprdy_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_eyescandataerror_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_rxbyterealign_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_rxcommadet_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_rxoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_rxprbserr_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_txoutclk_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_txoutclkfabric_out_UNCONNECTED;
  wire NLW_JESD204_PHY_gt_gt7_txoutclkpcs_out_UNCONNECTED;
  wire [7:0]NLW_JESD204_PHY_gt_gt0_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_JESD204_PHY_gt_gt0_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt0_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_JESD204_PHY_gt_gt0_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_JESD204_PHY_gt_gt0_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt0_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_JESD204_PHY_gt_gt0_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_JESD204_PHY_gt_gt1_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_JESD204_PHY_gt_gt1_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt1_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_JESD204_PHY_gt_gt1_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_JESD204_PHY_gt_gt1_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt1_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_JESD204_PHY_gt_gt1_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_JESD204_PHY_gt_gt2_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_JESD204_PHY_gt_gt2_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt2_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_JESD204_PHY_gt_gt2_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_JESD204_PHY_gt_gt2_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt2_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_JESD204_PHY_gt_gt2_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_JESD204_PHY_gt_gt3_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_JESD204_PHY_gt_gt3_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt3_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_JESD204_PHY_gt_gt3_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_JESD204_PHY_gt_gt3_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt3_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_JESD204_PHY_gt_gt3_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_JESD204_PHY_gt_gt4_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_JESD204_PHY_gt_gt4_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt4_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_JESD204_PHY_gt_gt4_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_JESD204_PHY_gt_gt4_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt4_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_JESD204_PHY_gt_gt4_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_JESD204_PHY_gt_gt5_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_JESD204_PHY_gt_gt5_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt5_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_JESD204_PHY_gt_gt5_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_JESD204_PHY_gt_gt5_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt5_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_JESD204_PHY_gt_gt5_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_JESD204_PHY_gt_gt6_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_JESD204_PHY_gt_gt6_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt6_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_JESD204_PHY_gt_gt6_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_JESD204_PHY_gt_gt6_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt6_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_JESD204_PHY_gt_gt6_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_JESD204_PHY_gt_gt7_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_JESD204_PHY_gt_gt7_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt7_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_JESD204_PHY_gt_gt7_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_JESD204_PHY_gt_gt7_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_JESD204_PHY_gt_gt7_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_JESD204_PHY_gt_gt7_txbufstatus_out_UNCONNECTED;

  assign gt0_cplllock_out = \<const0> ;
  assign gt0_dmonitorout_out[7] = \<const0> ;
  assign gt0_dmonitorout_out[6] = \<const0> ;
  assign gt0_dmonitorout_out[5] = \<const0> ;
  assign gt0_dmonitorout_out[4] = \<const0> ;
  assign gt0_dmonitorout_out[3] = \<const0> ;
  assign gt0_dmonitorout_out[2] = \<const0> ;
  assign gt0_dmonitorout_out[1] = \<const0> ;
  assign gt0_dmonitorout_out[0] = \<const0> ;
  assign gt0_drpdo[15] = \<const0> ;
  assign gt0_drpdo[14] = \<const0> ;
  assign gt0_drpdo[13] = \<const0> ;
  assign gt0_drpdo[12] = \<const0> ;
  assign gt0_drpdo[11] = \<const0> ;
  assign gt0_drpdo[10] = \<const0> ;
  assign gt0_drpdo[9] = \<const0> ;
  assign gt0_drpdo[8] = \<const0> ;
  assign gt0_drpdo[7] = \<const0> ;
  assign gt0_drpdo[6] = \<const0> ;
  assign gt0_drpdo[5] = \<const0> ;
  assign gt0_drpdo[4] = \<const0> ;
  assign gt0_drpdo[3] = \<const0> ;
  assign gt0_drpdo[2] = \<const0> ;
  assign gt0_drpdo[1] = \<const0> ;
  assign gt0_drpdo[0] = \<const0> ;
  assign gt0_drprdy = \<const0> ;
  assign gt0_eyescandataerror_out = \<const0> ;
  assign gt0_rxbufstatus_out[2] = \<const0> ;
  assign gt0_rxbufstatus_out[1] = \<const0> ;
  assign gt0_rxbufstatus_out[0] = \<const0> ;
  assign gt0_rxbyteisaligned_out = \<const0> ;
  assign gt0_rxbyterealign_out = \<const0> ;
  assign gt0_rxcommadet_out = \<const0> ;
  assign gt0_rxmonitorout_out[6] = \<const0> ;
  assign gt0_rxmonitorout_out[5] = \<const0> ;
  assign gt0_rxmonitorout_out[4] = \<const0> ;
  assign gt0_rxmonitorout_out[3] = \<const0> ;
  assign gt0_rxmonitorout_out[2] = \<const0> ;
  assign gt0_rxmonitorout_out[1] = \<const0> ;
  assign gt0_rxmonitorout_out[0] = \<const0> ;
  assign gt0_rxprbserr_out = \<const0> ;
  assign gt0_rxresetdone_out = \<const0> ;
  assign gt0_rxstatus_out[2] = \<const0> ;
  assign gt0_rxstatus_out[1] = \<const0> ;
  assign gt0_rxstatus_out[0] = \<const0> ;
  assign gt0_txbufstatus_out[1] = \<const0> ;
  assign gt0_txbufstatus_out[0] = \<const0> ;
  assign gt0_txresetdone_out = \<const0> ;
  assign gt1_cplllock_out = \<const0> ;
  assign gt1_dmonitorout_out[7] = \<const0> ;
  assign gt1_dmonitorout_out[6] = \<const0> ;
  assign gt1_dmonitorout_out[5] = \<const0> ;
  assign gt1_dmonitorout_out[4] = \<const0> ;
  assign gt1_dmonitorout_out[3] = \<const0> ;
  assign gt1_dmonitorout_out[2] = \<const0> ;
  assign gt1_dmonitorout_out[1] = \<const0> ;
  assign gt1_dmonitorout_out[0] = \<const0> ;
  assign gt1_drpdo[15] = \<const0> ;
  assign gt1_drpdo[14] = \<const0> ;
  assign gt1_drpdo[13] = \<const0> ;
  assign gt1_drpdo[12] = \<const0> ;
  assign gt1_drpdo[11] = \<const0> ;
  assign gt1_drpdo[10] = \<const0> ;
  assign gt1_drpdo[9] = \<const0> ;
  assign gt1_drpdo[8] = \<const0> ;
  assign gt1_drpdo[7] = \<const0> ;
  assign gt1_drpdo[6] = \<const0> ;
  assign gt1_drpdo[5] = \<const0> ;
  assign gt1_drpdo[4] = \<const0> ;
  assign gt1_drpdo[3] = \<const0> ;
  assign gt1_drpdo[2] = \<const0> ;
  assign gt1_drpdo[1] = \<const0> ;
  assign gt1_drpdo[0] = \<const0> ;
  assign gt1_drprdy = \<const0> ;
  assign gt1_eyescandataerror_out = \<const0> ;
  assign gt1_rxbufstatus_out[2] = \<const0> ;
  assign gt1_rxbufstatus_out[1] = \<const0> ;
  assign gt1_rxbufstatus_out[0] = \<const0> ;
  assign gt1_rxbyteisaligned_out = \<const0> ;
  assign gt1_rxbyterealign_out = \<const0> ;
  assign gt1_rxcommadet_out = \<const0> ;
  assign gt1_rxmonitorout_out[6] = \<const0> ;
  assign gt1_rxmonitorout_out[5] = \<const0> ;
  assign gt1_rxmonitorout_out[4] = \<const0> ;
  assign gt1_rxmonitorout_out[3] = \<const0> ;
  assign gt1_rxmonitorout_out[2] = \<const0> ;
  assign gt1_rxmonitorout_out[1] = \<const0> ;
  assign gt1_rxmonitorout_out[0] = \<const0> ;
  assign gt1_rxprbserr_out = \<const0> ;
  assign gt1_rxresetdone_out = \<const0> ;
  assign gt1_rxstatus_out[2] = \<const0> ;
  assign gt1_rxstatus_out[1] = \<const0> ;
  assign gt1_rxstatus_out[0] = \<const0> ;
  assign gt1_txbufstatus_out[1] = \<const0> ;
  assign gt1_txbufstatus_out[0] = \<const0> ;
  assign gt1_txresetdone_out = \<const0> ;
  assign gt2_cplllock_out = \<const0> ;
  assign gt2_dmonitorout_out[7] = \<const0> ;
  assign gt2_dmonitorout_out[6] = \<const0> ;
  assign gt2_dmonitorout_out[5] = \<const0> ;
  assign gt2_dmonitorout_out[4] = \<const0> ;
  assign gt2_dmonitorout_out[3] = \<const0> ;
  assign gt2_dmonitorout_out[2] = \<const0> ;
  assign gt2_dmonitorout_out[1] = \<const0> ;
  assign gt2_dmonitorout_out[0] = \<const0> ;
  assign gt2_drpdo[15] = \<const0> ;
  assign gt2_drpdo[14] = \<const0> ;
  assign gt2_drpdo[13] = \<const0> ;
  assign gt2_drpdo[12] = \<const0> ;
  assign gt2_drpdo[11] = \<const0> ;
  assign gt2_drpdo[10] = \<const0> ;
  assign gt2_drpdo[9] = \<const0> ;
  assign gt2_drpdo[8] = \<const0> ;
  assign gt2_drpdo[7] = \<const0> ;
  assign gt2_drpdo[6] = \<const0> ;
  assign gt2_drpdo[5] = \<const0> ;
  assign gt2_drpdo[4] = \<const0> ;
  assign gt2_drpdo[3] = \<const0> ;
  assign gt2_drpdo[2] = \<const0> ;
  assign gt2_drpdo[1] = \<const0> ;
  assign gt2_drpdo[0] = \<const0> ;
  assign gt2_drprdy = \<const0> ;
  assign gt2_eyescandataerror_out = \<const0> ;
  assign gt2_rxbufstatus_out[2] = \<const0> ;
  assign gt2_rxbufstatus_out[1] = \<const0> ;
  assign gt2_rxbufstatus_out[0] = \<const0> ;
  assign gt2_rxbyteisaligned_out = \<const0> ;
  assign gt2_rxbyterealign_out = \<const0> ;
  assign gt2_rxcommadet_out = \<const0> ;
  assign gt2_rxmonitorout_out[6] = \<const0> ;
  assign gt2_rxmonitorout_out[5] = \<const0> ;
  assign gt2_rxmonitorout_out[4] = \<const0> ;
  assign gt2_rxmonitorout_out[3] = \<const0> ;
  assign gt2_rxmonitorout_out[2] = \<const0> ;
  assign gt2_rxmonitorout_out[1] = \<const0> ;
  assign gt2_rxmonitorout_out[0] = \<const0> ;
  assign gt2_rxprbserr_out = \<const0> ;
  assign gt2_rxresetdone_out = \<const0> ;
  assign gt2_rxstatus_out[2] = \<const0> ;
  assign gt2_rxstatus_out[1] = \<const0> ;
  assign gt2_rxstatus_out[0] = \<const0> ;
  assign gt2_txbufstatus_out[1] = \<const0> ;
  assign gt2_txbufstatus_out[0] = \<const0> ;
  assign gt2_txresetdone_out = \<const0> ;
  assign gt3_cplllock_out = \<const0> ;
  assign gt3_dmonitorout_out[7] = \<const0> ;
  assign gt3_dmonitorout_out[6] = \<const0> ;
  assign gt3_dmonitorout_out[5] = \<const0> ;
  assign gt3_dmonitorout_out[4] = \<const0> ;
  assign gt3_dmonitorout_out[3] = \<const0> ;
  assign gt3_dmonitorout_out[2] = \<const0> ;
  assign gt3_dmonitorout_out[1] = \<const0> ;
  assign gt3_dmonitorout_out[0] = \<const0> ;
  assign gt3_drpdo[15] = \<const0> ;
  assign gt3_drpdo[14] = \<const0> ;
  assign gt3_drpdo[13] = \<const0> ;
  assign gt3_drpdo[12] = \<const0> ;
  assign gt3_drpdo[11] = \<const0> ;
  assign gt3_drpdo[10] = \<const0> ;
  assign gt3_drpdo[9] = \<const0> ;
  assign gt3_drpdo[8] = \<const0> ;
  assign gt3_drpdo[7] = \<const0> ;
  assign gt3_drpdo[6] = \<const0> ;
  assign gt3_drpdo[5] = \<const0> ;
  assign gt3_drpdo[4] = \<const0> ;
  assign gt3_drpdo[3] = \<const0> ;
  assign gt3_drpdo[2] = \<const0> ;
  assign gt3_drpdo[1] = \<const0> ;
  assign gt3_drpdo[0] = \<const0> ;
  assign gt3_drprdy = \<const0> ;
  assign gt3_eyescandataerror_out = \<const0> ;
  assign gt3_rxbufstatus_out[2] = \<const0> ;
  assign gt3_rxbufstatus_out[1] = \<const0> ;
  assign gt3_rxbufstatus_out[0] = \<const0> ;
  assign gt3_rxbyteisaligned_out = \<const0> ;
  assign gt3_rxbyterealign_out = \<const0> ;
  assign gt3_rxcommadet_out = \<const0> ;
  assign gt3_rxmonitorout_out[6] = \<const0> ;
  assign gt3_rxmonitorout_out[5] = \<const0> ;
  assign gt3_rxmonitorout_out[4] = \<const0> ;
  assign gt3_rxmonitorout_out[3] = \<const0> ;
  assign gt3_rxmonitorout_out[2] = \<const0> ;
  assign gt3_rxmonitorout_out[1] = \<const0> ;
  assign gt3_rxmonitorout_out[0] = \<const0> ;
  assign gt3_rxprbserr_out = \<const0> ;
  assign gt3_rxresetdone_out = \<const0> ;
  assign gt3_rxstatus_out[2] = \<const0> ;
  assign gt3_rxstatus_out[1] = \<const0> ;
  assign gt3_rxstatus_out[0] = \<const0> ;
  assign gt3_txbufstatus_out[1] = \<const0> ;
  assign gt3_txbufstatus_out[0] = \<const0> ;
  assign gt3_txresetdone_out = \<const0> ;
  assign gt4_cplllock_out = \<const0> ;
  assign gt4_dmonitorout_out[7] = \<const0> ;
  assign gt4_dmonitorout_out[6] = \<const0> ;
  assign gt4_dmonitorout_out[5] = \<const0> ;
  assign gt4_dmonitorout_out[4] = \<const0> ;
  assign gt4_dmonitorout_out[3] = \<const0> ;
  assign gt4_dmonitorout_out[2] = \<const0> ;
  assign gt4_dmonitorout_out[1] = \<const0> ;
  assign gt4_dmonitorout_out[0] = \<const0> ;
  assign gt4_drpdo[15] = \<const0> ;
  assign gt4_drpdo[14] = \<const0> ;
  assign gt4_drpdo[13] = \<const0> ;
  assign gt4_drpdo[12] = \<const0> ;
  assign gt4_drpdo[11] = \<const0> ;
  assign gt4_drpdo[10] = \<const0> ;
  assign gt4_drpdo[9] = \<const0> ;
  assign gt4_drpdo[8] = \<const0> ;
  assign gt4_drpdo[7] = \<const0> ;
  assign gt4_drpdo[6] = \<const0> ;
  assign gt4_drpdo[5] = \<const0> ;
  assign gt4_drpdo[4] = \<const0> ;
  assign gt4_drpdo[3] = \<const0> ;
  assign gt4_drpdo[2] = \<const0> ;
  assign gt4_drpdo[1] = \<const0> ;
  assign gt4_drpdo[0] = \<const0> ;
  assign gt4_drprdy = \<const0> ;
  assign gt4_eyescandataerror_out = \<const0> ;
  assign gt4_rxbufstatus_out[2] = \<const0> ;
  assign gt4_rxbufstatus_out[1] = \<const0> ;
  assign gt4_rxbufstatus_out[0] = \<const0> ;
  assign gt4_rxbyteisaligned_out = \<const0> ;
  assign gt4_rxbyterealign_out = \<const0> ;
  assign gt4_rxcommadet_out = \<const0> ;
  assign gt4_rxmonitorout_out[6] = \<const0> ;
  assign gt4_rxmonitorout_out[5] = \<const0> ;
  assign gt4_rxmonitorout_out[4] = \<const0> ;
  assign gt4_rxmonitorout_out[3] = \<const0> ;
  assign gt4_rxmonitorout_out[2] = \<const0> ;
  assign gt4_rxmonitorout_out[1] = \<const0> ;
  assign gt4_rxmonitorout_out[0] = \<const0> ;
  assign gt4_rxprbserr_out = \<const0> ;
  assign gt4_rxresetdone_out = \<const0> ;
  assign gt4_rxstatus_out[2] = \<const0> ;
  assign gt4_rxstatus_out[1] = \<const0> ;
  assign gt4_rxstatus_out[0] = \<const0> ;
  assign gt4_txbufstatus_out[1] = \<const0> ;
  assign gt4_txbufstatus_out[0] = \<const0> ;
  assign gt4_txresetdone_out = \<const0> ;
  assign gt5_cplllock_out = \<const0> ;
  assign gt5_dmonitorout_out[7] = \<const0> ;
  assign gt5_dmonitorout_out[6] = \<const0> ;
  assign gt5_dmonitorout_out[5] = \<const0> ;
  assign gt5_dmonitorout_out[4] = \<const0> ;
  assign gt5_dmonitorout_out[3] = \<const0> ;
  assign gt5_dmonitorout_out[2] = \<const0> ;
  assign gt5_dmonitorout_out[1] = \<const0> ;
  assign gt5_dmonitorout_out[0] = \<const0> ;
  assign gt5_drpdo[15] = \<const0> ;
  assign gt5_drpdo[14] = \<const0> ;
  assign gt5_drpdo[13] = \<const0> ;
  assign gt5_drpdo[12] = \<const0> ;
  assign gt5_drpdo[11] = \<const0> ;
  assign gt5_drpdo[10] = \<const0> ;
  assign gt5_drpdo[9] = \<const0> ;
  assign gt5_drpdo[8] = \<const0> ;
  assign gt5_drpdo[7] = \<const0> ;
  assign gt5_drpdo[6] = \<const0> ;
  assign gt5_drpdo[5] = \<const0> ;
  assign gt5_drpdo[4] = \<const0> ;
  assign gt5_drpdo[3] = \<const0> ;
  assign gt5_drpdo[2] = \<const0> ;
  assign gt5_drpdo[1] = \<const0> ;
  assign gt5_drpdo[0] = \<const0> ;
  assign gt5_drprdy = \<const0> ;
  assign gt5_eyescandataerror_out = \<const0> ;
  assign gt5_rxbufstatus_out[2] = \<const0> ;
  assign gt5_rxbufstatus_out[1] = \<const0> ;
  assign gt5_rxbufstatus_out[0] = \<const0> ;
  assign gt5_rxbyteisaligned_out = \<const0> ;
  assign gt5_rxbyterealign_out = \<const0> ;
  assign gt5_rxcommadet_out = \<const0> ;
  assign gt5_rxmonitorout_out[6] = \<const0> ;
  assign gt5_rxmonitorout_out[5] = \<const0> ;
  assign gt5_rxmonitorout_out[4] = \<const0> ;
  assign gt5_rxmonitorout_out[3] = \<const0> ;
  assign gt5_rxmonitorout_out[2] = \<const0> ;
  assign gt5_rxmonitorout_out[1] = \<const0> ;
  assign gt5_rxmonitorout_out[0] = \<const0> ;
  assign gt5_rxprbserr_out = \<const0> ;
  assign gt5_rxresetdone_out = \<const0> ;
  assign gt5_rxstatus_out[2] = \<const0> ;
  assign gt5_rxstatus_out[1] = \<const0> ;
  assign gt5_rxstatus_out[0] = \<const0> ;
  assign gt5_txbufstatus_out[1] = \<const0> ;
  assign gt5_txbufstatus_out[0] = \<const0> ;
  assign gt5_txresetdone_out = \<const0> ;
  assign gt6_cplllock_out = \<const0> ;
  assign gt6_dmonitorout_out[7] = \<const0> ;
  assign gt6_dmonitorout_out[6] = \<const0> ;
  assign gt6_dmonitorout_out[5] = \<const0> ;
  assign gt6_dmonitorout_out[4] = \<const0> ;
  assign gt6_dmonitorout_out[3] = \<const0> ;
  assign gt6_dmonitorout_out[2] = \<const0> ;
  assign gt6_dmonitorout_out[1] = \<const0> ;
  assign gt6_dmonitorout_out[0] = \<const0> ;
  assign gt6_drpdo[15] = \<const0> ;
  assign gt6_drpdo[14] = \<const0> ;
  assign gt6_drpdo[13] = \<const0> ;
  assign gt6_drpdo[12] = \<const0> ;
  assign gt6_drpdo[11] = \<const0> ;
  assign gt6_drpdo[10] = \<const0> ;
  assign gt6_drpdo[9] = \<const0> ;
  assign gt6_drpdo[8] = \<const0> ;
  assign gt6_drpdo[7] = \<const0> ;
  assign gt6_drpdo[6] = \<const0> ;
  assign gt6_drpdo[5] = \<const0> ;
  assign gt6_drpdo[4] = \<const0> ;
  assign gt6_drpdo[3] = \<const0> ;
  assign gt6_drpdo[2] = \<const0> ;
  assign gt6_drpdo[1] = \<const0> ;
  assign gt6_drpdo[0] = \<const0> ;
  assign gt6_drprdy = \<const0> ;
  assign gt6_eyescandataerror_out = \<const0> ;
  assign gt6_rxbufstatus_out[2] = \<const0> ;
  assign gt6_rxbufstatus_out[1] = \<const0> ;
  assign gt6_rxbufstatus_out[0] = \<const0> ;
  assign gt6_rxbyteisaligned_out = \<const0> ;
  assign gt6_rxbyterealign_out = \<const0> ;
  assign gt6_rxcommadet_out = \<const0> ;
  assign gt6_rxmonitorout_out[6] = \<const0> ;
  assign gt6_rxmonitorout_out[5] = \<const0> ;
  assign gt6_rxmonitorout_out[4] = \<const0> ;
  assign gt6_rxmonitorout_out[3] = \<const0> ;
  assign gt6_rxmonitorout_out[2] = \<const0> ;
  assign gt6_rxmonitorout_out[1] = \<const0> ;
  assign gt6_rxmonitorout_out[0] = \<const0> ;
  assign gt6_rxprbserr_out = \<const0> ;
  assign gt6_rxresetdone_out = \<const0> ;
  assign gt6_rxstatus_out[2] = \<const0> ;
  assign gt6_rxstatus_out[1] = \<const0> ;
  assign gt6_rxstatus_out[0] = \<const0> ;
  assign gt6_txbufstatus_out[1] = \<const0> ;
  assign gt6_txbufstatus_out[0] = \<const0> ;
  assign gt6_txresetdone_out = \<const0> ;
  assign gt7_cplllock_out = \<const0> ;
  assign gt7_dmonitorout_out[7] = \<const0> ;
  assign gt7_dmonitorout_out[6] = \<const0> ;
  assign gt7_dmonitorout_out[5] = \<const0> ;
  assign gt7_dmonitorout_out[4] = \<const0> ;
  assign gt7_dmonitorout_out[3] = \<const0> ;
  assign gt7_dmonitorout_out[2] = \<const0> ;
  assign gt7_dmonitorout_out[1] = \<const0> ;
  assign gt7_dmonitorout_out[0] = \<const0> ;
  assign gt7_drpdo[15] = \<const0> ;
  assign gt7_drpdo[14] = \<const0> ;
  assign gt7_drpdo[13] = \<const0> ;
  assign gt7_drpdo[12] = \<const0> ;
  assign gt7_drpdo[11] = \<const0> ;
  assign gt7_drpdo[10] = \<const0> ;
  assign gt7_drpdo[9] = \<const0> ;
  assign gt7_drpdo[8] = \<const0> ;
  assign gt7_drpdo[7] = \<const0> ;
  assign gt7_drpdo[6] = \<const0> ;
  assign gt7_drpdo[5] = \<const0> ;
  assign gt7_drpdo[4] = \<const0> ;
  assign gt7_drpdo[3] = \<const0> ;
  assign gt7_drpdo[2] = \<const0> ;
  assign gt7_drpdo[1] = \<const0> ;
  assign gt7_drpdo[0] = \<const0> ;
  assign gt7_drprdy = \<const0> ;
  assign gt7_eyescandataerror_out = \<const0> ;
  assign gt7_rxbufstatus_out[2] = \<const0> ;
  assign gt7_rxbufstatus_out[1] = \<const0> ;
  assign gt7_rxbufstatus_out[0] = \<const0> ;
  assign gt7_rxbyteisaligned_out = \<const0> ;
  assign gt7_rxbyterealign_out = \<const0> ;
  assign gt7_rxcommadet_out = \<const0> ;
  assign gt7_rxmonitorout_out[6] = \<const0> ;
  assign gt7_rxmonitorout_out[5] = \<const0> ;
  assign gt7_rxmonitorout_out[4] = \<const0> ;
  assign gt7_rxmonitorout_out[3] = \<const0> ;
  assign gt7_rxmonitorout_out[2] = \<const0> ;
  assign gt7_rxmonitorout_out[1] = \<const0> ;
  assign gt7_rxmonitorout_out[0] = \<const0> ;
  assign gt7_rxprbserr_out = \<const0> ;
  assign gt7_rxresetdone_out = \<const0> ;
  assign gt7_rxstatus_out[2] = \<const0> ;
  assign gt7_rxstatus_out[1] = \<const0> ;
  assign gt7_rxstatus_out[0] = \<const0> ;
  assign gt7_txbufstatus_out[1] = \<const0> ;
  assign gt7_txbufstatus_out[0] = \<const0> ;
  assign gt7_txresetdone_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "JESD204_PHY_gt,gtwizard_v3_6_13,{protocol_file=JESD204}" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt JESD204_PHY_gt
       (.dont_reset_on_data_error_in(1'b0),
        .gt0_cpllfbclklost_out(NLW_JESD204_PHY_gt_gt0_cpllfbclklost_out_UNCONNECTED),
        .gt0_cplllock_out(NLW_JESD204_PHY_gt_gt0_cplllock_out_UNCONNECTED),
        .gt0_cplllockdetclk_in(1'b0),
        .gt0_cpllpd_in(1'b1),
        .gt0_cpllreset_in(1'b0),
        .gt0_data_valid_in(1'b1),
        .gt0_dmonitorout_out(NLW_JESD204_PHY_gt_gt0_dmonitorout_out_UNCONNECTED[7:0]),
        .gt0_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpclk_in(1'b0),
        .gt0_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdo_out(NLW_JESD204_PHY_gt_gt0_drpdo_out_UNCONNECTED[15:0]),
        .gt0_drpen_in(1'b0),
        .gt0_drprdy_out(NLW_JESD204_PHY_gt_gt0_drprdy_out_UNCONNECTED),
        .gt0_drpwe_in(1'b0),
        .gt0_eyescandataerror_out(NLW_JESD204_PHY_gt_gt0_eyescandataerror_out_UNCONNECTED),
        .gt0_eyescanreset_in(1'b0),
        .gt0_eyescantrigger_in(1'b0),
        .gt0_gtnorthrefclk0_in(1'b0),
        .gt0_gtnorthrefclk1_in(1'b0),
        .gt0_gtrefclk0_in(1'b0),
        .gt0_gtrefclk1_in(1'b0),
        .gt0_gtrxreset_in(rx_rst_gt_data_sync),
        .gt0_gtsouthrefclk0_in(1'b0),
        .gt0_gtsouthrefclk1_in(1'b0),
        .gt0_gttxreset_in(tx_rst_gt_data_sync),
        .gt0_gtxrxn_in(rxn_in[0]),
        .gt0_gtxrxp_in(rxp_in[0]),
        .gt0_gtxtxn_out(txn_out[0]),
        .gt0_gtxtxp_out(txp_out[0]),
        .gt0_loopback_in({1'b0,1'b0,1'b0}),
        .gt0_qplllock_in(common0_qpll_lock_in),
        .gt0_qplloutclk_in(common0_qpll_clk_in),
        .gt0_qplloutrefclk_in(common0_qpll_refclk_in),
        .gt0_qpllrefclklost_in(1'b0),
        .gt0_qpllreset_out(common0_qpll_reset_i),
        .gt0_rxbufreset_in(1'b0),
        .gt0_rxbufstatus_out(NLW_JESD204_PHY_gt_gt0_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt0_rxbyteisaligned_out(NLW_JESD204_PHY_gt_gt0_rxbyteisaligned_out_UNCONNECTED),
        .gt0_rxbyterealign_out(NLW_JESD204_PHY_gt_gt0_rxbyterealign_out_UNCONNECTED),
        .gt0_rxcdrhold_in(1'b0),
        .gt0_rxchariscomma_out(NLW_JESD204_PHY_gt_gt0_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt0_rxcharisk_out(gt0_rxcharisk),
        .gt0_rxcommadet_out(NLW_JESD204_PHY_gt_gt0_rxcommadet_out_UNCONNECTED),
        .gt0_rxdata_out(gt0_rxdata),
        .gt0_rxdfelpmreset_in(1'b0),
        .gt0_rxdisperr_out(gt0_rxdisperr),
        .gt0_rxlpmen_in(1'b1),
        .gt0_rxmcommaalignen_in(rxencommaalign),
        .gt0_rxmonitorout_out(NLW_JESD204_PHY_gt_gt0_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt0_rxmonitorsel_in({1'b0,1'b0}),
        .gt0_rxnotintable_out(gt0_rxnotintable),
        .gt0_rxoutclk_out(rxoutclk),
        .gt0_rxoutclkfabric_out(NLW_JESD204_PHY_gt_gt0_rxoutclkfabric_out_UNCONNECTED),
        .gt0_rxpcommaalignen_in(1'b0),
        .gt0_rxpcsreset_in(1'b0),
        .gt0_rxpd_in({1'b0,1'b0}),
        .gt0_rxpmareset_in(1'b0),
        .gt0_rxpolarity_in(1'b0),
        .gt0_rxprbscntreset_in(1'b0),
        .gt0_rxprbserr_out(NLW_JESD204_PHY_gt_gt0_rxprbserr_out_UNCONNECTED),
        .gt0_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt0_rxresetdone_out(JESD204_PHY_gt_n_97),
        .gt0_rxstatus_out(NLW_JESD204_PHY_gt_gt0_rxstatus_out_UNCONNECTED[2:0]),
        .gt0_rxsysclksel_in({1'b1,1'b1}),
        .gt0_rxuserrdy_in(1'b1),
        .gt0_rxusrclk2_in(1'b0),
        .gt0_rxusrclk_in(rx_core_clk),
        .gt0_txbufstatus_out(NLW_JESD204_PHY_gt_gt0_txbufstatus_out_UNCONNECTED[1:0]),
        .gt0_txcharisk_in(gt0_txcharisk),
        .gt0_txdata_in(gt0_txdata),
        .gt0_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt0_txinhibit_in(1'b0),
        .gt0_txoutclk_out(txoutclk),
        .gt0_txoutclkfabric_out(NLW_JESD204_PHY_gt_gt0_txoutclkfabric_out_UNCONNECTED),
        .gt0_txoutclkpcs_out(NLW_JESD204_PHY_gt_gt0_txoutclkpcs_out_UNCONNECTED),
        .gt0_txpcsreset_in(1'b0),
        .gt0_txpd_in({1'b0,1'b0}),
        .gt0_txpmareset_in(1'b0),
        .gt0_txpolarity_in(1'b0),
        .gt0_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_txprbsforceerr_in(1'b0),
        .gt0_txprbssel_in(gt_prbssel),
        .gt0_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_txresetdone_out(JESD204_PHY_gt_n_105),
        .gt0_txsysclksel_in({1'b1,1'b1}),
        .gt0_txuserrdy_in(1'b1),
        .gt0_txusrclk2_in(1'b0),
        .gt0_txusrclk_in(tx_core_clk),
        .gt1_cpllfbclklost_out(NLW_JESD204_PHY_gt_gt1_cpllfbclklost_out_UNCONNECTED),
        .gt1_cplllock_out(NLW_JESD204_PHY_gt_gt1_cplllock_out_UNCONNECTED),
        .gt1_cplllockdetclk_in(1'b0),
        .gt1_cpllpd_in(1'b1),
        .gt1_cpllreset_in(1'b0),
        .gt1_data_valid_in(1'b1),
        .gt1_dmonitorout_out(NLW_JESD204_PHY_gt_gt1_dmonitorout_out_UNCONNECTED[7:0]),
        .gt1_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpclk_in(1'b0),
        .gt1_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdo_out(NLW_JESD204_PHY_gt_gt1_drpdo_out_UNCONNECTED[15:0]),
        .gt1_drpen_in(1'b0),
        .gt1_drprdy_out(NLW_JESD204_PHY_gt_gt1_drprdy_out_UNCONNECTED),
        .gt1_drpwe_in(1'b0),
        .gt1_eyescandataerror_out(NLW_JESD204_PHY_gt_gt1_eyescandataerror_out_UNCONNECTED),
        .gt1_eyescanreset_in(1'b0),
        .gt1_eyescantrigger_in(1'b0),
        .gt1_gtnorthrefclk0_in(1'b0),
        .gt1_gtnorthrefclk1_in(1'b0),
        .gt1_gtrefclk0_in(1'b0),
        .gt1_gtrefclk1_in(1'b0),
        .gt1_gtrxreset_in(1'b0),
        .gt1_gtsouthrefclk0_in(1'b0),
        .gt1_gtsouthrefclk1_in(1'b0),
        .gt1_gttxreset_in(1'b0),
        .gt1_gtxrxn_in(rxn_in[1]),
        .gt1_gtxrxp_in(rxp_in[1]),
        .gt1_gtxtxn_out(txn_out[1]),
        .gt1_gtxtxp_out(txp_out[1]),
        .gt1_loopback_in({1'b0,1'b0,1'b0}),
        .gt1_qplllock_in(common1_qpll_lock_in),
        .gt1_qplloutclk_in(common1_qpll_clk_in),
        .gt1_qplloutrefclk_in(common1_qpll_refclk_in),
        .gt1_qpllrefclklost_in(1'b0),
        .gt1_qpllreset_out(common1_qpll_reset_i),
        .gt1_rxbufreset_in(1'b0),
        .gt1_rxbufstatus_out(NLW_JESD204_PHY_gt_gt1_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt1_rxbyteisaligned_out(NLW_JESD204_PHY_gt_gt1_rxbyteisaligned_out_UNCONNECTED),
        .gt1_rxbyterealign_out(NLW_JESD204_PHY_gt_gt1_rxbyterealign_out_UNCONNECTED),
        .gt1_rxcdrhold_in(1'b0),
        .gt1_rxchariscomma_out(NLW_JESD204_PHY_gt_gt1_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt1_rxcharisk_out(gt1_rxcharisk),
        .gt1_rxcommadet_out(NLW_JESD204_PHY_gt_gt1_rxcommadet_out_UNCONNECTED),
        .gt1_rxdata_out(gt1_rxdata),
        .gt1_rxdfelpmreset_in(1'b0),
        .gt1_rxdisperr_out(gt1_rxdisperr),
        .gt1_rxlpmen_in(1'b1),
        .gt1_rxmcommaalignen_in(1'b0),
        .gt1_rxmonitorout_out(NLW_JESD204_PHY_gt_gt1_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt1_rxmonitorsel_in({1'b0,1'b0}),
        .gt1_rxnotintable_out(gt1_rxnotintable),
        .gt1_rxoutclk_out(NLW_JESD204_PHY_gt_gt1_rxoutclk_out_UNCONNECTED),
        .gt1_rxoutclkfabric_out(NLW_JESD204_PHY_gt_gt1_rxoutclkfabric_out_UNCONNECTED),
        .gt1_rxpcommaalignen_in(1'b0),
        .gt1_rxpcsreset_in(1'b0),
        .gt1_rxpd_in({1'b0,1'b0}),
        .gt1_rxpmareset_in(1'b0),
        .gt1_rxpolarity_in(1'b0),
        .gt1_rxprbscntreset_in(1'b0),
        .gt1_rxprbserr_out(NLW_JESD204_PHY_gt_gt1_rxprbserr_out_UNCONNECTED),
        .gt1_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt1_rxresetdone_out(JESD204_PHY_gt_n_201),
        .gt1_rxstatus_out(NLW_JESD204_PHY_gt_gt1_rxstatus_out_UNCONNECTED[2:0]),
        .gt1_rxsysclksel_in({1'b1,1'b1}),
        .gt1_rxuserrdy_in(1'b1),
        .gt1_rxusrclk2_in(1'b0),
        .gt1_rxusrclk_in(1'b0),
        .gt1_txbufstatus_out(NLW_JESD204_PHY_gt_gt1_txbufstatus_out_UNCONNECTED[1:0]),
        .gt1_txcharisk_in(gt1_txcharisk),
        .gt1_txdata_in(gt1_txdata),
        .gt1_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt1_txinhibit_in(1'b0),
        .gt1_txoutclk_out(NLW_JESD204_PHY_gt_gt1_txoutclk_out_UNCONNECTED),
        .gt1_txoutclkfabric_out(NLW_JESD204_PHY_gt_gt1_txoutclkfabric_out_UNCONNECTED),
        .gt1_txoutclkpcs_out(NLW_JESD204_PHY_gt_gt1_txoutclkpcs_out_UNCONNECTED),
        .gt1_txpcsreset_in(1'b0),
        .gt1_txpd_in({1'b0,1'b0}),
        .gt1_txpmareset_in(1'b0),
        .gt1_txpolarity_in(1'b0),
        .gt1_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_txprbsforceerr_in(1'b0),
        .gt1_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt1_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_txresetdone_out(JESD204_PHY_gt_n_209),
        .gt1_txsysclksel_in({1'b1,1'b1}),
        .gt1_txuserrdy_in(1'b1),
        .gt1_txusrclk2_in(1'b0),
        .gt1_txusrclk_in(1'b0),
        .gt2_cpllfbclklost_out(NLW_JESD204_PHY_gt_gt2_cpllfbclklost_out_UNCONNECTED),
        .gt2_cplllock_out(NLW_JESD204_PHY_gt_gt2_cplllock_out_UNCONNECTED),
        .gt2_cplllockdetclk_in(1'b0),
        .gt2_cpllpd_in(1'b1),
        .gt2_cpllreset_in(1'b0),
        .gt2_data_valid_in(1'b1),
        .gt2_dmonitorout_out(NLW_JESD204_PHY_gt_gt2_dmonitorout_out_UNCONNECTED[7:0]),
        .gt2_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpclk_in(1'b0),
        .gt2_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdo_out(NLW_JESD204_PHY_gt_gt2_drpdo_out_UNCONNECTED[15:0]),
        .gt2_drpen_in(1'b0),
        .gt2_drprdy_out(NLW_JESD204_PHY_gt_gt2_drprdy_out_UNCONNECTED),
        .gt2_drpwe_in(1'b0),
        .gt2_eyescandataerror_out(NLW_JESD204_PHY_gt_gt2_eyescandataerror_out_UNCONNECTED),
        .gt2_eyescanreset_in(1'b0),
        .gt2_eyescantrigger_in(1'b0),
        .gt2_gtnorthrefclk0_in(1'b0),
        .gt2_gtnorthrefclk1_in(1'b0),
        .gt2_gtrefclk0_in(1'b0),
        .gt2_gtrefclk1_in(1'b0),
        .gt2_gtrxreset_in(1'b0),
        .gt2_gtsouthrefclk0_in(1'b0),
        .gt2_gtsouthrefclk1_in(1'b0),
        .gt2_gttxreset_in(1'b0),
        .gt2_gtxrxn_in(rxn_in[2]),
        .gt2_gtxrxp_in(rxp_in[2]),
        .gt2_gtxtxn_out(txn_out[2]),
        .gt2_gtxtxp_out(txp_out[2]),
        .gt2_loopback_in({1'b0,1'b0,1'b0}),
        .gt2_rxbufreset_in(1'b0),
        .gt2_rxbufstatus_out(NLW_JESD204_PHY_gt_gt2_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt2_rxbyteisaligned_out(NLW_JESD204_PHY_gt_gt2_rxbyteisaligned_out_UNCONNECTED),
        .gt2_rxbyterealign_out(NLW_JESD204_PHY_gt_gt2_rxbyterealign_out_UNCONNECTED),
        .gt2_rxcdrhold_in(1'b0),
        .gt2_rxchariscomma_out(NLW_JESD204_PHY_gt_gt2_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt2_rxcharisk_out(gt2_rxcharisk),
        .gt2_rxcommadet_out(NLW_JESD204_PHY_gt_gt2_rxcommadet_out_UNCONNECTED),
        .gt2_rxdata_out(gt2_rxdata),
        .gt2_rxdfelpmreset_in(1'b0),
        .gt2_rxdisperr_out(gt2_rxdisperr),
        .gt2_rxlpmen_in(1'b1),
        .gt2_rxmcommaalignen_in(1'b0),
        .gt2_rxmonitorout_out(NLW_JESD204_PHY_gt_gt2_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt2_rxmonitorsel_in({1'b0,1'b0}),
        .gt2_rxnotintable_out(gt2_rxnotintable),
        .gt2_rxoutclk_out(NLW_JESD204_PHY_gt_gt2_rxoutclk_out_UNCONNECTED),
        .gt2_rxoutclkfabric_out(NLW_JESD204_PHY_gt_gt2_rxoutclkfabric_out_UNCONNECTED),
        .gt2_rxpcommaalignen_in(1'b0),
        .gt2_rxpcsreset_in(1'b0),
        .gt2_rxpd_in({1'b0,1'b0}),
        .gt2_rxpmareset_in(1'b0),
        .gt2_rxpolarity_in(1'b0),
        .gt2_rxprbscntreset_in(1'b0),
        .gt2_rxprbserr_out(NLW_JESD204_PHY_gt_gt2_rxprbserr_out_UNCONNECTED),
        .gt2_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt2_rxresetdone_out(JESD204_PHY_gt_n_305),
        .gt2_rxstatus_out(NLW_JESD204_PHY_gt_gt2_rxstatus_out_UNCONNECTED[2:0]),
        .gt2_rxsysclksel_in({1'b1,1'b1}),
        .gt2_rxuserrdy_in(1'b1),
        .gt2_rxusrclk2_in(1'b0),
        .gt2_rxusrclk_in(1'b0),
        .gt2_txbufstatus_out(NLW_JESD204_PHY_gt_gt2_txbufstatus_out_UNCONNECTED[1:0]),
        .gt2_txcharisk_in(gt2_txcharisk),
        .gt2_txdata_in(gt2_txdata),
        .gt2_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt2_txinhibit_in(1'b0),
        .gt2_txoutclk_out(NLW_JESD204_PHY_gt_gt2_txoutclk_out_UNCONNECTED),
        .gt2_txoutclkfabric_out(NLW_JESD204_PHY_gt_gt2_txoutclkfabric_out_UNCONNECTED),
        .gt2_txoutclkpcs_out(NLW_JESD204_PHY_gt_gt2_txoutclkpcs_out_UNCONNECTED),
        .gt2_txpcsreset_in(1'b0),
        .gt2_txpd_in({1'b0,1'b0}),
        .gt2_txpmareset_in(1'b0),
        .gt2_txpolarity_in(1'b0),
        .gt2_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_txprbsforceerr_in(1'b0),
        .gt2_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt2_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_txresetdone_out(JESD204_PHY_gt_n_313),
        .gt2_txsysclksel_in({1'b1,1'b1}),
        .gt2_txuserrdy_in(1'b1),
        .gt2_txusrclk2_in(1'b0),
        .gt2_txusrclk_in(1'b0),
        .gt3_cpllfbclklost_out(NLW_JESD204_PHY_gt_gt3_cpllfbclklost_out_UNCONNECTED),
        .gt3_cplllock_out(NLW_JESD204_PHY_gt_gt3_cplllock_out_UNCONNECTED),
        .gt3_cplllockdetclk_in(1'b0),
        .gt3_cpllpd_in(1'b1),
        .gt3_cpllreset_in(1'b0),
        .gt3_data_valid_in(1'b1),
        .gt3_dmonitorout_out(NLW_JESD204_PHY_gt_gt3_dmonitorout_out_UNCONNECTED[7:0]),
        .gt3_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpclk_in(1'b0),
        .gt3_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdo_out(NLW_JESD204_PHY_gt_gt3_drpdo_out_UNCONNECTED[15:0]),
        .gt3_drpen_in(1'b0),
        .gt3_drprdy_out(NLW_JESD204_PHY_gt_gt3_drprdy_out_UNCONNECTED),
        .gt3_drpwe_in(1'b0),
        .gt3_eyescandataerror_out(NLW_JESD204_PHY_gt_gt3_eyescandataerror_out_UNCONNECTED),
        .gt3_eyescanreset_in(1'b0),
        .gt3_eyescantrigger_in(1'b0),
        .gt3_gtnorthrefclk0_in(1'b0),
        .gt3_gtnorthrefclk1_in(1'b0),
        .gt3_gtrefclk0_in(1'b0),
        .gt3_gtrefclk1_in(1'b0),
        .gt3_gtrxreset_in(1'b0),
        .gt3_gtsouthrefclk0_in(1'b0),
        .gt3_gtsouthrefclk1_in(1'b0),
        .gt3_gttxreset_in(1'b0),
        .gt3_gtxrxn_in(rxn_in[3]),
        .gt3_gtxrxp_in(rxp_in[3]),
        .gt3_gtxtxn_out(txn_out[3]),
        .gt3_gtxtxp_out(txp_out[3]),
        .gt3_loopback_in({1'b0,1'b0,1'b0}),
        .gt3_rxbufreset_in(1'b0),
        .gt3_rxbufstatus_out(NLW_JESD204_PHY_gt_gt3_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt3_rxbyteisaligned_out(NLW_JESD204_PHY_gt_gt3_rxbyteisaligned_out_UNCONNECTED),
        .gt3_rxbyterealign_out(NLW_JESD204_PHY_gt_gt3_rxbyterealign_out_UNCONNECTED),
        .gt3_rxcdrhold_in(1'b0),
        .gt3_rxchariscomma_out(NLW_JESD204_PHY_gt_gt3_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt3_rxcharisk_out(gt3_rxcharisk),
        .gt3_rxcommadet_out(NLW_JESD204_PHY_gt_gt3_rxcommadet_out_UNCONNECTED),
        .gt3_rxdata_out(gt3_rxdata),
        .gt3_rxdfelpmreset_in(1'b0),
        .gt3_rxdisperr_out(gt3_rxdisperr),
        .gt3_rxlpmen_in(1'b1),
        .gt3_rxmcommaalignen_in(1'b0),
        .gt3_rxmonitorout_out(NLW_JESD204_PHY_gt_gt3_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt3_rxmonitorsel_in({1'b0,1'b0}),
        .gt3_rxnotintable_out(gt3_rxnotintable),
        .gt3_rxoutclk_out(NLW_JESD204_PHY_gt_gt3_rxoutclk_out_UNCONNECTED),
        .gt3_rxoutclkfabric_out(NLW_JESD204_PHY_gt_gt3_rxoutclkfabric_out_UNCONNECTED),
        .gt3_rxpcommaalignen_in(1'b0),
        .gt3_rxpcsreset_in(1'b0),
        .gt3_rxpd_in({1'b0,1'b0}),
        .gt3_rxpmareset_in(1'b0),
        .gt3_rxpolarity_in(1'b0),
        .gt3_rxprbscntreset_in(1'b0),
        .gt3_rxprbserr_out(NLW_JESD204_PHY_gt_gt3_rxprbserr_out_UNCONNECTED),
        .gt3_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt3_rxresetdone_out(JESD204_PHY_gt_n_409),
        .gt3_rxstatus_out(NLW_JESD204_PHY_gt_gt3_rxstatus_out_UNCONNECTED[2:0]),
        .gt3_rxsysclksel_in({1'b1,1'b1}),
        .gt3_rxuserrdy_in(1'b1),
        .gt3_rxusrclk2_in(1'b0),
        .gt3_rxusrclk_in(1'b0),
        .gt3_txbufstatus_out(NLW_JESD204_PHY_gt_gt3_txbufstatus_out_UNCONNECTED[1:0]),
        .gt3_txcharisk_in(gt3_txcharisk),
        .gt3_txdata_in(gt3_txdata),
        .gt3_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt3_txinhibit_in(1'b0),
        .gt3_txoutclk_out(NLW_JESD204_PHY_gt_gt3_txoutclk_out_UNCONNECTED),
        .gt3_txoutclkfabric_out(NLW_JESD204_PHY_gt_gt3_txoutclkfabric_out_UNCONNECTED),
        .gt3_txoutclkpcs_out(NLW_JESD204_PHY_gt_gt3_txoutclkpcs_out_UNCONNECTED),
        .gt3_txpcsreset_in(1'b0),
        .gt3_txpd_in({1'b0,1'b0}),
        .gt3_txpmareset_in(1'b0),
        .gt3_txpolarity_in(1'b0),
        .gt3_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_txprbsforceerr_in(1'b0),
        .gt3_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt3_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_txresetdone_out(JESD204_PHY_gt_n_417),
        .gt3_txsysclksel_in({1'b1,1'b1}),
        .gt3_txuserrdy_in(1'b1),
        .gt3_txusrclk2_in(1'b0),
        .gt3_txusrclk_in(1'b0),
        .gt4_cpllfbclklost_out(NLW_JESD204_PHY_gt_gt4_cpllfbclklost_out_UNCONNECTED),
        .gt4_cplllock_out(NLW_JESD204_PHY_gt_gt4_cplllock_out_UNCONNECTED),
        .gt4_cplllockdetclk_in(1'b0),
        .gt4_cpllpd_in(1'b1),
        .gt4_cpllreset_in(1'b0),
        .gt4_data_valid_in(1'b1),
        .gt4_dmonitorout_out(NLW_JESD204_PHY_gt_gt4_dmonitorout_out_UNCONNECTED[7:0]),
        .gt4_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_drpclk_in(1'b0),
        .gt4_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_drpdo_out(NLW_JESD204_PHY_gt_gt4_drpdo_out_UNCONNECTED[15:0]),
        .gt4_drpen_in(1'b0),
        .gt4_drprdy_out(NLW_JESD204_PHY_gt_gt4_drprdy_out_UNCONNECTED),
        .gt4_drpwe_in(1'b0),
        .gt4_eyescandataerror_out(NLW_JESD204_PHY_gt_gt4_eyescandataerror_out_UNCONNECTED),
        .gt4_eyescanreset_in(1'b0),
        .gt4_eyescantrigger_in(1'b0),
        .gt4_gtnorthrefclk0_in(1'b0),
        .gt4_gtnorthrefclk1_in(1'b0),
        .gt4_gtrefclk0_in(1'b0),
        .gt4_gtrefclk1_in(1'b0),
        .gt4_gtrxreset_in(1'b0),
        .gt4_gtsouthrefclk0_in(1'b0),
        .gt4_gtsouthrefclk1_in(1'b0),
        .gt4_gttxreset_in(1'b0),
        .gt4_gtxrxn_in(rxn_in[4]),
        .gt4_gtxrxp_in(rxp_in[4]),
        .gt4_gtxtxn_out(txn_out[4]),
        .gt4_gtxtxp_out(txp_out[4]),
        .gt4_loopback_in({1'b0,1'b0,1'b0}),
        .gt4_rxbufreset_in(1'b0),
        .gt4_rxbufstatus_out(NLW_JESD204_PHY_gt_gt4_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt4_rxbyteisaligned_out(NLW_JESD204_PHY_gt_gt4_rxbyteisaligned_out_UNCONNECTED),
        .gt4_rxbyterealign_out(NLW_JESD204_PHY_gt_gt4_rxbyterealign_out_UNCONNECTED),
        .gt4_rxcdrhold_in(1'b0),
        .gt4_rxchariscomma_out(NLW_JESD204_PHY_gt_gt4_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt4_rxcharisk_out(gt4_rxcharisk),
        .gt4_rxcommadet_out(NLW_JESD204_PHY_gt_gt4_rxcommadet_out_UNCONNECTED),
        .gt4_rxdata_out(gt4_rxdata),
        .gt4_rxdfelpmreset_in(1'b0),
        .gt4_rxdisperr_out(gt4_rxdisperr),
        .gt4_rxlpmen_in(1'b1),
        .gt4_rxmcommaalignen_in(1'b0),
        .gt4_rxmonitorout_out(NLW_JESD204_PHY_gt_gt4_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt4_rxmonitorsel_in({1'b0,1'b0}),
        .gt4_rxnotintable_out(gt4_rxnotintable),
        .gt4_rxoutclk_out(NLW_JESD204_PHY_gt_gt4_rxoutclk_out_UNCONNECTED),
        .gt4_rxoutclkfabric_out(NLW_JESD204_PHY_gt_gt4_rxoutclkfabric_out_UNCONNECTED),
        .gt4_rxpcommaalignen_in(1'b0),
        .gt4_rxpcsreset_in(1'b0),
        .gt4_rxpd_in({1'b0,1'b0}),
        .gt4_rxpmareset_in(1'b0),
        .gt4_rxpolarity_in(1'b0),
        .gt4_rxprbscntreset_in(1'b0),
        .gt4_rxprbserr_out(NLW_JESD204_PHY_gt_gt4_rxprbserr_out_UNCONNECTED),
        .gt4_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt4_rxresetdone_out(JESD204_PHY_gt_n_513),
        .gt4_rxstatus_out(NLW_JESD204_PHY_gt_gt4_rxstatus_out_UNCONNECTED[2:0]),
        .gt4_rxsysclksel_in({1'b1,1'b1}),
        .gt4_rxuserrdy_in(1'b1),
        .gt4_rxusrclk2_in(1'b0),
        .gt4_rxusrclk_in(1'b0),
        .gt4_txbufstatus_out(NLW_JESD204_PHY_gt_gt4_txbufstatus_out_UNCONNECTED[1:0]),
        .gt4_txcharisk_in(gt4_txcharisk),
        .gt4_txdata_in(gt4_txdata),
        .gt4_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt4_txinhibit_in(1'b0),
        .gt4_txoutclk_out(NLW_JESD204_PHY_gt_gt4_txoutclk_out_UNCONNECTED),
        .gt4_txoutclkfabric_out(NLW_JESD204_PHY_gt_gt4_txoutclkfabric_out_UNCONNECTED),
        .gt4_txoutclkpcs_out(NLW_JESD204_PHY_gt_gt4_txoutclkpcs_out_UNCONNECTED),
        .gt4_txpcsreset_in(1'b0),
        .gt4_txpd_in({1'b0,1'b0}),
        .gt4_txpmareset_in(1'b0),
        .gt4_txpolarity_in(1'b0),
        .gt4_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_txprbsforceerr_in(1'b0),
        .gt4_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt4_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_txresetdone_out(JESD204_PHY_gt_n_521),
        .gt4_txsysclksel_in({1'b1,1'b1}),
        .gt4_txuserrdy_in(1'b1),
        .gt4_txusrclk2_in(1'b0),
        .gt4_txusrclk_in(1'b0),
        .gt5_cpllfbclklost_out(NLW_JESD204_PHY_gt_gt5_cpllfbclklost_out_UNCONNECTED),
        .gt5_cplllock_out(NLW_JESD204_PHY_gt_gt5_cplllock_out_UNCONNECTED),
        .gt5_cplllockdetclk_in(1'b0),
        .gt5_cpllpd_in(1'b1),
        .gt5_cpllreset_in(1'b0),
        .gt5_data_valid_in(1'b1),
        .gt5_dmonitorout_out(NLW_JESD204_PHY_gt_gt5_dmonitorout_out_UNCONNECTED[7:0]),
        .gt5_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_drpclk_in(1'b0),
        .gt5_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_drpdo_out(NLW_JESD204_PHY_gt_gt5_drpdo_out_UNCONNECTED[15:0]),
        .gt5_drpen_in(1'b0),
        .gt5_drprdy_out(NLW_JESD204_PHY_gt_gt5_drprdy_out_UNCONNECTED),
        .gt5_drpwe_in(1'b0),
        .gt5_eyescandataerror_out(NLW_JESD204_PHY_gt_gt5_eyescandataerror_out_UNCONNECTED),
        .gt5_eyescanreset_in(1'b0),
        .gt5_eyescantrigger_in(1'b0),
        .gt5_gtnorthrefclk0_in(1'b0),
        .gt5_gtnorthrefclk1_in(1'b0),
        .gt5_gtrefclk0_in(1'b0),
        .gt5_gtrefclk1_in(1'b0),
        .gt5_gtrxreset_in(1'b0),
        .gt5_gtsouthrefclk0_in(1'b0),
        .gt5_gtsouthrefclk1_in(1'b0),
        .gt5_gttxreset_in(1'b0),
        .gt5_gtxrxn_in(rxn_in[5]),
        .gt5_gtxrxp_in(rxp_in[5]),
        .gt5_gtxtxn_out(txn_out[5]),
        .gt5_gtxtxp_out(txp_out[5]),
        .gt5_loopback_in({1'b0,1'b0,1'b0}),
        .gt5_rxbufreset_in(1'b0),
        .gt5_rxbufstatus_out(NLW_JESD204_PHY_gt_gt5_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt5_rxbyteisaligned_out(NLW_JESD204_PHY_gt_gt5_rxbyteisaligned_out_UNCONNECTED),
        .gt5_rxbyterealign_out(NLW_JESD204_PHY_gt_gt5_rxbyterealign_out_UNCONNECTED),
        .gt5_rxcdrhold_in(1'b0),
        .gt5_rxchariscomma_out(NLW_JESD204_PHY_gt_gt5_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt5_rxcharisk_out(gt5_rxcharisk),
        .gt5_rxcommadet_out(NLW_JESD204_PHY_gt_gt5_rxcommadet_out_UNCONNECTED),
        .gt5_rxdata_out(gt5_rxdata),
        .gt5_rxdfelpmreset_in(1'b0),
        .gt5_rxdisperr_out(gt5_rxdisperr),
        .gt5_rxlpmen_in(1'b1),
        .gt5_rxmcommaalignen_in(1'b0),
        .gt5_rxmonitorout_out(NLW_JESD204_PHY_gt_gt5_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt5_rxmonitorsel_in({1'b0,1'b0}),
        .gt5_rxnotintable_out(gt5_rxnotintable),
        .gt5_rxoutclk_out(NLW_JESD204_PHY_gt_gt5_rxoutclk_out_UNCONNECTED),
        .gt5_rxoutclkfabric_out(NLW_JESD204_PHY_gt_gt5_rxoutclkfabric_out_UNCONNECTED),
        .gt5_rxpcommaalignen_in(1'b0),
        .gt5_rxpcsreset_in(1'b0),
        .gt5_rxpd_in({1'b0,1'b0}),
        .gt5_rxpmareset_in(1'b0),
        .gt5_rxpolarity_in(1'b0),
        .gt5_rxprbscntreset_in(1'b0),
        .gt5_rxprbserr_out(NLW_JESD204_PHY_gt_gt5_rxprbserr_out_UNCONNECTED),
        .gt5_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt5_rxresetdone_out(JESD204_PHY_gt_n_617),
        .gt5_rxstatus_out(NLW_JESD204_PHY_gt_gt5_rxstatus_out_UNCONNECTED[2:0]),
        .gt5_rxsysclksel_in({1'b1,1'b1}),
        .gt5_rxuserrdy_in(1'b1),
        .gt5_rxusrclk2_in(1'b0),
        .gt5_rxusrclk_in(1'b0),
        .gt5_txbufstatus_out(NLW_JESD204_PHY_gt_gt5_txbufstatus_out_UNCONNECTED[1:0]),
        .gt5_txcharisk_in(gt5_txcharisk),
        .gt5_txdata_in(gt5_txdata),
        .gt5_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt5_txinhibit_in(1'b0),
        .gt5_txoutclk_out(NLW_JESD204_PHY_gt_gt5_txoutclk_out_UNCONNECTED),
        .gt5_txoutclkfabric_out(NLW_JESD204_PHY_gt_gt5_txoutclkfabric_out_UNCONNECTED),
        .gt5_txoutclkpcs_out(NLW_JESD204_PHY_gt_gt5_txoutclkpcs_out_UNCONNECTED),
        .gt5_txpcsreset_in(1'b0),
        .gt5_txpd_in({1'b0,1'b0}),
        .gt5_txpmareset_in(1'b0),
        .gt5_txpolarity_in(1'b0),
        .gt5_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_txprbsforceerr_in(1'b0),
        .gt5_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt5_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_txresetdone_out(JESD204_PHY_gt_n_625),
        .gt5_txsysclksel_in({1'b1,1'b1}),
        .gt5_txuserrdy_in(1'b1),
        .gt5_txusrclk2_in(1'b0),
        .gt5_txusrclk_in(1'b0),
        .gt6_cpllfbclklost_out(NLW_JESD204_PHY_gt_gt6_cpllfbclklost_out_UNCONNECTED),
        .gt6_cplllock_out(NLW_JESD204_PHY_gt_gt6_cplllock_out_UNCONNECTED),
        .gt6_cplllockdetclk_in(1'b0),
        .gt6_cpllpd_in(1'b1),
        .gt6_cpllreset_in(1'b0),
        .gt6_data_valid_in(1'b1),
        .gt6_dmonitorout_out(NLW_JESD204_PHY_gt_gt6_dmonitorout_out_UNCONNECTED[7:0]),
        .gt6_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_drpclk_in(1'b0),
        .gt6_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_drpdo_out(NLW_JESD204_PHY_gt_gt6_drpdo_out_UNCONNECTED[15:0]),
        .gt6_drpen_in(1'b0),
        .gt6_drprdy_out(NLW_JESD204_PHY_gt_gt6_drprdy_out_UNCONNECTED),
        .gt6_drpwe_in(1'b0),
        .gt6_eyescandataerror_out(NLW_JESD204_PHY_gt_gt6_eyescandataerror_out_UNCONNECTED),
        .gt6_eyescanreset_in(1'b0),
        .gt6_eyescantrigger_in(1'b0),
        .gt6_gtnorthrefclk0_in(1'b0),
        .gt6_gtnorthrefclk1_in(1'b0),
        .gt6_gtrefclk0_in(1'b0),
        .gt6_gtrefclk1_in(1'b0),
        .gt6_gtrxreset_in(1'b0),
        .gt6_gtsouthrefclk0_in(1'b0),
        .gt6_gtsouthrefclk1_in(1'b0),
        .gt6_gttxreset_in(1'b0),
        .gt6_gtxrxn_in(rxn_in[6]),
        .gt6_gtxrxp_in(rxp_in[6]),
        .gt6_gtxtxn_out(txn_out[6]),
        .gt6_gtxtxp_out(txp_out[6]),
        .gt6_loopback_in({1'b0,1'b0,1'b0}),
        .gt6_rxbufreset_in(1'b0),
        .gt6_rxbufstatus_out(NLW_JESD204_PHY_gt_gt6_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt6_rxbyteisaligned_out(NLW_JESD204_PHY_gt_gt6_rxbyteisaligned_out_UNCONNECTED),
        .gt6_rxbyterealign_out(NLW_JESD204_PHY_gt_gt6_rxbyterealign_out_UNCONNECTED),
        .gt6_rxcdrhold_in(1'b0),
        .gt6_rxchariscomma_out(NLW_JESD204_PHY_gt_gt6_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt6_rxcharisk_out(gt6_rxcharisk),
        .gt6_rxcommadet_out(NLW_JESD204_PHY_gt_gt6_rxcommadet_out_UNCONNECTED),
        .gt6_rxdata_out(gt6_rxdata),
        .gt6_rxdfelpmreset_in(1'b0),
        .gt6_rxdisperr_out(gt6_rxdisperr),
        .gt6_rxlpmen_in(1'b1),
        .gt6_rxmcommaalignen_in(1'b0),
        .gt6_rxmonitorout_out(NLW_JESD204_PHY_gt_gt6_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt6_rxmonitorsel_in({1'b0,1'b0}),
        .gt6_rxnotintable_out(gt6_rxnotintable),
        .gt6_rxoutclk_out(NLW_JESD204_PHY_gt_gt6_rxoutclk_out_UNCONNECTED),
        .gt6_rxoutclkfabric_out(NLW_JESD204_PHY_gt_gt6_rxoutclkfabric_out_UNCONNECTED),
        .gt6_rxpcommaalignen_in(1'b0),
        .gt6_rxpcsreset_in(1'b0),
        .gt6_rxpd_in({1'b0,1'b0}),
        .gt6_rxpmareset_in(1'b0),
        .gt6_rxpolarity_in(1'b0),
        .gt6_rxprbscntreset_in(1'b0),
        .gt6_rxprbserr_out(NLW_JESD204_PHY_gt_gt6_rxprbserr_out_UNCONNECTED),
        .gt6_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt6_rxresetdone_out(JESD204_PHY_gt_n_721),
        .gt6_rxstatus_out(NLW_JESD204_PHY_gt_gt6_rxstatus_out_UNCONNECTED[2:0]),
        .gt6_rxsysclksel_in({1'b1,1'b1}),
        .gt6_rxuserrdy_in(1'b1),
        .gt6_rxusrclk2_in(1'b0),
        .gt6_rxusrclk_in(1'b0),
        .gt6_txbufstatus_out(NLW_JESD204_PHY_gt_gt6_txbufstatus_out_UNCONNECTED[1:0]),
        .gt6_txcharisk_in(gt6_txcharisk),
        .gt6_txdata_in(gt6_txdata),
        .gt6_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt6_txinhibit_in(1'b0),
        .gt6_txoutclk_out(NLW_JESD204_PHY_gt_gt6_txoutclk_out_UNCONNECTED),
        .gt6_txoutclkfabric_out(NLW_JESD204_PHY_gt_gt6_txoutclkfabric_out_UNCONNECTED),
        .gt6_txoutclkpcs_out(NLW_JESD204_PHY_gt_gt6_txoutclkpcs_out_UNCONNECTED),
        .gt6_txpcsreset_in(1'b0),
        .gt6_txpd_in({1'b0,1'b0}),
        .gt6_txpmareset_in(1'b0),
        .gt6_txpolarity_in(1'b0),
        .gt6_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_txprbsforceerr_in(1'b0),
        .gt6_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt6_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_txresetdone_out(JESD204_PHY_gt_n_729),
        .gt6_txsysclksel_in({1'b1,1'b1}),
        .gt6_txuserrdy_in(1'b1),
        .gt6_txusrclk2_in(1'b0),
        .gt6_txusrclk_in(1'b0),
        .gt7_cpllfbclklost_out(NLW_JESD204_PHY_gt_gt7_cpllfbclklost_out_UNCONNECTED),
        .gt7_cplllock_out(NLW_JESD204_PHY_gt_gt7_cplllock_out_UNCONNECTED),
        .gt7_cplllockdetclk_in(1'b0),
        .gt7_cpllpd_in(1'b1),
        .gt7_cpllreset_in(1'b0),
        .gt7_data_valid_in(1'b1),
        .gt7_dmonitorout_out(NLW_JESD204_PHY_gt_gt7_dmonitorout_out_UNCONNECTED[7:0]),
        .gt7_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_drpclk_in(1'b0),
        .gt7_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_drpdo_out(NLW_JESD204_PHY_gt_gt7_drpdo_out_UNCONNECTED[15:0]),
        .gt7_drpen_in(1'b0),
        .gt7_drprdy_out(NLW_JESD204_PHY_gt_gt7_drprdy_out_UNCONNECTED),
        .gt7_drpwe_in(1'b0),
        .gt7_eyescandataerror_out(NLW_JESD204_PHY_gt_gt7_eyescandataerror_out_UNCONNECTED),
        .gt7_eyescanreset_in(1'b0),
        .gt7_eyescantrigger_in(1'b0),
        .gt7_gtnorthrefclk0_in(1'b0),
        .gt7_gtnorthrefclk1_in(1'b0),
        .gt7_gtrefclk0_in(1'b0),
        .gt7_gtrefclk1_in(1'b0),
        .gt7_gtrxreset_in(1'b0),
        .gt7_gtsouthrefclk0_in(1'b0),
        .gt7_gtsouthrefclk1_in(1'b0),
        .gt7_gttxreset_in(1'b0),
        .gt7_gtxrxn_in(rxn_in[7]),
        .gt7_gtxrxp_in(rxp_in[7]),
        .gt7_gtxtxn_out(txn_out[7]),
        .gt7_gtxtxp_out(txp_out[7]),
        .gt7_loopback_in({1'b0,1'b0,1'b0}),
        .gt7_rxbufreset_in(1'b0),
        .gt7_rxbufstatus_out(NLW_JESD204_PHY_gt_gt7_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt7_rxbyteisaligned_out(NLW_JESD204_PHY_gt_gt7_rxbyteisaligned_out_UNCONNECTED),
        .gt7_rxbyterealign_out(NLW_JESD204_PHY_gt_gt7_rxbyterealign_out_UNCONNECTED),
        .gt7_rxcdrhold_in(1'b0),
        .gt7_rxchariscomma_out(NLW_JESD204_PHY_gt_gt7_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt7_rxcharisk_out(gt7_rxcharisk),
        .gt7_rxcommadet_out(NLW_JESD204_PHY_gt_gt7_rxcommadet_out_UNCONNECTED),
        .gt7_rxdata_out(gt7_rxdata),
        .gt7_rxdfelpmreset_in(1'b0),
        .gt7_rxdisperr_out(gt7_rxdisperr),
        .gt7_rxlpmen_in(1'b1),
        .gt7_rxmcommaalignen_in(1'b0),
        .gt7_rxmonitorout_out(NLW_JESD204_PHY_gt_gt7_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt7_rxmonitorsel_in({1'b0,1'b0}),
        .gt7_rxnotintable_out(gt7_rxnotintable),
        .gt7_rxoutclk_out(NLW_JESD204_PHY_gt_gt7_rxoutclk_out_UNCONNECTED),
        .gt7_rxoutclkfabric_out(NLW_JESD204_PHY_gt_gt7_rxoutclkfabric_out_UNCONNECTED),
        .gt7_rxpcommaalignen_in(1'b0),
        .gt7_rxpcsreset_in(1'b0),
        .gt7_rxpd_in({1'b0,1'b0}),
        .gt7_rxpmareset_in(1'b0),
        .gt7_rxpolarity_in(1'b0),
        .gt7_rxprbscntreset_in(1'b0),
        .gt7_rxprbserr_out(NLW_JESD204_PHY_gt_gt7_rxprbserr_out_UNCONNECTED),
        .gt7_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt7_rxresetdone_out(JESD204_PHY_gt_n_825),
        .gt7_rxstatus_out(NLW_JESD204_PHY_gt_gt7_rxstatus_out_UNCONNECTED[2:0]),
        .gt7_rxsysclksel_in({1'b1,1'b1}),
        .gt7_rxuserrdy_in(1'b1),
        .gt7_rxusrclk2_in(1'b0),
        .gt7_rxusrclk_in(1'b0),
        .gt7_txbufstatus_out(NLW_JESD204_PHY_gt_gt7_txbufstatus_out_UNCONNECTED[1:0]),
        .gt7_txcharisk_in(gt7_txcharisk),
        .gt7_txdata_in(gt7_txdata),
        .gt7_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt7_txinhibit_in(1'b0),
        .gt7_txoutclk_out(NLW_JESD204_PHY_gt_gt7_txoutclk_out_UNCONNECTED),
        .gt7_txoutclkfabric_out(NLW_JESD204_PHY_gt_gt7_txoutclkfabric_out_UNCONNECTED),
        .gt7_txoutclkpcs_out(NLW_JESD204_PHY_gt_gt7_txoutclkpcs_out_UNCONNECTED),
        .gt7_txpcsreset_in(1'b0),
        .gt7_txpd_in({1'b0,1'b0}),
        .gt7_txpmareset_in(1'b0),
        .gt7_txpolarity_in(1'b0),
        .gt7_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_txprbsforceerr_in(1'b0),
        .gt7_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt7_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_txresetdone_out(JESD204_PHY_gt_n_833),
        .gt7_txsysclksel_in({1'b1,1'b1}),
        .gt7_txuserrdy_in(1'b1),
        .gt7_txusrclk2_in(1'b0),
        .gt7_txusrclk_in(1'b0),
        .gt_rx_fsm_reset_done_out(gt_rxfsmdone),
        .gt_tx_fsm_reset_done_out(gt_txfsmdone),
        .soft_reset_rx_in(gt_rxreset),
        .soft_reset_tx_in(gt_txreset),
        .sysclk_in(drpclk));
  FDRE gt_rxreset_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(gt_rxreset0),
        .Q(gt_rxreset),
        .R(1'b0));
  FDRE gt_txreset_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(gt_txreset0),
        .Q(gt_txreset),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    qpll_reset_out_INST_0
       (.I0(common0_qpll_reset_i),
        .I1(common1_qpll_reset_i),
        .O(qpll_reset_out));
  LUT5 #(
    .INIT(32'h00008000)) 
    rx_chan_rst_done_r_i_1
       (.I0(JESD204_PHY_gt_n_721),
        .I1(JESD204_PHY_gt_n_617),
        .I2(JESD204_PHY_gt_n_97),
        .I3(JESD204_PHY_gt_n_825),
        .I4(rx_chan_rst_done_r_i_2_n_0),
        .O(rx_chan_rst_done));
  LUT4 #(
    .INIT(16'h7FFF)) 
    rx_chan_rst_done_r_i_2
       (.I0(JESD204_PHY_gt_n_409),
        .I1(JESD204_PHY_gt_n_513),
        .I2(JESD204_PHY_gt_n_201),
        .I3(JESD204_PHY_gt_n_305),
        .O(rx_chan_rst_done_r_i_2_n_0));
  FDRE rx_chan_rst_done_r_reg
       (.C(rx_core_clk),
        .CE(1'b1),
        .D(rx_chan_rst_done),
        .Q(rx_chan_rst_done_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    rx_pll_lock_i_i_1
       (.I0(common0_qpll_lock_in),
        .I1(common1_qpll_lock_in),
        .O(qplllock_i));
  FDRE rx_pll_lock_i_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(qplllock_i),
        .Q(rx_pll_lock_i_reg_n_0),
        .R(1'b0));
  FDRE rx_reset_done_r_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(rx_reset_done_r0),
        .Q(rx_reset_done),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__parameterized0 sync_rx_chan_rst_done
       (.O45(rx_chan_rst_done_r),
        .drpclk(drpclk),
        .gt_rx_fsm_reset_done_out(gt_rxfsmdone),
        .rx_reset_done_r0(rx_reset_done_r0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__parameterized0__xdcDup__2 sync_rx_pll_lock
       (.O46(rx_pll_lock_i_reg_n_0),
        .data_out(rx_rst_all_sync),
        .drpclk(drpclk),
        .gt_rx_fsm_reset_done_out(gt_rxfsmdone),
        .gt_rxreset0(gt_rxreset0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block sync_rx_reset_all
       (.data_out(rx_rst_all_sync),
        .drpclk(drpclk),
        .rx_sys_reset(rx_sys_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__xdcDup__2 sync_rx_reset_data
       (.data_out(rx_rst_gt_data_sync),
        .drpclk(drpclk),
        .rx_reset_gt(rx_reset_gt));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__parameterized0__xdcDup__3 sync_tx_chan_rst_done
       (.data_in(tx_chan_rst_done_r),
        .drpclk(drpclk),
        .gt_tx_fsm_reset_done_out(gt_txfsmdone),
        .tx_reset_done_r0(tx_reset_done_r0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__parameterized0__xdcDup__1 sync_tx_pll_lock
       (.O46(rx_pll_lock_i_reg_n_0),
        .data_out(tx_rst_all_sync),
        .drpclk(drpclk),
        .gt_tx_fsm_reset_done_out(gt_txfsmdone),
        .gt_txreset0(gt_txreset0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__xdcDup__3 sync_tx_reset_all
       (.data_out(tx_rst_all_sync),
        .drpclk(drpclk),
        .tx_sys_reset(tx_sys_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__xdcDup__1 sync_tx_reset_data
       (.data_out(tx_rst_gt_data_sync),
        .drpclk(drpclk),
        .tx_reset_gt(tx_reset_gt));
  LUT5 #(
    .INIT(32'h00008000)) 
    tx_chan_rst_done_r_i_1
       (.I0(JESD204_PHY_gt_n_729),
        .I1(JESD204_PHY_gt_n_625),
        .I2(JESD204_PHY_gt_n_105),
        .I3(JESD204_PHY_gt_n_833),
        .I4(tx_chan_rst_done_r_i_2_n_0),
        .O(tx_chan_rst_done));
  LUT4 #(
    .INIT(16'h7FFF)) 
    tx_chan_rst_done_r_i_2
       (.I0(JESD204_PHY_gt_n_417),
        .I1(JESD204_PHY_gt_n_521),
        .I2(JESD204_PHY_gt_n_209),
        .I3(JESD204_PHY_gt_n_313),
        .O(tx_chan_rst_done_r_i_2_n_0));
  FDRE tx_chan_rst_done_r_reg
       (.C(tx_core_clk),
        .CE(1'b1),
        .D(tx_chan_rst_done),
        .Q(tx_chan_rst_done_r),
        .R(1'b0));
  FDRE tx_reset_done_r_reg
       (.C(drpclk),
        .CE(1'b1),
        .D(tx_reset_done_r0),
        .Q(tx_reset_done),
        .R(1'b0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "JESD204_PHY_gt,gtwizard_v3_6_13,{protocol_file=JESD204}" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt
   (sysclk_in,
    soft_reset_tx_in,
    soft_reset_rx_in,
    dont_reset_on_data_error_in,
    gt_tx_fsm_reset_done_out,
    gt_rx_fsm_reset_done_out,
    gt0_data_valid_in,
    gt1_data_valid_in,
    gt2_data_valid_in,
    gt3_data_valid_in,
    gt4_data_valid_in,
    gt5_data_valid_in,
    gt6_data_valid_in,
    gt7_data_valid_in,
    gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_cplllockdetclk_in,
    gt0_cpllpd_in,
    gt0_cpllreset_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_drpaddr_in,
    gt0_drpclk_in,
    gt0_drpdi_in,
    gt0_drpdo_out,
    gt0_drpen_in,
    gt0_drprdy_out,
    gt0_drpwe_in,
    gt0_rxsysclksel_in,
    gt0_txsysclksel_in,
    gt0_dmonitorout_out,
    gt0_loopback_in,
    gt0_rxpd_in,
    gt0_txpd_in,
    gt0_eyescanreset_in,
    gt0_rxuserrdy_in,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_rxcdrhold_in,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_rxdata_out,
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
    gt0_rxprbscntreset_in,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt0_gtxrxp_in,
    gt0_gtxrxn_in,
    gt0_rxbufreset_in,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxmcommaalignen_in,
    gt0_rxpcommaalignen_in,
    gt0_rxdfelpmreset_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_gtrxreset_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxlpmen_in,
    gt0_rxpolarity_in,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gt0_rxresetdone_out,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_gttxreset_in,
    gt0_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_txprbsforceerr_in,
    gt0_txbufstatus_out,
    gt0_txdiffctrl_in,
    gt0_txinhibit_in,
    gt0_txdata_in,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txcharisk_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txresetdone_out,
    gt0_txpolarity_in,
    gt0_txprbssel_in,
    gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_cplllockdetclk_in,
    gt1_cpllpd_in,
    gt1_cpllreset_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_drpaddr_in,
    gt1_drpclk_in,
    gt1_drpdi_in,
    gt1_drpdo_out,
    gt1_drpen_in,
    gt1_drprdy_out,
    gt1_drpwe_in,
    gt1_rxsysclksel_in,
    gt1_txsysclksel_in,
    gt1_dmonitorout_out,
    gt1_loopback_in,
    gt1_rxpd_in,
    gt1_txpd_in,
    gt1_eyescanreset_in,
    gt1_rxuserrdy_in,
    gt1_eyescandataerror_out,
    gt1_eyescantrigger_in,
    gt1_rxcdrhold_in,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_rxdata_out,
    gt1_rxprbserr_out,
    gt1_rxprbssel_in,
    gt1_rxprbscntreset_in,
    gt1_rxdisperr_out,
    gt1_rxnotintable_out,
    gt1_gtxrxp_in,
    gt1_gtxrxn_in,
    gt1_rxbufreset_in,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_rxmcommaalignen_in,
    gt1_rxpcommaalignen_in,
    gt1_rxdfelpmreset_in,
    gt1_rxmonitorout_out,
    gt1_rxmonitorsel_in,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_gtrxreset_in,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxlpmen_in,
    gt1_rxpolarity_in,
    gt1_rxchariscomma_out,
    gt1_rxcharisk_out,
    gt1_rxresetdone_out,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_gttxreset_in,
    gt1_txuserrdy_in,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_txprbsforceerr_in,
    gt1_txbufstatus_out,
    gt1_txdiffctrl_in,
    gt1_txinhibit_in,
    gt1_txdata_in,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txcharisk_in,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txresetdone_out,
    gt1_txpolarity_in,
    gt1_txprbssel_in,
    gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_cplllockdetclk_in,
    gt2_cpllpd_in,
    gt2_cpllreset_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_drpaddr_in,
    gt2_drpclk_in,
    gt2_drpdi_in,
    gt2_drpdo_out,
    gt2_drpen_in,
    gt2_drprdy_out,
    gt2_drpwe_in,
    gt2_rxsysclksel_in,
    gt2_txsysclksel_in,
    gt2_dmonitorout_out,
    gt2_loopback_in,
    gt2_rxpd_in,
    gt2_txpd_in,
    gt2_eyescanreset_in,
    gt2_rxuserrdy_in,
    gt2_eyescandataerror_out,
    gt2_eyescantrigger_in,
    gt2_rxcdrhold_in,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_rxdata_out,
    gt2_rxprbserr_out,
    gt2_rxprbssel_in,
    gt2_rxprbscntreset_in,
    gt2_rxdisperr_out,
    gt2_rxnotintable_out,
    gt2_gtxrxp_in,
    gt2_gtxrxn_in,
    gt2_rxbufreset_in,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_rxmcommaalignen_in,
    gt2_rxpcommaalignen_in,
    gt2_rxdfelpmreset_in,
    gt2_rxmonitorout_out,
    gt2_rxmonitorsel_in,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_gtrxreset_in,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxlpmen_in,
    gt2_rxpolarity_in,
    gt2_rxchariscomma_out,
    gt2_rxcharisk_out,
    gt2_rxresetdone_out,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_gttxreset_in,
    gt2_txuserrdy_in,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_txprbsforceerr_in,
    gt2_txbufstatus_out,
    gt2_txdiffctrl_in,
    gt2_txinhibit_in,
    gt2_txdata_in,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txcharisk_in,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txresetdone_out,
    gt2_txpolarity_in,
    gt2_txprbssel_in,
    gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_cplllockdetclk_in,
    gt3_cpllpd_in,
    gt3_cpllreset_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_drpaddr_in,
    gt3_drpclk_in,
    gt3_drpdi_in,
    gt3_drpdo_out,
    gt3_drpen_in,
    gt3_drprdy_out,
    gt3_drpwe_in,
    gt3_rxsysclksel_in,
    gt3_txsysclksel_in,
    gt3_dmonitorout_out,
    gt3_loopback_in,
    gt3_rxpd_in,
    gt3_txpd_in,
    gt3_eyescanreset_in,
    gt3_rxuserrdy_in,
    gt3_eyescandataerror_out,
    gt3_eyescantrigger_in,
    gt3_rxcdrhold_in,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_rxdata_out,
    gt3_rxprbserr_out,
    gt3_rxprbssel_in,
    gt3_rxprbscntreset_in,
    gt3_rxdisperr_out,
    gt3_rxnotintable_out,
    gt3_gtxrxp_in,
    gt3_gtxrxn_in,
    gt3_rxbufreset_in,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_rxmcommaalignen_in,
    gt3_rxpcommaalignen_in,
    gt3_rxdfelpmreset_in,
    gt3_rxmonitorout_out,
    gt3_rxmonitorsel_in,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_gtrxreset_in,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxlpmen_in,
    gt3_rxpolarity_in,
    gt3_rxchariscomma_out,
    gt3_rxcharisk_out,
    gt3_rxresetdone_out,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_gttxreset_in,
    gt3_txuserrdy_in,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_txprbsforceerr_in,
    gt3_txbufstatus_out,
    gt3_txdiffctrl_in,
    gt3_txinhibit_in,
    gt3_txdata_in,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txcharisk_in,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txresetdone_out,
    gt3_txpolarity_in,
    gt3_txprbssel_in,
    gt4_cpllfbclklost_out,
    gt4_cplllock_out,
    gt4_cplllockdetclk_in,
    gt4_cpllpd_in,
    gt4_cpllreset_in,
    gt4_gtnorthrefclk0_in,
    gt4_gtnorthrefclk1_in,
    gt4_gtrefclk0_in,
    gt4_gtrefclk1_in,
    gt4_gtsouthrefclk0_in,
    gt4_gtsouthrefclk1_in,
    gt4_drpaddr_in,
    gt4_drpclk_in,
    gt4_drpdi_in,
    gt4_drpdo_out,
    gt4_drpen_in,
    gt4_drprdy_out,
    gt4_drpwe_in,
    gt4_rxsysclksel_in,
    gt4_txsysclksel_in,
    gt4_dmonitorout_out,
    gt4_loopback_in,
    gt4_rxpd_in,
    gt4_txpd_in,
    gt4_eyescanreset_in,
    gt4_rxuserrdy_in,
    gt4_eyescandataerror_out,
    gt4_eyescantrigger_in,
    gt4_rxcdrhold_in,
    gt4_rxusrclk_in,
    gt4_rxusrclk2_in,
    gt4_rxdata_out,
    gt4_rxprbserr_out,
    gt4_rxprbssel_in,
    gt4_rxprbscntreset_in,
    gt4_rxdisperr_out,
    gt4_rxnotintable_out,
    gt4_gtxrxp_in,
    gt4_gtxrxn_in,
    gt4_rxbufreset_in,
    gt4_rxbufstatus_out,
    gt4_rxstatus_out,
    gt4_rxbyteisaligned_out,
    gt4_rxbyterealign_out,
    gt4_rxcommadet_out,
    gt4_rxmcommaalignen_in,
    gt4_rxpcommaalignen_in,
    gt4_rxdfelpmreset_in,
    gt4_rxmonitorout_out,
    gt4_rxmonitorsel_in,
    gt4_rxoutclk_out,
    gt4_rxoutclkfabric_out,
    gt4_gtrxreset_in,
    gt4_rxpcsreset_in,
    gt4_rxpmareset_in,
    gt4_rxlpmen_in,
    gt4_rxpolarity_in,
    gt4_rxchariscomma_out,
    gt4_rxcharisk_out,
    gt4_rxresetdone_out,
    gt4_txpostcursor_in,
    gt4_txprecursor_in,
    gt4_gttxreset_in,
    gt4_txuserrdy_in,
    gt4_txusrclk_in,
    gt4_txusrclk2_in,
    gt4_txprbsforceerr_in,
    gt4_txbufstatus_out,
    gt4_txdiffctrl_in,
    gt4_txinhibit_in,
    gt4_txdata_in,
    gt4_gtxtxn_out,
    gt4_gtxtxp_out,
    gt4_txoutclk_out,
    gt4_txoutclkfabric_out,
    gt4_txoutclkpcs_out,
    gt4_txcharisk_in,
    gt4_txpcsreset_in,
    gt4_txpmareset_in,
    gt4_txresetdone_out,
    gt4_txpolarity_in,
    gt4_txprbssel_in,
    gt5_cpllfbclklost_out,
    gt5_cplllock_out,
    gt5_cplllockdetclk_in,
    gt5_cpllpd_in,
    gt5_cpllreset_in,
    gt5_gtnorthrefclk0_in,
    gt5_gtnorthrefclk1_in,
    gt5_gtrefclk0_in,
    gt5_gtrefclk1_in,
    gt5_gtsouthrefclk0_in,
    gt5_gtsouthrefclk1_in,
    gt5_drpaddr_in,
    gt5_drpclk_in,
    gt5_drpdi_in,
    gt5_drpdo_out,
    gt5_drpen_in,
    gt5_drprdy_out,
    gt5_drpwe_in,
    gt5_rxsysclksel_in,
    gt5_txsysclksel_in,
    gt5_dmonitorout_out,
    gt5_loopback_in,
    gt5_rxpd_in,
    gt5_txpd_in,
    gt5_eyescanreset_in,
    gt5_rxuserrdy_in,
    gt5_eyescandataerror_out,
    gt5_eyescantrigger_in,
    gt5_rxcdrhold_in,
    gt5_rxusrclk_in,
    gt5_rxusrclk2_in,
    gt5_rxdata_out,
    gt5_rxprbserr_out,
    gt5_rxprbssel_in,
    gt5_rxprbscntreset_in,
    gt5_rxdisperr_out,
    gt5_rxnotintable_out,
    gt5_gtxrxp_in,
    gt5_gtxrxn_in,
    gt5_rxbufreset_in,
    gt5_rxbufstatus_out,
    gt5_rxstatus_out,
    gt5_rxbyteisaligned_out,
    gt5_rxbyterealign_out,
    gt5_rxcommadet_out,
    gt5_rxmcommaalignen_in,
    gt5_rxpcommaalignen_in,
    gt5_rxdfelpmreset_in,
    gt5_rxmonitorout_out,
    gt5_rxmonitorsel_in,
    gt5_rxoutclk_out,
    gt5_rxoutclkfabric_out,
    gt5_gtrxreset_in,
    gt5_rxpcsreset_in,
    gt5_rxpmareset_in,
    gt5_rxlpmen_in,
    gt5_rxpolarity_in,
    gt5_rxchariscomma_out,
    gt5_rxcharisk_out,
    gt5_rxresetdone_out,
    gt5_txpostcursor_in,
    gt5_txprecursor_in,
    gt5_gttxreset_in,
    gt5_txuserrdy_in,
    gt5_txusrclk_in,
    gt5_txusrclk2_in,
    gt5_txprbsforceerr_in,
    gt5_txbufstatus_out,
    gt5_txdiffctrl_in,
    gt5_txinhibit_in,
    gt5_txdata_in,
    gt5_gtxtxn_out,
    gt5_gtxtxp_out,
    gt5_txoutclk_out,
    gt5_txoutclkfabric_out,
    gt5_txoutclkpcs_out,
    gt5_txcharisk_in,
    gt5_txpcsreset_in,
    gt5_txpmareset_in,
    gt5_txresetdone_out,
    gt5_txpolarity_in,
    gt5_txprbssel_in,
    gt6_cpllfbclklost_out,
    gt6_cplllock_out,
    gt6_cplllockdetclk_in,
    gt6_cpllpd_in,
    gt6_cpllreset_in,
    gt6_gtnorthrefclk0_in,
    gt6_gtnorthrefclk1_in,
    gt6_gtrefclk0_in,
    gt6_gtrefclk1_in,
    gt6_gtsouthrefclk0_in,
    gt6_gtsouthrefclk1_in,
    gt6_drpaddr_in,
    gt6_drpclk_in,
    gt6_drpdi_in,
    gt6_drpdo_out,
    gt6_drpen_in,
    gt6_drprdy_out,
    gt6_drpwe_in,
    gt6_rxsysclksel_in,
    gt6_txsysclksel_in,
    gt6_dmonitorout_out,
    gt6_loopback_in,
    gt6_rxpd_in,
    gt6_txpd_in,
    gt6_eyescanreset_in,
    gt6_rxuserrdy_in,
    gt6_eyescandataerror_out,
    gt6_eyescantrigger_in,
    gt6_rxcdrhold_in,
    gt6_rxusrclk_in,
    gt6_rxusrclk2_in,
    gt6_rxdata_out,
    gt6_rxprbserr_out,
    gt6_rxprbssel_in,
    gt6_rxprbscntreset_in,
    gt6_rxdisperr_out,
    gt6_rxnotintable_out,
    gt6_gtxrxp_in,
    gt6_gtxrxn_in,
    gt6_rxbufreset_in,
    gt6_rxbufstatus_out,
    gt6_rxstatus_out,
    gt6_rxbyteisaligned_out,
    gt6_rxbyterealign_out,
    gt6_rxcommadet_out,
    gt6_rxmcommaalignen_in,
    gt6_rxpcommaalignen_in,
    gt6_rxdfelpmreset_in,
    gt6_rxmonitorout_out,
    gt6_rxmonitorsel_in,
    gt6_rxoutclk_out,
    gt6_rxoutclkfabric_out,
    gt6_gtrxreset_in,
    gt6_rxpcsreset_in,
    gt6_rxpmareset_in,
    gt6_rxlpmen_in,
    gt6_rxpolarity_in,
    gt6_rxchariscomma_out,
    gt6_rxcharisk_out,
    gt6_rxresetdone_out,
    gt6_txpostcursor_in,
    gt6_txprecursor_in,
    gt6_gttxreset_in,
    gt6_txuserrdy_in,
    gt6_txusrclk_in,
    gt6_txusrclk2_in,
    gt6_txprbsforceerr_in,
    gt6_txbufstatus_out,
    gt6_txdiffctrl_in,
    gt6_txinhibit_in,
    gt6_txdata_in,
    gt6_gtxtxn_out,
    gt6_gtxtxp_out,
    gt6_txoutclk_out,
    gt6_txoutclkfabric_out,
    gt6_txoutclkpcs_out,
    gt6_txcharisk_in,
    gt6_txpcsreset_in,
    gt6_txpmareset_in,
    gt6_txresetdone_out,
    gt6_txpolarity_in,
    gt6_txprbssel_in,
    gt7_cpllfbclklost_out,
    gt7_cplllock_out,
    gt7_cplllockdetclk_in,
    gt7_cpllpd_in,
    gt7_cpllreset_in,
    gt7_gtnorthrefclk0_in,
    gt7_gtnorthrefclk1_in,
    gt7_gtrefclk0_in,
    gt7_gtrefclk1_in,
    gt7_gtsouthrefclk0_in,
    gt7_gtsouthrefclk1_in,
    gt7_drpaddr_in,
    gt7_drpclk_in,
    gt7_drpdi_in,
    gt7_drpdo_out,
    gt7_drpen_in,
    gt7_drprdy_out,
    gt7_drpwe_in,
    gt7_rxsysclksel_in,
    gt7_txsysclksel_in,
    gt7_dmonitorout_out,
    gt7_loopback_in,
    gt7_rxpd_in,
    gt7_txpd_in,
    gt7_eyescanreset_in,
    gt7_rxuserrdy_in,
    gt7_eyescandataerror_out,
    gt7_eyescantrigger_in,
    gt7_rxcdrhold_in,
    gt7_rxusrclk_in,
    gt7_rxusrclk2_in,
    gt7_rxdata_out,
    gt7_rxprbserr_out,
    gt7_rxprbssel_in,
    gt7_rxprbscntreset_in,
    gt7_rxdisperr_out,
    gt7_rxnotintable_out,
    gt7_gtxrxp_in,
    gt7_gtxrxn_in,
    gt7_rxbufreset_in,
    gt7_rxbufstatus_out,
    gt7_rxstatus_out,
    gt7_rxbyteisaligned_out,
    gt7_rxbyterealign_out,
    gt7_rxcommadet_out,
    gt7_rxmcommaalignen_in,
    gt7_rxpcommaalignen_in,
    gt7_rxdfelpmreset_in,
    gt7_rxmonitorout_out,
    gt7_rxmonitorsel_in,
    gt7_rxoutclk_out,
    gt7_rxoutclkfabric_out,
    gt7_gtrxreset_in,
    gt7_rxpcsreset_in,
    gt7_rxpmareset_in,
    gt7_rxlpmen_in,
    gt7_rxpolarity_in,
    gt7_rxchariscomma_out,
    gt7_rxcharisk_out,
    gt7_rxresetdone_out,
    gt7_txpostcursor_in,
    gt7_txprecursor_in,
    gt7_gttxreset_in,
    gt7_txuserrdy_in,
    gt7_txusrclk_in,
    gt7_txusrclk2_in,
    gt7_txprbsforceerr_in,
    gt7_txbufstatus_out,
    gt7_txdiffctrl_in,
    gt7_txinhibit_in,
    gt7_txdata_in,
    gt7_gtxtxn_out,
    gt7_gtxtxp_out,
    gt7_txoutclk_out,
    gt7_txoutclkfabric_out,
    gt7_txoutclkpcs_out,
    gt7_txcharisk_in,
    gt7_txpcsreset_in,
    gt7_txpmareset_in,
    gt7_txresetdone_out,
    gt7_txpolarity_in,
    gt7_txprbssel_in,
    gt0_qplllock_in,
    gt0_qpllrefclklost_in,
    gt0_qpllreset_out,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt1_qplllock_in,
    gt1_qpllrefclklost_in,
    gt1_qpllreset_out,
    gt1_qplloutclk_in,
    gt1_qplloutrefclk_in);
  input sysclk_in;
  input soft_reset_tx_in;
  input soft_reset_rx_in;
  input dont_reset_on_data_error_in;
  output gt_tx_fsm_reset_done_out;
  output gt_rx_fsm_reset_done_out;
  input gt0_data_valid_in;
  input gt1_data_valid_in;
  input gt2_data_valid_in;
  input gt3_data_valid_in;
  input gt4_data_valid_in;
  input gt5_data_valid_in;
  input gt6_data_valid_in;
  input gt7_data_valid_in;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllpd_in;
  input gt0_cpllreset_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  input [1:0]gt0_rxsysclksel_in;
  input [1:0]gt0_txsysclksel_in;
  output [7:0]gt0_dmonitorout_out;
  input [2:0]gt0_loopback_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_txpd_in;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxcdrhold_in;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  output [31:0]gt0_rxdata_out;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  input gt0_gtxrxp_in;
  input gt0_gtxrxn_in;
  input gt0_rxbufreset_in;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcommaalignen_in;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxlpmen_in;
  input gt0_rxpolarity_in;
  output [3:0]gt0_rxchariscomma_out;
  output [3:0]gt0_rxcharisk_out;
  output gt0_rxresetdone_out;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input gt0_gttxreset_in;
  input gt0_txuserrdy_in;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input gt0_txprbsforceerr_in;
  output [1:0]gt0_txbufstatus_out;
  input [3:0]gt0_txdiffctrl_in;
  input gt0_txinhibit_in;
  input [31:0]gt0_txdata_in;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  input [3:0]gt0_txcharisk_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  output gt0_txresetdone_out;
  input gt0_txpolarity_in;
  input [2:0]gt0_txprbssel_in;
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  input gt1_cplllockdetclk_in;
  input gt1_cpllpd_in;
  input gt1_cpllreset_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input [8:0]gt1_drpaddr_in;
  input gt1_drpclk_in;
  input [15:0]gt1_drpdi_in;
  output [15:0]gt1_drpdo_out;
  input gt1_drpen_in;
  output gt1_drprdy_out;
  input gt1_drpwe_in;
  input [1:0]gt1_rxsysclksel_in;
  input [1:0]gt1_txsysclksel_in;
  output [7:0]gt1_dmonitorout_out;
  input [2:0]gt1_loopback_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_txpd_in;
  input gt1_eyescanreset_in;
  input gt1_rxuserrdy_in;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_rxcdrhold_in;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  output [31:0]gt1_rxdata_out;
  output gt1_rxprbserr_out;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  input gt1_gtxrxp_in;
  input gt1_gtxrxn_in;
  input gt1_rxbufreset_in;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  input gt1_rxmcommaalignen_in;
  input gt1_rxpcommaalignen_in;
  input gt1_rxdfelpmreset_in;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  input gt1_gtrxreset_in;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxlpmen_in;
  input gt1_rxpolarity_in;
  output [3:0]gt1_rxchariscomma_out;
  output [3:0]gt1_rxcharisk_out;
  output gt1_rxresetdone_out;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input gt1_gttxreset_in;
  input gt1_txuserrdy_in;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input gt1_txprbsforceerr_in;
  output [1:0]gt1_txbufstatus_out;
  input [3:0]gt1_txdiffctrl_in;
  input gt1_txinhibit_in;
  input [31:0]gt1_txdata_in;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  input [3:0]gt1_txcharisk_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  output gt1_txresetdone_out;
  input gt1_txpolarity_in;
  input [2:0]gt1_txprbssel_in;
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  input gt2_cplllockdetclk_in;
  input gt2_cpllpd_in;
  input gt2_cpllreset_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input [8:0]gt2_drpaddr_in;
  input gt2_drpclk_in;
  input [15:0]gt2_drpdi_in;
  output [15:0]gt2_drpdo_out;
  input gt2_drpen_in;
  output gt2_drprdy_out;
  input gt2_drpwe_in;
  input [1:0]gt2_rxsysclksel_in;
  input [1:0]gt2_txsysclksel_in;
  output [7:0]gt2_dmonitorout_out;
  input [2:0]gt2_loopback_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_txpd_in;
  input gt2_eyescanreset_in;
  input gt2_rxuserrdy_in;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_rxcdrhold_in;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  output [31:0]gt2_rxdata_out;
  output gt2_rxprbserr_out;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  input gt2_gtxrxp_in;
  input gt2_gtxrxn_in;
  input gt2_rxbufreset_in;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  input gt2_rxmcommaalignen_in;
  input gt2_rxpcommaalignen_in;
  input gt2_rxdfelpmreset_in;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  input gt2_gtrxreset_in;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxlpmen_in;
  input gt2_rxpolarity_in;
  output [3:0]gt2_rxchariscomma_out;
  output [3:0]gt2_rxcharisk_out;
  output gt2_rxresetdone_out;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input gt2_gttxreset_in;
  input gt2_txuserrdy_in;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input gt2_txprbsforceerr_in;
  output [1:0]gt2_txbufstatus_out;
  input [3:0]gt2_txdiffctrl_in;
  input gt2_txinhibit_in;
  input [31:0]gt2_txdata_in;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  input [3:0]gt2_txcharisk_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  output gt2_txresetdone_out;
  input gt2_txpolarity_in;
  input [2:0]gt2_txprbssel_in;
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  input gt3_cplllockdetclk_in;
  input gt3_cpllpd_in;
  input gt3_cpllreset_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input [8:0]gt3_drpaddr_in;
  input gt3_drpclk_in;
  input [15:0]gt3_drpdi_in;
  output [15:0]gt3_drpdo_out;
  input gt3_drpen_in;
  output gt3_drprdy_out;
  input gt3_drpwe_in;
  input [1:0]gt3_rxsysclksel_in;
  input [1:0]gt3_txsysclksel_in;
  output [7:0]gt3_dmonitorout_out;
  input [2:0]gt3_loopback_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_txpd_in;
  input gt3_eyescanreset_in;
  input gt3_rxuserrdy_in;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_rxcdrhold_in;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  output [31:0]gt3_rxdata_out;
  output gt3_rxprbserr_out;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  input gt3_gtxrxp_in;
  input gt3_gtxrxn_in;
  input gt3_rxbufreset_in;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  input gt3_rxmcommaalignen_in;
  input gt3_rxpcommaalignen_in;
  input gt3_rxdfelpmreset_in;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  input gt3_gtrxreset_in;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxlpmen_in;
  input gt3_rxpolarity_in;
  output [3:0]gt3_rxchariscomma_out;
  output [3:0]gt3_rxcharisk_out;
  output gt3_rxresetdone_out;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input gt3_gttxreset_in;
  input gt3_txuserrdy_in;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input gt3_txprbsforceerr_in;
  output [1:0]gt3_txbufstatus_out;
  input [3:0]gt3_txdiffctrl_in;
  input gt3_txinhibit_in;
  input [31:0]gt3_txdata_in;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  input [3:0]gt3_txcharisk_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  output gt3_txresetdone_out;
  input gt3_txpolarity_in;
  input [2:0]gt3_txprbssel_in;
  output gt4_cpllfbclklost_out;
  output gt4_cplllock_out;
  input gt4_cplllockdetclk_in;
  input gt4_cpllpd_in;
  input gt4_cpllreset_in;
  input gt4_gtnorthrefclk0_in;
  input gt4_gtnorthrefclk1_in;
  input gt4_gtrefclk0_in;
  input gt4_gtrefclk1_in;
  input gt4_gtsouthrefclk0_in;
  input gt4_gtsouthrefclk1_in;
  input [8:0]gt4_drpaddr_in;
  input gt4_drpclk_in;
  input [15:0]gt4_drpdi_in;
  output [15:0]gt4_drpdo_out;
  input gt4_drpen_in;
  output gt4_drprdy_out;
  input gt4_drpwe_in;
  input [1:0]gt4_rxsysclksel_in;
  input [1:0]gt4_txsysclksel_in;
  output [7:0]gt4_dmonitorout_out;
  input [2:0]gt4_loopback_in;
  input [1:0]gt4_rxpd_in;
  input [1:0]gt4_txpd_in;
  input gt4_eyescanreset_in;
  input gt4_rxuserrdy_in;
  output gt4_eyescandataerror_out;
  input gt4_eyescantrigger_in;
  input gt4_rxcdrhold_in;
  input gt4_rxusrclk_in;
  input gt4_rxusrclk2_in;
  output [31:0]gt4_rxdata_out;
  output gt4_rxprbserr_out;
  input [2:0]gt4_rxprbssel_in;
  input gt4_rxprbscntreset_in;
  output [3:0]gt4_rxdisperr_out;
  output [3:0]gt4_rxnotintable_out;
  input gt4_gtxrxp_in;
  input gt4_gtxrxn_in;
  input gt4_rxbufreset_in;
  output [2:0]gt4_rxbufstatus_out;
  output [2:0]gt4_rxstatus_out;
  output gt4_rxbyteisaligned_out;
  output gt4_rxbyterealign_out;
  output gt4_rxcommadet_out;
  input gt4_rxmcommaalignen_in;
  input gt4_rxpcommaalignen_in;
  input gt4_rxdfelpmreset_in;
  output [6:0]gt4_rxmonitorout_out;
  input [1:0]gt4_rxmonitorsel_in;
  output gt4_rxoutclk_out;
  output gt4_rxoutclkfabric_out;
  input gt4_gtrxreset_in;
  input gt4_rxpcsreset_in;
  input gt4_rxpmareset_in;
  input gt4_rxlpmen_in;
  input gt4_rxpolarity_in;
  output [3:0]gt4_rxchariscomma_out;
  output [3:0]gt4_rxcharisk_out;
  output gt4_rxresetdone_out;
  input [4:0]gt4_txpostcursor_in;
  input [4:0]gt4_txprecursor_in;
  input gt4_gttxreset_in;
  input gt4_txuserrdy_in;
  input gt4_txusrclk_in;
  input gt4_txusrclk2_in;
  input gt4_txprbsforceerr_in;
  output [1:0]gt4_txbufstatus_out;
  input [3:0]gt4_txdiffctrl_in;
  input gt4_txinhibit_in;
  input [31:0]gt4_txdata_in;
  output gt4_gtxtxn_out;
  output gt4_gtxtxp_out;
  output gt4_txoutclk_out;
  output gt4_txoutclkfabric_out;
  output gt4_txoutclkpcs_out;
  input [3:0]gt4_txcharisk_in;
  input gt4_txpcsreset_in;
  input gt4_txpmareset_in;
  output gt4_txresetdone_out;
  input gt4_txpolarity_in;
  input [2:0]gt4_txprbssel_in;
  output gt5_cpllfbclklost_out;
  output gt5_cplllock_out;
  input gt5_cplllockdetclk_in;
  input gt5_cpllpd_in;
  input gt5_cpllreset_in;
  input gt5_gtnorthrefclk0_in;
  input gt5_gtnorthrefclk1_in;
  input gt5_gtrefclk0_in;
  input gt5_gtrefclk1_in;
  input gt5_gtsouthrefclk0_in;
  input gt5_gtsouthrefclk1_in;
  input [8:0]gt5_drpaddr_in;
  input gt5_drpclk_in;
  input [15:0]gt5_drpdi_in;
  output [15:0]gt5_drpdo_out;
  input gt5_drpen_in;
  output gt5_drprdy_out;
  input gt5_drpwe_in;
  input [1:0]gt5_rxsysclksel_in;
  input [1:0]gt5_txsysclksel_in;
  output [7:0]gt5_dmonitorout_out;
  input [2:0]gt5_loopback_in;
  input [1:0]gt5_rxpd_in;
  input [1:0]gt5_txpd_in;
  input gt5_eyescanreset_in;
  input gt5_rxuserrdy_in;
  output gt5_eyescandataerror_out;
  input gt5_eyescantrigger_in;
  input gt5_rxcdrhold_in;
  input gt5_rxusrclk_in;
  input gt5_rxusrclk2_in;
  output [31:0]gt5_rxdata_out;
  output gt5_rxprbserr_out;
  input [2:0]gt5_rxprbssel_in;
  input gt5_rxprbscntreset_in;
  output [3:0]gt5_rxdisperr_out;
  output [3:0]gt5_rxnotintable_out;
  input gt5_gtxrxp_in;
  input gt5_gtxrxn_in;
  input gt5_rxbufreset_in;
  output [2:0]gt5_rxbufstatus_out;
  output [2:0]gt5_rxstatus_out;
  output gt5_rxbyteisaligned_out;
  output gt5_rxbyterealign_out;
  output gt5_rxcommadet_out;
  input gt5_rxmcommaalignen_in;
  input gt5_rxpcommaalignen_in;
  input gt5_rxdfelpmreset_in;
  output [6:0]gt5_rxmonitorout_out;
  input [1:0]gt5_rxmonitorsel_in;
  output gt5_rxoutclk_out;
  output gt5_rxoutclkfabric_out;
  input gt5_gtrxreset_in;
  input gt5_rxpcsreset_in;
  input gt5_rxpmareset_in;
  input gt5_rxlpmen_in;
  input gt5_rxpolarity_in;
  output [3:0]gt5_rxchariscomma_out;
  output [3:0]gt5_rxcharisk_out;
  output gt5_rxresetdone_out;
  input [4:0]gt5_txpostcursor_in;
  input [4:0]gt5_txprecursor_in;
  input gt5_gttxreset_in;
  input gt5_txuserrdy_in;
  input gt5_txusrclk_in;
  input gt5_txusrclk2_in;
  input gt5_txprbsforceerr_in;
  output [1:0]gt5_txbufstatus_out;
  input [3:0]gt5_txdiffctrl_in;
  input gt5_txinhibit_in;
  input [31:0]gt5_txdata_in;
  output gt5_gtxtxn_out;
  output gt5_gtxtxp_out;
  output gt5_txoutclk_out;
  output gt5_txoutclkfabric_out;
  output gt5_txoutclkpcs_out;
  input [3:0]gt5_txcharisk_in;
  input gt5_txpcsreset_in;
  input gt5_txpmareset_in;
  output gt5_txresetdone_out;
  input gt5_txpolarity_in;
  input [2:0]gt5_txprbssel_in;
  output gt6_cpllfbclklost_out;
  output gt6_cplllock_out;
  input gt6_cplllockdetclk_in;
  input gt6_cpllpd_in;
  input gt6_cpllreset_in;
  input gt6_gtnorthrefclk0_in;
  input gt6_gtnorthrefclk1_in;
  input gt6_gtrefclk0_in;
  input gt6_gtrefclk1_in;
  input gt6_gtsouthrefclk0_in;
  input gt6_gtsouthrefclk1_in;
  input [8:0]gt6_drpaddr_in;
  input gt6_drpclk_in;
  input [15:0]gt6_drpdi_in;
  output [15:0]gt6_drpdo_out;
  input gt6_drpen_in;
  output gt6_drprdy_out;
  input gt6_drpwe_in;
  input [1:0]gt6_rxsysclksel_in;
  input [1:0]gt6_txsysclksel_in;
  output [7:0]gt6_dmonitorout_out;
  input [2:0]gt6_loopback_in;
  input [1:0]gt6_rxpd_in;
  input [1:0]gt6_txpd_in;
  input gt6_eyescanreset_in;
  input gt6_rxuserrdy_in;
  output gt6_eyescandataerror_out;
  input gt6_eyescantrigger_in;
  input gt6_rxcdrhold_in;
  input gt6_rxusrclk_in;
  input gt6_rxusrclk2_in;
  output [31:0]gt6_rxdata_out;
  output gt6_rxprbserr_out;
  input [2:0]gt6_rxprbssel_in;
  input gt6_rxprbscntreset_in;
  output [3:0]gt6_rxdisperr_out;
  output [3:0]gt6_rxnotintable_out;
  input gt6_gtxrxp_in;
  input gt6_gtxrxn_in;
  input gt6_rxbufreset_in;
  output [2:0]gt6_rxbufstatus_out;
  output [2:0]gt6_rxstatus_out;
  output gt6_rxbyteisaligned_out;
  output gt6_rxbyterealign_out;
  output gt6_rxcommadet_out;
  input gt6_rxmcommaalignen_in;
  input gt6_rxpcommaalignen_in;
  input gt6_rxdfelpmreset_in;
  output [6:0]gt6_rxmonitorout_out;
  input [1:0]gt6_rxmonitorsel_in;
  output gt6_rxoutclk_out;
  output gt6_rxoutclkfabric_out;
  input gt6_gtrxreset_in;
  input gt6_rxpcsreset_in;
  input gt6_rxpmareset_in;
  input gt6_rxlpmen_in;
  input gt6_rxpolarity_in;
  output [3:0]gt6_rxchariscomma_out;
  output [3:0]gt6_rxcharisk_out;
  output gt6_rxresetdone_out;
  input [4:0]gt6_txpostcursor_in;
  input [4:0]gt6_txprecursor_in;
  input gt6_gttxreset_in;
  input gt6_txuserrdy_in;
  input gt6_txusrclk_in;
  input gt6_txusrclk2_in;
  input gt6_txprbsforceerr_in;
  output [1:0]gt6_txbufstatus_out;
  input [3:0]gt6_txdiffctrl_in;
  input gt6_txinhibit_in;
  input [31:0]gt6_txdata_in;
  output gt6_gtxtxn_out;
  output gt6_gtxtxp_out;
  output gt6_txoutclk_out;
  output gt6_txoutclkfabric_out;
  output gt6_txoutclkpcs_out;
  input [3:0]gt6_txcharisk_in;
  input gt6_txpcsreset_in;
  input gt6_txpmareset_in;
  output gt6_txresetdone_out;
  input gt6_txpolarity_in;
  input [2:0]gt6_txprbssel_in;
  output gt7_cpllfbclklost_out;
  output gt7_cplllock_out;
  input gt7_cplllockdetclk_in;
  input gt7_cpllpd_in;
  input gt7_cpllreset_in;
  input gt7_gtnorthrefclk0_in;
  input gt7_gtnorthrefclk1_in;
  input gt7_gtrefclk0_in;
  input gt7_gtrefclk1_in;
  input gt7_gtsouthrefclk0_in;
  input gt7_gtsouthrefclk1_in;
  input [8:0]gt7_drpaddr_in;
  input gt7_drpclk_in;
  input [15:0]gt7_drpdi_in;
  output [15:0]gt7_drpdo_out;
  input gt7_drpen_in;
  output gt7_drprdy_out;
  input gt7_drpwe_in;
  input [1:0]gt7_rxsysclksel_in;
  input [1:0]gt7_txsysclksel_in;
  output [7:0]gt7_dmonitorout_out;
  input [2:0]gt7_loopback_in;
  input [1:0]gt7_rxpd_in;
  input [1:0]gt7_txpd_in;
  input gt7_eyescanreset_in;
  input gt7_rxuserrdy_in;
  output gt7_eyescandataerror_out;
  input gt7_eyescantrigger_in;
  input gt7_rxcdrhold_in;
  input gt7_rxusrclk_in;
  input gt7_rxusrclk2_in;
  output [31:0]gt7_rxdata_out;
  output gt7_rxprbserr_out;
  input [2:0]gt7_rxprbssel_in;
  input gt7_rxprbscntreset_in;
  output [3:0]gt7_rxdisperr_out;
  output [3:0]gt7_rxnotintable_out;
  input gt7_gtxrxp_in;
  input gt7_gtxrxn_in;
  input gt7_rxbufreset_in;
  output [2:0]gt7_rxbufstatus_out;
  output [2:0]gt7_rxstatus_out;
  output gt7_rxbyteisaligned_out;
  output gt7_rxbyterealign_out;
  output gt7_rxcommadet_out;
  input gt7_rxmcommaalignen_in;
  input gt7_rxpcommaalignen_in;
  input gt7_rxdfelpmreset_in;
  output [6:0]gt7_rxmonitorout_out;
  input [1:0]gt7_rxmonitorsel_in;
  output gt7_rxoutclk_out;
  output gt7_rxoutclkfabric_out;
  input gt7_gtrxreset_in;
  input gt7_rxpcsreset_in;
  input gt7_rxpmareset_in;
  input gt7_rxlpmen_in;
  input gt7_rxpolarity_in;
  output [3:0]gt7_rxchariscomma_out;
  output [3:0]gt7_rxcharisk_out;
  output gt7_rxresetdone_out;
  input [4:0]gt7_txpostcursor_in;
  input [4:0]gt7_txprecursor_in;
  input gt7_gttxreset_in;
  input gt7_txuserrdy_in;
  input gt7_txusrclk_in;
  input gt7_txusrclk2_in;
  input gt7_txprbsforceerr_in;
  output [1:0]gt7_txbufstatus_out;
  input [3:0]gt7_txdiffctrl_in;
  input gt7_txinhibit_in;
  input [31:0]gt7_txdata_in;
  output gt7_gtxtxn_out;
  output gt7_gtxtxp_out;
  output gt7_txoutclk_out;
  output gt7_txoutclkfabric_out;
  output gt7_txoutclkpcs_out;
  input [3:0]gt7_txcharisk_in;
  input gt7_txpcsreset_in;
  input gt7_txpmareset_in;
  output gt7_txresetdone_out;
  input gt7_txpolarity_in;
  input [2:0]gt7_txprbssel_in;
  input gt0_qplllock_in;
  input gt0_qpllrefclklost_in;
  output gt0_qpllreset_out;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt1_qplllock_in;
  input gt1_qpllrefclklost_in;
  output gt1_qpllreset_out;
  input gt1_qplloutclk_in;
  input gt1_qplloutrefclk_in;

  wire \<const0> ;
  wire gt0_gtrxreset_in;
  wire gt0_gttxreset_in;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire gt0_qplllock_in;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt0_qpllreset_out;
  wire [3:0]gt0_rxcharisk_out;
  wire [31:0]gt0_rxdata_out;
  wire [3:0]gt0_rxdisperr_out;
  wire gt0_rxmcommaalignen_in;
  wire [3:0]gt0_rxnotintable_out;
  wire gt0_rxoutclk_out;
  wire gt0_rxresetdone_out;
  wire gt0_rxusrclk_in;
  wire [3:0]gt0_txcharisk_in;
  wire [31:0]gt0_txdata_in;
  wire gt0_txoutclk_out;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txresetdone_out;
  wire gt0_txusrclk_in;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire gt1_qplllock_in;
  wire gt1_qplloutclk_in;
  wire gt1_qplloutrefclk_in;
  wire gt1_qpllreset_out;
  wire [3:0]gt1_rxcharisk_out;
  wire [31:0]gt1_rxdata_out;
  wire [3:0]gt1_rxdisperr_out;
  wire [3:0]gt1_rxnotintable_out;
  wire gt1_rxresetdone_out;
  wire [3:0]gt1_txcharisk_in;
  wire [31:0]gt1_txdata_in;
  wire gt1_txresetdone_out;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [3:0]gt2_rxcharisk_out;
  wire [31:0]gt2_rxdata_out;
  wire [3:0]gt2_rxdisperr_out;
  wire [3:0]gt2_rxnotintable_out;
  wire gt2_rxresetdone_out;
  wire [3:0]gt2_txcharisk_in;
  wire [31:0]gt2_txdata_in;
  wire gt2_txresetdone_out;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [3:0]gt3_rxcharisk_out;
  wire [31:0]gt3_rxdata_out;
  wire [3:0]gt3_rxdisperr_out;
  wire [3:0]gt3_rxnotintable_out;
  wire gt3_rxresetdone_out;
  wire [3:0]gt3_txcharisk_in;
  wire [31:0]gt3_txdata_in;
  wire gt3_txresetdone_out;
  wire gt4_gtxrxn_in;
  wire gt4_gtxrxp_in;
  wire gt4_gtxtxn_out;
  wire gt4_gtxtxp_out;
  wire [3:0]gt4_rxcharisk_out;
  wire [31:0]gt4_rxdata_out;
  wire [3:0]gt4_rxdisperr_out;
  wire [3:0]gt4_rxnotintable_out;
  wire gt4_rxresetdone_out;
  wire [3:0]gt4_txcharisk_in;
  wire [31:0]gt4_txdata_in;
  wire gt4_txresetdone_out;
  wire gt5_gtxrxn_in;
  wire gt5_gtxrxp_in;
  wire gt5_gtxtxn_out;
  wire gt5_gtxtxp_out;
  wire [3:0]gt5_rxcharisk_out;
  wire [31:0]gt5_rxdata_out;
  wire [3:0]gt5_rxdisperr_out;
  wire [3:0]gt5_rxnotintable_out;
  wire gt5_rxresetdone_out;
  wire [3:0]gt5_txcharisk_in;
  wire [31:0]gt5_txdata_in;
  wire gt5_txresetdone_out;
  wire gt6_gtxrxn_in;
  wire gt6_gtxrxp_in;
  wire gt6_gtxtxn_out;
  wire gt6_gtxtxp_out;
  wire [3:0]gt6_rxcharisk_out;
  wire [31:0]gt6_rxdata_out;
  wire [3:0]gt6_rxdisperr_out;
  wire [3:0]gt6_rxnotintable_out;
  wire gt6_rxresetdone_out;
  wire [3:0]gt6_txcharisk_in;
  wire [31:0]gt6_txdata_in;
  wire gt6_txresetdone_out;
  wire gt7_gtxrxn_in;
  wire gt7_gtxrxp_in;
  wire gt7_gtxtxn_out;
  wire gt7_gtxtxp_out;
  wire [3:0]gt7_rxcharisk_out;
  wire [31:0]gt7_rxdata_out;
  wire [3:0]gt7_rxdisperr_out;
  wire [3:0]gt7_rxnotintable_out;
  wire gt7_rxresetdone_out;
  wire [3:0]gt7_txcharisk_in;
  wire [31:0]gt7_txdata_in;
  wire gt7_txresetdone_out;
  wire gt_rx_fsm_reset_done_out;
  wire gt_tx_fsm_reset_done_out;
  wire soft_reset_rx_in;
  wire soft_reset_tx_in;
  wire sysclk_in;
  wire NLW_inst_gt0_cpllfbclklost_out_UNCONNECTED;
  wire NLW_inst_gt0_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt0_drprdy_out_UNCONNECTED;
  wire NLW_inst_gt0_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt0_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt0_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt0_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt0_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt0_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt0_txoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt0_txoutclkpcs_out_UNCONNECTED;
  wire NLW_inst_gt1_cpllfbclklost_out_UNCONNECTED;
  wire NLW_inst_gt1_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt1_drprdy_out_UNCONNECTED;
  wire NLW_inst_gt1_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt1_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt1_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt1_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt1_rxoutclk_out_UNCONNECTED;
  wire NLW_inst_gt1_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt1_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt1_txoutclk_out_UNCONNECTED;
  wire NLW_inst_gt1_txoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt1_txoutclkpcs_out_UNCONNECTED;
  wire NLW_inst_gt2_cpllfbclklost_out_UNCONNECTED;
  wire NLW_inst_gt2_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt2_drprdy_out_UNCONNECTED;
  wire NLW_inst_gt2_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt2_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt2_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt2_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt2_rxoutclk_out_UNCONNECTED;
  wire NLW_inst_gt2_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt2_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt2_txoutclk_out_UNCONNECTED;
  wire NLW_inst_gt2_txoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt2_txoutclkpcs_out_UNCONNECTED;
  wire NLW_inst_gt3_cpllfbclklost_out_UNCONNECTED;
  wire NLW_inst_gt3_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt3_drprdy_out_UNCONNECTED;
  wire NLW_inst_gt3_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt3_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt3_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt3_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt3_rxoutclk_out_UNCONNECTED;
  wire NLW_inst_gt3_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt3_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt3_txoutclk_out_UNCONNECTED;
  wire NLW_inst_gt3_txoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt3_txoutclkpcs_out_UNCONNECTED;
  wire NLW_inst_gt4_cpllfbclklost_out_UNCONNECTED;
  wire NLW_inst_gt4_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt4_drprdy_out_UNCONNECTED;
  wire NLW_inst_gt4_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt4_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt4_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt4_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt4_rxoutclk_out_UNCONNECTED;
  wire NLW_inst_gt4_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt4_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt4_txoutclk_out_UNCONNECTED;
  wire NLW_inst_gt4_txoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt4_txoutclkpcs_out_UNCONNECTED;
  wire NLW_inst_gt5_cpllfbclklost_out_UNCONNECTED;
  wire NLW_inst_gt5_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt5_drprdy_out_UNCONNECTED;
  wire NLW_inst_gt5_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt5_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt5_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt5_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt5_rxoutclk_out_UNCONNECTED;
  wire NLW_inst_gt5_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt5_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt5_txoutclk_out_UNCONNECTED;
  wire NLW_inst_gt5_txoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt5_txoutclkpcs_out_UNCONNECTED;
  wire NLW_inst_gt6_cpllfbclklost_out_UNCONNECTED;
  wire NLW_inst_gt6_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt6_drprdy_out_UNCONNECTED;
  wire NLW_inst_gt6_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt6_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt6_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt6_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt6_rxoutclk_out_UNCONNECTED;
  wire NLW_inst_gt6_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt6_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt6_txoutclk_out_UNCONNECTED;
  wire NLW_inst_gt6_txoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt6_txoutclkpcs_out_UNCONNECTED;
  wire NLW_inst_gt7_cpllfbclklost_out_UNCONNECTED;
  wire NLW_inst_gt7_cplllock_out_UNCONNECTED;
  wire NLW_inst_gt7_drprdy_out_UNCONNECTED;
  wire NLW_inst_gt7_eyescandataerror_out_UNCONNECTED;
  wire NLW_inst_gt7_rxbyteisaligned_out_UNCONNECTED;
  wire NLW_inst_gt7_rxbyterealign_out_UNCONNECTED;
  wire NLW_inst_gt7_rxcommadet_out_UNCONNECTED;
  wire NLW_inst_gt7_rxoutclk_out_UNCONNECTED;
  wire NLW_inst_gt7_rxoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt7_rxprbserr_out_UNCONNECTED;
  wire NLW_inst_gt7_txoutclk_out_UNCONNECTED;
  wire NLW_inst_gt7_txoutclkfabric_out_UNCONNECTED;
  wire NLW_inst_gt7_txoutclkpcs_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt0_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt0_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt0_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_inst_gt0_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt0_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt0_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt0_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt1_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt1_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt1_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_inst_gt1_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt1_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt1_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt1_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt2_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt2_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt2_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_inst_gt2_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt2_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt2_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt2_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt3_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt3_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt3_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_inst_gt3_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt3_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt3_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt3_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt4_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt4_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt4_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_inst_gt4_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt4_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt4_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt4_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt5_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt5_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt5_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_inst_gt5_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt5_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt5_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt5_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt6_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt6_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt6_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_inst_gt6_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt6_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt6_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt6_txbufstatus_out_UNCONNECTED;
  wire [7:0]NLW_inst_gt7_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_inst_gt7_drpdo_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt7_rxbufstatus_out_UNCONNECTED;
  wire [3:0]NLW_inst_gt7_rxchariscomma_out_UNCONNECTED;
  wire [6:0]NLW_inst_gt7_rxmonitorout_out_UNCONNECTED;
  wire [2:0]NLW_inst_gt7_rxstatus_out_UNCONNECTED;
  wire [1:0]NLW_inst_gt7_txbufstatus_out_UNCONNECTED;

  assign gt0_cpllfbclklost_out = \<const0> ;
  assign gt0_cplllock_out = \<const0> ;
  assign gt0_dmonitorout_out[7] = \<const0> ;
  assign gt0_dmonitorout_out[6] = \<const0> ;
  assign gt0_dmonitorout_out[5] = \<const0> ;
  assign gt0_dmonitorout_out[4] = \<const0> ;
  assign gt0_dmonitorout_out[3] = \<const0> ;
  assign gt0_dmonitorout_out[2] = \<const0> ;
  assign gt0_dmonitorout_out[1] = \<const0> ;
  assign gt0_dmonitorout_out[0] = \<const0> ;
  assign gt0_drpdo_out[15] = \<const0> ;
  assign gt0_drpdo_out[14] = \<const0> ;
  assign gt0_drpdo_out[13] = \<const0> ;
  assign gt0_drpdo_out[12] = \<const0> ;
  assign gt0_drpdo_out[11] = \<const0> ;
  assign gt0_drpdo_out[10] = \<const0> ;
  assign gt0_drpdo_out[9] = \<const0> ;
  assign gt0_drpdo_out[8] = \<const0> ;
  assign gt0_drpdo_out[7] = \<const0> ;
  assign gt0_drpdo_out[6] = \<const0> ;
  assign gt0_drpdo_out[5] = \<const0> ;
  assign gt0_drpdo_out[4] = \<const0> ;
  assign gt0_drpdo_out[3] = \<const0> ;
  assign gt0_drpdo_out[2] = \<const0> ;
  assign gt0_drpdo_out[1] = \<const0> ;
  assign gt0_drpdo_out[0] = \<const0> ;
  assign gt0_drprdy_out = \<const0> ;
  assign gt0_eyescandataerror_out = \<const0> ;
  assign gt0_rxbufstatus_out[2] = \<const0> ;
  assign gt0_rxbufstatus_out[1] = \<const0> ;
  assign gt0_rxbufstatus_out[0] = \<const0> ;
  assign gt0_rxbyteisaligned_out = \<const0> ;
  assign gt0_rxbyterealign_out = \<const0> ;
  assign gt0_rxchariscomma_out[3] = \<const0> ;
  assign gt0_rxchariscomma_out[2] = \<const0> ;
  assign gt0_rxchariscomma_out[1] = \<const0> ;
  assign gt0_rxchariscomma_out[0] = \<const0> ;
  assign gt0_rxcommadet_out = \<const0> ;
  assign gt0_rxmonitorout_out[6] = \<const0> ;
  assign gt0_rxmonitorout_out[5] = \<const0> ;
  assign gt0_rxmonitorout_out[4] = \<const0> ;
  assign gt0_rxmonitorout_out[3] = \<const0> ;
  assign gt0_rxmonitorout_out[2] = \<const0> ;
  assign gt0_rxmonitorout_out[1] = \<const0> ;
  assign gt0_rxmonitorout_out[0] = \<const0> ;
  assign gt0_rxoutclkfabric_out = \<const0> ;
  assign gt0_rxprbserr_out = \<const0> ;
  assign gt0_rxstatus_out[2] = \<const0> ;
  assign gt0_rxstatus_out[1] = \<const0> ;
  assign gt0_rxstatus_out[0] = \<const0> ;
  assign gt0_txbufstatus_out[1] = \<const0> ;
  assign gt0_txbufstatus_out[0] = \<const0> ;
  assign gt0_txoutclkfabric_out = \<const0> ;
  assign gt0_txoutclkpcs_out = \<const0> ;
  assign gt1_cpllfbclklost_out = \<const0> ;
  assign gt1_cplllock_out = \<const0> ;
  assign gt1_dmonitorout_out[7] = \<const0> ;
  assign gt1_dmonitorout_out[6] = \<const0> ;
  assign gt1_dmonitorout_out[5] = \<const0> ;
  assign gt1_dmonitorout_out[4] = \<const0> ;
  assign gt1_dmonitorout_out[3] = \<const0> ;
  assign gt1_dmonitorout_out[2] = \<const0> ;
  assign gt1_dmonitorout_out[1] = \<const0> ;
  assign gt1_dmonitorout_out[0] = \<const0> ;
  assign gt1_drpdo_out[15] = \<const0> ;
  assign gt1_drpdo_out[14] = \<const0> ;
  assign gt1_drpdo_out[13] = \<const0> ;
  assign gt1_drpdo_out[12] = \<const0> ;
  assign gt1_drpdo_out[11] = \<const0> ;
  assign gt1_drpdo_out[10] = \<const0> ;
  assign gt1_drpdo_out[9] = \<const0> ;
  assign gt1_drpdo_out[8] = \<const0> ;
  assign gt1_drpdo_out[7] = \<const0> ;
  assign gt1_drpdo_out[6] = \<const0> ;
  assign gt1_drpdo_out[5] = \<const0> ;
  assign gt1_drpdo_out[4] = \<const0> ;
  assign gt1_drpdo_out[3] = \<const0> ;
  assign gt1_drpdo_out[2] = \<const0> ;
  assign gt1_drpdo_out[1] = \<const0> ;
  assign gt1_drpdo_out[0] = \<const0> ;
  assign gt1_drprdy_out = \<const0> ;
  assign gt1_eyescandataerror_out = \<const0> ;
  assign gt1_rxbufstatus_out[2] = \<const0> ;
  assign gt1_rxbufstatus_out[1] = \<const0> ;
  assign gt1_rxbufstatus_out[0] = \<const0> ;
  assign gt1_rxbyteisaligned_out = \<const0> ;
  assign gt1_rxbyterealign_out = \<const0> ;
  assign gt1_rxchariscomma_out[3] = \<const0> ;
  assign gt1_rxchariscomma_out[2] = \<const0> ;
  assign gt1_rxchariscomma_out[1] = \<const0> ;
  assign gt1_rxchariscomma_out[0] = \<const0> ;
  assign gt1_rxcommadet_out = \<const0> ;
  assign gt1_rxmonitorout_out[6] = \<const0> ;
  assign gt1_rxmonitorout_out[5] = \<const0> ;
  assign gt1_rxmonitorout_out[4] = \<const0> ;
  assign gt1_rxmonitorout_out[3] = \<const0> ;
  assign gt1_rxmonitorout_out[2] = \<const0> ;
  assign gt1_rxmonitorout_out[1] = \<const0> ;
  assign gt1_rxmonitorout_out[0] = \<const0> ;
  assign gt1_rxoutclk_out = \<const0> ;
  assign gt1_rxoutclkfabric_out = \<const0> ;
  assign gt1_rxprbserr_out = \<const0> ;
  assign gt1_rxstatus_out[2] = \<const0> ;
  assign gt1_rxstatus_out[1] = \<const0> ;
  assign gt1_rxstatus_out[0] = \<const0> ;
  assign gt1_txbufstatus_out[1] = \<const0> ;
  assign gt1_txbufstatus_out[0] = \<const0> ;
  assign gt1_txoutclk_out = \<const0> ;
  assign gt1_txoutclkfabric_out = \<const0> ;
  assign gt1_txoutclkpcs_out = \<const0> ;
  assign gt2_cpllfbclklost_out = \<const0> ;
  assign gt2_cplllock_out = \<const0> ;
  assign gt2_dmonitorout_out[7] = \<const0> ;
  assign gt2_dmonitorout_out[6] = \<const0> ;
  assign gt2_dmonitorout_out[5] = \<const0> ;
  assign gt2_dmonitorout_out[4] = \<const0> ;
  assign gt2_dmonitorout_out[3] = \<const0> ;
  assign gt2_dmonitorout_out[2] = \<const0> ;
  assign gt2_dmonitorout_out[1] = \<const0> ;
  assign gt2_dmonitorout_out[0] = \<const0> ;
  assign gt2_drpdo_out[15] = \<const0> ;
  assign gt2_drpdo_out[14] = \<const0> ;
  assign gt2_drpdo_out[13] = \<const0> ;
  assign gt2_drpdo_out[12] = \<const0> ;
  assign gt2_drpdo_out[11] = \<const0> ;
  assign gt2_drpdo_out[10] = \<const0> ;
  assign gt2_drpdo_out[9] = \<const0> ;
  assign gt2_drpdo_out[8] = \<const0> ;
  assign gt2_drpdo_out[7] = \<const0> ;
  assign gt2_drpdo_out[6] = \<const0> ;
  assign gt2_drpdo_out[5] = \<const0> ;
  assign gt2_drpdo_out[4] = \<const0> ;
  assign gt2_drpdo_out[3] = \<const0> ;
  assign gt2_drpdo_out[2] = \<const0> ;
  assign gt2_drpdo_out[1] = \<const0> ;
  assign gt2_drpdo_out[0] = \<const0> ;
  assign gt2_drprdy_out = \<const0> ;
  assign gt2_eyescandataerror_out = \<const0> ;
  assign gt2_rxbufstatus_out[2] = \<const0> ;
  assign gt2_rxbufstatus_out[1] = \<const0> ;
  assign gt2_rxbufstatus_out[0] = \<const0> ;
  assign gt2_rxbyteisaligned_out = \<const0> ;
  assign gt2_rxbyterealign_out = \<const0> ;
  assign gt2_rxchariscomma_out[3] = \<const0> ;
  assign gt2_rxchariscomma_out[2] = \<const0> ;
  assign gt2_rxchariscomma_out[1] = \<const0> ;
  assign gt2_rxchariscomma_out[0] = \<const0> ;
  assign gt2_rxcommadet_out = \<const0> ;
  assign gt2_rxmonitorout_out[6] = \<const0> ;
  assign gt2_rxmonitorout_out[5] = \<const0> ;
  assign gt2_rxmonitorout_out[4] = \<const0> ;
  assign gt2_rxmonitorout_out[3] = \<const0> ;
  assign gt2_rxmonitorout_out[2] = \<const0> ;
  assign gt2_rxmonitorout_out[1] = \<const0> ;
  assign gt2_rxmonitorout_out[0] = \<const0> ;
  assign gt2_rxoutclk_out = \<const0> ;
  assign gt2_rxoutclkfabric_out = \<const0> ;
  assign gt2_rxprbserr_out = \<const0> ;
  assign gt2_rxstatus_out[2] = \<const0> ;
  assign gt2_rxstatus_out[1] = \<const0> ;
  assign gt2_rxstatus_out[0] = \<const0> ;
  assign gt2_txbufstatus_out[1] = \<const0> ;
  assign gt2_txbufstatus_out[0] = \<const0> ;
  assign gt2_txoutclk_out = \<const0> ;
  assign gt2_txoutclkfabric_out = \<const0> ;
  assign gt2_txoutclkpcs_out = \<const0> ;
  assign gt3_cpllfbclklost_out = \<const0> ;
  assign gt3_cplllock_out = \<const0> ;
  assign gt3_dmonitorout_out[7] = \<const0> ;
  assign gt3_dmonitorout_out[6] = \<const0> ;
  assign gt3_dmonitorout_out[5] = \<const0> ;
  assign gt3_dmonitorout_out[4] = \<const0> ;
  assign gt3_dmonitorout_out[3] = \<const0> ;
  assign gt3_dmonitorout_out[2] = \<const0> ;
  assign gt3_dmonitorout_out[1] = \<const0> ;
  assign gt3_dmonitorout_out[0] = \<const0> ;
  assign gt3_drpdo_out[15] = \<const0> ;
  assign gt3_drpdo_out[14] = \<const0> ;
  assign gt3_drpdo_out[13] = \<const0> ;
  assign gt3_drpdo_out[12] = \<const0> ;
  assign gt3_drpdo_out[11] = \<const0> ;
  assign gt3_drpdo_out[10] = \<const0> ;
  assign gt3_drpdo_out[9] = \<const0> ;
  assign gt3_drpdo_out[8] = \<const0> ;
  assign gt3_drpdo_out[7] = \<const0> ;
  assign gt3_drpdo_out[6] = \<const0> ;
  assign gt3_drpdo_out[5] = \<const0> ;
  assign gt3_drpdo_out[4] = \<const0> ;
  assign gt3_drpdo_out[3] = \<const0> ;
  assign gt3_drpdo_out[2] = \<const0> ;
  assign gt3_drpdo_out[1] = \<const0> ;
  assign gt3_drpdo_out[0] = \<const0> ;
  assign gt3_drprdy_out = \<const0> ;
  assign gt3_eyescandataerror_out = \<const0> ;
  assign gt3_rxbufstatus_out[2] = \<const0> ;
  assign gt3_rxbufstatus_out[1] = \<const0> ;
  assign gt3_rxbufstatus_out[0] = \<const0> ;
  assign gt3_rxbyteisaligned_out = \<const0> ;
  assign gt3_rxbyterealign_out = \<const0> ;
  assign gt3_rxchariscomma_out[3] = \<const0> ;
  assign gt3_rxchariscomma_out[2] = \<const0> ;
  assign gt3_rxchariscomma_out[1] = \<const0> ;
  assign gt3_rxchariscomma_out[0] = \<const0> ;
  assign gt3_rxcommadet_out = \<const0> ;
  assign gt3_rxmonitorout_out[6] = \<const0> ;
  assign gt3_rxmonitorout_out[5] = \<const0> ;
  assign gt3_rxmonitorout_out[4] = \<const0> ;
  assign gt3_rxmonitorout_out[3] = \<const0> ;
  assign gt3_rxmonitorout_out[2] = \<const0> ;
  assign gt3_rxmonitorout_out[1] = \<const0> ;
  assign gt3_rxmonitorout_out[0] = \<const0> ;
  assign gt3_rxoutclk_out = \<const0> ;
  assign gt3_rxoutclkfabric_out = \<const0> ;
  assign gt3_rxprbserr_out = \<const0> ;
  assign gt3_rxstatus_out[2] = \<const0> ;
  assign gt3_rxstatus_out[1] = \<const0> ;
  assign gt3_rxstatus_out[0] = \<const0> ;
  assign gt3_txbufstatus_out[1] = \<const0> ;
  assign gt3_txbufstatus_out[0] = \<const0> ;
  assign gt3_txoutclk_out = \<const0> ;
  assign gt3_txoutclkfabric_out = \<const0> ;
  assign gt3_txoutclkpcs_out = \<const0> ;
  assign gt4_cpllfbclklost_out = \<const0> ;
  assign gt4_cplllock_out = \<const0> ;
  assign gt4_dmonitorout_out[7] = \<const0> ;
  assign gt4_dmonitorout_out[6] = \<const0> ;
  assign gt4_dmonitorout_out[5] = \<const0> ;
  assign gt4_dmonitorout_out[4] = \<const0> ;
  assign gt4_dmonitorout_out[3] = \<const0> ;
  assign gt4_dmonitorout_out[2] = \<const0> ;
  assign gt4_dmonitorout_out[1] = \<const0> ;
  assign gt4_dmonitorout_out[0] = \<const0> ;
  assign gt4_drpdo_out[15] = \<const0> ;
  assign gt4_drpdo_out[14] = \<const0> ;
  assign gt4_drpdo_out[13] = \<const0> ;
  assign gt4_drpdo_out[12] = \<const0> ;
  assign gt4_drpdo_out[11] = \<const0> ;
  assign gt4_drpdo_out[10] = \<const0> ;
  assign gt4_drpdo_out[9] = \<const0> ;
  assign gt4_drpdo_out[8] = \<const0> ;
  assign gt4_drpdo_out[7] = \<const0> ;
  assign gt4_drpdo_out[6] = \<const0> ;
  assign gt4_drpdo_out[5] = \<const0> ;
  assign gt4_drpdo_out[4] = \<const0> ;
  assign gt4_drpdo_out[3] = \<const0> ;
  assign gt4_drpdo_out[2] = \<const0> ;
  assign gt4_drpdo_out[1] = \<const0> ;
  assign gt4_drpdo_out[0] = \<const0> ;
  assign gt4_drprdy_out = \<const0> ;
  assign gt4_eyescandataerror_out = \<const0> ;
  assign gt4_rxbufstatus_out[2] = \<const0> ;
  assign gt4_rxbufstatus_out[1] = \<const0> ;
  assign gt4_rxbufstatus_out[0] = \<const0> ;
  assign gt4_rxbyteisaligned_out = \<const0> ;
  assign gt4_rxbyterealign_out = \<const0> ;
  assign gt4_rxchariscomma_out[3] = \<const0> ;
  assign gt4_rxchariscomma_out[2] = \<const0> ;
  assign gt4_rxchariscomma_out[1] = \<const0> ;
  assign gt4_rxchariscomma_out[0] = \<const0> ;
  assign gt4_rxcommadet_out = \<const0> ;
  assign gt4_rxmonitorout_out[6] = \<const0> ;
  assign gt4_rxmonitorout_out[5] = \<const0> ;
  assign gt4_rxmonitorout_out[4] = \<const0> ;
  assign gt4_rxmonitorout_out[3] = \<const0> ;
  assign gt4_rxmonitorout_out[2] = \<const0> ;
  assign gt4_rxmonitorout_out[1] = \<const0> ;
  assign gt4_rxmonitorout_out[0] = \<const0> ;
  assign gt4_rxoutclk_out = \<const0> ;
  assign gt4_rxoutclkfabric_out = \<const0> ;
  assign gt4_rxprbserr_out = \<const0> ;
  assign gt4_rxstatus_out[2] = \<const0> ;
  assign gt4_rxstatus_out[1] = \<const0> ;
  assign gt4_rxstatus_out[0] = \<const0> ;
  assign gt4_txbufstatus_out[1] = \<const0> ;
  assign gt4_txbufstatus_out[0] = \<const0> ;
  assign gt4_txoutclk_out = \<const0> ;
  assign gt4_txoutclkfabric_out = \<const0> ;
  assign gt4_txoutclkpcs_out = \<const0> ;
  assign gt5_cpllfbclklost_out = \<const0> ;
  assign gt5_cplllock_out = \<const0> ;
  assign gt5_dmonitorout_out[7] = \<const0> ;
  assign gt5_dmonitorout_out[6] = \<const0> ;
  assign gt5_dmonitorout_out[5] = \<const0> ;
  assign gt5_dmonitorout_out[4] = \<const0> ;
  assign gt5_dmonitorout_out[3] = \<const0> ;
  assign gt5_dmonitorout_out[2] = \<const0> ;
  assign gt5_dmonitorout_out[1] = \<const0> ;
  assign gt5_dmonitorout_out[0] = \<const0> ;
  assign gt5_drpdo_out[15] = \<const0> ;
  assign gt5_drpdo_out[14] = \<const0> ;
  assign gt5_drpdo_out[13] = \<const0> ;
  assign gt5_drpdo_out[12] = \<const0> ;
  assign gt5_drpdo_out[11] = \<const0> ;
  assign gt5_drpdo_out[10] = \<const0> ;
  assign gt5_drpdo_out[9] = \<const0> ;
  assign gt5_drpdo_out[8] = \<const0> ;
  assign gt5_drpdo_out[7] = \<const0> ;
  assign gt5_drpdo_out[6] = \<const0> ;
  assign gt5_drpdo_out[5] = \<const0> ;
  assign gt5_drpdo_out[4] = \<const0> ;
  assign gt5_drpdo_out[3] = \<const0> ;
  assign gt5_drpdo_out[2] = \<const0> ;
  assign gt5_drpdo_out[1] = \<const0> ;
  assign gt5_drpdo_out[0] = \<const0> ;
  assign gt5_drprdy_out = \<const0> ;
  assign gt5_eyescandataerror_out = \<const0> ;
  assign gt5_rxbufstatus_out[2] = \<const0> ;
  assign gt5_rxbufstatus_out[1] = \<const0> ;
  assign gt5_rxbufstatus_out[0] = \<const0> ;
  assign gt5_rxbyteisaligned_out = \<const0> ;
  assign gt5_rxbyterealign_out = \<const0> ;
  assign gt5_rxchariscomma_out[3] = \<const0> ;
  assign gt5_rxchariscomma_out[2] = \<const0> ;
  assign gt5_rxchariscomma_out[1] = \<const0> ;
  assign gt5_rxchariscomma_out[0] = \<const0> ;
  assign gt5_rxcommadet_out = \<const0> ;
  assign gt5_rxmonitorout_out[6] = \<const0> ;
  assign gt5_rxmonitorout_out[5] = \<const0> ;
  assign gt5_rxmonitorout_out[4] = \<const0> ;
  assign gt5_rxmonitorout_out[3] = \<const0> ;
  assign gt5_rxmonitorout_out[2] = \<const0> ;
  assign gt5_rxmonitorout_out[1] = \<const0> ;
  assign gt5_rxmonitorout_out[0] = \<const0> ;
  assign gt5_rxoutclk_out = \<const0> ;
  assign gt5_rxoutclkfabric_out = \<const0> ;
  assign gt5_rxprbserr_out = \<const0> ;
  assign gt5_rxstatus_out[2] = \<const0> ;
  assign gt5_rxstatus_out[1] = \<const0> ;
  assign gt5_rxstatus_out[0] = \<const0> ;
  assign gt5_txbufstatus_out[1] = \<const0> ;
  assign gt5_txbufstatus_out[0] = \<const0> ;
  assign gt5_txoutclk_out = \<const0> ;
  assign gt5_txoutclkfabric_out = \<const0> ;
  assign gt5_txoutclkpcs_out = \<const0> ;
  assign gt6_cpllfbclklost_out = \<const0> ;
  assign gt6_cplllock_out = \<const0> ;
  assign gt6_dmonitorout_out[7] = \<const0> ;
  assign gt6_dmonitorout_out[6] = \<const0> ;
  assign gt6_dmonitorout_out[5] = \<const0> ;
  assign gt6_dmonitorout_out[4] = \<const0> ;
  assign gt6_dmonitorout_out[3] = \<const0> ;
  assign gt6_dmonitorout_out[2] = \<const0> ;
  assign gt6_dmonitorout_out[1] = \<const0> ;
  assign gt6_dmonitorout_out[0] = \<const0> ;
  assign gt6_drpdo_out[15] = \<const0> ;
  assign gt6_drpdo_out[14] = \<const0> ;
  assign gt6_drpdo_out[13] = \<const0> ;
  assign gt6_drpdo_out[12] = \<const0> ;
  assign gt6_drpdo_out[11] = \<const0> ;
  assign gt6_drpdo_out[10] = \<const0> ;
  assign gt6_drpdo_out[9] = \<const0> ;
  assign gt6_drpdo_out[8] = \<const0> ;
  assign gt6_drpdo_out[7] = \<const0> ;
  assign gt6_drpdo_out[6] = \<const0> ;
  assign gt6_drpdo_out[5] = \<const0> ;
  assign gt6_drpdo_out[4] = \<const0> ;
  assign gt6_drpdo_out[3] = \<const0> ;
  assign gt6_drpdo_out[2] = \<const0> ;
  assign gt6_drpdo_out[1] = \<const0> ;
  assign gt6_drpdo_out[0] = \<const0> ;
  assign gt6_drprdy_out = \<const0> ;
  assign gt6_eyescandataerror_out = \<const0> ;
  assign gt6_rxbufstatus_out[2] = \<const0> ;
  assign gt6_rxbufstatus_out[1] = \<const0> ;
  assign gt6_rxbufstatus_out[0] = \<const0> ;
  assign gt6_rxbyteisaligned_out = \<const0> ;
  assign gt6_rxbyterealign_out = \<const0> ;
  assign gt6_rxchariscomma_out[3] = \<const0> ;
  assign gt6_rxchariscomma_out[2] = \<const0> ;
  assign gt6_rxchariscomma_out[1] = \<const0> ;
  assign gt6_rxchariscomma_out[0] = \<const0> ;
  assign gt6_rxcommadet_out = \<const0> ;
  assign gt6_rxmonitorout_out[6] = \<const0> ;
  assign gt6_rxmonitorout_out[5] = \<const0> ;
  assign gt6_rxmonitorout_out[4] = \<const0> ;
  assign gt6_rxmonitorout_out[3] = \<const0> ;
  assign gt6_rxmonitorout_out[2] = \<const0> ;
  assign gt6_rxmonitorout_out[1] = \<const0> ;
  assign gt6_rxmonitorout_out[0] = \<const0> ;
  assign gt6_rxoutclk_out = \<const0> ;
  assign gt6_rxoutclkfabric_out = \<const0> ;
  assign gt6_rxprbserr_out = \<const0> ;
  assign gt6_rxstatus_out[2] = \<const0> ;
  assign gt6_rxstatus_out[1] = \<const0> ;
  assign gt6_rxstatus_out[0] = \<const0> ;
  assign gt6_txbufstatus_out[1] = \<const0> ;
  assign gt6_txbufstatus_out[0] = \<const0> ;
  assign gt6_txoutclk_out = \<const0> ;
  assign gt6_txoutclkfabric_out = \<const0> ;
  assign gt6_txoutclkpcs_out = \<const0> ;
  assign gt7_cpllfbclklost_out = \<const0> ;
  assign gt7_cplllock_out = \<const0> ;
  assign gt7_dmonitorout_out[7] = \<const0> ;
  assign gt7_dmonitorout_out[6] = \<const0> ;
  assign gt7_dmonitorout_out[5] = \<const0> ;
  assign gt7_dmonitorout_out[4] = \<const0> ;
  assign gt7_dmonitorout_out[3] = \<const0> ;
  assign gt7_dmonitorout_out[2] = \<const0> ;
  assign gt7_dmonitorout_out[1] = \<const0> ;
  assign gt7_dmonitorout_out[0] = \<const0> ;
  assign gt7_drpdo_out[15] = \<const0> ;
  assign gt7_drpdo_out[14] = \<const0> ;
  assign gt7_drpdo_out[13] = \<const0> ;
  assign gt7_drpdo_out[12] = \<const0> ;
  assign gt7_drpdo_out[11] = \<const0> ;
  assign gt7_drpdo_out[10] = \<const0> ;
  assign gt7_drpdo_out[9] = \<const0> ;
  assign gt7_drpdo_out[8] = \<const0> ;
  assign gt7_drpdo_out[7] = \<const0> ;
  assign gt7_drpdo_out[6] = \<const0> ;
  assign gt7_drpdo_out[5] = \<const0> ;
  assign gt7_drpdo_out[4] = \<const0> ;
  assign gt7_drpdo_out[3] = \<const0> ;
  assign gt7_drpdo_out[2] = \<const0> ;
  assign gt7_drpdo_out[1] = \<const0> ;
  assign gt7_drpdo_out[0] = \<const0> ;
  assign gt7_drprdy_out = \<const0> ;
  assign gt7_eyescandataerror_out = \<const0> ;
  assign gt7_rxbufstatus_out[2] = \<const0> ;
  assign gt7_rxbufstatus_out[1] = \<const0> ;
  assign gt7_rxbufstatus_out[0] = \<const0> ;
  assign gt7_rxbyteisaligned_out = \<const0> ;
  assign gt7_rxbyterealign_out = \<const0> ;
  assign gt7_rxchariscomma_out[3] = \<const0> ;
  assign gt7_rxchariscomma_out[2] = \<const0> ;
  assign gt7_rxchariscomma_out[1] = \<const0> ;
  assign gt7_rxchariscomma_out[0] = \<const0> ;
  assign gt7_rxcommadet_out = \<const0> ;
  assign gt7_rxmonitorout_out[6] = \<const0> ;
  assign gt7_rxmonitorout_out[5] = \<const0> ;
  assign gt7_rxmonitorout_out[4] = \<const0> ;
  assign gt7_rxmonitorout_out[3] = \<const0> ;
  assign gt7_rxmonitorout_out[2] = \<const0> ;
  assign gt7_rxmonitorout_out[1] = \<const0> ;
  assign gt7_rxmonitorout_out[0] = \<const0> ;
  assign gt7_rxoutclk_out = \<const0> ;
  assign gt7_rxoutclkfabric_out = \<const0> ;
  assign gt7_rxprbserr_out = \<const0> ;
  assign gt7_rxstatus_out[2] = \<const0> ;
  assign gt7_rxstatus_out[1] = \<const0> ;
  assign gt7_rxstatus_out[0] = \<const0> ;
  assign gt7_txbufstatus_out[1] = \<const0> ;
  assign gt7_txbufstatus_out[0] = \<const0> ;
  assign gt7_txoutclk_out = \<const0> ;
  assign gt7_txoutclkfabric_out = \<const0> ;
  assign gt7_txoutclkpcs_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* EXAMPLE_SIM_GTRESET_SPEEDUP = "TRUE" *) 
  (* EXAMPLE_USE_CHIPSCOPE = "1" *) 
  (* RX_CDRLOCK_TIME = "12500" *) 
  (* STABLE_CLOCK_PERIOD = "10" *) 
  (* WAIT_TIME_CDRLOCK = "1250" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_init inst
       (.dont_reset_on_data_error_in(1'b0),
        .gt0_cpllfbclklost_out(NLW_inst_gt0_cpllfbclklost_out_UNCONNECTED),
        .gt0_cplllock_out(NLW_inst_gt0_cplllock_out_UNCONNECTED),
        .gt0_cplllockdetclk_in(1'b0),
        .gt0_cpllpd_in(1'b1),
        .gt0_cpllreset_in(1'b0),
        .gt0_data_valid_in(1'b1),
        .gt0_dmonitorout_out(NLW_inst_gt0_dmonitorout_out_UNCONNECTED[7:0]),
        .gt0_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpclk_in(1'b0),
        .gt0_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdo_out(NLW_inst_gt0_drpdo_out_UNCONNECTED[15:0]),
        .gt0_drpen_in(1'b0),
        .gt0_drprdy_out(NLW_inst_gt0_drprdy_out_UNCONNECTED),
        .gt0_drpwe_in(1'b0),
        .gt0_eyescandataerror_out(NLW_inst_gt0_eyescandataerror_out_UNCONNECTED),
        .gt0_eyescanreset_in(1'b0),
        .gt0_eyescantrigger_in(1'b0),
        .gt0_gtnorthrefclk0_in(1'b0),
        .gt0_gtnorthrefclk1_in(1'b0),
        .gt0_gtrefclk0_in(1'b0),
        .gt0_gtrefclk1_in(1'b0),
        .gt0_gtrxreset_in(gt0_gtrxreset_in),
        .gt0_gtsouthrefclk0_in(1'b0),
        .gt0_gtsouthrefclk1_in(1'b0),
        .gt0_gttxreset_in(gt0_gttxreset_in),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_loopback_in({1'b0,1'b0,1'b0}),
        .gt0_qplllock_in(gt0_qplllock_in),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_qpllrefclklost_in(1'b0),
        .gt0_qpllreset_out(gt0_qpllreset_out),
        .gt0_rxbufreset_in(1'b0),
        .gt0_rxbufstatus_out(NLW_inst_gt0_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt0_rxbyteisaligned_out(NLW_inst_gt0_rxbyteisaligned_out_UNCONNECTED),
        .gt0_rxbyterealign_out(NLW_inst_gt0_rxbyterealign_out_UNCONNECTED),
        .gt0_rxcdrhold_in(1'b0),
        .gt0_rxchariscomma_out(NLW_inst_gt0_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxcommadet_out(NLW_inst_gt0_rxcommadet_out_UNCONNECTED),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdfelpmreset_in(1'b0),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxlpmen_in(1'b1),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxmonitorout_out(NLW_inst_gt0_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt0_rxmonitorsel_in({1'b0,1'b0}),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxoutclkfabric_out(NLW_inst_gt0_rxoutclkfabric_out_UNCONNECTED),
        .gt0_rxpcommaalignen_in(1'b0),
        .gt0_rxpcsreset_in(1'b0),
        .gt0_rxpd_in({1'b0,1'b0}),
        .gt0_rxpmareset_in(1'b0),
        .gt0_rxpolarity_in(1'b0),
        .gt0_rxprbscntreset_in(1'b0),
        .gt0_rxprbserr_out(NLW_inst_gt0_rxprbserr_out_UNCONNECTED),
        .gt0_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxstatus_out(NLW_inst_gt0_rxstatus_out_UNCONNECTED[2:0]),
        .gt0_rxsysclksel_in({1'b1,1'b1}),
        .gt0_rxuserrdy_in(1'b1),
        .gt0_rxusrclk2_in(1'b0),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txbufstatus_out(NLW_inst_gt0_txbufstatus_out_UNCONNECTED[1:0]),
        .gt0_txcharisk_in(gt0_txcharisk_in),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt0_txinhibit_in(1'b0),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txoutclkfabric_out(NLW_inst_gt0_txoutclkfabric_out_UNCONNECTED),
        .gt0_txoutclkpcs_out(NLW_inst_gt0_txoutclkpcs_out_UNCONNECTED),
        .gt0_txpcsreset_in(1'b0),
        .gt0_txpd_in({1'b0,1'b0}),
        .gt0_txpmareset_in(1'b0),
        .gt0_txpolarity_in(1'b0),
        .gt0_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_txprbsforceerr_in(1'b0),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txsysclksel_in({1'b1,1'b1}),
        .gt0_txuserrdy_in(1'b1),
        .gt0_txusrclk2_in(1'b0),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_cpllfbclklost_out(NLW_inst_gt1_cpllfbclklost_out_UNCONNECTED),
        .gt1_cplllock_out(NLW_inst_gt1_cplllock_out_UNCONNECTED),
        .gt1_cplllockdetclk_in(1'b0),
        .gt1_cpllpd_in(1'b1),
        .gt1_cpllreset_in(1'b0),
        .gt1_data_valid_in(1'b1),
        .gt1_dmonitorout_out(NLW_inst_gt1_dmonitorout_out_UNCONNECTED[7:0]),
        .gt1_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpclk_in(1'b0),
        .gt1_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdo_out(NLW_inst_gt1_drpdo_out_UNCONNECTED[15:0]),
        .gt1_drpen_in(1'b0),
        .gt1_drprdy_out(NLW_inst_gt1_drprdy_out_UNCONNECTED),
        .gt1_drpwe_in(1'b0),
        .gt1_eyescandataerror_out(NLW_inst_gt1_eyescandataerror_out_UNCONNECTED),
        .gt1_eyescanreset_in(1'b0),
        .gt1_eyescantrigger_in(1'b0),
        .gt1_gtnorthrefclk0_in(1'b0),
        .gt1_gtnorthrefclk1_in(1'b0),
        .gt1_gtrefclk0_in(1'b0),
        .gt1_gtrefclk1_in(1'b0),
        .gt1_gtrxreset_in(1'b0),
        .gt1_gtsouthrefclk0_in(1'b0),
        .gt1_gtsouthrefclk1_in(1'b0),
        .gt1_gttxreset_in(1'b0),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_loopback_in({1'b0,1'b0,1'b0}),
        .gt1_qplllock_in(gt1_qplllock_in),
        .gt1_qplloutclk_in(gt1_qplloutclk_in),
        .gt1_qplloutrefclk_in(gt1_qplloutrefclk_in),
        .gt1_qpllrefclklost_in(1'b0),
        .gt1_qpllreset_out(gt1_qpllreset_out),
        .gt1_rxbufreset_in(1'b0),
        .gt1_rxbufstatus_out(NLW_inst_gt1_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt1_rxbyteisaligned_out(NLW_inst_gt1_rxbyteisaligned_out_UNCONNECTED),
        .gt1_rxbyterealign_out(NLW_inst_gt1_rxbyterealign_out_UNCONNECTED),
        .gt1_rxcdrhold_in(1'b0),
        .gt1_rxchariscomma_out(NLW_inst_gt1_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt1_rxcharisk_out(gt1_rxcharisk_out),
        .gt1_rxcommadet_out(NLW_inst_gt1_rxcommadet_out_UNCONNECTED),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdfelpmreset_in(1'b0),
        .gt1_rxdisperr_out(gt1_rxdisperr_out),
        .gt1_rxlpmen_in(1'b1),
        .gt1_rxmcommaalignen_in(1'b0),
        .gt1_rxmonitorout_out(NLW_inst_gt1_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt1_rxmonitorsel_in({1'b0,1'b0}),
        .gt1_rxnotintable_out(gt1_rxnotintable_out),
        .gt1_rxoutclk_out(NLW_inst_gt1_rxoutclk_out_UNCONNECTED),
        .gt1_rxoutclkfabric_out(NLW_inst_gt1_rxoutclkfabric_out_UNCONNECTED),
        .gt1_rxpcommaalignen_in(1'b0),
        .gt1_rxpcsreset_in(1'b0),
        .gt1_rxpd_in({1'b0,1'b0}),
        .gt1_rxpmareset_in(1'b0),
        .gt1_rxpolarity_in(1'b0),
        .gt1_rxprbscntreset_in(1'b0),
        .gt1_rxprbserr_out(NLW_inst_gt1_rxprbserr_out_UNCONNECTED),
        .gt1_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxstatus_out(NLW_inst_gt1_rxstatus_out_UNCONNECTED[2:0]),
        .gt1_rxsysclksel_in({1'b1,1'b1}),
        .gt1_rxuserrdy_in(1'b1),
        .gt1_rxusrclk2_in(1'b0),
        .gt1_rxusrclk_in(1'b0),
        .gt1_txbufstatus_out(NLW_inst_gt1_txbufstatus_out_UNCONNECTED[1:0]),
        .gt1_txcharisk_in(gt1_txcharisk_in),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt1_txinhibit_in(1'b0),
        .gt1_txoutclk_out(NLW_inst_gt1_txoutclk_out_UNCONNECTED),
        .gt1_txoutclkfabric_out(NLW_inst_gt1_txoutclkfabric_out_UNCONNECTED),
        .gt1_txoutclkpcs_out(NLW_inst_gt1_txoutclkpcs_out_UNCONNECTED),
        .gt1_txpcsreset_in(1'b0),
        .gt1_txpd_in({1'b0,1'b0}),
        .gt1_txpmareset_in(1'b0),
        .gt1_txpolarity_in(1'b0),
        .gt1_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_txprbsforceerr_in(1'b0),
        .gt1_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt1_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txsysclksel_in({1'b1,1'b1}),
        .gt1_txuserrdy_in(1'b1),
        .gt1_txusrclk2_in(1'b0),
        .gt1_txusrclk_in(1'b0),
        .gt2_cpllfbclklost_out(NLW_inst_gt2_cpllfbclklost_out_UNCONNECTED),
        .gt2_cplllock_out(NLW_inst_gt2_cplllock_out_UNCONNECTED),
        .gt2_cplllockdetclk_in(1'b0),
        .gt2_cpllpd_in(1'b1),
        .gt2_cpllreset_in(1'b0),
        .gt2_data_valid_in(1'b1),
        .gt2_dmonitorout_out(NLW_inst_gt2_dmonitorout_out_UNCONNECTED[7:0]),
        .gt2_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpclk_in(1'b0),
        .gt2_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdo_out(NLW_inst_gt2_drpdo_out_UNCONNECTED[15:0]),
        .gt2_drpen_in(1'b0),
        .gt2_drprdy_out(NLW_inst_gt2_drprdy_out_UNCONNECTED),
        .gt2_drpwe_in(1'b0),
        .gt2_eyescandataerror_out(NLW_inst_gt2_eyescandataerror_out_UNCONNECTED),
        .gt2_eyescanreset_in(1'b0),
        .gt2_eyescantrigger_in(1'b0),
        .gt2_gtnorthrefclk0_in(1'b0),
        .gt2_gtnorthrefclk1_in(1'b0),
        .gt2_gtrefclk0_in(1'b0),
        .gt2_gtrefclk1_in(1'b0),
        .gt2_gtrxreset_in(1'b0),
        .gt2_gtsouthrefclk0_in(1'b0),
        .gt2_gtsouthrefclk1_in(1'b0),
        .gt2_gttxreset_in(1'b0),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_loopback_in({1'b0,1'b0,1'b0}),
        .gt2_rxbufreset_in(1'b0),
        .gt2_rxbufstatus_out(NLW_inst_gt2_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt2_rxbyteisaligned_out(NLW_inst_gt2_rxbyteisaligned_out_UNCONNECTED),
        .gt2_rxbyterealign_out(NLW_inst_gt2_rxbyterealign_out_UNCONNECTED),
        .gt2_rxcdrhold_in(1'b0),
        .gt2_rxchariscomma_out(NLW_inst_gt2_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt2_rxcharisk_out(gt2_rxcharisk_out),
        .gt2_rxcommadet_out(NLW_inst_gt2_rxcommadet_out_UNCONNECTED),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdfelpmreset_in(1'b0),
        .gt2_rxdisperr_out(gt2_rxdisperr_out),
        .gt2_rxlpmen_in(1'b1),
        .gt2_rxmcommaalignen_in(1'b0),
        .gt2_rxmonitorout_out(NLW_inst_gt2_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt2_rxmonitorsel_in({1'b0,1'b0}),
        .gt2_rxnotintable_out(gt2_rxnotintable_out),
        .gt2_rxoutclk_out(NLW_inst_gt2_rxoutclk_out_UNCONNECTED),
        .gt2_rxoutclkfabric_out(NLW_inst_gt2_rxoutclkfabric_out_UNCONNECTED),
        .gt2_rxpcommaalignen_in(1'b0),
        .gt2_rxpcsreset_in(1'b0),
        .gt2_rxpd_in({1'b0,1'b0}),
        .gt2_rxpmareset_in(1'b0),
        .gt2_rxpolarity_in(1'b0),
        .gt2_rxprbscntreset_in(1'b0),
        .gt2_rxprbserr_out(NLW_inst_gt2_rxprbserr_out_UNCONNECTED),
        .gt2_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxstatus_out(NLW_inst_gt2_rxstatus_out_UNCONNECTED[2:0]),
        .gt2_rxsysclksel_in({1'b1,1'b1}),
        .gt2_rxuserrdy_in(1'b1),
        .gt2_rxusrclk2_in(1'b0),
        .gt2_rxusrclk_in(1'b0),
        .gt2_txbufstatus_out(NLW_inst_gt2_txbufstatus_out_UNCONNECTED[1:0]),
        .gt2_txcharisk_in(gt2_txcharisk_in),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt2_txinhibit_in(1'b0),
        .gt2_txoutclk_out(NLW_inst_gt2_txoutclk_out_UNCONNECTED),
        .gt2_txoutclkfabric_out(NLW_inst_gt2_txoutclkfabric_out_UNCONNECTED),
        .gt2_txoutclkpcs_out(NLW_inst_gt2_txoutclkpcs_out_UNCONNECTED),
        .gt2_txpcsreset_in(1'b0),
        .gt2_txpd_in({1'b0,1'b0}),
        .gt2_txpmareset_in(1'b0),
        .gt2_txpolarity_in(1'b0),
        .gt2_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_txprbsforceerr_in(1'b0),
        .gt2_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt2_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txsysclksel_in({1'b1,1'b1}),
        .gt2_txuserrdy_in(1'b1),
        .gt2_txusrclk2_in(1'b0),
        .gt2_txusrclk_in(1'b0),
        .gt3_cpllfbclklost_out(NLW_inst_gt3_cpllfbclklost_out_UNCONNECTED),
        .gt3_cplllock_out(NLW_inst_gt3_cplllock_out_UNCONNECTED),
        .gt3_cplllockdetclk_in(1'b0),
        .gt3_cpllpd_in(1'b1),
        .gt3_cpllreset_in(1'b0),
        .gt3_data_valid_in(1'b1),
        .gt3_dmonitorout_out(NLW_inst_gt3_dmonitorout_out_UNCONNECTED[7:0]),
        .gt3_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpclk_in(1'b0),
        .gt3_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdo_out(NLW_inst_gt3_drpdo_out_UNCONNECTED[15:0]),
        .gt3_drpen_in(1'b0),
        .gt3_drprdy_out(NLW_inst_gt3_drprdy_out_UNCONNECTED),
        .gt3_drpwe_in(1'b0),
        .gt3_eyescandataerror_out(NLW_inst_gt3_eyescandataerror_out_UNCONNECTED),
        .gt3_eyescanreset_in(1'b0),
        .gt3_eyescantrigger_in(1'b0),
        .gt3_gtnorthrefclk0_in(1'b0),
        .gt3_gtnorthrefclk1_in(1'b0),
        .gt3_gtrefclk0_in(1'b0),
        .gt3_gtrefclk1_in(1'b0),
        .gt3_gtrxreset_in(1'b0),
        .gt3_gtsouthrefclk0_in(1'b0),
        .gt3_gtsouthrefclk1_in(1'b0),
        .gt3_gttxreset_in(1'b0),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_loopback_in({1'b0,1'b0,1'b0}),
        .gt3_rxbufreset_in(1'b0),
        .gt3_rxbufstatus_out(NLW_inst_gt3_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt3_rxbyteisaligned_out(NLW_inst_gt3_rxbyteisaligned_out_UNCONNECTED),
        .gt3_rxbyterealign_out(NLW_inst_gt3_rxbyterealign_out_UNCONNECTED),
        .gt3_rxcdrhold_in(1'b0),
        .gt3_rxchariscomma_out(NLW_inst_gt3_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt3_rxcharisk_out(gt3_rxcharisk_out),
        .gt3_rxcommadet_out(NLW_inst_gt3_rxcommadet_out_UNCONNECTED),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdfelpmreset_in(1'b0),
        .gt3_rxdisperr_out(gt3_rxdisperr_out),
        .gt3_rxlpmen_in(1'b1),
        .gt3_rxmcommaalignen_in(1'b0),
        .gt3_rxmonitorout_out(NLW_inst_gt3_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt3_rxmonitorsel_in({1'b0,1'b0}),
        .gt3_rxnotintable_out(gt3_rxnotintable_out),
        .gt3_rxoutclk_out(NLW_inst_gt3_rxoutclk_out_UNCONNECTED),
        .gt3_rxoutclkfabric_out(NLW_inst_gt3_rxoutclkfabric_out_UNCONNECTED),
        .gt3_rxpcommaalignen_in(1'b0),
        .gt3_rxpcsreset_in(1'b0),
        .gt3_rxpd_in({1'b0,1'b0}),
        .gt3_rxpmareset_in(1'b0),
        .gt3_rxpolarity_in(1'b0),
        .gt3_rxprbscntreset_in(1'b0),
        .gt3_rxprbserr_out(NLW_inst_gt3_rxprbserr_out_UNCONNECTED),
        .gt3_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxstatus_out(NLW_inst_gt3_rxstatus_out_UNCONNECTED[2:0]),
        .gt3_rxsysclksel_in({1'b1,1'b1}),
        .gt3_rxuserrdy_in(1'b1),
        .gt3_rxusrclk2_in(1'b0),
        .gt3_rxusrclk_in(1'b0),
        .gt3_txbufstatus_out(NLW_inst_gt3_txbufstatus_out_UNCONNECTED[1:0]),
        .gt3_txcharisk_in(gt3_txcharisk_in),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt3_txinhibit_in(1'b0),
        .gt3_txoutclk_out(NLW_inst_gt3_txoutclk_out_UNCONNECTED),
        .gt3_txoutclkfabric_out(NLW_inst_gt3_txoutclkfabric_out_UNCONNECTED),
        .gt3_txoutclkpcs_out(NLW_inst_gt3_txoutclkpcs_out_UNCONNECTED),
        .gt3_txpcsreset_in(1'b0),
        .gt3_txpd_in({1'b0,1'b0}),
        .gt3_txpmareset_in(1'b0),
        .gt3_txpolarity_in(1'b0),
        .gt3_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_txprbsforceerr_in(1'b0),
        .gt3_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt3_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txsysclksel_in({1'b1,1'b1}),
        .gt3_txuserrdy_in(1'b1),
        .gt3_txusrclk2_in(1'b0),
        .gt3_txusrclk_in(1'b0),
        .gt4_cpllfbclklost_out(NLW_inst_gt4_cpllfbclklost_out_UNCONNECTED),
        .gt4_cplllock_out(NLW_inst_gt4_cplllock_out_UNCONNECTED),
        .gt4_cplllockdetclk_in(1'b0),
        .gt4_cpllpd_in(1'b1),
        .gt4_cpllreset_in(1'b0),
        .gt4_data_valid_in(1'b1),
        .gt4_dmonitorout_out(NLW_inst_gt4_dmonitorout_out_UNCONNECTED[7:0]),
        .gt4_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_drpclk_in(1'b0),
        .gt4_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_drpdo_out(NLW_inst_gt4_drpdo_out_UNCONNECTED[15:0]),
        .gt4_drpen_in(1'b0),
        .gt4_drprdy_out(NLW_inst_gt4_drprdy_out_UNCONNECTED),
        .gt4_drpwe_in(1'b0),
        .gt4_eyescandataerror_out(NLW_inst_gt4_eyescandataerror_out_UNCONNECTED),
        .gt4_eyescanreset_in(1'b0),
        .gt4_eyescantrigger_in(1'b0),
        .gt4_gtnorthrefclk0_in(1'b0),
        .gt4_gtnorthrefclk1_in(1'b0),
        .gt4_gtrefclk0_in(1'b0),
        .gt4_gtrefclk1_in(1'b0),
        .gt4_gtrxreset_in(1'b0),
        .gt4_gtsouthrefclk0_in(1'b0),
        .gt4_gtsouthrefclk1_in(1'b0),
        .gt4_gttxreset_in(1'b0),
        .gt4_gtxrxn_in(gt4_gtxrxn_in),
        .gt4_gtxrxp_in(gt4_gtxrxp_in),
        .gt4_gtxtxn_out(gt4_gtxtxn_out),
        .gt4_gtxtxp_out(gt4_gtxtxp_out),
        .gt4_loopback_in({1'b0,1'b0,1'b0}),
        .gt4_rxbufreset_in(1'b0),
        .gt4_rxbufstatus_out(NLW_inst_gt4_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt4_rxbyteisaligned_out(NLW_inst_gt4_rxbyteisaligned_out_UNCONNECTED),
        .gt4_rxbyterealign_out(NLW_inst_gt4_rxbyterealign_out_UNCONNECTED),
        .gt4_rxcdrhold_in(1'b0),
        .gt4_rxchariscomma_out(NLW_inst_gt4_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt4_rxcharisk_out(gt4_rxcharisk_out),
        .gt4_rxcommadet_out(NLW_inst_gt4_rxcommadet_out_UNCONNECTED),
        .gt4_rxdata_out(gt4_rxdata_out),
        .gt4_rxdfelpmreset_in(1'b0),
        .gt4_rxdisperr_out(gt4_rxdisperr_out),
        .gt4_rxlpmen_in(1'b1),
        .gt4_rxmcommaalignen_in(1'b0),
        .gt4_rxmonitorout_out(NLW_inst_gt4_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt4_rxmonitorsel_in({1'b0,1'b0}),
        .gt4_rxnotintable_out(gt4_rxnotintable_out),
        .gt4_rxoutclk_out(NLW_inst_gt4_rxoutclk_out_UNCONNECTED),
        .gt4_rxoutclkfabric_out(NLW_inst_gt4_rxoutclkfabric_out_UNCONNECTED),
        .gt4_rxpcommaalignen_in(1'b0),
        .gt4_rxpcsreset_in(1'b0),
        .gt4_rxpd_in({1'b0,1'b0}),
        .gt4_rxpmareset_in(1'b0),
        .gt4_rxpolarity_in(1'b0),
        .gt4_rxprbscntreset_in(1'b0),
        .gt4_rxprbserr_out(NLW_inst_gt4_rxprbserr_out_UNCONNECTED),
        .gt4_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt4_rxresetdone_out(gt4_rxresetdone_out),
        .gt4_rxstatus_out(NLW_inst_gt4_rxstatus_out_UNCONNECTED[2:0]),
        .gt4_rxsysclksel_in({1'b1,1'b1}),
        .gt4_rxuserrdy_in(1'b1),
        .gt4_rxusrclk2_in(1'b0),
        .gt4_rxusrclk_in(1'b0),
        .gt4_txbufstatus_out(NLW_inst_gt4_txbufstatus_out_UNCONNECTED[1:0]),
        .gt4_txcharisk_in(gt4_txcharisk_in),
        .gt4_txdata_in(gt4_txdata_in),
        .gt4_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt4_txinhibit_in(1'b0),
        .gt4_txoutclk_out(NLW_inst_gt4_txoutclk_out_UNCONNECTED),
        .gt4_txoutclkfabric_out(NLW_inst_gt4_txoutclkfabric_out_UNCONNECTED),
        .gt4_txoutclkpcs_out(NLW_inst_gt4_txoutclkpcs_out_UNCONNECTED),
        .gt4_txpcsreset_in(1'b0),
        .gt4_txpd_in({1'b0,1'b0}),
        .gt4_txpmareset_in(1'b0),
        .gt4_txpolarity_in(1'b0),
        .gt4_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_txprbsforceerr_in(1'b0),
        .gt4_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt4_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt4_txresetdone_out(gt4_txresetdone_out),
        .gt4_txsysclksel_in({1'b1,1'b1}),
        .gt4_txuserrdy_in(1'b1),
        .gt4_txusrclk2_in(1'b0),
        .gt4_txusrclk_in(1'b0),
        .gt5_cpllfbclklost_out(NLW_inst_gt5_cpllfbclklost_out_UNCONNECTED),
        .gt5_cplllock_out(NLW_inst_gt5_cplllock_out_UNCONNECTED),
        .gt5_cplllockdetclk_in(1'b0),
        .gt5_cpllpd_in(1'b1),
        .gt5_cpllreset_in(1'b0),
        .gt5_data_valid_in(1'b1),
        .gt5_dmonitorout_out(NLW_inst_gt5_dmonitorout_out_UNCONNECTED[7:0]),
        .gt5_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_drpclk_in(1'b0),
        .gt5_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_drpdo_out(NLW_inst_gt5_drpdo_out_UNCONNECTED[15:0]),
        .gt5_drpen_in(1'b0),
        .gt5_drprdy_out(NLW_inst_gt5_drprdy_out_UNCONNECTED),
        .gt5_drpwe_in(1'b0),
        .gt5_eyescandataerror_out(NLW_inst_gt5_eyescandataerror_out_UNCONNECTED),
        .gt5_eyescanreset_in(1'b0),
        .gt5_eyescantrigger_in(1'b0),
        .gt5_gtnorthrefclk0_in(1'b0),
        .gt5_gtnorthrefclk1_in(1'b0),
        .gt5_gtrefclk0_in(1'b0),
        .gt5_gtrefclk1_in(1'b0),
        .gt5_gtrxreset_in(1'b0),
        .gt5_gtsouthrefclk0_in(1'b0),
        .gt5_gtsouthrefclk1_in(1'b0),
        .gt5_gttxreset_in(1'b0),
        .gt5_gtxrxn_in(gt5_gtxrxn_in),
        .gt5_gtxrxp_in(gt5_gtxrxp_in),
        .gt5_gtxtxn_out(gt5_gtxtxn_out),
        .gt5_gtxtxp_out(gt5_gtxtxp_out),
        .gt5_loopback_in({1'b0,1'b0,1'b0}),
        .gt5_rxbufreset_in(1'b0),
        .gt5_rxbufstatus_out(NLW_inst_gt5_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt5_rxbyteisaligned_out(NLW_inst_gt5_rxbyteisaligned_out_UNCONNECTED),
        .gt5_rxbyterealign_out(NLW_inst_gt5_rxbyterealign_out_UNCONNECTED),
        .gt5_rxcdrhold_in(1'b0),
        .gt5_rxchariscomma_out(NLW_inst_gt5_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt5_rxcharisk_out(gt5_rxcharisk_out),
        .gt5_rxcommadet_out(NLW_inst_gt5_rxcommadet_out_UNCONNECTED),
        .gt5_rxdata_out(gt5_rxdata_out),
        .gt5_rxdfelpmreset_in(1'b0),
        .gt5_rxdisperr_out(gt5_rxdisperr_out),
        .gt5_rxlpmen_in(1'b1),
        .gt5_rxmcommaalignen_in(1'b0),
        .gt5_rxmonitorout_out(NLW_inst_gt5_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt5_rxmonitorsel_in({1'b0,1'b0}),
        .gt5_rxnotintable_out(gt5_rxnotintable_out),
        .gt5_rxoutclk_out(NLW_inst_gt5_rxoutclk_out_UNCONNECTED),
        .gt5_rxoutclkfabric_out(NLW_inst_gt5_rxoutclkfabric_out_UNCONNECTED),
        .gt5_rxpcommaalignen_in(1'b0),
        .gt5_rxpcsreset_in(1'b0),
        .gt5_rxpd_in({1'b0,1'b0}),
        .gt5_rxpmareset_in(1'b0),
        .gt5_rxpolarity_in(1'b0),
        .gt5_rxprbscntreset_in(1'b0),
        .gt5_rxprbserr_out(NLW_inst_gt5_rxprbserr_out_UNCONNECTED),
        .gt5_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt5_rxresetdone_out(gt5_rxresetdone_out),
        .gt5_rxstatus_out(NLW_inst_gt5_rxstatus_out_UNCONNECTED[2:0]),
        .gt5_rxsysclksel_in({1'b1,1'b1}),
        .gt5_rxuserrdy_in(1'b1),
        .gt5_rxusrclk2_in(1'b0),
        .gt5_rxusrclk_in(1'b0),
        .gt5_txbufstatus_out(NLW_inst_gt5_txbufstatus_out_UNCONNECTED[1:0]),
        .gt5_txcharisk_in(gt5_txcharisk_in),
        .gt5_txdata_in(gt5_txdata_in),
        .gt5_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt5_txinhibit_in(1'b0),
        .gt5_txoutclk_out(NLW_inst_gt5_txoutclk_out_UNCONNECTED),
        .gt5_txoutclkfabric_out(NLW_inst_gt5_txoutclkfabric_out_UNCONNECTED),
        .gt5_txoutclkpcs_out(NLW_inst_gt5_txoutclkpcs_out_UNCONNECTED),
        .gt5_txpcsreset_in(1'b0),
        .gt5_txpd_in({1'b0,1'b0}),
        .gt5_txpmareset_in(1'b0),
        .gt5_txpolarity_in(1'b0),
        .gt5_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_txprbsforceerr_in(1'b0),
        .gt5_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt5_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt5_txresetdone_out(gt5_txresetdone_out),
        .gt5_txsysclksel_in({1'b1,1'b1}),
        .gt5_txuserrdy_in(1'b1),
        .gt5_txusrclk2_in(1'b0),
        .gt5_txusrclk_in(1'b0),
        .gt6_cpllfbclklost_out(NLW_inst_gt6_cpllfbclklost_out_UNCONNECTED),
        .gt6_cplllock_out(NLW_inst_gt6_cplllock_out_UNCONNECTED),
        .gt6_cplllockdetclk_in(1'b0),
        .gt6_cpllpd_in(1'b1),
        .gt6_cpllreset_in(1'b0),
        .gt6_data_valid_in(1'b1),
        .gt6_dmonitorout_out(NLW_inst_gt6_dmonitorout_out_UNCONNECTED[7:0]),
        .gt6_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_drpclk_in(1'b0),
        .gt6_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_drpdo_out(NLW_inst_gt6_drpdo_out_UNCONNECTED[15:0]),
        .gt6_drpen_in(1'b0),
        .gt6_drprdy_out(NLW_inst_gt6_drprdy_out_UNCONNECTED),
        .gt6_drpwe_in(1'b0),
        .gt6_eyescandataerror_out(NLW_inst_gt6_eyescandataerror_out_UNCONNECTED),
        .gt6_eyescanreset_in(1'b0),
        .gt6_eyescantrigger_in(1'b0),
        .gt6_gtnorthrefclk0_in(1'b0),
        .gt6_gtnorthrefclk1_in(1'b0),
        .gt6_gtrefclk0_in(1'b0),
        .gt6_gtrefclk1_in(1'b0),
        .gt6_gtrxreset_in(1'b0),
        .gt6_gtsouthrefclk0_in(1'b0),
        .gt6_gtsouthrefclk1_in(1'b0),
        .gt6_gttxreset_in(1'b0),
        .gt6_gtxrxn_in(gt6_gtxrxn_in),
        .gt6_gtxrxp_in(gt6_gtxrxp_in),
        .gt6_gtxtxn_out(gt6_gtxtxn_out),
        .gt6_gtxtxp_out(gt6_gtxtxp_out),
        .gt6_loopback_in({1'b0,1'b0,1'b0}),
        .gt6_rxbufreset_in(1'b0),
        .gt6_rxbufstatus_out(NLW_inst_gt6_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt6_rxbyteisaligned_out(NLW_inst_gt6_rxbyteisaligned_out_UNCONNECTED),
        .gt6_rxbyterealign_out(NLW_inst_gt6_rxbyterealign_out_UNCONNECTED),
        .gt6_rxcdrhold_in(1'b0),
        .gt6_rxchariscomma_out(NLW_inst_gt6_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt6_rxcharisk_out(gt6_rxcharisk_out),
        .gt6_rxcommadet_out(NLW_inst_gt6_rxcommadet_out_UNCONNECTED),
        .gt6_rxdata_out(gt6_rxdata_out),
        .gt6_rxdfelpmreset_in(1'b0),
        .gt6_rxdisperr_out(gt6_rxdisperr_out),
        .gt6_rxlpmen_in(1'b1),
        .gt6_rxmcommaalignen_in(1'b0),
        .gt6_rxmonitorout_out(NLW_inst_gt6_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt6_rxmonitorsel_in({1'b0,1'b0}),
        .gt6_rxnotintable_out(gt6_rxnotintable_out),
        .gt6_rxoutclk_out(NLW_inst_gt6_rxoutclk_out_UNCONNECTED),
        .gt6_rxoutclkfabric_out(NLW_inst_gt6_rxoutclkfabric_out_UNCONNECTED),
        .gt6_rxpcommaalignen_in(1'b0),
        .gt6_rxpcsreset_in(1'b0),
        .gt6_rxpd_in({1'b0,1'b0}),
        .gt6_rxpmareset_in(1'b0),
        .gt6_rxpolarity_in(1'b0),
        .gt6_rxprbscntreset_in(1'b0),
        .gt6_rxprbserr_out(NLW_inst_gt6_rxprbserr_out_UNCONNECTED),
        .gt6_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt6_rxresetdone_out(gt6_rxresetdone_out),
        .gt6_rxstatus_out(NLW_inst_gt6_rxstatus_out_UNCONNECTED[2:0]),
        .gt6_rxsysclksel_in({1'b1,1'b1}),
        .gt6_rxuserrdy_in(1'b1),
        .gt6_rxusrclk2_in(1'b0),
        .gt6_rxusrclk_in(1'b0),
        .gt6_txbufstatus_out(NLW_inst_gt6_txbufstatus_out_UNCONNECTED[1:0]),
        .gt6_txcharisk_in(gt6_txcharisk_in),
        .gt6_txdata_in(gt6_txdata_in),
        .gt6_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt6_txinhibit_in(1'b0),
        .gt6_txoutclk_out(NLW_inst_gt6_txoutclk_out_UNCONNECTED),
        .gt6_txoutclkfabric_out(NLW_inst_gt6_txoutclkfabric_out_UNCONNECTED),
        .gt6_txoutclkpcs_out(NLW_inst_gt6_txoutclkpcs_out_UNCONNECTED),
        .gt6_txpcsreset_in(1'b0),
        .gt6_txpd_in({1'b0,1'b0}),
        .gt6_txpmareset_in(1'b0),
        .gt6_txpolarity_in(1'b0),
        .gt6_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_txprbsforceerr_in(1'b0),
        .gt6_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt6_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt6_txresetdone_out(gt6_txresetdone_out),
        .gt6_txsysclksel_in({1'b1,1'b1}),
        .gt6_txuserrdy_in(1'b1),
        .gt6_txusrclk2_in(1'b0),
        .gt6_txusrclk_in(1'b0),
        .gt7_cpllfbclklost_out(NLW_inst_gt7_cpllfbclklost_out_UNCONNECTED),
        .gt7_cplllock_out(NLW_inst_gt7_cplllock_out_UNCONNECTED),
        .gt7_cplllockdetclk_in(1'b0),
        .gt7_cpllpd_in(1'b1),
        .gt7_cpllreset_in(1'b0),
        .gt7_data_valid_in(1'b1),
        .gt7_dmonitorout_out(NLW_inst_gt7_dmonitorout_out_UNCONNECTED[7:0]),
        .gt7_drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_drpclk_in(1'b0),
        .gt7_drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_drpdo_out(NLW_inst_gt7_drpdo_out_UNCONNECTED[15:0]),
        .gt7_drpen_in(1'b0),
        .gt7_drprdy_out(NLW_inst_gt7_drprdy_out_UNCONNECTED),
        .gt7_drpwe_in(1'b0),
        .gt7_eyescandataerror_out(NLW_inst_gt7_eyescandataerror_out_UNCONNECTED),
        .gt7_eyescanreset_in(1'b0),
        .gt7_eyescantrigger_in(1'b0),
        .gt7_gtnorthrefclk0_in(1'b0),
        .gt7_gtnorthrefclk1_in(1'b0),
        .gt7_gtrefclk0_in(1'b0),
        .gt7_gtrefclk1_in(1'b0),
        .gt7_gtrxreset_in(1'b0),
        .gt7_gtsouthrefclk0_in(1'b0),
        .gt7_gtsouthrefclk1_in(1'b0),
        .gt7_gttxreset_in(1'b0),
        .gt7_gtxrxn_in(gt7_gtxrxn_in),
        .gt7_gtxrxp_in(gt7_gtxrxp_in),
        .gt7_gtxtxn_out(gt7_gtxtxn_out),
        .gt7_gtxtxp_out(gt7_gtxtxp_out),
        .gt7_loopback_in({1'b0,1'b0,1'b0}),
        .gt7_rxbufreset_in(1'b0),
        .gt7_rxbufstatus_out(NLW_inst_gt7_rxbufstatus_out_UNCONNECTED[2:0]),
        .gt7_rxbyteisaligned_out(NLW_inst_gt7_rxbyteisaligned_out_UNCONNECTED),
        .gt7_rxbyterealign_out(NLW_inst_gt7_rxbyterealign_out_UNCONNECTED),
        .gt7_rxcdrhold_in(1'b0),
        .gt7_rxchariscomma_out(NLW_inst_gt7_rxchariscomma_out_UNCONNECTED[3:0]),
        .gt7_rxcharisk_out(gt7_rxcharisk_out),
        .gt7_rxcommadet_out(NLW_inst_gt7_rxcommadet_out_UNCONNECTED),
        .gt7_rxdata_out(gt7_rxdata_out),
        .gt7_rxdfelpmreset_in(1'b0),
        .gt7_rxdisperr_out(gt7_rxdisperr_out),
        .gt7_rxlpmen_in(1'b1),
        .gt7_rxmcommaalignen_in(1'b0),
        .gt7_rxmonitorout_out(NLW_inst_gt7_rxmonitorout_out_UNCONNECTED[6:0]),
        .gt7_rxmonitorsel_in({1'b0,1'b0}),
        .gt7_rxnotintable_out(gt7_rxnotintable_out),
        .gt7_rxoutclk_out(NLW_inst_gt7_rxoutclk_out_UNCONNECTED),
        .gt7_rxoutclkfabric_out(NLW_inst_gt7_rxoutclkfabric_out_UNCONNECTED),
        .gt7_rxpcommaalignen_in(1'b0),
        .gt7_rxpcsreset_in(1'b0),
        .gt7_rxpd_in({1'b0,1'b0}),
        .gt7_rxpmareset_in(1'b0),
        .gt7_rxpolarity_in(1'b0),
        .gt7_rxprbscntreset_in(1'b0),
        .gt7_rxprbserr_out(NLW_inst_gt7_rxprbserr_out_UNCONNECTED),
        .gt7_rxprbssel_in({1'b0,1'b0,1'b0}),
        .gt7_rxresetdone_out(gt7_rxresetdone_out),
        .gt7_rxstatus_out(NLW_inst_gt7_rxstatus_out_UNCONNECTED[2:0]),
        .gt7_rxsysclksel_in({1'b1,1'b1}),
        .gt7_rxuserrdy_in(1'b1),
        .gt7_rxusrclk2_in(1'b0),
        .gt7_rxusrclk_in(1'b0),
        .gt7_txbufstatus_out(NLW_inst_gt7_txbufstatus_out_UNCONNECTED[1:0]),
        .gt7_txcharisk_in(gt7_txcharisk_in),
        .gt7_txdata_in(gt7_txdata_in),
        .gt7_txdiffctrl_in({1'b1,1'b0,1'b0,1'b0}),
        .gt7_txinhibit_in(1'b0),
        .gt7_txoutclk_out(NLW_inst_gt7_txoutclk_out_UNCONNECTED),
        .gt7_txoutclkfabric_out(NLW_inst_gt7_txoutclkfabric_out_UNCONNECTED),
        .gt7_txoutclkpcs_out(NLW_inst_gt7_txoutclkpcs_out_UNCONNECTED),
        .gt7_txpcsreset_in(1'b0),
        .gt7_txpd_in({1'b0,1'b0}),
        .gt7_txpmareset_in(1'b0),
        .gt7_txpolarity_in(1'b0),
        .gt7_txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_txprbsforceerr_in(1'b0),
        .gt7_txprbssel_in({1'b0,1'b0,1'b0}),
        .gt7_txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt7_txresetdone_out(gt7_txresetdone_out),
        .gt7_txsysclksel_in({1'b1,1'b1}),
        .gt7_txuserrdy_in(1'b1),
        .gt7_txusrclk2_in(1'b0),
        .gt7_txusrclk_in(1'b0),
        .gt_rx_fsm_reset_done_out(gt_rx_fsm_reset_done_out),
        .gt_tx_fsm_reset_done_out(gt_tx_fsm_reset_done_out),
        .soft_reset_rx_in(soft_reset_rx_in),
        .soft_reset_tx_in(soft_reset_tx_in),
        .sysclk_in(sysclk_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT
   (gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_rxoutclk_out,
    gt0_rxresetdone_out,
    gt0_txoutclk_out,
    gt0_txresetdone_out,
    gt0_rxdata_out,
    gt0_rxcharisk_out,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt0_cpllreset_in,
    sysclk_in,
    gt6_gtrxreset_in,
    gt6_gttxreset_in,
    gt0_gtxrxn_in,
    gt0_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt0_txdata_in,
    gt0_txcharisk_in);
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_rxoutclk_out;
  output gt0_rxresetdone_out;
  output gt0_txoutclk_out;
  output gt0_txresetdone_out;
  output [31:0]gt0_rxdata_out;
  output [3:0]gt0_rxcharisk_out;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  input gt0_cpllreset_in;
  input sysclk_in;
  input gt6_gtrxreset_in;
  input gt6_gttxreset_in;
  input gt0_gtxrxn_in;
  input gt0_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt0_txdata_in;
  input [3:0]gt0_txcharisk_in;

  wire gt0_cpllreset_in;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire [3:0]gt0_rxcharisk_out;
  wire [31:0]gt0_rxdata_out;
  wire [3:0]gt0_rxdisperr_out;
  wire gt0_rxmcommaalignen_in;
  wire [3:0]gt0_rxnotintable_out;
  wire gt0_rxoutclk_out;
  wire gt0_rxresetdone_out;
  wire gt0_rxusrclk_in;
  wire [3:0]gt0_txcharisk_in;
  wire [31:0]gt0_txdata_in;
  wire gt0_txoutclk_out;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txresetdone_out;
  wire gt0_txusrclk_in;
  wire gt6_gtrxreset_in;
  wire gt6_gttxreset_in;
  wire gt7_rxuserrdy_in;
  wire gt7_txuserrdy_in;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_1;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_189;
  wire gtxe2_i_n_190;
  wire gtxe2_i_n_191;
  wire gtxe2_i_n_192;
  wire gtxe2_i_n_2;
  wire gtxe2_i_n_24;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_80;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_88;
  wire gtxe2_i_n_89;
  wire gtxe2_i_n_9;
  wire gtxe2_i_n_90;
  wire sysclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(8),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(8),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_n_1),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(sysclk_in),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt6_gtrxreset_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt6_gttxreset_in),
        .GTXRXN(gt0_gtxrxn_in),
        .GTXRXP(gt0_gtxrxp_in),
        .GTXTXN(gt0_gtxtxn_out),
        .GTXTXP(gt0_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gtxe2_i_n_189,gtxe2_i_n_190,gtxe2_i_n_191,gtxe2_i_n_192}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt0_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt0_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt0_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt0_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt0_rxoutclk_out),
        .RXOUTCLKFABRIC(gtxe2_i_n_24),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt0_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS({gtxe2_i_n_88,gtxe2_i_n_89,gtxe2_i_n_90}),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(gt7_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gtxe2_i_n_80,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt0_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt0_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt0_txoutclk_out),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt0_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(gt7_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_GT" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_12
   (gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_rxresetdone_out,
    gt1_txresetdone_out,
    gt1_rxdata_out,
    gt1_rxcharisk_out,
    gt1_rxdisperr_out,
    gt1_rxnotintable_out,
    gt0_cpllreset_in,
    sysclk_in,
    gt6_gtrxreset_in,
    gt6_gttxreset_in,
    gt1_gtxrxn_in,
    gt1_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt1_txdata_in,
    gt1_txcharisk_in);
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_rxresetdone_out;
  output gt1_txresetdone_out;
  output [31:0]gt1_rxdata_out;
  output [3:0]gt1_rxcharisk_out;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  input gt0_cpllreset_in;
  input sysclk_in;
  input gt6_gtrxreset_in;
  input gt6_gttxreset_in;
  input gt1_gtxrxn_in;
  input gt1_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt1_txdata_in;
  input [3:0]gt1_txcharisk_in;

  wire gt0_cpllreset_in;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt0_rxmcommaalignen_in;
  wire gt0_rxusrclk_in;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txusrclk_in;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire [3:0]gt1_rxcharisk_out;
  wire [31:0]gt1_rxdata_out;
  wire [3:0]gt1_rxdisperr_out;
  wire [3:0]gt1_rxnotintable_out;
  wire gt1_rxresetdone_out;
  wire [3:0]gt1_txcharisk_in;
  wire [31:0]gt1_txdata_in;
  wire gt1_txresetdone_out;
  wire gt6_gtrxreset_in;
  wire gt6_gttxreset_in;
  wire gt7_rxuserrdy_in;
  wire gt7_txuserrdy_in;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_1;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_189;
  wire gtxe2_i_n_190;
  wire gtxe2_i_n_191;
  wire gtxe2_i_n_192;
  wire gtxe2_i_n_2;
  wire gtxe2_i_n_23;
  wire gtxe2_i_n_24;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_37;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_80;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_88;
  wire gtxe2_i_n_89;
  wire gtxe2_i_n_9;
  wire gtxe2_i_n_90;
  wire sysclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(8),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(8),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_n_1),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(sysclk_in),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt6_gtrxreset_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt6_gttxreset_in),
        .GTXRXN(gt1_gtxrxn_in),
        .GTXRXP(gt1_gtxrxp_in),
        .GTXTXN(gt1_gtxtxn_out),
        .GTXTXP(gt1_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gtxe2_i_n_189,gtxe2_i_n_190,gtxe2_i_n_191,gtxe2_i_n_192}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt1_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt1_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt1_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt1_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtxe2_i_n_23),
        .RXOUTCLKFABRIC(gtxe2_i_n_24),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt1_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS({gtxe2_i_n_88,gtxe2_i_n_89,gtxe2_i_n_90}),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(gt7_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gtxe2_i_n_80,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt1_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt1_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gtxe2_i_n_37),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt1_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(gt7_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_GT" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_13
   (gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_rxresetdone_out,
    gt2_txresetdone_out,
    gt2_rxdata_out,
    gt2_rxcharisk_out,
    gt2_rxdisperr_out,
    gt2_rxnotintable_out,
    gt0_cpllreset_in,
    sysclk_in,
    gt6_gtrxreset_in,
    gt6_gttxreset_in,
    gt2_gtxrxn_in,
    gt2_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt2_txdata_in,
    gt2_txcharisk_in);
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_rxresetdone_out;
  output gt2_txresetdone_out;
  output [31:0]gt2_rxdata_out;
  output [3:0]gt2_rxcharisk_out;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  input gt0_cpllreset_in;
  input sysclk_in;
  input gt6_gtrxreset_in;
  input gt6_gttxreset_in;
  input gt2_gtxrxn_in;
  input gt2_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt2_txdata_in;
  input [3:0]gt2_txcharisk_in;

  wire gt0_cpllreset_in;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt0_rxmcommaalignen_in;
  wire gt0_rxusrclk_in;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txusrclk_in;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [3:0]gt2_rxcharisk_out;
  wire [31:0]gt2_rxdata_out;
  wire [3:0]gt2_rxdisperr_out;
  wire [3:0]gt2_rxnotintable_out;
  wire gt2_rxresetdone_out;
  wire [3:0]gt2_txcharisk_in;
  wire [31:0]gt2_txdata_in;
  wire gt2_txresetdone_out;
  wire gt6_gtrxreset_in;
  wire gt6_gttxreset_in;
  wire gt7_rxuserrdy_in;
  wire gt7_txuserrdy_in;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_1;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_189;
  wire gtxe2_i_n_190;
  wire gtxe2_i_n_191;
  wire gtxe2_i_n_192;
  wire gtxe2_i_n_2;
  wire gtxe2_i_n_23;
  wire gtxe2_i_n_24;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_37;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_80;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_88;
  wire gtxe2_i_n_89;
  wire gtxe2_i_n_9;
  wire gtxe2_i_n_90;
  wire sysclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(8),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(8),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_n_1),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(sysclk_in),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt6_gtrxreset_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt6_gttxreset_in),
        .GTXRXN(gt2_gtxrxn_in),
        .GTXRXP(gt2_gtxrxp_in),
        .GTXTXN(gt2_gtxtxn_out),
        .GTXTXP(gt2_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gtxe2_i_n_189,gtxe2_i_n_190,gtxe2_i_n_191,gtxe2_i_n_192}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt2_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt2_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt2_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt2_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtxe2_i_n_23),
        .RXOUTCLKFABRIC(gtxe2_i_n_24),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt2_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS({gtxe2_i_n_88,gtxe2_i_n_89,gtxe2_i_n_90}),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(gt7_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gtxe2_i_n_80,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt2_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt2_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gtxe2_i_n_37),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt2_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(gt7_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_GT" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_14
   (gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_rxresetdone_out,
    gt3_txresetdone_out,
    gt3_rxdata_out,
    gt3_rxcharisk_out,
    gt3_rxdisperr_out,
    gt3_rxnotintable_out,
    gtxe2_i_0,
    gtxe2_i_1,
    gt0_cpllreset_in,
    sysclk_in,
    gt6_gtrxreset_in,
    gt6_gttxreset_in,
    gt3_gtxrxn_in,
    gt3_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt3_txdata_in,
    gt3_txcharisk_in,
    gt4_txresetdone_out,
    gt1_txresetdone_out,
    gt2_txresetdone_out,
    gt4_rxresetdone_out,
    gt1_rxresetdone_out,
    gt2_rxresetdone_out);
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_rxresetdone_out;
  output gt3_txresetdone_out;
  output [31:0]gt3_rxdata_out;
  output [3:0]gt3_rxcharisk_out;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  output gtxe2_i_0;
  output gtxe2_i_1;
  input gt0_cpllreset_in;
  input sysclk_in;
  input gt6_gtrxreset_in;
  input gt6_gttxreset_in;
  input gt3_gtxrxn_in;
  input gt3_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt3_txdata_in;
  input [3:0]gt3_txcharisk_in;
  input gt4_txresetdone_out;
  input gt1_txresetdone_out;
  input gt2_txresetdone_out;
  input gt4_rxresetdone_out;
  input gt1_rxresetdone_out;
  input gt2_rxresetdone_out;

  wire gt0_cpllreset_in;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt0_rxmcommaalignen_in;
  wire gt0_rxusrclk_in;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txusrclk_in;
  wire gt1_rxresetdone_out;
  wire gt1_txresetdone_out;
  wire gt2_rxresetdone_out;
  wire gt2_txresetdone_out;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [3:0]gt3_rxcharisk_out;
  wire [31:0]gt3_rxdata_out;
  wire [3:0]gt3_rxdisperr_out;
  wire [3:0]gt3_rxnotintable_out;
  wire gt3_rxresetdone_out;
  wire [3:0]gt3_txcharisk_in;
  wire [31:0]gt3_txdata_in;
  wire gt3_txresetdone_out;
  wire gt4_rxresetdone_out;
  wire gt4_txresetdone_out;
  wire gt6_gtrxreset_in;
  wire gt6_gttxreset_in;
  wire gt7_rxuserrdy_in;
  wire gt7_txuserrdy_in;
  wire gtxe2_i_0;
  wire gtxe2_i_1;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_1;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_189;
  wire gtxe2_i_n_190;
  wire gtxe2_i_n_191;
  wire gtxe2_i_n_192;
  wire gtxe2_i_n_2;
  wire gtxe2_i_n_23;
  wire gtxe2_i_n_24;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_37;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_80;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_88;
  wire gtxe2_i_n_89;
  wire gtxe2_i_n_9;
  wire gtxe2_i_n_90;
  wire sysclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  LUT4 #(
    .INIT(16'h7FFF)) 
    data_sync1_i_2
       (.I0(gt3_txresetdone_out),
        .I1(gt4_txresetdone_out),
        .I2(gt1_txresetdone_out),
        .I3(gt2_txresetdone_out),
        .O(gtxe2_i_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    data_sync1_i_2__0
       (.I0(gt3_rxresetdone_out),
        .I1(gt4_rxresetdone_out),
        .I2(gt1_rxresetdone_out),
        .I3(gt2_rxresetdone_out),
        .O(gtxe2_i_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(8),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(8),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_n_1),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(sysclk_in),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt6_gtrxreset_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt6_gttxreset_in),
        .GTXRXN(gt3_gtxrxn_in),
        .GTXRXP(gt3_gtxrxp_in),
        .GTXTXN(gt3_gtxtxn_out),
        .GTXTXP(gt3_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gtxe2_i_n_189,gtxe2_i_n_190,gtxe2_i_n_191,gtxe2_i_n_192}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt3_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt3_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt3_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt3_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtxe2_i_n_23),
        .RXOUTCLKFABRIC(gtxe2_i_n_24),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt3_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS({gtxe2_i_n_88,gtxe2_i_n_89,gtxe2_i_n_90}),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(gt7_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gtxe2_i_n_80,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt3_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt3_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gtxe2_i_n_37),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt3_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(gt7_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_GT" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_15
   (gt4_gtxtxn_out,
    gt4_gtxtxp_out,
    gt4_rxresetdone_out,
    gt4_txresetdone_out,
    gt4_rxdata_out,
    gt4_rxcharisk_out,
    gt4_rxdisperr_out,
    gt4_rxnotintable_out,
    gt0_cpllreset_in,
    sysclk_in,
    gt6_gtrxreset_in,
    gt6_gttxreset_in,
    gt4_gtxrxn_in,
    gt4_gtxrxp_in,
    gt1_qplloutclk_in,
    gt1_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt4_txdata_in,
    gt4_txcharisk_in);
  output gt4_gtxtxn_out;
  output gt4_gtxtxp_out;
  output gt4_rxresetdone_out;
  output gt4_txresetdone_out;
  output [31:0]gt4_rxdata_out;
  output [3:0]gt4_rxcharisk_out;
  output [3:0]gt4_rxdisperr_out;
  output [3:0]gt4_rxnotintable_out;
  input gt0_cpllreset_in;
  input sysclk_in;
  input gt6_gtrxreset_in;
  input gt6_gttxreset_in;
  input gt4_gtxrxn_in;
  input gt4_gtxrxp_in;
  input gt1_qplloutclk_in;
  input gt1_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt4_txdata_in;
  input [3:0]gt4_txcharisk_in;

  wire gt0_cpllreset_in;
  wire gt0_rxmcommaalignen_in;
  wire gt0_rxusrclk_in;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txusrclk_in;
  wire gt1_qplloutclk_in;
  wire gt1_qplloutrefclk_in;
  wire gt4_gtxrxn_in;
  wire gt4_gtxrxp_in;
  wire gt4_gtxtxn_out;
  wire gt4_gtxtxp_out;
  wire [3:0]gt4_rxcharisk_out;
  wire [31:0]gt4_rxdata_out;
  wire [3:0]gt4_rxdisperr_out;
  wire [3:0]gt4_rxnotintable_out;
  wire gt4_rxresetdone_out;
  wire [3:0]gt4_txcharisk_in;
  wire [31:0]gt4_txdata_in;
  wire gt4_txresetdone_out;
  wire gt6_gtrxreset_in;
  wire gt6_gttxreset_in;
  wire gt7_rxuserrdy_in;
  wire gt7_txuserrdy_in;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_1;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_189;
  wire gtxe2_i_n_190;
  wire gtxe2_i_n_191;
  wire gtxe2_i_n_192;
  wire gtxe2_i_n_2;
  wire gtxe2_i_n_23;
  wire gtxe2_i_n_24;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_37;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_80;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_88;
  wire gtxe2_i_n_89;
  wire gtxe2_i_n_9;
  wire gtxe2_i_n_90;
  wire sysclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(8),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(8),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_n_1),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(sysclk_in),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt6_gtrxreset_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt6_gttxreset_in),
        .GTXRXN(gt4_gtxrxn_in),
        .GTXRXP(gt4_gtxrxp_in),
        .GTXTXN(gt4_gtxtxn_out),
        .GTXTXP(gt4_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt1_qplloutclk_in),
        .QPLLREFCLK(gt1_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gtxe2_i_n_189,gtxe2_i_n_190,gtxe2_i_n_191,gtxe2_i_n_192}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt4_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt4_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt4_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt4_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtxe2_i_n_23),
        .RXOUTCLKFABRIC(gtxe2_i_n_24),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt4_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS({gtxe2_i_n_88,gtxe2_i_n_89,gtxe2_i_n_90}),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(gt7_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gtxe2_i_n_80,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt4_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt4_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gtxe2_i_n_37),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt4_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(gt7_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_GT" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_16
   (gt5_gtxtxn_out,
    gt5_gtxtxp_out,
    gt5_rxresetdone_out,
    gt5_txresetdone_out,
    gt5_rxdata_out,
    gt5_rxcharisk_out,
    gt5_rxdisperr_out,
    gt5_rxnotintable_out,
    gt0_cpllreset_in,
    sysclk_in,
    gt6_gtrxreset_in,
    gt6_gttxreset_in,
    gt5_gtxrxn_in,
    gt5_gtxrxp_in,
    gt1_qplloutclk_in,
    gt1_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt5_txdata_in,
    gt5_txcharisk_in);
  output gt5_gtxtxn_out;
  output gt5_gtxtxp_out;
  output gt5_rxresetdone_out;
  output gt5_txresetdone_out;
  output [31:0]gt5_rxdata_out;
  output [3:0]gt5_rxcharisk_out;
  output [3:0]gt5_rxdisperr_out;
  output [3:0]gt5_rxnotintable_out;
  input gt0_cpllreset_in;
  input sysclk_in;
  input gt6_gtrxreset_in;
  input gt6_gttxreset_in;
  input gt5_gtxrxn_in;
  input gt5_gtxrxp_in;
  input gt1_qplloutclk_in;
  input gt1_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt5_txdata_in;
  input [3:0]gt5_txcharisk_in;

  wire gt0_cpllreset_in;
  wire gt0_rxmcommaalignen_in;
  wire gt0_rxusrclk_in;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txusrclk_in;
  wire gt1_qplloutclk_in;
  wire gt1_qplloutrefclk_in;
  wire gt5_gtxrxn_in;
  wire gt5_gtxrxp_in;
  wire gt5_gtxtxn_out;
  wire gt5_gtxtxp_out;
  wire [3:0]gt5_rxcharisk_out;
  wire [31:0]gt5_rxdata_out;
  wire [3:0]gt5_rxdisperr_out;
  wire [3:0]gt5_rxnotintable_out;
  wire gt5_rxresetdone_out;
  wire [3:0]gt5_txcharisk_in;
  wire [31:0]gt5_txdata_in;
  wire gt5_txresetdone_out;
  wire gt6_gtrxreset_in;
  wire gt6_gttxreset_in;
  wire gt7_rxuserrdy_in;
  wire gt7_txuserrdy_in;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_1;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_189;
  wire gtxe2_i_n_190;
  wire gtxe2_i_n_191;
  wire gtxe2_i_n_192;
  wire gtxe2_i_n_2;
  wire gtxe2_i_n_23;
  wire gtxe2_i_n_24;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_37;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_80;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_88;
  wire gtxe2_i_n_89;
  wire gtxe2_i_n_9;
  wire gtxe2_i_n_90;
  wire sysclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(8),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(8),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_n_1),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(sysclk_in),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt6_gtrxreset_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt6_gttxreset_in),
        .GTXRXN(gt5_gtxrxn_in),
        .GTXRXP(gt5_gtxrxp_in),
        .GTXTXN(gt5_gtxtxn_out),
        .GTXTXP(gt5_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt1_qplloutclk_in),
        .QPLLREFCLK(gt1_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gtxe2_i_n_189,gtxe2_i_n_190,gtxe2_i_n_191,gtxe2_i_n_192}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt5_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt5_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt5_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt5_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtxe2_i_n_23),
        .RXOUTCLKFABRIC(gtxe2_i_n_24),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt5_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS({gtxe2_i_n_88,gtxe2_i_n_89,gtxe2_i_n_90}),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(gt7_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gtxe2_i_n_80,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt5_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt5_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gtxe2_i_n_37),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt5_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(gt7_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_GT" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_17
   (gt6_gtxtxn_out,
    gt6_gtxtxp_out,
    gt6_rxresetdone_out,
    gt6_txresetdone_out,
    gt6_rxdata_out,
    gt6_rxcharisk_out,
    gt6_rxdisperr_out,
    gt6_rxnotintable_out,
    data_in,
    gtxe2_i_0,
    gt0_cpllreset_in,
    sysclk_in,
    gt6_gtrxreset_in,
    gt6_gttxreset_in,
    gt6_gtxrxn_in,
    gt6_gtxrxp_in,
    gt1_qplloutclk_in,
    gt1_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt6_txdata_in,
    gt6_txcharisk_in,
    gt5_txresetdone_out,
    gt0_txresetdone_out,
    gt7_txresetdone_out,
    data_sync_reg1,
    gt5_rxresetdone_out,
    gt0_rxresetdone_out,
    gt7_rxresetdone_out,
    data_sync_reg1_0);
  output gt6_gtxtxn_out;
  output gt6_gtxtxp_out;
  output gt6_rxresetdone_out;
  output gt6_txresetdone_out;
  output [31:0]gt6_rxdata_out;
  output [3:0]gt6_rxcharisk_out;
  output [3:0]gt6_rxdisperr_out;
  output [3:0]gt6_rxnotintable_out;
  output data_in;
  output gtxe2_i_0;
  input gt0_cpllreset_in;
  input sysclk_in;
  input gt6_gtrxreset_in;
  input gt6_gttxreset_in;
  input gt6_gtxrxn_in;
  input gt6_gtxrxp_in;
  input gt1_qplloutclk_in;
  input gt1_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt6_txdata_in;
  input [3:0]gt6_txcharisk_in;
  input gt5_txresetdone_out;
  input gt0_txresetdone_out;
  input gt7_txresetdone_out;
  input data_sync_reg1;
  input gt5_rxresetdone_out;
  input gt0_rxresetdone_out;
  input gt7_rxresetdone_out;
  input data_sync_reg1_0;

  wire data_in;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire gt0_cpllreset_in;
  wire gt0_rxmcommaalignen_in;
  wire gt0_rxresetdone_out;
  wire gt0_rxusrclk_in;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txresetdone_out;
  wire gt0_txusrclk_in;
  wire gt1_qplloutclk_in;
  wire gt1_qplloutrefclk_in;
  wire gt5_rxresetdone_out;
  wire gt5_txresetdone_out;
  wire gt6_gtrxreset_in;
  wire gt6_gttxreset_in;
  wire gt6_gtxrxn_in;
  wire gt6_gtxrxp_in;
  wire gt6_gtxtxn_out;
  wire gt6_gtxtxp_out;
  wire [3:0]gt6_rxcharisk_out;
  wire [31:0]gt6_rxdata_out;
  wire [3:0]gt6_rxdisperr_out;
  wire [3:0]gt6_rxnotintable_out;
  wire gt6_rxresetdone_out;
  wire [3:0]gt6_txcharisk_in;
  wire [31:0]gt6_txdata_in;
  wire gt6_txresetdone_out;
  wire gt7_rxresetdone_out;
  wire gt7_rxuserrdy_in;
  wire gt7_txresetdone_out;
  wire gt7_txuserrdy_in;
  wire gtxe2_i_0;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_1;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_189;
  wire gtxe2_i_n_190;
  wire gtxe2_i_n_191;
  wire gtxe2_i_n_192;
  wire gtxe2_i_n_2;
  wire gtxe2_i_n_23;
  wire gtxe2_i_n_24;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_37;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_80;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_88;
  wire gtxe2_i_n_89;
  wire gtxe2_i_n_9;
  wire gtxe2_i_n_90;
  wire sysclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00008000)) 
    data_sync1_i_1
       (.I0(gt6_txresetdone_out),
        .I1(gt5_txresetdone_out),
        .I2(gt0_txresetdone_out),
        .I3(gt7_txresetdone_out),
        .I4(data_sync_reg1),
        .O(data_in));
  LUT5 #(
    .INIT(32'h00008000)) 
    data_sync1_i_1__0
       (.I0(gt6_rxresetdone_out),
        .I1(gt5_rxresetdone_out),
        .I2(gt0_rxresetdone_out),
        .I3(gt7_rxresetdone_out),
        .I4(data_sync_reg1_0),
        .O(gtxe2_i_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(8),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(8),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_n_1),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(sysclk_in),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt6_gtrxreset_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt6_gttxreset_in),
        .GTXRXN(gt6_gtxrxn_in),
        .GTXRXP(gt6_gtxrxp_in),
        .GTXTXN(gt6_gtxtxn_out),
        .GTXTXP(gt6_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt1_qplloutclk_in),
        .QPLLREFCLK(gt1_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gtxe2_i_n_189,gtxe2_i_n_190,gtxe2_i_n_191,gtxe2_i_n_192}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt6_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt6_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt6_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt6_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtxe2_i_n_23),
        .RXOUTCLKFABRIC(gtxe2_i_n_24),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt6_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS({gtxe2_i_n_88,gtxe2_i_n_89,gtxe2_i_n_90}),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(gt7_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gtxe2_i_n_80,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt6_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt6_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gtxe2_i_n_37),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt6_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(gt7_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_GT" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_18
   (gt7_gtxtxn_out,
    gt7_gtxtxp_out,
    gt7_rxresetdone_out,
    gt7_txresetdone_out,
    gt7_rxdata_out,
    gt7_rxcharisk_out,
    gt7_rxdisperr_out,
    gt7_rxnotintable_out,
    gt0_cpllreset_in,
    sysclk_in,
    SR,
    gt7_gttxreset_in,
    gt7_gtxrxn_in,
    gt7_gtxrxp_in,
    gt1_qplloutclk_in,
    gt1_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt7_txdata_in,
    gt7_txcharisk_in);
  output gt7_gtxtxn_out;
  output gt7_gtxtxp_out;
  output gt7_rxresetdone_out;
  output gt7_txresetdone_out;
  output [31:0]gt7_rxdata_out;
  output [3:0]gt7_rxcharisk_out;
  output [3:0]gt7_rxdisperr_out;
  output [3:0]gt7_rxnotintable_out;
  input gt0_cpllreset_in;
  input sysclk_in;
  input [0:0]SR;
  input gt7_gttxreset_in;
  input gt7_gtxrxn_in;
  input gt7_gtxrxp_in;
  input gt1_qplloutclk_in;
  input gt1_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt7_txdata_in;
  input [3:0]gt7_txcharisk_in;

  wire [0:0]SR;
  wire gt0_cpllreset_in;
  wire gt0_rxmcommaalignen_in;
  wire gt0_rxusrclk_in;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txusrclk_in;
  wire gt1_qplloutclk_in;
  wire gt1_qplloutrefclk_in;
  wire gt7_gttxreset_in;
  wire gt7_gtxrxn_in;
  wire gt7_gtxrxp_in;
  wire gt7_gtxtxn_out;
  wire gt7_gtxtxp_out;
  wire [3:0]gt7_rxcharisk_out;
  wire [31:0]gt7_rxdata_out;
  wire [3:0]gt7_rxdisperr_out;
  wire [3:0]gt7_rxnotintable_out;
  wire gt7_rxresetdone_out;
  wire gt7_rxuserrdy_in;
  wire [3:0]gt7_txcharisk_in;
  wire [31:0]gt7_txdata_in;
  wire gt7_txresetdone_out;
  wire gt7_txuserrdy_in;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_1;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_189;
  wire gtxe2_i_n_190;
  wire gtxe2_i_n_191;
  wire gtxe2_i_n_192;
  wire gtxe2_i_n_2;
  wire gtxe2_i_n_23;
  wire gtxe2_i_n_24;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_37;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_80;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_82;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_88;
  wire gtxe2_i_n_89;
  wire gtxe2_i_n_9;
  wire gtxe2_i_n_90;
  wire sysclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(12),
    .CLK_COR_MIN_LAT(8),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(57),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(3),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(8),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0104),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b111),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b111),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(8),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_n_1),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(gtxe2_i_n_2),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(sysclk_in),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(SR),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt7_gttxreset_in),
        .GTXRXN(gt7_gtxrxn_in),
        .GTXRXP(gt7_gtxrxp_in),
        .GTXTXN(gt7_gtxtxn_out),
        .GTXTXP(gt7_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt1_qplloutclk_in),
        .QPLLREFCLK(gt1_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtxe2_i_n_82,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],gtxe2_i_n_189,gtxe2_i_n_190,gtxe2_i_n_191,gtxe2_i_n_192}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],gt7_rxcharisk_out}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt7_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],gt7_rxdisperr_out}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],gt7_rxnotintable_out}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtxe2_i_n_23),
        .RXOUTCLKFABRIC(gtxe2_i_n_24),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt7_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS({gtxe2_i_n_88,gtxe2_i_n_89,gtxe2_i_n_90}),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(gt7_rxuserrdy_in),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gtxe2_i_n_80,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,gt7_txcharisk_in}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt7_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gtxe2_i_n_37),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt7_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(gt7_txuserrdy_in),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_RX_STARTUP_FSM
   (gt_rx_qpllreset_t,
    gt0_cpllreset_in,
    gt_rx_fsm_reset_done_out,
    gt7_rxuserrdy_in,
    data_in,
    SR,
    gtrxreset_i_reg_0,
    sysclk_in,
    gt0_rxusrclk_in,
    soft_reset_rx_in,
    \FSM_sequential_rx_state[3]_i_4_0 ,
    \FSM_sequential_rx_state[3]_i_4_1 ,
    \FSM_sequential_rx_state[3]_i_4_2 ,
    \FSM_sequential_rx_state[3]_i_4_3 ,
    \FSM_sequential_rx_state[3]_i_4_4 ,
    \FSM_sequential_rx_state[3]_i_4_5 ,
    \FSM_sequential_rx_state[3]_i_4_6 ,
    \FSM_sequential_rx_state[3]_i_4_7 ,
    gt0_qplllock_in,
    gt1_qplllock_in,
    data_sync_reg1,
    gt0_gtrxreset_in);
  output gt_rx_qpllreset_t;
  output gt0_cpllreset_in;
  output gt_rx_fsm_reset_done_out;
  output gt7_rxuserrdy_in;
  output data_in;
  output [0:0]SR;
  output [0:0]gtrxreset_i_reg_0;
  input sysclk_in;
  input gt0_rxusrclk_in;
  input soft_reset_rx_in;
  input \FSM_sequential_rx_state[3]_i_4_0 ;
  input \FSM_sequential_rx_state[3]_i_4_1 ;
  input \FSM_sequential_rx_state[3]_i_4_2 ;
  input \FSM_sequential_rx_state[3]_i_4_3 ;
  input \FSM_sequential_rx_state[3]_i_4_4 ;
  input \FSM_sequential_rx_state[3]_i_4_5 ;
  input \FSM_sequential_rx_state[3]_i_4_6 ;
  input \FSM_sequential_rx_state[3]_i_4_7 ;
  input gt0_qplllock_in;
  input gt1_qplllock_in;
  input data_sync_reg1;
  input gt0_gtrxreset_in;

  wire CPLL_RESET_i_1_n_0;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_13_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_14_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_1 ;
  wire \FSM_sequential_rx_state[3]_i_4_2 ;
  wire \FSM_sequential_rx_state[3]_i_4_3 ;
  wire \FSM_sequential_rx_state[3]_i_4_4 ;
  wire \FSM_sequential_rx_state[3]_i_4_5 ;
  wire \FSM_sequential_rx_state[3]_i_4_6 ;
  wire \FSM_sequential_rx_state[3]_i_4_7 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire QPLL_RESET_i_1__0_n_0;
  wire RXUSERRDY_i_1_n_0;
  wire [0:0]SR;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire data_in;
  wire data_sync_reg1;
  wire gt0_cpllreset_in;
  wire gt0_gtrxreset_in;
  wire gt0_qplllock_in;
  wire gt0_rxusrclk_in;
  wire gt1_qplllock_in;
  wire gt7_rxuserrdy_in;
  wire gt_gtrxreset_t;
  wire gt_rx_fsm_reset_done_out;
  wire gt_rx_qpllreset_t;
  wire gtrxreset_i_i_1_n_0;
  wire [0:0]gtrxreset_i_reg_0;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[7]_i_3__0_n_0 ;
  wire \init_wait_count[7]_i_4__0_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [7:1]p_0_in;
  wire [7:0]p_0_in__0;
  wire pll_reset_asserted_i_1__0_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire qplllock_sync;
  wire reset_time_out_i_2__0_n_0;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_i_5_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire [3:0]rx_state__0;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire soft_reset_rx_in;
  wire sync_data_valid_n_3;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_qplllock_n_0;
  wire sysclk_in;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_i_4_n_0;
  wire time_out_1us_i_5_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_i_5__0_n_0;
  wire time_out_2ms_i_6__0_n_0;
  wire time_out_2ms_i_7_n_0;
  wire time_out_2ms_i_8_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2__0_n_0;
  wire time_out_wait_bypass_i_3__0_n_0;
  wire time_out_wait_bypass_i_4__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2__0_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_i_5_n_0;
  wire time_tlock_max_i_6_n_0;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire \wait_time_cnt[0]_i_10__0_n_0 ;
  wire \wait_time_cnt[0]_i_11__0_n_0 ;
  wire \wait_time_cnt[0]_i_1_n_0 ;
  wire \wait_time_cnt[0]_i_2__0_n_0 ;
  wire \wait_time_cnt[0]_i_4__0_n_0 ;
  wire \wait_time_cnt[0]_i_5__0_n_0 ;
  wire \wait_time_cnt[0]_i_6__0_n_0 ;
  wire \wait_time_cnt[0]_i_7__0_n_0 ;
  wire \wait_time_cnt[0]_i_8__0_n_0 ;
  wire \wait_time_cnt[0]_i_9__0_n_0 ;
  wire \wait_time_cnt[12]_i_2__0_n_0 ;
  wire \wait_time_cnt[12]_i_3__0_n_0 ;
  wire \wait_time_cnt[12]_i_4__0_n_0 ;
  wire \wait_time_cnt[12]_i_5__0_n_0 ;
  wire \wait_time_cnt[4]_i_2__0_n_0 ;
  wire \wait_time_cnt[4]_i_3__0_n_0 ;
  wire \wait_time_cnt[4]_i_4__0_n_0 ;
  wire \wait_time_cnt[4]_i_5__0_n_0 ;
  wire \wait_time_cnt[8]_i_2__0_n_0 ;
  wire \wait_time_cnt[8]_i_3__0_n_0 ;
  wire \wait_time_cnt[8]_i_4__0_n_0 ;
  wire \wait_time_cnt[8]_i_5__0_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__0_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hEFFF0000)) 
    CPLL_RESET_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(gt0_cpllreset_in),
        .O(CPLL_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(CPLL_RESET_i_1_n_0),
        .Q(gt0_cpllreset_in),
        .R(soft_reset_rx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFF8A000F00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[0]),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0200FFFFFFFF)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(reset_time_out_reg_n_0),
        .I3(time_tlock_max),
        .I4(rx_state[1]),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000400000026AA)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(rx_state[0]),
        .I1(time_tlock_max),
        .I2(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A00008A000000)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[2]),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_rx_state[3]_i_11 
       (.I0(\FSM_sequential_rx_state[3]_i_4_4 ),
        .I1(\FSM_sequential_rx_state[3]_i_4_5 ),
        .I2(\FSM_sequential_rx_state[3]_i_4_6 ),
        .I3(\FSM_sequential_rx_state[3]_i_4_7 ),
        .O(\FSM_sequential_rx_state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_rx_state[3]_i_12 
       (.I0(\FSM_sequential_rx_state[3]_i_4_0 ),
        .I1(\FSM_sequential_rx_state[3]_i_4_1 ),
        .I2(\FSM_sequential_rx_state[3]_i_4_2 ),
        .I3(\FSM_sequential_rx_state[3]_i_4_3 ),
        .O(\FSM_sequential_rx_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \FSM_sequential_rx_state[3]_i_13 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max),
        .I3(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h8FAF8F8F)) 
    \FSM_sequential_rx_state[3]_i_14 
       (.I0(rx_state[0]),
        .I1(rxresetdone_s3),
        .I2(rx_state[1]),
        .I3(reset_time_out_reg_n_0),
        .I4(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77470000)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .I3(\FSM_sequential_rx_state[3]_i_12_n_0 ),
        .I4(\FSM_sequential_rx_state[3]_i_13_n_0 ),
        .I5(\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__0_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__0_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__0_n_0 ),
        .I4(rx_state[0]),
        .I5(\FSM_sequential_rx_state[3]_i_14_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE4E4E4EF)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(init_wait_done_reg_n_0),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(rx_state__0[0]),
        .Q(rx_state[0]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(rx_state__0[1]),
        .Q(rx_state[1]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(rx_state__0[3]),
        .Q(rx_state[3]),
        .R(soft_reset_rx_in));
  LUT6 #(
    .INIT(64'hFFFFF1FF00000100)) 
    QPLL_RESET_i_1__0
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(rx_state[2]),
        .I5(gt_rx_qpllreset_t),
        .O(QPLL_RESET_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    QPLL_RESET_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(QPLL_RESET_i_1__0_n_0),
        .Q(gt_rx_qpllreset_t),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(gt7_rxuserrdy_in),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt7_rxuserrdy_in),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    gtrxreset_i_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(gt_gtrxreset_t),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(gt_gtrxreset_t),
        .R(soft_reset_rx_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_1
       (.I0(gt0_gtrxreset_in),
        .I1(gt_gtrxreset_t),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_1__0
       (.I0(gt_gtrxreset_t),
        .I1(gt0_gtrxreset_in),
        .O(gtrxreset_i_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[3]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[7]_i_4__0_n_0 ),
        .I3(init_wait_count_reg[5]),
        .I4(init_wait_count_reg[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \init_wait_count[7]_i_1__0 
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[5]),
        .I4(init_wait_count_reg[6]),
        .O(init_wait_count));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg[7]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[4]),
        .I3(\init_wait_count[7]_i_4__0_n_0 ),
        .I4(init_wait_count_reg[5]),
        .I5(init_wait_count_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .O(\init_wait_count[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .O(\init_wait_count[7]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    init_wait_done_i_1__0
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[5]),
        .I4(init_wait_count_reg[6]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_rx_in),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .I2(mmcm_lock_count_reg[6]),
        .O(p_0_in__0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_reclocked_i_2__0_n_0),
        .I3(mmcm_lock_count_reg[6]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[0]),
        .I4(mmcm_lock_count_reg[1]),
        .I5(mmcm_lock_count_reg[3]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBFF0004)) 
    pll_reset_asserted_i_1__0
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(pll_reset_asserted_reg_n_0),
        .O(pll_reset_asserted_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1__0_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(soft_reset_rx_in));
  LUT4 #(
    .INIT(16'hF2FF)) 
    reset_time_out_i_2__0
       (.I0(rx_state[1]),
        .I1(rxresetdone_s3),
        .I2(rx_state[3]),
        .I3(rx_state[2]),
        .O(reset_time_out_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h88B8)) 
    reset_time_out_i_3__0
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .I3(\FSM_sequential_rx_state[3]_i_12_n_0 ),
        .O(reset_time_out_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00FF0FFF0F000F20)) 
    reset_time_out_i_5
       (.I0(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .I1(\FSM_sequential_rx_state[3]_i_12_n_0 ),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[0]),
        .O(reset_time_out_i_5_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_data_valid_n_4),
        .Q(reset_time_out_reg_n_0),
        .S(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_data_valid_n_5),
        .Q(gt_rx_fsm_reset_done_out),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_5 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_6 sync_data_valid
       (.D({rx_state__0[3],rx_state__0[1:0]}),
        .E(sync_data_valid_n_3),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (sync_qplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_3 (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (sync_data_valid_n_4),
        .\FSM_sequential_rx_state_reg[1]_0 (\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[2] (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3] (\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .Q(rx_state),
        .data_out(qplllock_sync),
        .gt_rx_fsm_reset_done_out(gt_rx_fsm_reset_done_out),
        .reset_time_out_reg(reset_time_out_reg_n_0),
        .reset_time_out_reg_0(reset_time_out_i_2__0_n_0),
        .reset_time_out_reg_1(reset_time_out_i_3__0_n_0),
        .reset_time_out_reg_2(reset_time_out_i_5_n_0),
        .rx_fsm_reset_done_int_reg(time_out_1us_reg_n_0),
        .rx_fsm_reset_done_int_reg_0(time_out_100us_reg_n_0),
        .sysclk_in(sysclk_in),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_7 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_8 sync_qplllock
       (.\FSM_sequential_rx_state[3]_i_7_0 (time_out_2ms_reg_n_0),
        .\FSM_sequential_rx_state_reg[0] (sync_qplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_0 (\wait_time_cnt[0]_i_4__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\wait_time_cnt[0]_i_5__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\wait_time_cnt[0]_i_6__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (\wait_time_cnt[0]_i_7__0_n_0 ),
        .Q(rx_state[1:0]),
        .data_in(data_in),
        .data_out(qplllock_sync),
        .gt0_qplllock_in(gt0_qplllock_in),
        .gt1_qplllock_in(gt1_qplllock_in),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_9 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .gt0_rxusrclk_in(gt0_rxusrclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_10 sync_rx_fsm_reset_done_int
       (.data_out(rx_fsm_reset_done_int_s2),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt_rx_fsm_reset_done_out(gt_rx_fsm_reset_done_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_11 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .sysclk_in(sysclk_in));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000040)) 
    time_out_100us_i_1
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[14]),
        .I4(time_out_100us_i_3_n_0),
        .I5(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_100us_i_4_n_0),
        .O(time_out_100us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[12]),
        .O(time_out_100us_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[15]),
        .I5(time_out_counter_reg[17]),
        .O(time_out_100us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hFF10)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(time_out_1us_i_3_n_0),
        .I2(time_tlock_max_i_2__0_n_0),
        .I3(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_1us_i_4_n_0),
        .O(time_out_1us_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_1us_i_5_n_0),
        .O(time_out_1us_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_4
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_out_1us_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_out_1us_i_5
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[9]),
        .O(time_out_1us_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms),
        .I1(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    time_out_2ms_i_2
       (.I0(time_out_2ms_i_3_n_0),
        .I1(time_out_2ms_i_4_n_0),
        .I2(time_out_2ms_i_5__0_n_0),
        .I3(time_out_2ms_i_6__0_n_0),
        .I4(time_out_2ms_i_7_n_0),
        .I5(time_out_2ms_i_8_n_0),
        .O(time_out_2ms));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .O(time_out_2ms_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_out_2ms_i_4
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[3]),
        .O(time_out_2ms_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    time_out_2ms_i_5__0
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[8]),
        .O(time_out_2ms_i_5__0_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    time_out_2ms_i_6__0
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[11]),
        .O(time_out_2ms_i_6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_out_2ms_i_7
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[14]),
        .O(time_out_2ms_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    time_out_2ms_i_8
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[13]),
        .O(time_out_2ms_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_2ms),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2__0_n_0),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    time_out_wait_bypass_i_2__0
       (.I0(time_out_wait_bypass_i_3__0_n_0),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[0]),
        .I4(time_out_wait_bypass_i_4__0_n_0),
        .O(time_out_wait_bypass_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .O(time_out_wait_bypass_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    time_out_wait_bypass_i_4__0
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[8]),
        .O(time_out_wait_bypass_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDF550000)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_i_2__0_n_0),
        .I1(time_tlock_max_i_3_n_0),
        .I2(time_tlock_max_i_4_n_0),
        .I3(time_out_counter_reg[13]),
        .I4(check_tlock_max_reg_n_0),
        .I5(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    time_tlock_max_i_2__0
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[17]),
        .O(time_tlock_max_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0100FFFF)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[7]),
        .I3(time_tlock_max_i_5_n_0),
        .I4(time_out_counter_reg[8]),
        .I5(time_tlock_max_i_6_n_0),
        .O(time_tlock_max_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55555557)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[0]),
        .I4(time_out_counter_reg[3]),
        .O(time_tlock_max_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    time_tlock_max_i_6
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .O(time_tlock_max_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(time_out_wait_bypass_i_2__0_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \wait_time_cnt[0]_i_1 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__0 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__0 
       (.I0(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__0_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__0_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__0_n_0 ),
        .O(\wait_time_cnt[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[6]),
        .I2(wait_time_cnt_reg[9]),
        .I3(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[11]),
        .I1(wait_time_cnt_reg[10]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[13]),
        .I1(wait_time_cnt_reg[12]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__0 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__0 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__0_n_0 ,\wait_time_cnt_reg[0]_i_3__0_n_1 ,\wait_time_cnt_reg[0]_i_3__0_n_2 ,\wait_time_cnt_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__0_n_4 ,\wait_time_cnt_reg[0]_i_3__0_n_5 ,\wait_time_cnt_reg[0]_i_3__0_n_6 ,\wait_time_cnt_reg[0]_i_3__0_n_7 }),
        .S({\wait_time_cnt[0]_i_8__0_n_0 ,\wait_time_cnt[0]_i_9__0_n_0 ,\wait_time_cnt[0]_i_10__0_n_0 ,\wait_time_cnt[0]_i_11__0_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\wait_time_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__0_n_1 ,\wait_time_cnt_reg[12]_i_1__0_n_2 ,\wait_time_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__0_n_4 ,\wait_time_cnt_reg[12]_i_1__0_n_5 ,\wait_time_cnt_reg[12]_i_1__0_n_6 ,\wait_time_cnt_reg[12]_i_1__0_n_7 }),
        .S({\wait_time_cnt[12]_i_2__0_n_0 ,\wait_time_cnt[12]_i_3__0_n_0 ,\wait_time_cnt[12]_i_4__0_n_0 ,\wait_time_cnt[12]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\wait_time_cnt_reg[0]_i_3__0_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__0_n_0 ,\wait_time_cnt_reg[4]_i_1__0_n_1 ,\wait_time_cnt_reg[4]_i_1__0_n_2 ,\wait_time_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__0_n_4 ,\wait_time_cnt_reg[4]_i_1__0_n_5 ,\wait_time_cnt_reg[4]_i_1__0_n_6 ,\wait_time_cnt_reg[4]_i_1__0_n_7 }),
        .S({\wait_time_cnt[4]_i_2__0_n_0 ,\wait_time_cnt[4]_i_3__0_n_0 ,\wait_time_cnt[4]_i_4__0_n_0 ,\wait_time_cnt[4]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\wait_time_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__0_n_0 ,\wait_time_cnt_reg[8]_i_1__0_n_1 ,\wait_time_cnt_reg[8]_i_1__0_n_2 ,\wait_time_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__0_n_4 ,\wait_time_cnt_reg[8]_i_1__0_n_5 ,\wait_time_cnt_reg[8]_i_1__0_n_6 ,\wait_time_cnt_reg[8]_i_1__0_n_7 }),
        .S({\wait_time_cnt[8]_i_2__0_n_0 ,\wait_time_cnt[8]_i_3__0_n_0 ,\wait_time_cnt[8]_i_4__0_n_0 ,\wait_time_cnt[8]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_TX_STARTUP_FSM
   (gt_tx_fsm_reset_done_out,
    gt7_txuserrdy_in,
    gt0_qpllreset_out,
    gt6_gttxreset_in,
    gt7_gttxreset_in,
    sysclk_in,
    gt0_txusrclk_in,
    soft_reset_tx_in,
    gt_rx_qpllreset_t,
    data_in,
    data_sync_reg1,
    gt0_gttxreset_in);
  output gt_tx_fsm_reset_done_out;
  output gt7_txuserrdy_in;
  output gt0_qpllreset_out;
  output gt6_gttxreset_in;
  output gt7_gttxreset_in;
  input sysclk_in;
  input gt0_txusrclk_in;
  input soft_reset_tx_in;
  input gt_rx_qpllreset_t;
  input data_in;
  input data_sync_reg1;
  input gt0_gttxreset_in;

  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_9_n_0 ;
  wire QPLL_RESET_i_1_n_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire data_in;
  wire data_sync_reg1;
  wire gt0_gttxreset_in;
  wire gt0_qpllreset_out;
  wire gt0_txusrclk_in;
  wire gt6_gttxreset_in;
  wire gt7_gttxreset_in;
  wire gt7_txuserrdy_in;
  wire gt_gttxreset_t;
  wire gt_rx_qpllreset_t;
  wire gt_tx_fsm_reset_done_out;
  wire gt_tx_qpllreset_t;
  wire gttxreset_i_i_1_n_0;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[7]_i_3_n_0 ;
  wire \init_wait_count[7]_i_4_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire [7:1]p_0_in;
  wire [7:0]p_0_in__0;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire reset_time_out;
  wire reset_time_out_i_3_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3;
  wire sel;
  wire soft_reset_tx_in;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_qplllock_n_0;
  wire sync_qplllock_n_1;
  wire sysclk_in;
  wire time_out_2ms;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_i_6_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_i_3_n_0;
  wire time_out_500us_i_4_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2_n_0;
  wire time_out_wait_bypass_i_3_n_0;
  wire time_out_wait_bypass_i_4_n_0;
  wire time_out_wait_bypass_i_5_n_0;
  wire time_out_wait_bypass_i_6_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3__0_n_0;
  wire time_tlock_max_i_4__0_n_0;
  wire time_tlock_max_i_5__0_n_0;
  wire time_tlock_max_i_6__0_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire [3:0]tx_state;
  wire [3:0]tx_state__0;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire wait_time_cnt0;
  wire \wait_time_cnt[0]_i_10_n_0 ;
  wire \wait_time_cnt[0]_i_11_n_0 ;
  wire \wait_time_cnt[0]_i_4_n_0 ;
  wire \wait_time_cnt[0]_i_5_n_0 ;
  wire \wait_time_cnt[0]_i_6_n_0 ;
  wire \wait_time_cnt[0]_i_7_n_0 ;
  wire \wait_time_cnt[0]_i_8_n_0 ;
  wire \wait_time_cnt[0]_i_9_n_0 ;
  wire \wait_time_cnt[12]_i_2_n_0 ;
  wire \wait_time_cnt[12]_i_3_n_0 ;
  wire \wait_time_cnt[12]_i_4_n_0 ;
  wire \wait_time_cnt[12]_i_5_n_0 ;
  wire \wait_time_cnt[4]_i_2_n_0 ;
  wire \wait_time_cnt[4]_i_3_n_0 ;
  wire \wait_time_cnt[4]_i_4_n_0 ;
  wire \wait_time_cnt[4]_i_5_n_0 ;
  wire \wait_time_cnt[8]_i_2_n_0 ;
  wire \wait_time_cnt[8]_i_3_n_0 ;
  wire \wait_time_cnt[8]_i_4_n_0 ;
  wire \wait_time_cnt[8]_i_5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h000000FD)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .O(tx_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000070)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(tx_state[1]),
        .I1(time_out_2ms_reg_n_0),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .I4(tx_state[3]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000007F0)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[2]),
        .I1(\FSM_sequential_tx_state[1]_i_2_n_0 ),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[3]),
        .O(tx_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_tx_state[1]_i_2 
       (.I0(mmcm_lock_reclocked),
        .I1(time_tlock_max_reg_n_0),
        .I2(reset_time_out),
        .O(\FSM_sequential_tx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0510050055555555)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[3]),
        .I1(time_out_2ms_reg_n_0),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hDDDDDFDD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(reset_time_out),
        .I3(time_tlock_max_reg_n_0),
        .I4(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I1(time_out_wait_bypass_s3),
        .I2(tx_state[3]),
        .O(tx_state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000800080)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(reset_time_out),
        .I5(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(tx_state[2]),
        .I3(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBA000000)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(txresetdone_s3),
        .I1(reset_time_out),
        .I2(time_out_500us_reg_n_0),
        .I3(tx_state[1]),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_qplllock_n_0),
        .D(tx_state__0[0]),
        .Q(tx_state[0]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_qplllock_n_0),
        .D(tx_state__0[1]),
        .Q(tx_state[1]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_qplllock_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_qplllock_n_0),
        .D(tx_state__0[3]),
        .Q(tx_state[3]),
        .R(soft_reset_tx_in));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000100)) 
    QPLL_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[0]),
        .I4(tx_state[1]),
        .I5(gt_tx_qpllreset_t),
        .O(QPLL_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    QPLL_RESET_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(QPLL_RESET_i_1_n_0),
        .Q(gt_tx_qpllreset_t),
        .R(soft_reset_tx_in));
  LUT5 #(
    .INIT(32'hFFEF0080)) 
    TXUSERRDY_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(gt7_txuserrdy_in),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt7_txuserrdy_in),
        .R(soft_reset_tx_in));
  LUT2 #(
    .INIT(4'hE)) 
    gt1_qpllreset_out_INST_0
       (.I0(gt_tx_qpllreset_t),
        .I1(gt_rx_qpllreset_t),
        .O(gt0_qpllreset_out));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    gttxreset_i_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(gt_gttxreset_t),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt_gttxreset_t),
        .R(soft_reset_tx_in));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_2
       (.I0(gt_gttxreset_t),
        .I1(gt0_gttxreset_in),
        .O(gt6_gttxreset_in));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_2__0
       (.I0(gt0_gttxreset_in),
        .I1(gt_gttxreset_t),
        .O(gt7_gttxreset_in));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[3]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[7]_i_4_n_0 ),
        .I3(init_wait_count_reg[5]),
        .I4(init_wait_count_reg[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \init_wait_count[7]_i_1 
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[5]),
        .I4(init_wait_count_reg[6]),
        .O(init_wait_count));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg[7]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[4]),
        .I3(\init_wait_count[7]_i_4_n_0 ),
        .I4(init_wait_count_reg[5]),
        .I5(init_wait_count_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .O(\init_wait_count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .O(\init_wait_count[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    init_wait_done_i_1
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[5]),
        .I4(init_wait_count_reg[6]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_tx_in),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2_n_0),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2_n_0),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_reclocked_i_2_n_0),
        .I2(mmcm_lock_count_reg[6]),
        .O(p_0_in__0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_reclocked_i_2_n_0),
        .I3(mmcm_lock_count_reg[6]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[0]),
        .I4(mmcm_lock_count_reg[1]),
        .I5(mmcm_lock_count_reg[3]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAA3A)) 
    pll_reset_asserted_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .I4(tx_state[3]),
        .O(pll_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(soft_reset_tx_in));
  LUT4 #(
    .INIT(16'hB833)) 
    reset_time_out_i_3
       (.I0(txresetdone_s3),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(tx_state[2]),
        .O(reset_time_out_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_qplllock_n_1),
        .Q(reset_time_out),
        .R(soft_reset_tx_in));
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(soft_reset_tx_in));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block sync_TXRESETDONE
       (.data_in(data_in),
        .data_out(txresetdone_s2),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_0 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_1 sync_qplllock
       (.E(sync_qplllock_n_0),
        .\FSM_sequential_tx_state[3]_i_3_0 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[0] (init_wait_done_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_3 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_4 (\FSM_sequential_tx_state[3]_i_9_n_0 ),
        .\FSM_sequential_tx_state_reg[3] (sync_qplllock_n_1),
        .Q(tx_state),
        .data_sync_reg1_0(data_sync_reg1),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(reset_time_out_i_3_n_0),
        .sel(sel),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_2 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .gt0_txusrclk_in(gt0_txusrclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_3 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_4 sync_tx_fsm_reset_done_int
       (.data_out(tx_fsm_reset_done_int_s2),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt_tx_fsm_reset_done_out(gt_tx_fsm_reset_done_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms),
        .I2(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    time_out_2ms_i_2__0
       (.I0(time_out_2ms_i_3__0_n_0),
        .I1(time_out_2ms_i_4__0_n_0),
        .I2(time_out_2ms_i_5_n_0),
        .I3(time_out_2ms_i_6_n_0),
        .I4(time_tlock_max_i_3__0_n_0),
        .O(time_out_2ms));
  LUT4 #(
    .INIT(16'hFEEE)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[10]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[6]),
        .O(time_out_2ms_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[0]),
        .O(time_out_2ms_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    time_out_2ms_i_6
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[10]),
        .O(time_out_2ms_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_out_500us_i_2_n_0),
        .I3(time_out_500us_i_3_n_0),
        .I4(time_out_500us_i_4_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0DFFFFFFFFFF)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[9]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[14]),
        .O(time_out_500us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    time_out_500us_i_3
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[10]),
        .O(time_out_500us_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    time_out_500us_i_4
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[16]),
        .O(time_out_500us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_2ms),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(time_out_wait_bypass_i_2_n_0),
        .I2(tx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_wait_bypass_i_2
       (.I0(time_out_wait_bypass_i_3_n_0),
        .I1(time_out_wait_bypass_i_4_n_0),
        .I2(time_out_wait_bypass_i_5_n_0),
        .I3(time_out_wait_bypass_i_6_n_0),
        .O(time_out_wait_bypass_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[5]),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[16]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[14]),
        .I3(wait_bypass_count_reg[13]),
        .O(time_out_wait_bypass_i_5_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_wait_bypass_i_6
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[10]),
        .I3(wait_bypass_count_reg[9]),
        .O(time_out_wait_bypass_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAEAA)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_tlock_max_i_3__0_n_0),
        .I3(time_tlock_max_i_4__0_n_0),
        .I4(time_tlock_max_i_5__0_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[3]),
        .I5(time_out_counter_reg[5]),
        .O(time_tlock_max_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[7]),
        .O(time_tlock_max_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h45)) 
    time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[15]),
        .O(time_tlock_max_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    time_tlock_max_i_5__0
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .I4(time_tlock_max_i_6__0_n_0),
        .O(time_tlock_max_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    time_tlock_max_i_6__0
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[10]),
        .O(time_tlock_max_i_6__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(gt_tx_fsm_reset_done_out),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(gt_tx_fsm_reset_done_out),
        .R(soft_reset_tx_in));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(time_out_wait_bypass_i_2_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(gt0_txusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .O(wait_time_cnt0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2 
       (.I0(\wait_time_cnt[0]_i_4_n_0 ),
        .I1(\wait_time_cnt[0]_i_5_n_0 ),
        .I2(\wait_time_cnt[0]_i_6_n_0 ),
        .I3(\wait_time_cnt[0]_i_7_n_0 ),
        .O(sel));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[7]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[12]),
        .I3(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[5]),
        .I3(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[15]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[11]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[9]),
        .I1(wait_time_cnt_reg[8]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(wait_time_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3_n_0 ,\wait_time_cnt_reg[0]_i_3_n_1 ,\wait_time_cnt_reg[0]_i_3_n_2 ,\wait_time_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3_n_4 ,\wait_time_cnt_reg[0]_i_3_n_5 ,\wait_time_cnt_reg[0]_i_3_n_6 ,\wait_time_cnt_reg[0]_i_3_n_7 }),
        .S({\wait_time_cnt[0]_i_8_n_0 ,\wait_time_cnt[0]_i_9_n_0 ,\wait_time_cnt[0]_i_10_n_0 ,\wait_time_cnt[0]_i_11_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(wait_time_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\wait_time_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1_n_1 ,\wait_time_cnt_reg[12]_i_1_n_2 ,\wait_time_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1_n_4 ,\wait_time_cnt_reg[12]_i_1_n_5 ,\wait_time_cnt_reg[12]_i_1_n_6 ,\wait_time_cnt_reg[12]_i_1_n_7 }),
        .S({\wait_time_cnt[12]_i_2_n_0 ,\wait_time_cnt[12]_i_3_n_0 ,\wait_time_cnt[12]_i_4_n_0 ,\wait_time_cnt[12]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .S(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(wait_time_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\wait_time_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1_n_0 ,\wait_time_cnt_reg[4]_i_1_n_1 ,\wait_time_cnt_reg[4]_i_1_n_2 ,\wait_time_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1_n_4 ,\wait_time_cnt_reg[4]_i_1_n_5 ,\wait_time_cnt_reg[4]_i_1_n_6 ,\wait_time_cnt_reg[4]_i_1_n_7 }),
        .S({\wait_time_cnt[4]_i_2_n_0 ,\wait_time_cnt[4]_i_3_n_0 ,\wait_time_cnt[4]_i_4_n_0 ,\wait_time_cnt[4]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(wait_time_cnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\wait_time_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1_n_0 ,\wait_time_cnt_reg[8]_i_1_n_1 ,\wait_time_cnt_reg[8]_i_1_n_2 ,\wait_time_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1_n_4 ,\wait_time_cnt_reg[8]_i_1_n_5 ,\wait_time_cnt_reg[8]_i_1_n_6 ,\wait_time_cnt_reg[8]_i_1_n_7 }),
        .S({\wait_time_cnt[8]_i_2_n_0 ,\wait_time_cnt[8]_i_3_n_0 ,\wait_time_cnt[8]_i_4_n_0 ,\wait_time_cnt[8]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(wait_time_cnt0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) (* EXAMPLE_SIM_GTRESET_SPEEDUP = "TRUE" *) 
(* EXAMPLE_USE_CHIPSCOPE = "1" *) (* RX_CDRLOCK_TIME = "12500" *) (* STABLE_CLOCK_PERIOD = "10" *) 
(* WAIT_TIME_CDRLOCK = "1250" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_init
   (sysclk_in,
    soft_reset_tx_in,
    soft_reset_rx_in,
    dont_reset_on_data_error_in,
    gt_tx_fsm_reset_done_out,
    gt_rx_fsm_reset_done_out,
    gt0_data_valid_in,
    gt1_data_valid_in,
    gt2_data_valid_in,
    gt3_data_valid_in,
    gt4_data_valid_in,
    gt5_data_valid_in,
    gt6_data_valid_in,
    gt7_data_valid_in,
    gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_cplllockdetclk_in,
    gt0_cpllpd_in,
    gt0_cpllreset_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_drpaddr_in,
    gt0_drpclk_in,
    gt0_drpdi_in,
    gt0_drpdo_out,
    gt0_drpen_in,
    gt0_drprdy_out,
    gt0_drpwe_in,
    gt0_rxsysclksel_in,
    gt0_txsysclksel_in,
    gt0_dmonitorout_out,
    gt0_loopback_in,
    gt0_rxpd_in,
    gt0_txpd_in,
    gt0_eyescanreset_in,
    gt0_rxuserrdy_in,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_rxcdrhold_in,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_rxdata_out,
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
    gt0_rxprbscntreset_in,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt0_gtxrxp_in,
    gt0_gtxrxn_in,
    gt0_rxbufreset_in,
    gt0_rxbufstatus_out,
    gt0_rxstatus_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxmcommaalignen_in,
    gt0_rxpcommaalignen_in,
    gt0_rxdfelpmreset_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_gtrxreset_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxlpmen_in,
    gt0_rxpolarity_in,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gt0_rxresetdone_out,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_gttxreset_in,
    gt0_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_txprbsforceerr_in,
    gt0_txbufstatus_out,
    gt0_txdiffctrl_in,
    gt0_txinhibit_in,
    gt0_txdata_in,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txcharisk_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txresetdone_out,
    gt0_txpolarity_in,
    gt0_txprbssel_in,
    gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_cplllockdetclk_in,
    gt1_cpllpd_in,
    gt1_cpllreset_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_drpaddr_in,
    gt1_drpclk_in,
    gt1_drpdi_in,
    gt1_drpdo_out,
    gt1_drpen_in,
    gt1_drprdy_out,
    gt1_drpwe_in,
    gt1_rxsysclksel_in,
    gt1_txsysclksel_in,
    gt1_dmonitorout_out,
    gt1_loopback_in,
    gt1_rxpd_in,
    gt1_txpd_in,
    gt1_eyescanreset_in,
    gt1_rxuserrdy_in,
    gt1_eyescandataerror_out,
    gt1_eyescantrigger_in,
    gt1_rxcdrhold_in,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_rxdata_out,
    gt1_rxprbserr_out,
    gt1_rxprbssel_in,
    gt1_rxprbscntreset_in,
    gt1_rxdisperr_out,
    gt1_rxnotintable_out,
    gt1_gtxrxp_in,
    gt1_gtxrxn_in,
    gt1_rxbufreset_in,
    gt1_rxbufstatus_out,
    gt1_rxstatus_out,
    gt1_rxbyteisaligned_out,
    gt1_rxbyterealign_out,
    gt1_rxcommadet_out,
    gt1_rxmcommaalignen_in,
    gt1_rxpcommaalignen_in,
    gt1_rxdfelpmreset_in,
    gt1_rxmonitorout_out,
    gt1_rxmonitorsel_in,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_gtrxreset_in,
    gt1_rxpcsreset_in,
    gt1_rxpmareset_in,
    gt1_rxlpmen_in,
    gt1_rxpolarity_in,
    gt1_rxchariscomma_out,
    gt1_rxcharisk_out,
    gt1_rxresetdone_out,
    gt1_txpostcursor_in,
    gt1_txprecursor_in,
    gt1_gttxreset_in,
    gt1_txuserrdy_in,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_txprbsforceerr_in,
    gt1_txbufstatus_out,
    gt1_txdiffctrl_in,
    gt1_txinhibit_in,
    gt1_txdata_in,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txcharisk_in,
    gt1_txpcsreset_in,
    gt1_txpmareset_in,
    gt1_txresetdone_out,
    gt1_txpolarity_in,
    gt1_txprbssel_in,
    gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_cplllockdetclk_in,
    gt2_cpllpd_in,
    gt2_cpllreset_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_drpaddr_in,
    gt2_drpclk_in,
    gt2_drpdi_in,
    gt2_drpdo_out,
    gt2_drpen_in,
    gt2_drprdy_out,
    gt2_drpwe_in,
    gt2_rxsysclksel_in,
    gt2_txsysclksel_in,
    gt2_dmonitorout_out,
    gt2_loopback_in,
    gt2_rxpd_in,
    gt2_txpd_in,
    gt2_eyescanreset_in,
    gt2_rxuserrdy_in,
    gt2_eyescandataerror_out,
    gt2_eyescantrigger_in,
    gt2_rxcdrhold_in,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_rxdata_out,
    gt2_rxprbserr_out,
    gt2_rxprbssel_in,
    gt2_rxprbscntreset_in,
    gt2_rxdisperr_out,
    gt2_rxnotintable_out,
    gt2_gtxrxp_in,
    gt2_gtxrxn_in,
    gt2_rxbufreset_in,
    gt2_rxbufstatus_out,
    gt2_rxstatus_out,
    gt2_rxbyteisaligned_out,
    gt2_rxbyterealign_out,
    gt2_rxcommadet_out,
    gt2_rxmcommaalignen_in,
    gt2_rxpcommaalignen_in,
    gt2_rxdfelpmreset_in,
    gt2_rxmonitorout_out,
    gt2_rxmonitorsel_in,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_gtrxreset_in,
    gt2_rxpcsreset_in,
    gt2_rxpmareset_in,
    gt2_rxlpmen_in,
    gt2_rxpolarity_in,
    gt2_rxchariscomma_out,
    gt2_rxcharisk_out,
    gt2_rxresetdone_out,
    gt2_txpostcursor_in,
    gt2_txprecursor_in,
    gt2_gttxreset_in,
    gt2_txuserrdy_in,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_txprbsforceerr_in,
    gt2_txbufstatus_out,
    gt2_txdiffctrl_in,
    gt2_txinhibit_in,
    gt2_txdata_in,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txcharisk_in,
    gt2_txpcsreset_in,
    gt2_txpmareset_in,
    gt2_txresetdone_out,
    gt2_txpolarity_in,
    gt2_txprbssel_in,
    gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_cplllockdetclk_in,
    gt3_cpllpd_in,
    gt3_cpllreset_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_drpaddr_in,
    gt3_drpclk_in,
    gt3_drpdi_in,
    gt3_drpdo_out,
    gt3_drpen_in,
    gt3_drprdy_out,
    gt3_drpwe_in,
    gt3_rxsysclksel_in,
    gt3_txsysclksel_in,
    gt3_dmonitorout_out,
    gt3_loopback_in,
    gt3_rxpd_in,
    gt3_txpd_in,
    gt3_eyescanreset_in,
    gt3_rxuserrdy_in,
    gt3_eyescandataerror_out,
    gt3_eyescantrigger_in,
    gt3_rxcdrhold_in,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_rxdata_out,
    gt3_rxprbserr_out,
    gt3_rxprbssel_in,
    gt3_rxprbscntreset_in,
    gt3_rxdisperr_out,
    gt3_rxnotintable_out,
    gt3_gtxrxp_in,
    gt3_gtxrxn_in,
    gt3_rxbufreset_in,
    gt3_rxbufstatus_out,
    gt3_rxstatus_out,
    gt3_rxbyteisaligned_out,
    gt3_rxbyterealign_out,
    gt3_rxcommadet_out,
    gt3_rxmcommaalignen_in,
    gt3_rxpcommaalignen_in,
    gt3_rxdfelpmreset_in,
    gt3_rxmonitorout_out,
    gt3_rxmonitorsel_in,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_gtrxreset_in,
    gt3_rxpcsreset_in,
    gt3_rxpmareset_in,
    gt3_rxlpmen_in,
    gt3_rxpolarity_in,
    gt3_rxchariscomma_out,
    gt3_rxcharisk_out,
    gt3_rxresetdone_out,
    gt3_txpostcursor_in,
    gt3_txprecursor_in,
    gt3_gttxreset_in,
    gt3_txuserrdy_in,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_txprbsforceerr_in,
    gt3_txbufstatus_out,
    gt3_txdiffctrl_in,
    gt3_txinhibit_in,
    gt3_txdata_in,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txcharisk_in,
    gt3_txpcsreset_in,
    gt3_txpmareset_in,
    gt3_txresetdone_out,
    gt3_txpolarity_in,
    gt3_txprbssel_in,
    gt4_cpllfbclklost_out,
    gt4_cplllock_out,
    gt4_cplllockdetclk_in,
    gt4_cpllpd_in,
    gt4_cpllreset_in,
    gt4_gtnorthrefclk0_in,
    gt4_gtnorthrefclk1_in,
    gt4_gtrefclk0_in,
    gt4_gtrefclk1_in,
    gt4_gtsouthrefclk0_in,
    gt4_gtsouthrefclk1_in,
    gt4_drpaddr_in,
    gt4_drpclk_in,
    gt4_drpdi_in,
    gt4_drpdo_out,
    gt4_drpen_in,
    gt4_drprdy_out,
    gt4_drpwe_in,
    gt4_rxsysclksel_in,
    gt4_txsysclksel_in,
    gt4_dmonitorout_out,
    gt4_loopback_in,
    gt4_rxpd_in,
    gt4_txpd_in,
    gt4_eyescanreset_in,
    gt4_rxuserrdy_in,
    gt4_eyescandataerror_out,
    gt4_eyescantrigger_in,
    gt4_rxcdrhold_in,
    gt4_rxusrclk_in,
    gt4_rxusrclk2_in,
    gt4_rxdata_out,
    gt4_rxprbserr_out,
    gt4_rxprbssel_in,
    gt4_rxprbscntreset_in,
    gt4_rxdisperr_out,
    gt4_rxnotintable_out,
    gt4_gtxrxp_in,
    gt4_gtxrxn_in,
    gt4_rxbufreset_in,
    gt4_rxbufstatus_out,
    gt4_rxstatus_out,
    gt4_rxbyteisaligned_out,
    gt4_rxbyterealign_out,
    gt4_rxcommadet_out,
    gt4_rxmcommaalignen_in,
    gt4_rxpcommaalignen_in,
    gt4_rxdfelpmreset_in,
    gt4_rxmonitorout_out,
    gt4_rxmonitorsel_in,
    gt4_rxoutclk_out,
    gt4_rxoutclkfabric_out,
    gt4_gtrxreset_in,
    gt4_rxpcsreset_in,
    gt4_rxpmareset_in,
    gt4_rxlpmen_in,
    gt4_rxpolarity_in,
    gt4_rxchariscomma_out,
    gt4_rxcharisk_out,
    gt4_rxresetdone_out,
    gt4_txpostcursor_in,
    gt4_txprecursor_in,
    gt4_gttxreset_in,
    gt4_txuserrdy_in,
    gt4_txusrclk_in,
    gt4_txusrclk2_in,
    gt4_txprbsforceerr_in,
    gt4_txbufstatus_out,
    gt4_txdiffctrl_in,
    gt4_txinhibit_in,
    gt4_txdata_in,
    gt4_gtxtxn_out,
    gt4_gtxtxp_out,
    gt4_txoutclk_out,
    gt4_txoutclkfabric_out,
    gt4_txoutclkpcs_out,
    gt4_txcharisk_in,
    gt4_txpcsreset_in,
    gt4_txpmareset_in,
    gt4_txresetdone_out,
    gt4_txpolarity_in,
    gt4_txprbssel_in,
    gt5_cpllfbclklost_out,
    gt5_cplllock_out,
    gt5_cplllockdetclk_in,
    gt5_cpllpd_in,
    gt5_cpllreset_in,
    gt5_gtnorthrefclk0_in,
    gt5_gtnorthrefclk1_in,
    gt5_gtrefclk0_in,
    gt5_gtrefclk1_in,
    gt5_gtsouthrefclk0_in,
    gt5_gtsouthrefclk1_in,
    gt5_drpaddr_in,
    gt5_drpclk_in,
    gt5_drpdi_in,
    gt5_drpdo_out,
    gt5_drpen_in,
    gt5_drprdy_out,
    gt5_drpwe_in,
    gt5_rxsysclksel_in,
    gt5_txsysclksel_in,
    gt5_dmonitorout_out,
    gt5_loopback_in,
    gt5_rxpd_in,
    gt5_txpd_in,
    gt5_eyescanreset_in,
    gt5_rxuserrdy_in,
    gt5_eyescandataerror_out,
    gt5_eyescantrigger_in,
    gt5_rxcdrhold_in,
    gt5_rxusrclk_in,
    gt5_rxusrclk2_in,
    gt5_rxdata_out,
    gt5_rxprbserr_out,
    gt5_rxprbssel_in,
    gt5_rxprbscntreset_in,
    gt5_rxdisperr_out,
    gt5_rxnotintable_out,
    gt5_gtxrxp_in,
    gt5_gtxrxn_in,
    gt5_rxbufreset_in,
    gt5_rxbufstatus_out,
    gt5_rxstatus_out,
    gt5_rxbyteisaligned_out,
    gt5_rxbyterealign_out,
    gt5_rxcommadet_out,
    gt5_rxmcommaalignen_in,
    gt5_rxpcommaalignen_in,
    gt5_rxdfelpmreset_in,
    gt5_rxmonitorout_out,
    gt5_rxmonitorsel_in,
    gt5_rxoutclk_out,
    gt5_rxoutclkfabric_out,
    gt5_gtrxreset_in,
    gt5_rxpcsreset_in,
    gt5_rxpmareset_in,
    gt5_rxlpmen_in,
    gt5_rxpolarity_in,
    gt5_rxchariscomma_out,
    gt5_rxcharisk_out,
    gt5_rxresetdone_out,
    gt5_txpostcursor_in,
    gt5_txprecursor_in,
    gt5_gttxreset_in,
    gt5_txuserrdy_in,
    gt5_txusrclk_in,
    gt5_txusrclk2_in,
    gt5_txprbsforceerr_in,
    gt5_txbufstatus_out,
    gt5_txdiffctrl_in,
    gt5_txinhibit_in,
    gt5_txdata_in,
    gt5_gtxtxn_out,
    gt5_gtxtxp_out,
    gt5_txoutclk_out,
    gt5_txoutclkfabric_out,
    gt5_txoutclkpcs_out,
    gt5_txcharisk_in,
    gt5_txpcsreset_in,
    gt5_txpmareset_in,
    gt5_txresetdone_out,
    gt5_txpolarity_in,
    gt5_txprbssel_in,
    gt6_cpllfbclklost_out,
    gt6_cplllock_out,
    gt6_cplllockdetclk_in,
    gt6_cpllpd_in,
    gt6_cpllreset_in,
    gt6_gtnorthrefclk0_in,
    gt6_gtnorthrefclk1_in,
    gt6_gtrefclk0_in,
    gt6_gtrefclk1_in,
    gt6_gtsouthrefclk0_in,
    gt6_gtsouthrefclk1_in,
    gt6_drpaddr_in,
    gt6_drpclk_in,
    gt6_drpdi_in,
    gt6_drpdo_out,
    gt6_drpen_in,
    gt6_drprdy_out,
    gt6_drpwe_in,
    gt6_rxsysclksel_in,
    gt6_txsysclksel_in,
    gt6_dmonitorout_out,
    gt6_loopback_in,
    gt6_rxpd_in,
    gt6_txpd_in,
    gt6_eyescanreset_in,
    gt6_rxuserrdy_in,
    gt6_eyescandataerror_out,
    gt6_eyescantrigger_in,
    gt6_rxcdrhold_in,
    gt6_rxusrclk_in,
    gt6_rxusrclk2_in,
    gt6_rxdata_out,
    gt6_rxprbserr_out,
    gt6_rxprbssel_in,
    gt6_rxprbscntreset_in,
    gt6_rxdisperr_out,
    gt6_rxnotintable_out,
    gt6_gtxrxp_in,
    gt6_gtxrxn_in,
    gt6_rxbufreset_in,
    gt6_rxbufstatus_out,
    gt6_rxstatus_out,
    gt6_rxbyteisaligned_out,
    gt6_rxbyterealign_out,
    gt6_rxcommadet_out,
    gt6_rxmcommaalignen_in,
    gt6_rxpcommaalignen_in,
    gt6_rxdfelpmreset_in,
    gt6_rxmonitorout_out,
    gt6_rxmonitorsel_in,
    gt6_rxoutclk_out,
    gt6_rxoutclkfabric_out,
    gt6_gtrxreset_in,
    gt6_rxpcsreset_in,
    gt6_rxpmareset_in,
    gt6_rxlpmen_in,
    gt6_rxpolarity_in,
    gt6_rxchariscomma_out,
    gt6_rxcharisk_out,
    gt6_rxresetdone_out,
    gt6_txpostcursor_in,
    gt6_txprecursor_in,
    gt6_gttxreset_in,
    gt6_txuserrdy_in,
    gt6_txusrclk_in,
    gt6_txusrclk2_in,
    gt6_txprbsforceerr_in,
    gt6_txbufstatus_out,
    gt6_txdiffctrl_in,
    gt6_txinhibit_in,
    gt6_txdata_in,
    gt6_gtxtxn_out,
    gt6_gtxtxp_out,
    gt6_txoutclk_out,
    gt6_txoutclkfabric_out,
    gt6_txoutclkpcs_out,
    gt6_txcharisk_in,
    gt6_txpcsreset_in,
    gt6_txpmareset_in,
    gt6_txresetdone_out,
    gt6_txpolarity_in,
    gt6_txprbssel_in,
    gt7_cpllfbclklost_out,
    gt7_cplllock_out,
    gt7_cplllockdetclk_in,
    gt7_cpllpd_in,
    gt7_cpllreset_in,
    gt7_gtnorthrefclk0_in,
    gt7_gtnorthrefclk1_in,
    gt7_gtrefclk0_in,
    gt7_gtrefclk1_in,
    gt7_gtsouthrefclk0_in,
    gt7_gtsouthrefclk1_in,
    gt7_drpaddr_in,
    gt7_drpclk_in,
    gt7_drpdi_in,
    gt7_drpdo_out,
    gt7_drpen_in,
    gt7_drprdy_out,
    gt7_drpwe_in,
    gt7_rxsysclksel_in,
    gt7_txsysclksel_in,
    gt7_dmonitorout_out,
    gt7_loopback_in,
    gt7_rxpd_in,
    gt7_txpd_in,
    gt7_eyescanreset_in,
    gt7_rxuserrdy_in,
    gt7_eyescandataerror_out,
    gt7_eyescantrigger_in,
    gt7_rxcdrhold_in,
    gt7_rxusrclk_in,
    gt7_rxusrclk2_in,
    gt7_rxdata_out,
    gt7_rxprbserr_out,
    gt7_rxprbssel_in,
    gt7_rxprbscntreset_in,
    gt7_rxdisperr_out,
    gt7_rxnotintable_out,
    gt7_gtxrxp_in,
    gt7_gtxrxn_in,
    gt7_rxbufreset_in,
    gt7_rxbufstatus_out,
    gt7_rxstatus_out,
    gt7_rxbyteisaligned_out,
    gt7_rxbyterealign_out,
    gt7_rxcommadet_out,
    gt7_rxmcommaalignen_in,
    gt7_rxpcommaalignen_in,
    gt7_rxdfelpmreset_in,
    gt7_rxmonitorout_out,
    gt7_rxmonitorsel_in,
    gt7_rxoutclk_out,
    gt7_rxoutclkfabric_out,
    gt7_gtrxreset_in,
    gt7_rxpcsreset_in,
    gt7_rxpmareset_in,
    gt7_rxlpmen_in,
    gt7_rxpolarity_in,
    gt7_rxchariscomma_out,
    gt7_rxcharisk_out,
    gt7_rxresetdone_out,
    gt7_txpostcursor_in,
    gt7_txprecursor_in,
    gt7_gttxreset_in,
    gt7_txuserrdy_in,
    gt7_txusrclk_in,
    gt7_txusrclk2_in,
    gt7_txprbsforceerr_in,
    gt7_txbufstatus_out,
    gt7_txdiffctrl_in,
    gt7_txinhibit_in,
    gt7_txdata_in,
    gt7_gtxtxn_out,
    gt7_gtxtxp_out,
    gt7_txoutclk_out,
    gt7_txoutclkfabric_out,
    gt7_txoutclkpcs_out,
    gt7_txcharisk_in,
    gt7_txpcsreset_in,
    gt7_txpmareset_in,
    gt7_txresetdone_out,
    gt7_txpolarity_in,
    gt7_txprbssel_in,
    gt0_qplllock_in,
    gt0_qpllrefclklost_in,
    gt0_qpllreset_out,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt1_qplllock_in,
    gt1_qpllrefclklost_in,
    gt1_qpllreset_out,
    gt1_qplloutclk_in,
    gt1_qplloutrefclk_in);
  input sysclk_in;
  input soft_reset_tx_in;
  input soft_reset_rx_in;
  input dont_reset_on_data_error_in;
  output gt_tx_fsm_reset_done_out;
  output gt_rx_fsm_reset_done_out;
  input gt0_data_valid_in;
  input gt1_data_valid_in;
  input gt2_data_valid_in;
  input gt3_data_valid_in;
  input gt4_data_valid_in;
  input gt5_data_valid_in;
  input gt6_data_valid_in;
  input gt7_data_valid_in;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllpd_in;
  input gt0_cpllreset_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  input [1:0]gt0_rxsysclksel_in;
  input [1:0]gt0_txsysclksel_in;
  output [7:0]gt0_dmonitorout_out;
  input [2:0]gt0_loopback_in;
  input [1:0]gt0_rxpd_in;
  input [1:0]gt0_txpd_in;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxcdrhold_in;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  output [31:0]gt0_rxdata_out;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input gt0_rxprbscntreset_in;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  input gt0_gtxrxp_in;
  input gt0_gtxrxn_in;
  input gt0_rxbufreset_in;
  output [2:0]gt0_rxbufstatus_out;
  output [2:0]gt0_rxstatus_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcommaalignen_in;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxlpmen_in;
  input gt0_rxpolarity_in;
  output [3:0]gt0_rxchariscomma_out;
  output [3:0]gt0_rxcharisk_out;
  output gt0_rxresetdone_out;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input gt0_gttxreset_in;
  input gt0_txuserrdy_in;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input gt0_txprbsforceerr_in;
  output [1:0]gt0_txbufstatus_out;
  input [3:0]gt0_txdiffctrl_in;
  input gt0_txinhibit_in;
  input [31:0]gt0_txdata_in;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  input [3:0]gt0_txcharisk_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  output gt0_txresetdone_out;
  input gt0_txpolarity_in;
  input [2:0]gt0_txprbssel_in;
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  input gt1_cplllockdetclk_in;
  input gt1_cpllpd_in;
  input gt1_cpllreset_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input [8:0]gt1_drpaddr_in;
  input gt1_drpclk_in;
  input [15:0]gt1_drpdi_in;
  output [15:0]gt1_drpdo_out;
  input gt1_drpen_in;
  output gt1_drprdy_out;
  input gt1_drpwe_in;
  input [1:0]gt1_rxsysclksel_in;
  input [1:0]gt1_txsysclksel_in;
  output [7:0]gt1_dmonitorout_out;
  input [2:0]gt1_loopback_in;
  input [1:0]gt1_rxpd_in;
  input [1:0]gt1_txpd_in;
  input gt1_eyescanreset_in;
  input gt1_rxuserrdy_in;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_rxcdrhold_in;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  output [31:0]gt1_rxdata_out;
  output gt1_rxprbserr_out;
  input [2:0]gt1_rxprbssel_in;
  input gt1_rxprbscntreset_in;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  input gt1_gtxrxp_in;
  input gt1_gtxrxn_in;
  input gt1_rxbufreset_in;
  output [2:0]gt1_rxbufstatus_out;
  output [2:0]gt1_rxstatus_out;
  output gt1_rxbyteisaligned_out;
  output gt1_rxbyterealign_out;
  output gt1_rxcommadet_out;
  input gt1_rxmcommaalignen_in;
  input gt1_rxpcommaalignen_in;
  input gt1_rxdfelpmreset_in;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  input gt1_gtrxreset_in;
  input gt1_rxpcsreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxlpmen_in;
  input gt1_rxpolarity_in;
  output [3:0]gt1_rxchariscomma_out;
  output [3:0]gt1_rxcharisk_out;
  output gt1_rxresetdone_out;
  input [4:0]gt1_txpostcursor_in;
  input [4:0]gt1_txprecursor_in;
  input gt1_gttxreset_in;
  input gt1_txuserrdy_in;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input gt1_txprbsforceerr_in;
  output [1:0]gt1_txbufstatus_out;
  input [3:0]gt1_txdiffctrl_in;
  input gt1_txinhibit_in;
  input [31:0]gt1_txdata_in;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  input [3:0]gt1_txcharisk_in;
  input gt1_txpcsreset_in;
  input gt1_txpmareset_in;
  output gt1_txresetdone_out;
  input gt1_txpolarity_in;
  input [2:0]gt1_txprbssel_in;
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  input gt2_cplllockdetclk_in;
  input gt2_cpllpd_in;
  input gt2_cpllreset_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input [8:0]gt2_drpaddr_in;
  input gt2_drpclk_in;
  input [15:0]gt2_drpdi_in;
  output [15:0]gt2_drpdo_out;
  input gt2_drpen_in;
  output gt2_drprdy_out;
  input gt2_drpwe_in;
  input [1:0]gt2_rxsysclksel_in;
  input [1:0]gt2_txsysclksel_in;
  output [7:0]gt2_dmonitorout_out;
  input [2:0]gt2_loopback_in;
  input [1:0]gt2_rxpd_in;
  input [1:0]gt2_txpd_in;
  input gt2_eyescanreset_in;
  input gt2_rxuserrdy_in;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_rxcdrhold_in;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  output [31:0]gt2_rxdata_out;
  output gt2_rxprbserr_out;
  input [2:0]gt2_rxprbssel_in;
  input gt2_rxprbscntreset_in;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  input gt2_gtxrxp_in;
  input gt2_gtxrxn_in;
  input gt2_rxbufreset_in;
  output [2:0]gt2_rxbufstatus_out;
  output [2:0]gt2_rxstatus_out;
  output gt2_rxbyteisaligned_out;
  output gt2_rxbyterealign_out;
  output gt2_rxcommadet_out;
  input gt2_rxmcommaalignen_in;
  input gt2_rxpcommaalignen_in;
  input gt2_rxdfelpmreset_in;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  input gt2_gtrxreset_in;
  input gt2_rxpcsreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxlpmen_in;
  input gt2_rxpolarity_in;
  output [3:0]gt2_rxchariscomma_out;
  output [3:0]gt2_rxcharisk_out;
  output gt2_rxresetdone_out;
  input [4:0]gt2_txpostcursor_in;
  input [4:0]gt2_txprecursor_in;
  input gt2_gttxreset_in;
  input gt2_txuserrdy_in;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input gt2_txprbsforceerr_in;
  output [1:0]gt2_txbufstatus_out;
  input [3:0]gt2_txdiffctrl_in;
  input gt2_txinhibit_in;
  input [31:0]gt2_txdata_in;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  input [3:0]gt2_txcharisk_in;
  input gt2_txpcsreset_in;
  input gt2_txpmareset_in;
  output gt2_txresetdone_out;
  input gt2_txpolarity_in;
  input [2:0]gt2_txprbssel_in;
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  input gt3_cplllockdetclk_in;
  input gt3_cpllpd_in;
  input gt3_cpllreset_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input [8:0]gt3_drpaddr_in;
  input gt3_drpclk_in;
  input [15:0]gt3_drpdi_in;
  output [15:0]gt3_drpdo_out;
  input gt3_drpen_in;
  output gt3_drprdy_out;
  input gt3_drpwe_in;
  input [1:0]gt3_rxsysclksel_in;
  input [1:0]gt3_txsysclksel_in;
  output [7:0]gt3_dmonitorout_out;
  input [2:0]gt3_loopback_in;
  input [1:0]gt3_rxpd_in;
  input [1:0]gt3_txpd_in;
  input gt3_eyescanreset_in;
  input gt3_rxuserrdy_in;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_rxcdrhold_in;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  output [31:0]gt3_rxdata_out;
  output gt3_rxprbserr_out;
  input [2:0]gt3_rxprbssel_in;
  input gt3_rxprbscntreset_in;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  input gt3_gtxrxp_in;
  input gt3_gtxrxn_in;
  input gt3_rxbufreset_in;
  output [2:0]gt3_rxbufstatus_out;
  output [2:0]gt3_rxstatus_out;
  output gt3_rxbyteisaligned_out;
  output gt3_rxbyterealign_out;
  output gt3_rxcommadet_out;
  input gt3_rxmcommaalignen_in;
  input gt3_rxpcommaalignen_in;
  input gt3_rxdfelpmreset_in;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  input gt3_gtrxreset_in;
  input gt3_rxpcsreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxlpmen_in;
  input gt3_rxpolarity_in;
  output [3:0]gt3_rxchariscomma_out;
  output [3:0]gt3_rxcharisk_out;
  output gt3_rxresetdone_out;
  input [4:0]gt3_txpostcursor_in;
  input [4:0]gt3_txprecursor_in;
  input gt3_gttxreset_in;
  input gt3_txuserrdy_in;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input gt3_txprbsforceerr_in;
  output [1:0]gt3_txbufstatus_out;
  input [3:0]gt3_txdiffctrl_in;
  input gt3_txinhibit_in;
  input [31:0]gt3_txdata_in;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  input [3:0]gt3_txcharisk_in;
  input gt3_txpcsreset_in;
  input gt3_txpmareset_in;
  output gt3_txresetdone_out;
  input gt3_txpolarity_in;
  input [2:0]gt3_txprbssel_in;
  output gt4_cpllfbclklost_out;
  output gt4_cplllock_out;
  input gt4_cplllockdetclk_in;
  input gt4_cpllpd_in;
  input gt4_cpllreset_in;
  input gt4_gtnorthrefclk0_in;
  input gt4_gtnorthrefclk1_in;
  input gt4_gtrefclk0_in;
  input gt4_gtrefclk1_in;
  input gt4_gtsouthrefclk0_in;
  input gt4_gtsouthrefclk1_in;
  input [8:0]gt4_drpaddr_in;
  input gt4_drpclk_in;
  input [15:0]gt4_drpdi_in;
  output [15:0]gt4_drpdo_out;
  input gt4_drpen_in;
  output gt4_drprdy_out;
  input gt4_drpwe_in;
  input [1:0]gt4_rxsysclksel_in;
  input [1:0]gt4_txsysclksel_in;
  output [7:0]gt4_dmonitorout_out;
  input [2:0]gt4_loopback_in;
  input [1:0]gt4_rxpd_in;
  input [1:0]gt4_txpd_in;
  input gt4_eyescanreset_in;
  input gt4_rxuserrdy_in;
  output gt4_eyescandataerror_out;
  input gt4_eyescantrigger_in;
  input gt4_rxcdrhold_in;
  input gt4_rxusrclk_in;
  input gt4_rxusrclk2_in;
  output [31:0]gt4_rxdata_out;
  output gt4_rxprbserr_out;
  input [2:0]gt4_rxprbssel_in;
  input gt4_rxprbscntreset_in;
  output [3:0]gt4_rxdisperr_out;
  output [3:0]gt4_rxnotintable_out;
  input gt4_gtxrxp_in;
  input gt4_gtxrxn_in;
  input gt4_rxbufreset_in;
  output [2:0]gt4_rxbufstatus_out;
  output [2:0]gt4_rxstatus_out;
  output gt4_rxbyteisaligned_out;
  output gt4_rxbyterealign_out;
  output gt4_rxcommadet_out;
  input gt4_rxmcommaalignen_in;
  input gt4_rxpcommaalignen_in;
  input gt4_rxdfelpmreset_in;
  output [6:0]gt4_rxmonitorout_out;
  input [1:0]gt4_rxmonitorsel_in;
  output gt4_rxoutclk_out;
  output gt4_rxoutclkfabric_out;
  input gt4_gtrxreset_in;
  input gt4_rxpcsreset_in;
  input gt4_rxpmareset_in;
  input gt4_rxlpmen_in;
  input gt4_rxpolarity_in;
  output [3:0]gt4_rxchariscomma_out;
  output [3:0]gt4_rxcharisk_out;
  output gt4_rxresetdone_out;
  input [4:0]gt4_txpostcursor_in;
  input [4:0]gt4_txprecursor_in;
  input gt4_gttxreset_in;
  input gt4_txuserrdy_in;
  input gt4_txusrclk_in;
  input gt4_txusrclk2_in;
  input gt4_txprbsforceerr_in;
  output [1:0]gt4_txbufstatus_out;
  input [3:0]gt4_txdiffctrl_in;
  input gt4_txinhibit_in;
  input [31:0]gt4_txdata_in;
  output gt4_gtxtxn_out;
  output gt4_gtxtxp_out;
  output gt4_txoutclk_out;
  output gt4_txoutclkfabric_out;
  output gt4_txoutclkpcs_out;
  input [3:0]gt4_txcharisk_in;
  input gt4_txpcsreset_in;
  input gt4_txpmareset_in;
  output gt4_txresetdone_out;
  input gt4_txpolarity_in;
  input [2:0]gt4_txprbssel_in;
  output gt5_cpllfbclklost_out;
  output gt5_cplllock_out;
  input gt5_cplllockdetclk_in;
  input gt5_cpllpd_in;
  input gt5_cpllreset_in;
  input gt5_gtnorthrefclk0_in;
  input gt5_gtnorthrefclk1_in;
  input gt5_gtrefclk0_in;
  input gt5_gtrefclk1_in;
  input gt5_gtsouthrefclk0_in;
  input gt5_gtsouthrefclk1_in;
  input [8:0]gt5_drpaddr_in;
  input gt5_drpclk_in;
  input [15:0]gt5_drpdi_in;
  output [15:0]gt5_drpdo_out;
  input gt5_drpen_in;
  output gt5_drprdy_out;
  input gt5_drpwe_in;
  input [1:0]gt5_rxsysclksel_in;
  input [1:0]gt5_txsysclksel_in;
  output [7:0]gt5_dmonitorout_out;
  input [2:0]gt5_loopback_in;
  input [1:0]gt5_rxpd_in;
  input [1:0]gt5_txpd_in;
  input gt5_eyescanreset_in;
  input gt5_rxuserrdy_in;
  output gt5_eyescandataerror_out;
  input gt5_eyescantrigger_in;
  input gt5_rxcdrhold_in;
  input gt5_rxusrclk_in;
  input gt5_rxusrclk2_in;
  output [31:0]gt5_rxdata_out;
  output gt5_rxprbserr_out;
  input [2:0]gt5_rxprbssel_in;
  input gt5_rxprbscntreset_in;
  output [3:0]gt5_rxdisperr_out;
  output [3:0]gt5_rxnotintable_out;
  input gt5_gtxrxp_in;
  input gt5_gtxrxn_in;
  input gt5_rxbufreset_in;
  output [2:0]gt5_rxbufstatus_out;
  output [2:0]gt5_rxstatus_out;
  output gt5_rxbyteisaligned_out;
  output gt5_rxbyterealign_out;
  output gt5_rxcommadet_out;
  input gt5_rxmcommaalignen_in;
  input gt5_rxpcommaalignen_in;
  input gt5_rxdfelpmreset_in;
  output [6:0]gt5_rxmonitorout_out;
  input [1:0]gt5_rxmonitorsel_in;
  output gt5_rxoutclk_out;
  output gt5_rxoutclkfabric_out;
  input gt5_gtrxreset_in;
  input gt5_rxpcsreset_in;
  input gt5_rxpmareset_in;
  input gt5_rxlpmen_in;
  input gt5_rxpolarity_in;
  output [3:0]gt5_rxchariscomma_out;
  output [3:0]gt5_rxcharisk_out;
  output gt5_rxresetdone_out;
  input [4:0]gt5_txpostcursor_in;
  input [4:0]gt5_txprecursor_in;
  input gt5_gttxreset_in;
  input gt5_txuserrdy_in;
  input gt5_txusrclk_in;
  input gt5_txusrclk2_in;
  input gt5_txprbsforceerr_in;
  output [1:0]gt5_txbufstatus_out;
  input [3:0]gt5_txdiffctrl_in;
  input gt5_txinhibit_in;
  input [31:0]gt5_txdata_in;
  output gt5_gtxtxn_out;
  output gt5_gtxtxp_out;
  output gt5_txoutclk_out;
  output gt5_txoutclkfabric_out;
  output gt5_txoutclkpcs_out;
  input [3:0]gt5_txcharisk_in;
  input gt5_txpcsreset_in;
  input gt5_txpmareset_in;
  output gt5_txresetdone_out;
  input gt5_txpolarity_in;
  input [2:0]gt5_txprbssel_in;
  output gt6_cpllfbclklost_out;
  output gt6_cplllock_out;
  input gt6_cplllockdetclk_in;
  input gt6_cpllpd_in;
  input gt6_cpllreset_in;
  input gt6_gtnorthrefclk0_in;
  input gt6_gtnorthrefclk1_in;
  input gt6_gtrefclk0_in;
  input gt6_gtrefclk1_in;
  input gt6_gtsouthrefclk0_in;
  input gt6_gtsouthrefclk1_in;
  input [8:0]gt6_drpaddr_in;
  input gt6_drpclk_in;
  input [15:0]gt6_drpdi_in;
  output [15:0]gt6_drpdo_out;
  input gt6_drpen_in;
  output gt6_drprdy_out;
  input gt6_drpwe_in;
  input [1:0]gt6_rxsysclksel_in;
  input [1:0]gt6_txsysclksel_in;
  output [7:0]gt6_dmonitorout_out;
  input [2:0]gt6_loopback_in;
  input [1:0]gt6_rxpd_in;
  input [1:0]gt6_txpd_in;
  input gt6_eyescanreset_in;
  input gt6_rxuserrdy_in;
  output gt6_eyescandataerror_out;
  input gt6_eyescantrigger_in;
  input gt6_rxcdrhold_in;
  input gt6_rxusrclk_in;
  input gt6_rxusrclk2_in;
  output [31:0]gt6_rxdata_out;
  output gt6_rxprbserr_out;
  input [2:0]gt6_rxprbssel_in;
  input gt6_rxprbscntreset_in;
  output [3:0]gt6_rxdisperr_out;
  output [3:0]gt6_rxnotintable_out;
  input gt6_gtxrxp_in;
  input gt6_gtxrxn_in;
  input gt6_rxbufreset_in;
  output [2:0]gt6_rxbufstatus_out;
  output [2:0]gt6_rxstatus_out;
  output gt6_rxbyteisaligned_out;
  output gt6_rxbyterealign_out;
  output gt6_rxcommadet_out;
  input gt6_rxmcommaalignen_in;
  input gt6_rxpcommaalignen_in;
  input gt6_rxdfelpmreset_in;
  output [6:0]gt6_rxmonitorout_out;
  input [1:0]gt6_rxmonitorsel_in;
  output gt6_rxoutclk_out;
  output gt6_rxoutclkfabric_out;
  input gt6_gtrxreset_in;
  input gt6_rxpcsreset_in;
  input gt6_rxpmareset_in;
  input gt6_rxlpmen_in;
  input gt6_rxpolarity_in;
  output [3:0]gt6_rxchariscomma_out;
  output [3:0]gt6_rxcharisk_out;
  output gt6_rxresetdone_out;
  input [4:0]gt6_txpostcursor_in;
  input [4:0]gt6_txprecursor_in;
  input gt6_gttxreset_in;
  input gt6_txuserrdy_in;
  input gt6_txusrclk_in;
  input gt6_txusrclk2_in;
  input gt6_txprbsforceerr_in;
  output [1:0]gt6_txbufstatus_out;
  input [3:0]gt6_txdiffctrl_in;
  input gt6_txinhibit_in;
  input [31:0]gt6_txdata_in;
  output gt6_gtxtxn_out;
  output gt6_gtxtxp_out;
  output gt6_txoutclk_out;
  output gt6_txoutclkfabric_out;
  output gt6_txoutclkpcs_out;
  input [3:0]gt6_txcharisk_in;
  input gt6_txpcsreset_in;
  input gt6_txpmareset_in;
  output gt6_txresetdone_out;
  input gt6_txpolarity_in;
  input [2:0]gt6_txprbssel_in;
  output gt7_cpllfbclklost_out;
  output gt7_cplllock_out;
  input gt7_cplllockdetclk_in;
  input gt7_cpllpd_in;
  input gt7_cpllreset_in;
  input gt7_gtnorthrefclk0_in;
  input gt7_gtnorthrefclk1_in;
  input gt7_gtrefclk0_in;
  input gt7_gtrefclk1_in;
  input gt7_gtsouthrefclk0_in;
  input gt7_gtsouthrefclk1_in;
  input [8:0]gt7_drpaddr_in;
  input gt7_drpclk_in;
  input [15:0]gt7_drpdi_in;
  output [15:0]gt7_drpdo_out;
  input gt7_drpen_in;
  output gt7_drprdy_out;
  input gt7_drpwe_in;
  input [1:0]gt7_rxsysclksel_in;
  input [1:0]gt7_txsysclksel_in;
  output [7:0]gt7_dmonitorout_out;
  input [2:0]gt7_loopback_in;
  input [1:0]gt7_rxpd_in;
  input [1:0]gt7_txpd_in;
  input gt7_eyescanreset_in;
  input gt7_rxuserrdy_in;
  output gt7_eyescandataerror_out;
  input gt7_eyescantrigger_in;
  input gt7_rxcdrhold_in;
  input gt7_rxusrclk_in;
  input gt7_rxusrclk2_in;
  output [31:0]gt7_rxdata_out;
  output gt7_rxprbserr_out;
  input [2:0]gt7_rxprbssel_in;
  input gt7_rxprbscntreset_in;
  output [3:0]gt7_rxdisperr_out;
  output [3:0]gt7_rxnotintable_out;
  input gt7_gtxrxp_in;
  input gt7_gtxrxn_in;
  input gt7_rxbufreset_in;
  output [2:0]gt7_rxbufstatus_out;
  output [2:0]gt7_rxstatus_out;
  output gt7_rxbyteisaligned_out;
  output gt7_rxbyterealign_out;
  output gt7_rxcommadet_out;
  input gt7_rxmcommaalignen_in;
  input gt7_rxpcommaalignen_in;
  input gt7_rxdfelpmreset_in;
  output [6:0]gt7_rxmonitorout_out;
  input [1:0]gt7_rxmonitorsel_in;
  output gt7_rxoutclk_out;
  output gt7_rxoutclkfabric_out;
  input gt7_gtrxreset_in;
  input gt7_rxpcsreset_in;
  input gt7_rxpmareset_in;
  input gt7_rxlpmen_in;
  input gt7_rxpolarity_in;
  output [3:0]gt7_rxchariscomma_out;
  output [3:0]gt7_rxcharisk_out;
  output gt7_rxresetdone_out;
  input [4:0]gt7_txpostcursor_in;
  input [4:0]gt7_txprecursor_in;
  input gt7_gttxreset_in;
  input gt7_txuserrdy_in;
  input gt7_txusrclk_in;
  input gt7_txusrclk2_in;
  input gt7_txprbsforceerr_in;
  output [1:0]gt7_txbufstatus_out;
  input [3:0]gt7_txdiffctrl_in;
  input gt7_txinhibit_in;
  input [31:0]gt7_txdata_in;
  output gt7_gtxtxn_out;
  output gt7_gtxtxp_out;
  output gt7_txoutclk_out;
  output gt7_txoutclkfabric_out;
  output gt7_txoutclkpcs_out;
  input [3:0]gt7_txcharisk_in;
  input gt7_txpcsreset_in;
  input gt7_txpmareset_in;
  output gt7_txresetdone_out;
  input gt7_txpolarity_in;
  input [2:0]gt7_txprbssel_in;
  input gt0_qplllock_in;
  input gt0_qpllrefclklost_in;
  output gt0_qpllreset_out;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt1_qplllock_in;
  input gt1_qpllrefclklost_in;
  output gt1_qpllreset_out;
  input gt1_qplloutclk_in;
  input gt1_qplloutrefclk_in;

  wire \<const0> ;
  wire [31:1]data0;
  wire gt0_gtrxreset_i;
  wire gt0_gtrxreset_in;
  wire gt0_gttxreset_i;
  wire gt0_gttxreset_in;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire gt0_qplllock_in;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt0_qpllreset_out;
  wire [31:0]gt0_rx_cdrlock_counter;
  wire \gt0_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_5_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_5_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_5_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt0_rx_cdrlocked_i_1_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire [3:0]gt0_rxcharisk_out;
  wire [31:0]gt0_rxdata_out;
  wire [3:0]gt0_rxdisperr_out;
  wire gt0_rxmcommaalignen_in;
  wire [3:0]gt0_rxnotintable_out;
  wire gt0_rxoutclk_out;
  wire gt0_rxresetdone_out;
  wire gt0_rxusrclk_in;
  wire [3:0]gt0_txcharisk_in;
  wire [31:0]gt0_txdata_in;
  wire gt0_txoutclk_out;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txresetdone_out;
  wire gt0_txusrclk_in;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire gt1_qplllock_in;
  wire gt1_qplloutclk_in;
  wire gt1_qplloutrefclk_in;
  wire [31:0]gt1_rx_cdrlock_counter;
  wire \gt1_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt1_rx_cdrlocked_i_1_n_0;
  wire gt1_rx_cdrlocked_reg_n_0;
  wire [3:0]gt1_rxcharisk_out;
  wire [31:0]gt1_rxdata_out;
  wire [3:0]gt1_rxdisperr_out;
  wire [3:0]gt1_rxnotintable_out;
  wire gt1_rxresetdone_out;
  wire [3:0]gt1_txcharisk_in;
  wire [31:0]gt1_txdata_in;
  wire gt1_txresetdone_out;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [31:0]gt2_rx_cdrlock_counter;
  wire \gt2_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_5_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_5_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_5_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt2_rx_cdrlocked_i_1_n_0;
  wire gt2_rx_cdrlocked_reg_n_0;
  wire [3:0]gt2_rxcharisk_out;
  wire [31:0]gt2_rxdata_out;
  wire [3:0]gt2_rxdisperr_out;
  wire [3:0]gt2_rxnotintable_out;
  wire gt2_rxresetdone_out;
  wire [3:0]gt2_txcharisk_in;
  wire [31:0]gt2_txdata_in;
  wire gt2_txresetdone_out;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [31:0]gt3_rx_cdrlock_counter;
  wire \gt3_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_5_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_5_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_5_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt3_rx_cdrlocked_i_1_n_0;
  wire gt3_rx_cdrlocked_reg_n_0;
  wire [3:0]gt3_rxcharisk_out;
  wire [31:0]gt3_rxdata_out;
  wire [3:0]gt3_rxdisperr_out;
  wire [3:0]gt3_rxnotintable_out;
  wire gt3_rxresetdone_out;
  wire [3:0]gt3_txcharisk_in;
  wire [31:0]gt3_txdata_in;
  wire gt3_txresetdone_out;
  wire gt4_gtxrxn_in;
  wire gt4_gtxrxp_in;
  wire gt4_gtxtxn_out;
  wire gt4_gtxtxp_out;
  wire [31:0]gt4_rx_cdrlock_counter;
  wire \gt4_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt4_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt4_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt4_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt4_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt4_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt4_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt4_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt4_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt4_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt4_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt4_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt4_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt4_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt4_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt4_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt4_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt4_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt4_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt4_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt4_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt4_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt4_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt4_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt4_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt4_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt4_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt4_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt4_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt4_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt4_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt4_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt4_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt4_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt4_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt4_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt4_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt4_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt4_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt4_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt4_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt4_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt4_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt4_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt4_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt4_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt4_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt4_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt4_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt4_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt4_rx_cdrlock_counter_reg[31]_i_5_n_5 ;
  wire \gt4_rx_cdrlock_counter_reg[31]_i_5_n_6 ;
  wire \gt4_rx_cdrlock_counter_reg[31]_i_5_n_7 ;
  wire \gt4_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt4_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt4_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt4_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt4_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt4_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt4_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt4_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt4_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt4_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt4_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt4_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt4_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt4_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt4_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt4_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt4_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt4_rx_cdrlocked_i_1_n_0;
  wire gt4_rx_cdrlocked_reg_n_0;
  wire [3:0]gt4_rxcharisk_out;
  wire [31:0]gt4_rxdata_out;
  wire [3:0]gt4_rxdisperr_out;
  wire [3:0]gt4_rxnotintable_out;
  wire gt4_rxresetdone_out;
  wire [3:0]gt4_txcharisk_in;
  wire [31:0]gt4_txdata_in;
  wire gt4_txresetdone_out;
  wire gt5_gtxrxn_in;
  wire gt5_gtxrxp_in;
  wire gt5_gtxtxn_out;
  wire gt5_gtxtxp_out;
  wire [31:0]gt5_rx_cdrlock_counter;
  wire \gt5_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt5_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt5_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt5_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt5_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt5_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt5_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt5_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt5_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt5_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt5_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt5_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt5_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt5_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt5_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt5_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt5_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt5_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt5_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt5_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt5_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt5_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt5_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt5_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt5_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt5_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt5_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt5_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt5_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt5_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt5_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt5_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt5_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt5_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt5_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt5_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt5_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt5_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt5_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt5_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt5_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt5_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt5_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt5_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt5_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt5_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt5_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt5_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt5_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt5_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt5_rx_cdrlock_counter_reg[31]_i_5_n_5 ;
  wire \gt5_rx_cdrlock_counter_reg[31]_i_5_n_6 ;
  wire \gt5_rx_cdrlock_counter_reg[31]_i_5_n_7 ;
  wire \gt5_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt5_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt5_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt5_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt5_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt5_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt5_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt5_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt5_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt5_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt5_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt5_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt5_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt5_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt5_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt5_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt5_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt5_rx_cdrlocked_i_1_n_0;
  wire gt5_rx_cdrlocked_reg_n_0;
  wire [3:0]gt5_rxcharisk_out;
  wire [31:0]gt5_rxdata_out;
  wire [3:0]gt5_rxdisperr_out;
  wire [3:0]gt5_rxnotintable_out;
  wire gt5_rxresetdone_out;
  wire [3:0]gt5_txcharisk_in;
  wire [31:0]gt5_txdata_in;
  wire gt5_txresetdone_out;
  wire gt6_gtxrxn_in;
  wire gt6_gtxrxp_in;
  wire gt6_gtxtxn_out;
  wire gt6_gtxtxp_out;
  wire [31:0]gt6_rx_cdrlock_counter;
  wire \gt6_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt6_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt6_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt6_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt6_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt6_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt6_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt6_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt6_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt6_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt6_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt6_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt6_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt6_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt6_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt6_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt6_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt6_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt6_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt6_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt6_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt6_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt6_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt6_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt6_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt6_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt6_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt6_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt6_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt6_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt6_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt6_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt6_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt6_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt6_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt6_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt6_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt6_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt6_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt6_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt6_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt6_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt6_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt6_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt6_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt6_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt6_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt6_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt6_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt6_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt6_rx_cdrlock_counter_reg[31]_i_5_n_5 ;
  wire \gt6_rx_cdrlock_counter_reg[31]_i_5_n_6 ;
  wire \gt6_rx_cdrlock_counter_reg[31]_i_5_n_7 ;
  wire \gt6_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt6_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt6_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt6_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt6_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt6_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt6_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt6_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt6_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt6_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt6_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt6_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt6_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt6_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt6_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt6_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt6_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt6_rx_cdrlocked_i_1_n_0;
  wire gt6_rx_cdrlocked_reg_n_0;
  wire [3:0]gt6_rxcharisk_out;
  wire [31:0]gt6_rxdata_out;
  wire [3:0]gt6_rxdisperr_out;
  wire [3:0]gt6_rxnotintable_out;
  wire gt6_rxresetdone_out;
  wire [3:0]gt6_txcharisk_in;
  wire [31:0]gt6_txdata_in;
  wire gt6_txresetdone_out;
  wire gt7_gtrxreset_i;
  wire gt7_gttxreset_i;
  wire gt7_gtxrxn_in;
  wire gt7_gtxrxp_in;
  wire gt7_gtxtxn_out;
  wire gt7_gtxtxp_out;
  wire [31:0]gt7_rx_cdrlock_counter;
  wire \gt7_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt7_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt7_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt7_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt7_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt7_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt7_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt7_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt7_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt7_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt7_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt7_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt7_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt7_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt7_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt7_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt7_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt7_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt7_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt7_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt7_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt7_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt7_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt7_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt7_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt7_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt7_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt7_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt7_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt7_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt7_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt7_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt7_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt7_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt7_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt7_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt7_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt7_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt7_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt7_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt7_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt7_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt7_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt7_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt7_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt7_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt7_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt7_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt7_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt7_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt7_rx_cdrlock_counter_reg[31]_i_5_n_5 ;
  wire \gt7_rx_cdrlock_counter_reg[31]_i_5_n_6 ;
  wire \gt7_rx_cdrlock_counter_reg[31]_i_5_n_7 ;
  wire \gt7_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt7_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt7_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt7_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt7_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt7_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt7_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt7_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt7_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt7_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt7_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt7_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt7_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt7_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt7_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt7_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt7_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt7_rx_cdrlocked_i_1_n_0;
  wire gt7_rx_cdrlocked_reg_n_0;
  wire [3:0]gt7_rxcharisk_out;
  wire [31:0]gt7_rxdata_out;
  wire [3:0]gt7_rxdisperr_out;
  wire [3:0]gt7_rxnotintable_out;
  wire gt7_rxresetdone_out;
  wire [3:0]gt7_txcharisk_in;
  wire [31:0]gt7_txdata_in;
  wire gt7_txresetdone_out;
  wire gt_qplllock_i;
  wire gt_rx_cpllreset_t;
  wire gt_rx_fsm_reset_done_out;
  wire gt_rx_qpllreset_t;
  wire gt_rxresetdone_i;
  wire gt_rxuserrdy_t;
  wire gt_tx_fsm_reset_done_out;
  wire gt_txresetdone_i;
  wire gt_txuserrdy_t;
  wire soft_reset_rx_in;
  wire soft_reset_tx_in;
  wire sysclk_in;
  wire [3:2]\NLW_gt0_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt0_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_gt1_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt1_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_gt2_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt2_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_gt3_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt3_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_gt4_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt4_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_gt5_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt5_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_gt6_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt6_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_gt7_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt7_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;

  assign gt0_cpllfbclklost_out = \<const0> ;
  assign gt0_cplllock_out = \<const0> ;
  assign gt0_dmonitorout_out[7] = \<const0> ;
  assign gt0_dmonitorout_out[6] = \<const0> ;
  assign gt0_dmonitorout_out[5] = \<const0> ;
  assign gt0_dmonitorout_out[4] = \<const0> ;
  assign gt0_dmonitorout_out[3] = \<const0> ;
  assign gt0_dmonitorout_out[2] = \<const0> ;
  assign gt0_dmonitorout_out[1] = \<const0> ;
  assign gt0_dmonitorout_out[0] = \<const0> ;
  assign gt0_drpdo_out[15] = \<const0> ;
  assign gt0_drpdo_out[14] = \<const0> ;
  assign gt0_drpdo_out[13] = \<const0> ;
  assign gt0_drpdo_out[12] = \<const0> ;
  assign gt0_drpdo_out[11] = \<const0> ;
  assign gt0_drpdo_out[10] = \<const0> ;
  assign gt0_drpdo_out[9] = \<const0> ;
  assign gt0_drpdo_out[8] = \<const0> ;
  assign gt0_drpdo_out[7] = \<const0> ;
  assign gt0_drpdo_out[6] = \<const0> ;
  assign gt0_drpdo_out[5] = \<const0> ;
  assign gt0_drpdo_out[4] = \<const0> ;
  assign gt0_drpdo_out[3] = \<const0> ;
  assign gt0_drpdo_out[2] = \<const0> ;
  assign gt0_drpdo_out[1] = \<const0> ;
  assign gt0_drpdo_out[0] = \<const0> ;
  assign gt0_drprdy_out = \<const0> ;
  assign gt0_eyescandataerror_out = \<const0> ;
  assign gt0_rxbufstatus_out[2] = \<const0> ;
  assign gt0_rxbufstatus_out[1] = \<const0> ;
  assign gt0_rxbufstatus_out[0] = \<const0> ;
  assign gt0_rxbyteisaligned_out = \<const0> ;
  assign gt0_rxbyterealign_out = \<const0> ;
  assign gt0_rxchariscomma_out[3] = \<const0> ;
  assign gt0_rxchariscomma_out[2] = \<const0> ;
  assign gt0_rxchariscomma_out[1] = \<const0> ;
  assign gt0_rxchariscomma_out[0] = \<const0> ;
  assign gt0_rxcommadet_out = \<const0> ;
  assign gt0_rxmonitorout_out[6] = \<const0> ;
  assign gt0_rxmonitorout_out[5] = \<const0> ;
  assign gt0_rxmonitorout_out[4] = \<const0> ;
  assign gt0_rxmonitorout_out[3] = \<const0> ;
  assign gt0_rxmonitorout_out[2] = \<const0> ;
  assign gt0_rxmonitorout_out[1] = \<const0> ;
  assign gt0_rxmonitorout_out[0] = \<const0> ;
  assign gt0_rxoutclkfabric_out = \<const0> ;
  assign gt0_rxprbserr_out = \<const0> ;
  assign gt0_rxstatus_out[2] = \<const0> ;
  assign gt0_rxstatus_out[1] = \<const0> ;
  assign gt0_rxstatus_out[0] = \<const0> ;
  assign gt0_txbufstatus_out[1] = \<const0> ;
  assign gt0_txbufstatus_out[0] = \<const0> ;
  assign gt0_txoutclkfabric_out = \<const0> ;
  assign gt0_txoutclkpcs_out = \<const0> ;
  assign gt1_cpllfbclklost_out = \<const0> ;
  assign gt1_cplllock_out = \<const0> ;
  assign gt1_dmonitorout_out[7] = \<const0> ;
  assign gt1_dmonitorout_out[6] = \<const0> ;
  assign gt1_dmonitorout_out[5] = \<const0> ;
  assign gt1_dmonitorout_out[4] = \<const0> ;
  assign gt1_dmonitorout_out[3] = \<const0> ;
  assign gt1_dmonitorout_out[2] = \<const0> ;
  assign gt1_dmonitorout_out[1] = \<const0> ;
  assign gt1_dmonitorout_out[0] = \<const0> ;
  assign gt1_drpdo_out[15] = \<const0> ;
  assign gt1_drpdo_out[14] = \<const0> ;
  assign gt1_drpdo_out[13] = \<const0> ;
  assign gt1_drpdo_out[12] = \<const0> ;
  assign gt1_drpdo_out[11] = \<const0> ;
  assign gt1_drpdo_out[10] = \<const0> ;
  assign gt1_drpdo_out[9] = \<const0> ;
  assign gt1_drpdo_out[8] = \<const0> ;
  assign gt1_drpdo_out[7] = \<const0> ;
  assign gt1_drpdo_out[6] = \<const0> ;
  assign gt1_drpdo_out[5] = \<const0> ;
  assign gt1_drpdo_out[4] = \<const0> ;
  assign gt1_drpdo_out[3] = \<const0> ;
  assign gt1_drpdo_out[2] = \<const0> ;
  assign gt1_drpdo_out[1] = \<const0> ;
  assign gt1_drpdo_out[0] = \<const0> ;
  assign gt1_drprdy_out = \<const0> ;
  assign gt1_eyescandataerror_out = \<const0> ;
  assign gt1_qpllreset_out = gt0_qpllreset_out;
  assign gt1_rxbufstatus_out[2] = \<const0> ;
  assign gt1_rxbufstatus_out[1] = \<const0> ;
  assign gt1_rxbufstatus_out[0] = \<const0> ;
  assign gt1_rxbyteisaligned_out = \<const0> ;
  assign gt1_rxbyterealign_out = \<const0> ;
  assign gt1_rxchariscomma_out[3] = \<const0> ;
  assign gt1_rxchariscomma_out[2] = \<const0> ;
  assign gt1_rxchariscomma_out[1] = \<const0> ;
  assign gt1_rxchariscomma_out[0] = \<const0> ;
  assign gt1_rxcommadet_out = \<const0> ;
  assign gt1_rxmonitorout_out[6] = \<const0> ;
  assign gt1_rxmonitorout_out[5] = \<const0> ;
  assign gt1_rxmonitorout_out[4] = \<const0> ;
  assign gt1_rxmonitorout_out[3] = \<const0> ;
  assign gt1_rxmonitorout_out[2] = \<const0> ;
  assign gt1_rxmonitorout_out[1] = \<const0> ;
  assign gt1_rxmonitorout_out[0] = \<const0> ;
  assign gt1_rxoutclk_out = \<const0> ;
  assign gt1_rxoutclkfabric_out = \<const0> ;
  assign gt1_rxprbserr_out = \<const0> ;
  assign gt1_rxstatus_out[2] = \<const0> ;
  assign gt1_rxstatus_out[1] = \<const0> ;
  assign gt1_rxstatus_out[0] = \<const0> ;
  assign gt1_txbufstatus_out[1] = \<const0> ;
  assign gt1_txbufstatus_out[0] = \<const0> ;
  assign gt1_txoutclk_out = \<const0> ;
  assign gt1_txoutclkfabric_out = \<const0> ;
  assign gt1_txoutclkpcs_out = \<const0> ;
  assign gt2_cpllfbclklost_out = \<const0> ;
  assign gt2_cplllock_out = \<const0> ;
  assign gt2_dmonitorout_out[7] = \<const0> ;
  assign gt2_dmonitorout_out[6] = \<const0> ;
  assign gt2_dmonitorout_out[5] = \<const0> ;
  assign gt2_dmonitorout_out[4] = \<const0> ;
  assign gt2_dmonitorout_out[3] = \<const0> ;
  assign gt2_dmonitorout_out[2] = \<const0> ;
  assign gt2_dmonitorout_out[1] = \<const0> ;
  assign gt2_dmonitorout_out[0] = \<const0> ;
  assign gt2_drpdo_out[15] = \<const0> ;
  assign gt2_drpdo_out[14] = \<const0> ;
  assign gt2_drpdo_out[13] = \<const0> ;
  assign gt2_drpdo_out[12] = \<const0> ;
  assign gt2_drpdo_out[11] = \<const0> ;
  assign gt2_drpdo_out[10] = \<const0> ;
  assign gt2_drpdo_out[9] = \<const0> ;
  assign gt2_drpdo_out[8] = \<const0> ;
  assign gt2_drpdo_out[7] = \<const0> ;
  assign gt2_drpdo_out[6] = \<const0> ;
  assign gt2_drpdo_out[5] = \<const0> ;
  assign gt2_drpdo_out[4] = \<const0> ;
  assign gt2_drpdo_out[3] = \<const0> ;
  assign gt2_drpdo_out[2] = \<const0> ;
  assign gt2_drpdo_out[1] = \<const0> ;
  assign gt2_drpdo_out[0] = \<const0> ;
  assign gt2_drprdy_out = \<const0> ;
  assign gt2_eyescandataerror_out = \<const0> ;
  assign gt2_rxbufstatus_out[2] = \<const0> ;
  assign gt2_rxbufstatus_out[1] = \<const0> ;
  assign gt2_rxbufstatus_out[0] = \<const0> ;
  assign gt2_rxbyteisaligned_out = \<const0> ;
  assign gt2_rxbyterealign_out = \<const0> ;
  assign gt2_rxchariscomma_out[3] = \<const0> ;
  assign gt2_rxchariscomma_out[2] = \<const0> ;
  assign gt2_rxchariscomma_out[1] = \<const0> ;
  assign gt2_rxchariscomma_out[0] = \<const0> ;
  assign gt2_rxcommadet_out = \<const0> ;
  assign gt2_rxmonitorout_out[6] = \<const0> ;
  assign gt2_rxmonitorout_out[5] = \<const0> ;
  assign gt2_rxmonitorout_out[4] = \<const0> ;
  assign gt2_rxmonitorout_out[3] = \<const0> ;
  assign gt2_rxmonitorout_out[2] = \<const0> ;
  assign gt2_rxmonitorout_out[1] = \<const0> ;
  assign gt2_rxmonitorout_out[0] = \<const0> ;
  assign gt2_rxoutclk_out = \<const0> ;
  assign gt2_rxoutclkfabric_out = \<const0> ;
  assign gt2_rxprbserr_out = \<const0> ;
  assign gt2_rxstatus_out[2] = \<const0> ;
  assign gt2_rxstatus_out[1] = \<const0> ;
  assign gt2_rxstatus_out[0] = \<const0> ;
  assign gt2_txbufstatus_out[1] = \<const0> ;
  assign gt2_txbufstatus_out[0] = \<const0> ;
  assign gt2_txoutclk_out = \<const0> ;
  assign gt2_txoutclkfabric_out = \<const0> ;
  assign gt2_txoutclkpcs_out = \<const0> ;
  assign gt3_cpllfbclklost_out = \<const0> ;
  assign gt3_cplllock_out = \<const0> ;
  assign gt3_dmonitorout_out[7] = \<const0> ;
  assign gt3_dmonitorout_out[6] = \<const0> ;
  assign gt3_dmonitorout_out[5] = \<const0> ;
  assign gt3_dmonitorout_out[4] = \<const0> ;
  assign gt3_dmonitorout_out[3] = \<const0> ;
  assign gt3_dmonitorout_out[2] = \<const0> ;
  assign gt3_dmonitorout_out[1] = \<const0> ;
  assign gt3_dmonitorout_out[0] = \<const0> ;
  assign gt3_drpdo_out[15] = \<const0> ;
  assign gt3_drpdo_out[14] = \<const0> ;
  assign gt3_drpdo_out[13] = \<const0> ;
  assign gt3_drpdo_out[12] = \<const0> ;
  assign gt3_drpdo_out[11] = \<const0> ;
  assign gt3_drpdo_out[10] = \<const0> ;
  assign gt3_drpdo_out[9] = \<const0> ;
  assign gt3_drpdo_out[8] = \<const0> ;
  assign gt3_drpdo_out[7] = \<const0> ;
  assign gt3_drpdo_out[6] = \<const0> ;
  assign gt3_drpdo_out[5] = \<const0> ;
  assign gt3_drpdo_out[4] = \<const0> ;
  assign gt3_drpdo_out[3] = \<const0> ;
  assign gt3_drpdo_out[2] = \<const0> ;
  assign gt3_drpdo_out[1] = \<const0> ;
  assign gt3_drpdo_out[0] = \<const0> ;
  assign gt3_drprdy_out = \<const0> ;
  assign gt3_eyescandataerror_out = \<const0> ;
  assign gt3_rxbufstatus_out[2] = \<const0> ;
  assign gt3_rxbufstatus_out[1] = \<const0> ;
  assign gt3_rxbufstatus_out[0] = \<const0> ;
  assign gt3_rxbyteisaligned_out = \<const0> ;
  assign gt3_rxbyterealign_out = \<const0> ;
  assign gt3_rxchariscomma_out[3] = \<const0> ;
  assign gt3_rxchariscomma_out[2] = \<const0> ;
  assign gt3_rxchariscomma_out[1] = \<const0> ;
  assign gt3_rxchariscomma_out[0] = \<const0> ;
  assign gt3_rxcommadet_out = \<const0> ;
  assign gt3_rxmonitorout_out[6] = \<const0> ;
  assign gt3_rxmonitorout_out[5] = \<const0> ;
  assign gt3_rxmonitorout_out[4] = \<const0> ;
  assign gt3_rxmonitorout_out[3] = \<const0> ;
  assign gt3_rxmonitorout_out[2] = \<const0> ;
  assign gt3_rxmonitorout_out[1] = \<const0> ;
  assign gt3_rxmonitorout_out[0] = \<const0> ;
  assign gt3_rxoutclk_out = \<const0> ;
  assign gt3_rxoutclkfabric_out = \<const0> ;
  assign gt3_rxprbserr_out = \<const0> ;
  assign gt3_rxstatus_out[2] = \<const0> ;
  assign gt3_rxstatus_out[1] = \<const0> ;
  assign gt3_rxstatus_out[0] = \<const0> ;
  assign gt3_txbufstatus_out[1] = \<const0> ;
  assign gt3_txbufstatus_out[0] = \<const0> ;
  assign gt3_txoutclk_out = \<const0> ;
  assign gt3_txoutclkfabric_out = \<const0> ;
  assign gt3_txoutclkpcs_out = \<const0> ;
  assign gt4_cpllfbclklost_out = \<const0> ;
  assign gt4_cplllock_out = \<const0> ;
  assign gt4_dmonitorout_out[7] = \<const0> ;
  assign gt4_dmonitorout_out[6] = \<const0> ;
  assign gt4_dmonitorout_out[5] = \<const0> ;
  assign gt4_dmonitorout_out[4] = \<const0> ;
  assign gt4_dmonitorout_out[3] = \<const0> ;
  assign gt4_dmonitorout_out[2] = \<const0> ;
  assign gt4_dmonitorout_out[1] = \<const0> ;
  assign gt4_dmonitorout_out[0] = \<const0> ;
  assign gt4_drpdo_out[15] = \<const0> ;
  assign gt4_drpdo_out[14] = \<const0> ;
  assign gt4_drpdo_out[13] = \<const0> ;
  assign gt4_drpdo_out[12] = \<const0> ;
  assign gt4_drpdo_out[11] = \<const0> ;
  assign gt4_drpdo_out[10] = \<const0> ;
  assign gt4_drpdo_out[9] = \<const0> ;
  assign gt4_drpdo_out[8] = \<const0> ;
  assign gt4_drpdo_out[7] = \<const0> ;
  assign gt4_drpdo_out[6] = \<const0> ;
  assign gt4_drpdo_out[5] = \<const0> ;
  assign gt4_drpdo_out[4] = \<const0> ;
  assign gt4_drpdo_out[3] = \<const0> ;
  assign gt4_drpdo_out[2] = \<const0> ;
  assign gt4_drpdo_out[1] = \<const0> ;
  assign gt4_drpdo_out[0] = \<const0> ;
  assign gt4_drprdy_out = \<const0> ;
  assign gt4_eyescandataerror_out = \<const0> ;
  assign gt4_rxbufstatus_out[2] = \<const0> ;
  assign gt4_rxbufstatus_out[1] = \<const0> ;
  assign gt4_rxbufstatus_out[0] = \<const0> ;
  assign gt4_rxbyteisaligned_out = \<const0> ;
  assign gt4_rxbyterealign_out = \<const0> ;
  assign gt4_rxchariscomma_out[3] = \<const0> ;
  assign gt4_rxchariscomma_out[2] = \<const0> ;
  assign gt4_rxchariscomma_out[1] = \<const0> ;
  assign gt4_rxchariscomma_out[0] = \<const0> ;
  assign gt4_rxcommadet_out = \<const0> ;
  assign gt4_rxmonitorout_out[6] = \<const0> ;
  assign gt4_rxmonitorout_out[5] = \<const0> ;
  assign gt4_rxmonitorout_out[4] = \<const0> ;
  assign gt4_rxmonitorout_out[3] = \<const0> ;
  assign gt4_rxmonitorout_out[2] = \<const0> ;
  assign gt4_rxmonitorout_out[1] = \<const0> ;
  assign gt4_rxmonitorout_out[0] = \<const0> ;
  assign gt4_rxoutclk_out = \<const0> ;
  assign gt4_rxoutclkfabric_out = \<const0> ;
  assign gt4_rxprbserr_out = \<const0> ;
  assign gt4_rxstatus_out[2] = \<const0> ;
  assign gt4_rxstatus_out[1] = \<const0> ;
  assign gt4_rxstatus_out[0] = \<const0> ;
  assign gt4_txbufstatus_out[1] = \<const0> ;
  assign gt4_txbufstatus_out[0] = \<const0> ;
  assign gt4_txoutclk_out = \<const0> ;
  assign gt4_txoutclkfabric_out = \<const0> ;
  assign gt4_txoutclkpcs_out = \<const0> ;
  assign gt5_cpllfbclklost_out = \<const0> ;
  assign gt5_cplllock_out = \<const0> ;
  assign gt5_dmonitorout_out[7] = \<const0> ;
  assign gt5_dmonitorout_out[6] = \<const0> ;
  assign gt5_dmonitorout_out[5] = \<const0> ;
  assign gt5_dmonitorout_out[4] = \<const0> ;
  assign gt5_dmonitorout_out[3] = \<const0> ;
  assign gt5_dmonitorout_out[2] = \<const0> ;
  assign gt5_dmonitorout_out[1] = \<const0> ;
  assign gt5_dmonitorout_out[0] = \<const0> ;
  assign gt5_drpdo_out[15] = \<const0> ;
  assign gt5_drpdo_out[14] = \<const0> ;
  assign gt5_drpdo_out[13] = \<const0> ;
  assign gt5_drpdo_out[12] = \<const0> ;
  assign gt5_drpdo_out[11] = \<const0> ;
  assign gt5_drpdo_out[10] = \<const0> ;
  assign gt5_drpdo_out[9] = \<const0> ;
  assign gt5_drpdo_out[8] = \<const0> ;
  assign gt5_drpdo_out[7] = \<const0> ;
  assign gt5_drpdo_out[6] = \<const0> ;
  assign gt5_drpdo_out[5] = \<const0> ;
  assign gt5_drpdo_out[4] = \<const0> ;
  assign gt5_drpdo_out[3] = \<const0> ;
  assign gt5_drpdo_out[2] = \<const0> ;
  assign gt5_drpdo_out[1] = \<const0> ;
  assign gt5_drpdo_out[0] = \<const0> ;
  assign gt5_drprdy_out = \<const0> ;
  assign gt5_eyescandataerror_out = \<const0> ;
  assign gt5_rxbufstatus_out[2] = \<const0> ;
  assign gt5_rxbufstatus_out[1] = \<const0> ;
  assign gt5_rxbufstatus_out[0] = \<const0> ;
  assign gt5_rxbyteisaligned_out = \<const0> ;
  assign gt5_rxbyterealign_out = \<const0> ;
  assign gt5_rxchariscomma_out[3] = \<const0> ;
  assign gt5_rxchariscomma_out[2] = \<const0> ;
  assign gt5_rxchariscomma_out[1] = \<const0> ;
  assign gt5_rxchariscomma_out[0] = \<const0> ;
  assign gt5_rxcommadet_out = \<const0> ;
  assign gt5_rxmonitorout_out[6] = \<const0> ;
  assign gt5_rxmonitorout_out[5] = \<const0> ;
  assign gt5_rxmonitorout_out[4] = \<const0> ;
  assign gt5_rxmonitorout_out[3] = \<const0> ;
  assign gt5_rxmonitorout_out[2] = \<const0> ;
  assign gt5_rxmonitorout_out[1] = \<const0> ;
  assign gt5_rxmonitorout_out[0] = \<const0> ;
  assign gt5_rxoutclk_out = \<const0> ;
  assign gt5_rxoutclkfabric_out = \<const0> ;
  assign gt5_rxprbserr_out = \<const0> ;
  assign gt5_rxstatus_out[2] = \<const0> ;
  assign gt5_rxstatus_out[1] = \<const0> ;
  assign gt5_rxstatus_out[0] = \<const0> ;
  assign gt5_txbufstatus_out[1] = \<const0> ;
  assign gt5_txbufstatus_out[0] = \<const0> ;
  assign gt5_txoutclk_out = \<const0> ;
  assign gt5_txoutclkfabric_out = \<const0> ;
  assign gt5_txoutclkpcs_out = \<const0> ;
  assign gt6_cpllfbclklost_out = \<const0> ;
  assign gt6_cplllock_out = \<const0> ;
  assign gt6_dmonitorout_out[7] = \<const0> ;
  assign gt6_dmonitorout_out[6] = \<const0> ;
  assign gt6_dmonitorout_out[5] = \<const0> ;
  assign gt6_dmonitorout_out[4] = \<const0> ;
  assign gt6_dmonitorout_out[3] = \<const0> ;
  assign gt6_dmonitorout_out[2] = \<const0> ;
  assign gt6_dmonitorout_out[1] = \<const0> ;
  assign gt6_dmonitorout_out[0] = \<const0> ;
  assign gt6_drpdo_out[15] = \<const0> ;
  assign gt6_drpdo_out[14] = \<const0> ;
  assign gt6_drpdo_out[13] = \<const0> ;
  assign gt6_drpdo_out[12] = \<const0> ;
  assign gt6_drpdo_out[11] = \<const0> ;
  assign gt6_drpdo_out[10] = \<const0> ;
  assign gt6_drpdo_out[9] = \<const0> ;
  assign gt6_drpdo_out[8] = \<const0> ;
  assign gt6_drpdo_out[7] = \<const0> ;
  assign gt6_drpdo_out[6] = \<const0> ;
  assign gt6_drpdo_out[5] = \<const0> ;
  assign gt6_drpdo_out[4] = \<const0> ;
  assign gt6_drpdo_out[3] = \<const0> ;
  assign gt6_drpdo_out[2] = \<const0> ;
  assign gt6_drpdo_out[1] = \<const0> ;
  assign gt6_drpdo_out[0] = \<const0> ;
  assign gt6_drprdy_out = \<const0> ;
  assign gt6_eyescandataerror_out = \<const0> ;
  assign gt6_rxbufstatus_out[2] = \<const0> ;
  assign gt6_rxbufstatus_out[1] = \<const0> ;
  assign gt6_rxbufstatus_out[0] = \<const0> ;
  assign gt6_rxbyteisaligned_out = \<const0> ;
  assign gt6_rxbyterealign_out = \<const0> ;
  assign gt6_rxchariscomma_out[3] = \<const0> ;
  assign gt6_rxchariscomma_out[2] = \<const0> ;
  assign gt6_rxchariscomma_out[1] = \<const0> ;
  assign gt6_rxchariscomma_out[0] = \<const0> ;
  assign gt6_rxcommadet_out = \<const0> ;
  assign gt6_rxmonitorout_out[6] = \<const0> ;
  assign gt6_rxmonitorout_out[5] = \<const0> ;
  assign gt6_rxmonitorout_out[4] = \<const0> ;
  assign gt6_rxmonitorout_out[3] = \<const0> ;
  assign gt6_rxmonitorout_out[2] = \<const0> ;
  assign gt6_rxmonitorout_out[1] = \<const0> ;
  assign gt6_rxmonitorout_out[0] = \<const0> ;
  assign gt6_rxoutclk_out = \<const0> ;
  assign gt6_rxoutclkfabric_out = \<const0> ;
  assign gt6_rxprbserr_out = \<const0> ;
  assign gt6_rxstatus_out[2] = \<const0> ;
  assign gt6_rxstatus_out[1] = \<const0> ;
  assign gt6_rxstatus_out[0] = \<const0> ;
  assign gt6_txbufstatus_out[1] = \<const0> ;
  assign gt6_txbufstatus_out[0] = \<const0> ;
  assign gt6_txoutclk_out = \<const0> ;
  assign gt6_txoutclkfabric_out = \<const0> ;
  assign gt6_txoutclkpcs_out = \<const0> ;
  assign gt7_cpllfbclklost_out = \<const0> ;
  assign gt7_cplllock_out = \<const0> ;
  assign gt7_dmonitorout_out[7] = \<const0> ;
  assign gt7_dmonitorout_out[6] = \<const0> ;
  assign gt7_dmonitorout_out[5] = \<const0> ;
  assign gt7_dmonitorout_out[4] = \<const0> ;
  assign gt7_dmonitorout_out[3] = \<const0> ;
  assign gt7_dmonitorout_out[2] = \<const0> ;
  assign gt7_dmonitorout_out[1] = \<const0> ;
  assign gt7_dmonitorout_out[0] = \<const0> ;
  assign gt7_drpdo_out[15] = \<const0> ;
  assign gt7_drpdo_out[14] = \<const0> ;
  assign gt7_drpdo_out[13] = \<const0> ;
  assign gt7_drpdo_out[12] = \<const0> ;
  assign gt7_drpdo_out[11] = \<const0> ;
  assign gt7_drpdo_out[10] = \<const0> ;
  assign gt7_drpdo_out[9] = \<const0> ;
  assign gt7_drpdo_out[8] = \<const0> ;
  assign gt7_drpdo_out[7] = \<const0> ;
  assign gt7_drpdo_out[6] = \<const0> ;
  assign gt7_drpdo_out[5] = \<const0> ;
  assign gt7_drpdo_out[4] = \<const0> ;
  assign gt7_drpdo_out[3] = \<const0> ;
  assign gt7_drpdo_out[2] = \<const0> ;
  assign gt7_drpdo_out[1] = \<const0> ;
  assign gt7_drpdo_out[0] = \<const0> ;
  assign gt7_drprdy_out = \<const0> ;
  assign gt7_eyescandataerror_out = \<const0> ;
  assign gt7_rxbufstatus_out[2] = \<const0> ;
  assign gt7_rxbufstatus_out[1] = \<const0> ;
  assign gt7_rxbufstatus_out[0] = \<const0> ;
  assign gt7_rxbyteisaligned_out = \<const0> ;
  assign gt7_rxbyterealign_out = \<const0> ;
  assign gt7_rxchariscomma_out[3] = \<const0> ;
  assign gt7_rxchariscomma_out[2] = \<const0> ;
  assign gt7_rxchariscomma_out[1] = \<const0> ;
  assign gt7_rxchariscomma_out[0] = \<const0> ;
  assign gt7_rxcommadet_out = \<const0> ;
  assign gt7_rxmonitorout_out[6] = \<const0> ;
  assign gt7_rxmonitorout_out[5] = \<const0> ;
  assign gt7_rxmonitorout_out[4] = \<const0> ;
  assign gt7_rxmonitorout_out[3] = \<const0> ;
  assign gt7_rxmonitorout_out[2] = \<const0> ;
  assign gt7_rxmonitorout_out[1] = \<const0> ;
  assign gt7_rxmonitorout_out[0] = \<const0> ;
  assign gt7_rxoutclk_out = \<const0> ;
  assign gt7_rxoutclkfabric_out = \<const0> ;
  assign gt7_rxprbserr_out = \<const0> ;
  assign gt7_rxstatus_out[2] = \<const0> ;
  assign gt7_rxstatus_out[1] = \<const0> ;
  assign gt7_rxstatus_out[0] = \<const0> ;
  assign gt7_txbufstatus_out[1] = \<const0> ;
  assign gt7_txbufstatus_out[0] = \<const0> ;
  assign gt7_txoutclk_out = \<const0> ;
  assign gt7_txoutclkfabric_out = \<const0> ;
  assign gt7_txoutclkpcs_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_multi_gt JESD204_PHY_gt_i
       (.SR(gt7_gtrxreset_i),
        .data_in(gt_txresetdone_i),
        .gt0_cpllreset_in(gt_rx_cpllreset_t),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txcharisk_in(gt0_txcharisk_in),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_qplloutclk_in(gt1_qplloutclk_in),
        .gt1_qplloutrefclk_in(gt1_qplloutrefclk_in),
        .gt1_rxcharisk_out(gt1_rxcharisk_out),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdisperr_out(gt1_rxdisperr_out),
        .gt1_rxnotintable_out(gt1_rxnotintable_out),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_txcharisk_in(gt1_txcharisk_in),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_rxcharisk_out(gt2_rxcharisk_out),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdisperr_out(gt2_rxdisperr_out),
        .gt2_rxnotintable_out(gt2_rxnotintable_out),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_txcharisk_in(gt2_txcharisk_in),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_rxcharisk_out(gt3_rxcharisk_out),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdisperr_out(gt3_rxdisperr_out),
        .gt3_rxnotintable_out(gt3_rxnotintable_out),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_txcharisk_in(gt3_txcharisk_in),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt4_gtxrxn_in(gt4_gtxrxn_in),
        .gt4_gtxrxp_in(gt4_gtxrxp_in),
        .gt4_gtxtxn_out(gt4_gtxtxn_out),
        .gt4_gtxtxp_out(gt4_gtxtxp_out),
        .gt4_rxcharisk_out(gt4_rxcharisk_out),
        .gt4_rxdata_out(gt4_rxdata_out),
        .gt4_rxdisperr_out(gt4_rxdisperr_out),
        .gt4_rxnotintable_out(gt4_rxnotintable_out),
        .gt4_rxresetdone_out(gt4_rxresetdone_out),
        .gt4_txcharisk_in(gt4_txcharisk_in),
        .gt4_txdata_in(gt4_txdata_in),
        .gt4_txresetdone_out(gt4_txresetdone_out),
        .gt5_gtxrxn_in(gt5_gtxrxn_in),
        .gt5_gtxrxp_in(gt5_gtxrxp_in),
        .gt5_gtxtxn_out(gt5_gtxtxn_out),
        .gt5_gtxtxp_out(gt5_gtxtxp_out),
        .gt5_rxcharisk_out(gt5_rxcharisk_out),
        .gt5_rxdata_out(gt5_rxdata_out),
        .gt5_rxdisperr_out(gt5_rxdisperr_out),
        .gt5_rxnotintable_out(gt5_rxnotintable_out),
        .gt5_rxresetdone_out(gt5_rxresetdone_out),
        .gt5_txcharisk_in(gt5_txcharisk_in),
        .gt5_txdata_in(gt5_txdata_in),
        .gt5_txresetdone_out(gt5_txresetdone_out),
        .gt6_gtrxreset_in(gt0_gtrxreset_i),
        .gt6_gttxreset_in(gt0_gttxreset_i),
        .gt6_gtxrxn_in(gt6_gtxrxn_in),
        .gt6_gtxrxp_in(gt6_gtxrxp_in),
        .gt6_gtxtxn_out(gt6_gtxtxn_out),
        .gt6_gtxtxp_out(gt6_gtxtxp_out),
        .gt6_rxcharisk_out(gt6_rxcharisk_out),
        .gt6_rxdata_out(gt6_rxdata_out),
        .gt6_rxdisperr_out(gt6_rxdisperr_out),
        .gt6_rxnotintable_out(gt6_rxnotintable_out),
        .gt6_rxresetdone_out(gt6_rxresetdone_out),
        .gt6_txcharisk_in(gt6_txcharisk_in),
        .gt6_txdata_in(gt6_txdata_in),
        .gt6_txresetdone_out(gt6_txresetdone_out),
        .gt7_gttxreset_in(gt7_gttxreset_i),
        .gt7_gtxrxn_in(gt7_gtxrxn_in),
        .gt7_gtxrxp_in(gt7_gtxrxp_in),
        .gt7_gtxtxn_out(gt7_gtxtxn_out),
        .gt7_gtxtxp_out(gt7_gtxtxp_out),
        .gt7_rxcharisk_out(gt7_rxcharisk_out),
        .gt7_rxdata_out(gt7_rxdata_out),
        .gt7_rxdisperr_out(gt7_rxdisperr_out),
        .gt7_rxnotintable_out(gt7_rxnotintable_out),
        .gt7_rxresetdone_out(gt7_rxresetdone_out),
        .gt7_rxuserrdy_in(gt_rxuserrdy_t),
        .gt7_txcharisk_in(gt7_txcharisk_in),
        .gt7_txdata_in(gt7_txdata_in),
        .gt7_txresetdone_out(gt7_txresetdone_out),
        .gt7_txuserrdy_in(gt_txuserrdy_t),
        .gtxe2_i(gt_rxresetdone_i),
        .sysclk_in(sysclk_in));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(gt0_rx_cdrlock_counter[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt0_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt0_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .O(gt0_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt0_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt0_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt0_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt0_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt0_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt0_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt0_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt0_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt0_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt0_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt0_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt0_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt0_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt0_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt0_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[31]_i_5_n_7 ),
        .O(gt0_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .O(gt0_rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[31]_i_5_n_6 ),
        .O(gt0_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[31]_i_5_n_5 ),
        .O(gt0_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[27] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[26] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[29] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[28] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gt0_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[12] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[13] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[11] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[10] ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gt0_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gt0_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[30] ),
        .I4(\gt0_rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\gt0_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_6 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[15] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[14] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[17] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[16] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gt0_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[9] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[8] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[23] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[22] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[25] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[24] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[19] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[18] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[21] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[20] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt0_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt0_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt0_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .O(gt0_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[0]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[10]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[11]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[12]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[12] ,\gt0_rx_cdrlock_counter_reg_n_0_[11] ,\gt0_rx_cdrlock_counter_reg_n_0_[10] ,\gt0_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[13]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[14]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[15]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[16]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[16] ,\gt0_rx_cdrlock_counter_reg_n_0_[15] ,\gt0_rx_cdrlock_counter_reg_n_0_[14] ,\gt0_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[17]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[18]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[19]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[1]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[20]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[20] ,\gt0_rx_cdrlock_counter_reg_n_0_[19] ,\gt0_rx_cdrlock_counter_reg_n_0_[18] ,\gt0_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[21]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[22]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[23]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[24]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[24] ,\gt0_rx_cdrlock_counter_reg_n_0_[23] ,\gt0_rx_cdrlock_counter_reg_n_0_[22] ,\gt0_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[25]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[26]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[27]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[28]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[28] ,\gt0_rx_cdrlock_counter_reg_n_0_[27] ,\gt0_rx_cdrlock_counter_reg_n_0_[26] ,\gt0_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[29]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[2]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[30]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[31]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt0_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt0_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt0_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt0_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],\gt0_rx_cdrlock_counter_reg[31]_i_5_n_5 ,\gt0_rx_cdrlock_counter_reg[31]_i_5_n_6 ,\gt0_rx_cdrlock_counter_reg[31]_i_5_n_7 }),
        .S({1'b0,\gt0_rx_cdrlock_counter_reg_n_0_[31] ,\gt0_rx_cdrlock_counter_reg_n_0_[30] ,\gt0_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[3]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[4]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[4] ,\gt0_rx_cdrlock_counter_reg_n_0_[3] ,\gt0_rx_cdrlock_counter_reg_n_0_[2] ,\gt0_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[5]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[6]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[7]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[8]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt0_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt0_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[8] ,\gt0_rx_cdrlock_counter_reg_n_0_[7] ,\gt0_rx_cdrlock_counter_reg_n_0_[6] ,\gt0_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[9]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt0_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt0_rx_cdrlocked_i_1
       (.I0(gt0_rx_cdrlocked_reg_n_0),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlocked_i_1_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlocked_i_1_n_0),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt1_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(gt1_rx_cdrlock_counter[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[10]_i_1 
       (.I0(data0[10]),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt1_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[11]),
        .O(gt1_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[12]),
        .O(gt1_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(gt1_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(gt1_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(gt1_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(gt1_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(gt1_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(gt1_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(gt1_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[1]_i_1 
       (.I0(data0[1]),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt1_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(gt1_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(gt1_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(gt1_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(gt1_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(gt1_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(gt1_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(gt1_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(gt1_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(gt1_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(gt1_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(gt1_rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(gt1_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(gt1_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt1_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[27] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[26] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[29] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[28] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gt1_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[12] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[13] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[11] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[10] ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gt1_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gt1_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[30] ),
        .I4(\gt1_rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\gt1_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt1_rx_cdrlock_counter[31]_i_6 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[15] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[14] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[17] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[16] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gt1_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[9] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[8] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt1_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[23] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[22] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[25] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[24] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt1_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[19] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[18] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[21] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[20] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(gt1_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(gt1_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[5]_i_1 
       (.I0(data0[5]),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt1_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[6]_i_1 
       (.I0(data0[6]),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt1_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[7]_i_1 
       (.I0(data0[7]),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt1_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[8]),
        .O(gt1_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[9]),
        .O(gt1_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[0]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[10]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[11]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[12]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt1_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[12] ,\gt1_rx_cdrlock_counter_reg_n_0_[11] ,\gt1_rx_cdrlock_counter_reg_n_0_[10] ,\gt1_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[13]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[14]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[15]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[16]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt1_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[16] ,\gt1_rx_cdrlock_counter_reg_n_0_[15] ,\gt1_rx_cdrlock_counter_reg_n_0_[14] ,\gt1_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[17]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[18]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[19]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[1]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[20]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt1_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[20] ,\gt1_rx_cdrlock_counter_reg_n_0_[19] ,\gt1_rx_cdrlock_counter_reg_n_0_[18] ,\gt1_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[21]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[22]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[23]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[24]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt1_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[24] ,\gt1_rx_cdrlock_counter_reg_n_0_[23] ,\gt1_rx_cdrlock_counter_reg_n_0_[22] ,\gt1_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[25]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[26]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[27]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[28]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt1_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[28] ,\gt1_rx_cdrlock_counter_reg_n_0_[27] ,\gt1_rx_cdrlock_counter_reg_n_0_[26] ,\gt1_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[29]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[2]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[30]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[31]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt1_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt1_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt1_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt1_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt1_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt1_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\gt1_rx_cdrlock_counter_reg_n_0_[31] ,\gt1_rx_cdrlock_counter_reg_n_0_[30] ,\gt1_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[3]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[4]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt1_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt1_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[4] ,\gt1_rx_cdrlock_counter_reg_n_0_[3] ,\gt1_rx_cdrlock_counter_reg_n_0_[2] ,\gt1_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[5]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[6]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[7]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[8]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt1_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[8] ,\gt1_rx_cdrlock_counter_reg_n_0_[7] ,\gt1_rx_cdrlock_counter_reg_n_0_[6] ,\gt1_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[9]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt0_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt1_rx_cdrlocked_i_1
       (.I0(gt1_rx_cdrlocked_reg_n_0),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt1_rx_cdrlocked_i_1_n_0));
  FDRE gt1_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlocked_i_1_n_0),
        .Q(gt1_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt2_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(gt2_rx_cdrlock_counter[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt2_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .O(gt2_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt2_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt2_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt2_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt2_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[31]_i_5_n_7 ),
        .O(gt2_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[31]_i_5_n_6 ),
        .O(gt2_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[31]_i_5_n_5 ),
        .O(gt2_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt2_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[27] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[26] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[29] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[28] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gt2_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[12] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[13] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[11] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[10] ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gt2_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gt2_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[30] ),
        .I4(\gt2_rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\gt2_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt2_rx_cdrlock_counter[31]_i_6 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[15] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[14] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[17] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[16] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gt2_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[9] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[8] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt2_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[23] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[22] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[25] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[24] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt2_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[19] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[18] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[21] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[20] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt2_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt2_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt2_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .O(gt2_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[0]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[10]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[11]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[12]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt2_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[12] ,\gt2_rx_cdrlock_counter_reg_n_0_[11] ,\gt2_rx_cdrlock_counter_reg_n_0_[10] ,\gt2_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[13]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[14]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[15]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[16]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt2_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[16] ,\gt2_rx_cdrlock_counter_reg_n_0_[15] ,\gt2_rx_cdrlock_counter_reg_n_0_[14] ,\gt2_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[17]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[18]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[19]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[1]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[20]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt2_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[20] ,\gt2_rx_cdrlock_counter_reg_n_0_[19] ,\gt2_rx_cdrlock_counter_reg_n_0_[18] ,\gt2_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[21]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[22]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[23]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[24]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt2_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[24] ,\gt2_rx_cdrlock_counter_reg_n_0_[23] ,\gt2_rx_cdrlock_counter_reg_n_0_[22] ,\gt2_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[25]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[26]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[27]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[28]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt2_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[28] ,\gt2_rx_cdrlock_counter_reg_n_0_[27] ,\gt2_rx_cdrlock_counter_reg_n_0_[26] ,\gt2_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[29]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[2]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[30]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[31]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt2_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt2_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt2_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt2_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt2_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],\gt2_rx_cdrlock_counter_reg[31]_i_5_n_5 ,\gt2_rx_cdrlock_counter_reg[31]_i_5_n_6 ,\gt2_rx_cdrlock_counter_reg[31]_i_5_n_7 }),
        .S({1'b0,\gt2_rx_cdrlock_counter_reg_n_0_[31] ,\gt2_rx_cdrlock_counter_reg_n_0_[30] ,\gt2_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[3]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[4]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt2_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt2_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[4] ,\gt2_rx_cdrlock_counter_reg_n_0_[3] ,\gt2_rx_cdrlock_counter_reg_n_0_[2] ,\gt2_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[5]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[6]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[7]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[8]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt2_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[8] ,\gt2_rx_cdrlock_counter_reg_n_0_[7] ,\gt2_rx_cdrlock_counter_reg_n_0_[6] ,\gt2_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[9]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt0_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt2_rx_cdrlocked_i_1
       (.I0(gt2_rx_cdrlocked_reg_n_0),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt2_rx_cdrlocked_i_1_n_0));
  FDRE gt2_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlocked_i_1_n_0),
        .Q(gt2_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt3_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(gt3_rx_cdrlock_counter[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt3_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .O(gt3_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt3_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt3_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt3_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt3_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[31]_i_5_n_7 ),
        .O(gt3_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[31]_i_5_n_6 ),
        .O(gt3_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[31]_i_5_n_5 ),
        .O(gt3_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt3_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[27] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[26] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[29] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[28] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gt3_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[12] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[13] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[11] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[10] ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gt3_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gt3_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[30] ),
        .I4(\gt3_rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\gt3_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt3_rx_cdrlock_counter[31]_i_6 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[15] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[14] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[17] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[16] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gt3_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[9] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[8] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt3_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[23] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[22] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[25] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[24] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt3_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[19] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[18] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[21] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[20] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt3_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt3_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt3_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .O(gt3_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[0]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[10]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[11]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[12]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt3_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[12] ,\gt3_rx_cdrlock_counter_reg_n_0_[11] ,\gt3_rx_cdrlock_counter_reg_n_0_[10] ,\gt3_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[13]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[14]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[15]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[16]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt3_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[16] ,\gt3_rx_cdrlock_counter_reg_n_0_[15] ,\gt3_rx_cdrlock_counter_reg_n_0_[14] ,\gt3_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[17]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[18]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[19]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[1]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[20]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt3_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[20] ,\gt3_rx_cdrlock_counter_reg_n_0_[19] ,\gt3_rx_cdrlock_counter_reg_n_0_[18] ,\gt3_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[21]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[22]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[23]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[24]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt3_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[24] ,\gt3_rx_cdrlock_counter_reg_n_0_[23] ,\gt3_rx_cdrlock_counter_reg_n_0_[22] ,\gt3_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[25]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[26]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[27]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[28]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt3_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[28] ,\gt3_rx_cdrlock_counter_reg_n_0_[27] ,\gt3_rx_cdrlock_counter_reg_n_0_[26] ,\gt3_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[29]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[2]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[30]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[31]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt3_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt3_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt3_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt3_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt3_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],\gt3_rx_cdrlock_counter_reg[31]_i_5_n_5 ,\gt3_rx_cdrlock_counter_reg[31]_i_5_n_6 ,\gt3_rx_cdrlock_counter_reg[31]_i_5_n_7 }),
        .S({1'b0,\gt3_rx_cdrlock_counter_reg_n_0_[31] ,\gt3_rx_cdrlock_counter_reg_n_0_[30] ,\gt3_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[3]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[4]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt3_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt3_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[4] ,\gt3_rx_cdrlock_counter_reg_n_0_[3] ,\gt3_rx_cdrlock_counter_reg_n_0_[2] ,\gt3_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[5]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[6]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[7]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[8]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt3_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[8] ,\gt3_rx_cdrlock_counter_reg_n_0_[7] ,\gt3_rx_cdrlock_counter_reg_n_0_[6] ,\gt3_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[9]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt0_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt3_rx_cdrlocked_i_1
       (.I0(gt3_rx_cdrlocked_reg_n_0),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt3_rx_cdrlocked_i_1_n_0));
  FDRE gt3_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlocked_i_1_n_0),
        .Q(gt3_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt4_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(gt4_rx_cdrlock_counter[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt4_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt4_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt4_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt4_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .O(gt4_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt4_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt4_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt4_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt4_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt4_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt4_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt4_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt4_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt4_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt4_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt4_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt4_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt4_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt4_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt4_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt4_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt4_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[31]_i_5_n_7 ),
        .O(gt4_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .O(gt4_rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[31]_i_5_n_6 ),
        .O(gt4_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[31]_i_5_n_5 ),
        .O(gt4_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt4_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[27] ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[26] ),
        .I2(\gt4_rx_cdrlock_counter_reg_n_0_[29] ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[28] ),
        .O(\gt4_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gt4_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[12] ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[13] ),
        .I2(\gt4_rx_cdrlock_counter_reg_n_0_[11] ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[10] ),
        .I4(\gt4_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gt4_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\gt4_rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\gt4_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gt4_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt4_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(\gt4_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[30] ),
        .I4(\gt4_rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\gt4_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt4_rx_cdrlock_counter[31]_i_6 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[15] ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[14] ),
        .I2(\gt4_rx_cdrlock_counter_reg_n_0_[17] ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[16] ),
        .O(\gt4_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gt4_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\gt4_rx_cdrlock_counter_reg_n_0_[9] ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[8] ),
        .O(\gt4_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt4_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[23] ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[22] ),
        .I2(\gt4_rx_cdrlock_counter_reg_n_0_[25] ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[24] ),
        .O(\gt4_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt4_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[19] ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[18] ),
        .I2(\gt4_rx_cdrlock_counter_reg_n_0_[21] ),
        .I3(\gt4_rx_cdrlock_counter_reg_n_0_[20] ),
        .O(\gt4_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt4_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt4_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt4_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt4_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt4_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt4_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt4_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt4_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt4_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt4_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt4_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .O(gt4_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[0]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[10]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[11]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[12]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt4_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt4_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt4_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt4_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt4_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt4_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt4_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt4_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt4_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt4_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt4_rx_cdrlock_counter_reg_n_0_[12] ,\gt4_rx_cdrlock_counter_reg_n_0_[11] ,\gt4_rx_cdrlock_counter_reg_n_0_[10] ,\gt4_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[13]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[14]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[15]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[16]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt4_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt4_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt4_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt4_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt4_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt4_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt4_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt4_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt4_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt4_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt4_rx_cdrlock_counter_reg_n_0_[16] ,\gt4_rx_cdrlock_counter_reg_n_0_[15] ,\gt4_rx_cdrlock_counter_reg_n_0_[14] ,\gt4_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[17]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[18]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[19]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[1]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[20]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt4_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt4_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt4_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt4_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt4_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt4_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt4_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt4_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt4_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt4_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt4_rx_cdrlock_counter_reg_n_0_[20] ,\gt4_rx_cdrlock_counter_reg_n_0_[19] ,\gt4_rx_cdrlock_counter_reg_n_0_[18] ,\gt4_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[21]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[22]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[23]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[24]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt4_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt4_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt4_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt4_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt4_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt4_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt4_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt4_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt4_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt4_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt4_rx_cdrlock_counter_reg_n_0_[24] ,\gt4_rx_cdrlock_counter_reg_n_0_[23] ,\gt4_rx_cdrlock_counter_reg_n_0_[22] ,\gt4_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[25]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[26]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[27]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[28]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt4_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt4_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt4_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt4_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt4_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt4_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt4_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt4_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt4_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt4_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt4_rx_cdrlock_counter_reg_n_0_[28] ,\gt4_rx_cdrlock_counter_reg_n_0_[27] ,\gt4_rx_cdrlock_counter_reg_n_0_[26] ,\gt4_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[29]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[2]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[30]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[31]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt4_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt4_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt4_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt4_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt4_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt4_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],\gt4_rx_cdrlock_counter_reg[31]_i_5_n_5 ,\gt4_rx_cdrlock_counter_reg[31]_i_5_n_6 ,\gt4_rx_cdrlock_counter_reg[31]_i_5_n_7 }),
        .S({1'b0,\gt4_rx_cdrlock_counter_reg_n_0_[31] ,\gt4_rx_cdrlock_counter_reg_n_0_[30] ,\gt4_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[3]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[4]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt4_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt4_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt4_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt4_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt4_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt4_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt4_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt4_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt4_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt4_rx_cdrlock_counter_reg_n_0_[4] ,\gt4_rx_cdrlock_counter_reg_n_0_[3] ,\gt4_rx_cdrlock_counter_reg_n_0_[2] ,\gt4_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[5]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[6]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[7]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[8]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt4_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt4_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt4_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt4_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt4_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt4_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt4_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt4_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt4_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt4_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt4_rx_cdrlock_counter_reg_n_0_[8] ,\gt4_rx_cdrlock_counter_reg_n_0_[7] ,\gt4_rx_cdrlock_counter_reg_n_0_[6] ,\gt4_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt4_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlock_counter[9]),
        .Q(\gt4_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt0_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt4_rx_cdrlocked_i_1
       (.I0(gt4_rx_cdrlocked_reg_n_0),
        .I1(\gt4_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt4_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt4_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt4_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt4_rx_cdrlocked_i_1_n_0));
  FDRE gt4_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt4_rx_cdrlocked_i_1_n_0),
        .Q(gt4_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt5_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(gt5_rx_cdrlock_counter[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt5_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt5_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt5_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt5_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .O(gt5_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt5_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt5_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt5_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt5_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt5_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt5_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt5_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt5_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt5_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt5_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt5_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt5_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt5_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt5_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt5_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt5_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt5_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[31]_i_5_n_7 ),
        .O(gt5_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .O(gt5_rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[31]_i_5_n_6 ),
        .O(gt5_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[31]_i_5_n_5 ),
        .O(gt5_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt5_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[27] ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[26] ),
        .I2(\gt5_rx_cdrlock_counter_reg_n_0_[29] ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[28] ),
        .O(\gt5_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gt5_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[12] ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[13] ),
        .I2(\gt5_rx_cdrlock_counter_reg_n_0_[11] ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[10] ),
        .I4(\gt5_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gt5_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\gt5_rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\gt5_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gt5_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt5_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(\gt5_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[30] ),
        .I4(\gt5_rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\gt5_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt5_rx_cdrlock_counter[31]_i_6 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[15] ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[14] ),
        .I2(\gt5_rx_cdrlock_counter_reg_n_0_[17] ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[16] ),
        .O(\gt5_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gt5_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\gt5_rx_cdrlock_counter_reg_n_0_[9] ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[8] ),
        .O(\gt5_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt5_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[23] ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[22] ),
        .I2(\gt5_rx_cdrlock_counter_reg_n_0_[25] ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[24] ),
        .O(\gt5_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt5_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[19] ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[18] ),
        .I2(\gt5_rx_cdrlock_counter_reg_n_0_[21] ),
        .I3(\gt5_rx_cdrlock_counter_reg_n_0_[20] ),
        .O(\gt5_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt5_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt5_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt5_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt5_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt5_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt5_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt5_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt5_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt5_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt5_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt5_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .O(gt5_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[0]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[10]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[11]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[12]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt5_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt5_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt5_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt5_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt5_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt5_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt5_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt5_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt5_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt5_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt5_rx_cdrlock_counter_reg_n_0_[12] ,\gt5_rx_cdrlock_counter_reg_n_0_[11] ,\gt5_rx_cdrlock_counter_reg_n_0_[10] ,\gt5_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[13]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[14]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[15]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[16]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt5_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt5_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt5_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt5_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt5_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt5_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt5_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt5_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt5_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt5_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt5_rx_cdrlock_counter_reg_n_0_[16] ,\gt5_rx_cdrlock_counter_reg_n_0_[15] ,\gt5_rx_cdrlock_counter_reg_n_0_[14] ,\gt5_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[17]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[18]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[19]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[1]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[20]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt5_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt5_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt5_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt5_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt5_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt5_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt5_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt5_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt5_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt5_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt5_rx_cdrlock_counter_reg_n_0_[20] ,\gt5_rx_cdrlock_counter_reg_n_0_[19] ,\gt5_rx_cdrlock_counter_reg_n_0_[18] ,\gt5_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[21]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[22]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[23]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[24]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt5_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt5_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt5_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt5_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt5_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt5_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt5_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt5_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt5_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt5_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt5_rx_cdrlock_counter_reg_n_0_[24] ,\gt5_rx_cdrlock_counter_reg_n_0_[23] ,\gt5_rx_cdrlock_counter_reg_n_0_[22] ,\gt5_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[25]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[26]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[27]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[28]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt5_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt5_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt5_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt5_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt5_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt5_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt5_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt5_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt5_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt5_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt5_rx_cdrlock_counter_reg_n_0_[28] ,\gt5_rx_cdrlock_counter_reg_n_0_[27] ,\gt5_rx_cdrlock_counter_reg_n_0_[26] ,\gt5_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[29]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[2]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[30]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[31]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt5_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt5_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt5_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt5_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt5_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt5_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],\gt5_rx_cdrlock_counter_reg[31]_i_5_n_5 ,\gt5_rx_cdrlock_counter_reg[31]_i_5_n_6 ,\gt5_rx_cdrlock_counter_reg[31]_i_5_n_7 }),
        .S({1'b0,\gt5_rx_cdrlock_counter_reg_n_0_[31] ,\gt5_rx_cdrlock_counter_reg_n_0_[30] ,\gt5_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[3]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[4]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt5_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt5_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt5_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt5_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt5_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt5_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt5_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt5_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt5_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt5_rx_cdrlock_counter_reg_n_0_[4] ,\gt5_rx_cdrlock_counter_reg_n_0_[3] ,\gt5_rx_cdrlock_counter_reg_n_0_[2] ,\gt5_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[5]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[6]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[7]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[8]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt5_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt5_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt5_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt5_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt5_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt5_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt5_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt5_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt5_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt5_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt5_rx_cdrlock_counter_reg_n_0_[8] ,\gt5_rx_cdrlock_counter_reg_n_0_[7] ,\gt5_rx_cdrlock_counter_reg_n_0_[6] ,\gt5_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt5_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlock_counter[9]),
        .Q(\gt5_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt0_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt5_rx_cdrlocked_i_1
       (.I0(gt5_rx_cdrlocked_reg_n_0),
        .I1(\gt5_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt5_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt5_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt5_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt5_rx_cdrlocked_i_1_n_0));
  FDRE gt5_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt5_rx_cdrlocked_i_1_n_0),
        .Q(gt5_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt6_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(gt6_rx_cdrlock_counter[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt6_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt6_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt6_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt6_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .O(gt6_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt6_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt6_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt6_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt6_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt6_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt6_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt6_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt6_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt6_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt6_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt6_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt6_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt6_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt6_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt6_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt6_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt6_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[31]_i_5_n_7 ),
        .O(gt6_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .O(gt6_rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[31]_i_5_n_6 ),
        .O(gt6_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[31]_i_5_n_5 ),
        .O(gt6_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt6_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[27] ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[26] ),
        .I2(\gt6_rx_cdrlock_counter_reg_n_0_[29] ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[28] ),
        .O(\gt6_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gt6_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[12] ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[13] ),
        .I2(\gt6_rx_cdrlock_counter_reg_n_0_[11] ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[10] ),
        .I4(\gt6_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gt6_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\gt6_rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\gt6_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gt6_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt6_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(\gt6_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[30] ),
        .I4(\gt6_rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\gt6_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt6_rx_cdrlock_counter[31]_i_6 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[15] ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[14] ),
        .I2(\gt6_rx_cdrlock_counter_reg_n_0_[17] ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[16] ),
        .O(\gt6_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gt6_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\gt6_rx_cdrlock_counter_reg_n_0_[9] ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[8] ),
        .O(\gt6_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt6_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[23] ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[22] ),
        .I2(\gt6_rx_cdrlock_counter_reg_n_0_[25] ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[24] ),
        .O(\gt6_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt6_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[19] ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[18] ),
        .I2(\gt6_rx_cdrlock_counter_reg_n_0_[21] ),
        .I3(\gt6_rx_cdrlock_counter_reg_n_0_[20] ),
        .O(\gt6_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt6_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt6_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt6_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt6_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt6_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt6_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt6_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt6_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt6_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt6_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt6_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .O(gt6_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[0]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[10]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[11]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[12]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt6_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt6_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt6_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt6_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt6_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt6_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt6_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt6_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt6_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt6_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt6_rx_cdrlock_counter_reg_n_0_[12] ,\gt6_rx_cdrlock_counter_reg_n_0_[11] ,\gt6_rx_cdrlock_counter_reg_n_0_[10] ,\gt6_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[13]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[14]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[15]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[16]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt6_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt6_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt6_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt6_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt6_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt6_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt6_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt6_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt6_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt6_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt6_rx_cdrlock_counter_reg_n_0_[16] ,\gt6_rx_cdrlock_counter_reg_n_0_[15] ,\gt6_rx_cdrlock_counter_reg_n_0_[14] ,\gt6_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[17]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[18]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[19]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[1]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[20]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt6_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt6_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt6_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt6_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt6_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt6_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt6_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt6_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt6_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt6_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt6_rx_cdrlock_counter_reg_n_0_[20] ,\gt6_rx_cdrlock_counter_reg_n_0_[19] ,\gt6_rx_cdrlock_counter_reg_n_0_[18] ,\gt6_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[21]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[22]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[23]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[24]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt6_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt6_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt6_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt6_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt6_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt6_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt6_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt6_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt6_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt6_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt6_rx_cdrlock_counter_reg_n_0_[24] ,\gt6_rx_cdrlock_counter_reg_n_0_[23] ,\gt6_rx_cdrlock_counter_reg_n_0_[22] ,\gt6_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[25]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[26]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[27]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[28]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt6_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt6_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt6_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt6_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt6_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt6_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt6_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt6_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt6_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt6_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt6_rx_cdrlock_counter_reg_n_0_[28] ,\gt6_rx_cdrlock_counter_reg_n_0_[27] ,\gt6_rx_cdrlock_counter_reg_n_0_[26] ,\gt6_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[29]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[2]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[30]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[31]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt6_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt6_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt6_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt6_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt6_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt6_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],\gt6_rx_cdrlock_counter_reg[31]_i_5_n_5 ,\gt6_rx_cdrlock_counter_reg[31]_i_5_n_6 ,\gt6_rx_cdrlock_counter_reg[31]_i_5_n_7 }),
        .S({1'b0,\gt6_rx_cdrlock_counter_reg_n_0_[31] ,\gt6_rx_cdrlock_counter_reg_n_0_[30] ,\gt6_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[3]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[4]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt6_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt6_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt6_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt6_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt6_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt6_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt6_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt6_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt6_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt6_rx_cdrlock_counter_reg_n_0_[4] ,\gt6_rx_cdrlock_counter_reg_n_0_[3] ,\gt6_rx_cdrlock_counter_reg_n_0_[2] ,\gt6_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[5]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[6]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[7]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[8]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt0_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt6_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt6_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt6_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt6_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt6_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt6_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt6_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt6_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt6_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt6_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt6_rx_cdrlock_counter_reg_n_0_[8] ,\gt6_rx_cdrlock_counter_reg_n_0_[7] ,\gt6_rx_cdrlock_counter_reg_n_0_[6] ,\gt6_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt6_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlock_counter[9]),
        .Q(\gt6_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt0_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt6_rx_cdrlocked_i_1
       (.I0(gt6_rx_cdrlocked_reg_n_0),
        .I1(\gt6_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt6_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt6_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt6_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt6_rx_cdrlocked_i_1_n_0));
  FDRE gt6_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt6_rx_cdrlocked_i_1_n_0),
        .Q(gt6_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt7_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(gt7_rx_cdrlock_counter[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt7_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt7_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt7_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt7_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .O(gt7_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt7_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt7_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt7_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt7_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt7_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt7_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt7_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt7_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt7_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt7_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt7_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt7_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt7_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt7_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt7_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt7_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt7_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[31]_i_5_n_7 ),
        .O(gt7_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .O(gt7_rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[31]_i_5_n_6 ),
        .O(gt7_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[31]_i_5_n_5 ),
        .O(gt7_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt7_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[27] ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[26] ),
        .I2(\gt7_rx_cdrlock_counter_reg_n_0_[29] ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[28] ),
        .O(\gt7_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gt7_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[12] ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[13] ),
        .I2(\gt7_rx_cdrlock_counter_reg_n_0_[11] ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[10] ),
        .I4(\gt7_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gt7_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\gt7_rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\gt7_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gt7_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt7_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(\gt7_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[30] ),
        .I4(\gt7_rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\gt7_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt7_rx_cdrlock_counter[31]_i_6 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[15] ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[14] ),
        .I2(\gt7_rx_cdrlock_counter_reg_n_0_[17] ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[16] ),
        .O(\gt7_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gt7_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\gt7_rx_cdrlock_counter_reg_n_0_[9] ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[8] ),
        .O(\gt7_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt7_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[23] ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[22] ),
        .I2(\gt7_rx_cdrlock_counter_reg_n_0_[25] ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[24] ),
        .O(\gt7_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt7_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[19] ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[18] ),
        .I2(\gt7_rx_cdrlock_counter_reg_n_0_[21] ),
        .I3(\gt7_rx_cdrlock_counter_reg_n_0_[20] ),
        .O(\gt7_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt7_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt7_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt7_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt7_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt7_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt7_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt7_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt7_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt7_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt7_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I1(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt7_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .O(gt7_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[0]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[10]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[11]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[12]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt7_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt7_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt7_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt7_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt7_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt7_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt7_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt7_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt7_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt7_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt7_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt7_rx_cdrlock_counter_reg_n_0_[12] ,\gt7_rx_cdrlock_counter_reg_n_0_[11] ,\gt7_rx_cdrlock_counter_reg_n_0_[10] ,\gt7_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[13]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[14]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[15]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[16]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt7_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt7_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt7_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt7_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt7_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt7_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt7_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt7_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt7_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt7_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt7_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt7_rx_cdrlock_counter_reg_n_0_[16] ,\gt7_rx_cdrlock_counter_reg_n_0_[15] ,\gt7_rx_cdrlock_counter_reg_n_0_[14] ,\gt7_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[17]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[18]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[19]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[1]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[20]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt7_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt7_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt7_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt7_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt7_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt7_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt7_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt7_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt7_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt7_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt7_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt7_rx_cdrlock_counter_reg_n_0_[20] ,\gt7_rx_cdrlock_counter_reg_n_0_[19] ,\gt7_rx_cdrlock_counter_reg_n_0_[18] ,\gt7_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[21]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[22]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[23]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[24]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt7_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt7_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt7_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt7_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt7_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt7_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt7_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt7_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt7_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt7_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt7_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt7_rx_cdrlock_counter_reg_n_0_[24] ,\gt7_rx_cdrlock_counter_reg_n_0_[23] ,\gt7_rx_cdrlock_counter_reg_n_0_[22] ,\gt7_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[25]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[26]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[27]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[28]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt7_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt7_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt7_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt7_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt7_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt7_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt7_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt7_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt7_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt7_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt7_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt7_rx_cdrlock_counter_reg_n_0_[28] ,\gt7_rx_cdrlock_counter_reg_n_0_[27] ,\gt7_rx_cdrlock_counter_reg_n_0_[26] ,\gt7_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[29]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[2]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[30]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[31]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt7_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt7_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt7_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt7_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt7_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt7_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt7_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],\gt7_rx_cdrlock_counter_reg[31]_i_5_n_5 ,\gt7_rx_cdrlock_counter_reg[31]_i_5_n_6 ,\gt7_rx_cdrlock_counter_reg[31]_i_5_n_7 }),
        .S({1'b0,\gt7_rx_cdrlock_counter_reg_n_0_[31] ,\gt7_rx_cdrlock_counter_reg_n_0_[30] ,\gt7_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[3]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[4]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt7_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt7_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt7_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt7_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt7_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt7_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt7_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt7_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt7_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt7_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt7_rx_cdrlock_counter_reg_n_0_[4] ,\gt7_rx_cdrlock_counter_reg_n_0_[3] ,\gt7_rx_cdrlock_counter_reg_n_0_[2] ,\gt7_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[5]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[6]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[7]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt7_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[8]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt7_gtrxreset_i));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gt7_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt7_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt7_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt7_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt7_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt7_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt7_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt7_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt7_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt7_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt7_rx_cdrlock_counter_reg_n_0_[8] ,\gt7_rx_cdrlock_counter_reg_n_0_[7] ,\gt7_rx_cdrlock_counter_reg_n_0_[6] ,\gt7_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt7_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlock_counter[9]),
        .Q(\gt7_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt7_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt7_rx_cdrlocked_i_1
       (.I0(gt7_rx_cdrlocked_reg_n_0),
        .I1(\gt7_rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\gt7_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt7_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt7_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt7_rx_cdrlocked_i_1_n_0));
  FDRE gt7_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt7_rx_cdrlocked_i_1_n_0),
        .Q(gt7_rx_cdrlocked_reg_n_0),
        .R(gt7_gtrxreset_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_RX_STARTUP_FSM gt_rxresetfsm_i
       (.\FSM_sequential_rx_state[3]_i_4_0 (gt4_rx_cdrlocked_reg_n_0),
        .\FSM_sequential_rx_state[3]_i_4_1 (gt2_rx_cdrlocked_reg_n_0),
        .\FSM_sequential_rx_state[3]_i_4_2 (gt7_rx_cdrlocked_reg_n_0),
        .\FSM_sequential_rx_state[3]_i_4_3 (gt5_rx_cdrlocked_reg_n_0),
        .\FSM_sequential_rx_state[3]_i_4_4 (gt0_rx_cdrlocked_reg_n_0),
        .\FSM_sequential_rx_state[3]_i_4_5 (gt6_rx_cdrlocked_reg_n_0),
        .\FSM_sequential_rx_state[3]_i_4_6 (gt3_rx_cdrlocked_reg_n_0),
        .\FSM_sequential_rx_state[3]_i_4_7 (gt1_rx_cdrlocked_reg_n_0),
        .SR(gt7_gtrxreset_i),
        .data_in(gt_qplllock_i),
        .data_sync_reg1(gt_rxresetdone_i),
        .gt0_cpllreset_in(gt_rx_cpllreset_t),
        .gt0_gtrxreset_in(gt0_gtrxreset_in),
        .gt0_qplllock_in(gt0_qplllock_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt1_qplllock_in(gt1_qplllock_in),
        .gt7_rxuserrdy_in(gt_rxuserrdy_t),
        .gt_rx_fsm_reset_done_out(gt_rx_fsm_reset_done_out),
        .gt_rx_qpllreset_t(gt_rx_qpllreset_t),
        .gtrxreset_i_reg_0(gt0_gtrxreset_i),
        .soft_reset_rx_in(soft_reset_rx_in),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_TX_STARTUP_FSM gt_txresetfsm_i
       (.data_in(gt_txresetdone_i),
        .data_sync_reg1(gt_qplllock_i),
        .gt0_gttxreset_in(gt0_gttxreset_in),
        .gt0_qpllreset_out(gt0_qpllreset_out),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt6_gttxreset_in(gt0_gttxreset_i),
        .gt7_gttxreset_in(gt7_gttxreset_i),
        .gt7_txuserrdy_in(gt_txuserrdy_t),
        .gt_rx_qpllreset_t(gt_rx_qpllreset_t),
        .gt_tx_fsm_reset_done_out(gt_tx_fsm_reset_done_out),
        .soft_reset_tx_in(soft_reset_tx_in),
        .sysclk_in(sysclk_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_multi_gt
   (gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_rxoutclk_out,
    gt0_rxresetdone_out,
    gt0_txoutclk_out,
    gt0_txresetdone_out,
    gt0_rxdata_out,
    gt0_rxcharisk_out,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_rxresetdone_out,
    gt1_txresetdone_out,
    gt1_rxdata_out,
    gt1_rxcharisk_out,
    gt1_rxdisperr_out,
    gt1_rxnotintable_out,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_rxresetdone_out,
    gt2_txresetdone_out,
    gt2_rxdata_out,
    gt2_rxcharisk_out,
    gt2_rxdisperr_out,
    gt2_rxnotintable_out,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_rxresetdone_out,
    gt3_txresetdone_out,
    gt3_rxdata_out,
    gt3_rxcharisk_out,
    gt3_rxdisperr_out,
    gt3_rxnotintable_out,
    gt4_gtxtxn_out,
    gt4_gtxtxp_out,
    gt4_rxresetdone_out,
    gt4_txresetdone_out,
    gt4_rxdata_out,
    gt4_rxcharisk_out,
    gt4_rxdisperr_out,
    gt4_rxnotintable_out,
    gt5_gtxtxn_out,
    gt5_gtxtxp_out,
    gt5_rxresetdone_out,
    gt5_txresetdone_out,
    gt5_rxdata_out,
    gt5_rxcharisk_out,
    gt5_rxdisperr_out,
    gt5_rxnotintable_out,
    gt6_gtxtxn_out,
    gt6_gtxtxp_out,
    gt6_rxresetdone_out,
    gt6_txresetdone_out,
    gt6_rxdata_out,
    gt6_rxcharisk_out,
    gt6_rxdisperr_out,
    gt6_rxnotintable_out,
    gt7_gtxtxn_out,
    gt7_gtxtxp_out,
    gt7_rxresetdone_out,
    gt7_txresetdone_out,
    gt7_rxdata_out,
    gt7_rxcharisk_out,
    gt7_rxdisperr_out,
    gt7_rxnotintable_out,
    data_in,
    gtxe2_i,
    gt0_cpllreset_in,
    sysclk_in,
    gt6_gtrxreset_in,
    gt6_gttxreset_in,
    gt0_gtxrxn_in,
    gt0_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt0_rxmcommaalignen_in,
    gt7_rxuserrdy_in,
    gt0_rxusrclk_in,
    gt7_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txprbssel_in,
    gt0_txdata_in,
    gt0_txcharisk_in,
    gt1_gtxrxn_in,
    gt1_gtxrxp_in,
    gt1_txdata_in,
    gt1_txcharisk_in,
    gt2_gtxrxn_in,
    gt2_gtxrxp_in,
    gt2_txdata_in,
    gt2_txcharisk_in,
    gt3_gtxrxn_in,
    gt3_gtxrxp_in,
    gt3_txdata_in,
    gt3_txcharisk_in,
    gt4_gtxrxn_in,
    gt4_gtxrxp_in,
    gt1_qplloutclk_in,
    gt1_qplloutrefclk_in,
    gt4_txdata_in,
    gt4_txcharisk_in,
    gt5_gtxrxn_in,
    gt5_gtxrxp_in,
    gt5_txdata_in,
    gt5_txcharisk_in,
    gt6_gtxrxn_in,
    gt6_gtxrxp_in,
    gt6_txdata_in,
    gt6_txcharisk_in,
    SR,
    gt7_gttxreset_in,
    gt7_gtxrxn_in,
    gt7_gtxrxp_in,
    gt7_txdata_in,
    gt7_txcharisk_in);
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_rxoutclk_out;
  output gt0_rxresetdone_out;
  output gt0_txoutclk_out;
  output gt0_txresetdone_out;
  output [31:0]gt0_rxdata_out;
  output [3:0]gt0_rxcharisk_out;
  output [3:0]gt0_rxdisperr_out;
  output [3:0]gt0_rxnotintable_out;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_rxresetdone_out;
  output gt1_txresetdone_out;
  output [31:0]gt1_rxdata_out;
  output [3:0]gt1_rxcharisk_out;
  output [3:0]gt1_rxdisperr_out;
  output [3:0]gt1_rxnotintable_out;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_rxresetdone_out;
  output gt2_txresetdone_out;
  output [31:0]gt2_rxdata_out;
  output [3:0]gt2_rxcharisk_out;
  output [3:0]gt2_rxdisperr_out;
  output [3:0]gt2_rxnotintable_out;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_rxresetdone_out;
  output gt3_txresetdone_out;
  output [31:0]gt3_rxdata_out;
  output [3:0]gt3_rxcharisk_out;
  output [3:0]gt3_rxdisperr_out;
  output [3:0]gt3_rxnotintable_out;
  output gt4_gtxtxn_out;
  output gt4_gtxtxp_out;
  output gt4_rxresetdone_out;
  output gt4_txresetdone_out;
  output [31:0]gt4_rxdata_out;
  output [3:0]gt4_rxcharisk_out;
  output [3:0]gt4_rxdisperr_out;
  output [3:0]gt4_rxnotintable_out;
  output gt5_gtxtxn_out;
  output gt5_gtxtxp_out;
  output gt5_rxresetdone_out;
  output gt5_txresetdone_out;
  output [31:0]gt5_rxdata_out;
  output [3:0]gt5_rxcharisk_out;
  output [3:0]gt5_rxdisperr_out;
  output [3:0]gt5_rxnotintable_out;
  output gt6_gtxtxn_out;
  output gt6_gtxtxp_out;
  output gt6_rxresetdone_out;
  output gt6_txresetdone_out;
  output [31:0]gt6_rxdata_out;
  output [3:0]gt6_rxcharisk_out;
  output [3:0]gt6_rxdisperr_out;
  output [3:0]gt6_rxnotintable_out;
  output gt7_gtxtxn_out;
  output gt7_gtxtxp_out;
  output gt7_rxresetdone_out;
  output gt7_txresetdone_out;
  output [31:0]gt7_rxdata_out;
  output [3:0]gt7_rxcharisk_out;
  output [3:0]gt7_rxdisperr_out;
  output [3:0]gt7_rxnotintable_out;
  output data_in;
  output gtxe2_i;
  input gt0_cpllreset_in;
  input sysclk_in;
  input gt6_gtrxreset_in;
  input gt6_gttxreset_in;
  input gt0_gtxrxn_in;
  input gt0_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt0_rxmcommaalignen_in;
  input gt7_rxuserrdy_in;
  input gt0_rxusrclk_in;
  input gt7_txuserrdy_in;
  input gt0_txusrclk_in;
  input [2:0]gt0_txprbssel_in;
  input [31:0]gt0_txdata_in;
  input [3:0]gt0_txcharisk_in;
  input gt1_gtxrxn_in;
  input gt1_gtxrxp_in;
  input [31:0]gt1_txdata_in;
  input [3:0]gt1_txcharisk_in;
  input gt2_gtxrxn_in;
  input gt2_gtxrxp_in;
  input [31:0]gt2_txdata_in;
  input [3:0]gt2_txcharisk_in;
  input gt3_gtxrxn_in;
  input gt3_gtxrxp_in;
  input [31:0]gt3_txdata_in;
  input [3:0]gt3_txcharisk_in;
  input gt4_gtxrxn_in;
  input gt4_gtxrxp_in;
  input gt1_qplloutclk_in;
  input gt1_qplloutrefclk_in;
  input [31:0]gt4_txdata_in;
  input [3:0]gt4_txcharisk_in;
  input gt5_gtxrxn_in;
  input gt5_gtxrxp_in;
  input [31:0]gt5_txdata_in;
  input [3:0]gt5_txcharisk_in;
  input gt6_gtxrxn_in;
  input gt6_gtxrxp_in;
  input [31:0]gt6_txdata_in;
  input [3:0]gt6_txcharisk_in;
  input [0:0]SR;
  input gt7_gttxreset_in;
  input gt7_gtxrxn_in;
  input gt7_gtxrxp_in;
  input [31:0]gt7_txdata_in;
  input [3:0]gt7_txcharisk_in;

  wire [0:0]SR;
  wire data_in;
  wire gt0_cpllreset_in;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire [3:0]gt0_rxcharisk_out;
  wire [31:0]gt0_rxdata_out;
  wire [3:0]gt0_rxdisperr_out;
  wire gt0_rxmcommaalignen_in;
  wire [3:0]gt0_rxnotintable_out;
  wire gt0_rxoutclk_out;
  wire gt0_rxresetdone_out;
  wire gt0_rxusrclk_in;
  wire [3:0]gt0_txcharisk_in;
  wire [31:0]gt0_txdata_in;
  wire gt0_txoutclk_out;
  wire [2:0]gt0_txprbssel_in;
  wire gt0_txresetdone_out;
  wire gt0_txusrclk_in;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire gt1_qplloutclk_in;
  wire gt1_qplloutrefclk_in;
  wire [3:0]gt1_rxcharisk_out;
  wire [31:0]gt1_rxdata_out;
  wire [3:0]gt1_rxdisperr_out;
  wire [3:0]gt1_rxnotintable_out;
  wire gt1_rxresetdone_out;
  wire [3:0]gt1_txcharisk_in;
  wire [31:0]gt1_txdata_in;
  wire gt1_txresetdone_out;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [3:0]gt2_rxcharisk_out;
  wire [31:0]gt2_rxdata_out;
  wire [3:0]gt2_rxdisperr_out;
  wire [3:0]gt2_rxnotintable_out;
  wire gt2_rxresetdone_out;
  wire [3:0]gt2_txcharisk_in;
  wire [31:0]gt2_txdata_in;
  wire gt2_txresetdone_out;
  wire gt3_JESD204_PHY_gt_i_n_48;
  wire gt3_JESD204_PHY_gt_i_n_49;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [3:0]gt3_rxcharisk_out;
  wire [31:0]gt3_rxdata_out;
  wire [3:0]gt3_rxdisperr_out;
  wire [3:0]gt3_rxnotintable_out;
  wire gt3_rxresetdone_out;
  wire [3:0]gt3_txcharisk_in;
  wire [31:0]gt3_txdata_in;
  wire gt3_txresetdone_out;
  wire gt4_gtxrxn_in;
  wire gt4_gtxrxp_in;
  wire gt4_gtxtxn_out;
  wire gt4_gtxtxp_out;
  wire [3:0]gt4_rxcharisk_out;
  wire [31:0]gt4_rxdata_out;
  wire [3:0]gt4_rxdisperr_out;
  wire [3:0]gt4_rxnotintable_out;
  wire gt4_rxresetdone_out;
  wire [3:0]gt4_txcharisk_in;
  wire [31:0]gt4_txdata_in;
  wire gt4_txresetdone_out;
  wire gt5_gtxrxn_in;
  wire gt5_gtxrxp_in;
  wire gt5_gtxtxn_out;
  wire gt5_gtxtxp_out;
  wire [3:0]gt5_rxcharisk_out;
  wire [31:0]gt5_rxdata_out;
  wire [3:0]gt5_rxdisperr_out;
  wire [3:0]gt5_rxnotintable_out;
  wire gt5_rxresetdone_out;
  wire [3:0]gt5_txcharisk_in;
  wire [31:0]gt5_txdata_in;
  wire gt5_txresetdone_out;
  wire gt6_gtrxreset_in;
  wire gt6_gttxreset_in;
  wire gt6_gtxrxn_in;
  wire gt6_gtxrxp_in;
  wire gt6_gtxtxn_out;
  wire gt6_gtxtxp_out;
  wire [3:0]gt6_rxcharisk_out;
  wire [31:0]gt6_rxdata_out;
  wire [3:0]gt6_rxdisperr_out;
  wire [3:0]gt6_rxnotintable_out;
  wire gt6_rxresetdone_out;
  wire [3:0]gt6_txcharisk_in;
  wire [31:0]gt6_txdata_in;
  wire gt6_txresetdone_out;
  wire gt7_gttxreset_in;
  wire gt7_gtxrxn_in;
  wire gt7_gtxrxp_in;
  wire gt7_gtxtxn_out;
  wire gt7_gtxtxp_out;
  wire [3:0]gt7_rxcharisk_out;
  wire [31:0]gt7_rxdata_out;
  wire [3:0]gt7_rxdisperr_out;
  wire [3:0]gt7_rxnotintable_out;
  wire gt7_rxresetdone_out;
  wire gt7_rxuserrdy_in;
  wire [3:0]gt7_txcharisk_in;
  wire [31:0]gt7_txdata_in;
  wire gt7_txresetdone_out;
  wire gt7_txuserrdy_in;
  wire gtxe2_i;
  wire sysclk_in;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT gt0_JESD204_PHY_gt_i
       (.gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txcharisk_in(gt0_txcharisk_in),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt6_gtrxreset_in(gt6_gtrxreset_in),
        .gt6_gttxreset_in(gt6_gttxreset_in),
        .gt7_rxuserrdy_in(gt7_rxuserrdy_in),
        .gt7_txuserrdy_in(gt7_txuserrdy_in),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_12 gt1_JESD204_PHY_gt_i
       (.gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_rxcharisk_out(gt1_rxcharisk_out),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdisperr_out(gt1_rxdisperr_out),
        .gt1_rxnotintable_out(gt1_rxnotintable_out),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_txcharisk_in(gt1_txcharisk_in),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt6_gtrxreset_in(gt6_gtrxreset_in),
        .gt6_gttxreset_in(gt6_gttxreset_in),
        .gt7_rxuserrdy_in(gt7_rxuserrdy_in),
        .gt7_txuserrdy_in(gt7_txuserrdy_in),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_13 gt2_JESD204_PHY_gt_i
       (.gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_rxcharisk_out(gt2_rxcharisk_out),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdisperr_out(gt2_rxdisperr_out),
        .gt2_rxnotintable_out(gt2_rxnotintable_out),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_txcharisk_in(gt2_txcharisk_in),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt6_gtrxreset_in(gt6_gtrxreset_in),
        .gt6_gttxreset_in(gt6_gttxreset_in),
        .gt7_rxuserrdy_in(gt7_rxuserrdy_in),
        .gt7_txuserrdy_in(gt7_txuserrdy_in),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_14 gt3_JESD204_PHY_gt_i
       (.gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_rxcharisk_out(gt3_rxcharisk_out),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdisperr_out(gt3_rxdisperr_out),
        .gt3_rxnotintable_out(gt3_rxnotintable_out),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_txcharisk_in(gt3_txcharisk_in),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt4_rxresetdone_out(gt4_rxresetdone_out),
        .gt4_txresetdone_out(gt4_txresetdone_out),
        .gt6_gtrxreset_in(gt6_gtrxreset_in),
        .gt6_gttxreset_in(gt6_gttxreset_in),
        .gt7_rxuserrdy_in(gt7_rxuserrdy_in),
        .gt7_txuserrdy_in(gt7_txuserrdy_in),
        .gtxe2_i_0(gt3_JESD204_PHY_gt_i_n_48),
        .gtxe2_i_1(gt3_JESD204_PHY_gt_i_n_49),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_15 gt4_JESD204_PHY_gt_i
       (.gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_qplloutclk_in(gt1_qplloutclk_in),
        .gt1_qplloutrefclk_in(gt1_qplloutrefclk_in),
        .gt4_gtxrxn_in(gt4_gtxrxn_in),
        .gt4_gtxrxp_in(gt4_gtxrxp_in),
        .gt4_gtxtxn_out(gt4_gtxtxn_out),
        .gt4_gtxtxp_out(gt4_gtxtxp_out),
        .gt4_rxcharisk_out(gt4_rxcharisk_out),
        .gt4_rxdata_out(gt4_rxdata_out),
        .gt4_rxdisperr_out(gt4_rxdisperr_out),
        .gt4_rxnotintable_out(gt4_rxnotintable_out),
        .gt4_rxresetdone_out(gt4_rxresetdone_out),
        .gt4_txcharisk_in(gt4_txcharisk_in),
        .gt4_txdata_in(gt4_txdata_in),
        .gt4_txresetdone_out(gt4_txresetdone_out),
        .gt6_gtrxreset_in(gt6_gtrxreset_in),
        .gt6_gttxreset_in(gt6_gttxreset_in),
        .gt7_rxuserrdy_in(gt7_rxuserrdy_in),
        .gt7_txuserrdy_in(gt7_txuserrdy_in),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_16 gt5_JESD204_PHY_gt_i
       (.gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_qplloutclk_in(gt1_qplloutclk_in),
        .gt1_qplloutrefclk_in(gt1_qplloutrefclk_in),
        .gt5_gtxrxn_in(gt5_gtxrxn_in),
        .gt5_gtxrxp_in(gt5_gtxrxp_in),
        .gt5_gtxtxn_out(gt5_gtxtxn_out),
        .gt5_gtxtxp_out(gt5_gtxtxp_out),
        .gt5_rxcharisk_out(gt5_rxcharisk_out),
        .gt5_rxdata_out(gt5_rxdata_out),
        .gt5_rxdisperr_out(gt5_rxdisperr_out),
        .gt5_rxnotintable_out(gt5_rxnotintable_out),
        .gt5_rxresetdone_out(gt5_rxresetdone_out),
        .gt5_txcharisk_in(gt5_txcharisk_in),
        .gt5_txdata_in(gt5_txdata_in),
        .gt5_txresetdone_out(gt5_txresetdone_out),
        .gt6_gtrxreset_in(gt6_gtrxreset_in),
        .gt6_gttxreset_in(gt6_gttxreset_in),
        .gt7_rxuserrdy_in(gt7_rxuserrdy_in),
        .gt7_txuserrdy_in(gt7_txuserrdy_in),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_17 gt6_JESD204_PHY_gt_i
       (.data_in(data_in),
        .data_sync_reg1(gt3_JESD204_PHY_gt_i_n_48),
        .data_sync_reg1_0(gt3_JESD204_PHY_gt_i_n_49),
        .gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_qplloutclk_in(gt1_qplloutclk_in),
        .gt1_qplloutrefclk_in(gt1_qplloutrefclk_in),
        .gt5_rxresetdone_out(gt5_rxresetdone_out),
        .gt5_txresetdone_out(gt5_txresetdone_out),
        .gt6_gtrxreset_in(gt6_gtrxreset_in),
        .gt6_gttxreset_in(gt6_gttxreset_in),
        .gt6_gtxrxn_in(gt6_gtxrxn_in),
        .gt6_gtxrxp_in(gt6_gtxrxp_in),
        .gt6_gtxtxn_out(gt6_gtxtxn_out),
        .gt6_gtxtxp_out(gt6_gtxtxp_out),
        .gt6_rxcharisk_out(gt6_rxcharisk_out),
        .gt6_rxdata_out(gt6_rxdata_out),
        .gt6_rxdisperr_out(gt6_rxdisperr_out),
        .gt6_rxnotintable_out(gt6_rxnotintable_out),
        .gt6_rxresetdone_out(gt6_rxresetdone_out),
        .gt6_txcharisk_in(gt6_txcharisk_in),
        .gt6_txdata_in(gt6_txdata_in),
        .gt6_txresetdone_out(gt6_txresetdone_out),
        .gt7_rxresetdone_out(gt7_rxresetdone_out),
        .gt7_rxuserrdy_in(gt7_rxuserrdy_in),
        .gt7_txresetdone_out(gt7_txresetdone_out),
        .gt7_txuserrdy_in(gt7_txuserrdy_in),
        .gtxe2_i_0(gtxe2_i),
        .sysclk_in(sysclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_GT_18 gt7_JESD204_PHY_gt_i
       (.SR(SR),
        .gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_qplloutclk_in(gt1_qplloutclk_in),
        .gt1_qplloutrefclk_in(gt1_qplloutrefclk_in),
        .gt7_gttxreset_in(gt7_gttxreset_in),
        .gt7_gtxrxn_in(gt7_gtxrxn_in),
        .gt7_gtxrxp_in(gt7_gtxrxp_in),
        .gt7_gtxtxn_out(gt7_gtxtxn_out),
        .gt7_gtxtxp_out(gt7_gtxtxp_out),
        .gt7_rxcharisk_out(gt7_rxcharisk_out),
        .gt7_rxdata_out(gt7_rxdata_out),
        .gt7_rxdisperr_out(gt7_rxdisperr_out),
        .gt7_rxnotintable_out(gt7_rxnotintable_out),
        .gt7_rxresetdone_out(gt7_rxresetdone_out),
        .gt7_rxuserrdy_in(gt7_rxuserrdy_in),
        .gt7_txcharisk_in(gt7_txcharisk_in),
        .gt7_txdata_in(gt7_txdata_in),
        .gt7_txresetdone_out(gt7_txresetdone_out),
        .gt7_txuserrdy_in(gt7_txuserrdy_in),
        .sysclk_in(sysclk_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block
   (data_out,
    data_in,
    sysclk_in);
  output data_out;
  input data_in;
  input sysclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_0
   (SR,
    data_out,
    sysclk_in);
  output [0:0]SR;
  output data_out;
  input sysclk_in;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_1
   (E,
    \FSM_sequential_tx_state_reg[3] ,
    reset_time_out_reg,
    Q,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    sel,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    \FSM_sequential_tx_state_reg[0]_4 ,
    \FSM_sequential_tx_state[3]_i_3_0 ,
    reset_time_out,
    data_sync_reg1_0,
    sysclk_in);
  output [0:0]E;
  output \FSM_sequential_tx_state_reg[3] ;
  input reset_time_out_reg;
  input [3:0]Q;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input sel;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input \FSM_sequential_tx_state[3]_i_3_0 ;
  input reset_time_out;
  input data_sync_reg1_0;
  input sysclk_in;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_3_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire [3:0]Q;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire qplllock_sync;
  wire reset_time_out;
  wire reset_time_out_0;
  wire reset_time_out_reg;
  wire sel;
  wire sysclk_in;

  LUT6 #(
    .INIT(64'h3300744433007477)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_tx_state_reg[0] ),
        .I3(\FSM_sequential_tx_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(sel),
        .O(E));
  LUT6 #(
    .INIT(64'h0E0E0E0E0000000E)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .I1(\FSM_sequential_tx_state_reg[0]_1 ),
        .I2(\FSM_sequential_tx_state_reg[0]_2 ),
        .I3(\FSM_sequential_tx_state_reg[0]_3 ),
        .I4(qplllock_sync),
        .I5(\FSM_sequential_tx_state_reg[0]_4 ),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDDCD)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\FSM_sequential_tx_state[3]_i_3_0 ),
        .I3(qplllock_sync),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(qplllock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
    reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(reset_time_out),
        .O(\FSM_sequential_tx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h08BF08BB)) 
    reset_time_out_i_2
       (.I0(reset_time_out_reg),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(qplllock_sync),
        .O(reset_time_out_0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_10
   (data_out,
    gt_rx_fsm_reset_done_out,
    gt0_rxusrclk_in);
  output data_out;
  input gt_rx_fsm_reset_done_out;
  input gt0_rxusrclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_rxusrclk_in;
  wire gt_rx_fsm_reset_done_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(gt_rx_fsm_reset_done_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_11
   (data_out,
    data_in,
    sysclk_in);
  output data_out;
  input data_in;
  input sysclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_2
   (data_out,
    data_in,
    gt0_txusrclk_in);
  output data_out;
  input data_in;
  input gt0_txusrclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_txusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_3
   (data_out,
    data_in,
    sysclk_in);
  output data_out;
  input data_in;
  input sysclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_4
   (data_out,
    gt_tx_fsm_reset_done_out,
    gt0_txusrclk_in);
  output data_out;
  input gt_tx_fsm_reset_done_out;
  input gt0_txusrclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_txusrclk_in;
  wire gt_tx_fsm_reset_done_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(gt_tx_fsm_reset_done_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_txusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_5
   (data_out,
    data_sync_reg1_0,
    sysclk_in);
  output data_out;
  input data_sync_reg1_0;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_6
   (D,
    E,
    \FSM_sequential_rx_state_reg[1] ,
    \FSM_sequential_rx_state_reg[2] ,
    rx_fsm_reset_done_int_reg,
    Q,
    reset_time_out_reg,
    rx_fsm_reset_done_int_reg_0,
    data_out,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3] ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[1]_0 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    reset_time_out_reg_0,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    gt_rx_fsm_reset_done_out,
    sysclk_in);
  output [2:0]D;
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[1] ;
  output \FSM_sequential_rx_state_reg[2] ;
  input rx_fsm_reset_done_int_reg;
  input [3:0]Q;
  input reset_time_out_reg;
  input rx_fsm_reset_done_int_reg_0;
  input data_out;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3] ;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[1]_0 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input reset_time_out_reg_0;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input gt_rx_fsm_reset_done_out;
  input sysclk_in;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \FSM_sequential_rx_state_reg[1]_0 ;
  wire \FSM_sequential_rx_state_reg[2] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire [3:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire gt_rx_fsm_reset_done_out;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire sysclk_in;
  wire time_out_wait_bypass_s3;

  LUT5 #(
    .INIT(32'hA8FFA8A8)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I3(\FSM_sequential_rx_state_reg[0]_3 ),
        .I4(\FSM_sequential_rx_state_reg[1]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h04343737)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_sequential_rx_state_reg[1]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(\FSM_sequential_rx_state_reg[0] ),
        .I3(\FSM_sequential_rx_state_reg[0]_0 ),
        .I4(\FSM_sequential_rx_state_reg[0]_1 ),
        .I5(\FSM_sequential_rx_state_reg[0]_2 ),
        .O(E));
  LUT6 #(
    .INIT(64'h57FFFFFF57FF0000)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I1(time_out_wait_bypass_s3),
        .I2(Q[0]),
        .I3(\FSM_sequential_rx_state_reg[3] ),
        .I4(Q[3]),
        .I5(\FSM_sequential_rx_state_reg[3]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF002FFF)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(rx_fsm_reset_done_int_reg_0),
        .I1(reset_time_out_reg),
        .I2(Q[0]),
        .I3(\FSM_sequential_rx_state_reg[3] ),
        .I4(data_valid_sync),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(data_valid_sync),
        .I1(rx_fsm_reset_done_int_reg_0),
        .I2(reset_time_out_reg),
        .I3(Q[0]),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF54FFFFFF540000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_reg_0),
        .I1(Q[1]),
        .I2(reset_time_out_reg_1),
        .I3(reset_time_out_i_4_n_0),
        .I4(reset_time_out_reg_2),
        .I5(reset_time_out_reg),
        .O(\FSM_sequential_rx_state_reg[1] ));
  LUT6 #(
    .INIT(64'h30D03FDF30D033D3)) 
    reset_time_out_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(data_valid_sync),
        .I4(Q[2]),
        .I5(data_out),
        .O(reset_time_out_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(rx_fsm_reset_done_int_i_3_n_0),
        .I4(gt_rx_fsm_reset_done_out),
        .O(\FSM_sequential_rx_state_reg[2] ));
  LUT5 #(
    .INIT(32'h00100000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(rx_fsm_reset_done_int_reg),
        .I3(reset_time_out_reg),
        .I4(data_valid_sync),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'hF3CFD3C3F3CFD3CF)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(data_valid_sync),
        .I4(reset_time_out_reg),
        .I5(rx_fsm_reset_done_int_reg_0),
        .O(rx_fsm_reset_done_int_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_7
   (SR,
    data_out,
    sysclk_in);
  output [0:0]SR;
  output data_out;
  input sysclk_in;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_8
   (\FSM_sequential_rx_state_reg[0] ,
    data_out,
    data_in,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    Q,
    \FSM_sequential_rx_state[3]_i_7_0 ,
    gt0_qplllock_in,
    gt1_qplllock_in,
    sysclk_in);
  output \FSM_sequential_rx_state_reg[0] ;
  output data_out;
  output data_in;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input [1:0]Q;
  input \FSM_sequential_rx_state[3]_i_7_0 ;
  input gt0_qplllock_in;
  input gt1_qplllock_in;
  input sysclk_in;

  wire \FSM_sequential_rx_state[3]_i_15_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire [1:0]Q;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_qplllock_in;
  wire gt1_qplllock_in;
  wire sysclk_in;

  LUT4 #(
    .INIT(16'hAF8F)) 
    \FSM_sequential_rx_state[3]_i_15 
       (.I0(Q[0]),
        .I1(data_out),
        .I2(Q[1]),
        .I3(\FSM_sequential_rx_state[3]_i_7_0 ),
        .O(\FSM_sequential_rx_state[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(\FSM_sequential_rx_state_reg[0]_0 ),
        .I1(\FSM_sequential_rx_state_reg[0]_1 ),
        .I2(\FSM_sequential_rx_state_reg[0]_2 ),
        .I3(\FSM_sequential_rx_state_reg[0]_3 ),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state[3]_i_15_n_0 ),
        .O(\FSM_sequential_rx_state_reg[0] ));
  LUT2 #(
    .INIT(4'h8)) 
    data_sync1_i_1__1
       (.I0(gt0_qplllock_in),
        .I1(gt1_qplllock_in),
        .O(data_in));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_gt_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_gt_sync_block_9
   (data_out,
    data_in,
    gt0_rxusrclk_in);
  output data_out;
  input data_in;
  input gt0_rxusrclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block
   (data_out,
    rx_sys_reset,
    drpclk);
  output data_out;
  input rx_sys_reset;
  input drpclk;

  wire data_out;
  wire data_tmp;
  wire drpclk;
  wire rx_sys_reset;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg_gsr
       (.C(drpclk),
        .CE(1'b1),
        .D(data_tmp),
        .Q(data_out),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst xpm_cdc_async_rst_inst
       (.dest_arst(data_tmp),
        .dest_clk(drpclk),
        .src_arst(rx_sys_reset));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__parameterized0
   (rx_reset_done_r0,
    gt_rx_fsm_reset_done_out,
    O45,
    drpclk);
  output rx_reset_done_r0;
  input gt_rx_fsm_reset_done_out;
  input O45;
  input drpclk;

  wire O45;
  wire data_tmp;
  wire drpclk;
  wire gt_rx_fsm_reset_done_out;
  wire rx_chan_rst_done_sync;
  wire rx_reset_done_r0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single cdc_i
       (.dest_clk(drpclk),
        .dest_out(data_tmp),
        .src_clk(1'b0),
        .src_in(O45));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg_gsr
       (.C(drpclk),
        .CE(1'b1),
        .D(data_tmp),
        .Q(rx_chan_rst_done_sync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    rx_reset_done_r_i_1
       (.I0(gt_rx_fsm_reset_done_out),
        .I1(rx_chan_rst_done_sync),
        .O(rx_reset_done_r0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__parameterized0__xdcDup__1
   (gt_txreset0,
    O46,
    drpclk,
    gt_tx_fsm_reset_done_out,
    data_out);
  output gt_txreset0;
  input O46;
  input drpclk;
  input gt_tx_fsm_reset_done_out;
  input data_out;

  wire O46;
  wire data_out;
  wire data_tmp;
  wire drpclk;
  wire gt_tx_fsm_reset_done_out;
  wire gt_txreset0;
  wire tx_pll_lock_sync;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__4 cdc_i
       (.dest_clk(drpclk),
        .dest_out(data_tmp),
        .src_clk(1'b0),
        .src_in(O46));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg_gsr
       (.C(drpclk),
        .CE(1'b1),
        .D(data_tmp),
        .Q(tx_pll_lock_sync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    gt_txreset_i_1
       (.I0(tx_pll_lock_sync),
        .I1(gt_tx_fsm_reset_done_out),
        .I2(data_out),
        .O(gt_txreset0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__parameterized0__xdcDup__2
   (gt_rxreset0,
    O46,
    drpclk,
    gt_rx_fsm_reset_done_out,
    data_out);
  output gt_rxreset0;
  input O46;
  input drpclk;
  input gt_rx_fsm_reset_done_out;
  input data_out;

  wire O46;
  wire data_out;
  wire data_tmp;
  wire drpclk;
  wire gt_rx_fsm_reset_done_out;
  wire gt_rxreset0;
  wire rx_pll_lock_sync;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5 cdc_i
       (.dest_clk(drpclk),
        .dest_out(data_tmp),
        .src_clk(1'b0),
        .src_in(O46));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg_gsr
       (.C(drpclk),
        .CE(1'b1),
        .D(data_tmp),
        .Q(rx_pll_lock_sync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    gt_rxreset_i_1
       (.I0(rx_pll_lock_sync),
        .I1(gt_rx_fsm_reset_done_out),
        .I2(data_out),
        .O(gt_rxreset0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__parameterized0__xdcDup__3
   (tx_reset_done_r0,
    gt_tx_fsm_reset_done_out,
    data_in,
    drpclk);
  output tx_reset_done_r0;
  input gt_tx_fsm_reset_done_out;
  input data_in;
  input drpclk;

  wire data_in;
  wire data_tmp;
  wire drpclk;
  wire gt_tx_fsm_reset_done_out;
  wire tx_chan_rst_done_sync;
  wire tx_reset_done_r0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6 cdc_i
       (.dest_clk(drpclk),
        .dest_out(data_tmp),
        .src_clk(1'b0),
        .src_in(data_in));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg_gsr
       (.C(drpclk),
        .CE(1'b1),
        .D(data_tmp),
        .Q(tx_chan_rst_done_sync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    tx_reset_done_r_i_1
       (.I0(gt_tx_fsm_reset_done_out),
        .I1(tx_chan_rst_done_sync),
        .O(tx_reset_done_r0));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__xdcDup__1
   (data_out,
    tx_reset_gt,
    drpclk);
  output data_out;
  input tx_reset_gt;
  input drpclk;

  wire data_out;
  wire data_tmp;
  wire drpclk;
  wire tx_reset_gt;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg_gsr
       (.C(drpclk),
        .CE(1'b1),
        .D(data_tmp),
        .Q(data_out),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__4 xpm_cdc_async_rst_inst
       (.dest_arst(data_tmp),
        .dest_clk(drpclk),
        .src_arst(tx_reset_gt));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__xdcDup__2
   (data_out,
    rx_reset_gt,
    drpclk);
  output data_out;
  input rx_reset_gt;
  input drpclk;

  wire data_out;
  wire data_tmp;
  wire drpclk;
  wire rx_reset_gt;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg_gsr
       (.C(drpclk),
        .CE(1'b1),
        .D(data_tmp),
        .Q(data_out),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__5 xpm_cdc_async_rst_inst
       (.dest_arst(data_tmp),
        .dest_clk(drpclk),
        .src_arst(rx_reset_gt));
endmodule

(* ORIG_REF_NAME = "JESD204_PHY_sync_block" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JESD204_PHY_sync_block__xdcDup__3
   (data_out,
    tx_sys_reset,
    drpclk);
  output data_out;
  input tx_sys_reset;
  input drpclk;

  wire data_out;
  wire data_tmp;
  wire drpclk;
  wire tx_sys_reset;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg_gsr
       (.C(drpclk),
        .CE(1'b1),
        .D(data_tmp),
        .Q(data_out),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__6 xpm_cdc_async_rst_inst
       (.dest_arst(data_tmp),
        .dest_clk(drpclk),
        .src_arst(tx_sys_reset));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [4:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[2]),
        .PRE(src_arst),
        .Q(arststages_ff[3]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[3]),
        .PRE(src_arst),
        .Q(arststages_ff[4]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__4
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [4:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[2]),
        .PRE(src_arst),
        .Q(arststages_ff[3]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[3]),
        .PRE(src_arst),
        .Q(arststages_ff[4]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__5
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [4:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[2]),
        .PRE(src_arst),
        .Q(arststages_ff[3]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[3]),
        .PRE(src_arst),
        .Q(arststages_ff[4]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__6
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [4:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[2]),
        .PRE(src_arst),
        .Q(arststages_ff[3]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[3]),
        .PRE(src_arst),
        .Q(arststages_ff[4]));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
