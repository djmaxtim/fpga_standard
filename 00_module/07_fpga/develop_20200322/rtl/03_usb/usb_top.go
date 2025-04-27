// =================================================================================================
// File Name      : usb_top.v
// Module         : USB TOP
// Function       : usb top
// Type           : RTL
// -------------------------------------------------------------------------------------------------
// Update History :
// -------------------------------------------------------------------------------------------------
// Rev.level  Date         Code by           Contents
// 0.1.0      2025/03/20   Stark.ye          Creat new
//
// =================================================================================================

`timescale 1ps / 1ps

module USB_TOP (
    //CLK RST
    input                               CLK                                     ,//(i) [  1]
    input                               RST                                     ,//(i) [  1]
    input                               USER_CLK                                ,//(i) [  1]
    input                               USER_RST                                ,//(i) [  1]

    //Cypress 3014
    output                              USB_PCLK                                ,//(i)  [   1]
    inout       [  31:0]                USB_DATA                                ,//(io) [  32]
    output      [   1:0]                USB_ADDR                                ,//(o)  [   2]
    input                               USB_FLAGA                               ,//(i)  [   1]
    input                               USB_FLAGB                               ,//(i)  [   1]
    output                              USB_PKEND                               ,//(o)  [   1]
    output                              USB_SLOE                                ,//(o)  [   1]
    output                              USB_SLRD                                ,//(o)  [   1]
    output                              USB_SLCS                                ,//(o)  [   1]
    output                              USB_SLWR                                ,//(o)  [   1]
    output                              USB_RESET_N                             ,//(o)  [   1]

    //download signal
    input       [  15:0]                DMA_DN_RDY                              ,//(i)  [ 16]
    output      [  31:0]                DMA_DN_DATA                             ,//(o)  [ 64]
    output                              DMA_DN_DVLD                             ,//(o)  [  1]
    output                              DMA_DN_SOF                              ,//(o)  [  1]
    output                              DMA_DN_EOF                              ,//(o)  [  1]
    output      [  15:0]                DMA_DN_VCH                              ,//(o)  [ 16]
    output      [  31:0]                DMA_DN_ADDR                             ,//(o)  [ 32]
    output      [  31:0]                DMA_DN_SIZE                             ,//(o)  [ 32]

    //up signal
    output                              DMA_UP_RDY                              ,//(i)  [  1]
    input       [  31:0]                DMA_UP_DATA                             ,//(i)  [ 64]
    input                               DMA_UP_DVLD                             ,//(i)  [  1]
    input                               DMA_UP_SOF                              ,//(i)  [  1]
    input                               DMA_UP_EOF                              ,//(i)  [  1]
    input                               DMA_UP_REQ                              ,//(i)  [ 16]
    input       [  15:0]                DMA_UP_VCH                              ,//(i)  [ 16]
    input       [  31:0]                DMA_UP_SIZE                             ,//(i)  [ 32]
    input       [  31:0]                DMA_UP_ADDR                             ,//(i)  [ 32]

    //reg signal
    output                              REG0_WR_REQ                             ,//(o)  [  1]
    input                               REG0_WR_ACK                             ,//(i)  [  1]
    output      [  31:0]                REG0_WR_DATA                            ,//(o)  [ 32]
    output                              REG0_RD_REQ                             ,//(o)  [  1]
    input                               REG0_RD_ACK                             ,//(i)  [  1]
    input       [  31:0]                REG0_RD_DATA                            ,//(i)  [ 32]
    output      [  15:0]                REG0_OP_ADDR                            ,//(o)  [ 16]

    output                              REG1_WR_REQ                             ,//(o)  [  1]
    input                               REG1_WR_ACK                             ,//(i)  [  1]
    output      [  31:0]                REG1_WR_DATA                            ,//(o)  [ 32]
    output                              REG1_RD_REQ                             ,//(o)  [  1]
    input                               REG1_RD_ACK                             ,//(i)  [  1]
    input       [  31:0]                REG1_RD_DATA                            ,//(i)  [ 32]
    output      [  15:0]                REG1_OP_ADDR                            ,//(o)  [ 16]

    output                              REG2_WR_REQ                             ,//(o)  [  1]
    input                               REG2_WR_ACK                             ,//(i)  [  1]
    output      [  31:0]                REG2_WR_DATA                            ,//(o)  [ 32]
    output                              REG2_RD_REQ                             ,//(o)  [  1]
    input                               REG2_RD_ACK                             ,//(i)  [  1]
    input       [  31:0]                REG2_RD_DATA                            ,//(i)  [ 32]
    output      [  15:0]                REG2_OP_ADDR                            ,//(o)  [ 16]

    output                              REG3_WR_REQ                             ,//(o)  [  1]
    input                               REG3_WR_ACK                             ,//(i)  [  1]
    output      [  31:0]                REG3_WR_DATA                            ,//(o)  [ 32]
    output                              REG3_RD_REQ                             ,//(o)  [  1]
    input                               REG3_RD_ACK                             ,//(i)  [  1]
    input       [  31:0]                REG3_RD_DATA                            ,//(i)  [ 32]
    output      [  15:0]                REG3_OP_ADDR                            ,//(o)  [ 16]

    output                              REG4_WR_REQ                             ,//(o)  [  1]
    input                               REG4_WR_ACK                             ,//(i)  [  1]
    output      [  31:0]                REG4_WR_DATA                            ,//(o)  [ 32]
    output                              REG4_RD_REQ                             ,//(o)  [  1]
    input                               REG4_RD_ACK                             ,//(i)  [  1]
    input       [  31:0]                REG4_RD_DATA                            ,//(i)  [ 32]
    output      [  15:0]                REG4_OP_ADDR                            ,//(o)  [ 16]

    output                              REG5_WR_REQ                             ,//(o)  [  1]
    input                               REG5_WR_ACK                             ,//(i)  [  1]
    output      [  31:0]                REG5_WR_DATA                            ,//(o)  [ 32]
    output                              REG5_RD_REQ                             ,//(o)  [  1]
    input                               REG5_RD_ACK                             ,//(i)  [  1]
    input       [  31:0]                REG5_RD_DATA                            ,//(i)  [ 32]
    output      [  15:0]                REG5_OP_ADDR                            ,//(o)  [ 16]

    output                              REG6_WR_REQ                             ,//(o)  [  1]
    input                               REG6_WR_ACK                             ,//(i)  [  1]
    output      [  31:0]                REG6_WR_DATA                            ,//(o)  [ 32]
    output                              REG6_RD_REQ                             ,//(o)  [  1]
    input                               REG6_RD_ACK                             ,//(i)  [  1]
    input       [  31:0]                REG6_RD_DATA                            ,//(i)  [ 32]
    output      [  15:0]                REG6_OP_ADDR                            ,//(o)  [ 16]

    output                              REG7_WR_REQ                             ,//(o)  [  1]
    input                               REG7_WR_ACK                             ,//(i)  [  1]
    output      [  31:0]                REG7_WR_DATA                            ,//(o)  [ 32]
    output                              REG7_RD_REQ                             ,//(o)  [  1]
    input                               REG7_RD_ACK                             ,//(i)  [  1]
    input       [  31:0]                REG7_RD_DATA                            ,//(i)  [ 32]
    output      [  15:0]                REG7_OP_ADDR                             //(o)  [ 16]
    );

// =============================================================================
// Parameter define
// =============================================================================

// =============================================================================
// Internal signal define
// =============================================================================

    wire                                s_REG_WR_REQ                            ;
    wire                                s_REG_RD_REQ                            ;
    wire                                s_REG_WR_ACK                            ;
    wire                                s_REG_RD_ACK                            ;
    wire        [  31:0]                s_REG_WR_DATA                           ;
    wire        [  31:0]                s_REG_RD_DATA                           ;
    wire        [  31:0]                s_REG_OP_ADDR                           ;

    wire                                s_USB_DN_RDY                            ;
    wire                                s_USB_DN_REQ                            ;
    wire        [  15:0]                s_USB_DN_CH                             ;
    wire        [  31:0]                s_USB_DN_ADDR                           ;
    wire        [  31:0]                s_USB_DN_SIZE                           ;
    wire                                s_USB_DN_SOP                            ;
    wire                                s_USB_DN_EOP                            ;
    wire        [  31:0]                s_USB_DN_DATA                           ;
    wire                                s_USB_DN_DVLD                           ;

    wire                                s_USB_UP_RDY                            ;
    wire                                s_USB_UP_REQ                            ;
    wire                                s_USB_UP_ACK                            ;
    wire                                s_USB_UP_DVLD                           ;
    wire        [  31:0]                s_USB_UP_DATA                           ;
    wire                                s_USB_UP_SOP                            ;
    wire                                s_USB_UP_EOP                            ;

    wire                                s_REG_TX_REQ                            ;
    wire                                s_REG_TX_ACK                            ;
    wire        [  31:0]                s_REG_TX_DATA                           ;
    wire                                s_REG_TX_DVLD                           ;
    wire                                s_REG_TX_SOP                            ;
    wire                                s_REG_TX_EOP                            ;

    wire                                s_USB_TX_REQ                            ;
    wire                                s_USB_TX_ACK                            ;
    wire                                s_USB_TX_RDY                            ;
    wire                                s_USB_TX_DVLD                           ;
    wire        [  31:0]                s_USB_TX_DATA                           ;
    wire                                s_USB_TX_SOP                            ;
    wire                                s_USB_TX_EOP                            ;

/*=============================================================================+/
||                                                                             ||
||              Cypress 3014                                                   ||
||                                                                             ||
/+=============================================================================*/

    USB_IF U_USB_IF (
        .CLK                            ( CLK                                   ),//(i)  [  1]
        .RST                            ( RST                                   ),//(i)  [  1]

        .REG_WR_REQ                     ( s_REG_WR_REQ                          ),//(o)  [  1]
        .REG_RD_REQ                     ( s_REG_RD_REQ                          ),//(o)  [  1]
        .REG_WR_ACK                     ( s_REG_WR_ACK                          ),//(i)  [  1]
        .REG_RD_ACK                     ( s_REG_RD_ACK                          ),//(i)  [  1]
        .REG_WR_DATA                    ( s_REG_WR_DATA                         ),//(o)  [ 32]
        .REG_OP_ADDR                    ( s_REG_OP_ADDR                         ),//(o)  [ 32]

        .USB_DN_RDY                     ( s_USB_DN_RDY                          ),//(i)  [  1]
        .USB_DN_REQ                     ( s_USB_DN_REQ                          ),//(o)  [ 16]
        .USB_DN_CH                      ( s_USB_DN_CH                           ),//(o)  [ 16]
        .USB_DN_ADDR                    ( s_USB_DN_ADDR                         ),//(o)  [ 32]
        .USB_DN_SIZE                    ( s_USB_DN_SIZE                         ),//(o)  [ 32]
        .USB_DN_SOP                     ( s_USB_DN_SOP                          ),//(o)  [  1]
        .USB_DN_EOP                     ( s_USB_DN_EOP                          ),//(o)  [  1]
        .USB_DN_DATA                    ( s_USB_DN_DATA                         ),//(o)  [  1]
        .USB_DN_DVLD                    ( s_USB_DN_DVLD                         ),//(o)  [ 32]

        .USB_UP_RDY                     ( s_USB_UP_RDY                          ),//(o)  [  1]
        .USB_UP_REQ                     ( s_USB_UP_REQ                          ),//(i)  [  1]
        .USB_UP_ACK                     ( s_USB_UP_ACK                          ),//(o)  [  1]
        .USB_UP_DVLD                    ( s_USB_UP_DVLD                         ),//(i)  [  1]
        .USB_UP_DATA                    ( s_USB_UP_DATA                         ),//(i)  [ 32]
        .USB_UP_SOP                     ( s_USB_UP_SOP                          ),//(i)  [  1]
        .USB_UP_EOP                     ( s_USB_UP_EOP                          ),//(i)  [  1]

        .USB_PCLK                       ( USB_PCLK                              ),//(o)  [  1]
        .USB_DATA                       ( USB_DATA                              ),//(io) [ 32]
        .USB_ADDR                       ( USB_ADDR                              ),//(o)  [  2]
        .USB_FLAGA                      ( USB_FLAGA                             ),//(i)  [  1]
        .USB_FLAGB                      ( USB_FLAGB                             ),//(i)  [  1]
        .USB_PKEND                      ( USB_PKEND                             ),//(o)  [  1]
        .USB_SLOE                       ( USB_SLOE                              ),//(o)  [  1]
        .USB_SLRD                       ( USB_SLRD                              ),//(o)  [  1]
        .USB_SLCS                       ( USB_SLCS                              ),//(o)  [  1]
        .USB_SLWR                       ( USB_SLWR                              ),//(o)  [  1]
        .USB_RESET_N                    ( USB_RESET_N                           ) //(o)  [  1]
    );

/*=============================================================================+/
||                                                                             ||
||              REG IF                                                         ||
||                                                                             ||
/+=============================================================================*/

    REG_IF U_REG_IF (
        //system signals
        .CLK                            ( CLK                                   ),//(i)  [  1]
        .RST                            ( RST                                   ),//(i)  [  1]
        //PCIE RX interface
        .REG_WR_REQ                     ( s_REG_WR_REQ                          ),//(o)  [  1]
        .REG_RD_REQ                     ( s_REG_RD_REQ                          ),//(o)  [  1]
        .REG_WR_ACK                     ( s_REG_WR_ACK                          ),//(i)  [  1]
        .REG_RD_ACK                     ( s_REG_RD_ACK                          ),//(i)  [  1]
        .REG_WR_DATA                    ( s_REG_WR_DATA                         ),//(o)  [ 32]
        .REG_RD_DATA                    ( s_REG_RD_DATA                         ),//(i)  [ 32]
        .REG_OP_ADDR                    ( s_REG_OP_ADDR                         ),//(o)  [ 32]

        //REG CTRL interface
        .REG0_WR_REQ                    ( REG0_WR_REQ                           ),//(o)  [  1]
        .REG0_WR_ACK                    ( REG0_WR_ACK                           ),//(i)  [  1]
        .REG0_WR_DATA                   ( REG0_WR_DATA                          ),//(o)  [ 32]
        .REG0_RD_REQ                    ( REG0_RD_REQ                           ),//(o)  [  1]
        .REG0_RD_ACK                    ( REG0_RD_ACK                           ),//(i)  [  1]
        .REG0_RD_DATA                   ( REG0_RD_DATA                          ),//(i)  [ 32]
        .REG0_OP_ADDR                   ( REG0_OP_ADDR                          ),//(o)  [ 16]

        .REG1_WR_REQ                    ( REG1_WR_REQ                           ),//(o)  [  1]
        .REG1_WR_ACK                    ( REG1_WR_ACK                           ),//(i)  [  1]
        .REG1_WR_DATA                   ( REG1_WR_DATA                          ),//(o)  [ 32]
        .REG1_RD_REQ                    ( REG1_RD_REQ                           ),//(o)  [  1]
        .REG1_RD_ACK                    ( REG1_RD_ACK                           ),//(i)  [  1]
        .REG1_RD_DATA                   ( REG1_RD_DATA                          ),//(i)  [ 32]
        .REG1_OP_ADDR                   ( REG1_OP_ADDR                          ),//(o)  [ 32]

        .REG2_WR_REQ                    ( REG2_WR_REQ                           ),//(o)  [  1]
        .REG2_WR_ACK                    ( REG2_WR_ACK                           ),//(i)  [  1]
        .REG2_WR_DATA                   ( REG2_WR_DATA                          ),//(o)  [ 32]
        .REG2_RD_REQ                    ( REG2_RD_REQ                           ),//(o)  [  1]
        .REG2_RD_ACK                    ( REG2_RD_ACK                           ),//(i)  [  1]
        .REG2_RD_DATA                   ( REG2_RD_DATA                          ),//(i)  [ 32]
        .REG2_OP_ADDR                   ( REG2_OP_ADDR                          ),//(o)  [ 32]

        .REG3_WR_REQ                    ( REG3_WR_REQ                           ),//(o)  [  1]
        .REG3_WR_ACK                    ( REG3_WR_ACK                           ),//(i)  [  1]
        .REG3_WR_DATA                   ( REG3_WR_DATA                          ),//(o)  [ 32]
        .REG3_RD_REQ                    ( REG3_RD_REQ                           ),//(o)  [  1]
        .REG3_RD_ACK                    ( REG3_RD_ACK                           ),//(i)  [  1]
        .REG3_RD_DATA                   ( REG3_RD_DATA                          ),//(i)  [ 32]
        .REG3_OP_ADDR                   ( REG3_OP_ADDR                          ),//(o)  [ 32]

        .REG4_WR_REQ                    ( REG4_WR_REQ                           ),//(o)  [  1]
        .REG4_WR_ACK                    ( REG4_WR_ACK                           ),//(i)  [  1]
        .REG4_WR_DATA                   ( REG4_WR_DATA                          ),//(o)  [ 32]
        .REG4_RD_REQ                    ( REG4_RD_REQ                           ),//(o)  [  1]
        .REG4_RD_ACK                    ( REG4_RD_ACK                           ),//(i)  [  1]
        .REG4_RD_DATA                   ( REG4_RD_DATA                          ),//(i)  [ 32]
        .REG4_OP_ADDR                   ( REG4_OP_ADDR                          ),//(o)  [ 32]

        .REG5_WR_REQ                    ( REG5_WR_REQ                           ),//(o)  [  1]
        .REG5_WR_ACK                    ( REG5_WR_ACK                           ),//(i)  [  1]
        .REG5_WR_DATA                   ( REG5_WR_DATA                          ),//(o)  [ 32]
        .REG5_RD_REQ                    ( REG5_RD_REQ                           ),//(o)  [  1]
        .REG5_RD_ACK                    ( REG5_RD_ACK                           ),//(i)  [  1]
        .REG5_RD_DATA                   ( REG5_RD_DATA                          ),//(i)  [ 32]
        .REG5_OP_ADDR                   ( REG5_OP_ADDR                          ),//(o)  [ 32]

        .REG6_WR_REQ                    ( REG6_WR_REQ                           ),//(o)  [  1]
        .REG6_WR_ACK                    ( REG6_WR_ACK                           ),//(i)  [  1]
        .REG6_WR_DATA                   ( REG6_WR_DATA                          ),//(o)  [ 32]
        .REG6_RD_REQ                    ( REG6_RD_REQ                           ),//(o)  [  1]
        .REG6_RD_ACK                    ( REG6_RD_ACK                           ),//(i)  [  1]
        .REG6_RD_DATA                   ( REG6_RD_DATA                          ),//(i)  [ 32]
        .REG6_OP_ADDR                   ( REG6_OP_ADDR                          ),//(o)  [ 32]

        .REG7_WR_REQ                    ( REG7_WR_REQ                           ),//(o)  [  1]
        .REG7_WR_ACK                    ( REG7_WR_ACK                           ),//(i)  [  1]
        .REG7_WR_DATA                   ( REG7_WR_DATA                          ),//(o)  [ 32]
        .REG7_RD_REQ                    ( REG7_RD_REQ                           ),//(o)  [  1]
        .REG7_RD_ACK                    ( REG7_RD_ACK                           ),//(i)  [  1]
        .REG7_RD_DATA                   ( REG7_RD_DATA                          ),//(i)  [ 32]
        .REG7_OP_ADDR                   ( REG7_OP_ADDR                          ) //(o)  [ 32]
        );

/*=============================================================================+/
||                                                                             ||
||              REG_ACK                                                        ||
||                                                                             ||
/+=============================================================================*/

    REG_ACK U_REG_ACK (
        //system signals
        .CLK                            ( CLK                                   ),//(i)  [  1]
        .RST                            ( RST                                   ),//(i)  [  1]
        //register control
        .REG_RD_REQ                     ( s_REG_RD_REQ                          ),//(i)  [  1]
        .REG_RD_ACK                     ( s_REG_RD_ACK                          ),//(i)  [  1]
        .REG_RD_OK                      (                                       ),//(i)  [  1]
        .REG_RD_DATA                    ( s_REG_RD_DATA                         ),//(i)  [ 32]
        .REG_OP_ADDR                    ( s_REG_OP_ADDR                         ),//(i)  [ 64]

        //reg tx
        .REG_TX_REQ                     ( s_REG_TX_REQ                          ),//(o)  [  1]
        .REG_TX_ACK                     ( s_REG_TX_ACK                          ),//(i)  [  1]
        .REG_TX_DATA                    ( s_REG_TX_DATA                         ),//(o)  [ 64]
        .REG_TX_DVLD                    ( s_REG_TX_DVLD                         ),//(o)  [  1]
        .REG_TX_SOP                     ( s_REG_TX_SOP                          ),//(o)  [  1]
        .REG_TX_EOP                     ( s_REG_TX_EOP                          ) //(o)  [  1]
        );

/*=============================================================================+/
||                                                                             ||
||              DOWNLOAD                                                       ||
||                                                                             ||
/+=============================================================================*/

    USB_DN_IF U_USB_DN_IF (
        .SYS_CLK                        (   CLK                                 ),//(i)  [  1]
        .SYS_RST                        (   RST                                 ),//(i)  [  1]
        .USER_CLK                       (   USER_CLK                            ),//(i)  [  1]
        .USER_RST                       (   USER_RST                            ),//(i)  [  1]

        .DN_FILE_REQ                    ( s_USB_DN_REQ                          ),
        .DN_FILE_VCH                    ( s_USB_DN_CH                           ),
        .DN_FILE_ADDR                   ( s_USB_DN_ADDR                         ),
        .DN_FILE_SIZE                   ( s_USB_DN_SIZE                         ),

        .DN_LBUF_RDY                    ( s_USB_DN_RDY                          ),//(i)  [  1]
        .DN_LBUF_DATA                   ( s_USB_DN_DATA                         ),//(i)  [ 64]
        .DN_LBUF_DVLD                   ( s_USB_DN_DVLD                         ),//(i)  [  1]
        .DN_LBUF_SOP                    ( s_USB_DN_SOP                          ),//(i)  [  1]
        .DN_LBUF_EOP                    ( s_USB_DN_EOP                          ),//(i)  [  1]

        .DMA_DN_RDY                     (   DMA_DN_RDY                          ),//(i)  [ 16]
        .DMA_DN_DATA                    (   DMA_DN_DATA                         ),//(o)  [ 64]
        .DMA_DN_DVLD                    (   DMA_DN_DVLD                         ),//(o)  [  1]
        .DMA_DN_SOF                     (   DMA_DN_SOF                          ),//(o)  [  1]
        .DMA_DN_EOF                     (   DMA_DN_EOF                          ),//(o)  [  1]
        .DMA_DN_REQ                     (   DMA_DN_REQ                          ),//(o)  [ 16]
        .DMA_DN_VCH                     (   DMA_DN_VCH                          ),//(o)  [ 16]
        .DMA_DN_ADDR                    (   DMA_DN_ADDR                         ),//(o)  [ 32]
        .DMA_DN_SIZE                    (   DMA_DN_SIZE                         ) //(o)  [ 32]
    );

/*=============================================================================+/
||                                                                             ||
||              UP                                                             ||
||                                                                             ||
/+=============================================================================*/

    USB_UP_IF U_USB_UP_IF (
        .SYS_CLK                        (   CLK                                 ),
        .SYS_RST                        (   RST                                 ),
        .USER_CLK                       (   USER_CLK                            ),
        .USER_RST                       (   USER_RST                            ),

        .UP_LBUF_REQ                    ( DMA_UP_REQ                            ),
        .UP_LBUF_VCH                    ( DMA_UP_VCH                            ),
        .UP_LBUF_ADDR                   ( DMA_UP_ADDR                           ),
        .UP_LBUF_SIZE                   ( DMA_UP_SIZE                           ),
        .UP_LBUF_DATA                   ( DMA_UP_DATA                           ),
        .UP_LBUF_DVLD                   ( DMA_UP_DVLD                           ),
        .UP_LBUF_SOF                    ( DMA_UP_SOF                            ),
        .UP_LBUF_EOF                    ( DMA_UP_EOF                            ),
        .UP_LBUF_RDY                    ( DMA_UP_RDY                            ),

        .DMA_UP_REQ                     ( s_USB_TX_REQ                          ),
        .DMA_UP_ACK                     ( s_USB_TX_ACK                          ),
        .DMA_UP_RDY                     ( s_USB_TX_RDY                          ),
        .DMA_UP_DVLD                    ( s_USB_TX_DVLD                         ),
        .DMA_UP_DATA                    ( s_USB_TX_DATA                         ),
        .DMA_UP_SOP                     ( s_USB_TX_SOP                          ),
        .DMA_UP_EOP                     ( s_USB_TX_EOP                          )
    );

/*=============================================================================+/
||                                                                             ||
||              UP ARBIT                                                       ||
||                                                                             ||
/+=============================================================================*/

    USB_UP_ARBIT U_USB_UP_ARBIT (
        .CLK                            ( CLK                                   ),
        .RST                            ( RST                                   ),

        .USB_UP0_REQ                    ( s_USB_TX_REQ                          ),
        .USB_UP0_ACK                    ( s_USB_TX_ACK                          ),
        .USB_UP0_RDY                    ( s_USB_TX_RDY                          ),
        .USB_UP0_DVLD                   ( s_USB_TX_DVLD                         ),
        .USB_UP0_DATA                   ( s_USB_TX_DATA                         ),
        .USB_UP0_SOP                    ( s_USB_TX_SOP                          ),
        .USB_UP0_EOP                    ( s_USB_TX_EOP                          ),

        .USB_UP1_REQ                    ( s_REG_TX_REQ                          ),
        .USB_UP1_ACK                    ( s_REG_TX_ACK                          ),
        .USB_UP1_RDY                    (                                       ),
        .USB_UP1_DVLD                   ( s_REG_TX_DVLD                         ),
        .USB_UP1_DATA                   ( s_REG_TX_DATA                         ),
        .USB_UP1_SOP                    ( s_REG_TX_SOP                          ),
        .USB_UP1_EOP                    ( s_REG_TX_EOP                          ),

        .USB_UP_RDY                     ( s_USB_UP_RDY                          ),
        .USB_UP_REQ                     ( s_USB_UP_REQ                          ),
        .USB_UP_ACK                     ( s_USB_UP_ACK                          ),
        .USB_UP_DVLD                    ( s_USB_UP_DVLD                         ),
        .USB_UP_DATA                    ( s_USB_UP_DATA                         ),
        .USB_UP_SOP                     ( s_USB_UP_SOP                          ),
        .USB_UP_EOP                     ( s_USB_UP_EOP                          )
    );

endmodule