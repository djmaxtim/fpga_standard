// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Apr 21 17:12:27 2025
// Host        : DESKTOP-OBM7L7C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sram_i64o64_d256_sim_netlist.v
// Design      : sram_i64o64_d256
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sram_i64o64_d256,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [63:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.966099 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "sram_i64o64_d256.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30560)
`pragma protect data_block
NQ5TQxQ+mryNEz6AkWDkmUn/w3eT9gRIMHjdaPqAp9PZWAhVjc6jCasaXz7BBzOmwKCyS0VsFjM0
lNDGoQnuhwVfjX31QJpenDB7WKe2BoYLh/2T5W7eOcx7bf8RBueGtIhTRMP2aJy0rfpB9AYg0Llj
OqHPil/HhI4MMKvgt7SIJxSLgnkDxCEu8Z3MVxdVySEOB6mgqPk2WiF3lr+DWTUrSVNcn6fO2zhK
m1om4Dl9zq8ALsCNzZ+E/hY6nRTrIG2wM/HAzYiTpYjl5AeXaGUdOzQrZ3mRadlT01Wy1lH9YL/g
kOzjCs9JCbZV1y+y8UOZBNo13zhBpZ6ZSnyKq17p0c2ujlrelf5w8CDtSMVfThqBLvu0MAo772Ds
5PU6MpHHcSHpmC9qtBTiPhmPLY53o8uMqoTGoN7yBQ8AsDBG7dSkTgIeWzOeLNZVXVw6WctscY2s
zSK2OThJV3tFwI3lRocFYHMQoq3A/uAvWD5sbCSZncj7vXVaYzP7bJQXSC1eMB+J3F5nb0BATIgU
pteYhe6E4v06WegSuTlW8EwbajdZ3WHq1eIpiSdZwAmhkuFu4BevXM6fKE7u3nyvET44qkt2QTgJ
h0a0wdoQC35BP4aZfRSbV0NFC6lGbZ5Yy7jfLf5+zocw+c+EaSKG7muWTWbwZQpCUADU40uV9NCO
hZT6VSiY+hCNKz34cBj2o1sRTfZwSrvCbZocDH1uxipqsRQblle8F54GBj9Zwka6izI8EFa+2+82
deQCya9Exfn3cJSmipZ61SOHO7SGpvVbLFL+NUZoDrqW6g7aP585JG8H/scFLDAIPLGUerVrNA0Q
HFymv4FILu6eXfKLJrYbBExiA135CIQNwFIMgSiJx3YY3UHsPl+H2wC6Q1UgpKL5t2SdVQuU5EoL
Xckj6hObtIBp3Tf5UY0e6n0IyCTdKRBrK3cowhrMk2QBRGE555LWI6AzcyL4GR8/PMFofcL0dzj8
KGAyweyLn1H4tsnAc+MNZRtgvbMHiuWgUgs5luSS/V/ahMeA6DhVfFj62nw3pNnqh+ZCpK9GP2xb
ofsP5LAKTGDAnKHGpohzPe2EHMbcByNaRvnUFNAi9lGQGn7D3NSkm7s6aMeTs83V95QimUzoaqEy
i+SIaz3duIuGsWMwm63/gZ7fgz0cGXQbNIDWdU6dje5kcb7qb41f8cAPi4fOhZpsTKVSRmAtB8it
aHoMlK2LBkB15JVI7Xob1jSbKXoZPQSVoBd2NhyKeN1vpH/nXIApJkapBsQtrTYW5q5XIx2gLMMf
RcwIAIXX/9A6FgJwdyJ1zB1NaFeQKi9thfFfMNNdWEoVJ+m2fNkgMizJA04vjUDt/mKCG6m/baJI
nr8JKeT0N8fffgduHSIarrUPGNJzy2GUED/Yj8PqGH0e2PmFVqQTZkkmD8aFM0sEkZAo2DiQewEe
Qa1sM41GydNcFfzcWgvcZdnUJc0dwwxj31+FPZkrcK9IMxSccjD1dazECCd007qK0PTPKd1oDPkG
SwJGqjzyz1iw2rko8kRdkuB1wbVLjBNp2g4VFM3mpI2ANQEWJYMn0aI87EAYqrsKyma1e3vlWn8J
warvmDZJDquLxlEqxhETXmn/wh97aBBSSov1DWbsbpjBT4QjPFXslJWJM+u7r9ouYhyIrF/YXcOF
4O+DNHRL1s53EPi8jwLQQ9PSGPNhpBSP4y9JbqKIEKFlMyUnVk0m8vBG8PGdoQ6L1p39tUEczMzX
44JTjX2wUZJ3i5AZOJKhCID46l43lUO8CHpWr8n3cTKwja0ysPiwhm6RdnplV4cAocqvJNEsp0sw
WpUTTxQMlPl1EzPE7C7Fa+VEr63yeEYw3OT0WlQ5MQAYQRG04MBI7daX3pk2z7JfBJmbJdkkmGnu
aPZlOZKLADuAd6gZj4dNJ/ThktaeWAuIh7vZWKejD1Jq8ziyY3E83BeOS9qL32rgki/X4QUqlaMI
YjWWbhy+WeYbDTZkSPt+NYi+t6rIz60eUhyWHSpOzNmt9LlakjTxiqGkmLtHoE0eqznOs2QFTPOD
zBN88qd1lDi5uMnn1ghkXFRQ+635M9OcelXJRpJCFKCLZdFg4KzkA/r481rI/ujmZ92wV3uWp5lG
lnOiJkrDVJATuCUlL33DXcRwjNoezUUBEgq57SYxdEWCWF+XFFCmuKXNX+iK5Sa1xmggWJad+Yvv
SJTaS/uq+b9OtY2vcfMTFwRu/q0KZB0j91wjCeWa/Rhgekwo0lkJsUMoQeia+kUs5rgaE3US9Ho0
AOJnWeGkFO07Ot7/ILxI9OWde7RtRQGRZM+ECmrRu7UJLlcDPPY4HX+G1TXJT6mirEgRN5rPoO4v
/Whb6UMC08mQXS67ktPrgyR0RB0FWV8P6F9cP7HvC0q8m+F9bXLChPtfAQM5sPcFIdYRNGA2T5hp
Cl39mbs/+G7OOlTnB+XUbkH8dK60+9frEQ1Ckx7mtdNbKfBUfHVHvLniuvx0TIJKFx30tLyOIqy6
Gbri0YkqbROU8a5wwSKjfDualt9l7jFrY2Cd351jSjqmEebnzjmkS56dYsmh6eWfIaFURTG7SbJF
s6DHH43rymZ6RPhY9SbCmmbbYGkPwhFEnyX7xoCt7qrZD5Zoryp+bpbFy5ZrfQXk3XnlvJiE2aOn
+Ttv4Ani034bCCIg7YBbQ+ONQZYlwmB6JhDcC3iapV+9mTQ/qHzIZnuY7ynT5aTDSsiizy4/Ov7i
WpRnOWXWORAf9dQUcAkU/ZdkQLNYE2VuN/IPrr3ACDzfnQjkTyBEq/y4RkZerTf9dQxRKrd7BpdO
g8+mWkmY+ywzM/Dy1xilggMyPh/X19evdHVrhh5uBj8L7bQMxK0QbXXvF3nKelDksvSZWGw1E1Uo
O9Okpt5yubloxzazz7C7XQfLB6mfpS0DAKKfgWxRcatMSJWZPuKE2JKjIkfrfY1aiSIPUqBdUuTU
0WYQ0CQ6g7pSCh4rUWMiRVpM9LJYQ3Qxg5iex8XrkrLYnyUa+vUnD8YB+n/PxptBvOGYw/oi65fv
gyT60YJi0sCWPnJC9m8VSaR482Xe1E6hmMKcoY/UcK3DFkQHSfgTcaT0zQ0otj/57XJKtX7UrWnk
KD+3i1CXywsU27cdOjJ391/pb32g3qlWZSP30rasAlvLNuq1fzHfrDHdmqLRbQR7gYYF+7ExaiSx
ngen6seKnadRhzWN5gcb80jfzmLKbcY4Y7ASLV8SKBi5QtzWn64oFrEz1BWF8BamWQvO3w04wHTC
aW0vt0IphoZyU2hEBRRWy5WFvnB9f3FMDJ+FsNVlZflnfBNc2PgKfS5Y9hYxatYKyBJYohnguZdt
HZ6yaRh4qZ1AeGYSMZTlOc+5j0GI2wg73d+uk2KEPnA50Hs2Na0bi/lDFclYKXxAM34etNkldToB
b1fAHfF50eZpIw9SAMRD0XyP4Ig/z9HrhdmROzd6IXdOge1WreprpjXz/S+WYh9zEsN+E1cnbAPN
g8DmqzYR6E0EbeOmOE2eGScMBSquIaZVqEwmUj5zCBUGHhCYpKXLbrhNMsQBoMql/TOjPSLzKMBX
jy1/fDC+1m98457+kQ/OHawUbghrDIdBHN2ZyrOSWtS3vzMkbvSLlxjlXfx1r37QaPO+DYj3hKO5
vP2MHgblVO7PosPCmBQIIvmzw98xsqv/0d1TYDA/2ctmNWuwK8yBfwBrmukkh3YaTW3R6L4G+7lD
r2XAIZua6lnLYvj1rZkhNREoOt2MLTi6ci3yCkD3B0o8uH6A054pRr3l/PPWvVEOKDzBZAiA9Wlx
atTw7lPwzv9lXjre5NmRDIKnSGxCiMKWOtTK+VReGqmMt31joJFD8WMMtbUlaObRkvzDKqgSMFmu
eRxC2BoVcAm6bd/LjABk2Dx2imwGzJ3NIA5fgI18W71Iui7kDVl3U5TO2GlNKsHuvlAFGWE7p72n
yALPt6OhScpwX8d/J2E50BOyUxS3r0kMEcIEcWvbbsPEi4zYFbG2U0eklaLO4+K9HKkn391axTk4
hkeq1ne4Z0jQC5Hk0IAYayclYYCjTaAG6Wqg/cwRUvExLJMesXK1tsuMw1fU00jsvVLU7jbMWnPt
wq3MrKUV5H1Kvfe/QwAlcdJkR3Sg6uLf/K3oZPaJfN0Hw3D4Qwu2kWlHNagV/LyLdt+uvV+rRn1v
+vnFLyTrxaSt9ArJ6oFScK+IkuUF0wr7iADq8IJry+sghi8079nJlphn4EXkpf295x81YPLt3S4l
pff0FyBJ3ePz3YwvZcey9cLGlsynDg0XiQU8ojVZHdb4ZNGzfGFchd33plZdrMtzyAbeXzPyu8X8
i+xZQzRtFwM9L69//cHJmHmFRaCktG72q8PlTlXALuzS58KrMAPKEUFgGw156QRA+zFZjXnF6Bmb
v8dbkfVKAaPp/PrwWVR0fDSy3SVOpCqocIawApnjG6vI4R4LFZKRV6ufsYz+BT8h0bku3NKEHPtE
dXoSqX3c0J6kdu7YoF5iljJAaZJWc1hlNJQRAVGInRQsW42bS79xfrWR7pyoyPxdC9/yU20czKz5
rjmn1r7NIBgxGACAUmUek932iki7lIB4SZkkjwo+YM3h454agQs9DbOORuM+mEiL8nxirNynkj5h
ks4vGvyGigm472UZWQCiS0vIH4rzTTxrfJVn1l6l/44yYtkllP+3cWyPqYlQt1HCGVTpQMU7uU8R
zduMfedt3Zd1ooncnbZ1VxzhexY/96c77EjujEcOnszKx5V1+/fm+B1iH37XADIZSRwaBQHcvbYO
5fb+noIR/1nm0yVeLFPa4Y1aphiKfs2vK4DoA9u/Hom3m4/YqktwJkNV1unNauP4mkscqcBMGjw1
l6grQOdwdQyKSpWhJmArB4MuJWytkqdQc7uEnCW8m7XeTKJMqKQxsiyOchgQrxvUljHXyuxkXr9i
v3ySAcudihUMa5CGoXZV8pQtSI6d/7hLdneNAjb03WbI7nBF4R52iLVektA8IQ8Pn32a6PK60Z4z
IfmTB2UGLaHewjgseYPmdOKoSQwWTBQFnG0dMMa89Uzi9D54SGTm9KL3A0mQ9zsIHRN2lTkSA+FI
FcVYMfVpoy5jFXe27zSnb0AWXf3AGIIgd0VU7YBuXhk7dhSku7DUJ8JJ2213H72lrQjEZm4f1wD5
uCJ7y41EVlBGPDHUvdrTqjK/WHJxEkup4EH6RHZ6YS5kqtHrCebkcQVRkBL6+CzxpMxGPRxp7EJO
zeCJ/jV01y3ATN0qu2v+WuyGetq52YnPR/4TPdL1WBIAlwGzeZwuLMNurdW9xa9QZ8XalEfrAyrX
gCQS6ik7sEUHLH3GlcKcjuZaOZi4U8VP0EqSDUd1l4m3AStCnWG6F5wVHw+R6TZx33ODeAvmOuN7
QAodj/2cOZIVG5ItgqP9XHxtk6h/OdE+SDxqkCIBclB4nkHtQLLG4A/Cp/02fPMKLshsaUYsPdkf
UgnilJ5GX0clr+20k7q04G9Yi2U7jPfXaMRQ+QQmXpDur6r/ug/B5uxv4Kc3aNljZnJhz+h4wzb4
WEGwK9hYM7iYHlbPA72DBFkDlvd5scrLItSugry05P2cJx6k73A+3iHxYmFeJMGZtUe7OsaCMpyy
mQtDUdEfIxkJ+Pfd0NqqaPTdd/WxKw8iPj0QFLtqtIjsXkCRKQrtuXbEzWtXur/PXyVX9YJMgWTZ
uDgUCuniLOoYiM58hCddZ0eQQDWaA1oC8LlrIBmY/xA04spoUMBFHdlJyCM05T6eQWke/qtKL3bq
5OTYDJhn33O8reGELgJkGN6Aiqi8ZHtwcQ+Ns2r9hfyVFfaN9a8BUd2zgvpAJDzGw9hqE/E6+wTH
BXr56d+CKBTxbVaWumU/o0mr1sTQAAu5LUIJzizlZsap6z7hgo/2XFtVRTWbe7zL65VQRRtwe/iR
2abClX79TXrPHMYSqXyO74xE7VX2hSy4hvvfBu4wHYqbbuYK+3NV+CkKLULXYZotdENax7vzf7md
u0/u7IE2VXYkERBHRpxh0Ria3BePFOdkKz/WeH+RfkSwZOw2AIXRgUBcg/nURrLJpE4aFA1hz8tX
Sh6UvpvhRJ38dkzMteQ3A6icLfWFnkr/cBP6+Hbrx9p2J8ZBmwcsc/ojzivnfzgHHF2V9mGu1tVy
MR4jQSP+FgErLClpKzqP+6TLVITytpzHYJGIIpykDDCvrq3dBhqQV6va5s06U9xONF9gHEZrfQxs
k9kChgZdk/9KmHeFsgiiIjPTyLI7JZCQtogpL0aZZhs4pMS0tE/hEvwNngxnuJ3kw8vKiJ4C+Lz6
FLN6oe3PHwZ+Moi70XMyCGRz0zMN3SX3WZhhD8bLbvUBBD5vb9P2zs5/HaGFWQuI9220pGp0+d5r
X3uD3DH9CokRt8J+ydb/BzrJSn1XC1QEQs7LacZ4oUuW6vl2Kt3XOr4qr489G0Gri7T8AjR5Km4v
GEubyWqPw2cGd7FOfshG/x+GT5ExXLu4r5cqeBVGXEX2vK/qJ/eylyYyG6Zxq9sGUhdnrimjVkRC
Czr4je8mJrBYykq5joAryouxtAlkZjZLEkaPfqERtrjuSMLnRQiH/JNeY1By5auuXcxBOKbPBXYr
70+c6uy4RSRvkRaoAnnSI5JjnemdtFss7yDHId9rt3XPiWuLmamYf6Ii8Fa9oJkYBGUy9U2VsBUt
6PNug4dTkLrDmgAwqHkWXBkkUEnbCaimKx7eVcwdAaZvAxPNZ7p8LIuRmp+L47oCRHUiTb0hO/aD
t01yxrJ0EUaFUS2T7zfnic9DAXRaXgoRyZ2L/0WcktvAXhJKWnwG76ZZ/n3yl0M5MyX8b3JqbztL
WCGG2Y1kOfn8zLKVSbFampreVbd3wgrcETlJnLJWsvQGEiZneJs9JB53esCF/BhRDkayvUPopzMx
WGLd9P40aJNaVoz1RF7qi3hZSLqBK1NSvWHi5eWS6vyRb0rpgaUz9BJWf17p/sP3ZaCYj7XJQ6dc
d2kfsyH17BAA7lEwIK12ka5/Hb44S9aLC0NeeS63RKNFxmcrOFisAq5uOZTL84WRypA+e/W2FyA1
XDvzYeHJ01DYXUf5QPDanSMORYttURvZWN6YeVnetQlqEZE9Mm0G0gmSbUcvaXg616DGzID6AQN+
E33MyndSXmiHr/05VaY+Z+WDGst66rhu6ElZyXA6Qt3rp0H7x87Wv9URA6RTsaTGknR/FgZxopSD
4taWcNuD5IWDf/XACdg2IkoA8EacwiwS14q0pMz7BBgGhCKVwD9fBtoDC7Ikat6Doxu/pJUJUXv8
q+jrrs8CatuYj58Ue/akTocLJymH1YkcB+Wfif3M4D1k5UTdFFSKy5NJPBJOIuHEg7Y/lC+rfYWu
x024DFf0y4n0xGJaZmD2nn/Wf/L+IGgm55LpkgcT/TAE06JqiIkj5F2izguUhRhJcT7Nf2ms5hkx
pV/J4XDkFHvKgk69C2d5I80X8K2T/MLkLGxJD8S5r6Tj+7wZ726R6w7SkOoe5JDp6PGxtuMdXJNa
p8OLcoq67q3v3XNzt8yP+L7y73fgP0pXQBWfo6g+lmhwvHJi3RENrgriQxnBQrghZdnz0BQdo4FJ
1oqi2iLLkvWW0wP8EZ+8WgErrilkISOi/Nblj6UD4EoEqpC114P5j6hiBllvdkVLjol87WH1J3Qd
WWQpx4Ni9VYYIVuZgEgMBqxbFka8/9AHkDKbZpyMzP+H01Q20BK8GYz1t797qzrW8NtqtSuZ2inA
Pzk4Mm6ov3F2ao/2Wo2K2oI7xTc0uJ+otgE1qxCkUdtT5BC8+PGtRwr3hvcc5TkijmQu3vm8nN9p
Ubq/U4LTbG9Eof9Hpcq/cCJ1i64LcV7Ox5NkDoVy/6YRtaot2aoTcCQ5rkhgbk9zQqwmP9LqiHiF
j8B4adqBdHg3avOx7/IsD0rk1VmcitpeGbzqq4aTMXty00RiNqIQjgsjvzm2XSSmHdmyyxgp676N
6viGXoTl8KCxCKSDD57gEWZsXlCpwgMt9tYR78hKp73BlYQiddVyQiQTMQgacFNVgClINzoZm5dk
WZ9ksxQsPOWn1ENAjjok+rsdZK1scL8HJiUlfSha76Bf5n61SlxDufbFzwIKhivdvkQZ3NXsIcKE
OAZR7c28YPN/o9/CtxoKihk6+y5MKw+O5HaYPYUVRlYaObiu/xHErUPXHjnS/INvTUCrbFZG+Sc0
LsufYrgQw5LE4UHhzVf5uynJe7tEw+JEN6dSnTiUq4fJcnfq5zfOl4w/UVnEe2deZffmwUscouJw
irjLdQZrL88+jv9Jzuk5G1N9qFRKS49eRjV0JVR5Z4W+1lxPTmUljBMCrTeZKLG8ZOFtwvW1up4+
y0CfHlpQtCIbRGHJYbfybjUeGRMXUpxGCPNvtPmB2a0ynSX2vnRHbwqtN84rht6RBdAz5eZqvbsR
Bu9Sua3gzbLidvyKE+9QJpqXGAB7MDwAQbKSrBYPT/tZOQ1xr/+Txf0i0fK3sIdvvXslqZalOuIE
N2jmsaqHZK+cMkFlEMOz2tVEL5Fufw0pgwzDMaXuqjgWmP3BDRNzgNKvXWmDUb3F+WSG0xIJtqy3
6tvzHoeUSAId1nSChLD0eGOW0/cpVMKFkErIbWtQtaPcDMatGZBNBZl2PrqmfS0+Kshg3RcbpiAc
zqMdEtheKkSIWo5+BD8l4w/AYOvejTNIDdec++TpVRa9dyDYbUmTH3o2mZAyIjEkHMQNE1se7uLU
lprlp8wGZ9/EfMxvnvCyIi/yUZsAOb4/koZPy0K+3IHJQSgjXD9h7oykfUVSN+4op8XreaJPIeeK
iYo4z+pvt7SO0sjY7T7EUKO0DYNstMTuzexN7iWgTN/LKV9I3/+TZYiT8QHaRdAgsmzLQlPm1qT+
xAAAJYsEszHDsF8sQb/Fya68v5VziKV0Z+glttEk3d+6pB8L+VGM4G0SJvA3j2SdJtdxWqEOUnXl
5gF1Q6WBvPCGqA9Yh5xee1ZS7iK6QrrAfsXx0B/qlVRdTkq/gsRp0FLU1kKhSjnjOAnpjyFBwukd
SHSohplXxXkV71ZKOezG75M6/UtnRgK4Sn25iEB0YpPlEXKWm9exw5Q4BZ8GXH2EzzHp3KsdFrn6
QW/61FRUFwdHQDtc48c6BdaMeTHojPPiI5tDrUEAmYp37qHyiRvIlyFffdQORfZzEaWO+BG3uEhJ
YUAIlGGqNRbs5SYPYznCQ35qiMi22DIC+9s6MwJOEE2fUYPfnczBXaGtocjJfbhNkD57IWI2Irbm
5wyyxB1/Lag+H+WVO+2U32W+fVN5SQzfFCknwaM0Z/Sa7INGJ9B8e9jHvhoDxvroUKu0Ctw6J9Ue
rccVl5O+alKh6cgt+3RIn0AUdc2PlZWOVtCMcEpNWibTiGfaa+lEX9GxHV/Jbm/vWZxOO5Glnrg2
bJsCBpWdQiOsdiMgBa/C3oEN5n7x4zzp9eVePObZPdGK8iXkXRPRvej4j+rOBDvpvK0wBqdhuZsl
TRtOmaqwqL8ajbPLD5ACcmxAbKqEWIIlovBTievMY2KpBMAwGU7YdwejZWJ1YzsoGnKu3rZqvA2N
dmu1D+6T9VYUArrPKlBO4me+tGWO9oCpy34wJrRrvxh2T8FMDKfcSR/ucyhFc7CC+rQBwLt8+Fi6
0sPVCaJgKBicljnbbn6/jLk88Fse85ylIljyCUIkxyzHrGNstD03T/l2P5j9F+2A5s0XiK6yRS5Q
CrfD5ekPt5gmNjTU8UwmI53OX+rlRsXzZljkn0i2N/IsovKlVl3KtIK3JI2pgg7/N04ZKv7ZUdyD
WCq74kRKP77avRdizByVjzAZKBEen4cNFoSMkl2NtkYx6Y0BnfUjprNezHX88CXt55IdnX28jV88
OcFSqjkxu2xIP2uqm/crCa5MUDmhMrHuRdkRbeXOlfg5CpC9cc/8BS+CZquvty4ZY6FcGVMcatRF
cxB5kvGL3mvy3uPRZKIPYG4H6Dme9cPQHqcnwxWJnKQM+EcuKatIVNeQJ/HG8Mde33vwjXweXFHJ
/TM8IQfZKDY0yGGYu1OC+6HetmR5daIq7S0ZR6vSuvVbe/bwkS/4A4OumXK3n1F9AFnkOyzBRI0q
7zB0j86NUC9owvaxHPMaSxHiOhRzIuThhKvLLHUUaSYn7hxLO0j1SW+9n+H40IIUbG7vBfjubkAX
shnMeRtCmKUAU4r4c+nkfAxydr04oXNPArRiVNEjmXT7PJ/Smz2uuLFLTIbbRMAa3Wi9V+3EnF3T
vaQtptUVxwVx6Hj7a5JmztIzrPkaBEbcde0b2SJZ5ty8GlKlZ7T7CRjVecvv7DKxzE+OJcjbMi51
bz7u1ufkny+BepZtLiqPp6X78hIrTDi+r28m5Qzmb19msgSN6QviNfdnUYMi1WFl7tA3Si67OkzW
tCDPv1Jdnw16HBaTaxv06Xy/qu79mH49KOQRyTjEvHmH6wC+GlG+0tX+9e83EcjpRNRM516ejVSj
DOiucMSuM/QaAc6fQBJnIv4sESl8JD5y/IoEJvqlDKxKLOw5wDJ5QWXFI6tl0yMZ8K4qdRweHEb+
29W3TFObQO7f1g2F89AiYRBtWQNAoYyO30Yj6ZJn130a4gGIw6I8a08uzUnwiKCoeorC1MSmU/Hj
ksR6d3FWEykq3EzxYi3RlaqLBIwl+1z6Kv0gg18qM5QoefdnNR94aVRXAHxZjUJ87vFy9bUtfbnc
dP00DXyGC0fwRhwsxuchrOFHBFhPRuVVyrd6q/ad3R18+snNuIPeoc725P3XQpWp+GY4sgJRvy1F
6AJECD1d2ve97V5mqSOzZI5fkx4ghQAO0BEkgcSecz7tud0zd2ezPJAq40+AdXUGbZzLDRy9S8q0
fVFEofV2ym65Df7v5iW3SPswFWBuuFSX9kg3xpXLKvgEdst51cIFbDDZjpXGLOMjCuVjMSC/emmp
igc0xkBoo8S0BQ9NXoZ5iPzxVBTvQC/q1QH71OazACPO+9TuEQF4q8ErlPx/mkTuZw8s4t+jNCic
OFuI6ft5fncgE+Tz91yY6UCx6EjXxqQBrqxBTsvVF4m65vvQKOthBjEMtly2ZH0NgyoxJ3vnSb0K
PfJk3YSCNqBgxXLKImehiMsxYrU1duaGmpbYwi2CbqsfazP/1YUzfExPuRzPZqYXlYnQtCMRYxRf
8+jaJStyXPrvvF9sqJpeghH39/1oxSKe/e+uXL/Dxf0e8CXSpgMrErVsoGdqqX0ZAegx/yuE5Hw7
caJI5bN0jBQ417gP+LeMfmYiQ/ZnygEKQq2oOfmSDhbawkAuJSA/11QncTK2IFs0xm2NgA9+90Vk
12AHSQNDYaeEl7UlOpX0cw+8xlkZ00sDdH6IvqhVmTO5u064oz1PjkBCRT5yDGZVn8q6POyWr2ca
y/R5E71fxq/T8E/tgjYOcOHXLIGBaFX5+tbavCBTN5/NOzY2/uDu0nfjLbVOV2OJ1GLltsZDAVyf
DwJX+d5+cZrAk3K57k0FnTu5NxvYXDcOU4jMuU7uZE0R7b2W0R7th4xTcB4V/4Ek0s1taH7CPdLr
Dzcw89zQ+ZLHoX7fziPp/XSg0RjF5xdh01Jr8qmNALAtPpI+Ul+LOsqN3D9kglQo9yayN82+4jwQ
V0hDmQrvhvUmXC6a8q80aDx+BV2hMzTbIXtaI5QBQVBVbuLrmtEIZpmi03NVN8V8GxY3r0+BPqnW
BUR2xyRZqw0AXBPw6WfGimTD47ERRnTjt6iowS/oQIAw7YX5KxRVm4lc2WC03WvjKxfWwm33DuSZ
ABvkMtVEL9h/gh3oQFbxwsRHvMTzyhPrAs6WmFnWV48Z2c36uIkf25Fb4gTn+PfPFOXJ9Pl9RP44
GUaPAhy26pv4UYoBWaJCGgJpR5vGdfABUf2+3GKyc88NsEll5ZUW6+AdMmSeCglpVUbS2LqBlHLj
5OzGoOdjlXAcBBGizKMXCEsmbk8ivB96jhSxZczNnyIORDfyLTD4+hXh1xOcmgGvNlrSe5GA9h7Z
Q+Uqu0y2qLf8qlWQFJzduoTFdcfL0GMPLW3eWEFjfClBxnc7Yxv8mHMrgzGL1bkDcY+FUFUfzFs0
LGBMjXpmqBPUWr+qzIxWLl2mDuYUxxrOuzdefDEEDAkhrCYgcpk9U7fA+D20SxriIBS1ox7nktQq
wmZ7r5tCNjdvwUALdNRW/iGX6w0gM/7VWlAVtwCKkttEdEP09W9EFhTyCfun8mM8HLFL62fA/Xe4
Rc5tA3swrSINclfqb40S+/+UtRbJlEPO4uLgLXImIP8wCbNwMifD8bTmC4sNxWwQR9znxTj2ffws
dj5biwAZr/CEhCHphFkXzTTsiaKZJNfbaVY5850GkUc0AkURWZEz4pimnHfqDKVUpVMb8w2KAuDk
aRzWDNl90J5pup1JJ3yXUGqy/jSG1GORUSlIBkVBuNwNvIfRLrZjIbE19UpT2fTyjie73sG9ShOL
9TjpvYE+2jg8Vyomgm33TmOVz88WqP/AsjGPyWDs8+t2hZhmwc9SbG0RP71WYJpWhiYGYmwQJep6
3oaMtIYrBsthqfgjeEPerwaDpcyx9Vk2sIzJAkohpbhR6Y32TAyPd8q5vfO4g/Rbd0lIfsPsEKz7
OzUE7pV99DB0X2GiXk/9ikIJdbMIPk9VwO839RcOC4Xyh4Q6g8VJG7aIqPhnr7UnGUzqXT+kJ57p
lGbUbnxOaSo8r2AxL4iwc3O+gqT3c+Q5JuRt2FOZn3Ys93r12xiMQSXj4FhTrWw3NR/G8ohZql2x
PrXCR1MjjA9ur4i6pxbiF6uWa7tIjXd4OxU3hA+XciIkkgI3OWy2C8AzXG4GmyWoiQ3O+g1eAF5V
XXCFfFKTUSU0MDeC4SbTQR//jTLIoUdSu21KGR9mk1YZj17rqtvd/HVtJYNSobw2ITXc3lg5cXiL
JL9xDbQiRI7R5JJUkZV2EbD2MyCijCetKkpX17JKPcZki9NEtRoAX0qZppARRLJgTQ5R1narJw2p
W824Z4sZSgx3objpPnQe2TFJU9MLgvSGXkZkLiK2WQpx6FnzZ1BnReJVzAlrn5t9HvByLegrX4Sd
P9xiD5n7gf4LMmSNy/4RC8ZIzYl9Y3bwRo43YUJ/4YV8MKdM9l7fN0XXMkWn55Tbrqe4sy7Nw3YQ
gCA9+71P+GlciF/CoiA2e0UrbKG1jlqPZX6/ZZKG9SPwHEu+Z/HOaphLCvI25JsQfWo78KWCOQBk
yNce7RopjPOIMmKkH9GZ6yT0p/BudzC0V0Jk7fHF4X/kEBz3RY9oUB2PvnGSXt61aRJktciZOEM0
Gs29yxO5nWVEQnS7NsH14oKjJyv+x+wDmfYCy79NicsmbiNW4NUEHc9w4JgqImf1ZYzhisSUSltE
NrXXdVI6KlcT1FAf2Xyplt6YrTRo8yxpqAQidxLpEJnDRv8LHPO16kusVFm5dJTT5Ze3tNRxrGZw
OCKDp+lyQ7P1DMuMD1XjaBbUvhrW8n2xFQBXWTR2erRJrFgf9hBntjR4IJRLUAeoSO/x60436S92
8v1XbOI63RQNo9qAEE66XbrBd2cTS3KEuYrXhJoxmsbO2w4fMYY7vcu7e9q8jUdd8PN3FJFmFJtQ
q940w3v0ptK/9j1N0L77izdEYG+CLy1mKzTJLjc66gY9Ss+DH9iB1NorcqyHbLKc2JdEPeudO1+R
WnE8liStDQwBJVJ+zP+yRJuUAq6lIjUBqzazArImJM1/k6NdSSZ8a5/VRKb29AcbBF5lwqKtapgz
cQ/oiYeEeD8OSSoV7Sb06tGATE7AVVjUmlKsk72OHyTv/HwxVA5YliaDpDVFZD/Xf9kwUI4sUgj+
9Qsp5CCHFSCtjDAXLUVA/GtwPJTWVPQ4rrX/ZARo6CLAxRrcDxYEi8X1kb6o9g1BRt+oeslfvj/l
acjgaahjCsakqSPT9mbOeg39LJJ9B7SgiJyLv/B3nBZTPZ9VeWDG+T4uY2Frj7KDafZ3T20QETPG
xn9tzZkUDS7ivT9tjputl6tqIUhriviF+O+fwLLQsB+GEKFnWH+fr/f6gZ8Jn949ULg2X/ALXbB3
C+iOLFVvExvodsNhFBbCIEn5Y45yA2Tp5I7XoClVS48zeiGFn6ul6MJvBZP83Tr6y83lYSzKCCou
rdMJ6kJXXQ0v5QUDUGXSqlgPagAl2JHu+IEh0lWLmoN4d0bpL9z9AjbSM1iRchqEBINW4fph1BZc
+LnuVmM4fQk3jKtQZXHCajdsrkdfzgvSi8apvU1kLo39vyAMYOV6MVo4J4375JdQbyn+6I74plsB
ZYRrj8UJMGmAebbRT6o2yOmK4BlzV8rnvgKiul77YYcW837qk70vofmGlge/QJPiupgb988es6Mc
/IT/oeJA+laHfD4KrQ+PsJ/7fNX4RbJEp7PRKkumeiHLVYXgtobcTal7Wj/yQOmRxMzsMdnXds5p
25z6X4PgGhIda1+UZHpbW4cbIQ/ZUrh4CmwZiAO3ETjn5mjzSr9KHREtOMcF0MAPEC6U+riDJTz7
wVlwNAXXPRUP0GQ/S6catIUwcdRmesiLkhiugB0DTK+3hYVNJncgIYvADoI810fhGqxLFpZTl7QF
t03wk8vn/xt2yqGnoHHOuG9KhNbk1d99dnaeAFRfhgQssRsAXGuk6BZLMPk8yfBrH2c/TrF9+CVP
FfUilYbxL/H+FOLHH/HO9RqKoo0lYf2ywF4/Ixv2+qeZxuxPjP1jQex+IjNtjRmMywhs/nTTCXFu
JQ8kZh5VDUr3vPcWA42uzcPRPM7tlUAtZf3Th9ViaeH92wvFGZvI7aDMeITyY7OL7l4Qtat3Idkb
ShS0X2GAd6ZdRmaWdZYnp6cnzeKOvpGaYRo1FHqYOpDo6X55L2YPcrgsoRUCs/XdOXJQr7leoAO9
Rk8ZuihgMzDjZzCQHvnCd+/3dEbhAcoBGqPGCgToZD6nNCJPSKA7rZxlFl12orDZq5zfAp2ZpHH1
JWmbyqGU2uo8Sk0IanTQz/BhAR3NKIWnnpBLETIfiOhxjcyGoQDBOj3sxJSRxFhz0J2NtkKgua/2
WjK+/lMWDpmdQUtODAdgwMfyBZZzkq4DK+1sKUGCD5b3Edn8mbGfvmHWfqCQEyF1xQ98S/G/HJYw
VwuG614Dv9XvbyW+3jLJw8F8tNAN2c9KpOaqm2TbemxlW6CY+XYu3rmYJXyXy5AZyWPCDZGjvX4N
mMZGTx3XnHBK3KRNwdA+ju52kJG12wec0srzKM0eJmdEuq0eDLYPw6YjrEuwHjMlnR5nQW5LnsGW
JkFw0HyPoMi+hDD6ztRJq/daBPkHPMYvx20O+XG6Q5GI4dtWMxkeRPlMRdKiWa/IHd68Ryo3Rl3q
yXhF5ouDnzIQJNq9wB2H62ccpc2iBPJ7NqwMFvxUKiWQMB1o6Qeki1uS731HOxm4n+Dy7rnlCo+/
HXEh6zH5/LLUDtZo0jgKlqL2NgUIgsFAsS5ur2JQQvDk9yHcOGAf2aR6JHUv7zhHYJSnyxe27VxL
AySdaUoXGDPUL/ecnJyFVhHGuUO12iVAB7Pwdnn7Gw5MmtDls/5u3gtVJ50zJ8MwiDaENSNsdGqS
OOb0nY8f+iZ+fA28WsQgrA7+Iw6sLHHMlBRcXr3dc5L583faBp3APyhIk/uz0U0KnIUQFBBvmq/S
ET08l+yfQXuz0b2yeMJ1qn+j4QG6pi6j4I3pnPxL8QoExwOvXigWiTlH0vAfammDb/K/JwhtgC9o
jBsCIKCixPK+9jMxjPBpNX9F5DVcft5XWSceSyQn/MK8v6E4rj5/s7bqSJhcNCe06CQxeCWwLSjQ
ouBxVuq1jgACTY2SL5JHR/AdTvkTvu1/bQXPtUwrR57PlAVuuzRRjG5twwd+WMKo1drtEDdCnHRt
5Gk20hBi77xykvIbkvqP0BqQubeL/tjuOi9B71RGUDseKZ2jgGu8XzbuamAt3fttEWUsjek1wSg4
yUHAxhQ00kwpwuX5HzoKpzU/A+r9FzFMsVBRMveqWWky4IXGEbzT0k+GgOipQdlB6n8aITlooRxa
b4QCFN8oTyn66kJZGmsK/Q/i3QP+YxDV2AP+99zwFRf/WXDh98kuN3wLl2V8Hnt/ryYuUA+rlJSS
UCkXL+qQZmcDsSGNs3FwJt+C3pOwJsYxZPNlxqcHugD9W07/ZIceUnFwkMud7mHtRKIo7ooCNVFg
k744iGboL3W9R0k4qmZOX9L6IC9ijCBVu4falGWzhWN8wdWNOuq/5Oyt71A8KXmGqhd6l/LHGXvP
CfGAiicIevS7as5vT4d8erUcRaBpOg3MJXUuPVv8tztAvvFOtKPM5e/I6sCgMVtJZDXxKhgZxRVF
DgOf7NptwfuozQJaLwXA/7JujGMIfji3auyTeSoWun7AApycfcnvu9MWHeDHaHYSfKfKd4zhiNvF
e1VV2q2zzNpIrORaQyfyNihDM2jnRvgPSdrB+OCfBSg+gQTSJzo346hCGDoTBgdgBbAC0a39UyFK
j3cx0bGdn0LToDaX6im43ED0MOn0WvaKAM/BnNuUfKkNXBhOcsXQQj4wmEKxK7EjmzR7X17EWojO
UnQH7lVETihuHtMzcdb/yLMl3Cd9Dv4ZJBtEqqgZKANQMr9v8kOPkgbRha50Y6i+KD8gScbgT0Xr
2jE64zqdSiX2INrj2t/0/P1lOtRBoL5IfbZIQs4zU3JO3l8A4j03/HIBtGpQ1lwHDzgoF2TecHaU
BuzHYAt3AxCa1YOvqv3N+URYE0KJXcT1eueyYq1jepNeKpehPI8PIFbsPKyx5aWOwHHwAULL6hme
kLEGOiY25UInhGt243n8ucUNgoyVXeAFfGv9K1nx7h3UPdZpLm0ebKd8kla+eCKFiLEmGbHwn8KF
DHsitsiwu+vOLR2xhsyUJ5pon0AXgve8Jgwv6bXVSg+UN7SIn52Z0InU81aKXTPEbrQA8mxTwlUN
bO7px5/13FJo9gs+up1O72P5LwDpf5WG/wQdfEjok5LCjyCzVWebHjOEB6QDJko8PD+wZ3G6jEeC
cw2CUHtVxgLTLz2yB2vwLO/gnFsL6SVEMbGQhxroo7hNe1tekL4jLSHkdkCITfyN2xc1v1rVYiWU
MC2Ei6LZ/8znSbnMmzgMTh5HhsIVy7l+H7Zd7LFF3eMP8b/c2DiNu/juok8zuYhZTSIk/90VvaDV
8J6VNhWmn/5m6dpBT8pg6oPPeSDks6+85MOoLdd8nmnHdiW4aeshtDpQw9lie6Sd0fqomz2gcSJt
Ywyt7z90icJJ5M56vKGhqzVG2kTiVqL5GvC7PwMKmR73/bf9i97/QiorOmzstkcnHFw+vJtP5YEP
JlRDCHcV/kM3CqE0K/212q1d0ltpRM64ZGmcDdrJyyA2Uj2d8YzvDEuWh/7jeS4EV7kMIbEcLb9F
DJvag1nUVYn+NJCBplicLTX7Pi+4DKwbgtVFsblZn6GbprvouGgt2z/tmBFpaZ7izpNbau54KLhf
Qh2568Hjpmp9jA4n5BfdOmtVmgLj3u0bSnqu6lilMUXKCL0/t6bct0F9E5581L0GvYVDQ7XAiwVN
BwwaubEn7TWDEOtclJkwkfC9BBQmSEn8aBOplGuWLFNKjfxSBUeQKLF6sW1zfHtO8I9YnGGh4nz5
Emz5+z9JaLGkrZTBKw38Bhtvfzq+3N9IrzezUKZiHxzIufQ34tMN2Gsm3b9530ywAXqP/198CAfT
NMmXphH7WHZGZtZxXpfN9Ikb9TrHMqDgaucOGh5/oRLmkQwolAS6QIuDvoKLf1EUPC3KdDYI5FDC
0/kAQ5BWzrS+/MDlR5YWJp2UC1qlpdgRpgjc1XtaD/ozuRFYqexI6Ml4SRF4ukkf+BxmXIEoJUnh
FGVvfMOSzuBzBwCppYxO6a2rZld7a0N49cdISreTmK0EPlTVBY+m06ChsuGSiPWIl2IcXFlbos76
JC0vPhVCS+nC5S4ltmJgy9Hydk1Xs58h4CExznVjd6Ac/dzDuoi8oDLqybgnnSOaHdFxDXzfzJf/
CbRgfLaXRTScHJ9jAcHJ19FApTtuZQz7Y62nYSxyyPlcfW7iMtiEsKUMfNVpcdqe5fvqo/4EvPwM
2zd9E9fMGwa0o/w2W4ymCW97TTJTzXt6vUr6YorjLXNri1Z9n2kAnszGoRACFjGSvDAdkeJHjycm
dhCeQ0AB3AkxK9fHfW99aN344uSrdpud1kxbyMScwFn9O2wOFBevH7IvZRcDOehZIePER53hK4MU
BMgIwMF3oNMCwLP5pEgz9fgY3ECJ184ObmZ5yVHkJC1miJ87UHfJpa2TV/SP1V60+O6zAv9XXxMz
+quHf89sttD2NGd123GBX4wFLr0DngLDVXl73AdS8VNHjKsSQl2Xioe/Ia9zmsCMt/g/CWd3nFck
x6dOfVcRHGbbxmkHJJ9+nu4wnKDFkCX96dT18GUC/mYKSsjNDu3hV7wFXXGlkWHpx9dIklD2H4hs
eukWvSiNojUlyTFkCGqLVQF6UCLzDScSu5h9g2PaUoO5c0b8pXMPyfTEci5zP0O2OP1e0CU+PuLI
+I/9hmwWzCDIMhOjBVIqf+fNJ7U/8hy9z6omMIr3DJhRexkLamW1GShqpN1gESnQP7wzrIXO+/1T
SxYP0mU+rx3/4LaPhshrMsegEwXvp9zzDbsM+OcYh0H+GIna+eAE/6fcSdlhsfqS2NwqBvkp+I5W
lZdCssmuietqqhKkRIltjyQatySo+OCBuTxckBlhGdATwMyuopUjfDyxlO2NlLsmdnQO1h0o4lEz
g/TibusNGW8ONlAfM0EObuY+nD4thSQO7mpYO8KaustG5S2U9PPoLge2+TiU/wh5A09xZHdwdVC3
cH0ZdkMd0/BIuBETxg8bOem6PgI886f1FZ3A4ep5lITnPeVB/UGdthrNblkMpzBSL3xlhhv7hVUG
pUzhtHlgBu2j4xzZUMmDT9P/enXWQN3EgJ+Wi40NUkH10/3B3msLKv0tkU9Dr7kpnq2zPlDr82Iv
ExTdHpN/LZunXI42IpYDm7lBKk3MmrvMnA7Dt+xCR+RPY7Vbsc6BD/1/eRIsRTeJC53Snd/YAiBz
+9SVd3DhPOhm66guHyFtF59aYlC0Sg/0+CNUCwWbIYV1aHahRDFI3fzHb80Q0CDbpsfo2gjTg9AJ
mnfLkdVnGneS9/tBlIkaaiqZkttukmWkK9Jqy/5QGvQKaWU2hDdL3R2SmReEY0lhZabpC3B6kIL8
nwSjAINM+RjwIhZWigzPwz2ECpn+usNBQY3VjlqzGDQC6xyL1TqulXsuRO5qhUhakMnjnv03nQ+0
g0nBUVa4NymfhtJvs34xVFswwUIa8i3Y3dbYPShpsj9MNKmRAaAXbgo2eltKePqHI1tP4KwBFRBw
D9GLCPhtak+X6KI2WmkLGpyBFJFd+nOr7cuAf15cL9fzRtBs94XOfmPrA78DSqdIVj8Kx5kaj2YR
e9aTUNXZ0rxA4YRYP7FSVSoq+uUi1zZfgdl7tgtCSXZJuE2jBy8GvD9gLQOR3FX3T8wOf+5iFzba
1itSruKUTtn5tNmNi/vN0X3CsgjZYt0AqrjL6DAKXQrzVA9OtD89I7W0fzrai2gZRzQ9OORpJzEe
SNkACQg3+kkJN5k4fivN8EguX40C9gO7PFaoICZ2xkklz0IscJtsrFwl3324NMCF12G8vqQ8G3XQ
K3RpiPwUmeysZK1hPzEvsiBx3d8ky0yU/dcO4ZVQz26vppYHTElwONsLmxupgjcf7uvg4Zlyhvhn
KXCqwAchuxfgYjtbBBBwiH0nFekdWjT8o8LZIItjn24QeTWcA2NHc9ZGqj1DwGCFj+sOep74j3Qs
Y/UYoeBYZ64tVCMSPH58P2wa/uOfJZNZx7aoj0yOe6wojMPFoNacmd4pMd++/JCg8MYtwMKYXKiG
5DmfY0BpypYftPQN5iB6oGCmBZxwdMFq5566gcBAx87mllEBSeXOl0K0bIj3OBpPcd/+7hwwiTkm
MRgDpW3ddgbDBG+q4QVmVMNC2b1Q64oyZHWdYq40Sd/fFRITg4QHz1XwqwKEJ7Na0Et/oiY16oOX
1/WxH6duuBrz4a01hnQ0cVkoH016BPYAqyIy73VfOQP8zSZT9cpfocscSk+qmqD1QLAcYDw5EMtl
jDHd+bnb7KRKwjy175CXMO3vVvjq8wJoiJJPuZABo1cb99l7KbQg9CTVZ1ISQabz7PAnL4CC5RbH
0AsLChXN/xvEo07/LIvJDWi8adjE0XFBfpJMorE/mYVyEN73D0c3hyRzX06KY4rShR/QIjFNgaut
G1b94xXFPzC2DR2bWPCuKr63PI91lyiOPfoBPIOTMmMkSv4DJY0hlHZ5JqTEWvMLsFonvX5h4w0y
8pKIf5njjUlpnOqsPACrnNJEhJkPiqQxHVwJFGJn5tpAgxSP14SK5DzvCXfG6Faf0F4y4IRGb3kJ
86zhAgd/P1qevoylkGi7MhTerXB06zRzIQDCbIm8dPR/zEtLJHMx1DyPRLr99PiBZfL0YTd3Q7ix
AGACmCtDR/afPogfeYBz1JncOI8gTby+inbuj6xRHNTlqvdbsDSKgTcYrnP95n7KJ/R3mmalpa9X
N4lgBDGAh5LUa3RwrhGNtafjA+1a26zE4Ec3Ca40jnUVjl7tmIF7bl1nPJuJdoAi0p8rY11AubcX
MtYbKhpQvVd+oXUU5WnxgYj4pql5tyV7tfXXNSRXG9dP0IcoYaiOUe97eV6h3HvmX5N+4SbwGp7c
WBXN/C8oEAu/9Jy2tVMWDQJGqCX8iZ4+UGqYeK3ZStgEU2k1AALPbckPukC77DW9IV1zoMocXgso
5O/xsGCv3HCMC9uESIUNjffBNNjHtVy9Ag238t+K6MDsDth9C4U8V5D0pw47XuimW3SrjzkUeRrm
B5CiNjvFuE5K3aX0j+bnfA2vJxz2/bI2TYSJioMxURz6Z5q3kfFJEIZdhKrClzmU+UnNMKsXBHoj
pM/XtAKcBrFDUwKrMN6Bw18uLgGvef0tJXsSZhQustCHrGCjmouo3kwVVGxNCc+upx2VeLhL1xwY
ifc5fdgt9rXNgiELXkARoPdezD5D/OFWw8ut9g1VarpNujD3zjQBO/AJgDttGh62cACUnJK2OkCl
o/tt8OjLshS2AuIMWmmJFcobO5mRrVIJHe3wPOlS/xQMq65O8/imE5jFxTndzx2NZMVTLkWGrFE1
e6cHWJDgUdajAAZ6R8z/RuNEUD+EGejKMcCxjkQqZgp5WICGNNbKHGb3+MNqikZ1UQh1JFwL3NOm
yjSb8WkZ9F+T0XYAI2NO3lZnwqFcBM3Gj/Cm/kWqUiLmTczocglNe98hnKOMJmII2sM4Jy8W9hGu
W24Fi+lg5nWMuOFtIdhIWSo9oxTTYWdrC8UX8s3thF1074cjKYYrcfuhT8Ze7icHA0l8pkquxEGz
Pxwhe3CWmFhLfvAYDecX0eojU3a9dOqp93RKb+8RC3sIGGxyYsebnKbf/ccX/JWxJ0Pa9ObiKvvQ
8HRlwMuPDTE1dBKVEnxVUqYcsY0OL6M1AwjyWBzVAErrhTAV8sbN9dnTiud/rxYY/NjjW3y7BCqh
Id31fpDm9ECLwPhcJYfZVOSVRmSVDNGTSb4pMXKivqrusQ68silfJAJ8gj7B9i4FAzY7KO1Oxyut
OyHYRXWw9ps5tt6ooSeZLbygBtpbjG+2JAgBR3xNUqiqchOFnHSXIBjQu3NIo/1zwz7NieFgOm7F
6O5+PGtpYJIiKvwWU4L5YDmCpCVxR7qG0Apxtqvfz84JsymxLKPZhH9JRS9S3PjtTc9XwZZivyUB
ocWeyZnuNKZgVIbcNSsbnebc3DDGpiZIx0XBRshf2QLT8zwPqM2SozNU/+8Mglou5rxonYyJ3Xh7
syJ7BT65VJTV5S+5aLrBYUxJ/HMCkjjwc6WeQZPDPLQPlt/3yl0PLsBta6QdQZMin9EI2ooKBVA9
ekYBGtYIT8W7HGzCfSGog3jylKupdtunhp2564ZcARy2ur+sO0U+EcgrlNHmDpyYEohoKulLbJ1l
EWD5i5+Iol8r5jYsTxr+1iRS5pmin72/5MsT6m5jAl0Wp0Q3AcLWKzR8fG6XmilWDBJivKP3TPOZ
UML83J5dYrL+YxsgpDEGAGTP3XOGmKXpYglELf0thIsiFrp7UC+Wo+RaL1+Ec6gfzUHHadjLTwBo
5wOnfzHo3jAoj66nC93LBo9FPMd8GKkQ2R1PQXg9UvCKCxnB/3Rkievyh+3SDFLA369iuYh53/gc
Qmfc+sHWwTdfQeVKvn5yhKnTyyMYbT5LMCdgbNFO0uzmDfAis+u+JLSa7E1S3ZsGB5Aw9/ujblQi
RgN0BQIJLEYbU6v8+r5g76pNWPP4FPTc7Z2dlWpIjsJTEait6b2ODzJxXZUl2D5W7+gLF0hDlmX5
mlJQXJHaLzoqheCoq8I4iWRSZxylmE1ggou+Y5ZwuHo5JmtbvdmOqtdjCg7tfWR582Cd8FrP7puF
Zg+W+wCITP/6WBk5+IfztFFcAF/qjFkADo9dwp0GOvU7r3+sP98Mt6mJJtNeqfEw4JAQt0JM71oN
nIHdGTwEEonxs3kKSqWgzzwSQNHx+xAFUajwx+tBEtefTjBmtv3BsFsCkFLJvAASAL1ZdXhwM440
H3PMLEpxaObMWDJ6c6XMmQy19XwrZbNzPPzPnKoMtP6sV/cyQUhmGCDOfbpHeaHbO3HIW57Xn6Cu
e01PFDurnapM+KZkP80CAuL6ZASOEY1AVdsVLI3dDItfCxkWKDa+Crj7B4HcI6NdEzq6v1zmGZiq
RSn9KLZdv4TA0l4El3tgDk4E914IP97cXQOShDknCoIjsKCF/d8Km7RZ9bZfI1IctEHmPxDoC98U
IE5euNQHJRflTuG7ws3AUcaXEmYc9rvT5+xRxrIUITlxo8vOnrdp8cWM9Ehrq204fHRLOKMeJ7Dr
WSFr77lrTcjlufAgBdMchMxzlPp+wA9w7+40nP3kbpxXHGxOyJYtE/RCpxVJm0axagnC5wT+EgiW
QBiVF/v8HEhwq8Sn55u1fQhHv+yu/9bCHzBLr0+SU+YVdhrHQ9gzQcypRBNbEmdWOubrVQu4GXHu
FMCAQcgReRLJKqPlR2e5EDupXvxtOmUmu1/ukTai7LP0FptuaJiELGTVzlZpco7efosHSO8ga6gs
gyeck7WclzkckmnRhnHfvO+ug4weQGjbDFbMZLdT1L/VWv3AeU2HfUj8zrARJ1dEkOEOqqtZ1rHo
d7MHqCBQZNwTr7LhCAggkpRsa83owBSNwaXnmmWtFtP9DfpFSQm6DrrBMtn6QL6wNTcbo9TlmzTt
xeRprKP3H9vvG9iCzx5L07OOgNNGa7HhPp3/cQqHyUmIUGx4ix3UiNTE40n1GhE63GzNLeqMUZx0
MqbPrp1GwNuRxRa7JObaH8iQc1IzfMhduLH8IcrWMpe+VH0HJ8GtAbg7JLZb24+kCX3mcSZkjQqm
0OC+Z1MeV3//5vqXCocgryOZ8slWQNKyUuzZPIhx9GqvDDpfwsjqazPpLV3CpAV5Tw9ctSHRl+aw
hCwYPuE49/qcYtaamCneIDBl4WPjKbJobK+Lh2f9eSG2UTx+ENytGNuGiC++YxJE+gp7BFXALE88
C/t+sjiIPXje8xkz48qTxNrQVINC9jJ2KoEw7ZZ7obM1ZMPEILQ7H0TIHCxOaz1NVbwugYogUVi5
sWo99XdqOkPFVAJVEZMZCaRRwmz+pRhuASVtWR008oaYZTqMYcr2bk1XpaQKMR8n/xTMuYwkQgAo
V9l5dTBukMAwSgUUInbGDwSlWxsVyzqM5bWgBe5RUZ7dpxnpSvNDXeh9dauF45ASbAVhCe23k7+u
cfdpyqDlVCmcb+KaAgtfeNSZdlXm5viw27IEjR0QNJxyQ920NhqyqizUhQ3hVcYy6NIdSXXzN0Jk
kqs3oHGVYXG0lpazwUfU+atnIVaqcN5EDcu6uc0d+/kkoUoHMrAIjH2/lzcmJ+mO1Ax0+znBVcRR
cmNch5fG6fLNKokJz2II6k4LF7zeSE/Sf+d7KahFqI96DsPBXrdr3BFIO5QpWLvHdu4j27lGh7o7
1Fkz94Pk6PzCXcBEZk87vCPzlGltxDetaFbsSEbPqqiRoF2yPzEj9rUgOc4E0sopcG4i8bw0vcHD
wEDs4XhxoxqGX58weYN7ppn068BN0Tg3hTN5XdEBGO7d9iADe8VmMcgwJ8QOP66BQe5y6lCPYK0f
lel5Cfy6f648gMzT/Goze4d4A2/486s8hjyi7b+4QR+eKu20ydt+A4X6nfHKYZtAiy/U6n+rf0kx
Hs8xHPO7ezUsA9rQsUj4BEDPO+qLtEH9Ahaw3DTDcv6stZFgMftD+8T3yRbfVYy1F2mMTSkMLrJe
US0tKRNIlg3EZiZiTaFmmUqU+CPMttcbpkWsry1VEnv0u+Nx+a23QcU44M4587D4ScAPMkI3nCjB
9ENAgMIKuvN32y/z1bgaz90+mmn9ImqeOO2VmGkDWE/BjfRTEDfsCBM10fVp7XjSC2yILL8K2HaS
Meis5cE5oRImWl5gUKdO1YPVvEjMrIFZS6pT878nDfcLB9eYNNVrBGpXo5jyDet8P1fPxiHGK+dC
POGgFgzNNS/k/b8W3nR1mRpLnCceMDpDpiJpAm4xn6e+yrmL2v7jBEQPxI296gsB8Ni9R4XJx9s0
CZrFkrG6s7WUXtdylsFnnt0AxSolzLGO7IuY6qPkK/RLTtA4ZYdRkFF6hk1O1/IldEWxqHAki1gp
o0bXclzyRmiCLM7adSyh5AP2d9VQuSprrpyr/NxrziPuAXXQNrulW8g8c8LO7hWzUP3bdjNhVMgB
eO3wv2WfmEs0tbESKqk15pioEZrgRxHUrxcDFyuf5l5+2s52ChYlrLHqAX59k85j+KXXnf5VxfJq
FH0IavbkBhKz1dwYXoX4U5TFhSwgy8JSvK2is5WIcSRWTVllHO6R6n5Qy4r9ZTyUkAfTJ53yXhPW
+2rTXOJieqzweXcdJWiYMGa+jwEVQ8piAlINe6p39xur720MJtEKvY5rqouMB7jfVmnaVOJPrH+b
Yq5c38ijFBNPoI1BhNh265LahRaM0kL61Ah+Emb4cMlKstW9fLxJzfjWWKnJn8zTXHtOB4oQ6ii5
Z04rg67qXS0NfZpJu6oah+aDRzcI6vjtrY/KNi/f07vKxYQEd1O6YPLLFkWdR4kUcPxWNb5ABjHB
xuCck/Q5T20exTfdFWKMP/h1c2Ax8oEytxjNsr8VWGFOjrCsXRFIdhc4LDHVUmNfE3QF/QOOTcYD
zqt2V5b7GTbVbjEq+xqTRvzdt0acxJb3TnWT3X4sigxHO0FsLk/epVChVKGHMQHdu8y3+tkELz1c
Xr3DXELBA6KA4J1KJBYMiifFJe0fHFALJBSSmvSe2g6DT4myWKeU+Zqm0RL+xWiO9ok274/x9rcY
VkFIf9MeBJJrdDxADaPBLQ5ysbyv2pJDhBnSL9eGRKXqQAfHiGJhIVqW17MKLeIvp/gje9JQQQ2c
iKjf9W0d9sQDOfqmT05mQHuknetodYDoPIcjS5/yhihJg/UuNWjUZU2MVqCU/kVzJXq5zvlVcBNy
IUd5Z5Q4lvz4PvMp7O75WxQEMvnnNd0OgR4Qc1xQzmV36Hr/0K8e1JEjeeMGKQv4V5ecMltP4OP2
HtUU3QF3VEuhabAPkKxeHDKQSb9DlRWGmrY8rnHHQ3vrXYVxok6ORAY3rqLh6gzi+sJD7agdkM0E
fVDJxlawA7Pka0lTpqSd0e39+t5sMcvraCi39Pd/6px2BZ3U36MkKThNmnmC33vl5bsDFvBqFpIN
li15uw2188CBrjW+kXWM+C1+tn7dD+A6E1/5u3bPazcsGJnXdk0PcuTtGu5TnWms1UIQf7iTB307
fQgB0/xApoDd5Lc3iyN/LRSNT3AEtVIRMHg+S7Lk16NZq/lVptCfyvH8Ktn9BH//6XXMz7UnpuVU
gOhQJKKUdhV+JktUEyi8zXc9/6agcft41fhAvru5oZYOQeQFgi3IbWsX4rT0sykXC7knbj5Du33j
+K4Fw301Bht/NBQtkaU9YRknYwQYonshY0vxp2n7Yyv5TaW0PGNJX8o5SaXJflNWgZ4R4YEzIn9m
T8JfG1/xl19jhx/9hoMY/bn7982xMT8hN5DpEiTB2hJWt34OMQ4pVdN0DSvVzC21JaTGP+5GhvrS
UVwd79tzYPtR+3mScQNnQ9q/+Yvl6nrTYGudeHYvTpjoqS+RF4iun6QJjHwhKeBKvs0pY8SZiNPY
/Cy4YBSScsI043n6wGamq4St0gep6hvGIpvC9DUxAD9ZSXc8N3ZHY78KgMcjeNr2EsBE2UpHKWIs
CbaMXi/mU9gQd24l22tFD4/dt4GjrGubXsn/+bASG6a0+8L6ZPKSP+hnZ1Kbk4PgNPgYvIFiy5PL
ti56CFVFn55tslN0ZKwUQFlMBqB+8lh7iRb+gw9fKL80TZlge9H1DOAA1QvPnDIbc/blhdE+vp+7
wRPNgCDYHcORDuvKftk7Z2qpiuWimnPiito/loDBEAmkD29qEImKSsIz+XnmlMSBnEF8rp/mcM6N
h0tlQdKT8wEY9C0AH7dRf5GxHcdXOhWi4UKTW7Y57OGTmjinQnkW9mS4F2pQ15O8hz5N39JTf7Rk
mOGz985QHczsbLIrtTJ4vnAKsqLUp/EHED9e6IzFGsxm7JHiwfUpQcKGvwIc8e/vD7CYHse9wUeJ
hqwaW8O9t9duGrmvr6qIvizwRj+T18fvs+j4RaYL+YgkaTNomBK/AD57hPh89cr0nikZV/7ueCeX
NMWJeB3t/QZtWrpKbLH9Hy+FYW4vgM0Wt+RZaeSF8xbNI/5mqNnBY1GtnxnyXEqLpi+a2NniB6YK
pWec8UZ1kwMPM0OGANJyzIphjZET0RmHBe+oRgR8lGVEkFaV/YgHLf62fYMRB8yCL138OIntefAI
eUd/kg+FtN3jjLVf9s9w8aTXPEqhugriYQMKtYPaXLjwY469XU3UlUO3DoGWfF/gvJ4v0lDbKmAD
uwJbLvWUP1lW3LDHUta+ouhzF8XKdV0ze7VcUO7G1u8ibtpLX7wD98TSh9fipUHB4IGkc8W70Szr
887RLvG8Jur+bvatn5gCBibnR3cJTX3tamZ5Ge0NIsb7rfbaTUdRweeCo/ajC216AN0hmMp5Wvzd
+jox/l/ezj1TevycAFZhOKl+Seoa/u7e+Fj6ExeZADDY/4YXa3jaMd6Lcnp0gMnfyxxIduaRqTC4
tWp/PBl5e4qubDCTRTtRkW0sgX6Dv0DMDSkLkqH1oU6ls/0bYYQ1WcRzyePjQvr/nVoWJ/foTFTa
mJEpYfH8ETHgPjc1Pozc553iktbXCVGVjfRkByzZxjodAJyO0iut5B6o2qv8z9Wi23gNdX9HxkA1
QJvGfRGkwh7xRAy3iKpBnLKlXVZ6TP74lfROMM98Z9AlicLbIZrspQoXwfyf8cMfLDncVLX6E2gA
qjcBquCM/qEFX3KIgFv5lUP6APDsxBG0XsU1zgbUc+Dq+pecWVhaD0n9bONfdzBUVFf3l3KvjUo8
9si5CT6mBrI0vA5V6/S4qqdC5BAr25ItNB2cCJNn3jahPXixherSTtOsgr7bFe3wKewilsq5qD8P
Ylw5JGAObpq+H3jRVbViBp+f6fU8MT6UEpYaaTg5UVGYQ0vGM48qFTzdWzVPpY5dIm7ULaeSNeH+
iR1l7XEKmTECAw0WV2lzKQmSVrXt+aiZxYek2Ne9LKp9UORRJ82r7iNN4YDLbv8yObmOgkMlD5Mx
i3eQiy6M1w1UPI2FjeHW4qqXy1c8KCZbVhiploqdOIRB/cDP0EaJwWVlZFVYO4zoJnwxzFzEA3nd
938RJuUKIzFXn8M/Qn29F8ZUGmWJk2NyPRw173Pt9x9cVp99XX/QfNJhcX/sii2RURIXMKEK4xt0
fEKfO02QkwmOeIghiP1Pf0drWHDfSU8HPacmNEGl8KKIltZg8FQgxh4QjQs1eCcSTtx9QrRGTJPR
iMt+asAKs/8RhmolF1GYqdS/dE1rF235j4YyfqdOZnQ1qVqTy+8LI7ewO9FmiwychKNj/yGW08rU
vXL/nndthUD+QV/Cpced3UrwXm2Zuw2jo8wfL9c7gNRxK2CrrWRhfeJIntEe/PzUfDeo410JDApD
S2BwXRBeGOAtw2tSE/3vZU8McAeOwBwyNG/0OdufYhw9yBnv1hPyFDNWFUjP3RNndBkvFmIV/+r2
XF76p0TqAW4PJpAELrdj7YBRZeGU7FRSGr5m1s9k7Qx3IPQSp87QBNxhMW//P0IV17K8aEY+pcd1
tTM2gN+xT6+MnSGLHsQOwR51MwYy8ygh5rZSKB/TuyqNrHKSHhKY+rvHuPuS0jX+UPUol0HhxneO
t5SFesdvAUt/aBloqZUCD6uyhl5SIPQjhyFT8NO7KM8KYBA3GNOQ9CcjfUq0ESJfrbzM3LIzVatg
e4gMgmcDGCH3dj/Z1Zk0vBLMRAY8j7Dlf6l/Q6BKcKHttUE1aJNoyQ+AuYuAIbNqTQ38fNbYmwKV
yetLEgldOwf1/uQ+Jc/27OTF3DReHB+sP1ca3dUFKe2+YXlpkO8+jWYm5/FVLzFdUBnu+/1O1zNt
uX392gyjnseB+NsmdqeD5B/qc3GvC19WJmH0rL/aYxZP78xguf4bw8GOag0Fc3uNvPfg5A1Fw8mw
mffAtFtUU0TH442VlkgNBAYMBiON6J5X9Ias9xjDEITjpj6PtXFpCQvP9VSCNOXPfCpgKs3VmxCT
tCTbjDYKVFeq43TX2Tgj0hVHfkKvCNAa/UGwVeVVwS+LIDhfVPDSyyQ0o33s0J/8eJmAJYCbZXI1
t9uxAfZYJhdpGF/aHfFcpv0JvahRg5remaKxPQrCTWnE7PPKPQ+rMOGzXQVb69oPTRZAtJxLqVzG
2oyo+IiubZ0DxZre/qmGyhxQKlPEvJE2aItlZlZsL1Tpg9T5nnjzK4ARhrnJCnlkeZ4WRJjhF0gN
vfY43NhSRADoixT+IIPov4HkYi7J30zMQlqqObfOELtsNIi1U2X5uhKzbNz04jBjdLp9NK/Um6mC
t+Kjp0b5cxZXzjFYP6/3EBmZ8eX9L2wcVeRw/LVKFqjF7LOCnMhHN1+xe3jnmtqOIxslLLVEV7Np
3PDvaASYQCecy2bp7+juBmrRUvdZ5ZVGBIYw4eT5UcB0canacTlW3OdwM9lwNaoo8iqX1aH0KQU3
0qFyx/teYWTUvNuRmbcxrR0/P/gmuV9uDKunPRaH+0OHC1j+BIVQRlc6QoKRc0LN0LO7ZdEVQsLI
oQQE9YXmEkksHZ4dNlzRM/4pwRJejs98FZB/SkmAwyF2/gktS7r04swM2Bw6MX+oeY11vIHKOLtm
daT9HDScrgURFbL3fuJtohOnRuUxnR+JX3nnyBP0OCwX5qN2puY7U5DmgBdS7dlxxcnRrhPS4q/5
3NyQ7QnG8ZTRRtYKmzJ5ZnxKohpXP7pOv6tZ7GujD/WCknjE6VXuG7PzmMN3dyPb4hnwFEFcGg2K
29CPI7aaO4cnT8gIJerXhoIAd59pFDr6KoOoea0CJCJsrOiXijmnCjCrLlExtP2apnDG3tu1Zo+q
yHe7Z0JTtoNnjxN+VRV6YA87M1Xq7v8JRpaqp/Tgd3CWPjRP6fYL3bslUZydnEk3mJIFw2zvo2sG
V8cx2MdlraTVlp0F7ROmpGsEkZ8PBq4r7o3gok7ZcdKnl7b+f7HGg0LIWyCYzfxd57JKbb/IFADR
u7cws0fO+x5D1HsSqFBa1wQ68t4dQGFmaz+N7fuR1n2su6w5hAdgOUZAzSTvP+1ALwkEy3+8OUoc
OANzkG68dz1pI4YoDtIfg/CzfUGtVbrPQySY2tJ5v/vQjRICJ6kl6fmMx6LrKylEzYIFl5i+nQxn
7Dl6bqdiA6y5kmUsfaz7wzsDpnVBCbj+mJViy+KlmzSNNTEjDS+/xPb4WwKOQE22iwNWwCUcGMyS
NQqtOCtmf1NPB77WrYnhUZzoJRBd/ehJnr9JhW5ZxkgS3AtY8ytgyyIqZDI4fTyxmBtoO5IxdSxg
0JT+pkgL4p+xq4EBvy2N0fXUlWadDEgk5sNcJzXlJ3i/4NQTAYkUYmsCo17yDs4Zwmqi8kIFdbdH
zD18JGUTuaI3VBmgKc8kXxhjT7GsETjc80qL8pvRU6/CyJXqZiI0a6fSCgJWt9b5L++XWfKXg6+x
Giz29NsTNXmqqwDDPyVqssgx3cP/vjNMRpuQP2xCC+Qs1d8vAr8WF59aEvF/uYYRcMREMt6vlUUg
ZAXya4D6GIOIPzFY6VbzgJPwDCA4dVwqEqlUcZYmhr2QPhAMR/pBtufTkS6dhgfhyvDAzJ6wGigy
DY0zvYlICnm6J97fyZtwA+dDI1pbyBp4tobAJMUllERACs9guo5+cSmAnqiqRnwsWTuJhIW+PsBn
NRQ2+uyX1czlkF4A8XJardPlAfUdcX33q51p5hEazIOvARIjkRvnt9QuG4NjWg1oKuXTvwxO0peo
ZhZ0E9QiBRplkCDGeM1Kyh1UsVUcHI5Gh67ymzeWTE8ZgMn00jcIsZbaRQZYdnO8A+DSM8qz6naO
29rqJk/X3cGDxbLwGZkDJsPE34iwykIE3Jxw4JL2RpUT3Id10FUjUnJugwnNS52T5Fk5RcH1ur4N
i336yN3musw2CTMVjXGhYxPFfIhAPQaZ5kwi8x/23UbYyu1W21LHdP2lWVICf+/z5kRvMx2gzGtJ
v4cD7P2NrTOR6Fn4zzyq3f56Hw77wS9HKYs5OG2xjxq1gtamJjLr9K5RgmNlCgbxorYdBc4EELW4
q5zezRFncuIN+zjQBpVNpGaMfnDTcaH27nuop+yIxmANsuzMbRCntIb3iYmiUHAcr98oj7Wl2fcz
BChQuUeZda1naBmxxyWdozH5/Wu8IhFXC1La7rNmXd6RrVzfeRFArrvElBuz9u79DIpxTsrkVDN2
+Vz4cEjzUxCLbNggh2oIVNh6TPjkGncxepdCH+fTVdKx66NIWuhKAzw3F/6Wx1hzRoJ/lIiyeqCB
ZJWOEPNDDER9hOAuc+6nL70lWDHi0m3YPoaKSH9Avw6pETG91hVvSgRKy9vuAelJIxmkgtsZY/B8
AderU9+sepu/hJENGr9z+i64dUpRSek0TRs1sznCnZ14ZgK6BKniSY9av2pktOm10uFu1azZJABF
pXUTcoDdK8LbCYGi7RJv0nenfe2q0DeR2woXW+Asv2B+OKdJT7ECiOeIiuvqfsqi4y7E2BCQ1+Ra
GrpXBPt0K3xpPogCDm99UsOKwacZ5+WqfNGcNVKEndltaSap8LIsutusmBCqbkWOfzXms9icV8cH
Aot5SSvTnyphUKm3nMzDOC7mLqbsYDuZOkl2LchPJkNgQmQ01uwg67sNzhkIiUzmIKkNe512RJCU
a6+5AZTMrzy7rFCxC3vMJ/+lbxzrddkYS8gHNWFWBOtjaPO+9BUBGITQMLPLcU45dFrs5W3EJto7
CYNs+z6aItdheFkLCimMvnG7/yvNwkvYLHr9HRPN7fh55IG82BhtkNbsUubAzqcKIeQ+yqeHH7J2
GeFKnkxFnfT/7s9GRmoAaj0ToIPHsuXOUMuOQfnL8vOrYpfnoj0S1MJOcfDYEb/FvXoEYqUzM1DF
t4Xu8QClMcLHgVadVfN7mN3OPdulkkw+eYbYcXhIDVowZaXkX0g1M0+b0UQWVd3VXb60OLWAGVe5
CH5GA/nrtKPwf8ci5K57f92eVv5qyMMt6IN3MqP+6hT5+4uqBI3XqI0tTYMMm6VWJFqtPxYXu6jZ
c+6Ij/VwK/iT17Odq+BZgUo39pbP6/2BWZK/HkNo0r+e/SnNIxtFfoGZDGnJbopi20rhwsXenPXz
HgR5C6jvJphf1F84RyXk0vmYeWFZmsL9RlaA21N+D2VsZClBmQON69Iv2gr7FW2zn4zbLWyKL/4F
OblWV+wCcxtEDfwNlqTDJ403mjaelvUWYTTV+fuc+wJwk4Cc2e92vN3MqMwEdnIe/q/UBZhD/CFa
5LERBcoy37NXfI4pKQ85ltggOff758z5ovAPCepJFFHu6HIZ8pNM3lauvKy+6o2fGMQtEz+DFlFQ
sRFwhdr0OifgWaH6dH7w5T3YDBOIAaLTqTP7EucFw+X7uBo/I74b35U+Yq1gh7QL6GOjfLbPKsym
NuFMReVXYjLqlpZH4PxO5Al7QuOeu8/10CGhte97JZDbElDdq7BdLB+r3n86rZ+hznm+A+ThOgHx
2IOoXj6y9khdTQR9llfOhHwaeOPhSlJOgajQGzg0bGEMqqPYwt/7NEjWI9V8ljMBtdjgUQwsq7rb
JuX7XrVCqScLPouPhgggm0lV7s1CjCymJHeS4dVqGQoowSVpsRzpatGVD3Nvazxrd/HNnGgS8Yzk
hTIosbF2klAvjgRqAa76DyMlF+59NOlWxZc9WuokIdICazhE2oZ8ce94GRdbY5skOAiZ+f0tzbBV
DfTdc3vEsUPCWD0zclALiAYL8jtTy6UdjnCIUhy9mGP2kmPMckEnIPgmzni6x5hFvAqx94uZO0HG
OOcDWnHSS3NEnZumq9vJLB+0lEzAhmnjpehK+bd0XL5wmdXU0F8/Z2TTFwEtYWm+4Hco5q1OriRJ
YPK3GNIbepmQKP9jZEmFY67KtFJGwwv3TNwWdAdTIdpBB/2XigBIeI14XFiGzozjKZpxFkdbizi8
02u28wTa2U2qvidZAVUG7kKD3smIZYr2DHF0mpSFiG1qb0lqJvFLqqi9IxHSdPuHbdJaPhRhQCIZ
TpEV28sbhxseG5PM/hPRcJYSqexneVK4EaR2rx4rvH10mYD4UNHOkytRDsLpejyP40GH+jdDcm8R
inlNCXUCADofNnhgQxxeBTVpU2N3EL7cNiBg8MJnoisQQREi1eoEQX56hqqN40ifQGGxlUeDxZ5M
MiI/aJBgvLFZSmOwfh2xcOQisKFZg+6JzJ/4KtwPg9c9UuXvK7KuagrsznMNj9U23SRr0+GQ0sbq
Sd7NHAgUiQMLFvIqROKxFPURLTRJr1vppMzQLpkvDrqI4WbNlDklzAK532TM9es3h/+aTDNMnuYI
HKhQdrj30gxrHGzqSp8D6vc2Qsf3LfnsyviF5kkkN15kPMKVjivBDBLIMnAvC2n5gVunffggAxKp
P9+jCgrO+vL+NdRk6RQXNtiDr/9uhufSSOFrCFJZinu37GdqBcvlgCiYBVUj1ip8VbPtWrmjlUr8
CXlL3qYuiKJFnt+xeSat3mJZurETZ2raDFjo7XKHMKNUeLiS5/HkHPK4HCOKjeDAtztg5hR/kXLj
P3Fk4i7/ntIZpj+qI7ySzRVZZKGdoHlLA14zxRUGxvAYtP0GnaedGN/6R2J10CDjN2rTT2Rb7m++
Y/Hg9Y7sTztC4Xw/OY0+6SvzgqSHcyu4Hg4sbniP72oh3uVXTSkOh9L8Dv9lAuvWuuGK0qSj41SR
oplWsToLmVBfHfSQbFEO+msRS2a8EyodLPXZ2rs/al2wMfJS4L+GVU8l2QSs0VwrpNBR4JXqT5yU
WKINQ2qJTf2qBR7OtavZo/fumBCiIUmXxO+GtXkL+Xt7H+clEo8HBZDT68tDe5FXSfG4SoBoKRCm
d0b+AYiQH8a959pR7KtSVt45yVldku4YSKL2q7HBpUKRiZjPucll/EU5DsuYE/fCJAhPopj8VeS4
N/SkNZmgQuFhwczHlFYpE5B+EB9BzugRS4b/UHYPnqeIgp/zTpBSKHdC3wFdz7J1u0B3ov/ZaiWM
IK7kHc5LdJsr6T3Ji6LQvUI/Bd3shUVHrWW/AR/lP6A0sNhrOAEIkgurvURVyACpujS25F6CNTHf
xi+kknProkl5oV2QgTcJRBQnyaJpqpWmzLpDuZySxfdHR4XISEaoUOkkCBp7bmrABbl+7fMGQZJb
D7PwDvjTw/OffLxyROSGEE0BXFRXebl/fWkJ3WRdwQh+b54dTcH2S9iwbRh5UPkOBn6ge1YzwK3y
aP5M6TiXHaDOflLr9TOBRVBnog4DhnjtKUYsSgn6k734DGHZQ/T9XBRL+Y8NvTU0MLRfFzSgxKMQ
YnUnSVXk3No8WkSYxOv5RZu11X5uDH56/lxVV6GgWLBAUz1OEhJ28GFt+Ok/FHOCGNlREgXt8/Oi
c69W61DR7iDFbOd57Oyxvno3PN5FhB9KQdVLlyWn7FPER8wRgp9lv0Iq7iFof6HRD0j3aMrF+yQs
+35YuFzgM6qimwwRWQFnzVdFMvsBuXbKT/IIsQSWs/RamX7gO2GvMQF0mq3fOIzOhaLYkWE24Rvu
rCAfQ7U5KIkd6Fm4sXPCNYYmDS3JI3EM4XjMEpU2BaMcojOPo03incR5m6J5mVkvrBFj3gBV3NBa
YX/AXet+nI3gnwS4nkTNXpvHhvXd6qY/QniJ8IaPT9H0rIjGLT3WBjnkqr2G4Jwt3BiHSaSJS2j0
o1qL3ySxOUN/AHaL9SwLqk/3T0w6LDtN5h2zT3pnyY8eKbHBIns5G1X0qrk5nIIYIPCX2rfM5+65
7xQXK1JsK17hJzdBmmFC3jaPVvleVxP7ZC5ZQMvrtRnmIgVmdNCbVOCNwubo57nU757PeyH4aW1B
K/zWvsK+YY9aeZXaiyZ4YsCIKqyTczDZU/+ofeVfeZ3sK8iIChGzsh9lJgsn3amzGo1ftCVdyK66
wmKqu68f0j7L8YGNVZar8tlxjyD6I25hH48o9Md++Fu/5dKavBOc/UIVFZyRTqlzB3zwMG2+IfnU
lVu3LCQkKD+wx1k+XwcPuky2G7r8AH7q4kQ60LD3bEDCqofY9OOosU2mw2SeYsF79TF6ARTlvR7R
2O9H2N1ZCbtgCUFSbteXvmbZuKKXKrP5IX/q1EZ4u73m7m8tkpXFiwBSpTFzPLGws/i82fpxvd2o
fPpYxjWQBteFDi54L611ia9KAbZqSXsDo3aD3EEZSMLnoAhA2qUWzC4ceqe2kJilUjfN8LjLsabp
qGMh0DUzQnZ5dpMXx+ffSfMgwKy3i4mjp6k/zI634uRcL4K3DQRvuSvUghcpSPXvXmaq+l55ZSBU
4K0nER3Z9HryDAI7p1WRStpP7ieAio3ZCDZn3Ex50JUG+y7RyEUKy3hTOVb1FkyxydvQxGL79swR
GozHiCdcg5Ry0vmAnGp1NRSlEwmvNyNryUC91m+dQ72A2JTsVvJtmRQpLmqGZDbE1eKawjZhbpF2
pEfQ5N+j7uC3tP35SYuUKCejkcs6JqXncaQnPHWKjEmYFwfWvTNguRgXt3fCpGTuU5PsRM1kRigU
fnYk15athxGKF8Pd+c+jP8vw+4RS6dSwJ4NURnsXR2PIpdD+rfxVtG+nV5ApeS0B+Vjj9NCZ0yQx
awkiFlP7GzPvw5k7XmqQDAEln06CkkGQPX1ea8KhRVUeh/MoCLXvz4i/CuKzQwKzJETW74IigC0J
mi+T4IbCzKkrRCAO3fgShqp76BJ8xbYm8h6NRtDE8pTK4moD7xYubgczff88YAICiBslpUEaByK5
StXP1yLcKeKWNVQAFlPahiJf50NnxlJvBVyZLcWpoYLnDnoznzZ9j+epvs5bEpyYLisaSnXYDz2E
bE5nXeJH1Vk/jKP3vu2jZka9gj9vvMBU3EPN6tn64k/p4CeGU4ZhHAiP1Qjgvsci31HM5fPYLz0r
memN+6MR9ycraR9L2R0uqlbE6sZZUJDfBHMivqfo1scalcR5TbMJfRWqman4HdRLeEuWoGLIKGKs
QeGmWxJqFC5eqnkj26a1II/plgwYlMRSacRn2xwJIJm+SC418zkoPRJchb5K3ubcj7pBeppHMdmB
lnUzUvajFYN49uI5rOMG7CgbIEyyxY5V6hnwNZZQWfOpVx8jk2MPXcInSnRJxBWYnNgw+f7V3lWx
RE1e2l0Yy+R3M+fkaQTBApkZLwJt6y8JWMzABmcv3tZiLNzi2fAUtR16ncl2CwZkkj8wNf4TnKC2
QiMtttmIiyz6DxtghzK8q0lrf5/NgM1tYoLzBB0dzmZmecZQcGxOAWfSXjh21T7veAGMtYKgy2J+
EvzeULSVNBfblnm6KnFwA+BTdIRL5V7LuLUHGLb5+yEMp4xH+hR0i4xjHt57nOpUyrNl6WG2yFRv
5S2N/OStvNXhGYL6mgVIdFY9U0JQyOO44P5Zi/CEGGDn7AFEA71upTYnepWk6E7/bEuOd0PsoSP0
Ae2riNj1dBtVYu0OirfVfTygwQ4720ZKFqaStHhHgq0d5+amGh7rE29MpmmlSccXU+LLwFt13RT/
XY3Ctj4N26XGyT+qJR9CTFbpP7SDqY9XzDtP4dJpN9XdWhmbUPIAybm78DgU1hMFaqzNCkbn7znn
qTw2N8gW2F71uqc/0dpI6bIGvU5/DaVGp6Kbo0MU7wm2ZmL8J2cynLURqFPZzenByXNUoC4iSbKx
jC7yPItUzdn7e5Nge4+/a3bWCeLXQAmuQip5KJ5Gf/TQx+7IYSBHR5j2VM6OVr4HO91xQbTbRcoh
hZne6GxCUcLyekxkIbX31Ga32lPr6aBpy2d0tfJhR+DeiaRN4nBdHfuOakg3emB/RuFvMgIJxIFY
CMtMFmHOLoHkMJQmnnn56RtyeOpk4xVxVU/jpTJCxsaiG2DRMrvRszpBSk9k4rvXKqzZBNj+H5hY
QfSr1ydlzgLJS/IiogfJ9//kah4xz3CbpJyf10IxfP22ofOJzj8cn3ZnHi6vyeOPGzsYH62JfqWX
C9Xb0TD902fWOCr8AY5Jp9OsMk+RQgw6/VHtjdIQYBM6UZ+zZLZAmF2m+e9m6Zl3tS3LX3Th+eni
Q89V6jI45On2+qOG/kH13D6c2VL1gVX70NpqPz55XVkxW1042Ccbmlb5y4MwXqhLIa4zTrRuKYEr
FFG/Q3gcBdkcLivcyJKyC84M5GCxlqt1tc8SdNjff1SCWcqdSXcQLb2KfKSAeR3DbwA2uyWt/jmK
v77LVHM33kJE9mst17HDhyOt/kf8E6Olh/V/xZ6WGmYWMyY/oHrvUZtTfBYzTPQi3fQTkwUYDreO
UYl7dpFaQUnBTxAi/+WQ/KSDLE3BIntSFMqwC0XyB86n2OeaM0sYdGwr2xu2945Qqv70/HC2YdbC
jvLXoTzwAHPtLZu3Oo1rZBH2zhoVMt8JhLYo55PL7mzFCaFajuaosrFpaGbn7q8IWGd+3uul8m5E
khyZLofGCbqHB5Edd1TK0kj2fqn/hJytF9LuANNp7uN9PLR30qrZiQs0DHtMYmMkTnJoK5LZyJoQ
M0zF1e0BXqg6sjmlQ5UnjhoxZ1JjeVYlwHp0ibSfwq5uErntVH0iA6qxXha1eVh+CKcAKLQp7+Nj
xQ4+vzQSxUEFwWURvaBVd9aaY3G5xLVJ7Bm7ZlLGy8n/lCVD8NirDAWFFkeljK32/pBQgEl+lQ2m
kiCcObsE7FOecl0KDQmkAxTB2CTGPlu4xpqEdw6D1/744WwJvfrJmb4AalWBbusb6dVSxx5d2c7u
VVfX22+pHxbhnQe0fKEBzlCxlUCfIwNUnHoDcBk5skBQbH5JgUq80Em3g2slURynTXRLr/sfdGos
Hzxm11SXjWroYHoJekMVslaT2yPI1YyiY2DiOV80rbV+BmQhGUd/r3O3r7gsiVCZpLppFNe0GmZR
l3407I8Kk1C6bdBSn8tVlwvdOCUD1rV/DjGo2qkOfwN2KbYXMPbHo7X0ZONaAUdaqkP+mvea3eK9
EPhVXyQuRSVCoDUUXq9r6fZ7zvB7yekVgiQRarMnoJNRAaz71TUjJgjA8yfRHSECmvGjQ1pl9ho6
MA+eVjY0DsfjutZwqYIu/Yf0SK2HaVE+45GIBfdTmZu6NN/Xg4ckCeoDx+u8vfENf7rE+zzFQKAf
XPLQctwt8Bb/IYGaEx3KCC5B2Klinq5rdo0enPYkv5p+qEH+WZILudIM3rG6jQKVLjoIsGjxUpe4
c/fyIM4FHM6OOHMyUMA3VKu+KV2m5jDBP8dFzjb3koH7NZgJn7fbF+hVc4zwQjjPXC0tu+4uyvet
BiZrGFlTXQxF15gIAvwo38mXoVxe+rzWWUc0ghgjkwnZfJdSybSl4n68gxCJ8eRc4PkmNfXkxmdT
zPIStKvwdGLHi1Jpbkr/jcM6qviWtR7lud5Atup5wLDgr5z0tsdrwVbVmyhteEY6Jfd96im4SJXr
nJ/lex3o6eRRuDTC2gzVc4uLYPVxbNsNvRKVBasFuW7Tc87CmhDpt1QeTacLkDvo0+J+dA8ip3hl
o9G/MgYwqgTs2EUvnhHifQOOr/sK6PjbTNWs2bdTikfPdLFYx+EnUS9PEZt6Dqf5MTJ+kJwv2IR4
LxfaQUO2py2+XWTrz+ABl3oJwCdZj8ucSS9EgQG7g8YJ3104c5qckPDmKh88ZX0Fnnljw/Kv3uzh
CdxWygwuHyNmNNfohmbNbRt1J8y2JjqtDVb8xzPkuj/LtjNg97uULWGYegtvoWLdq08iOkaFg7w2
hk7idEwZL0IR+xD7t9sm8hb5MTTznvWKeXmdhjEc58adAS2wFqSsv6mcObGLoFdrAO3RU2YoHohC
9ktfb4HhDUbixdLRwdPOh+BUeMoM2dZ9t9ZyzrpEbgf8l/WVwORTmKPoO0TR/XnodK/sLHJa/fE6
tH0ver+qRdusdfUFdaqPMiRi7+Igup8OG7bmnt89pNY/MO7XqP/MmS6p5HwxmpVtVs8yluGkYqpd
5CHi7wQ7Xzryb4haNJ+6mCCNtqM1LnDKoo8skea7JxIUMNWgezm1VklEtaAs2Vw/lLQZEXrUZflJ
qinSi1Ep2KqqrVNUGPjHKt8tcPOMW2Gwagv8IBDxNmOO8V0G4ETKkJZnsw7d0hSYD2X74nFEMZkT
puUfBqPVHZKc6bM0dTpUMCldvrzdus+JaYoPzMV2K0c8A5jDHRlD25kWbCNMxaFS1i4iEVUHBnaD
oSXXfhgaxkYonBrND8RBOGrnwKRT6WLJ7PMeR6bBf0j29BY2F2+ckSI+WtrCByFGl4/njcV4vlUU
tbzGX3mdvD20J7NZm3zBjej6W3yxn6kBUYfTOdROArq3VWvkSnCIhXmBY0rnqn7yepSBIQefBRm6
dGUhCF7aQpU1AFEmHv6dqUAIy6DuIEz6ZCxN90fElOkE8KZCJkEcaFj7lvje/waNYX8rBsZaCsSA
HRS5E7jCbr+NNruE2i6+xhIrfddq6Hv75gsHBGqatU6b9Mjsx48snS9yOXsBaJcYhdTeSr1wLE4P
/zrLMWbAb2DZypeXGCJe0N6KsGsOnj+Uf4nuGwugQ/KZ0D3P95qITk+hovwkwXJAelG2EUaAESyS
YTWGfebukpgnuWeQMlqxBREQ9qmH0PvdBLEc7brwVZRhRtY5FyWyqhAoiPPYE+H6yAJiVjhxCOms
LVs0sh9rwsB1APhwpaV3V+OCBG5BpzTevkKuNstOQkCcBTMM583Nu9DwikcAeUIrEfpvOlBlm07W
uHuK/unnURZv9dh3tCSftshYfnzXTz63Zk2t25o3i+W0+mNy4/vY2RPCpuQPzVOqXAoUPxXJmqEj
FtBjxw0DJAH/ebE3dvi40oS7lvkGC5ThZuXnAbMCMIiaf3MHTCf/cBeM/hIVj79jMF1NyA0EtcS6
tgHk0Vgm6RvvHoXVFP2o2j+fbMj0Lba62lTtra9Mmz+hX9W32oqZxUOyXgTsx4J5CpR8a1pkisR6
82j40AmplbEGox1MJUoYzwRkGy17/dNwUbXlq5G+GurY8OUvinvcm3ZkuV1DHaPH1Jz2zuanxm/i
blxz0fTaDMJHvxXTBzsWZMZrYRTzhEmwauTUYCt8Km1ACA/QuDJZQ9i/mJPyUCFjpgaRruGUQDca
EdoWuv0XjmsjbTxzg7/2nQwGMoLfosxk4/rjQw5eqxsqTZO1QmFOZEF1fyeOAqe3sG2mTjqVW2Np
3OVexL6BEGTDEp5/OkeVh9KnrYKJuRHfeMP/W98j5rzY9+r79lyCpJgtoU7Y1ETd+un9xrtDDeDx
AveBtysEUuzbVp7x1Ted0MjvaNNfL5OnRKN+Y9NXw84ZVuZ+A2cZ6rjmEEfKFbbA4kaU8AxoSWLI
CDeusGCjbZ21C3Xoqt9+WuV5dtiTHcOLuGrZuIFIq+7jD1ReQ/un7Lo0MBgTTpmujRkGVF8IfRhz
r6p6aHQWzGfmnLLC513oaGHrjJQ+85EVjRNaPpvo4HmPplqB/uHc+K5ZI3/ncTNmEbc98ldgSU50
eAbvh7dW65lPYAZh4HTdnH4fne4d403daZEc8GtBljGIYr7PyZqiD+p+kkRPdwSJKgmM2c9O5fkY
ArQJ65YrtfTX8IhHISxf7U3ZqIStBq/IOABu6aeok4ttFbd8JYf9eMfMpmRPp7VIHpydXxbMFT8q
xfVYLU96YI34irTiEMgWTslh5OG8bg2fefUgu0J/Rbdvcu0/1VG4sQTgFax4cIm41VBOdnk8/LKA
gmLpDLINWOI953l6n45XY0sfaX6X/ZJPoFQW1y8tZwXua1EkLjEuxfJnPWmQPokqi9avb+TPqxm6
QGzOQ6y+wEZMbJWlTkX9jd2/YMOd5HH+s7kjUcmAtuCIyn8M1Ii6uVQxmHcKJJKdGZfMdJgHn9bX
Forc2tU6vcQOuFPc3sPyk4JfWhnWRYLJicLb0t5j/t3JSjsXQ7hADZCRmABZhUPEEl7fvACg6pow
ky1yKz4HtN8=
`pragma protect end_protected
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
