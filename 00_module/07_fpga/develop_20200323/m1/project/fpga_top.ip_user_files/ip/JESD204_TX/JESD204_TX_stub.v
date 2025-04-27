// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Apr 25 14:29:08 2025
// Host        : DESKTOP-OBM7L7C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/00_module/07_fpga/develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/JESD204_TX_stub.v
// Design      : JESD204_TX
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "jesd204_v7_2_12,Vivado 2021.1" *)
module JESD204_TX(refclk_p, refclk_n, glblclk_p, glblclk_n, 
  common0_pll_clk_out, common0_pll_refclk_out, common0_pll_lock_out, common1_pll_clk_out, 
  common1_pll_refclk_out, common1_pll_lock_out, tx_reset, tx_core_clk_out, tx_sysref, 
  tx_sync, txp, txn, tx_aresetn, tx_start_of_frame, tx_start_of_multiframe, tx_tready, tx_tdata, 
  s_axi_aclk, s_axi_aresetn, s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, 
  s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
  s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, 
  s_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="refclk_p,refclk_n,glblclk_p,glblclk_n,common0_pll_clk_out,common0_pll_refclk_out,common0_pll_lock_out,common1_pll_clk_out,common1_pll_refclk_out,common1_pll_lock_out,tx_reset,tx_core_clk_out,tx_sysref,tx_sync,txp[7:0],txn[7:0],tx_aresetn,tx_start_of_frame[3:0],tx_start_of_multiframe[3:0],tx_tready,tx_tdata[255:0],s_axi_aclk,s_axi_aresetn,s_axi_awaddr[11:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[11:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready" */;
  input refclk_p;
  input refclk_n;
  input glblclk_p;
  input glblclk_n;
  output common0_pll_clk_out;
  output common0_pll_refclk_out;
  output common0_pll_lock_out;
  output common1_pll_clk_out;
  output common1_pll_refclk_out;
  output common1_pll_lock_out;
  input tx_reset;
  output tx_core_clk_out;
  input tx_sysref;
  input tx_sync;
  output [7:0]txp;
  output [7:0]txn;
  output tx_aresetn;
  output [3:0]tx_start_of_frame;
  output [3:0]tx_start_of_multiframe;
  output tx_tready;
  input [255:0]tx_tdata;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [11:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [11:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
endmodule
