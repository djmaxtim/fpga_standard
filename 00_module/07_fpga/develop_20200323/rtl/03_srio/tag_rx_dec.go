// =================================================================================================
// File Name      : TAG_rx_dec.v
// Module         : TAG_RX_DEC
// Function       : Target receive decode module
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      2025/04/16   stark.ye          Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module TAG_RX_DEC (
    input                               USR_CLK                                 ,//(i) [  1]
    input                               USR_RST                                 ,//(i) [  1]

    input                               TAG_SOP                                 ,//(i) [  1]
    input                               TAG_EOP                                 ,//(i) [  1]
    input                               TAG_DVLD                                ,//(i) [  1]
    input       [  63:0]                TAG_DATA                                ,//(i) [ 64]

    output                              REG_WR_REQ                              ,//(o) [  1]
    input                               REG_WR_ACK                              ,//(o) [  1]
    output      [  31:0]                REG_WR_DATA                             ,//(o) [  1]
    output                              REG_RD_REQ                              ,//(o) [  1]
    output                              REG_RD_ACK                              ,//(o) [  1]
    output      [  31:0]                REG_OP_ADDR                             ,//(o) [ 31]

    input                               DMA_WR_RDY                              ,//(o) [ 64]
    output                              DMA_WR_REQ                              ,//(o) [ 64]
    output      [  31:0]                DMA_WR_ADDR                             ,//(o) [ 64]
    output      [   8:0]                DMA_WR_SIZE                             ,//(o) [ 64]
    output      [  63:0]                DMA_WR_DATA                             ,//(o) [ 64]
    output                              DMA_WR_DVLD                             ,//(o) [ 64]
    output                              DMA_WR_SOF                              ,//(o) [  1]
    output                              DMA_WR_EOF                              ,//(o) [  1]

    output                              DMA_RD_REQ                              ,//(o) [  1]
    output      [   8:0]                DMA_RD_SIZE                             ,//(o) [  1]
    output      [  31:0]                DMA_RD_ADDR                              //(o) [  1]
    );

// =============================================================================
// Parameter define
// =============================================================================

    parameter                           p_SRC_ID            = 8'h00             ;//(p) [ 8]

    parameter                           p_TYPE_NWRITE       = 8'h54             ;//(p) [ 8]
    parameter                           p_TYPE_SWRITE       = 8'h60             ;//(p) [ 8]
    parameter                           p_TYPE_NREAD        = 8'h24             ;//(p) [ 8]
    parameter                           p_TYPE_RESPONE      = 8'hD8             ;//(p) [ 8]

// =============================================================================
// DMAernal signal define
// =============================================================================

    reg                                 r_TAG_SOP                               ;//(r) [  1]
    reg                                 r_TAG_EOP                               ;//(r) [  1]
    reg                                 r_TAG_DVLD                              ;//(r) [  1]
    reg         [  63:0]                r_TAG_DATA                              ;//(r) [ 32]

    reg                                 r_TAG_SOP_LOCK1                         ;
//  reg                                 r_TAG_SOP_LOCK2                         ;
//  reg                                 r_TAG_SOP_LOCK3                         ;

    wire                                s_NWRITE_EN                             ;
    wire                                s_SWRITE_EN                             ;
    wire                                s_NREAD_EN                              ;
    wire                                s_RESPONE_EN                            ;

    wire                                s_TAG_PL_SOP1                           ;
//  wire                                s_TAG_PL_SOP2                           ;
//  wire                                s_TAG_PL_SOP3                           ;

    wire                                s_TYPE_REG_RD                           ;
    wire                                s_TYPE_REG_WR                           ;

    reg                                 r_DMA_WR_SEL                            ;

    reg                                 r_REG_WR_REQ                            ;
    reg                                 r_REG_RD_REQ                            ;
    reg         [  31:0]                r_REG_OP_ADDR                           ;
    reg         [  31:0]                r_REG_WR_DATA                           ;

    reg                                 r_DMA_WR_REQ                            ;
    reg         [  31:0]                r_DMA_WR_ADDR                           ;
    reg         [   8:0]                r_DMA_WR_SIZE                           ;
    reg                                 r_DMA_WR_DVLD                           ;
    reg         [  63:0]                r_DMA_WR_DATA                           ;
    reg                                 r_DMA_WR_SOF                            ;
    reg                                 r_DMA_WR_EOF                            ;

    reg                                 r_DMA_RD_REQ                            ;
    reg         [  31:0]                r_DMA_RD_ADDR                           ;
    reg         [   8:0]                r_DMA_RD_SIZE                           ;

// =================================================================================================
// RTL Body
// =================================================================================================

/*=============================================================================+/
||                                                                             ||
||               Output                                                        ||
||                                                                             ||
/+=============================================================================*/

    assign  REG_WR_REQ                   = r_REG_WR_REQ                         ;
    assign  REG_WR_DATA                  = r_REG_WR_DATA                        ;
    assign  REG_RD_REQ                   = r_REG_RD_REQ                         ;
    assign  REG_OP_ADDR                  = r_REG_OP_ADDR                        ;

    assign  DMA_WR_REQ                  = r_DMA_WR_REQ                          ;
    assign  DMA_WR_ADDR                 = r_DMA_WR_ADDR                         ;
    assign  DMA_WR_SIZE                 = r_DMA_WR_SIZE                         ;
    assign  DMA_WR_DATA                 = r_DMA_WR_DATA                         ;
    assign  DMA_WR_DVLD                 = r_DMA_WR_DVLD                         ;
    assign  DMA_WR_SOF                  = r_DMA_WR_SOF                          ;
    assign  DMA_WR_EOF                  = r_DMA_WR_EOF                          ;

    assign  DMA_RD_REQ                  = r_DMA_RD_REQ                          ;
    assign  DMA_RD_SIZE                 = r_DMA_RD_SIZE                         ;
    assign  DMA_RD_ADDR                 = r_DMA_RD_ADDR                         ;

/*========================================================================+/
||                                                                        ||
||                            BUF                                         ||
||                                                                        ||
/+========================================================================*/

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_TAG_SOP                   <= 'b0 ;
            r_TAG_EOP                   <= 'b0 ;
            r_TAG_DVLD                  <= 'b0 ;
            r_TAG_DATA                  <= 'b0 ;
        end else begin
            r_TAG_SOP                   <= TAG_SOP  ;
            r_TAG_EOP                   <= TAG_EOP  ;
            r_TAG_DVLD                  <= TAG_DVLD ;
            r_TAG_DATA                  <= TAG_DATA ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_TAG_SOP_LOCK1          <= 1'b0 ;
        end else begin
            if (r_TAG_SOP) begin
                r_TAG_SOP_LOCK1      <= 1'b1 ;
            end else if (r_TAG_DVLD) begin
                r_TAG_SOP_LOCK1      <= 1'b0 ;
            end
        end
    end

//  always @(posedge USR_CLK or posedge USR_RST) begin
//      if (USR_RST) begin
//          r_TAG_SOP_LOCK2          <= 1'b0 ;
//      end else begin
//          if (s_TAG_PL_SOP1) begin
//              r_TAG_SOP_LOCK2      <= 1'b1 ;
//          end else if (r_TAG_DVLD) begin
//              r_TAG_SOP_LOCK2      <= 1'b0 ;
//          end
//      end
//  end

//  always @(posedge USR_CLK or posedge USR_RST) begin
//      if (USR_RST) begin
//          r_TAG_SOP_LOCK3          <= 1'b0 ;
//      end else begin
//          if (s_TAG_PL_SOP2 & r_DMA_WR_SEL) begin
//              r_TAG_SOP_LOCK3      <= 1'b1 ;
//          end else if (r_TAG_DVLD) begin
//              r_TAG_SOP_LOCK3      <= 1'b0 ;
//          end
//      end
//  end

    assign s_NWRITE_EN                  = ( r_TAG_SOP == 1'b1 && r_TAG_DATA[55:48] == p_TYPE_NWRITE   ) ? 1'b1 : 1'b0 ;
    assign s_SWRITE_EN                  = ( r_TAG_SOP == 1'b1 && r_TAG_DATA[55:48] == p_TYPE_SWRITE   ) ? 1'b1 : 1'b0 ;
    assign s_NREAD_EN                   = ( r_TAG_SOP == 1'b1 && r_TAG_DATA[55:48] == p_TYPE_NREAD    ) ? 1'b1 : 1'b0 ;
    assign s_RESPONE_EN                 = ( r_TAG_SOP == 1'b1 && r_TAG_DATA[55:48] == p_TYPE_RESPONE  ) ? 1'b1 : 1'b0 ;

    assign s_TAG_PL_SOP1                = r_TAG_SOP_LOCK1 & r_TAG_DVLD ;
//  assign s_TAG_PL_SOP2                = r_TAG_SOP_LOCK2 & r_TAG_DVLD ;
//  assign s_TAG_PL_SOP3                = r_TAG_SOP_LOCK3 & r_TAG_DVLD ;

    assign s_TYPE_REG_RD                = ( s_TAG_PL_SOP1 == 1'b1 && r_TAG_DATA[33] == 1'b1  ) ? 1'b1 : 1'b0 ;
    assign s_TYPE_REG_WR                = ( s_TAG_PL_SOP1 == 1'b1 && r_TAG_DATA[32] == 1'b1  ) ? 1'b1 : 1'b0 ;

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_WR_SEL                <= 1'b0 ;
        end else begin
            if (s_SWRITE_EN) begin
                r_DMA_WR_SEL    <= 1'b1 ;
            end else if ( r_TAG_EOP == 1'b1 ) begin
                r_DMA_WR_SEL  <= 1'b0 ;
            end
        end
    end

/*============================================================================+/
||                                                                            ||
||                              REG Packet                                    ||
||                                                                            ||
/+============================================================================*/

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_REG_OP_ADDR                <= 'b0 ;
        end else begin
            if (s_NWRITE_EN) begin
                r_REG_OP_ADDR            <= r_TAG_DATA[31:0] ;
            end
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_REG_WR_REQ                <= 'b0 ;
        end else begin
            r_REG_WR_REQ                <= r_TAG_EOP & s_TYPE_REG_WR ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_REG_RD_REQ                <= 'b0 ;
        end else begin
            r_REG_RD_REQ                <= r_TAG_EOP & s_TYPE_REG_RD ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_REG_WR_DATA               <= 'b0 ;
        end else begin
            if (s_TAG_PL_SOP1) begin
                r_REG_WR_DATA           <= r_TAG_DATA[31:0] ;
            end
        end
    end

/*============================================================================+/
||                                                                            ||
||                              DMA WR Packet                                 ||
||                                                                            ||
/+============================================================================*/

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_WR_REQ                <= 'b0 ;
        end else begin
            r_DMA_WR_REQ                <= s_SWRITE_EN ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_WR_ADDR               <= 'b0 ;
            r_DMA_WR_SIZE               <= 'b0 ;
        end else begin
            if (s_SWRITE_EN) begin
                r_DMA_WR_ADDR           <= r_TAG_DATA[31:0]  ;
                r_DMA_WR_SIZE           <= r_TAG_DATA[43:36]  + 1'b1;
            end
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_WR_DVLD               <= 'b0 ;
        end else begin
            r_DMA_WR_DVLD               <= r_DMA_WR_SEL & r_TAG_DVLD ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_WR_DATA               <= 'b0 ;
        end else begin
            r_DMA_WR_DATA               <= r_TAG_DATA ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_WR_SOF                <= 'b0 ;
            r_DMA_WR_EOF                <= 'b0 ;
        end else begin
            r_DMA_WR_SOF                <= r_DMA_WR_SEL & s_TAG_PL_SOP1 ;
            r_DMA_WR_EOF                <= r_DMA_WR_SEL & r_TAG_EOP & r_TAG_DVLD ;
        end
    end

/*============================================================================+/
||                                                                            ||
||                              DMA RD Packet                                 ||
||                                                                            ||
/+============================================================================*/

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_RD_REQ                <= 'b0 ;
        end else begin
            r_DMA_RD_REQ                <= s_NREAD_EN ;
        end
    end

    always @(posedge USR_CLK or posedge USR_RST) begin
        if (USR_RST) begin
            r_DMA_RD_ADDR               <= 'b0 ;
            r_DMA_RD_SIZE               <= 'b0 ;
        end else begin
            if (s_NREAD_EN) begin
                r_DMA_RD_ADDR           <= r_TAG_DATA[31:0]  ;
                r_DMA_RD_SIZE           <= r_TAG_DATA[43:36]  + 1'b1;
            end
        end
    end

endmodule