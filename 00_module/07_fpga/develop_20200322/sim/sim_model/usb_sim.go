// =================================================================================================
// File Name      : usb_sim.v
// Module         : USB_SIM
// Function       : USB SIM
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      20XX/XX/XX   XXX.XXX           Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module USB_SIM (
    //system signals
    input                               CLK                                     ,//(i)
    input                               RST                                     ,//(i)
    //PCIE RX interface
    input                               REG_WR_REQ                              ,//(i)
    input                               REG_RD_REQ                              ,//(i)
    input       [  31:0]                REG_WR_DATA                             ,//(i)
    input       [  31:0]                REG_OP_ADDR                             ,//(i)
    output                              REG_WR_ACK                              ,//(o)
    output                              REG_RD_ACK                              ,//(o)

    output                              DRAM_WR_RDY                             ,//(i)
    input                               DRAM_WR_REQ                             ,//(o)
    input      [  31:0]                 DRAM_WR_ADDR                            ,//(o)
    input      [  31:0]                 DRAM_WR_SIZE                            ,//(o)
    output                              DRAM_WR_ACK                             ,//(i)
    input                               DRAM_WR_SOP                             ,//(o)
    input                               DRAM_WR_EOP                             ,//(o)
    input                               DRAM_WR_DVLD                            ,//(o)
    input      [  31:0]                 DRAM_WR_DATA                            ,//(o)

    input                               USB_PCLK                                ,//(i)  [   1]
    inout      [  31:0]                 USB_DATA                                ,//(io) [  32]
    input      [   1:0]                 USB_ADDR                                ,//(o)  [   2]
    output                              USB_FLAGA                               ,//(i)  [   1]
    output                              USB_FLAGB                               ,//(i)  [   1]
    input                               USB_PKEND                               ,//(o)  [   1]
    input                               USB_SLOE                                ,//(o)  [   1]
    input                               USB_SLRD                                ,//(o)  [   1]
    input                               USB_SLCS                                ,//(o)  [   1]
    input                               USB_SLWR                                ,//(o)  [   1]
    input                               USB_RESET_N                              //(o)  [   1]
    );

// =============================================================================
// Parameter define
// =============================================================================

    parameter                           p_TYPE_REG_RD       = 16'h5A55          ;//(p) [ 16]
    parameter                           p_TYPE_REG_WR       = 16'h5055          ;//(p) [ 16]
    parameter                           p_TYPE_DN           = 16'h2A55          ;//(p) [ 16]
    parameter                           p_TYPE_UP           = 16'h2555          ;//(p) [ 16]

    parameter                           p_IDLE              = 7'b000_0001           ;
    parameter                           p_HEAD0             = 7'b000_0010           ;
    parameter                           p_HEAD1             = 7'b000_0100           ;
    parameter                           p_HEAD2             = 7'b000_1000           ;
    parameter                           p_REG_DATA          = 7'b001_0000           ;
    parameter                           p_DRAM_DATA         = 7'b010_0000           ;
    parameter                           p_END               = 7'b100_0000           ;


// =============================================================================
// Internal signal define
// =============================================================================

    reg                                 r_REG_RD_ACK                            ;
    reg         [  31:0]                r_REG_WR_DATA                           ;
    reg         [  31:0]                r_REG_OP_ADDR                           ;
    reg         [  31:0]                r_DRAM_WR_ADDR                          ;
    reg         [  31:0]                r_DRAM_WR_SIZE                          ;

    reg         [   6:0]                r_FSM                                   ;
    wire                                s_FSM_IDLE                              ;
    wire                                s_FSM_HEAD0                             ;
    wire                                s_FSM_HEAD1                             ;
    wire                                s_FSM_HEAD2                             ;
    wire                                s_FSM_REG_DATA                          ;
    wire                                s_FSM_DRAM_DATA                         ;
    wire                                s_FSM_END                               ;

    reg                                 r_REG_WR_EN                             ;
    reg                                 r_REG_RD_EN                             ;
    reg                                 r_DRAM_WR_EN                            ;

    reg         [  31:0]                r_HEAD0                                 ;
    reg         [  31:0]                r_HEAD1                                 ;
    reg         [  31:0]                r_HEAD2                                 ;
    reg                                 r_DRAM_WR_ACK                           ;
    reg                                 r_DRAM_WR_EOP                           ;//(r) [  1]
    reg                                 r_DRAM_WR_EOP_1DFF                      ;//(r) [  1]
    reg                                 r_DRAM_WR_EOP_2DFF                      ;//(r) [  1]
    reg                                 r_DRAM_WR_DVLD                          ;//(r) [  1]
    reg                                 r_DRAM_WR_DVLD_1DFF                     ;//(r) [ 32]
    reg                                 r_DRAM_WR_DVLD_2DFF                     ;//(r) [  1]
    reg         [  31:0]                r_DRAM_WR_DATA                          ;//(r) [ 32]
    reg         [  31:0]                r_DRAM_WR_DATA_1DFF                     ;//(r) [  1]
    reg         [  31:0]                r_DRAM_WR_DATA_2DFF                     ;//(r) [ 32]
    reg                                 r_DBUF_WEN                              ;
    reg         [  31:0]                r_DBUF_WDAT                             ;

    wire                                s_USB_FLAGA                             ;
    wire                                s_DBUF_EMPTY                            ;
    reg                                 r_USB_SLRD                              ;
    reg         [   2:0]                r_DBUF_REN                              ;
    wire        [  31:0]                s_DBUF_RDAT                             ;
    reg         [  31:0]                r_DBUF_RDAT                             ;
    reg         [  31:0]                r_DBUF_RDAT_DFF                         ;
    wire        [  31:0]                s_USB_DATA                              ;
    reg         [  31:0]                r_USB_TX_DCNT                           ;
    reg                                 r_USB_TX_END                            ;
    wire                                s_USB_TX_END                            ;
    reg                                 r_USB_DIR                               ;

/*=============================================================================+/
||                                                                             ||
||               Output                                                        ||
||                                                                             ||
/+=============================================================================*/

    assign USB_DATA                     = r_USB_DIR ? s_USB_DATA : 32'dz   ;

    assign REG_RD_ACK                   = r_REG_RD_ACK                          ;

    assign USB_FLAGA                    = s_USB_FLAGA                           ;
    assign USB_FLAGB                    = 1'b1                                  ;

    assign DRAM_WR_RDY                  = 1'b1                                  ;

/*=============================================================================+/
||                                                                             ||
||              DFF                                                            ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_WR_DATA               <= 'b0 ;
            r_REG_OP_ADDR               <= 'b0 ;
        end else begin
            if (REG_WR_REQ) begin
                r_REG_WR_DATA           <= REG_WR_DATA ;
                r_REG_OP_ADDR           <= REG_OP_ADDR ;
            end else if (REG_RD_REQ) begin
                r_REG_WR_DATA           <= 'b0 ;
                r_REG_OP_ADDR           <= REG_OP_ADDR ;
            end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_RD_ACK                <= 'b0 ;
        end else begin
            r_REG_RD_ACK                <= REG_RD_REQ ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DRAM_WR_ADDR              <= 'b0 ;
            r_DRAM_WR_SIZE              <= 'b0 ;
        end else begin
            if (DRAM_WR_REQ) begin
                r_DRAM_WR_ADDR          <= DRAM_WR_ADDR ;
                r_DRAM_WR_SIZE          <= DRAM_WR_SIZE ;
            end
        end
    end

/*=============================================================================+/
||                                                                             ||
||              FSM                                                            ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_FSM                       <= p_IDLE ;
        end else begin
            case (r_FSM)
                p_IDLE :
                    if (r_REG_WR_EN | r_REG_RD_EN | r_DRAM_WR_EN) begin
                        r_FSM           <= p_HEAD0 ;
                    end else begin
                        r_FSM           <= p_IDLE ;
                    end

                p_HEAD0 :
                        r_FSM           <= p_HEAD1 ;

                p_HEAD1 :
                        r_FSM           <= p_HEAD2 ;

                p_HEAD2 :
                    if (r_REG_RD_EN) begin
                        r_FSM           <= p_END ;
                    end else if (r_REG_WR_EN) begin
                        r_FSM           <= p_REG_DATA ;
                    end else if (r_DRAM_WR_EN) begin
                        r_FSM           <= p_DRAM_DATA ;
                    end else begin
                        r_FSM           <= p_HEAD2 ;
                    end

                p_REG_DATA :
                        r_FSM           <= p_END ;

                p_DRAM_DATA :
                    if (r_DRAM_WR_EOP_2DFF) begin
                        r_FSM           <= p_END ;
                    end else begin
                        r_FSM           <= p_DRAM_DATA ;
                    end

                p_END :
                    if (s_USB_TX_END) begin
                        r_FSM           <= p_IDLE ;
                    end else begin
                        r_FSM           <= p_END ;
                    end

                default :
                    r_FSM               <= p_IDLE ;
            endcase
        end
    end

    assign s_FSM_IDLE                   = r_FSM[0] ;
    assign s_FSM_HEAD0                  = r_FSM[1] ;
    assign s_FSM_HEAD1                  = r_FSM[2] ;
    assign s_FSM_HEAD2                  = r_FSM[3] ;
    assign s_FSM_REG_DATA               = r_FSM[4] ;
    assign s_FSM_DRAM_DATA              = r_FSM[5] ;
    assign s_FSM_END                    = r_FSM[6] ;

/*=============================================================================+/
||                                                                             ||
||              DATA                                                           ||
||                                                                             ||
/+=============================================================================*/

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_REG_WR_EN                 <= 'b0 ;
            r_REG_RD_EN                 <= 'b0 ;
            r_DRAM_WR_EN                <= 'b0 ;
        end else begin
            if (REG_WR_REQ) begin
                r_REG_WR_EN             <= 1'b1 ;
            end else if (s_FSM_END) begin
                r_REG_WR_EN             <= 1'b0 ;
            end

            if (REG_RD_REQ) begin
                r_REG_RD_EN             <= 1'b1 ;
            end else if (s_FSM_END) begin
                r_REG_RD_EN             <= 1'b0 ;
            end

            if (DRAM_WR_REQ) begin
                r_DRAM_WR_EN            <= 1'b1 ;
            end else if (s_FSM_END) begin
                r_DRAM_WR_EN            <= 1'b0 ;
            end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_HEAD0                     <= 'b0 ;
            r_HEAD1                     <= 'b0 ;
            r_HEAD2                     <= 'b0 ;
        end else begin
            if (r_REG_WR_EN) begin
                r_HEAD0                 <= {16'h0 , p_TYPE_REG_WR} ;
                r_HEAD1                 <= r_REG_OP_ADDR ;
                r_HEAD2                 <= 32'h0 ;
            end else if (r_REG_RD_EN) begin
                r_HEAD0                 <= {16'h0 , p_TYPE_REG_RD} ;
                r_HEAD1                 <= r_REG_OP_ADDR ;
                r_HEAD2                 <= 32'h0 ;
            end else if (r_DRAM_WR_EN) begin
                r_HEAD0                 <= {16'h1 , p_TYPE_DN} ;
                r_HEAD1                 <= r_DRAM_WR_ADDR ;
                r_HEAD2                 <= r_DRAM_WR_SIZE ;
            end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DRAM_WR_ACK               <= 'b0 ;
        end else begin
            r_DRAM_WR_ACK               <= s_FSM_HEAD2 ;
        end
    end

always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_DRAM_WR_DVLD              <= 'b0 ;
            r_DRAM_WR_DVLD_1DFF         <= 'b0 ;
            r_DRAM_WR_DVLD_2DFF         <= 'b0 ;
            r_DRAM_WR_DATA              <= 'b0 ;
            r_DRAM_WR_DATA_1DFF         <= 'b0 ;
            r_DRAM_WR_DATA_2DFF         <= 'b0 ;
            r_DRAM_WR_EOP               <= 'b0 ;
            r_DRAM_WR_EOP_1DFF          <= 'b0 ;
            r_DRAM_WR_EOP_2DFF          <= 'b0 ;
        end else begin
            r_DRAM_WR_DVLD              <= DRAM_WR_DVLD ;
            r_DRAM_WR_DVLD_1DFF         <= r_DRAM_WR_DVLD ;
            r_DRAM_WR_DVLD_2DFF         <= r_DRAM_WR_DVLD_1DFF ;
            r_DRAM_WR_DATA              <= DRAM_WR_DATA ;
            r_DRAM_WR_DATA_1DFF         <= r_DRAM_WR_DATA ;
            r_DRAM_WR_DATA_2DFF         <= r_DRAM_WR_DATA_1DFF ;
            r_DRAM_WR_EOP               <= DRAM_WR_EOP ;
            r_DRAM_WR_EOP_1DFF          <= r_DRAM_WR_EOP ;
            r_DRAM_WR_EOP_2DFF          <= r_DRAM_WR_EOP_1DFF ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_WEN                  <= 'b0 ;
            r_DBUF_WDAT                 <= 'b0 ;
        end else begin
            if (s_FSM_HEAD0) begin
                r_DBUF_WEN              <= 1'b1 ;
                r_DBUF_WDAT             <= r_HEAD0 ;
            end else if (s_FSM_HEAD1) begin
                r_DBUF_WEN              <= 1'b1 ;
                r_DBUF_WDAT             <= r_HEAD1 ;
            end else if (s_FSM_HEAD2) begin
                r_DBUF_WEN              <= 1'b1 ;
                r_DBUF_WDAT             <= r_HEAD2 ;
            end else if (s_FSM_REG_DATA) begin
                r_DBUF_WEN              <= 1'b1 ;
                r_DBUF_WDAT             <= r_REG_WR_DATA ;
            end else if (s_FSM_DRAM_DATA) begin
                r_DBUF_WEN              <= r_DRAM_WR_DVLD_2DFF ;
                r_DBUF_WDAT             <= r_DRAM_WR_DATA_2DFF ;
            end else begin
                r_DBUF_WEN              <= 'b0 ;
                r_DBUF_WDAT             <= 'b0 ;
            end
        end
    end

/*=============================================================================+/
||                                                                             ||
||              FIFO                                                           ||
||                                                                             ||
/+=============================================================================*/

    sfifo_i32o32_d1024 U_USB_DATA (
        .clk                            ( CLK                                   ),//(i) [  1]
        .srst                           ( RST                                   ),//(i) [  1]
        .din                            ( r_DBUF_WDAT                           ),//(i) [ XX]
        .wr_en                          ( r_DBUF_WEN                            ),//(i) [  1]
        .rd_en                          ( r_USB_SLRD                            ),//(i) [  1]
        .dout                           ( s_DBUF_RDAT                           ),//(o) [  1]
        .full                           (                                       ),//(o) [  1]
        .empty                          ( s_DBUF_EMPTY                          ),//(o) [ XX]
        .data_count                     (                                       ) //(o) [ XX]
    );

    assign s_USB_FLAGA                  = ~s_DBUF_EMPTY & s_FSM_END ;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_SLRD                  <= 'b0 ;
        end else begin
            r_USB_SLRD                  <= USB_SLRD ;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_REN                  <= 'b0 ;
        end else begin
            r_DBUF_REN                  <= {r_DBUF_REN[1:0] , USB_SLRD};
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_DBUF_RDAT                 <= 'b0 ;
            r_DBUF_RDAT_DFF             <= 'b0 ;
        end else begin
            r_DBUF_RDAT                 <= s_DBUF_RDAT ;
            r_DBUF_RDAT_DFF             <= r_DBUF_RDAT ;
        end
    end

    assign s_USB_DATA                   = r_DBUF_REN[1] ? r_DBUF_RDAT : 32'h0 ;

    always @ (posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_TX_DCNT               <= 'b0 ;
        end else begin
            if (s_USB_TX_END) begin
                r_USB_TX_DCNT               <= 'b0 ;
            end else if (r_DBUF_REN[1] & s_FSM_END) begin
                r_USB_TX_DCNT               <= r_USB_TX_DCNT + 1'b1 ;
            end
        end
    end

    assign s_USB_TX_END                 = s_FSM_END & ((r_USB_TX_DCNT == r_DRAM_WR_SIZE[31:2] + 16'h3) || ((r_HEAD0[15:0] ==p_TYPE_REG_RD) & (r_USB_TX_DCNT == 16'h3)));

//  always @(posedge CLK or posedge RST) begin
//      if (RST) begin
//          r_USB_TX_END                <= 'b0 ;
//      end else begin
//          r_USB_TX_END                <= r_DBUF_REN[2] ;
//      end
//  end

//  assign s_USB_TX_END                 = ~r_DBUF_REN[2] & r_USB_TX_END ;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            r_USB_DIR                   <= 'b0 ;
        end else begin
            r_USB_DIR                   <= s_FSM_END ;
        end
    end

endmodule