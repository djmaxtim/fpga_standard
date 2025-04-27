// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Apr 21 17:12:27 2025
// Host        : DESKTOP-OBM7L7C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/00_module/07_fpga/develop_20200323/rtl/00_xilinx_ip/03_ram/sram_i64o64_d256/sram_i64o64_d256_sim_netlist.v
// Design      : sram_i64o64_d256
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sram_i64o64_d256,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module sram_i64o64_d256
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
  sram_i64o64_d256_blk_mem_gen_v8_4_4 U0
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
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
uW902YMFtYQ=
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
