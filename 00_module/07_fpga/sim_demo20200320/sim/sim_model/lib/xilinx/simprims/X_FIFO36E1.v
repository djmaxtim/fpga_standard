// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/blanc/X_FIFO36E1.v,v 1.30.4.3 2011/06/13 22:14:29 wloo Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2008 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                       36K-Bit FIFO
// /___/   /\     Filename : X_FIFO36E1.v
// \   \  /  \    Timestamp : Tue Mar 18 16:55:14 PDT 2008
//  \___\/\___\
//
// Revision:
//    03/18/08 - Initial version.
//    07/10/08 - IR476500 Add INIT parameter support
//    08/08/08 - Updated ECC to match hardware. (IR 479250)
//    08/26/08 - Updated unused bit on wrcount and rdcount to match the hardware.
//    09/02/08 - Fixed ECC mismatch with hardware. (IR 479250)
//    11/10/08 - Added DRC for invalid input parity for ECC (CR 482976).
//    01/30/09 - Fixed eccparity when reset (IR 501358).
//    03/17/09 - Undo IR 501358 (CR 511331).
//    04/02/09 - Implemented DRC for FIFO_MODE (CR 517127).
//    04/29/09 - Fixed timing violation for asynchronous reset (CR 519016).
//    10/07/09 - Fixed reset behavior (CR 532794).
//    10/23/09 - Fixed RST and RSTREG (CR 537067).
//    11/17/09 - Fixed ECCPARITY behavior during RST (CR 537360).
//    12/02/09 - Updated SRVAL and INIT port mapping for FIFO_MODE = FIFO36_72 (CR 539776).
//    06/30/10 - Updated RESET behavior and added SIM_DEVICE (CR 567515).
//    07/09/10 - Fixed INJECTSBITERR and INJECTDBITERR behaviors (CR 565234).
//    07/16/10 - Fixed RESET behavior during startup (CR 568626).
//    08/19/10 - Fixed RESET DRC during startup (CR 570708).
//    09/16/10 - Updated from bit to bus timing (CR 575523).
//    12/02/10 - Added warning message for 7SERIES Aysnc mode (CR 584052).
//    12/07/10 - Error out if no reset before first use of the fifo (CR 583638).
//    01/12/11 - updated warning message for 7SERIES Aysnc mode (CR 589721).
//    05/11/11 - Fixed DO not suppose to be reseted when RST asserted (CR 586526).
//    05/26/11 - Update Aysnc fifo behavior (CR 599680).
//    06/13/11 - Added timing check for sync RST (CR 606107).
// End Revision

`timescale 1 ps/1 ps

module X_FIFO36E1 (ALMOSTEMPTY, ALMOSTFULL, DBITERR, DO, DOP, ECCPARITY, EMPTY, FULL, RDCOUNT, RDERR, SBITERR, WRCOUNT, WRERR,
	       DI, DIP, INJECTDBITERR, INJECTSBITERR, RDCLK, RDEN, REGCE, RST, RSTREG, WRCLK, WREN);

    parameter ALMOST_EMPTY_OFFSET = 13'h0080;
    parameter ALMOST_FULL_OFFSET = 13'h0080;
    parameter integer DATA_WIDTH = 4;
    parameter integer DO_REG = 1;
    parameter EN_ECC_READ = "FALSE";
    parameter EN_ECC_WRITE = "FALSE";
    parameter EN_SYN = "FALSE";
    parameter FIFO_MODE = "FIFO36";
    parameter FIRST_WORD_FALL_THROUGH = "FALSE";
    parameter INIT = 72'h0;

    parameter LOC = "UNPLACED";
    
    parameter SIM_DEVICE = "VIRTEX6";
    parameter SRVAL = 72'h0;
    
    output ALMOSTEMPTY;
    output ALMOSTFULL;
    output DBITERR;
    output [63:0] DO;
    output [7:0] DOP;
    output [7:0] ECCPARITY;
    output EMPTY;
    output FULL;
    output [12:0] RDCOUNT;
    output RDERR;
    output SBITERR;
    output [12:0] WRCOUNT;
    output WRERR;

    input [63:0] DI;
    input [7:0] DIP;
    input INJECTDBITERR;
    input INJECTSBITERR;
    input RDCLK;
    input RDEN;
    input REGCE;
    input RST;
    input RSTREG;
    input WRCLK;
    input WREN;
    
    tri0 GSR = glbl.GSR;

    reg [12:0] wrcount_out, rdcount_out;
    reg almostempty_out, almostfull_out, empty_out, full_out;
    reg rderr_out, wrerr_out;
    
    wire almostempty_wire, empty_wire, rderr_wire;
    wire almostfull_wire, full_wire, wrerr_wire;
    wire [12:0] wrcount_wire, rdcount_wire;
    
    reg notifier, notifier_wrclk, notifier_rdclk;
    reg [63:0] do_out;
    reg [7:0] dop_out;
    wire [63:0] do_wire;
    wire [7:0] dop_wire;
    reg finish_error = 0;

    
    initial begin

	case (FIFO_MODE)
	    "FIFO36" : ;
	    "FIFO36_72" : if (DATA_WIDTH != 72) begin
		              $display("DRC Error : The attribute DATA_WIDTH must be set to 72 when attribute FIFO_MODE = FIFO36_72.");
		              finish_error = 1;
	                  end
	    default : begin
	       	          $display("Attribute Syntax Error : The attribute FIFO_MODE on X_FIFO36E1 instance %m is set to %s.  Legal values for this attribute are FIFO36 or FIFO36_72.", FIFO_MODE);
		          finish_error = 1;
	              end
	    
	endcase // case(FIFO_MODE)


    	case (DATA_WIDTH)

	    4, 9, 18, 36 : ;
	    72 : if (FIFO_MODE != "FIFO36_72") begin
		     $display("DRC Error : The attribute FIFO_MODE must be set to FIFO36_72 when attribute DATA_WIDTH = 72.");
		     finish_error = 1;
	         end
	    default : begin 
			 $display("Attribute Syntax Error : The attribute DATA_WIDTH on X_FIFO36E1 instance %m is set to %d.  Legal values for this attribute are 4, 9, 18, 36 or 72.", DATA_WIDTH);
		         finish_error = 1;
		
		     end
	endcase

	
	if (finish_error == 1)
	    $finish;

	
    end // initial begin

    
    // Matching HW
    localparam init_sdp = (FIFO_MODE == "FIFO36_72") ? {INIT[71:68],INIT[35:32],INIT[67:36],INIT[31:0]} : INIT;
    localparam srval_sdp = (FIFO_MODE == "FIFO36_72") ? {SRVAL[71:68],SRVAL[35:32],SRVAL[67:36],SRVAL[31:0]} : SRVAL;

    
    X_FF36_INTERNAL_VLOG #(.ALMOST_EMPTY_OFFSET(ALMOST_EMPTY_OFFSET),
		      .ALMOST_FULL_OFFSET(ALMOST_FULL_OFFSET),
		      .DATA_WIDTH(DATA_WIDTH),
		      .DO_REG(DO_REG),
		      .EN_ECC_WRITE(EN_ECC_WRITE),
		      .EN_ECC_READ(EN_ECC_READ),
		      .EN_SYN(EN_SYN),
		      .FIRST_WORD_FALL_THROUGH(FIRST_WORD_FALL_THROUGH),
		      .FIFO_MODE(FIFO_MODE),
		      .INIT(init_sdp),
		      .SIM_DEVICE(SIM_DEVICE),
		      .SRVAL(srval_sdp))

    INT_FIFO (.ALMOSTEMPTY(almostempty_wire), 
	      .ALMOSTFULL(almostfull_wire), 
	      .DBITERR(DBITERR), 
	      .DI(DI), 
	      .DIP(DIP), 
	      .DO(do_wire), 
	      .DOP(dop_wire), 
	      .ECCPARITY(ECCPARITY), 
	      .EMPTY(empty_wire), 
	      .FULL(full_wire), 
	      .GSR(GSR),
	      .INJECTDBITERR(INJECTDBITERR), 
	      .INJECTSBITERR(INJECTSBITERR), 
	      .RDCLK(RDCLK), 
	      .RDCOUNT(rdcount_wire), 
	      .RDEN(RDEN), 
	      .RDERR(rderr_wire), 
	      .REGCE(REGCE), 
	      .RST(RST), 
	      .RSTREG(RSTREG), 
	      .SBITERR(SBITERR), 
	      .WRCLK(WRCLK), 
	      .WRCOUNT(wrcount_wire), 
	      .WREN(WREN), 
	      .WRERR(wrerr_wire));


    //*** Timing Checks Start here

    assign DO = do_out;
    assign DOP = dop_out;

    assign ALMOSTFULL = almostfull_out;
    assign FULL = full_out;
    assign WRERR = wrerr_out;
    assign WRCOUNT = wrcount_out;

    assign ALMOSTEMPTY = almostempty_out;
    assign EMPTY = empty_out;
    assign RDERR = rderr_out;
    assign RDCOUNT = rdcount_out;
    
    always @(almostfull_wire or WRCLK) almostfull_out = almostfull_wire;
    always @(full_wire or WRCLK) full_out = full_wire;
    always @(wrerr_wire or WRCLK) wrerr_out = wrerr_wire;
    always @(wrcount_wire or WRCLK) wrcount_out = wrcount_wire;

    always @(almostempty_wire or RDCLK) almostempty_out = almostempty_wire;
    always @(empty_wire or RDCLK) empty_out = empty_wire;
    always @(rderr_wire or RDCLK) rderr_out = rderr_wire;
    always @(rdcount_wire or RDCLK) rdcount_out = rdcount_wire;
    
    always @(do_wire or RDCLK) do_out = do_wire;
    always @(dop_wire or RDCLK) dop_out = dop_wire;
    
    
    always @(notifier) begin
	do_out <= 64'bx;
	dop_out <= 8'bx;
    end

    always @(notifier_wrclk) begin
	almostfull_out <= 1'bx;
	full_out <= 1'bx;
	wrcount_out <= 13'bx;
	wrerr_out <= 1'bx;
    end
    
    always @(notifier_rdclk) begin
	almostempty_out <= 1'bx;
	empty_out <= 1'bx;
	rdcount_out <= 13'bx;
	rderr_out <= 1'bx;
    end
    
    not (nrst, RST);
    and (wren_enable, WREN, nrst);

    
    specify

        (RDCLK *> DO) = (100:100:100, 100:100:100);
        (RDCLK *> DOP) = (100:100:100, 100:100:100);
	(RDCLK => DBITERR) = (100:100:100, 100:100:100);
	(RDCLK => SBITERR) = (100:100:100, 100:100:100);
	(RDCLK => ALMOSTEMPTY) = (100:100:100, 100:100:100);
	(RDCLK => EMPTY) = (100:100:100, 100:100:100);
	(RDCLK *> RDCOUNT) = (100:100:100, 100:100:100);
	(RDCLK => RDERR) = (100:100:100, 100:100:100);

	(WRCLK => ALMOSTFULL) = (100:100:100, 100:100:100);
	(WRCLK => FULL) = (100:100:100, 100:100:100);
	(WRCLK *> WRCOUNT) = (100:100:100, 100:100:100);
	(WRCLK => WRERR) = (100:100:100, 100:100:100);
	(WRCLK *> ECCPARITY) = (100:100:100, 100:100:100);

	
        (RST => ALMOSTEMPTY) = (0:0:0, 0:0:0);
        (RST => ALMOSTFULL) = (0:0:0, 0:0:0);
        (RST => EMPTY) = (0:0:0, 0:0:0);
        (RST => FULL) = (0:0:0, 0:0:0);
        (RST *> RDCOUNT) = (0:0:0, 0:0:0);
        (RST => RDERR) = (0:0:0, 0:0:0);
        (RST *> WRCOUNT) = (0:0:0, 0:0:0);
        (RST => WRERR) = (0:0:0, 0:0:0);	

	$setuphold (posedge RDCLK, negedge RDEN &&& (RST==0), 0:0:0, 0:0:0);
	$setuphold (posedge RDCLK, posedge RDEN &&& (RST==0), 0:0:0, 0:0:0);
	$setuphold (posedge RDCLK, negedge REGCE, 0:0:0, 0:0:0);
	$setuphold (posedge RDCLK, negedge RSTREG, 0:0:0, 0:0:0);
	$setuphold (posedge RDCLK, posedge REGCE, 0:0:0, 0:0:0);
	$setuphold (posedge RDCLK, posedge RSTREG, 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, negedge DIP &&& (wren_enable!=0), 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, negedge DI &&& (wren_enable!=0), 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, posedge DIP &&& (wren_enable!=0), 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, posedge DI &&& (wren_enable!=0), 0:0:0, 0:0:0);

	$setuphold (posedge WRCLK, negedge INJECTDBITERR, 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, negedge INJECTSBITERR, 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, posedge INJECTDBITERR, 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, posedge INJECTSBITERR, 0:0:0, 0:0:0);	
	$setuphold (posedge WRCLK, negedge WREN &&& (RST==0), 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, posedge WREN &&& (RST==0), 0:0:0, 0:0:0);

	$recrem (negedge RST, posedge RDCLK, 0:0:0, 0:0:0, notifier_rdclk);
	$recrem (negedge RST, posedge WRCLK, 0:0:0, 0:0:0, notifier_wrclk);

	$setuphold (posedge RDCLK, negedge RST, 0:0:0, 0:0:0);
	$setuphold (posedge RDCLK, posedge RST, 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, negedge RST, 0:0:0, 0:0:0);
	$setuphold (posedge WRCLK, posedge RST, 0:0:0, 0:0:0);
	
	$period (posedge RDCLK, 0:0:0, notifier);
	$period (posedge WRCLK, 0:0:0, notifier);

	$width (posedge RDCLK, 0:0:0, 0, notifier);
	$width (negedge RDCLK, 0:0:0, 0, notifier);
	$width (posedge WRCLK, 0:0:0, 0, notifier);
	$width (negedge WRCLK, 0:0:0, 0, notifier);
	$width (posedge RST, 0:0:0, 0, notifier);

	
	specparam PATHPULSE$ = 0;

    endspecify
    
endmodule // X_FIFO36E1


// WARNING !!!: The following model is not an user primitive. 
//              Please do not modify any part of it. X_FIFO36E1 may not work properly if do so.
//
`timescale 1 ps/1 ps

module X_FF36_INTERNAL_VLOG (ALMOSTEMPTY, ALMOSTFULL, DBITERR, DO, DOP, ECCPARITY, EMPTY, FULL, RDCOUNT, RDERR, SBITERR, WRCOUNT, WRERR,
			DI, DIP, GSR, INJECTDBITERR, INJECTSBITERR, RDCLK, RDEN, REGCE, RST, RSTREG, WRCLK, WREN);
 
    output ALMOSTEMPTY;
    output ALMOSTFULL;
    output DBITERR;
    output [63:0] DO;
    output [7:0] DOP;
    output [7:0] ECCPARITY;
    output EMPTY;
    output FULL;
    output [12:0] RDCOUNT;
    output RDERR;
    output SBITERR;
    output [12:0] WRCOUNT;
    output WRERR;

    input [63:0] DI;
    input [7:0] DIP;
    input RDCLK;
    input RDEN;
    input REGCE;
    input RST;
    input RSTREG;
    input WRCLK;
    input WREN;
    input GSR;
    input INJECTDBITERR;
    input INJECTSBITERR;
    
    parameter integer DATA_WIDTH = 4;
    parameter integer DO_REG = 1;
    parameter EN_SYN = "FALSE";
    parameter FIFO_MODE = "FIFO36";
    parameter FIRST_WORD_FALL_THROUGH = "FALSE";
    parameter ALMOST_EMPTY_OFFSET = 13'h0080;
    parameter ALMOST_FULL_OFFSET = 13'h0080;
    parameter EN_ECC_WRITE = "FALSE";
    parameter EN_ECC_READ = "FALSE";
    parameter INIT = 72'h0;
    parameter SIM_DEVICE = "VIRTEX6";
    parameter SRVAL = 72'h0;
    
    reg [63:0] do_in = 64'b0;
    reg [63:0] do_out = 64'b0;
    reg [63:0] do_outreg = 64'b0;
    reg [63:0] do_out_mux = 64'b0;
    wire [63:0] do_out_out;
    reg [7:0] dop_in = 8'b0, dop_out = 8'b0;
    wire [7:0] dop_out_out;
    reg [7:0] dop_outreg = 8'b0, dop_out_mux = 8'b0;
    reg almostempty_out = 1'b1, almostfull_out = 1'b0, empty_out = 1'b1;
    reg full_out = 1'b0, rderr_out = 0, wrerr_out = 0;

    reg dbiterr_out = 0, sbiterr_out = 0;
    reg dbiterr_out_out = 0, sbiterr_out_out = 0;
    reg [71:0] ecc_bit_position;    
    reg [7:0] eccparity_out = 8'b0;
    reg [7:0] dopr_ecc, dop_buf, dip_ecc, dip_int;
    reg [63:0] do_buf, di_in_ecc_corrected;
    reg [7:0] syndrome, dip_in_ecc_corrected;

    wire [63:0] di_in;
    wire [7:0] dip_in;
    wire rdclk_in, rden_in, rst_in, rstreg_in, wrclk_in, wren_in;
    wire regce_in, gsr_in;
    wire injectdbiterr_in, injectsbiterr_in;
    wire full_v3;
    
    reg rden_reg, wren_reg;
    reg fwft;

    integer addr_limit, rd_prefetch = 0;
    integer wr1_addr = 0;
    integer viol_rst_rden = 0, viol_rst_wren = 0;

    reg [3:0] rden_rdckreg = 4'b0, wren_wrckreg = 4'b0;
    reg [12:0] rd_addr = 0;
    reg [12:0] rdcount_out_out = 13'b0, wr_addr_out = 13'b0;
    reg rd_flag = 0, rdcount_flag = 0, rdprefetch_flag = 0, wr_flag = 0;
    reg wr1_flag = 0, awr_flag = 0;
    reg [3:0] almostfull_int = 4'b0000, almostempty_int = 4'b1111;
    reg [3:0] full_int = 4'b0000;
    reg [3:0] empty_ram = 4'b1111;
    reg [8:0] i, j;
    reg rst_tmp1 = 0, rst_tmp2 = 0;
    reg [4:0] rst_rdckreg = 5'b0, rst_wrckreg = 5'b0;
    reg rst_rdclk_flag = 0, rst_wrclk_flag = 0;
    reg en_ecc_write_int, en_ecc_read_int, finish_error = 0;
    reg [63:0] di_ecc_col;
    reg first_rst_flag = 0;
    reg rm1wp1_eq = 1'b0, rm1w_eq = 1'b0;
    reg awr_flag_sync_1 = 0, awr_flag_sync_2 = 0;
    
    integer count_freq_rdclk = 0, count_freq_wrclk = 0;
    integer roundup_int_period_rdclk_wrclk, roundup_int_period_wrclk_rdclk;
    time rise_rdclk, period_rdclk, rise_wrclk, period_wrclk;
    integer fwft_prefetch_flag = 1;

    
// xilinx_internal_parameter on
    // WARNING !!!: This model may not work properly if the following parameter is changed.
    parameter integer FIFO_SIZE = 36;
// xilinx_internal_parameter off

    
    localparam counter_width = (FIFO_SIZE == 36) ? ((DATA_WIDTH == 4) ? 12 :
			       (DATA_WIDTH == 9) ? 11 : (DATA_WIDTH == 18) ? 10 :
			       (DATA_WIDTH == 36) ? 9 : (DATA_WIDTH == 72) ? 8 : 12) 
                               : ((DATA_WIDTH == 4) ? 11 : (DATA_WIDTH == 9) ? 10 :
				  (DATA_WIDTH == 18) ? 9 : (DATA_WIDTH == 36) ? 8 : 11);

    reg [counter_width:0] rdcount_out = 13'b0, wr_addr = 13'b0;
    reg [counter_width:0] ae_empty, ae_full;
    reg [counter_width:0] rdcount_out_sync_3 = 13'b0, rdcount_out_sync_2 = 13'b0;
    reg [counter_width:0] rdcount_out_sync_1 = 13'b0, rdcount_out_m1 = 13'b1111111111111;
    reg [counter_width:0] wr_addr_sync_3 = 13'b0, wr_addr_sync_2 = 13'b0, wr_addr_sync_1 = 13'b0;

    
    // Determinte memory size
    localparam mem_size4 = (FIFO_SIZE == 18) ? 4095 : (FIFO_SIZE == 36) ? 8191 : 0;
    localparam mem_size9 = (FIFO_SIZE == 18) ? 2047 : (FIFO_SIZE == 36) ? 4095 : 0;
    localparam mem_size18 = (FIFO_SIZE == 18) ? 1023 : (FIFO_SIZE == 36) ? 2047 : 0;
    localparam mem_size36 = (FIFO_SIZE == 18) ? 511 : (FIFO_SIZE == 36) ? 1023 : 0;
    localparam mem_size72 = (FIFO_SIZE == 18) ? 0 : (FIFO_SIZE == 36) ? 511 : 0;

    
    localparam mem_depth = (DATA_WIDTH == 4) ? mem_size4 : (DATA_WIDTH == 9) ? mem_size9 :
			   (DATA_WIDTH == 18) ? mem_size18 : (DATA_WIDTH == 36) ? mem_size36 : 
			   (DATA_WIDTH == 72) ? mem_size72 : 0;
    
    localparam mem_width = (DATA_WIDTH == 4) ? 3 : (DATA_WIDTH == 9) ? 7 :
			   (DATA_WIDTH == 18) ? 15 : (DATA_WIDTH == 36) ? 31 : (DATA_WIDTH == 72) ? 63 : 0;

    localparam memp_depth = (DATA_WIDTH == 4) ? 0 : (DATA_WIDTH == 9) ? mem_size9 :
			    (DATA_WIDTH == 18) ? mem_size18 : (DATA_WIDTH == 36) ? mem_size36 : 
			    (DATA_WIDTH == 72) ? mem_size72 : 0;
    
    localparam memp_width = (DATA_WIDTH == 4 || DATA_WIDTH == 9) ? 0 :
			    (DATA_WIDTH == 18) ? 1 : (DATA_WIDTH == 36) ? 3 : (DATA_WIDTH == 72) ? 7 : 0;

    reg [mem_width : 0] mem [mem_depth : 0];
    reg [memp_width : 0] memp [memp_depth : 0];
    reg sync;

    
    // Input and output ports
    assign di_in = DI;
    assign dip_in = DIP;
    assign DO = do_out_out;
    assign DOP = dop_out_out;
    assign rdclk_in = RDCLK;
    assign regce_in = REGCE;
    assign rden_in = RDEN;
    assign rst_in = RST;
    assign rstreg_in = RSTREG;
    assign wrclk_in = WRCLK;
    assign wren_in = WREN;
    assign gsr_in = GSR;

    assign ALMOSTEMPTY = almostempty_out;
    assign ALMOSTFULL = almostfull_out;
    assign EMPTY = empty_out;
    assign FULL = full_out;
    assign RDERR = rderr_out;
    assign WRERR = wrerr_out;    
    assign SBITERR = sbiterr_out_out;
    assign DBITERR = dbiterr_out_out;
    assign ECCPARITY = eccparity_out;
    assign RDCOUNT = rdcount_out_out;
    assign WRCOUNT = wr_addr_out;
    assign injectdbiterr_in = INJECTDBITERR;
    assign injectsbiterr_in = INJECTSBITERR;
    

    assign full_v3 = (rm1w_eq || (rm1wp1_eq && (wren_in && !full_out))) ? 1 : 0;
    
    
    initial begin

	// Determine address limit
	case (DATA_WIDTH)
	    4 : begin
		    if (FIFO_SIZE == 36)
			addr_limit = 8192;
		    else
			addr_limit = 4096;
		end
	    9 : begin
		    if (FIFO_SIZE == 36)
			addr_limit = 4096;
		    else
			addr_limit = 2048;
		end
	   18 : begin
	            if (FIFO_SIZE == 36)
			addr_limit = 2048;
		    else
			addr_limit = 1024;
		end
	   36 : begin
	            if (FIFO_SIZE == 36)
			addr_limit = 1024;
		    else
			addr_limit = 512;
		end
	   72 : begin
		    addr_limit = 512;
		end
	   default :
		begin
		    $display("Attribute Syntax Error : The attribute DATA_WIDTH on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are 4, 9, 18, 36 or 72.", DATA_WIDTH);
		    finish_error = 1;
		end
	endcase


	
	case (EN_SYN)
	    "FALSE" : sync = 0;
	    "TRUE"  : sync = 1;
	    default : begin
		          $display("Attribute Syntax Error : The attribute EN_SYN on X_FF36_INTERNAL_VLOG instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", EN_SYN);
		          finish_error = 1;
	              end
	endcase // case(EN_SYN)


	case (FIRST_WORD_FALL_THROUGH)
	    "FALSE" : begin
		          fwft = 0;
		          if (EN_SYN == "FALSE") begin
			      ae_empty = ALMOST_EMPTY_OFFSET - 1;
	                      ae_full = ALMOST_FULL_OFFSET;
			  end
			  else begin
			      ae_empty = ALMOST_EMPTY_OFFSET;
	                      ae_full = ALMOST_FULL_OFFSET;
			  end
		      end
	    "TRUE"  : begin
		          fwft = 1;
		          ae_empty = ALMOST_EMPTY_OFFSET - 2;
	                  ae_full = ALMOST_FULL_OFFSET;
	              end
	    default : begin
		$display("Attribute Syntax Error : The attribute FIRST_WORD_FALL_THROUGH on X_FF36_INTERNAL_VLOG instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", FIRST_WORD_FALL_THROUGH);
		finish_error = 1;
	      end
	endcase

	
	// DRC for fwft in sync mode
	if (fwft == 1'b1 && EN_SYN == "TRUE") begin
	    $display("DRC Error : First word fall through is not supported in synchronous mode on X_FF36_INTERNAL_VLOG instance %m.");
	    finish_error = 1;
	end

	if (EN_SYN == "FALSE" && DO_REG == 0) begin
	    $display("DRC Error : DO_REG = 0 is invalid when EN_SYN is set to FALSE on X_FF36_INTERNAL_VLOG instance %m.");
	    finish_error = 1;
	end
	

	case (EN_ECC_WRITE)
	    "TRUE"  : en_ecc_write_int <= 1;
	    "FALSE" : en_ecc_write_int <= 0;
	    default : begin
	       	          $display("Attribute Syntax Error : The attribute EN_ECC_WRITE on X_FF36_INTERNAL_VLOG instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", EN_ECC_WRITE);
		          finish_error = 1;
		      end
	endcase

	
	case (EN_ECC_READ)
	    "TRUE"  : en_ecc_read_int <= 1;
	    "FALSE" : en_ecc_read_int <= 0;
	    default : begin
	       	          $display("Attribute Syntax Error : The attribute EN_ECC_READ on X_FF36_INTERNAL_VLOG instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", EN_ECC_READ);
		          finish_error = 1;
		      end
	endcase

	
	if ((EN_ECC_READ == "TRUE" || EN_ECC_WRITE == "TRUE") && DATA_WIDTH != 72) begin
	    $display("DRC Error : The attribute DATA_WIDTH must be set to 72 when X_FF36_INTERNAL_VLOG is configured in the ECC mode.");
	    finish_error = 1;
	end

	
	if (!(SIM_DEVICE == "VIRTEX6" || SIM_DEVICE == "7SERIES")) begin
	    $display("Attribute Syntax Error : The Attribute SIM_DEVICE on FIFO36E1 instance %m is set to %s.  Legal values for this attribute are VIRTEX6, or 7SERIES.", SIM_DEVICE);
	    finish_error = 1;
	end


	if (finish_error == 1)
	    $finish;

	
    end // initial begin


    // GSR and RST
    always @(gsr_in)
	if (gsr_in == 1'b1) begin
	    if (DO_REG == 1'b1 && sync == 1'b1) begin
		assign do_out = INIT[0 +: mem_width+1];
		assign dop_out = INIT[mem_width+1 +: memp_width+1];
		assign do_outreg = INIT[0 +: mem_width+1];
		assign dop_outreg = INIT[mem_width+1 +: memp_width+1];
	    end
	    else begin
		assign do_out = 64'b0;
		assign dop_out = 8'b0;
		assign do_outreg = 64'b0;
		assign dop_outreg = 8'b0;
	    end
	end
	else if (gsr_in == 1'b0) begin
	    deassign do_out;
	    deassign dop_out;
	    deassign do_outreg;
	    deassign dop_outreg;
	end

    
    always @(gsr_in or rst_in)
	if (gsr_in == 1'b1 || rst_in == 1'b1) begin
	    assign almostempty_int = 4'b1111;
	    assign almostempty_out = 1'b1;
	    assign almostfull_int = 4'b0000;
	    assign almostfull_out = 1'b0;
	    assign empty_ram = 4'b1111;
	    assign empty_out = 1'b1;
	    assign full_int = 4'b0000;
	    assign full_out = 1'b0;
	    assign rdcount_out = 13'b0;
	    assign rdcount_out_out = 13'b0;
	    assign wr_addr_out = 13'b0;
	    assign rderr_out = 0;
	    assign wrerr_out = 0;
	    assign rd_addr = 0;
	    assign rd_prefetch = 0;
	    assign wr_addr = 0;
	    assign wr1_addr = 0;
	    assign rdcount_flag = 0;
	    assign rd_flag = 0;
	    assign rdprefetch_flag = 0;
	    assign wr_flag = 0;
	    assign wr1_flag = 0;
	    assign awr_flag = 0;
	    assign rdcount_out_sync_3 = 13'b0;
	    assign rdcount_out_m1 = 13'b1111111111111;
	    assign wr_addr_sync_3 = 13'b0;
	end
	else if (gsr_in == 1'b0 && rst_in == 1'b0) begin
	    deassign almostempty_int;
	    deassign almostempty_out;
	    deassign almostfull_int;
	    deassign almostfull_out;
	    deassign empty_ram;
	    deassign empty_out;
	    deassign full_int;
	    deassign full_out;
	    deassign rdcount_out;
	    deassign rdcount_out_out;
            deassign wr_addr_out;
	    deassign rderr_out;
	    deassign wrerr_out;
	    deassign rd_addr;
	    deassign rd_prefetch;
	    deassign wr_addr;
	    deassign wr1_addr;
	    deassign rdcount_flag;
	    deassign rd_flag;
	    deassign rdprefetch_flag;
	    deassign wr_flag;
	    deassign wr1_flag;
	    deassign awr_flag;
	    deassign rdcount_out_sync_3;
	    deassign rdcount_out_m1;
	    deassign wr_addr_sync_3;
	end

    
    // DRC

    generate
    
        case (SIM_DEVICE)
	    "VIRTEX6" : begin
		
		always @(posedge rdclk_in) begin

		    if (rst_in === 1'b1 && rden_in === 1'b1)
			viol_rst_rden = 1;

		    if (rst_in === 1'b0)
			rden_rdckreg[3:0] <= {rden_rdckreg[2:0], rden_in};
		    
		    if (rden_rdckreg == 4'h0) begin			
			rst_rdckreg[0] <= rst_in;
			rst_rdckreg[1] <= rst_rdckreg[0] & rst_in;
			rst_rdckreg[2] <= rst_rdckreg[1] & rst_in;
		    end
		    
		end // always @ (posedge rdclk_in)


		always @(posedge wrclk_in) begin

		    if (rst_in === 1'b1 && wren_in === 1'b1)
			viol_rst_wren = 1;
		    
		    if (rst_in === 1'b0)
			wren_wrckreg[3:0] <= {wren_wrckreg[2:0], wren_in};
		    
		    if (wren_wrckreg == 4'h0) begin			
			rst_wrckreg[0] <= rst_in;
			rst_wrckreg[1] <= rst_wrckreg[0] & rst_in;
			rst_wrckreg[2] <= rst_wrckreg[1] & rst_in;
		    end
		    
		end // always @ (posedge wrclk_in)

    
                always @(rst_in) begin
		    
		    rst_tmp1 = rst_in;
		    rst_rdclk_flag = 0;
		    rst_wrclk_flag = 0;
		    
		    if (rst_tmp1 == 0 && rst_tmp2 == 1) begin

			if (((rst_rdckreg[2] & rst_rdckreg[1] & rst_rdckreg[0]) == 0) || viol_rst_rden == 1) begin
			    
			    $display("DRC Error : Reset is unsuccessful at time %t.  RST must be held high for at least three RDCLK clock cycles, and RDEN must be low for four clock cycles before RST becomes active high, and RDEN remains low during this reset cycle.", $stime);
			    rst_rdclk_flag = 1;
			    
			end


			if (((rst_wrckreg[2] & rst_wrckreg[1] & rst_wrckreg[0]) == 0) || viol_rst_wren == 1) begin
			    
			    $display("DRC Error : Reset is unsuccessful at time %t.  RST must be held high for at least three WRCLK clock cycles, and WREN must be low for four clock cycles before RST becomes active high, and WREN remains low during this reset cycle.", $stime);
			    
			    rst_wrclk_flag = 1;
			end
			
			if ((rst_rdclk_flag | rst_wrclk_flag) == 1) begin
			    
			    assign do_out = 64'bx;
			    assign dop_out = 8'bx;
			    assign do_outreg = 64'bx;
			    assign dop_outreg = 8'bx;
			    assign full_out = 1'bX;
			    assign empty_out = 1'bX;
			    assign rderr_out = 1'bX;
			    assign wrerr_out = 1'bX;
			    assign eccparity_out = 8'bx;
			    assign rdcount_out = 13'bx;
			    assign rdcount_out_out = 13'bx;
			    assign wr_addr_out = 13'bx;
			    assign wr_addr = 13'bx;
			    assign wr1_addr = 0;
			    assign almostempty_int = 4'b1111;
			    assign almostempty_out = 1'bx;
			    assign almostfull_int = 4'b0000;
			    assign almostfull_out = 1'bx;
			    assign empty_ram = 4'b1111;
			    assign full_int = 4'b0000;
			    assign rd_addr = 0;
			    assign rd_prefetch = 0;
			    assign rdcount_flag = 0;
			    assign rd_flag = 0;
			    assign rdprefetch_flag = 0;
			    assign wr_flag = 0;
			    assign wr1_flag = 0;
			    assign awr_flag = 0;
			end
			else if (gsr_in == 1'b0 && rst_in == 1'b0) begin
			    deassign do_out;
			    deassign dop_out;
			    deassign do_outreg;
			    deassign dop_outreg;
			    deassign full_out;
			    deassign empty_out;
			    deassign rderr_out;
			    deassign wrerr_out;
			    deassign eccparity_out;
			    deassign rdcount_out;
			    rdcount_out = 13'b0;
			    deassign wr_addr;
			    wr_addr = 13'b0;
			    deassign rdcount_out_out;
			    deassign wr_addr_out;
			    deassign wr1_addr;
			    deassign almostempty_int;
			    deassign almostempty_out;
			    deassign almostfull_int;
			    deassign almostfull_out;
			    deassign empty_ram;
			    deassign full_int;
			    deassign rd_addr;
			    deassign rd_prefetch;
			    deassign rdcount_flag;
			    deassign rd_flag;
			    deassign rdprefetch_flag;
			    deassign wr_flag;
			    deassign wr1_flag;
			    deassign awr_flag;
			end // if (gsr_in == 1'b0 && rst_in == 1'b0)

			viol_rst_rden = 0;
			viol_rst_wren = 0;
			rden_rdckreg = 4'h0;
			wren_wrckreg = 4'h0;
			
			rst_rdckreg = 5'b0;
			rst_wrckreg = 5'b0;


			if (rst_rdclk_flag == 0 && rst_wrclk_flag == 0 && first_rst_flag == 0)
			    first_rst_flag = 1;
			
		    end // if (rst_tmp1 == 0 && rst_tmp2 == 1)
		    
		    rst_tmp2 = rst_tmp1;

		end // always @ (rst_in)
    
            end // case: "VIRTEX6"
	    "7SERIES" : begin
		
		always @(posedge rdclk_in) begin
		    
		    if (rst_in === 1'b1 && rden_in === 1'b1)
			viol_rst_rden = 1;

		    if (rden_in === 1'b0 && rst_in === 1'b1) begin
			rst_rdckreg[0] <= rst_in;
			rst_rdckreg[1] <= rst_rdckreg[0] & rst_in;
			rst_rdckreg[2] <= rst_rdckreg[1] & rst_in;
			rst_rdckreg[3] <= rst_rdckreg[2] & rst_in;
			rst_rdckreg[4] <= rst_rdckreg[3] & rst_in;
		    end
		    else if (rden_in === 1'b1 && rst_in === 1'b1) begin
			rst_rdckreg <= 5'b0;
		    end
		    
		end // always @ (posedge rdclk_in)
    
    
                always @(posedge wrclk_in) begin

		    if (rst_in === 1'b1 && wren_in === 1'b1)
			viol_rst_wren = 1;
		    
		    if (wren_in === 1'b0 && rst_in === 1'b1) begin
			rst_wrckreg[0] <= rst_in;
			rst_wrckreg[1] <= rst_wrckreg[0] & rst_in;
			rst_wrckreg[2] <= rst_wrckreg[1] & rst_in;
			rst_wrckreg[3] <= rst_wrckreg[2] & rst_in;
			rst_wrckreg[4] <= rst_wrckreg[3] & rst_in;
		    end
		    else if (wren_in === 1'b1 && rst_in === 1'b1) begin
			rst_wrckreg <= 5'b0;
		    end
		    
		end // always @ (posedge wrclk_in)


                always @(rst_in) begin
		    
		    rst_tmp1 = rst_in;
		    rst_rdclk_flag = 0;
		    rst_wrclk_flag = 0;
		    
		    if (rst_tmp1 == 0 && rst_tmp2 == 1) begin
			if (((rst_rdckreg[4] & rst_rdckreg[3] & rst_rdckreg[2] & rst_rdckreg[1] & rst_rdckreg[0]) == 0) || viol_rst_rden == 1) begin
			    
			    $display("DRC Error : Reset is unsuccessful at time %t.  RST must be held high for at least five RDCLK clock cycles, and RDEN must be low before RST becomes active high, and RDEN remains low during this reset cycle.", $stime);
			    rst_rdclk_flag = 1;
			    
			end
			
			if (((rst_wrckreg[4] & rst_wrckreg[3] & rst_wrckreg[2] & rst_wrckreg[1] & rst_wrckreg[0]) == 0) || viol_rst_wren == 1) begin
			    
			    $display("DRC Error : Reset is unsuccessful at time %t.  RST must be held high for at least five WRCLK clock cycles, and WREN must be low before RST becomes active high, and WREN remains low during this reset cycle.", $stime);
			    
			    rst_wrclk_flag = 1;
			end
			
			if ((rst_rdclk_flag | rst_wrclk_flag) == 1) begin
			    
			    assign do_out = 64'bx;
			    assign dop_out = 8'bx;
			    assign do_outreg = 64'bx;
			    assign dop_outreg = 8'bx;
			    assign full_out = 1'bX;
			    assign empty_out = 1'bX;
			    assign rderr_out = 1'bX;
			    assign wrerr_out = 1'bX;
			    assign eccparity_out = 8'bx;
			    assign rdcount_out = 13'bx;
			    assign rdcount_out_out = 13'bx;
			    assign wr_addr_out = 13'bx;
			    assign wr_addr = 13'bx;
			    assign wr1_addr = 0;
			    assign almostempty_int = 4'b1111;
			    assign almostempty_out = 1'bx;
			    assign almostfull_int = 4'b0000;
			    assign almostfull_out = 1'bx;
			    assign empty_ram = 4'b1111;
			    assign full_int = 4'b0000;
			    assign rd_addr = 0;
			    assign rd_prefetch = 0;
			    assign rdcount_flag = 0;
			    assign rd_flag = 0;
			    assign rdprefetch_flag = 0;
			    assign wr_flag = 0;
			    assign wr1_flag = 0;
			    assign awr_flag = 0;
			    assign rdcount_out_sync_3 = 13'bx;
			    assign rdcount_out_m1 = 13'bx;
			    assign wr_addr_sync_3 = 13'bx;
			end
			else if (gsr_in == 1'b0 && rst_in == 1'b0) begin
			    deassign do_out;
			    deassign dop_out;
			    deassign do_outreg;
			    deassign dop_outreg;
			    deassign full_out;
			    deassign empty_out;
			    deassign rderr_out;
			    deassign wrerr_out;
			    deassign eccparity_out;
			    deassign rdcount_out;
			    rdcount_out = 13'b0;
			    deassign wr_addr;
			    wr_addr = 13'b0;
			    deassign rdcount_out_out;
			    deassign wr_addr_out;
			    deassign wr1_addr;
			    deassign almostempty_int;
			    deassign almostempty_out;
			    deassign almostfull_int;
			    deassign almostfull_out;
			    deassign empty_ram;
			    deassign full_int;
			    deassign rd_addr;
			    deassign rd_prefetch;
			    deassign rdcount_flag;
			    deassign rd_flag;
			    deassign rdprefetch_flag;
			    deassign wr_flag;
			    deassign wr1_flag;
			    deassign awr_flag;
			    deassign rdcount_out_sync_3;
			    deassign rdcount_out_m1;
			    deassign wr_addr_sync_3;
			end // if (gsr_in == 1'b0 && rst_in == 1'b0)
			
			viol_rst_rden = 0;
			viol_rst_wren = 0;
			rst_rdckreg = 5'b0;
			rst_wrckreg = 5'b0;

			if (rst_rdclk_flag == 0 && rst_wrclk_flag == 0 && first_rst_flag == 0)
			    first_rst_flag = 1;
			
		    end // if (rst_tmp1 == 0 && rst_tmp2 == 1)
		    rst_tmp2 = rst_tmp1;
		    
		end // always @ (rst_in)
    
            end // case: "7SERIES"

	endcase // case(SIM_DEVICE)

    endgenerate


    // DRC
    always @(posedge rden_in or negedge gsr_in)
	@(posedge rdclk_in)
	if (first_rst_flag == 0 && rden_in == 1'b1 && gsr_in == 1'b0) begin
	    $display("DRC Error : A RESET cycle must be observerd before the first use of the FIFO instance %m which occurs at time %t.", $time);
	end


        always @(posedge wren_in or negedge gsr_in)
	  @(posedge wrclk_in)
	if (first_rst_flag == 0 && wren_in == 1'b1 && gsr_in == 1'b0) begin
	    $display("DRC Error : A RESET cycle must be observerd before the first use of the FIFO instance %m which occurs at time %t.", $time);
	end    


    always @(posedge rdclk_in) begin
	
	count_freq_rdclk = count_freq_rdclk + 1;
	if (count_freq_rdclk == 100)
	    rise_rdclk = $time;
	else if (count_freq_rdclk == 101) begin
	    period_rdclk = $time - rise_rdclk;
	    
	    if (count_freq_wrclk >= 101 && rst_in === 1'b0 && gsr_in === 1'b0) begin

		// Setup ranges for almostempty
		if (period_rdclk == period_wrclk) begin

		    if (EN_SYN == "FALSE") begin
			
			if (SIM_DEVICE == "7SERIES") begin

			    if (fwft == 1'b0) begin
	    
				if ((ALMOST_EMPTY_OFFSET < 5) || (ALMOST_EMPTY_OFFSET > addr_limit - 6)) begin
				    $display("Attribute Syntax Error : The attribute ALMOST_EMPTY_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_EMPTY_OFFSET, 5, addr_limit - 6);
				    $finish;
				end
				
				if ((ALMOST_FULL_OFFSET < 4) || (ALMOST_FULL_OFFSET > addr_limit - 7)) begin
				    $display("Attribute Syntax Error : The attribute ALMOST_FULL_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_FULL_OFFSET, 4, addr_limit - 7);
				    $finish;
				end
				
			    end // if (fwft == 1'b0)
			    else begin
				
				if ((ALMOST_EMPTY_OFFSET < 6) || (ALMOST_EMPTY_OFFSET > addr_limit - 5)) begin
				    $display("Attribute Syntax Error : The attribute ALMOST_EMPTY_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_EMPTY_OFFSET, 6, addr_limit - 5);
				    $finish;
				end
				
				if ((ALMOST_FULL_OFFSET < 4) || (ALMOST_FULL_OFFSET > addr_limit - 7)) begin
				    $display("Attribute Syntax Error : The attribute ALMOST_FULL_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_FULL_OFFSET, 4, addr_limit - 7);
				    $finish;
				end
				
			    end // else: !if(fwft == 1'b0)
			    
			end // if (SIM_DEVICE == "7SERIES")
			else begin
			    
			    if (fwft == 1'b0) begin
				
				if ((ALMOST_EMPTY_OFFSET < 5) || (ALMOST_EMPTY_OFFSET > addr_limit - 5)) begin
				    $display("Attribute Syntax Error : The attribute ALMOST_EMPTY_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_EMPTY_OFFSET, 5, addr_limit - 5);
				    $finish;
			    end
				
			    if ((ALMOST_FULL_OFFSET < 4) || (ALMOST_FULL_OFFSET > addr_limit - 5)) begin
				$display("Attribute Syntax Error : The attribute ALMOST_FULL_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_FULL_OFFSET, 4, addr_limit - 5);
				$finish;
				
			    end
				
			    end // if (fwft == 1'b0)
			    else begin
				
				if ((ALMOST_EMPTY_OFFSET < 6) || (ALMOST_EMPTY_OFFSET > addr_limit - 4)) begin
				    $display("Attribute Syntax Error : The attribute ALMOST_EMPTY_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_EMPTY_OFFSET, 6, addr_limit - 4);
				    $finish;
				end
				
				if ((ALMOST_FULL_OFFSET < 4) || (ALMOST_FULL_OFFSET > addr_limit - 5)) begin
				    $display("Attribute Syntax Error : The attribute ALMOST_FULL_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_FULL_OFFSET, 4, addr_limit - 5);
				    $finish;
				end
				
			    end // else: !if(fwft == 1'b0)
			end // else: !if(SIM_DEVICE == "7SERIES")
		    end // if (EN_SYN == "FALSE")
		    else begin

			if ((fwft == 1'b0) && ((ALMOST_EMPTY_OFFSET < 1) || (ALMOST_EMPTY_OFFSET > addr_limit - 2))) begin
			    $display("Attribute Syntax Error : The attribute ALMOST_EMPTY_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_EMPTY_OFFSET, 1, addr_limit - 2);
			    $finish;
			end
			
			if ((fwft == 1'b0) && ((ALMOST_FULL_OFFSET < 1) || (ALMOST_FULL_OFFSET > addr_limit - 2))) begin
			    $display("Attribute Syntax Error : The attribute ALMOST_FULL_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d.  Legal values for this attribute are %d to %d", ALMOST_FULL_OFFSET, 1, addr_limit - 2);
			    $finish;
			end
			
		    end // else: !if(EN_SYN == "FALSE")
	
		end // if (period_rdclk == period_wrclk)
		else begin

    		    roundup_int_period_rdclk_wrclk = (period_rdclk / period_wrclk) + 0.499;
		    roundup_int_period_wrclk_rdclk = (period_wrclk / period_rdclk) + 0.499;
		    
		    if (SIM_DEVICE == "7SERIES") begin
			
			if (ALMOST_FULL_OFFSET > (addr_limit - ((4 * roundup_int_period_rdclk_wrclk) + 6))) begin
			    
			    $display("DRC Error : The attribute ALMOST_FULL_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d. It must be set to a value smaller than (FIFO_DEPTH - ((4 * roundup (WRCLK frequency / RDCLK frequency)) + 6)) when X_FF36_INTERNAL_VLOG has different frequencies for RDCLK and WRCLK.", ALMOST_FULL_OFFSET);
			    $finish;
			    
			end
		    end
		    else begin

			if (ALMOST_FULL_OFFSET > (addr_limit - ((3 * roundup_int_period_wrclk_rdclk) + 3))) begin
			    
			    $display("DRC Error : The attribute ALMOST_FULL_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d. It must be set to a value smaller than (FIFO_DEPTH - ((3 * roundup (RDCLK frequency / WRCLK frequency)) + 3)) when X_FF36_INTERNAL_VLOG has different frequencies for RDCLK and WRCLK.", ALMOST_FULL_OFFSET);
			    $finish;
			    
			end

			if (ALMOST_EMPTY_OFFSET > (addr_limit - ((3 * roundup_int_period_rdclk_wrclk) + 3))) begin
			    
			    $display("DRC Error : The attribute ALMOST_EMPTY_OFFSET on X_FF36_INTERNAL_VLOG instance %m is set to %d. It must be set to a value smaller than (FIFO_DEPTH - ((3 * roundup (WRCLK frequency / RDCLK frequency)) + 3)) when X_FF36_INTERNAL_VLOG has different frequencies for RDCLK and WRCLK.", ALMOST_EMPTY_OFFSET);
			    $finish;
			    
			end
		    
		    end // else: !if(SIM_DEVICE == "7SERIES")
		
		end // else: !if(period_rdclk == period_wrclk)

		count_freq_rdclk = 0;
		count_freq_wrclk = 0;
		
	    end // if (count_freq_wrclk >= 101 && count_freq_rdclk >= 101 && rst_in === 1'b0 && gsr_in === 1'b0)

	end // if (count_freq_rdclk == 101)

    end // always @ (posedge rdclk_in)
    

    always @(posedge wrclk_in) begin
	
	count_freq_wrclk = count_freq_wrclk + 1;

	if (count_freq_wrclk == 100)
	    rise_wrclk = $time;
	else if (count_freq_wrclk == 101) begin
	    period_wrclk = $time - rise_wrclk;
	end

    end // always @ (posedge wrclk_in)


    
  generate
    case (SIM_DEVICE)
	
	 "VIRTEX6" : begin
    
    // read clock
    always @(posedge rdclk_in) begin

      // SRVAL in output register mode
      if (DO_REG == 1 && sync == 1'b1 && rstreg_in === 1'b1) begin

	  do_outreg = SRVAL[0 +: mem_width+1];
	  
	  if (mem_width+1 >= 8)
	      dop_outreg = SRVAL[mem_width+1 +: memp_width+1];
      end


	// sync mode
	if (sync == 1'b1) begin
	    
	    // output register
	    if (DO_REG == 1 && regce_in === 1'b1 && rstreg_in === 1'b0) begin
		    
		do_outreg = do_out;
		dop_outreg = dop_out;
		dbiterr_out_out = dbiterr_out; // reg out in sync mode
		sbiterr_out_out = sbiterr_out;
		
	    end

		    
	    if (rden_in == 1'b1) begin

		if (empty_out == 1'b0) begin
		    
		    do_buf = mem[rdcount_out];
		    dop_buf = memp[rdcount_out];
		    
		    // ECC decode
		    if (EN_ECC_READ == "TRUE") begin
	  
			// regenerate parity
			dopr_ecc[0] = do_buf[0]^do_buf[1]^do_buf[3]^do_buf[4]^do_buf[6]^do_buf[8]
					  ^do_buf[10]^do_buf[11]^do_buf[13]^do_buf[15]^do_buf[17]^do_buf[19]
					  ^do_buf[21]^do_buf[23]^do_buf[25]^do_buf[26]^do_buf[28]
            				  ^do_buf[30]^do_buf[32]^do_buf[34]^do_buf[36]^do_buf[38]
 		                          ^do_buf[40]^do_buf[42]^do_buf[44]^do_buf[46]^do_buf[48]
		                          ^do_buf[50]^do_buf[52]^do_buf[54]^do_buf[56]^do_buf[57]^do_buf[59]
		                          ^do_buf[61]^do_buf[63];

			dopr_ecc[1] = do_buf[0]^do_buf[2]^do_buf[3]^do_buf[5]^do_buf[6]^do_buf[9]
                                          ^do_buf[10]^do_buf[12]^do_buf[13]^do_buf[16]^do_buf[17]
                                          ^do_buf[20]^do_buf[21]^do_buf[24]^do_buf[25]^do_buf[27]^do_buf[28]
                                          ^do_buf[31]^do_buf[32]^do_buf[35]^do_buf[36]^do_buf[39]
                                          ^do_buf[40]^do_buf[43]^do_buf[44]^do_buf[47]^do_buf[48]
                                          ^do_buf[51]^do_buf[52]^do_buf[55]^do_buf[56]^do_buf[58]^do_buf[59]
                                          ^do_buf[62]^do_buf[63];

			dopr_ecc[2] = do_buf[1]^do_buf[2]^do_buf[3]^do_buf[7]^do_buf[8]^do_buf[9]
                                          ^do_buf[10]^do_buf[14]^do_buf[15]^do_buf[16]^do_buf[17]
                                          ^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[29]
                                          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[37]^do_buf[38]^do_buf[39]
                                          ^do_buf[40]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]
                                          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]
                                          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
	
			dopr_ecc[3] = do_buf[4]^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]
		                          ^do_buf[10]^do_buf[18]^do_buf[19]
                                          ^do_buf[20]^do_buf[21]^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]
                                          ^do_buf[33]^do_buf[34]^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]
                                          ^do_buf[39]^do_buf[40]^do_buf[49]^do_buf[50]
                                          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[4] = do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
                                          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[41]^do_buf[42]^do_buf[43]
				          ^do_buf[44]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]
				          ^do_buf[50]^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];


			dopr_ecc[5] = do_buf[26]^do_buf[27]^do_buf[28]^do_buf[29]
				          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]^do_buf[35]
				          ^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]
				          ^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]
				          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[6] = do_buf[57]^do_buf[58]^do_buf[59]
				          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];

			dopr_ecc[7] = dop_buf[0]^dop_buf[1]^dop_buf[2]^dop_buf[3]^dop_buf[4]^dop_buf[5]
				          ^dop_buf[6]^do_buf[0]^do_buf[1]^do_buf[2]^do_buf[3]^do_buf[4]
				          ^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]^do_buf[10]
				          ^do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
				          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[26]^do_buf[27]^do_buf[28]
				          ^do_buf[29]^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]
				          ^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]^do_buf[46]
				          ^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]^do_buf[51]^do_buf[52]
				          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]^do_buf[57]^do_buf[58]
				          ^do_buf[59]^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
			    
			syndrome = dopr_ecc ^ dop_buf;

			// checking error
			if (syndrome !== 0) begin

			    if (syndrome[7]) begin  // dectect single bit error

				ecc_bit_position = {do_buf[63:57], dop_buf[6], do_buf[56:26], dop_buf[5], do_buf[25:11], dop_buf[4], do_buf[10:4], dop_buf[3], do_buf[3:1], dop_buf[2], do_buf[0], dop_buf[1:0], dop_buf[7]};

				if (syndrome[6:0] > 71) begin
				    $display ("DRC Error : Simulation halted due Corrupted DIP. To correct this problem, make sure that reliable data is fed to the DIP. The correct Parity must be generated by a Hamming code encoder or encoder in the Block RAM. The output from the model is unreliable if there are more than 2 bit errors. The model doesn't warn if there is sporadic input of more than 2 bit errors due to the limitation in Hamming code.");
				    $finish;
				end
				
				ecc_bit_position[syndrome[6:0]] = ~ecc_bit_position[syndrome[6:0]]; // correct single bit error in the output 

				di_in_ecc_corrected = {ecc_bit_position[71:65], ecc_bit_position[63:33], ecc_bit_position[31:17], ecc_bit_position[15:9], ecc_bit_position[7:5], ecc_bit_position[3]}; // correct single bit error in the memory

				do_buf = di_in_ecc_corrected;
			
				dip_in_ecc_corrected = {ecc_bit_position[0], ecc_bit_position[64], ecc_bit_position[32], ecc_bit_position[16], ecc_bit_position[8], ecc_bit_position[4], ecc_bit_position[2:1]}; // correct single bit error in the parity memory
				
				dop_buf = dip_in_ecc_corrected;
				
				dbiterr_out = 0;  // latch out in sync mode
				sbiterr_out = 1;

			    end
			    else if (!syndrome[7]) begin  // double bit error
				sbiterr_out = 0;
				dbiterr_out = 1;
				    
			    end
			end // if (syndrome !== 0)
			else begin
			    dbiterr_out = 0;
			    sbiterr_out = 0;
				
			end // else: !if(syndrome !== 0)
			    
		    end // if (EN_ECC_READ == "TRUE")
		    // end ecc decode

		    
		    if (DO_REG == 0) begin
			dbiterr_out_out = dbiterr_out;
			sbiterr_out_out = sbiterr_out;
		    end

		    
		    do_out = do_buf;
		    dop_out = dop_buf;

		    rdcount_out = (rdcount_out + 1) % addr_limit;
		    
		    if (rdcount_out == 0)
			rdcount_flag = ~rdcount_flag;

		end // if (empty_out == 1'b0)
	    end // if (rden_in == 1'b1)
	    


	    rderr_out = (rden_in == 1'b1) && (empty_out == 1'b1);
	    
	    
	    if (wren_in == 1'b1) begin
		empty_out = 1'b0;
	    end
	    else if (rdcount_out == wr_addr && rdcount_flag == wr_flag)
		empty_out = 1'b1;

	    if ((((rdcount_out + ae_empty) >= wr_addr) && (rdcount_flag == wr_flag)) || (((rdcount_out + ae_empty) >= (wr_addr + addr_limit) && (rdcount_flag != wr_flag)))) begin
		almostempty_out = 1'b1;
	    end

	    if ((((rdcount_out + addr_limit) > (wr_addr + ae_full)) && (rdcount_flag == wr_flag)) || ((rdcount_out > (wr_addr + ae_full)) && (rdcount_flag != wr_flag))) begin
		if (wr_addr <= wr_addr + ae_full || rdcount_flag == wr_flag)
		    almostfull_out = 1'b0;
	    end

	end // if (sync == 1'b1)

	// async mode
	else if (sync == 1'b0) begin

	    rden_reg = rden_in;
	    if (fwft == 1'b0) begin
		if ((rden_reg == 1'b1) && (rd_addr != rdcount_out)) begin
		    do_out = do_in;
		    if (DATA_WIDTH != 4) 
			dop_out = dop_in;
		    rd_addr = (rd_addr + 1) % addr_limit;
		    if (rd_addr == 0)
			rd_flag = ~rd_flag;
		    
		    dbiterr_out_out = dbiterr_out; // reg out in async mode
		    sbiterr_out_out = sbiterr_out;

		end
		if (((rd_addr == rdcount_out) && (empty_ram[3] == 1'b0)) ||
		    ((rden_reg == 1'b1) && (empty_ram[1] == 1'b0))) begin

		    do_buf = mem[rdcount_out];
		    dop_buf = memp[rdcount_out];
		    
		    // ECC decode
		    if (EN_ECC_READ == "TRUE") begin

			// regenerate parity
			dopr_ecc[0] = do_buf[0]^do_buf[1]^do_buf[3]^do_buf[4]^do_buf[6]^do_buf[8]
					  ^do_buf[10]^do_buf[11]^do_buf[13]^do_buf[15]^do_buf[17]^do_buf[19]
					  ^do_buf[21]^do_buf[23]^do_buf[25]^do_buf[26]^do_buf[28]
            				  ^do_buf[30]^do_buf[32]^do_buf[34]^do_buf[36]^do_buf[38]
		                          ^do_buf[40]^do_buf[42]^do_buf[44]^do_buf[46]^do_buf[48]
		                          ^do_buf[50]^do_buf[52]^do_buf[54]^do_buf[56]^do_buf[57]^do_buf[59]
		                          ^do_buf[61]^do_buf[63];

			dopr_ecc[1] = do_buf[0]^do_buf[2]^do_buf[3]^do_buf[5]^do_buf[6]^do_buf[9]
                                          ^do_buf[10]^do_buf[12]^do_buf[13]^do_buf[16]^do_buf[17]
                                          ^do_buf[20]^do_buf[21]^do_buf[24]^do_buf[25]^do_buf[27]^do_buf[28]
                                          ^do_buf[31]^do_buf[32]^do_buf[35]^do_buf[36]^do_buf[39]
                                          ^do_buf[40]^do_buf[43]^do_buf[44]^do_buf[47]^do_buf[48]
                                          ^do_buf[51]^do_buf[52]^do_buf[55]^do_buf[56]^do_buf[58]^do_buf[59]
                                          ^do_buf[62]^do_buf[63];

			dopr_ecc[2] = do_buf[1]^do_buf[2]^do_buf[3]^do_buf[7]^do_buf[8]^do_buf[9]
                                          ^do_buf[10]^do_buf[14]^do_buf[15]^do_buf[16]^do_buf[17]
                                          ^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[29]
                                          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[37]^do_buf[38]^do_buf[39]
                                          ^do_buf[40]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]
                                          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]
                                          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
	
			dopr_ecc[3] = do_buf[4]^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]
		                          ^do_buf[10]^do_buf[18]^do_buf[19]
                                          ^do_buf[20]^do_buf[21]^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]
                                          ^do_buf[33]^do_buf[34]^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]
                                          ^do_buf[39]^do_buf[40]^do_buf[49]^do_buf[50]
                                          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[4] = do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
                                          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[41]^do_buf[42]^do_buf[43]
				          ^do_buf[44]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]
				          ^do_buf[50]^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];


			dopr_ecc[5] = do_buf[26]^do_buf[27]^do_buf[28]^do_buf[29]
				          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]^do_buf[35]
				          ^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]
				          ^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]
				          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[6] = do_buf[57]^do_buf[58]^do_buf[59]
				          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];

			dopr_ecc[7] = dop_buf[0]^dop_buf[1]^dop_buf[2]^dop_buf[3]^dop_buf[4]^dop_buf[5]
				          ^dop_buf[6]^do_buf[0]^do_buf[1]^do_buf[2]^do_buf[3]^do_buf[4]
				          ^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]^do_buf[10]
				          ^do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
				          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[26]^do_buf[27]^do_buf[28]
				          ^do_buf[29]^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]
				          ^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]^do_buf[46]
				          ^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]^do_buf[51]^do_buf[52]
				          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]^do_buf[57]^do_buf[58]
				          ^do_buf[59]^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
			    
			syndrome = dopr_ecc ^ dop_buf;
	  
			if (syndrome !== 0) begin
			    
			    if (syndrome[7]) begin  // dectect single bit error
				
				ecc_bit_position = {do_buf[63:57], dop_buf[6], do_buf[56:26], dop_buf[5], do_buf[25:11], dop_buf[4], do_buf[10:4], dop_buf[3], do_buf[3:1], dop_buf[2], do_buf[0], dop_buf[1:0], dop_buf[7]};

				if (syndrome[6:0] > 71) begin
				    $display ("DRC Error : Simulation halted due Corrupted DIP. To correct this problem, make sure that reliable data is fed to the DIP. The correct Parity must be generated by a Hamming code encoder or encoder in the Block RAM. The output from the model is unreliable if there are more than 2 bit errors. The model doesn't warn if there is sporadic input of more than 2 bit errors due to the limitation in Hamming code.");
				    $finish;
				end
				
				ecc_bit_position[syndrome[6:0]] = ~ecc_bit_position[syndrome[6:0]]; // correct single bit error in the output 
				
				di_in_ecc_corrected = {ecc_bit_position[71:65], ecc_bit_position[63:33], ecc_bit_position[31:17], ecc_bit_position[15:9], ecc_bit_position[7:5], ecc_bit_position[3]}; // correct single bit error in the memory
				
				do_buf = di_in_ecc_corrected;
				
				dip_in_ecc_corrected = {ecc_bit_position[0], ecc_bit_position[64], ecc_bit_position[32], ecc_bit_position[16], ecc_bit_position[8], ecc_bit_position[4], ecc_bit_position[2:1]}; // correct single bit error in the parity memory

				dop_buf = dip_in_ecc_corrected;
				
				dbiterr_out = 0;
				sbiterr_out = 1;
				
			    end
			    else if (!syndrome[7]) begin  // double bit error
				sbiterr_out = 0;
				dbiterr_out = 1;
				
			    end
			end // if (syndrome !== 0)
			else begin
			    dbiterr_out = 0;
			    sbiterr_out = 0;
			    
			end // else: !if(syndrome !== 0)
			
		    end // if (EN_ECC_READ == "TRUE")
		    // end ecc decode
		    
		    do_in = do_buf;
		    dop_in = dop_buf;
		
		    #1;
		    rdcount_out = (rdcount_out + 1) % addr_limit;
		    if (rdcount_out == 0) begin
			rdcount_flag = ~rdcount_flag;
		    end
		end
	    end

	    // First word fall through = true
	    if (fwft == 1'b1) begin

		if ((rden_reg == 1'b1) && (rd_addr != rd_prefetch)) begin
		    rd_prefetch = (rd_prefetch + 1) % addr_limit;
		    if (rd_prefetch == 0)
			rdprefetch_flag = ~rdprefetch_flag;
		end
		if ((rd_prefetch == rd_addr) && (rd_addr != rdcount_out)) begin
		    do_out = do_in;
		    if (DATA_WIDTH != 4) 
			dop_out = dop_in;
		    rd_addr = (rd_addr + 1) % addr_limit;
		    if (rd_addr == 0)
			rd_flag = ~rd_flag;

		    dbiterr_out_out = dbiterr_out; // reg out in async mode
		    sbiterr_out_out = sbiterr_out;
		    
		end
		if (((rd_addr == rdcount_out) && (empty_ram[3] == 1'b0)) ||
		    ((rden_reg == 1'b1) && (empty_ram[1] == 1'b0)) ||
		    ((rden_reg == 1'b0) && (empty_ram[1] == 1'b0) && (rd_addr == rdcount_out))) begin
		    
		    do_buf = mem[rdcount_out];
		    dop_buf = memp[rdcount_out];
		
		    // ECC decode
		    if (EN_ECC_READ == "TRUE") begin
			
			// regenerate parity
			dopr_ecc[0] = do_buf[0]^do_buf[1]^do_buf[3]^do_buf[4]^do_buf[6]^do_buf[8]
					  ^do_buf[10]^do_buf[11]^do_buf[13]^do_buf[15]^do_buf[17]^do_buf[19]
					  ^do_buf[21]^do_buf[23]^do_buf[25]^do_buf[26]^do_buf[28]
            				  ^do_buf[30]^do_buf[32]^do_buf[34]^do_buf[36]^do_buf[38]
		                          ^do_buf[40]^do_buf[42]^do_buf[44]^do_buf[46]^do_buf[48]
		                          ^do_buf[50]^do_buf[52]^do_buf[54]^do_buf[56]^do_buf[57]^do_buf[59]
		                          ^do_buf[61]^do_buf[63];

			dopr_ecc[1] = do_buf[0]^do_buf[2]^do_buf[3]^do_buf[5]^do_buf[6]^do_buf[9]
                                          ^do_buf[10]^do_buf[12]^do_buf[13]^do_buf[16]^do_buf[17]
                                          ^do_buf[20]^do_buf[21]^do_buf[24]^do_buf[25]^do_buf[27]^do_buf[28]
                                          ^do_buf[31]^do_buf[32]^do_buf[35]^do_buf[36]^do_buf[39]
                                          ^do_buf[40]^do_buf[43]^do_buf[44]^do_buf[47]^do_buf[48]
                                          ^do_buf[51]^do_buf[52]^do_buf[55]^do_buf[56]^do_buf[58]^do_buf[59]
                                          ^do_buf[62]^do_buf[63];

			dopr_ecc[2] = do_buf[1]^do_buf[2]^do_buf[3]^do_buf[7]^do_buf[8]^do_buf[9]
                                          ^do_buf[10]^do_buf[14]^do_buf[15]^do_buf[16]^do_buf[17]
                                          ^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[29]
                                          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[37]^do_buf[38]^do_buf[39]
                                          ^do_buf[40]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]
                                          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]
                                          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
	
			dopr_ecc[3] = do_buf[4]^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]
		                          ^do_buf[10]^do_buf[18]^do_buf[19]
                                          ^do_buf[20]^do_buf[21]^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]
                                          ^do_buf[33]^do_buf[34]^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]
                                          ^do_buf[39]^do_buf[40]^do_buf[49]^do_buf[50]
                                          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[4] = do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
                                          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[41]^do_buf[42]^do_buf[43]
				          ^do_buf[44]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]
				          ^do_buf[50]^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];


			dopr_ecc[5] = do_buf[26]^do_buf[27]^do_buf[28]^do_buf[29]
				          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]^do_buf[35]
				          ^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]
				          ^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]
				          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[6] = do_buf[57]^do_buf[58]^do_buf[59]
				          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];

			dopr_ecc[7] = dop_buf[0]^dop_buf[1]^dop_buf[2]^dop_buf[3]^dop_buf[4]^dop_buf[5]
				          ^dop_buf[6]^do_buf[0]^do_buf[1]^do_buf[2]^do_buf[3]^do_buf[4]
				          ^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]^do_buf[10]
				          ^do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
				          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[26]^do_buf[27]^do_buf[28]
				          ^do_buf[29]^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]
				          ^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]^do_buf[46]
				          ^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]^do_buf[51]^do_buf[52]
				          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]^do_buf[57]^do_buf[58]
				          ^do_buf[59]^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
			    
			syndrome = dopr_ecc ^ dop_buf;
	  
			if (syndrome !== 0) begin
			    
			    if (syndrome[7]) begin  // dectect single bit error
				
				ecc_bit_position = {do_buf[63:57], dop_buf[6], do_buf[56:26], dop_buf[5], do_buf[25:11], dop_buf[4], do_buf[10:4], dop_buf[3], do_buf[3:1], dop_buf[2], do_buf[0], dop_buf[1:0], dop_buf[7]};

				if (syndrome[6:0] > 71) begin
				    $display ("DRC Error : Simulation halted due Corrupted DIP. To correct this problem, make sure that reliable data is fed to the DIP. The correct Parity must be generated by a Hamming code encoder or encoder in the Block RAM. The output from the model is unreliable if there are more than 2 bit errors. The model doesn't warn if there is sporadic input of more than 2 bit errors due to the limitation in Hamming code.");
				    $finish;
				end
				
				ecc_bit_position[syndrome[6:0]] = ~ecc_bit_position[syndrome[6:0]]; // correct single bit error in the output 
				
				di_in_ecc_corrected = {ecc_bit_position[71:65], ecc_bit_position[63:33], ecc_bit_position[31:17], ecc_bit_position[15:9], ecc_bit_position[7:5], ecc_bit_position[3]}; // correct single bit error in the memory
				
				do_buf = di_in_ecc_corrected;
				
				dip_in_ecc_corrected = {ecc_bit_position[0], ecc_bit_position[64], ecc_bit_position[32], ecc_bit_position[16], ecc_bit_position[8], ecc_bit_position[4], ecc_bit_position[2:1]}; // correct single bit error in the parity memory

				dop_buf = dip_in_ecc_corrected;

				dbiterr_out = 0;
				sbiterr_out = 1;
				
			    end
			    else if (!syndrome[7]) begin  // double bit error
				sbiterr_out = 0;
				dbiterr_out = 1;
				    
			    end
			end // if (syndrome !== 0)
			else begin
			    dbiterr_out = 0;
			    sbiterr_out = 0;
			    
			end // else: !if(syndrome !== 0)
			
		    end // if (EN_ECC_READ == "TRUE")
		    // end ecc decode
	   
		    do_in = do_buf;
		    dop_in = dop_buf;
		
		    #1;
		    rdcount_out = (rdcount_out + 1) % addr_limit;
		    if (rdcount_out == 0)
			rdcount_flag = ~rdcount_flag;
		end
	    end // if (fwft == 1'b1)
	    
	    
	    rderr_out = (rden_reg == 1'b1) && (empty_out == 1'b1);

	    almostempty_out = almostempty_int[3];

	    if ((((rdcount_out + ae_empty) >= wr_addr) && (rdcount_flag == awr_flag)) || (((rdcount_out + ae_empty) >= (wr_addr + addr_limit)) && (rdcount_flag != awr_flag))) begin
		almostempty_int[3] = 1'b1;
		almostempty_int[2] = 1'b1;
		almostempty_int[1] = 1'b1;
		almostempty_int[0] = 1'b1;
	    end
	    else if (almostempty_int[2] == 1'b0) begin

		if (rdcount_out <= rdcount_out + ae_empty || rdcount_flag != awr_flag) begin
		    almostempty_int[3] = almostempty_int[0];
		    almostempty_int[0] = 1'b0;
		    end
	    end
	    
	    if ((((rdcount_out + addr_limit) > (wr_addr + ae_full)) && (rdcount_flag == awr_flag)) || ((rdcount_out > (wr_addr + ae_full)) && (rdcount_flag != awr_flag))) begin

		if (((rden_reg == 1'b1) && (empty_out == 1'b0)) || ((((rd_addr + 1) % addr_limit) == rdcount_out) && (almostfull_int[1] == 1'b1))) begin
		    almostfull_int[2] = almostfull_int[1];
		    almostfull_int[1] = 1'b0;
		end
	    end
	    else begin
		almostfull_int[2] = 1'b1;
		almostfull_int[1] = 1'b1;
	    end

	    if (fwft == 1'b0) begin
		if ((rdcount_out == rd_addr) && (rdcount_flag == rd_flag)) begin
		    empty_out = 1'b1;
		end
		else begin
		    empty_out = 1'b0;
		end
	    end // if (fwft == 1'b0)
	    else if (fwft == 1'b1) begin
		if ((rd_prefetch == rd_addr) && (rdprefetch_flag == rd_flag)) begin
		    empty_out = 1'b1;
		end
		else begin
		    empty_out = 1'b0;
		end
	    end
	    

	    if ((rdcount_out == wr_addr) && (rdcount_flag == awr_flag)) begin
		empty_ram[2] = 1'b1;
		empty_ram[1] = 1'b1;
		empty_ram[0] = 1'b1;
	    end
	    else begin
		empty_ram[2] = empty_ram[1];
		empty_ram[1] = empty_ram[0];
		empty_ram[0] = 1'b0;
	    end
	    
	    if ((rdcount_out == wr1_addr) && (rdcount_flag == wr1_flag)) begin
		empty_ram[3] = 1'b1;
	    end
	    else begin
		empty_ram[3] = 1'b0;
	    end

	    wr1_addr = wr_addr;
	    wr1_flag = awr_flag;

	end // if (sync == 1'b0)
      
    end // always @ (posedge rdclk_in)
    

    // Write clock
    always @(posedge wrclk_in) begin

	// DRC
	if ((injectsbiterr_in === 1) && !(en_ecc_write_int == 1 || en_ecc_read_int == 1)) 
	    $display("DRC Warning : INJECTSBITERR is not supported when neither EN_ECC_WRITE nor EN_ECCREAD = TRUE on X_FF36_INTERNAL_VLOG instance %m.");
	
	if ((injectdbiterr_in === 1) && !(en_ecc_write_int == 1 || en_ecc_read_int == 1)) 
	    $display("DRC Warning : INJECTDBITERR is not supported when neither EN_ECC_WRITE nor EN_ECCREAD = TRUE on X_FF36_INTERNAL_VLOG instance %m.");

		  
	// sync mode
	if (sync == 1'b1) begin

	    if (wren_in == 1'b1) begin
		
		if (full_out == 1'b0) begin

		    // ECC encode
		    if (EN_ECC_WRITE == "TRUE") begin
	  
			dip_ecc[0] = di_in[0]^di_in[1]^di_in[3]^di_in[4]^di_in[6]^di_in[8]
		                 ^di_in[10]^di_in[11]^di_in[13]^di_in[15]^di_in[17]^di_in[19]
		                 ^di_in[21]^di_in[23]^di_in[25]^di_in[26]^di_in[28]
            	                 ^di_in[30]^di_in[32]^di_in[34]^di_in[36]^di_in[38]
		                 ^di_in[40]^di_in[42]^di_in[44]^di_in[46]^di_in[48]
		                 ^di_in[50]^di_in[52]^di_in[54]^di_in[56]^di_in[57]^di_in[59]
		                 ^di_in[61]^di_in[63];

			dip_ecc[1] = di_in[0]^di_in[2]^di_in[3]^di_in[5]^di_in[6]^di_in[9]
                                 ^di_in[10]^di_in[12]^di_in[13]^di_in[16]^di_in[17]
                                 ^di_in[20]^di_in[21]^di_in[24]^di_in[25]^di_in[27]^di_in[28]
                                 ^di_in[31]^di_in[32]^di_in[35]^di_in[36]^di_in[39]
                                 ^di_in[40]^di_in[43]^di_in[44]^di_in[47]^di_in[48]
                                 ^di_in[51]^di_in[52]^di_in[55]^di_in[56]^di_in[58]^di_in[59]
                                 ^di_in[62]^di_in[63];

			dip_ecc[2] = di_in[1]^di_in[2]^di_in[3]^di_in[7]^di_in[8]^di_in[9]
                                 ^di_in[10]^di_in[14]^di_in[15]^di_in[16]^di_in[17]
                                 ^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[45]^di_in[46]^di_in[47]^di_in[48]
                                 ^di_in[53]^di_in[54]^di_in[55]^di_in[56]
                                 ^di_in[60]^di_in[61]^di_in[62]^di_in[63];
	
			dip_ecc[3] = di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
			         ^di_in[10]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                                 ^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

			dip_ecc[4] = di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                                 ^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];


			dip_ecc[5] = di_in[26]^di_in[27]^di_in[28]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

			dip_ecc[6] = di_in[57]^di_in[58]^di_in[59]
			         ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

			dip_ecc[7] = dip_ecc[0]^dip_ecc[1]^dip_ecc[2]^dip_ecc[3]^dip_ecc[4]^dip_ecc[5]^dip_ecc[6]
                                 ^di_in[0]^di_in[1]^di_in[2]^di_in[3]^di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
                                 ^di_in[10]^di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[26]^di_in[27]^di_in[28]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56]^di_in[57]^di_in[58]^di_in[59]
                                 ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

			eccparity_out = dip_ecc;

			dip_int = dip_ecc;  // only 64 bits width
			
		    end // if (EN_ECC_WRITE == "TRUE")
		    else begin
			
			dip_int = dip_in; // only 64 bits width
			
		    end // else: !if(EN_ECC_WRITE == "TRUE")
		    // end ecc encode

		    
		    if (rst_in === 1'b0) begin
		  

			// injecting error
   			di_ecc_col = di_in;

			if (en_ecc_write_int == 1 || en_ecc_read_int == 1) begin
			    
			    if (injectdbiterr_in === 1) begin
				di_ecc_col[30] = ~di_ecc_col[30];
				di_ecc_col[62] = ~di_ecc_col[62];
			    end
			    else if (injectsbiterr_in === 1) begin
				di_ecc_col[30] = ~di_ecc_col[30];
			    end

			end // if (en_ecc_write_int == 1 || en_ecc_read_int == 1)
			
			mem[wr_addr] = di_ecc_col;
			memp[wr_addr] = dip_int;
			
			wr_addr = (wr_addr + 1) % addr_limit;
			if (wr_addr == 0)
			    wr_flag = ~wr_flag;
			
		    end		
		end // if (full_out == 1'b0)
	    end // if (wren_in == 1'b1)
	    

	    if (rst_in === 1'b0) begin

		wrerr_out = (wren_in == 1'b1) && (full_out == 1'b1);
		
		
		if (rden_in == 1'b1) begin
		    full_out = 1'b0;
		end
		else if (rdcount_out == wr_addr && rdcount_flag != wr_flag)
		    full_out = 1'b1;
		
		if ((((rdcount_out + ae_empty) < wr_addr) && (rdcount_flag == wr_flag)) || (((rdcount_out + ae_empty) < (wr_addr + addr_limit) && (rdcount_flag != wr_flag)))) begin
		    
		    if (rdcount_out <= rdcount_out + ae_empty || rdcount_flag != wr_flag)
			almostempty_out = 1'b0;
		    
		end
		
		if ((((rdcount_out + addr_limit) <= (wr_addr + ae_full)) && (rdcount_flag == wr_flag)) || ((rdcount_out <= (wr_addr + ae_full)) && (rdcount_flag != wr_flag))) begin
		    almostfull_out = 1'b1;
		end

	    end // if (rst_in === 1'b0)
	    
	end // if (sync == 1'b1)

	// async mode
	else if (sync == 1'b0) begin

	    wren_reg = wren_in;

	    if (wren_reg == 1'b1 && full_out == 1'b0) begin	

		// ECC encode
		if (EN_ECC_WRITE == "TRUE") begin
		    
		    dip_ecc[0] = di_in[0]^di_in[1]^di_in[3]^di_in[4]^di_in[6]^di_in[8]
		                 ^di_in[10]^di_in[11]^di_in[13]^di_in[15]^di_in[17]^di_in[19]
		                 ^di_in[21]^di_in[23]^di_in[25]^di_in[26]^di_in[28]
            	                 ^di_in[30]^di_in[32]^di_in[34]^di_in[36]^di_in[38]
		                 ^di_in[40]^di_in[42]^di_in[44]^di_in[46]^di_in[48]
		                 ^di_in[50]^di_in[52]^di_in[54]^di_in[56]^di_in[57]^di_in[59]
		                 ^di_in[61]^di_in[63];

		    dip_ecc[1] = di_in[0]^di_in[2]^di_in[3]^di_in[5]^di_in[6]^di_in[9]
                                 ^di_in[10]^di_in[12]^di_in[13]^di_in[16]^di_in[17]
                                 ^di_in[20]^di_in[21]^di_in[24]^di_in[25]^di_in[27]^di_in[28]
                                 ^di_in[31]^di_in[32]^di_in[35]^di_in[36]^di_in[39]
                                 ^di_in[40]^di_in[43]^di_in[44]^di_in[47]^di_in[48]
                                 ^di_in[51]^di_in[52]^di_in[55]^di_in[56]^di_in[58]^di_in[59]
                                 ^di_in[62]^di_in[63];

		    dip_ecc[2] = di_in[1]^di_in[2]^di_in[3]^di_in[7]^di_in[8]^di_in[9]
                                 ^di_in[10]^di_in[14]^di_in[15]^di_in[16]^di_in[17]
                                 ^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[45]^di_in[46]^di_in[47]^di_in[48]
                                 ^di_in[53]^di_in[54]^di_in[55]^di_in[56]
                                 ^di_in[60]^di_in[61]^di_in[62]^di_in[63];
	
		    dip_ecc[3] = di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
			         ^di_in[10]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                                 ^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

		    dip_ecc[4] = di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                                 ^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];


		    dip_ecc[5] = di_in[26]^di_in[27]^di_in[28]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

		    dip_ecc[6] = di_in[57]^di_in[58]^di_in[59]
			         ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

		    dip_ecc[7] = dip_ecc[0]^dip_ecc[1]^dip_ecc[2]^dip_ecc[3]^dip_ecc[4]^dip_ecc[5]^dip_ecc[6]
                                 ^di_in[0]^di_in[1]^di_in[2]^di_in[3]^di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
                                 ^di_in[10]^di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[26]^di_in[27]^di_in[28]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56]^di_in[57]^di_in[58]^di_in[59]
                                 ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

		    eccparity_out = dip_ecc;

		    dip_int = dip_ecc;  // only 64 bits width
			
		end // if (EN_ECC_WRITE == "TRUE")
		else begin
		    
		    dip_int = dip_in; // only 64 bits width
		    
		end // else: !if(EN_ECC_WRITE == "TRUE")
		// end ecc encode
		
	     if (rst_in === 1'b0) begin

		// injecting error
   		di_ecc_col = di_in;

		if (en_ecc_write_int == 1 || en_ecc_read_int == 1) begin
		
		    if (injectdbiterr_in === 1) begin
			di_ecc_col[30] = ~di_ecc_col[30];
			di_ecc_col[62] = ~di_ecc_col[62];
		    end
		    else if (injectsbiterr_in === 1) begin
			di_ecc_col[30] = ~di_ecc_col[30];
		    end

		end // if (en_ecc_write_int == 1 || en_ecc_read_int == 1)
		
		mem[wr_addr] = di_ecc_col;
		memp[wr_addr] = dip_int;
		
		#1;
		wr_addr = (wr_addr + 1) % addr_limit;

		if (wr_addr == 0)
		    awr_flag = ~awr_flag;

		if (wr_addr == addr_limit - 1)
		    wr_flag = ~wr_flag;


	     end // if (rst_in === 1'b0)
	    
	    end // if (wren_reg == 1'b1 && full_out == 1'b0)
	    

	  if (rst_in === 1'b0) begin	    		

	    wrerr_out = (wren_reg == 1'b1) && (full_out == 1'b1);

	    almostfull_out = almostfull_int[3];

	    if ((((rdcount_out + addr_limit) <= (wr_addr + ae_full)) && (rdcount_flag == awr_flag)) || ((rdcount_out <= (wr_addr + ae_full)) && (rdcount_flag != awr_flag))) begin
		almostfull_int[3] = 1'b1;
		almostfull_int[2] = 1'b1;
		almostfull_int[1] = 1'b1;
		almostfull_int[0] = 1'b1;
	    end
	    else if (almostfull_int[2] == 1'b0) begin

		if (wr_addr <= wr_addr + ae_full || rdcount_flag == awr_flag) begin
		    almostfull_int[3] = almostfull_int[0];
		    almostfull_int[0] = 1'b0;
		    end
	    end

	    if ((((rdcount_out + ae_empty) < wr_addr) && (rdcount_flag == awr_flag)) || (((rdcount_out + ae_empty) < (wr_addr + addr_limit)) && (rdcount_flag != awr_flag))) begin
		if (wren_reg == 1'b1) begin
		    almostempty_int[2] = almostempty_int[1];
		    almostempty_int[1] = 1'b0;
		end
	    end
	    else begin
		almostempty_int[2] = 1'b1;
		almostempty_int[1] = 1'b1;
	    end

	    if (wren_reg == 1'b1 || full_out == 1'b1)
		full_out = full_int[1];

	    if (((rdcount_out == wr_addr) || (rdcount_out - 1 == wr_addr || (rdcount_out + addr_limit - 1 == wr_addr))) && almostfull_out) begin
		full_int[1] = 1'b1;
		full_int[0] = 1'b1;
	    end
	    else begin
		full_int[1] = full_int[0];
		full_int[0] = 0;
	    end
	  
	  end // if (rst_in === 1'b0)
	
	end // if (sync == 1'b0)
    
    end // always @ (posedge wrclk_in)
    
    
end // case: "VIRTEX6"
"7SERIES" : begin
    
    // read clock
    always @(posedge rdclk_in) begin

      // SRVAL in output register mode
      if (DO_REG == 1 && sync == 1'b1 && rstreg_in === 1'b1) begin

	  do_outreg = SRVAL[0 +: mem_width+1];
	  
	  if (mem_width+1 >= 8)
	      dop_outreg = SRVAL[mem_width+1 +: memp_width+1];
      end

	
      // sync mode
      if (sync == 1'b1) begin

	    // output register
	    if (DO_REG == 1 && regce_in === 1'b1 && rstreg_in === 1'b0) begin
		    
		do_outreg = do_out;
		dop_outreg = dop_out;
		dbiterr_out_out = dbiterr_out; // reg out in sync mode
		sbiterr_out_out = sbiterr_out;
		
	    end

		    
	    if (rden_in == 1'b1) begin

		if (empty_out == 1'b0) begin
		    
		    do_buf = mem[rdcount_out];
		    dop_buf = memp[rdcount_out];
		    
		    // ECC decode
		    if (EN_ECC_READ == "TRUE") begin
	  
			// regenerate parity
			dopr_ecc[0] = do_buf[0]^do_buf[1]^do_buf[3]^do_buf[4]^do_buf[6]^do_buf[8]
					  ^do_buf[10]^do_buf[11]^do_buf[13]^do_buf[15]^do_buf[17]^do_buf[19]
					  ^do_buf[21]^do_buf[23]^do_buf[25]^do_buf[26]^do_buf[28]
            				  ^do_buf[30]^do_buf[32]^do_buf[34]^do_buf[36]^do_buf[38]
 		                          ^do_buf[40]^do_buf[42]^do_buf[44]^do_buf[46]^do_buf[48]
		                          ^do_buf[50]^do_buf[52]^do_buf[54]^do_buf[56]^do_buf[57]^do_buf[59]
		                          ^do_buf[61]^do_buf[63];

			dopr_ecc[1] = do_buf[0]^do_buf[2]^do_buf[3]^do_buf[5]^do_buf[6]^do_buf[9]
                                          ^do_buf[10]^do_buf[12]^do_buf[13]^do_buf[16]^do_buf[17]
                                          ^do_buf[20]^do_buf[21]^do_buf[24]^do_buf[25]^do_buf[27]^do_buf[28]
                                          ^do_buf[31]^do_buf[32]^do_buf[35]^do_buf[36]^do_buf[39]
                                          ^do_buf[40]^do_buf[43]^do_buf[44]^do_buf[47]^do_buf[48]
                                          ^do_buf[51]^do_buf[52]^do_buf[55]^do_buf[56]^do_buf[58]^do_buf[59]
                                          ^do_buf[62]^do_buf[63];

			dopr_ecc[2] = do_buf[1]^do_buf[2]^do_buf[3]^do_buf[7]^do_buf[8]^do_buf[9]
                                          ^do_buf[10]^do_buf[14]^do_buf[15]^do_buf[16]^do_buf[17]
                                          ^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[29]
                                          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[37]^do_buf[38]^do_buf[39]
                                          ^do_buf[40]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]
                                          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]
                                          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
	
			dopr_ecc[3] = do_buf[4]^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]
		                          ^do_buf[10]^do_buf[18]^do_buf[19]
                                          ^do_buf[20]^do_buf[21]^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]
                                          ^do_buf[33]^do_buf[34]^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]
                                          ^do_buf[39]^do_buf[40]^do_buf[49]^do_buf[50]
                                          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[4] = do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
                                          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[41]^do_buf[42]^do_buf[43]
				          ^do_buf[44]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]
				          ^do_buf[50]^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];


			dopr_ecc[5] = do_buf[26]^do_buf[27]^do_buf[28]^do_buf[29]
				          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]^do_buf[35]
				          ^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]
				          ^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]
				          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[6] = do_buf[57]^do_buf[58]^do_buf[59]
				          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];

			dopr_ecc[7] = dop_buf[0]^dop_buf[1]^dop_buf[2]^dop_buf[3]^dop_buf[4]^dop_buf[5]
				          ^dop_buf[6]^do_buf[0]^do_buf[1]^do_buf[2]^do_buf[3]^do_buf[4]
				          ^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]^do_buf[10]
				          ^do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
				          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[26]^do_buf[27]^do_buf[28]
				          ^do_buf[29]^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]
				          ^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]^do_buf[46]
				          ^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]^do_buf[51]^do_buf[52]
				          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]^do_buf[57]^do_buf[58]
				          ^do_buf[59]^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
			    
			syndrome = dopr_ecc ^ dop_buf;

			// checking error
			if (syndrome !== 0) begin

			    if (syndrome[7]) begin  // dectect single bit error

				ecc_bit_position = {do_buf[63:57], dop_buf[6], do_buf[56:26], dop_buf[5], do_buf[25:11], dop_buf[4], do_buf[10:4], dop_buf[3], do_buf[3:1], dop_buf[2], do_buf[0], dop_buf[1:0], dop_buf[7]};

				if (syndrome[6:0] > 71) begin
				    $display ("DRC Error : Simulation halted due Corrupted DIP. To correct this problem, make sure that reliable data is fed to the DIP. The correct Parity must be generated by a Hamming code encoder or encoder in the Block RAM. The output from the model is unreliable if there are more than 2 bit errors. The model doesn't warn if there is sporadic input of more than 2 bit errors due to the limitation in Hamming code.");
				    $finish;
				end
				
				ecc_bit_position[syndrome[6:0]] = ~ecc_bit_position[syndrome[6:0]]; // correct single bit error in the output 

				di_in_ecc_corrected = {ecc_bit_position[71:65], ecc_bit_position[63:33], ecc_bit_position[31:17], ecc_bit_position[15:9], ecc_bit_position[7:5], ecc_bit_position[3]}; // correct single bit error in the memory

				do_buf = di_in_ecc_corrected;
			
				dip_in_ecc_corrected = {ecc_bit_position[0], ecc_bit_position[64], ecc_bit_position[32], ecc_bit_position[16], ecc_bit_position[8], ecc_bit_position[4], ecc_bit_position[2:1]}; // correct single bit error in the parity memory
				
				dop_buf = dip_in_ecc_corrected;
				
				dbiterr_out = 0;  // latch out in sync mode
				sbiterr_out = 1;

			    end
			    else if (!syndrome[7]) begin  // double bit error
				sbiterr_out = 0;
				dbiterr_out = 1;
				    
			    end
			end // if (syndrome !== 0)
			else begin
			    dbiterr_out = 0;
			    sbiterr_out = 0;
				
			end // else: !if(syndrome !== 0)
			    
		    end // if (EN_ECC_READ == "TRUE")
		    // end ecc decode

		    
		    if (DO_REG == 0) begin
			dbiterr_out_out = dbiterr_out;
			sbiterr_out_out = sbiterr_out;
		    end

		    
		    do_out = do_buf;
		    dop_out = dop_buf;

		    rdcount_out = (rdcount_out + 1) % addr_limit;
		    
		    if (rdcount_out == 0)
			rdcount_flag = ~rdcount_flag;

		end // if (empty_out == 1'b0)
	    end // if (rden_in == 1'b1)
	    


	    rderr_out = (rden_in == 1'b1) && (empty_out == 1'b1);
	    
	    
	    if (wren_in == 1'b1) begin
		empty_out = 1'b0;
	    end
	    else if (rdcount_out == wr_addr && rdcount_flag == wr_flag)
		empty_out = 1'b1;

	    if ((((rdcount_out + ae_empty) >= wr_addr) && (rdcount_flag == wr_flag)) || (((rdcount_out + ae_empty) >= (wr_addr + addr_limit) && (rdcount_flag != wr_flag)))) begin
		almostempty_out = 1'b1;
	    end

	    if ((((rdcount_out + addr_limit) > (wr_addr + ae_full)) && (rdcount_flag == wr_flag)) || ((rdcount_out > (wr_addr + ae_full)) && (rdcount_flag != wr_flag))) begin
		if (wr_addr <= wr_addr + ae_full || rdcount_flag == wr_flag)
		    almostfull_out = 1'b0;
	    end

	  
	end // if (sync == 1'b1)


	// async mode
	else if (sync == 1'b0) begin

	  wr_addr_sync_3 = wr_addr_sync_2;
	  wr_addr_sync_2 = wr_addr_sync_1;
	  wr_addr_sync_1 = wr_addr;

	  awr_flag_sync_2 = awr_flag_sync_1;
	  awr_flag_sync_1 = awr_flag;
	    
	    
	    if (fwft == 1'b0) begin
		if (((rden_in == 1'b1) && (rd_addr != rdcount_out)) || (rst_in === 1'b1 && fwft_prefetch_flag == 1)) begin

		    fwft_prefetch_flag = 0;
		    
		    do_out = do_in;
		    if (DATA_WIDTH != 4) 
			dop_out = dop_in;
		    rd_addr = (rd_addr + 1) % addr_limit;
		    if (rd_addr == 0)
			rd_flag = ~rd_flag;

		    dbiterr_out_out = dbiterr_out; // reg out in async mode
		    sbiterr_out_out = sbiterr_out;

		end

		
		if (empty_ram[0] == 1'b0 && (rden_in == 1'b1 || rd_addr == rdcount_out)) begin

		    do_buf = mem[rdcount_out];
		    dop_buf = memp[rdcount_out];
		    
		    // ECC decode
		    if (EN_ECC_READ == "TRUE") begin

			// regenerate parity
			dopr_ecc[0] = do_buf[0]^do_buf[1]^do_buf[3]^do_buf[4]^do_buf[6]^do_buf[8]
					  ^do_buf[10]^do_buf[11]^do_buf[13]^do_buf[15]^do_buf[17]^do_buf[19]
					  ^do_buf[21]^do_buf[23]^do_buf[25]^do_buf[26]^do_buf[28]
            				  ^do_buf[30]^do_buf[32]^do_buf[34]^do_buf[36]^do_buf[38]
		                          ^do_buf[40]^do_buf[42]^do_buf[44]^do_buf[46]^do_buf[48]
		                          ^do_buf[50]^do_buf[52]^do_buf[54]^do_buf[56]^do_buf[57]^do_buf[59]
		                          ^do_buf[61]^do_buf[63];

			dopr_ecc[1] = do_buf[0]^do_buf[2]^do_buf[3]^do_buf[5]^do_buf[6]^do_buf[9]
                                          ^do_buf[10]^do_buf[12]^do_buf[13]^do_buf[16]^do_buf[17]
                                          ^do_buf[20]^do_buf[21]^do_buf[24]^do_buf[25]^do_buf[27]^do_buf[28]
                                          ^do_buf[31]^do_buf[32]^do_buf[35]^do_buf[36]^do_buf[39]
                                          ^do_buf[40]^do_buf[43]^do_buf[44]^do_buf[47]^do_buf[48]
                                          ^do_buf[51]^do_buf[52]^do_buf[55]^do_buf[56]^do_buf[58]^do_buf[59]
                                          ^do_buf[62]^do_buf[63];

			dopr_ecc[2] = do_buf[1]^do_buf[2]^do_buf[3]^do_buf[7]^do_buf[8]^do_buf[9]
                                          ^do_buf[10]^do_buf[14]^do_buf[15]^do_buf[16]^do_buf[17]
                                          ^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[29]
                                          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[37]^do_buf[38]^do_buf[39]
                                          ^do_buf[40]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]
                                          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]
                                          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
	
			dopr_ecc[3] = do_buf[4]^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]
		                          ^do_buf[10]^do_buf[18]^do_buf[19]
                                          ^do_buf[20]^do_buf[21]^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]
                                          ^do_buf[33]^do_buf[34]^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]
                                          ^do_buf[39]^do_buf[40]^do_buf[49]^do_buf[50]
                                          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[4] = do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
                                          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[41]^do_buf[42]^do_buf[43]
				          ^do_buf[44]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]
				          ^do_buf[50]^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];


			dopr_ecc[5] = do_buf[26]^do_buf[27]^do_buf[28]^do_buf[29]
				          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]^do_buf[35]
				          ^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]
				          ^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]
				          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[6] = do_buf[57]^do_buf[58]^do_buf[59]
				          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];

			dopr_ecc[7] = dop_buf[0]^dop_buf[1]^dop_buf[2]^dop_buf[3]^dop_buf[4]^dop_buf[5]
				          ^dop_buf[6]^do_buf[0]^do_buf[1]^do_buf[2]^do_buf[3]^do_buf[4]
				          ^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]^do_buf[10]
				          ^do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
				          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[26]^do_buf[27]^do_buf[28]
				          ^do_buf[29]^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]
				          ^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]^do_buf[46]
				          ^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]^do_buf[51]^do_buf[52]
				          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]^do_buf[57]^do_buf[58]
				          ^do_buf[59]^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
			    
			syndrome = dopr_ecc ^ dop_buf;
	  
			if (syndrome !== 0) begin
			    
			    if (syndrome[7]) begin  // dectect single bit error
				
				ecc_bit_position = {do_buf[63:57], dop_buf[6], do_buf[56:26], dop_buf[5], do_buf[25:11], dop_buf[4], do_buf[10:4], dop_buf[3], do_buf[3:1], dop_buf[2], do_buf[0], dop_buf[1:0], dop_buf[7]};

				if (syndrome[6:0] > 71) begin
				    $display ("DRC Error : Simulation halted due Corrupted DIP. To correct this problem, make sure that reliable data is fed to the DIP. The correct Parity must be generated by a Hamming code encoder or encoder in the Block RAM. The output from the model is unreliable if there are more than 2 bit errors. The model doesn't warn if there is sporadic input of more than 2 bit errors due to the limitation in Hamming code.");
				    $finish;
				end
				
				ecc_bit_position[syndrome[6:0]] = ~ecc_bit_position[syndrome[6:0]]; // correct single bit error in the output 
				
				di_in_ecc_corrected = {ecc_bit_position[71:65], ecc_bit_position[63:33], ecc_bit_position[31:17], ecc_bit_position[15:9], ecc_bit_position[7:5], ecc_bit_position[3]}; // correct single bit error in the memory
				
				do_buf = di_in_ecc_corrected;
				
				dip_in_ecc_corrected = {ecc_bit_position[0], ecc_bit_position[64], ecc_bit_position[32], ecc_bit_position[16], ecc_bit_position[8], ecc_bit_position[4], ecc_bit_position[2:1]}; // correct single bit error in the parity memory

				dop_buf = dip_in_ecc_corrected;
				
				dbiterr_out = 0;
				sbiterr_out = 1;
				
			    end
			    else if (!syndrome[7]) begin  // double bit error
				sbiterr_out = 0;
				dbiterr_out = 1;
				
			    end
			end // if (syndrome !== 0)
			else begin
			    dbiterr_out = 0;
			    sbiterr_out = 0;
			    
			end // else: !if(syndrome !== 0)
			
		    end // if (EN_ECC_READ == "TRUE")
		    // end ecc decode
		    
		    do_in = do_buf;
		    dop_in = dop_buf;

		    #0;
		    rdcount_out_m1 = rdcount_out;

		    rdcount_out = (rdcount_out + 1) % addr_limit;
		    if (rdcount_out == 0) begin
			rdcount_flag = ~rdcount_flag;
		    end
		end
	    end

	    // First word fall through = true
	    if (fwft == 1'b1) begin

		if ((rden_in == 1'b1) && (rd_addr != rd_prefetch)) begin
		    rd_prefetch = (rd_prefetch + 1) % addr_limit;
		    if (rd_prefetch == 0)
			rdprefetch_flag = ~rdprefetch_flag;
		end

		if ((rd_prefetch == rd_addr && rd_addr != rdcount_out) || (rst_in === 1'b1 && fwft_prefetch_flag == 1)) begin

		    fwft_prefetch_flag = 0;

		    do_out = do_in;
		    if (DATA_WIDTH != 4) 
			dop_out = dop_in;
		    rd_addr = (rd_addr + 1) % addr_limit;
		    if (rd_addr == 0)
			rd_flag = ~rd_flag;

		    dbiterr_out_out = dbiterr_out; // reg out in async mode
		    sbiterr_out_out = sbiterr_out;
		    
		end


		if (empty_ram[0] == 1'b0 && (rden_in == 1'b1 || rd_addr == rdcount_out)) begin

		    do_buf = mem[rdcount_out];
		    dop_buf = memp[rdcount_out];
		
		    // ECC decode
		    if (EN_ECC_READ == "TRUE") begin
			
			// regenerate parity
			dopr_ecc[0] = do_buf[0]^do_buf[1]^do_buf[3]^do_buf[4]^do_buf[6]^do_buf[8]
					  ^do_buf[10]^do_buf[11]^do_buf[13]^do_buf[15]^do_buf[17]^do_buf[19]
					  ^do_buf[21]^do_buf[23]^do_buf[25]^do_buf[26]^do_buf[28]
            				  ^do_buf[30]^do_buf[32]^do_buf[34]^do_buf[36]^do_buf[38]
		                          ^do_buf[40]^do_buf[42]^do_buf[44]^do_buf[46]^do_buf[48]
		                          ^do_buf[50]^do_buf[52]^do_buf[54]^do_buf[56]^do_buf[57]^do_buf[59]
		                          ^do_buf[61]^do_buf[63];

			dopr_ecc[1] = do_buf[0]^do_buf[2]^do_buf[3]^do_buf[5]^do_buf[6]^do_buf[9]
                                          ^do_buf[10]^do_buf[12]^do_buf[13]^do_buf[16]^do_buf[17]
                                          ^do_buf[20]^do_buf[21]^do_buf[24]^do_buf[25]^do_buf[27]^do_buf[28]
                                          ^do_buf[31]^do_buf[32]^do_buf[35]^do_buf[36]^do_buf[39]
                                          ^do_buf[40]^do_buf[43]^do_buf[44]^do_buf[47]^do_buf[48]
                                          ^do_buf[51]^do_buf[52]^do_buf[55]^do_buf[56]^do_buf[58]^do_buf[59]
                                          ^do_buf[62]^do_buf[63];

			dopr_ecc[2] = do_buf[1]^do_buf[2]^do_buf[3]^do_buf[7]^do_buf[8]^do_buf[9]
                                          ^do_buf[10]^do_buf[14]^do_buf[15]^do_buf[16]^do_buf[17]
                                          ^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[29]
                                          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[37]^do_buf[38]^do_buf[39]
                                          ^do_buf[40]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]
                                          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]
                                          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
	
			dopr_ecc[3] = do_buf[4]^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]
		                          ^do_buf[10]^do_buf[18]^do_buf[19]
                                          ^do_buf[20]^do_buf[21]^do_buf[22]^do_buf[23]^do_buf[24]^do_buf[25]
                                          ^do_buf[33]^do_buf[34]^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]
                                          ^do_buf[39]^do_buf[40]^do_buf[49]^do_buf[50]
                                          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[4] = do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
                                          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[41]^do_buf[42]^do_buf[43]
				          ^do_buf[44]^do_buf[45]^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]
				          ^do_buf[50]^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];


			dopr_ecc[5] = do_buf[26]^do_buf[27]^do_buf[28]^do_buf[29]
				          ^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]^do_buf[35]
				          ^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]
				          ^do_buf[46]^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]
				          ^do_buf[51]^do_buf[52]^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56];

			dopr_ecc[6] = do_buf[57]^do_buf[58]^do_buf[59]
				          ^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];

			dopr_ecc[7] = dop_buf[0]^dop_buf[1]^dop_buf[2]^dop_buf[3]^dop_buf[4]^dop_buf[5]
				          ^dop_buf[6]^do_buf[0]^do_buf[1]^do_buf[2]^do_buf[3]^do_buf[4]
				          ^do_buf[5]^do_buf[6]^do_buf[7]^do_buf[8]^do_buf[9]^do_buf[10]
				          ^do_buf[11]^do_buf[12]^do_buf[13]^do_buf[14]^do_buf[15]^do_buf[16]
				          ^do_buf[17]^do_buf[18]^do_buf[19]^do_buf[20]^do_buf[21]^do_buf[22]
				          ^do_buf[23]^do_buf[24]^do_buf[25]^do_buf[26]^do_buf[27]^do_buf[28]
				          ^do_buf[29]^do_buf[30]^do_buf[31]^do_buf[32]^do_buf[33]^do_buf[34]
				          ^do_buf[35]^do_buf[36]^do_buf[37]^do_buf[38]^do_buf[39]^do_buf[40]
				          ^do_buf[41]^do_buf[42]^do_buf[43]^do_buf[44]^do_buf[45]^do_buf[46]
				          ^do_buf[47]^do_buf[48]^do_buf[49]^do_buf[50]^do_buf[51]^do_buf[52]
				          ^do_buf[53]^do_buf[54]^do_buf[55]^do_buf[56]^do_buf[57]^do_buf[58]
				          ^do_buf[59]^do_buf[60]^do_buf[61]^do_buf[62]^do_buf[63];
			    
			syndrome = dopr_ecc ^ dop_buf;
	  
			if (syndrome !== 0) begin
			    
			    if (syndrome[7]) begin  // dectect single bit error
				
				ecc_bit_position = {do_buf[63:57], dop_buf[6], do_buf[56:26], dop_buf[5], do_buf[25:11], dop_buf[4], do_buf[10:4], dop_buf[3], do_buf[3:1], dop_buf[2], do_buf[0], dop_buf[1:0], dop_buf[7]};

				if (syndrome[6:0] > 71) begin
				    $display ("DRC Error : Simulation halted due Corrupted DIP. To correct this problem, make sure that reliable data is fed to the DIP. The correct Parity must be generated by a Hamming code encoder or encoder in the Block RAM. The output from the model is unreliable if there are more than 2 bit errors. The model doesn't warn if there is sporadic input of more than 2 bit errors due to the limitation in Hamming code.");
				    $finish;
				end
				
				ecc_bit_position[syndrome[6:0]] = ~ecc_bit_position[syndrome[6:0]]; // correct single bit error in the output 
				
				di_in_ecc_corrected = {ecc_bit_position[71:65], ecc_bit_position[63:33], ecc_bit_position[31:17], ecc_bit_position[15:9], ecc_bit_position[7:5], ecc_bit_position[3]}; // correct single bit error in the memory
				
				do_buf = di_in_ecc_corrected;
				
				dip_in_ecc_corrected = {ecc_bit_position[0], ecc_bit_position[64], ecc_bit_position[32], ecc_bit_position[16], ecc_bit_position[8], ecc_bit_position[4], ecc_bit_position[2:1]}; // correct single bit error in the parity memory

				dop_buf = dip_in_ecc_corrected;

				dbiterr_out = 0;
				sbiterr_out = 1;
				
			    end
			    else if (!syndrome[7]) begin  // double bit error
				sbiterr_out = 0;
				dbiterr_out = 1;
				    
			    end
			end // if (syndrome !== 0)
			else begin
			    dbiterr_out = 0;
			    sbiterr_out = 0;
			    
			end // else: !if(syndrome !== 0)
			
		    end // if (EN_ECC_READ == "TRUE")
		    // end ecc decode
	   
		    do_in = do_buf;
		    dop_in = dop_buf;

		    #0;
		    rdcount_out_m1 = rdcount_out;
		    
		    rdcount_out = (rdcount_out + 1) % addr_limit;
		    if (rdcount_out == 0)
			rdcount_flag = ~rdcount_flag;
		end
	    end // if (fwft == 1'b1)
	    
	    
	    rderr_out = (rden_in == 1'b1) && (empty_out == 1'b1);
	    

	    almostempty_out = almostempty_int[0];
	    
	    if (wr_addr_sync_3 - rdcount_out <= ae_empty)
		almostempty_int[0] = 1'b1;
	    else
		almostempty_int[0] = 1'b0;
	    

	    if (fwft == 1'b0) begin
		if ((rdcount_out == rd_addr) && (rdcount_flag == rd_flag)) begin
		    empty_out = 1'b1;
		end
		else begin
		    empty_out = 1'b0;
		end
	    end // if (fwft == 1'b0)
	    else if (fwft == 1'b1) begin
		if ((rd_prefetch == rd_addr) && (rdprefetch_flag == rd_flag)) begin
		    empty_out = 1'b1;
		end
		else begin
		    empty_out = 1'b0;
		end
	    end


	    if ((rdcount_out == wr_addr_sync_2) && (rdcount_flag == awr_flag_sync_2)) begin
		empty_ram[0] = 1'b1;
	    end
	    else begin
		empty_ram[0] = 1'b0;
	    end


	end // if (sync == 1'b0)
      
    end // always @ (posedge rdclk_in)

    
    // Write clock
    always @(posedge wrclk_in) begin

	// DRC
	if ((injectsbiterr_in === 1) && !(en_ecc_write_int == 1 || en_ecc_read_int == 1)) 
	    $display("DRC Warning : INJECTSBITERR is not supported when neither EN_ECC_WRITE nor EN_ECCREAD = TRUE on X_FF36_INTERNAL_VLOG instance %m.");
	
	if ((injectdbiterr_in === 1) && !(en_ecc_write_int == 1 || en_ecc_read_int == 1)) 
	    $display("DRC Warning : INJECTDBITERR is not supported when neither EN_ECC_WRITE nor EN_ECCREAD = TRUE on X_FF36_INTERNAL_VLOG instance %m.");


	// sync mode
	if (sync == 1'b1) begin

	    if (wren_in == 1'b1) begin
		
		if (full_out == 1'b0) begin

		    // ECC encode
		    if (EN_ECC_WRITE == "TRUE") begin
	  
			dip_ecc[0] = di_in[0]^di_in[1]^di_in[3]^di_in[4]^di_in[6]^di_in[8]
		                 ^di_in[10]^di_in[11]^di_in[13]^di_in[15]^di_in[17]^di_in[19]
		                 ^di_in[21]^di_in[23]^di_in[25]^di_in[26]^di_in[28]
            	                 ^di_in[30]^di_in[32]^di_in[34]^di_in[36]^di_in[38]
		                 ^di_in[40]^di_in[42]^di_in[44]^di_in[46]^di_in[48]
		                 ^di_in[50]^di_in[52]^di_in[54]^di_in[56]^di_in[57]^di_in[59]
		                 ^di_in[61]^di_in[63];

			dip_ecc[1] = di_in[0]^di_in[2]^di_in[3]^di_in[5]^di_in[6]^di_in[9]
                                 ^di_in[10]^di_in[12]^di_in[13]^di_in[16]^di_in[17]
                                 ^di_in[20]^di_in[21]^di_in[24]^di_in[25]^di_in[27]^di_in[28]
                                 ^di_in[31]^di_in[32]^di_in[35]^di_in[36]^di_in[39]
                                 ^di_in[40]^di_in[43]^di_in[44]^di_in[47]^di_in[48]
                                 ^di_in[51]^di_in[52]^di_in[55]^di_in[56]^di_in[58]^di_in[59]
                                 ^di_in[62]^di_in[63];

			dip_ecc[2] = di_in[1]^di_in[2]^di_in[3]^di_in[7]^di_in[8]^di_in[9]
                                 ^di_in[10]^di_in[14]^di_in[15]^di_in[16]^di_in[17]
                                 ^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[45]^di_in[46]^di_in[47]^di_in[48]
                                 ^di_in[53]^di_in[54]^di_in[55]^di_in[56]
                                 ^di_in[60]^di_in[61]^di_in[62]^di_in[63];
	
			dip_ecc[3] = di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
			         ^di_in[10]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                                 ^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

			dip_ecc[4] = di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                                 ^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];


			dip_ecc[5] = di_in[26]^di_in[27]^di_in[28]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

			dip_ecc[6] = di_in[57]^di_in[58]^di_in[59]
			         ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

			dip_ecc[7] = dip_ecc[0]^dip_ecc[1]^dip_ecc[2]^dip_ecc[3]^dip_ecc[4]^dip_ecc[5]^dip_ecc[6]
                                 ^di_in[0]^di_in[1]^di_in[2]^di_in[3]^di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
                                 ^di_in[10]^di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[26]^di_in[27]^di_in[28]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56]^di_in[57]^di_in[58]^di_in[59]
                                 ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

			eccparity_out = dip_ecc;

			dip_int = dip_ecc;  // only 64 bits width
			
		    end // if (EN_ECC_WRITE == "TRUE")
		    else begin
			
			dip_int = dip_in; // only 64 bits width
			
		    end // else: !if(EN_ECC_WRITE == "TRUE")
		    // end ecc encode

		    
		    if (rst_in === 1'b0) begin
		  

			// injecting error
   			di_ecc_col = di_in;

			if (en_ecc_write_int == 1 || en_ecc_read_int == 1) begin
			    
			    if (injectdbiterr_in === 1) begin
				di_ecc_col[30] = ~di_ecc_col[30];
				di_ecc_col[62] = ~di_ecc_col[62];
			    end
			    else if (injectsbiterr_in === 1) begin
				di_ecc_col[30] = ~di_ecc_col[30];
			    end

			end // if (en_ecc_write_int == 1 || en_ecc_read_int == 1)
			
			mem[wr_addr] = di_ecc_col;
			memp[wr_addr] = dip_int;
			
			wr_addr = (wr_addr + 1) % addr_limit;
			if (wr_addr == 0)
			    wr_flag = ~wr_flag;
			
		    end		
		end // if (full_out == 1'b0)
	    end // if (wren_in == 1'b1)
	    

	    if (rst_in === 1'b0) begin

		wrerr_out = (wren_in == 1'b1) && (full_out == 1'b1);
		
		
		if (rden_in == 1'b1) begin
		    full_out = 1'b0;
		end
		else if (rdcount_out == wr_addr && rdcount_flag != wr_flag)
		    full_out = 1'b1;
		
		if ((((rdcount_out + ae_empty) < wr_addr) && (rdcount_flag == wr_flag)) || (((rdcount_out + ae_empty) < (wr_addr + addr_limit) && (rdcount_flag != wr_flag)))) begin
		    
		    if (rdcount_out <= rdcount_out + ae_empty || rdcount_flag != wr_flag)
			almostempty_out = 1'b0;
		    
		end
		
		if ((((rdcount_out + addr_limit) <= (wr_addr + ae_full)) && (rdcount_flag == wr_flag)) || ((rdcount_out <= (wr_addr + ae_full)) && (rdcount_flag != wr_flag))) begin
		    almostfull_out = 1'b1;
		end

	    end // if (rst_in === 1'b0)
	    
	end // if (sync == 1'b1)

	
	// async mode
	else if (sync == 1'b0) begin

	    rdcount_out_sync_3 = rdcount_out_sync_2;
	    rdcount_out_sync_2 = rdcount_out_sync_1;
	    rdcount_out_sync_1 = rdcount_out_m1;

	    
	    if (wren_in == 1'b1 && full_out == 1'b0) begin

		// ECC encode
		if (EN_ECC_WRITE == "TRUE") begin
		    
		    dip_ecc[0] = di_in[0]^di_in[1]^di_in[3]^di_in[4]^di_in[6]^di_in[8]
		                 ^di_in[10]^di_in[11]^di_in[13]^di_in[15]^di_in[17]^di_in[19]
		                 ^di_in[21]^di_in[23]^di_in[25]^di_in[26]^di_in[28]
            	                 ^di_in[30]^di_in[32]^di_in[34]^di_in[36]^di_in[38]
		                 ^di_in[40]^di_in[42]^di_in[44]^di_in[46]^di_in[48]
		                 ^di_in[50]^di_in[52]^di_in[54]^di_in[56]^di_in[57]^di_in[59]
		                 ^di_in[61]^di_in[63];

		    dip_ecc[1] = di_in[0]^di_in[2]^di_in[3]^di_in[5]^di_in[6]^di_in[9]
                                 ^di_in[10]^di_in[12]^di_in[13]^di_in[16]^di_in[17]
                                 ^di_in[20]^di_in[21]^di_in[24]^di_in[25]^di_in[27]^di_in[28]
                                 ^di_in[31]^di_in[32]^di_in[35]^di_in[36]^di_in[39]
                                 ^di_in[40]^di_in[43]^di_in[44]^di_in[47]^di_in[48]
                                 ^di_in[51]^di_in[52]^di_in[55]^di_in[56]^di_in[58]^di_in[59]
                                 ^di_in[62]^di_in[63];

		    dip_ecc[2] = di_in[1]^di_in[2]^di_in[3]^di_in[7]^di_in[8]^di_in[9]
                                 ^di_in[10]^di_in[14]^di_in[15]^di_in[16]^di_in[17]
                                 ^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[45]^di_in[46]^di_in[47]^di_in[48]
                                 ^di_in[53]^di_in[54]^di_in[55]^di_in[56]
                                 ^di_in[60]^di_in[61]^di_in[62]^di_in[63];
	
		    dip_ecc[3] = di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
			         ^di_in[10]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                                 ^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

		    dip_ecc[4] = di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]
                                 ^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];


		    dip_ecc[5] = di_in[26]^di_in[27]^di_in[28]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56];

		    dip_ecc[6] = di_in[57]^di_in[58]^di_in[59]
			         ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

		    dip_ecc[7] = dip_ecc[0]^dip_ecc[1]^dip_ecc[2]^dip_ecc[3]^dip_ecc[4]^dip_ecc[5]^dip_ecc[6]
                                 ^di_in[0]^di_in[1]^di_in[2]^di_in[3]^di_in[4]^di_in[5]^di_in[6]^di_in[7]^di_in[8]^di_in[9]
                                 ^di_in[10]^di_in[11]^di_in[12]^di_in[13]^di_in[14]^di_in[15]^di_in[16]^di_in[17]^di_in[18]^di_in[19]
                                 ^di_in[20]^di_in[21]^di_in[22]^di_in[23]^di_in[24]^di_in[25]^di_in[26]^di_in[27]^di_in[28]^di_in[29]
                                 ^di_in[30]^di_in[31]^di_in[32]^di_in[33]^di_in[34]^di_in[35]^di_in[36]^di_in[37]^di_in[38]^di_in[39]
                                 ^di_in[40]^di_in[41]^di_in[42]^di_in[43]^di_in[44]^di_in[45]^di_in[46]^di_in[47]^di_in[48]^di_in[49]
                                 ^di_in[50]^di_in[51]^di_in[52]^di_in[53]^di_in[54]^di_in[55]^di_in[56]^di_in[57]^di_in[58]^di_in[59]
                                 ^di_in[60]^di_in[61]^di_in[62]^di_in[63];

		    eccparity_out = dip_ecc;

		    dip_int = dip_ecc;  // only 64 bits width
			
		end // if (EN_ECC_WRITE == "TRUE")
		else begin
		    
		    dip_int = dip_in; // only 64 bits width
		    
		end // else: !if(EN_ECC_WRITE == "TRUE")
		// end ecc encode
		
	     if (rst_in === 1'b0) begin

		// injecting error
   		di_ecc_col = di_in;

		if (en_ecc_write_int == 1 || en_ecc_read_int == 1) begin
		
		    if (injectdbiterr_in === 1) begin
			di_ecc_col[30] = ~di_ecc_col[30];
			di_ecc_col[62] = ~di_ecc_col[62];
		    end
		    else if (injectsbiterr_in === 1) begin
			di_ecc_col[30] = ~di_ecc_col[30];
		    end

		end // if (en_ecc_write_int == 1 || en_ecc_read_int == 1)
		
		mem[wr_addr] = di_ecc_col;
		memp[wr_addr] = dip_int;

		#0;
		wr_addr = (wr_addr + 1) % addr_limit;

		if (wr_addr == 0)
		    awr_flag = ~awr_flag;

		if (wr_addr == addr_limit - 1)
		    wr_flag = ~wr_flag;


	     end // if (rst_in === 1'b0)
	    
	    end // if (wren_in == 1'b1 && full_out == 1'b0)
	    
	    

	    if (rst_in === 1'b0) begin	    		

		wrerr_out = (wren_in == 1'b1) && (full_out == 1'b1);

		almostfull_out = almostfull_int[0];
		
		if (rdcount_out_sync_3 - wr_addr <= ae_full)
		    almostfull_int[0] = 1'b1;
		else
		    almostfull_int[0] = 1'b0;
		

	      	full_out = full_v3;

		rm1w_eq = (rdcount_out_sync_2 == wr_addr) ? 1 : 0;

		if (wr_addr + 1 == addr_limit) // wr_addr(FF) + 1 != 0
		    rm1wp1_eq = (rdcount_out_sync_2 == 0) ? 1 : 0;
		else
		    rm1wp1_eq = (rdcount_out_sync_2 == wr_addr + 1) ? 1 : 0;

		
		//fwft prefetch
		if (empty_out == 1'b1 && wren_in === 1'b1 && fwft_prefetch_flag == 0)
		    fwft_prefetch_flag = 1;

		
	    end // if (rst_in === 1'b0)
	
	end // if (sync == 1'b0)
	
    end // always @ (posedge wrclk_in)
    
end // case: "7SERIES"

endcase // case(SIM_DEVICE)
endgenerate
    

    // output register
    always @(do_out or dop_out or do_outreg or dop_outreg) begin

	if (sync == 1)
	    
	    case (DO_REG)

		0 : begin
	                do_out_mux = do_out;
		        dop_out_mux = dop_out;
	            end
		1 : begin
		        do_out_mux = do_outreg;
		        dop_out_mux = dop_outreg;
	            end
		default : begin
	                      $display("Attribute Syntax Error : The attribute DO_REG on X_FF36_INTERNAL_VLOG instance %m is set to %2d.  Legal values for this attribute are 0 or 1.", DO_REG);
	                      $finish;
	                  end
	    endcase

	else begin
	    do_out_mux = do_out;
	    dop_out_mux = dop_out;
	end // else: !if(sync == 1)
	
    end // always @ (do_out or dop_out or do_outreg or dop_outreg)

    
    // matching HW behavior to X the unused output bits
    assign do_out_out = (DATA_WIDTH == 4) ? {60'bx, do_out_mux[3:0]}
                      : (DATA_WIDTH == 9) ? {56'bx, do_out_mux[7:0]}
                      : (DATA_WIDTH == 18) ? {48'bx, do_out_mux[15:0]}
                      : (DATA_WIDTH == 36) ? {32'bx, do_out_mux[31:0]}
	              : (DATA_WIDTH == 72) ? do_out_mux
                      : do_out_mux;

    // matching HW behavior to X the unused output bits
    assign dop_out_out = (DATA_WIDTH ==  9) ? {7'bx, dop_out_mux[0:0]}
                       : (DATA_WIDTH == 18) ? {6'bx, dop_out_mux[1:0]}
		       : (DATA_WIDTH == 36) ? {4'bx, dop_out_mux[3:0]}
	               : (DATA_WIDTH == 72) ? dop_out_mux
                       : 8'bx;

    
    // matching HW behavior to pull up the unused output bits
    always @(wr_addr) begin 

	if (FIFO_SIZE == 18)
	    case (DATA_WIDTH)
		4 : wr_addr_out = {1'b1, wr_addr[11:0]};
		9 : wr_addr_out = {2'b11, wr_addr[10:0]};
		18 : wr_addr_out = {3'b111, wr_addr[9:0]};
		36 : wr_addr_out = {4'hf, wr_addr[8:0]};
		default : wr_addr_out = wr_addr;
	    endcase // case(DATA_WIDTH)
	else
	    case (DATA_WIDTH)
		4 : wr_addr_out = wr_addr;
		9 : wr_addr_out = {1'b1, wr_addr[11:0]};
		18 : wr_addr_out = {2'b11, wr_addr[10:0]};
		36 : wr_addr_out = {3'b111, wr_addr[9:0]};
		72 : wr_addr_out = {4'hf, wr_addr[8:0]};
		default : wr_addr_out = wr_addr;
	    endcase // case(DATA_WIDTH)

    end // always @ (wr_addr)
    
    
    // matching HW behavior to pull up the unused output bits
    always @(rdcount_out) begin 

	if (FIFO_SIZE == 18)
	    case (DATA_WIDTH)
		4 : rdcount_out_out = {1'b1, rdcount_out[11:0]};
		9 : rdcount_out_out = {2'b11, rdcount_out[10:0]};
		18 : rdcount_out_out = {3'b111, rdcount_out[9:0]};
		36 : rdcount_out_out = {4'hf, rdcount_out[8:0]};
		default : rdcount_out_out = rdcount_out;
	    endcase // case(DATA_WIDTH)
	else
	    case (DATA_WIDTH)
		4 : rdcount_out_out = rdcount_out;
		9 : rdcount_out_out = {1'b1, rdcount_out[11:0]};
		18 : rdcount_out_out = {2'b11, rdcount_out[10:0]};
		36 : rdcount_out_out = {3'b111, rdcount_out[9:0]};
		72 : rdcount_out_out = {4'hf, rdcount_out[8:0]};
		default : rdcount_out_out = rdcount_out;
	    endcase // case(DATA_WIDTH)
	
    end // always @ (rdcount_out)

    
endmodule

// end of X_FF36_INTERNAL_VLOG - Note: Not an user primitive
