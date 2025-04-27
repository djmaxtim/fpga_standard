-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Apr 25 14:29:08 2025
-- Host        : DESKTOP-OBM7L7C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/00_module/07_fpga/develop_20200324/rtl/00_xilinx_ip/04_jesd204/JESD204_TX/JESD204_TX_stub.vhdl
-- Design      : JESD204_TX
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JESD204_TX is
  Port ( 
    refclk_p : in STD_LOGIC;
    refclk_n : in STD_LOGIC;
    glblclk_p : in STD_LOGIC;
    glblclk_n : in STD_LOGIC;
    common0_pll_clk_out : out STD_LOGIC;
    common0_pll_refclk_out : out STD_LOGIC;
    common0_pll_lock_out : out STD_LOGIC;
    common1_pll_clk_out : out STD_LOGIC;
    common1_pll_refclk_out : out STD_LOGIC;
    common1_pll_lock_out : out STD_LOGIC;
    tx_reset : in STD_LOGIC;
    tx_core_clk_out : out STD_LOGIC;
    tx_sysref : in STD_LOGIC;
    tx_sync : in STD_LOGIC;
    txp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    txn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_aresetn : out STD_LOGIC;
    tx_start_of_frame : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_start_of_multiframe : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_tready : out STD_LOGIC;
    tx_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );

end JESD204_TX;

architecture stub of JESD204_TX is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "refclk_p,refclk_n,glblclk_p,glblclk_n,common0_pll_clk_out,common0_pll_refclk_out,common0_pll_lock_out,common1_pll_clk_out,common1_pll_refclk_out,common1_pll_lock_out,tx_reset,tx_core_clk_out,tx_sysref,tx_sync,txp[7:0],txn[7:0],tx_aresetn,tx_start_of_frame[3:0],tx_start_of_multiframe[3:0],tx_tready,tx_tdata[255:0],s_axi_aclk,s_axi_aresetn,s_axi_awaddr[11:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[11:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "jesd204_v7_2_12,Vivado 2021.1";
begin
end;
