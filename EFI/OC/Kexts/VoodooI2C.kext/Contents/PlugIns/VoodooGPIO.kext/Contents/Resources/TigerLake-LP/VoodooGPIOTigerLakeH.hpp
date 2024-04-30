//
//  VoodooGPIOTigerLakeLP.hpp
//  VoodooGPIO
//
//  Created by DOMO ARIGATO on 3/25/23.
//  Copyright © 2023 CoolStar. All rights reserved.
//

#include "../VoodooGPIOIntel.hpp"

#ifndef VoodooGPIOTigerLakeH_hpp
#define VoodooGPIOTigerLakeH_hpp

enum {
    INTEL_GPIO_BASE_ZERO    = -2,
    INTEL_GPIO_BASE_NOMAP    = -1,
    INTEL_GPIO_BASE_MATCH    = 0,
};

#define TGL_LP_PAD_OWN        0x020
#define TGL_LP_PADCFGLOCK    0x080
#define TGL_LP_HOSTSW_OWN    0x0b0
#define TGL_LP_GPI_IS        0x100
#define TGL_LP_GPI_IE        0x120

#define TGL_H_PAD_OWN        0x020
#define TGL_H_PADCFGLOCK    0x090
#define TGL_H_HOSTSW_OWN    0x0c0
#define TGL_H_GPI_IS        0x100
#define TGL_H_GPI_IE        0x120


#define INTEL_COMMUNITY_LPP(b, s, e, o, g)        \
{                                           \
    .barno = (b),                           \
    .padown_offset = TGL_LP_PAD_OWN,           \
    .padcfglock_offset = TGL_LP_PADCFGLOCK,    \
    .hostown_offset = (o),                  \
    .ie_offset = TGL_LP_GPI_IE,                \
    .pin_base = (s),                        \
    .npins = ((e) - (s) + 1),               \
    .gpps = (g),                            \
    .ngpps = ARRAY_SIZE(g),                 \
}

#define INTEL_COMMUNITY_LP(b, s, e, g)          \
INTEL_COMMUNITY_LPP(b, s, e, TGL_LP_HOSTSW_OWN, g)

#define INTEL_COMMUNITY_HH(b, s, e, o, g)        \
{                                           \
    .barno = (b),                           \
    .padown_offset = TGL_H_PAD_OWN,           \
    .padcfglock_offset = TGL_H_PADCFGLOCK,    \
    .hostown_offset = (o),                  \
    .ie_offset = TGL_H_GPI_IE,                \
    .pin_base = (s),                        \
    .npins = ((e) - (s) + 1),               \
    .gpps = (g),                            \
    .ngpps = ARRAY_SIZE(g),                 \
}

#define INTEL_COMMUNITY_H(b, s, e, g)          \
INTEL_COMMUNITY_HH(b, s, e, TGL_H_HOSTSW_OWN, g)


#define TGL_GPP(r, s, e, g)                \
    {                        \
        .reg_num = (r),                \
        .base = (s),                \
        .size = ((e) - (s) + 1),        \
        .gpio_base = (g),            \
    }

#define TGL_LP_COMMUNITY(b, s, e, g)            \
    INTEL_COMMUNITY_LP(b, s, e, g)

#define TGL_H_COMMUNITY(b, s, e, g)            \
    INTEL_COMMUNITY_H(b, s, e, g)

/* Tiger Lake-LP */
static struct pinctrl_pin_desc tgllp_pins[] = {
    /* GPP_B */
    PINCTRL_PIN(0, (char *)"CORE_VID_0"),
    PINCTRL_PIN(1, (char *)"CORE_VID_1"),
    PINCTRL_PIN(2, (char *)"VRALERTB"),
    PINCTRL_PIN(3, (char *)"CPU_GP_2"),
    PINCTRL_PIN(4, (char *)"CPU_GP_3"),
    PINCTRL_PIN(5, (char *)"ISH_I2C0_SDA"),
    PINCTRL_PIN(6, (char *)"ISH_I2C0_SCL"),
    PINCTRL_PIN(7, (char *)"ISH_I2C1_SDA"),
    PINCTRL_PIN(8, (char *)"ISH_I2C1_SCL"),
    PINCTRL_PIN(9, (char *)"I2C5_SDA"),
    PINCTRL_PIN(10, (char *)"I2C5_SCL"),
    PINCTRL_PIN(11, (char *)"PMCALERTB"),
    PINCTRL_PIN(12, (char *)"SLP_S0B"),
    PINCTRL_PIN(13, (char *)"PLTRSTB"),
    PINCTRL_PIN(14, (char *)"SPKR"),
    PINCTRL_PIN(15, (char *)"GSPI0_CS0B"),
    PINCTRL_PIN(16, (char *)"GSPI0_CLK"),
    PINCTRL_PIN(17, (char *)"GSPI0_MISO"),
    PINCTRL_PIN(18, (char *)"GSPI0_MOSI"),
    PINCTRL_PIN(19, (char *)"GSPI1_CS0B"),
    PINCTRL_PIN(20, (char *)"GSPI1_CLK"),
    PINCTRL_PIN(21, (char *)"GSPI1_MISO"),
    PINCTRL_PIN(22, (char *)"GSPI1_MOSI"),
    PINCTRL_PIN(23, (char *)"SML1ALERTB"),
    PINCTRL_PIN(24, (char *)"GSPI0_CLK_LOOPBK"),
    PINCTRL_PIN(25, (char *)"GSPI1_CLK_LOOPBK"),
    /* GPP_T */
    PINCTRL_PIN(26, (char *)"I2C6_SDA"),
    PINCTRL_PIN(27, (char *)"I2C6_SCL"),
    PINCTRL_PIN(28, (char *)"I2C7_SDA"),
    PINCTRL_PIN(29, (char *)"I2C7_SCL"),
    PINCTRL_PIN(30, (char *)"UART4_RXD"),
    PINCTRL_PIN(31, (char *)"UART4_TXD"),
    PINCTRL_PIN(32, (char *)"UART4_RTSB"),
    PINCTRL_PIN(33, (char *)"UART4_CTSB"),
    PINCTRL_PIN(34, (char *)"UART5_RXD"),
    PINCTRL_PIN(35, (char *)"UART5_TXD"),
    PINCTRL_PIN(36, (char *)"UART5_RTSB"),
    PINCTRL_PIN(37, (char *)"UART5_CTSB"),
    PINCTRL_PIN(38, (char *)"UART6_RXD"),
    PINCTRL_PIN(39, (char *)"UART6_TXD"),
    PINCTRL_PIN(40, (char *)"UART6_RTSB"),
    PINCTRL_PIN(41, (char *)"UART6_CTSB"),
    /* GPP_A */
    PINCTRL_PIN(42, (char *)"ESPI_IO_0"),
    PINCTRL_PIN(43, (char *)"ESPI_IO_1"),
    PINCTRL_PIN(44, (char *)"ESPI_IO_2"),
    PINCTRL_PIN(45, (char *)"ESPI_IO_3"),
    PINCTRL_PIN(46, (char *)"ESPI_CSB"),
    PINCTRL_PIN(47, (char *)"ESPI_CLK"),
    PINCTRL_PIN(48, (char *)"ESPI_RESETB"),
    PINCTRL_PIN(49, (char *)"I2S2_SCLK"),
    PINCTRL_PIN(50, (char *)"I2S2_SFRM"),
    PINCTRL_PIN(51, (char *)"I2S2_TXD"),
    PINCTRL_PIN(52, (char *)"I2S2_RXD"),
    PINCTRL_PIN(53, (char *)"PMC_I2C_SDA"),
    PINCTRL_PIN(54, (char *)"SATAXPCIE_1"),
    PINCTRL_PIN(55, (char *)"PMC_I2C_SCL"),
    PINCTRL_PIN(56, (char *)"USB2_OCB_1"),
    PINCTRL_PIN(57, (char *)"USB2_OCB_2"),
    PINCTRL_PIN(58, (char *)"USB2_OCB_3"),
    PINCTRL_PIN(59, (char *)"DDSP_HPD_C"),
    PINCTRL_PIN(60, (char *)"DDSP_HPD_B"),
    PINCTRL_PIN(61, (char *)"DDSP_HPD_1"),
    PINCTRL_PIN(62, (char *)"DDSP_HPD_2"),
    PINCTRL_PIN(63, (char *)"GPPC_A_21"),
    PINCTRL_PIN(64, (char *)"GPPC_A_22"),
    PINCTRL_PIN(65, (char *)"I2S1_SCLK"),
    PINCTRL_PIN(66, (char *)"ESPI_CLK_LOOPBK"),
    /* GPP_S */
    PINCTRL_PIN(67, (char *)"SNDW0_CLK"),
    PINCTRL_PIN(68, (char *)"SNDW0_DATA"),
    PINCTRL_PIN(69, (char *)"SNDW1_CLK"),
    PINCTRL_PIN(70, (char *)"SNDW1_DATA"),
    PINCTRL_PIN(71, (char *)"SNDW2_CLK"),
    PINCTRL_PIN(72, (char *)"SNDW2_DATA"),
    PINCTRL_PIN(73, (char *)"SNDW3_CLK"),
    PINCTRL_PIN(74, (char *)"SNDW3_DATA"),
    /* GPP_H */
    PINCTRL_PIN(75, (char *)"GPPC_H_0"),
    PINCTRL_PIN(76, (char *)"GPPC_H_1"),
    PINCTRL_PIN(77, (char *)"GPPC_H_2"),
    PINCTRL_PIN(78, (char *)"SX_EXIT_HOLDOFFB"),
    PINCTRL_PIN(79, (char *)"I2C2_SDA"),
    PINCTRL_PIN(80, (char *)"I2C2_SCL"),
    PINCTRL_PIN(81, (char *)"I2C3_SDA"),
    PINCTRL_PIN(82, (char *)"I2C3_SCL"),
    PINCTRL_PIN(83, (char *)"I2C4_SDA"),
    PINCTRL_PIN(84, (char *)"I2C4_SCL"),
    PINCTRL_PIN(85, (char *)"SRCCLKREQB_4"),
    PINCTRL_PIN(86, (char *)"SRCCLKREQB_5"),
    PINCTRL_PIN(87, (char *)"M2_SKT2_CFG_0"),
    PINCTRL_PIN(88, (char *)"M2_SKT2_CFG_1"),
    PINCTRL_PIN(89, (char *)"M2_SKT2_CFG_2"),
    PINCTRL_PIN(90, (char *)"M2_SKT2_CFG_3"),
    PINCTRL_PIN(91, (char *)"DDPB_CTRLCLK"),
    PINCTRL_PIN(92, (char *)"DDPB_CTRLDATA"),
    PINCTRL_PIN(93, (char *)"CPU_C10_GATEB"),
    PINCTRL_PIN(94, (char *)"TIME_SYNC_0"),
    PINCTRL_PIN(95, (char *)"IMGCLKOUT_1"),
    PINCTRL_PIN(96, (char *)"IMGCLKOUT_2"),
    PINCTRL_PIN(97, (char *)"IMGCLKOUT_3"),
    PINCTRL_PIN(98, (char *)"IMGCLKOUT_4"),
    /* GPP_D */
    PINCTRL_PIN(99, (char *)"ISH_GP_0"),
    PINCTRL_PIN(100, (char *)"ISH_GP_1"),
    PINCTRL_PIN(101, (char *)"ISH_GP_2"),
    PINCTRL_PIN(102, (char *)"ISH_GP_3"),
    PINCTRL_PIN(103, (char *)"IMGCLKOUT_0"),
    PINCTRL_PIN(104, (char *)"SRCCLKREQB_0"),
    PINCTRL_PIN(105, (char *)"SRCCLKREQB_1"),
    PINCTRL_PIN(106, (char *)"SRCCLKREQB_2"),
    PINCTRL_PIN(107, (char *)"SRCCLKREQB_3"),
    PINCTRL_PIN(108, (char *)"ISH_SPI_CSB"),
    PINCTRL_PIN(109, (char *)"ISH_SPI_CLK"),
    PINCTRL_PIN(110, (char *)"ISH_SPI_MISO"),
    PINCTRL_PIN(111, (char *)"ISH_SPI_MOSI"),
    PINCTRL_PIN(112, (char *)"ISH_UART0_RXD"),
    PINCTRL_PIN(113, (char *)"ISH_UART0_TXD"),
    PINCTRL_PIN(114, (char *)"ISH_UART0_RTSB"),
    PINCTRL_PIN(115, (char *)"ISH_UART0_CTSB"),
    PINCTRL_PIN(116, (char *)"ISH_GP_4"),
    PINCTRL_PIN(117, (char *)"ISH_GP_5"),
    PINCTRL_PIN(118, (char *)"I2S_MCLK1_OUT"),
    PINCTRL_PIN(119, (char *)"GSPI2_CLK_LOOPBK"),
    /* GPP_U */
    PINCTRL_PIN(120, (char *)"UART3_RXD"),
    PINCTRL_PIN(121, (char *)"UART3_TXD"),
    PINCTRL_PIN(122, (char *)"UART3_RTSB"),
    PINCTRL_PIN(123, (char *)"UART3_CTSB"),
    PINCTRL_PIN(124, (char *)"GSPI3_CS0B"),
    PINCTRL_PIN(125, (char *)"GSPI3_CLK"),
    PINCTRL_PIN(126, (char *)"GSPI3_MISO"),
    PINCTRL_PIN(127, (char *)"GSPI3_MOSI"),
    PINCTRL_PIN(128, (char *)"GSPI4_CS0B"),
    PINCTRL_PIN(129, (char *)"GSPI4_CLK"),
    PINCTRL_PIN(130, (char *)"GSPI4_MISO"),
    PINCTRL_PIN(131, (char *)"GSPI4_MOSI"),
    PINCTRL_PIN(132, (char *)"GSPI5_CS0B"),
    PINCTRL_PIN(133, (char *)"GSPI5_CLK"),
    PINCTRL_PIN(134, (char *)"GSPI5_MISO"),
    PINCTRL_PIN(135, (char *)"GSPI5_MOSI"),
    PINCTRL_PIN(136, (char *)"GSPI6_CS0B"),
    PINCTRL_PIN(137, (char *)"GSPI6_CLK"),
    PINCTRL_PIN(138, (char *)"GSPI6_MISO"),
    PINCTRL_PIN(139, (char *)"GSPI6_MOSI"),
    PINCTRL_PIN(140, (char *)"GSPI3_CLK_LOOPBK"),
    PINCTRL_PIN(141, (char *)"GSPI4_CLK_LOOPBK"),
    PINCTRL_PIN(142, (char *)"GSPI5_CLK_LOOPBK"),
    PINCTRL_PIN(143, (char *)"GSPI6_CLK_LOOPBK"),
    /* vGPIO */
    PINCTRL_PIN(144, (char *)"CNV_BTEN"),
    PINCTRL_PIN(145, (char *)"CNV_BT_HOST_WAKEB"),
    PINCTRL_PIN(146, (char *)"CNV_BT_IF_SELECT"),
    PINCTRL_PIN(147, (char *)"vCNV_BT_UART_TXD"),
    PINCTRL_PIN(148, (char *)"vCNV_BT_UART_RXD"),
    PINCTRL_PIN(149, (char *)"vCNV_BT_UART_CTS_B"),
    PINCTRL_PIN(150, (char *)"vCNV_BT_UART_RTS_B"),
    PINCTRL_PIN(151, (char *)"vCNV_MFUART1_TXD"),
    PINCTRL_PIN(152, (char *)"vCNV_MFUART1_RXD"),
    PINCTRL_PIN(153, (char *)"vCNV_MFUART1_CTS_B"),
    PINCTRL_PIN(154, (char *)"vCNV_MFUART1_RTS_B"),
    PINCTRL_PIN(155, (char *)"vUART0_TXD"),
    PINCTRL_PIN(156, (char *)"vUART0_RXD"),
    PINCTRL_PIN(157, (char *)"vUART0_CTS_B"),
    PINCTRL_PIN(158, (char *)"vUART0_RTS_B"),
    PINCTRL_PIN(159, (char *)"vISH_UART0_TXD"),
    PINCTRL_PIN(160, (char *)"vISH_UART0_RXD"),
    PINCTRL_PIN(161, (char *)"vISH_UART0_CTS_B"),
    PINCTRL_PIN(162, (char *)"vISH_UART0_RTS_B"),
    PINCTRL_PIN(163, (char *)"vCNV_BT_I2S_BCLK"),
    PINCTRL_PIN(164, (char *)"vCNV_BT_I2S_WS_SYNC"),
    PINCTRL_PIN(165, (char *)"vCNV_BT_I2S_SDO"),
    PINCTRL_PIN(166, (char *)"vCNV_BT_I2S_SDI"),
    PINCTRL_PIN(167, (char *)"vI2S2_SCLK"),
    PINCTRL_PIN(168, (char *)"vI2S2_SFRM"),
    PINCTRL_PIN(169, (char *)"vI2S2_TXD"),
    PINCTRL_PIN(170, (char *)"vI2S2_RXD"),
    /* GPP_C */
    PINCTRL_PIN(171, (char *)"SMBCLK"),
    PINCTRL_PIN(172, (char *)"SMBDATA"),
    PINCTRL_PIN(173, (char *)"SMBALERTB"),
    PINCTRL_PIN(174, (char *)"SML0CLK"),
    PINCTRL_PIN(175, (char *)"SML0DATA"),
    PINCTRL_PIN(176, (char *)"SML0ALERTB"),
    PINCTRL_PIN(177, (char *)"SML1CLK"),
    PINCTRL_PIN(178, (char *)"SML1DATA"),
    PINCTRL_PIN(179, (char *)"UART0_RXD"),
    PINCTRL_PIN(180, (char *)"UART0_TXD"),
    PINCTRL_PIN(181, (char *)"UART0_RTSB"),
    PINCTRL_PIN(182, (char *)"UART0_CTSB"),
    PINCTRL_PIN(183, (char *)"UART1_RXD"),
    PINCTRL_PIN(184, (char *)"UART1_TXD"),
    PINCTRL_PIN(185, (char *)"UART1_RTSB"),
    PINCTRL_PIN(186, (char *)"UART1_CTSB"),
    PINCTRL_PIN(187, (char *)"I2C0_SDA"),
    PINCTRL_PIN(188, (char *)"I2C0_SCL"),
    PINCTRL_PIN(189, (char *)"I2C1_SDA"),
    PINCTRL_PIN(190, (char *)"I2C1_SCL"),
    PINCTRL_PIN(191, (char *)"UART2_RXD"),
    PINCTRL_PIN(192, (char *)"UART2_TXD"),
    PINCTRL_PIN(193, (char *)"UART2_RTSB"),
    PINCTRL_PIN(194, (char *)"UART2_CTSB"),
    /* GPP_F */
    PINCTRL_PIN(195, (char *)"CNV_BRI_DT"),
    PINCTRL_PIN(196, (char *)"CNV_BRI_RSP"),
    PINCTRL_PIN(197, (char *)"CNV_RGI_DT"),
    PINCTRL_PIN(198, (char *)"CNV_RGI_RSP"),
    PINCTRL_PIN(199, (char *)"CNV_RF_RESET_B"),
    PINCTRL_PIN(200, (char *)"GPPC_F_5"),
    PINCTRL_PIN(201, (char *)"CNV_PA_BLANKING"),
    PINCTRL_PIN(202, (char *)"GPPC_F_7"),
    PINCTRL_PIN(203, (char *)"I2S_MCLK2_INOUT"),
    PINCTRL_PIN(204, (char *)"BOOTMPC"),
    PINCTRL_PIN(205, (char *)"GPPC_F_10"),
    PINCTRL_PIN(206, (char *)"GPPC_F_11"),
    PINCTRL_PIN(207, (char *)"GSXDOUT"),
    PINCTRL_PIN(208, (char *)"GSXSLOAD"),
    PINCTRL_PIN(209, (char *)"GSXDIN"),
    PINCTRL_PIN(210, (char *)"GSXSRESETB"),
    PINCTRL_PIN(211, (char *)"GSXCLK"),
    PINCTRL_PIN(212, (char *)"GMII_MDC"),
    PINCTRL_PIN(213, (char *)"GMII_MDIO"),
    PINCTRL_PIN(214, (char *)"SRCCLKREQB_6"),
    PINCTRL_PIN(215, (char *)"EXT_PWR_GATEB"),
    PINCTRL_PIN(216, (char *)"EXT_PWR_GATE2B"),
    PINCTRL_PIN(217, (char *)"VNN_CTRL"),
    PINCTRL_PIN(218, (char *)"V1P05_CTRL"),
    PINCTRL_PIN(219, (char *)"GPPF_CLK_LOOPBACK"),
    /* HVCMOS */
    PINCTRL_PIN(220, (char *)"L_BKLTEN"),
    PINCTRL_PIN(221, (char *)"L_BKLTCTL"),
    PINCTRL_PIN(222, (char *)"L_VDDEN"),
    PINCTRL_PIN(223, (char *)"SYS_PWROK"),
    PINCTRL_PIN(224, (char *)"SYS_RESETB"),
    PINCTRL_PIN(225, (char *)"MLK_RSTB"),
    /* GPP_E */
    PINCTRL_PIN(226, (char *)"SATAXPCIE_0"),
    PINCTRL_PIN(227, (char *)"SPI1_IO_2"),
    PINCTRL_PIN(228, (char *)"SPI1_IO_3"),
    PINCTRL_PIN(229, (char *)"CPU_GP_0"),
    PINCTRL_PIN(230, (char *)"SATA_DEVSLP_0"),
    PINCTRL_PIN(231, (char *)"SATA_DEVSLP_1"),
    PINCTRL_PIN(232, (char *)"GPPC_E_6"),
    PINCTRL_PIN(233, (char *)"CPU_GP_1"),
    PINCTRL_PIN(234, (char *)"SPI1_CS1B"),
    PINCTRL_PIN(235, (char *)"USB2_OCB_0"),
    PINCTRL_PIN(236, (char *)"SPI1_CSB"),
    PINCTRL_PIN(237, (char *)"SPI1_CLK"),
    PINCTRL_PIN(238, (char *)"SPI1_MISO_IO_1"),
    PINCTRL_PIN(239, (char *)"SPI1_MOSI_IO_0"),
    PINCTRL_PIN(240, (char *)"DDSP_HPD_A"),
    PINCTRL_PIN(241, (char *)"ISH_GP_6"),
    PINCTRL_PIN(242, (char *)"ISH_GP_7"),
    PINCTRL_PIN(243, (char *)"GPPC_E_17"),
    PINCTRL_PIN(244, (char *)"DDP1_CTRLCLK"),
    PINCTRL_PIN(245, (char *)"DDP1_CTRLDATA"),
    PINCTRL_PIN(246, (char *)"DDP2_CTRLCLK"),
    PINCTRL_PIN(247, (char *)"DDP2_CTRLDATA"),
    PINCTRL_PIN(248, (char *)"DDPA_CTRLCLK"),
    PINCTRL_PIN(249, (char *)"DDPA_CTRLDATA"),
    PINCTRL_PIN(250, (char *)"SPI1_CLK_LOOPBK"),
    /* JTAG */
    PINCTRL_PIN(251, (char *)"JTAG_TDO"),
    PINCTRL_PIN(252, (char *)"JTAGX"),
    PINCTRL_PIN(253, (char *)"PRDYB"),
    PINCTRL_PIN(254, (char *)"PREQB"),
    PINCTRL_PIN(255, (char *)"CPU_TRSTB"),
    PINCTRL_PIN(256, (char *)"JTAG_TDI"),
    PINCTRL_PIN(257, (char *)"JTAG_TMS"),
    PINCTRL_PIN(258, (char *)"JTAG_TCK"),
    PINCTRL_PIN(259, (char *)"DBG_PMODE"),
    /* GPP_R */
    PINCTRL_PIN(260, (char *)"HDA_BCLK"),
    PINCTRL_PIN(261, (char *)"HDA_SYNC"),
    PINCTRL_PIN(262, (char *)"HDA_SDO"),
    PINCTRL_PIN(263, (char *)"HDA_SDI_0"),
    PINCTRL_PIN(264, (char *)"HDA_RSTB"),
    PINCTRL_PIN(265, (char *)"HDA_SDI_1"),
    PINCTRL_PIN(266, (char *)"GPP_R_6"),
    PINCTRL_PIN(267, (char *)"GPP_R_7"),
    /* SPI */
    PINCTRL_PIN(268, (char *)"SPI0_IO_2"),
    PINCTRL_PIN(269, (char *)"SPI0_IO_3"),
    PINCTRL_PIN(270, (char *)"SPI0_MOSI_IO_0"),
    PINCTRL_PIN(271, (char *)"SPI0_MISO_IO_1"),
    PINCTRL_PIN(272, (char *)"SPI0_TPM_CSB"),
    PINCTRL_PIN(273, (char *)"SPI0_FLASH_0_CSB"),
    PINCTRL_PIN(274, (char *)"SPI0_FLASH_1_CSB"),
    PINCTRL_PIN(275, (char *)"SPI0_CLK"),
    PINCTRL_PIN(276, (char *)"SPI0_CLK_LOOPBK"),
};

static struct intel_padgroup tgllp_community0_gpps[] = {
    TGL_GPP(0, 0, 25, 0),                /* GPP_B */
    TGL_GPP(1, 26, 41, 32),                /* GPP_T */
    TGL_GPP(2, 42, 66, 64),                /* GPP_A */
};

static struct intel_padgroup tgllp_community1_gpps[] = {
    TGL_GPP(0, 67, 74, 96),                /* GPP_S */
    TGL_GPP(1, 75, 98, 128),            /* GPP_H */
    TGL_GPP(2, 99, 119, 160),            /* GPP_D */
    TGL_GPP(3, 120, 143, 192),            /* GPP_U */
    TGL_GPP(4, 144, 170, 224),            /* vGPIO */
};

static struct intel_padgroup tgllp_community4_gpps[] = {
    TGL_GPP(0, 171, 194, 256),            /* GPP_C */
    TGL_GPP(1, 195, 219, 288),            /* GPP_F */
    TGL_GPP(2, 220, 225, INTEL_GPIO_BASE_NOMAP),    /* HVCMOS */
    TGL_GPP(3, 226, 250, 320),            /* GPP_E */
    TGL_GPP(4, 251, 259, INTEL_GPIO_BASE_NOMAP),    /* JTAG */
};

static struct intel_padgroup tgllp_community5_gpps[] = {
    TGL_GPP(0, 260, 267, 352),            /* GPP_R */
    TGL_GPP(1, 268, 276, INTEL_GPIO_BASE_NOMAP),    /* SPI */
};

static struct intel_community tgllp_communities[] = {
    TGL_LP_COMMUNITY(0, 0, 66, tgllp_community0_gpps),
    TGL_LP_COMMUNITY(1, 67, 170, tgllp_community1_gpps),
    TGL_LP_COMMUNITY(2, 171, 259, tgllp_community4_gpps),
    TGL_LP_COMMUNITY(3, 260, 276, tgllp_community5_gpps),
};


/* Tiger Lake-H */
static struct pinctrl_pin_desc tglh_pins[] = {
    /* GPP_A */
    PINCTRL_PIN(0, (char *)"SPI0_IO_2"),
    PINCTRL_PIN(1, (char *)"SPI0_IO_3"),
    PINCTRL_PIN(2, (char *)"SPI0_MOSI_IO_0"),
    PINCTRL_PIN(3, (char *)"SPI0_MISO_IO_1"),
    PINCTRL_PIN(4, (char *)"SPI0_TPM_CSB"),
    PINCTRL_PIN(5, (char *)"SPI0_FLASH_0_CSB"),
    PINCTRL_PIN(6, (char *)"SPI0_FLASH_1_CSB"),
    PINCTRL_PIN(7, (char *)"SPI0_CLK"),
    PINCTRL_PIN(8, (char *)"ESPI_IO_0"),
    PINCTRL_PIN(9, (char *)"ESPI_IO_1"),
    PINCTRL_PIN(10, (char *)"ESPI_IO_2"),
    PINCTRL_PIN(11, (char *)"ESPI_IO_3"),
    PINCTRL_PIN(12, (char *)"ESPI_CS0B"),
    PINCTRL_PIN(13, (char *)"ESPI_CLK"),
    PINCTRL_PIN(14, (char *)"ESPI_RESETB"),
    PINCTRL_PIN(15, (char *)"ESPI_CS1B"),
    PINCTRL_PIN(16, (char *)"ESPI_CS2B"),
    PINCTRL_PIN(17, (char *)"ESPI_CS3B"),
    PINCTRL_PIN(18, (char *)"ESPI_ALERT0B"),
    PINCTRL_PIN(19, (char *)"ESPI_ALERT1B"),
    PINCTRL_PIN(20, (char *)"ESPI_ALERT2B"),
    PINCTRL_PIN(21, (char *)"ESPI_ALERT3B"),
    PINCTRL_PIN(22, (char *)"GPPC_A_14"),
    PINCTRL_PIN(23, (char *)"SPI0_CLK_LOOPBK"),
    PINCTRL_PIN(24, (char *)"ESPI_CLK_LOOPBK"),
    /* GPP_R */
    PINCTRL_PIN(25, (char *)"HDA_BCLK"),
    PINCTRL_PIN(26, (char *)"HDA_SYNC"),
    PINCTRL_PIN(27, (char *)"HDA_SDO"),
    PINCTRL_PIN(28, (char *)"HDA_SDI_0"),
    PINCTRL_PIN(29, (char *)"HDA_RSTB"),
    PINCTRL_PIN(30, (char *)"HDA_SDI_1"),
    PINCTRL_PIN(31, (char *)"GPP_R_6"),
    PINCTRL_PIN(32, (char *)"GPP_R_7"),
    PINCTRL_PIN(33, (char *)"GPP_R_8"),
    PINCTRL_PIN(34, (char *)"PCIE_LNK_DOWN"),
    PINCTRL_PIN(35, (char *)"ISH_UART0_RTSB"),
    PINCTRL_PIN(36, (char *)"SX_EXIT_HOLDOFFB"),
    PINCTRL_PIN(37, (char *)"CLKOUT_48"),
    PINCTRL_PIN(38, (char *)"ISH_GP_7"),
    PINCTRL_PIN(39, (char *)"ISH_GP_0"),
    PINCTRL_PIN(40, (char *)"ISH_GP_1"),
    PINCTRL_PIN(41, (char *)"ISH_GP_2"),
    PINCTRL_PIN(42, (char *)"ISH_GP_3"),
    PINCTRL_PIN(43, (char *)"ISH_GP_4"),
    PINCTRL_PIN(44, (char *)"ISH_GP_5"),
    /* GPP_B */
    PINCTRL_PIN(45, (char *)"GSPI0_CS1B"),
    PINCTRL_PIN(46, (char *)"GSPI1_CS1B"),
    PINCTRL_PIN(47, (char *)"VRALERTB"),
    PINCTRL_PIN(48, (char *)"CPU_GP_2"),
    PINCTRL_PIN(49, (char *)"CPU_GP_3"),
    PINCTRL_PIN(50, (char *)"SRCCLKREQB_0"),
    PINCTRL_PIN(51, (char *)"SRCCLKREQB_1"),
    PINCTRL_PIN(52, (char *)"SRCCLKREQB_2"),
    PINCTRL_PIN(53, (char *)"SRCCLKREQB_3"),
    PINCTRL_PIN(54, (char *)"SRCCLKREQB_4"),
    PINCTRL_PIN(55, (char *)"SRCCLKREQB_5"),
    PINCTRL_PIN(56, (char *)"I2S_MCLK"),
    PINCTRL_PIN(57, (char *)"SLP_S0B"),
    PINCTRL_PIN(58, (char *)"PLTRSTB"),
    PINCTRL_PIN(59, (char *)"SPKR"),
    PINCTRL_PIN(60, (char *)"GSPI0_CS0B"),
    PINCTRL_PIN(61, (char *)"GSPI0_CLK"),
    PINCTRL_PIN(62, (char *)"GSPI0_MISO"),
    PINCTRL_PIN(63, (char *)"GSPI0_MOSI"),
    PINCTRL_PIN(64, (char *)"GSPI1_CS0B"),
    PINCTRL_PIN(65, (char *)"GSPI1_CLK"),
    PINCTRL_PIN(66, (char *)"GSPI1_MISO"),
    PINCTRL_PIN(67, (char *)"GSPI1_MOSI"),
    PINCTRL_PIN(68, (char *)"SML1ALERTB"),
    PINCTRL_PIN(69, (char *)"GSPI0_CLK_LOOPBK"),
    PINCTRL_PIN(70, (char *)"GSPI1_CLK_LOOPBK"),
    /* vGPIO_0 */
    PINCTRL_PIN(71, (char *)"ESPI_USB_OCB_0"),
    PINCTRL_PIN(72, (char *)"ESPI_USB_OCB_1"),
    PINCTRL_PIN(73, (char *)"ESPI_USB_OCB_2"),
    PINCTRL_PIN(74, (char *)"ESPI_USB_OCB_3"),
    PINCTRL_PIN(75, (char *)"USB_CPU_OCB_0"),
    PINCTRL_PIN(76, (char *)"USB_CPU_OCB_1"),
    PINCTRL_PIN(77, (char *)"USB_CPU_OCB_2"),
    PINCTRL_PIN(78, (char *)"USB_CPU_OCB_3"),
    /* GPP_D */
    PINCTRL_PIN(79, (char *)"SPI1_CSB"),
    PINCTRL_PIN(80, (char *)"SPI1_CLK"),
    PINCTRL_PIN(81, (char *)"SPI1_MISO_IO_1"),
    PINCTRL_PIN(82, (char *)"SPI1_MOSI_IO_0"),
    PINCTRL_PIN(83, (char *)"SML1CLK"),
    PINCTRL_PIN(84, (char *)"I2S2_SFRM"),
    PINCTRL_PIN(85, (char *)"I2S2_TXD"),
    PINCTRL_PIN(86, (char *)"I2S2_RXD"),
    PINCTRL_PIN(87, (char *)"I2S2_SCLK"),
    PINCTRL_PIN(88, (char *)"SML0CLK"),
    PINCTRL_PIN(89, (char *)"SML0DATA"),
    PINCTRL_PIN(90, (char *)"GPP_D_11"),
    PINCTRL_PIN(91, (char *)"ISH_UART0_CTSB"),
    PINCTRL_PIN(92, (char *)"SPI1_IO_2"),
    PINCTRL_PIN(93, (char *)"SPI1_IO_3"),
    PINCTRL_PIN(94, (char *)"SML1DATA"),
    PINCTRL_PIN(95, (char *)"GSPI3_CS0B"),
    PINCTRL_PIN(96, (char *)"GSPI3_CLK"),
    PINCTRL_PIN(97, (char *)"GSPI3_MISO"),
    PINCTRL_PIN(98, (char *)"GSPI3_MOSI"),
    PINCTRL_PIN(99, (char *)"UART3_RXD"),
    PINCTRL_PIN(100, (char *)"UART3_TXD"),
    PINCTRL_PIN(101, (char *)"UART3_RTSB"),
    PINCTRL_PIN(102, (char *)"UART3_CTSB"),
    PINCTRL_PIN(103, (char *)"SPI1_CLK_LOOPBK"),
    PINCTRL_PIN(104, (char *)"GSPI3_CLK_LOOPBK"),
    /* GPP_C */
    PINCTRL_PIN(105, (char *)"SMBCLK"),
    PINCTRL_PIN(106, (char *)"SMBDATA"),
    PINCTRL_PIN(107, (char *)"SMBALERTB"),
    PINCTRL_PIN(108, (char *)"ISH_UART0_RXD"),
    PINCTRL_PIN(109, (char *)"ISH_UART0_TXD"),
    PINCTRL_PIN(110, (char *)"SML0ALERTB"),
    PINCTRL_PIN(111, (char *)"ISH_I2C2_SDA"),
    PINCTRL_PIN(112, (char *)"ISH_I2C2_SCL"),
    PINCTRL_PIN(113, (char *)"UART0_RXD"),
    PINCTRL_PIN(114, (char *)"UART0_TXD"),
    PINCTRL_PIN(115, (char *)"UART0_RTSB"),
    PINCTRL_PIN(116, (char *)"UART0_CTSB"),
    PINCTRL_PIN(117, (char *)"UART1_RXD"),
    PINCTRL_PIN(118, (char *)"UART1_TXD"),
    PINCTRL_PIN(119, (char *)"UART1_RTSB"),
    PINCTRL_PIN(120, (char *)"UART1_CTSB"),
    PINCTRL_PIN(121, (char *)"I2C0_SDA"),
    PINCTRL_PIN(122, (char *)"I2C0_SCL"),
    PINCTRL_PIN(123, (char *)"I2C1_SDA"),
    PINCTRL_PIN(124, (char *)"I2C1_SCL"),
    PINCTRL_PIN(125, (char *)"UART2_RXD"),
    PINCTRL_PIN(126, (char *)"UART2_TXD"),
    PINCTRL_PIN(127, (char *)"UART2_RTSB"),
    PINCTRL_PIN(128, (char *)"UART2_CTSB"),
    /* GPP_S */
    PINCTRL_PIN(129, (char *)"SNDW1_CLK"),
    PINCTRL_PIN(130, (char *)"SNDW1_DATA"),
    PINCTRL_PIN(131, (char *)"SNDW2_CLK"),
    PINCTRL_PIN(132, (char *)"SNDW2_DATA"),
    PINCTRL_PIN(133, (char *)"SNDW3_CLK"),
    PINCTRL_PIN(134, (char *)"SNDW3_DATA"),
    PINCTRL_PIN(135, (char *)"SNDW4_CLK"),
    PINCTRL_PIN(136, (char *)"SNDW4_DATA"),
    /* GPP_G */
    PINCTRL_PIN(137, (char *)"DDPA_CTRLCLK"),
    PINCTRL_PIN(138, (char *)"DDPA_CTRLDATA"),
    PINCTRL_PIN(139, (char *)"DNX_FORCE_RELOAD"),
    PINCTRL_PIN(140, (char *)"GMII_MDC_0"),
    PINCTRL_PIN(141, (char *)"GMII_MDIO_0"),
    PINCTRL_PIN(142, (char *)"SLP_DRAMB"),
    PINCTRL_PIN(143, (char *)"GPPC_G_6"),
    PINCTRL_PIN(144, (char *)"GPPC_G_7"),
    PINCTRL_PIN(145, (char *)"ISH_SPI_CSB"),
    PINCTRL_PIN(146, (char *)"ISH_SPI_CLK"),
    PINCTRL_PIN(147, (char *)"ISH_SPI_MISO"),
    PINCTRL_PIN(148, (char *)"ISH_SPI_MOSI"),
    PINCTRL_PIN(149, (char *)"DDP1_CTRLCLK"),
    PINCTRL_PIN(150, (char *)"DDP1_CTRLDATA"),
    PINCTRL_PIN(151, (char *)"DDP2_CTRLCLK"),
    PINCTRL_PIN(152, (char *)"DDP2_CTRLDATA"),
    PINCTRL_PIN(153, (char *)"GSPI2_CLK_LOOPBK"),
    /* vGPIO */
    PINCTRL_PIN(154, (char *)"CNV_BTEN"),
    PINCTRL_PIN(155, (char *)"CNV_BT_HOST_WAKEB"),
    PINCTRL_PIN(156, (char *)"CNV_BT_IF_SELECT"),
    PINCTRL_PIN(157, (char *)"vCNV_BT_UART_TXD"),
    PINCTRL_PIN(158, (char *)"vCNV_BT_UART_RXD"),
    PINCTRL_PIN(159, (char *)"vCNV_BT_UART_CTS_B"),
    PINCTRL_PIN(160, (char *)"vCNV_BT_UART_RTS_B"),
    PINCTRL_PIN(161, (char *)"vCNV_MFUART1_TXD"),
    PINCTRL_PIN(162, (char *)"vCNV_MFUART1_RXD"),
    PINCTRL_PIN(163, (char *)"vCNV_MFUART1_CTS_B"),
    PINCTRL_PIN(164, (char *)"vCNV_MFUART1_RTS_B"),
    PINCTRL_PIN(165, (char *)"vUART0_TXD"),
    PINCTRL_PIN(166, (char *)"vUART0_RXD"),
    PINCTRL_PIN(167, (char *)"vUART0_CTS_B"),
    PINCTRL_PIN(168, (char *)"vUART0_RTS_B"),
    PINCTRL_PIN(169, (char *)"vISH_UART0_TXD"),
    PINCTRL_PIN(170, (char *)"vISH_UART0_RXD"),
    PINCTRL_PIN(171, (char *)"vISH_UART0_CTS_B"),
    PINCTRL_PIN(172, (char *)"vISH_UART0_RTS_B"),
    PINCTRL_PIN(173, (char *)"vCNV_BT_I2S_BCLK"),
    PINCTRL_PIN(174, (char *)"vCNV_BT_I2S_WS_SYNC"),
    PINCTRL_PIN(175, (char *)"vCNV_BT_I2S_SDO"),
    PINCTRL_PIN(176, (char *)"vCNV_BT_I2S_SDI"),
    PINCTRL_PIN(177, (char *)"vI2S2_SCLK"),
    PINCTRL_PIN(178, (char *)"vI2S2_SFRM"),
    PINCTRL_PIN(179, (char *)"vI2S2_TXD"),
    PINCTRL_PIN(180, (char *)"vI2S2_RXD"),
    /* GPP_E */
    PINCTRL_PIN(181, (char *)"SATAXPCIE_0"),
    PINCTRL_PIN(182, (char *)"SATAXPCIE_1"),
    PINCTRL_PIN(183, (char *)"SATAXPCIE_2"),
    PINCTRL_PIN(184, (char *)"CPU_GP_0"),
    PINCTRL_PIN(185, (char *)"SATA_DEVSLP_0"),
    PINCTRL_PIN(186, (char *)"SATA_DEVSLP_1"),
    PINCTRL_PIN(187, (char *)"SATA_DEVSLP_2"),
    PINCTRL_PIN(188, (char *)"CPU_GP_1"),
    PINCTRL_PIN(189, (char *)"SATA_LEDB"),
    PINCTRL_PIN(190, (char *)"USB2_OCB_0"),
    PINCTRL_PIN(191, (char *)"USB2_OCB_1"),
    PINCTRL_PIN(192, (char *)"USB2_OCB_2"),
    PINCTRL_PIN(193, (char *)"USB2_OCB_3"),
    /* GPP_F */
    PINCTRL_PIN(194, (char *)"SATAXPCIE_3"),
    PINCTRL_PIN(195, (char *)"SATAXPCIE_4"),
    PINCTRL_PIN(196, (char *)"SATAXPCIE_5"),
    PINCTRL_PIN(197, (char *)"SATAXPCIE_6"),
    PINCTRL_PIN(198, (char *)"SATAXPCIE_7"),
    PINCTRL_PIN(199, (char *)"SATA_DEVSLP_3"),
    PINCTRL_PIN(200, (char *)"SATA_DEVSLP_4"),
    PINCTRL_PIN(201, (char *)"SATA_DEVSLP_5"),
    PINCTRL_PIN(202, (char *)"SATA_DEVSLP_6"),
    PINCTRL_PIN(203, (char *)"SATA_DEVSLP_7"),
    PINCTRL_PIN(204, (char *)"SATA_SCLOCK"),
    PINCTRL_PIN(205, (char *)"SATA_SLOAD"),
    PINCTRL_PIN(206, (char *)"SATA_SDATAOUT1"),
    PINCTRL_PIN(207, (char *)"SATA_SDATAOUT0"),
    PINCTRL_PIN(208, (char *)"PS_ONB"),
    PINCTRL_PIN(209, (char *)"M2_SKT2_CFG_0"),
    PINCTRL_PIN(210, (char *)"M2_SKT2_CFG_1"),
    PINCTRL_PIN(211, (char *)"M2_SKT2_CFG_2"),
    PINCTRL_PIN(212, (char *)"M2_SKT2_CFG_3"),
    PINCTRL_PIN(213, (char *)"L_VDDEN"),
    PINCTRL_PIN(214, (char *)"L_BKLTEN"),
    PINCTRL_PIN(215, (char *)"L_BKLTCTL"),
    PINCTRL_PIN(216, (char *)"VNN_CTRL"),
    PINCTRL_PIN(217, (char *)"GPP_F_23"),
    /* GPP_H */
    PINCTRL_PIN(218, (char *)"SRCCLKREQB_6"),
    PINCTRL_PIN(219, (char *)"SRCCLKREQB_7"),
    PINCTRL_PIN(220, (char *)"SRCCLKREQB_8"),
    PINCTRL_PIN(221, (char *)"SRCCLKREQB_9"),
    PINCTRL_PIN(222, (char *)"SRCCLKREQB_10"),
    PINCTRL_PIN(223, (char *)"SRCCLKREQB_11"),
    PINCTRL_PIN(224, (char *)"SRCCLKREQB_12"),
    PINCTRL_PIN(225, (char *)"SRCCLKREQB_13"),
    PINCTRL_PIN(226, (char *)"SRCCLKREQB_14"),
    PINCTRL_PIN(227, (char *)"SRCCLKREQB_15"),
    PINCTRL_PIN(228, (char *)"SML2CLK"),
    PINCTRL_PIN(229, (char *)"SML2DATA"),
    PINCTRL_PIN(230, (char *)"SML2ALERTB"),
    PINCTRL_PIN(231, (char *)"SML3CLK"),
    PINCTRL_PIN(232, (char *)"SML3DATA"),
    PINCTRL_PIN(233, (char *)"SML3ALERTB"),
    PINCTRL_PIN(234, (char *)"SML4CLK"),
    PINCTRL_PIN(235, (char *)"SML4DATA"),
    PINCTRL_PIN(236, (char *)"SML4ALERTB"),
    PINCTRL_PIN(237, (char *)"ISH_I2C0_SDA"),
    PINCTRL_PIN(238, (char *)"ISH_I2C0_SCL"),
    PINCTRL_PIN(239, (char *)"ISH_I2C1_SDA"),
    PINCTRL_PIN(240, (char *)"ISH_I2C1_SCL"),
    PINCTRL_PIN(241, (char *)"TIME_SYNC_0"),
    /* GPP_J */
    PINCTRL_PIN(242, (char *)"CNV_PA_BLANKING"),
    PINCTRL_PIN(243, (char *)"CPU_C10_GATEB"),
    PINCTRL_PIN(244, (char *)"CNV_BRI_DT"),
    PINCTRL_PIN(245, (char *)"CNV_BRI_RSP"),
    PINCTRL_PIN(246, (char *)"CNV_RGI_DT"),
    PINCTRL_PIN(247, (char *)"CNV_RGI_RSP"),
    PINCTRL_PIN(248, (char *)"CNV_MFUART2_RXD"),
    PINCTRL_PIN(249, (char *)"CNV_MFUART2_TXD"),
    PINCTRL_PIN(250, (char *)"GPP_J_8"),
    PINCTRL_PIN(251, (char *)"GPP_J_9"),
    /* GPP_K */
    PINCTRL_PIN(252, (char *)"GSXDOUT"),
    PINCTRL_PIN(253, (char *)"GSXSLOAD"),
    PINCTRL_PIN(254, (char *)"GSXDIN"),
    PINCTRL_PIN(255, (char *)"GSXSRESETB"),
    PINCTRL_PIN(256, (char *)"GSXCLK"),
    PINCTRL_PIN(257, (char *)"ADR_COMPLETE"),
    PINCTRL_PIN(258, (char *)"DDSP_HPD_A"),
    PINCTRL_PIN(259, (char *)"DDSP_HPD_B"),
    PINCTRL_PIN(260, (char *)"CORE_VID_0"),
    PINCTRL_PIN(261, (char *)"CORE_VID_1"),
    PINCTRL_PIN(262, (char *)"DDSP_HPD_C"),
    PINCTRL_PIN(263, (char *)"GPP_K_11"),
    PINCTRL_PIN(264, (char *)"SYS_PWROK"),
    PINCTRL_PIN(265, (char *)"SYS_RESETB"),
    PINCTRL_PIN(266, (char *)"MLK_RSTB"),
    /* GPP_I */
    PINCTRL_PIN(267, (char *)"PMCALERTB"),
    PINCTRL_PIN(268, (char *)"DDSP_HPD_1"),
    PINCTRL_PIN(269, (char *)"DDSP_HPD_2"),
    PINCTRL_PIN(270, (char *)"DDSP_HPD_3"),
    PINCTRL_PIN(271, (char *)"DDSP_HPD_4"),
    PINCTRL_PIN(272, (char *)"DDPB_CTRLCLK"),
    PINCTRL_PIN(273, (char *)"DDPB_CTRLDATA"),
    PINCTRL_PIN(274, (char *)"DDPC_CTRLCLK"),
    PINCTRL_PIN(275, (char *)"DDPC_CTRLDATA"),
    PINCTRL_PIN(276, (char *)"FUSA_DIAGTEST_EN"),
    PINCTRL_PIN(277, (char *)"FUSA_DIAGTEST_MODE"),
    PINCTRL_PIN(278, (char *)"USB2_OCB_4"),
    PINCTRL_PIN(279, (char *)"USB2_OCB_5"),
    PINCTRL_PIN(280, (char *)"USB2_OCB_6"),
    PINCTRL_PIN(281, (char *)"USB2_OCB_7"),
    /* JTAG */
    PINCTRL_PIN(282, (char *)"JTAG_TDO"),
    PINCTRL_PIN(283, (char *)"JTAGX"),
    PINCTRL_PIN(284, (char *)"PRDYB"),
    PINCTRL_PIN(285, (char *)"PREQB"),
    PINCTRL_PIN(286, (char *)"JTAG_TDI"),
    PINCTRL_PIN(287, (char *)"JTAG_TMS"),
    PINCTRL_PIN(288, (char *)"JTAG_TCK"),
    PINCTRL_PIN(289, (char *)"DBG_PMODE"),
    PINCTRL_PIN(290, (char *)"CPU_TRSTB"),
};

static struct intel_padgroup tglh_community0_gpps[] = {
    TGL_GPP(0, 0, 24, 0),                /* GPP_A */
    TGL_GPP(1, 25, 44, 32),                /* GPP_R */
    TGL_GPP(2, 45, 70, 64),                /* GPP_B */
    TGL_GPP(3, 71, 78, 96),                /* vGPIO_0 */
};

static struct intel_padgroup tglh_community1_gpps[] = {
    TGL_GPP(0, 79, 104, 128),            /* GPP_D */
    TGL_GPP(1, 105, 128, 160),            /* GPP_C */
    TGL_GPP(2, 129, 136, 192),            /* GPP_S */
    TGL_GPP(3, 137, 153, 224),            /* GPP_G */
    TGL_GPP(4, 154, 180, 256),            /* vGPIO */
};

static struct intel_padgroup tglh_community3_gpps[] = {
    TGL_GPP(0, 181, 193, 288),            /* GPP_E */
    TGL_GPP(1, 194, 217, 320),            /* GPP_F */
};

static struct intel_padgroup tglh_community4_gpps[] = {
    TGL_GPP(0, 218, 241, 352),            /* GPP_H */
    TGL_GPP(1, 242, 251, 384),            /* GPP_J */
    TGL_GPP(2, 252, 266, 416),            /* GPP_K */
};

static struct intel_padgroup tglh_community5_gpps[] = {
    TGL_GPP(0, 267, 281, 448),            /* GPP_I */
    TGL_GPP(1, 282, 290, INTEL_GPIO_BASE_NOMAP),    /* JTAG */
};

static struct intel_community tglh_communities[] = {
    TGL_H_COMMUNITY(0, 0, 78, tglh_community0_gpps),
    TGL_H_COMMUNITY(1, 79, 180, tglh_community1_gpps),
    TGL_H_COMMUNITY(2, 181, 217, tglh_community3_gpps),
    TGL_H_COMMUNITY(3, 218, 266, tglh_community4_gpps),
    TGL_H_COMMUNITY(4, 267, 290, tglh_community5_gpps),
};



class VoodooGPIOTigerLakeH : public VoodooGPIOIntel {
    OSDeclareDefaultStructors(VoodooGPIOTigerLakeH);

    bool start(IOService *provider) override;
};

#endif /* VoodooGPIOTigerLakeH_hpp */
