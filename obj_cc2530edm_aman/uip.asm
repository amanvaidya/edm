;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
; This file was generated Tue Feb 10 06:19:53 2015
;--------------------------------------------------------
	.module uip
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uip_all_zeroes_addr
	.globl _uip_broadcast_addr
	.globl _tcpip_uipcall
	.globl _memset
	.globl _memcpy
	.globl _ACTIVE
	.globl _TX_BYTE
	.globl _RX_BYTE
	.globl _ERR
	.globl _FE
	.globl _SLAVE
	.globl _RE
	.globl _MODE
	.globl _T3OVFIF
	.globl _T3CH0IF
	.globl _T3CH1IF
	.globl _T4OVFIF
	.globl _T4CH0IF
	.globl _T4CH1IF
	.globl _OVFIM
	.globl _B_0
	.globl _B_1
	.globl _B_2
	.globl _B_3
	.globl _B_4
	.globl _B_5
	.globl _B_6
	.globl _B_7
	.globl _P2IF
	.globl _UTX0IF
	.globl _UTX1IF
	.globl _P1IF
	.globl _WDTIF
	.globl _ACC_0
	.globl _ACC_1
	.globl _ACC_2
	.globl _ACC_3
	.globl _ACC_4
	.globl _ACC_5
	.globl _ACC_6
	.globl _ACC_7
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _DMAIF
	.globl _T1IF
	.globl _T2IF
	.globl _T3IF
	.globl _T4IF
	.globl _P0IF
	.globl _STIF
	.globl _DMAIE
	.globl _T1IE
	.globl _T2IE
	.globl _T3IE
	.globl _T4IE
	.globl _P0IE
	.globl _RFERRIE
	.globl _ADCIE
	.globl _URX0IE
	.globl _URX1IE
	.globl _ENCIE
	.globl _STIE
	.globl _EA
	.globl _P2_0
	.globl _P2_1
	.globl _P2_2
	.globl _P2_3
	.globl _P2_4
	.globl _P2_5
	.globl _P2_6
	.globl _P2_7
	.globl _ENCIF_0
	.globl _ENCIF_1
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _IT0
	.globl _RFERRIF
	.globl _IT1
	.globl _URX0IF
	.globl _ADCIF
	.globl _URX1IF
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _WDCTL
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _U0GCR
	.globl _U0UCR
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _U0CSR
	.globl _TIMIF
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _T2MSEL
	.globl _T2IRQM
	.globl _T2MOVF2
	.globl _T2MOVF1
	.globl _T2MOVF0
	.globl _T2M1
	.globl _T2M0
	.globl _T2IRQF
	.globl _T2EVTCFG
	.globl _T2CTRL
	.globl _T1STAT
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _CLKCONSTA
	.globl _CLKCONCMD
	.globl _SLEEPSTA
	.globl _SLEEPCMD
	.globl _STLOAD
	.globl _ST2
	.globl _ST1
	.globl _ST0
	.globl _RFERRF
	.globl _RFIRQF0
	.globl _RFST
	.globl _RFD
	.globl _RFIRQF1
	.globl _PSBANK
	.globl _FMAP
	.globl _MEMCTR
	.globl __XPAGE
	.globl _MPAGE
	.globl _PMUX
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _APCFG
	.globl _PERCFG
	.globl _P0INP
	.globl _P2IEN
	.globl _P1IEN
	.globl _P0IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _B
	.globl _IRCON2
	.globl _ACC
	.globl _PSW
	.globl _IRCON
	.globl _IP1
	.globl _IEN1
	.globl _IP0
	.globl _IEN0
	.globl _P2
	.globl _S1CON
	.globl _IEN2
	.globl _S0CON
	.globl _DPS
	.globl _P1
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _uip_lladdr
	.globl _uip_acc32
	.globl _uip_udp_conns
	.globl _uip_udp_conn
	.globl _uip_listenports
	.globl _uip_conns
	.globl _uip_conn
	.globl _uip_flags
	.globl _uip_slen
	.globl _uip_len
	.globl _uip_sappdata
	.globl _uip_appdata
	.globl _uip_aligned_buf
	.globl _uip_netmask
	.globl _uip_draddr
	.globl _uip_hostaddr
	.globl _X_IEEE_ADDR
	.globl _X_INFOPAGE
	.globl _X_P2DIR
	.globl _X_P1DIR
	.globl _X_P0DIR
	.globl _X_U1GCR
	.globl _X_U1UCR
	.globl _X_U1BAUD
	.globl _X_U1DBUF
	.globl _X_U1CSR
	.globl _X_P2INP
	.globl _X_P1INP
	.globl _X_P2SEL
	.globl _X_P1SEL
	.globl _X_P0SEL
	.globl _X_APCFG
	.globl _X_PERCFG
	.globl _X_T4CC1
	.globl _X_T4CCTL1
	.globl _X_T4CC0
	.globl _X_T4CCTL0
	.globl _X_T4CTL
	.globl _X_T4CNT
	.globl _X_RFIRQF0
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _X_T1CTL
	.globl _X_T1CNTH
	.globl _X_T1CNTL
	.globl _X_RFST
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _X_RFD
	.globl _X_TIMIF
	.globl _X_DMAREQ
	.globl _X_DMAARM
	.globl _X_DMA0CFGH
	.globl _X_DMA0CFGL
	.globl _X_DMA1CFGH
	.globl _X_DMA1CFGL
	.globl _X_DMAIRQ
	.globl _X_T3CC1
	.globl _X_T3CCTL1
	.globl _X_T3CC0
	.globl _X_T3CCTL0
	.globl _X_T3CTL
	.globl _X_T3CNT
	.globl _X_WDCTL
	.globl _X_MEMCTR
	.globl _X_CLKCONCMD
	.globl _X_U0GCR
	.globl _X_U0UCR
	.globl _X_T2MSEL
	.globl _X_U0BAUD
	.globl _X_U0DBUF
	.globl _X_RFERRF
	.globl _X_SLEEPCMD
	.globl _X_RNDH
	.globl _X_RNDL
	.globl _X_ADCH
	.globl _X_ADCL
	.globl _X_ADCCON3
	.globl _X_ADCCON2
	.globl _X_ADCCON1
	.globl _X_ENCCS
	.globl _X_ENCDO
	.globl _X_ENCDI
	.globl _X_T1STAT
	.globl _X_PMUX
	.globl _X_STLOAD
	.globl _X_P2IEN
	.globl _X_P0IEN
	.globl _X_T2IRQM
	.globl _X_T2MOVF2
	.globl _X_T2MOVF1
	.globl _X_T2MOVF0
	.globl _X_T2M1
	.globl _X_T2M0
	.globl _X_T2IRQF
	.globl _X_P2
	.globl _X_PSBANK
	.globl _X_FMAP
	.globl _X_CLKCONSTA
	.globl _X_SLEEPSTA
	.globl _X_T2EVTCFG
	.globl _X_ST2
	.globl _X_ST1
	.globl _X_ST0
	.globl _X_T2CTRL
	.globl _X__XPAGE
	.globl _X_MPAGE
	.globl _X_RFIRQF1
	.globl _X_P1
	.globl _X_P0INP
	.globl _X_P1IEN
	.globl _X_PICTL
	.globl _X_P2IFG
	.globl _X_P1IFG
	.globl _X_P0IFG
	.globl _X_U0CSR
	.globl _X_P0
	.globl _USBF5
	.globl _USBF4
	.globl _USBF3
	.globl _USBF2
	.globl _USBF1
	.globl _USBF0
	.globl _USBCNTH
	.globl _USBCNTL
	.globl _USBCNT0
	.globl _USBCSOH
	.globl _USBCSOL
	.globl _USBMAXO
	.globl _USBCSIH
	.globl _USBCSIL
	.globl _USBCS0
	.globl _USBMAXI
	.globl _USBCTRL
	.globl _USBINDEX
	.globl _USBFRMH
	.globl _USBFRML
	.globl _USBCIE
	.globl _USBOIE
	.globl _USBIIE
	.globl _USBCIF
	.globl _USBOIF
	.globl _USBIIF
	.globl _USBPOW
	.globl _USBADDR
	.globl _CSPT
	.globl _CSPZ
	.globl _CSPY
	.globl _CSPX
	.globl _CSPSTAT
	.globl _CSPCTRL
	.globl _CSPPROG23
	.globl _CSPPROG22
	.globl _CSPPROG21
	.globl _CSPPROG20
	.globl _CSPPROG19
	.globl _CSPPROG18
	.globl _CSPPROG17
	.globl _CSPPROG16
	.globl _CSPPROG15
	.globl _CSPPROG14
	.globl _CSPPROG13
	.globl _CSPPROG12
	.globl _CSPPROG11
	.globl _CSPPROG10
	.globl _CSPPROG9
	.globl _CSPPROG8
	.globl _CSPPROG7
	.globl _CSPPROG6
	.globl _CSPPROG5
	.globl _CSPPROG4
	.globl _CSPPROG3
	.globl _CSPPROG2
	.globl _CSPPROG1
	.globl _CSPPROG0
	.globl _RFC_OBS_CTRL2
	.globl _RFC_OBS_CTRL1
	.globl _RFC_OBS_CTRL0
	.globl _TXFILTCFG
	.globl _PTEST1
	.globl _PTEST0
	.globl _ATEST
	.globl _DACTEST2
	.globl _DACTEST1
	.globl _DACTEST0
	.globl _MDMTEST1
	.globl _MDMTEST0
	.globl _ADCTEST2
	.globl _ADCTEST1
	.globl _ADCTEST0
	.globl _AGCCTRL3
	.globl _AGCCTRL2
	.globl _AGCCTRL1
	.globl _AGCCTRL0
	.globl _FSCAL3
	.globl _FSCAL2
	.globl _FSCAL1
	.globl _FSCAL0
	.globl _FSCTRL
	.globl _RXCTRL
	.globl _FREQEST
	.globl _MDMCTRL1
	.globl _MDMCTRL0
	.globl _RFRND
	.globl _RFERRM
	.globl _RFIRQM1
	.globl _RFIRQM0
	.globl _TXLAST_PTR
	.globl _TXFIRST_PTR
	.globl _RXP1_PTR
	.globl _RXLAST_PTR
	.globl _RXFIRST_PTR
	.globl _TXFIFOCNT
	.globl _RXFIFOCNT
	.globl _RXFIRST
	.globl _RSSISTAT
	.globl _RSSI
	.globl _CCACTRL1
	.globl _CCACTRL0
	.globl _FSMCTRL
	.globl _FIFOPCTRL
	.globl _FSMSTAT1
	.globl _FSMSTAT0
	.globl _TXCTRL
	.globl _TXPOWER
	.globl _FREQCTRL
	.globl _FREQTUNE
	.globl _RXMASKCLR
	.globl _RXMASKSET
	.globl _RXENABLE
	.globl _FRMCTRL1
	.globl _FRMCTRL0
	.globl _SRCEXTEN2
	.globl _SRCEXTEN1
	.globl _SRCEXTEN0
	.globl _SRCSHORTEN2
	.globl _SRCSHORTEN1
	.globl _SRCSHORTEN0
	.globl _SRCMATCH
	.globl _FRMFILT1
	.globl _FRMFILT0
	.globl _SHORT_ADDR1
	.globl _SHORT_ADDR0
	.globl _PAN_ID1
	.globl _PAN_ID0
	.globl _EXT_ADDR7
	.globl _EXT_ADDR6
	.globl _EXT_ADDR5
	.globl _EXT_ADDR4
	.globl _EXT_ADDR3
	.globl _EXT_ADDR2
	.globl _EXT_ADDR1
	.globl _EXT_ADDR0
	.globl _SRCSHORTPENDEN2
	.globl _SRCSHORTPENDEN1
	.globl _SRCSHORTPENDEN0
	.globl _SRCEXTPENDEN2
	.globl _SRCEXTPENDEN1
	.globl _SRCEXTPENDEN0
	.globl _SRCRESINDEX
	.globl _SRCRESMASK2
	.globl _SRCRESMASK1
	.globl _SRCRESMASK0
	.globl _SRC_ADDR_TABLE
	.globl _TXFIFO
	.globl _RXFIFO
	.globl _RFCORE_RAM
	.globl _CMPCTL
	.globl _OPAMPS
	.globl _OPAMPC
	.globl _STCV2
	.globl _STCV1
	.globl _STCV0
	.globl _STCS
	.globl _STCC
	.globl _T1CC4H
	.globl _T1CC4L
	.globl _T1CC3H
	.globl _T1CC3L
	.globl _XX_T1CC2H
	.globl _XX_T1CC2L
	.globl _XX_T1CC1H
	.globl _XX_T1CC1L
	.globl _XX_T1CC0H
	.globl _XX_T1CC0L
	.globl _T1CCTL4
	.globl _T1CCTL3
	.globl _XX_T1CCTL2
	.globl _XX_T1CCTL1
	.globl _XX_T1CCTL0
	.globl _CLD
	.globl _IRCTL
	.globl _CHIPINFO1
	.globl _CHIPINFO0
	.globl _FWDATA
	.globl _FADDRH
	.globl _FADDRL
	.globl _FCTL
	.globl _IVCTRL
	.globl _BATTMON
	.globl _SRCRC
	.globl _DBGDATA
	.globl _TESTREG0
	.globl _CHIPID
	.globl _CHVER
	.globl _OBSSEL5
	.globl _OBSSEL4
	.globl _OBSSEL3
	.globl _OBSSEL2
	.globl _OBSSEL1
	.globl _OBSSEL0
	.globl _I2CIO
	.globl _I2CWC
	.globl _I2CADDR
	.globl _I2CDATA
	.globl _I2CSTAT
	.globl _I2CCFG
	.globl _OPAMPMC
	.globl _MONMUX
	.globl _uip_setipid
	.globl _uip_add32
	.globl _uip_chksum
	.globl _uip_ipchksum
	.globl _uip_tcpchksum
	.globl _uip_init
	.globl _uip_connect
	.globl _uip_udp_new
	.globl _uip_unlisten
	.globl _uip_listen
	.globl _uip_process
	.globl _uip_htons
	.globl _uip_htonl
	.globl _uip_send
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_P1	=	0x0090
_DPS	=	0x0092
_S0CON	=	0x0098
_IEN2	=	0x009a
_S1CON	=	0x009b
_P2	=	0x00a0
_IEN0	=	0x00a8
_IP0	=	0x00a9
_IEN1	=	0x00b8
_IP1	=	0x00b9
_IRCON	=	0x00c0
_PSW	=	0x00d0
_ACC	=	0x00e0
_IRCON2	=	0x00e8
_B	=	0x00f0
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P0IEN	=	0x00ab
_P1IEN	=	0x008d
_P2IEN	=	0x00ac
_P0INP	=	0x008f
_PERCFG	=	0x00f1
_APCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
_PMUX	=	0x00ae
_MPAGE	=	0x0093
__XPAGE	=	0x0093
_MEMCTR	=	0x00c7
_FMAP	=	0x009f
_PSBANK	=	0x009f
_RFIRQF1	=	0x0091
_RFD	=	0x00d9
_RFST	=	0x00e1
_RFIRQF0	=	0x00e9
_RFERRF	=	0x00bf
_ST0	=	0x0095
_ST1	=	0x0096
_ST2	=	0x0097
_STLOAD	=	0x00ad
_SLEEPCMD	=	0x00be
_SLEEPSTA	=	0x009d
_CLKCONCMD	=	0x00c6
_CLKCONSTA	=	0x009e
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_T1STAT	=	0x00af
_T2CTRL	=	0x0094
_T2EVTCFG	=	0x009c
_T2IRQF	=	0x00a1
_T2M0	=	0x00a2
_T2M1	=	0x00a3
_T2MOVF0	=	0x00a4
_T2MOVF1	=	0x00a5
_T2MOVF2	=	0x00a6
_T2IRQM	=	0x00a7
_T2MSEL	=	0x00c3
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_TIMIF	=	0x00d8
_U0CSR	=	0x0086
_U0DBUF	=	0x00c1
_U0BAUD	=	0x00c2
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_U1CSR	=	0x00f8
_U1DBUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_WDCTL	=	0x00c9
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_7	=	0x0087
_P0_6	=	0x0086
_P0_5	=	0x0085
_P0_4	=	0x0084
_P0_3	=	0x0083
_P0_2	=	0x0082
_P0_1	=	0x0081
_P0_0	=	0x0080
_URX1IF	=	0x008f
_ADCIF	=	0x008d
_URX0IF	=	0x008b
_IT1	=	0x008a
_RFERRIF	=	0x0089
_IT0	=	0x0088
_P1_7	=	0x0097
_P1_6	=	0x0096
_P1_5	=	0x0095
_P1_4	=	0x0094
_P1_3	=	0x0093
_P1_2	=	0x0092
_P1_1	=	0x0091
_P1_0	=	0x0090
_ENCIF_1	=	0x0099
_ENCIF_0	=	0x0098
_P2_7	=	0x00a7
_P2_6	=	0x00a6
_P2_5	=	0x00a5
_P2_4	=	0x00a4
_P2_3	=	0x00a3
_P2_2	=	0x00a2
_P2_1	=	0x00a1
_P2_0	=	0x00a0
_EA	=	0x00af
_STIE	=	0x00ad
_ENCIE	=	0x00ac
_URX1IE	=	0x00ab
_URX0IE	=	0x00aa
_ADCIE	=	0x00a9
_RFERRIE	=	0x00a8
_P0IE	=	0x00bd
_T4IE	=	0x00bc
_T3IE	=	0x00bb
_T2IE	=	0x00ba
_T1IE	=	0x00b9
_DMAIE	=	0x00b8
_STIF	=	0x00c7
_P0IF	=	0x00c5
_T4IF	=	0x00c4
_T3IF	=	0x00c3
_T2IF	=	0x00c2
_T1IF	=	0x00c1
_DMAIF	=	0x00c0
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ACC_7	=	0x00e7
_ACC_6	=	0x00e6
_ACC_5	=	0x00e5
_ACC_4	=	0x00e4
_ACC_3	=	0x00e3
_ACC_2	=	0x00e2
_ACC_1	=	0x00e1
_ACC_0	=	0x00e0
_WDTIF	=	0x00ec
_P1IF	=	0x00eb
_UTX1IF	=	0x00ea
_UTX0IF	=	0x00e9
_P2IF	=	0x00e8
_B_7	=	0x00f7
_B_6	=	0x00f6
_B_5	=	0x00f5
_B_4	=	0x00f4
_B_3	=	0x00f3
_B_2	=	0x00f2
_B_1	=	0x00f1
_B_0	=	0x00f0
_OVFIM	=	0x00de
_T4CH1IF	=	0x00dd
_T4CH0IF	=	0x00dc
_T4OVFIF	=	0x00db
_T3CH1IF	=	0x00da
_T3CH0IF	=	0x00d9
_T3OVFIF	=	0x00d8
_MODE	=	0x00ff
_RE	=	0x00fe
_SLAVE	=	0x00fd
_FE	=	0x00fc
_ERR	=	0x00fb
_RX_BYTE	=	0x00fa
_TX_BYTE	=	0x00f9
_ACTIVE	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_MONMUX	=	0x61a6
_OPAMPMC	=	0x61a6
_I2CCFG	=	0x6230
_I2CSTAT	=	0x6231
_I2CDATA	=	0x6232
_I2CADDR	=	0x6233
_I2CWC	=	0x6234
_I2CIO	=	0x6235
_OBSSEL0	=	0x6243
_OBSSEL1	=	0x6244
_OBSSEL2	=	0x6245
_OBSSEL3	=	0x6246
_OBSSEL4	=	0x6247
_OBSSEL5	=	0x6248
_CHVER	=	0x6249
_CHIPID	=	0x624a
_TESTREG0	=	0x624b
_DBGDATA	=	0x6260
_SRCRC	=	0x6262
_BATTMON	=	0x6264
_IVCTRL	=	0x6265
_FCTL	=	0x6270
_FADDRL	=	0x6271
_FADDRH	=	0x6272
_FWDATA	=	0x6273
_CHIPINFO0	=	0x6276
_CHIPINFO1	=	0x6277
_IRCTL	=	0x6281
_CLD	=	0x6290
_XX_T1CCTL0	=	0x62a0
_XX_T1CCTL1	=	0x62a1
_XX_T1CCTL2	=	0x62a2
_T1CCTL3	=	0x62a3
_T1CCTL4	=	0x62a4
_XX_T1CC0L	=	0x62a6
_XX_T1CC0H	=	0x62a7
_XX_T1CC1L	=	0x62a8
_XX_T1CC1H	=	0x62a9
_XX_T1CC2L	=	0x62aa
_XX_T1CC2H	=	0x62ab
_T1CC3L	=	0x62ac
_T1CC3H	=	0x62ad
_T1CC4L	=	0x62ae
_T1CC4H	=	0x62af
_STCC	=	0x62b0
_STCS	=	0x62b1
_STCV0	=	0x62b2
_STCV1	=	0x62b3
_STCV2	=	0x62b4
_OPAMPC	=	0x62c0
_OPAMPS	=	0x62c1
_CMPCTL	=	0x62d0
_RFCORE_RAM	=	0x6000
_RXFIFO	=	0x6000
_TXFIFO	=	0x6080
_SRC_ADDR_TABLE	=	0x6100
_SRCRESMASK0	=	0x6160
_SRCRESMASK1	=	0x6161
_SRCRESMASK2	=	0x6162
_SRCRESINDEX	=	0x6163
_SRCEXTPENDEN0	=	0x6164
_SRCEXTPENDEN1	=	0x6165
_SRCEXTPENDEN2	=	0x6166
_SRCSHORTPENDEN0	=	0x6167
_SRCSHORTPENDEN1	=	0x6168
_SRCSHORTPENDEN2	=	0x6169
_EXT_ADDR0	=	0x616a
_EXT_ADDR1	=	0x616b
_EXT_ADDR2	=	0x616c
_EXT_ADDR3	=	0x616d
_EXT_ADDR4	=	0x616e
_EXT_ADDR5	=	0x616f
_EXT_ADDR6	=	0x6170
_EXT_ADDR7	=	0x6171
_PAN_ID0	=	0x6172
_PAN_ID1	=	0x6173
_SHORT_ADDR0	=	0x6174
_SHORT_ADDR1	=	0x6175
_FRMFILT0	=	0x6180
_FRMFILT1	=	0x6181
_SRCMATCH	=	0x6182
_SRCSHORTEN0	=	0x6183
_SRCSHORTEN1	=	0x6184
_SRCSHORTEN2	=	0x6185
_SRCEXTEN0	=	0x6186
_SRCEXTEN1	=	0x6187
_SRCEXTEN2	=	0x6188
_FRMCTRL0	=	0x6189
_FRMCTRL1	=	0x618a
_RXENABLE	=	0x618b
_RXMASKSET	=	0x618c
_RXMASKCLR	=	0x618d
_FREQTUNE	=	0x618e
_FREQCTRL	=	0x618f
_TXPOWER	=	0x6190
_TXCTRL	=	0x6191
_FSMSTAT0	=	0x6192
_FSMSTAT1	=	0x6193
_FIFOPCTRL	=	0x6194
_FSMCTRL	=	0x6195
_CCACTRL0	=	0x6196
_CCACTRL1	=	0x6197
_RSSI	=	0x6198
_RSSISTAT	=	0x6199
_RXFIRST	=	0x619a
_RXFIFOCNT	=	0x619b
_TXFIFOCNT	=	0x619c
_RXFIRST_PTR	=	0x619d
_RXLAST_PTR	=	0x619e
_RXP1_PTR	=	0x619f
_TXFIRST_PTR	=	0x61a1
_TXLAST_PTR	=	0x61a2
_RFIRQM0	=	0x61a3
_RFIRQM1	=	0x61a4
_RFERRM	=	0x61a5
_RFRND	=	0x61a7
_MDMCTRL0	=	0x61a8
_MDMCTRL1	=	0x61a9
_FREQEST	=	0x61aa
_RXCTRL	=	0x61ab
_FSCTRL	=	0x61ac
_FSCAL0	=	0x61ad
_FSCAL1	=	0x61ae
_FSCAL2	=	0x61af
_FSCAL3	=	0x61b0
_AGCCTRL0	=	0x61b1
_AGCCTRL1	=	0x61b2
_AGCCTRL2	=	0x61b3
_AGCCTRL3	=	0x61b4
_ADCTEST0	=	0x61b5
_ADCTEST1	=	0x61b6
_ADCTEST2	=	0x61b7
_MDMTEST0	=	0x61b8
_MDMTEST1	=	0x61b9
_DACTEST0	=	0x61ba
_DACTEST1	=	0x61bb
_DACTEST2	=	0x61bc
_ATEST	=	0x61bd
_PTEST0	=	0x61be
_PTEST1	=	0x61bf
_TXFILTCFG	=	0x61fa
_RFC_OBS_CTRL0	=	0x61eb
_RFC_OBS_CTRL1	=	0x61ec
_RFC_OBS_CTRL2	=	0x61ed
_CSPPROG0	=	0x61c0
_CSPPROG1	=	0x61c1
_CSPPROG2	=	0x61c2
_CSPPROG3	=	0x61c3
_CSPPROG4	=	0x61c4
_CSPPROG5	=	0x61c5
_CSPPROG6	=	0x61c6
_CSPPROG7	=	0x61c7
_CSPPROG8	=	0x61c8
_CSPPROG9	=	0x61c9
_CSPPROG10	=	0x61ca
_CSPPROG11	=	0x61cb
_CSPPROG12	=	0x61cc
_CSPPROG13	=	0x61cd
_CSPPROG14	=	0x61ce
_CSPPROG15	=	0x61cf
_CSPPROG16	=	0x61d0
_CSPPROG17	=	0x61d1
_CSPPROG18	=	0x61d2
_CSPPROG19	=	0x61d3
_CSPPROG20	=	0x61d4
_CSPPROG21	=	0x61d5
_CSPPROG22	=	0x61d6
_CSPPROG23	=	0x61d7
_CSPCTRL	=	0x61e0
_CSPSTAT	=	0x61e1
_CSPX	=	0x61e2
_CSPY	=	0x61e3
_CSPZ	=	0x61e4
_CSPT	=	0x61e5
_USBADDR	=	0x6200
_USBPOW	=	0x6201
_USBIIF	=	0x6202
_USBOIF	=	0x6204
_USBCIF	=	0x6206
_USBIIE	=	0x6207
_USBOIE	=	0x6209
_USBCIE	=	0x620b
_USBFRML	=	0x620c
_USBFRMH	=	0x620d
_USBINDEX	=	0x620e
_USBCTRL	=	0x620f
_USBMAXI	=	0x6210
_USBCS0	=	0x6211
_USBCSIL	=	0x6211
_USBCSIH	=	0x6212
_USBMAXO	=	0x6213
_USBCSOL	=	0x6214
_USBCSOH	=	0x6215
_USBCNT0	=	0x6216
_USBCNTL	=	0x6216
_USBCNTH	=	0x6217
_USBF0	=	0x6220
_USBF1	=	0x6222
_USBF2	=	0x6224
_USBF3	=	0x6226
_USBF4	=	0x6228
_USBF5	=	0x622a
_X_P0	=	0x7080
_X_U0CSR	=	0x7086
_X_P0IFG	=	0x7089
_X_P1IFG	=	0x708a
_X_P2IFG	=	0x708b
_X_PICTL	=	0x708c
_X_P1IEN	=	0x708d
_X_P0INP	=	0x708f
_X_P1	=	0x7090
_X_RFIRQF1	=	0x7091
_X_MPAGE	=	0x7093
_X__XPAGE	=	0x7093
_X_T2CTRL	=	0x7094
_X_ST0	=	0x7095
_X_ST1	=	0x7096
_X_ST2	=	0x7097
_X_T2EVTCFG	=	0x709c
_X_SLEEPSTA	=	0x709d
_X_CLKCONSTA	=	0x709e
_X_FMAP	=	0x709f
_X_PSBANK	=	0x709f
_X_P2	=	0x70a0
_X_T2IRQF	=	0x70a1
_X_T2M0	=	0x70a2
_X_T2M1	=	0x70a3
_X_T2MOVF0	=	0x70a4
_X_T2MOVF1	=	0x70a5
_X_T2MOVF2	=	0x70a6
_X_T2IRQM	=	0x70a7
_X_P0IEN	=	0x70ab
_X_P2IEN	=	0x70ac
_X_STLOAD	=	0x70ad
_X_PMUX	=	0x70ae
_X_T1STAT	=	0x70af
_X_ENCDI	=	0x70b1
_X_ENCDO	=	0x70b2
_X_ENCCS	=	0x70b3
_X_ADCCON1	=	0x70b4
_X_ADCCON2	=	0x70b5
_X_ADCCON3	=	0x70b6
_X_ADCL	=	0x70ba
_X_ADCH	=	0x70bb
_X_RNDL	=	0x70bc
_X_RNDH	=	0x70bd
_X_SLEEPCMD	=	0x70be
_X_RFERRF	=	0x70bf
_X_U0DBUF	=	0x70c1
_X_U0BAUD	=	0x70c2
_X_T2MSEL	=	0x70c3
_X_U0UCR	=	0x70c4
_X_U0GCR	=	0x70c5
_X_CLKCONCMD	=	0x70c6
_X_MEMCTR	=	0x70c7
_X_WDCTL	=	0x70c9
_X_T3CNT	=	0x70ca
_X_T3CTL	=	0x70cb
_X_T3CCTL0	=	0x70cc
_X_T3CC0	=	0x70cd
_X_T3CCTL1	=	0x70ce
_X_T3CC1	=	0x70cf
_X_DMAIRQ	=	0x70d1
_X_DMA1CFGL	=	0x70d2
_X_DMA1CFGH	=	0x70d3
_X_DMA0CFGL	=	0x70d4
_X_DMA0CFGH	=	0x70d5
_X_DMAARM	=	0x70d6
_X_DMAREQ	=	0x70d7
_X_TIMIF	=	0x70d8
_X_RFD	=	0x70d9
_X_T1CC0L	=	0x70da
_X_T1CC0H	=	0x70db
_X_T1CC1L	=	0x70dc
_X_T1CC1H	=	0x70dd
_X_T1CC2L	=	0x70de
_X_T1CC2H	=	0x70df
_X_RFST	=	0x70e1
_X_T1CNTL	=	0x70e2
_X_T1CNTH	=	0x70e3
_X_T1CTL	=	0x70e4
_X_T1CCTL0	=	0x70e5
_X_T1CCTL1	=	0x70e6
_X_T1CCTL2	=	0x70e7
_X_RFIRQF0	=	0x70e9
_X_T4CNT	=	0x70ea
_X_T4CTL	=	0x70eb
_X_T4CCTL0	=	0x70ec
_X_T4CC0	=	0x70ed
_X_T4CCTL1	=	0x70ee
_X_T4CC1	=	0x70ef
_X_PERCFG	=	0x70f1
_X_APCFG	=	0x70f2
_X_P0SEL	=	0x70f3
_X_P1SEL	=	0x70f4
_X_P2SEL	=	0x70f5
_X_P1INP	=	0x70f6
_X_P2INP	=	0x70f7
_X_U1CSR	=	0x70f8
_X_U1DBUF	=	0x70f9
_X_U1BAUD	=	0x70fa
_X_U1UCR	=	0x70fb
_X_U1GCR	=	0x70fc
_X_P0DIR	=	0x70fd
_X_P1DIR	=	0x70fe
_X_P2DIR	=	0x70ff
_X_INFOPAGE	=	0x7800
_X_IEEE_ADDR	=	0x780c
_uip_hostaddr::
	.ds 4
_uip_draddr::
	.ds 4
_uip_netmask::
	.ds 4
_uip_aligned_buf::
	.ds 108
_uip_appdata::
	.ds 3
_uip_sappdata::
	.ds 3
_uip_len::
	.ds 2
_uip_slen::
	.ds 2
_uip_flags::
	.ds 1
_uip_conn::
	.ds 3
_uip_conns::
	.ds 340
_uip_listenports::
	.ds 40
_uip_udp_conn::
	.ds 3
_uip_udp_conns::
	.ds 150
_ipid:
	.ds 2
_iss:
	.ds 4
_lastport:
	.ds 2
_uip_acc32::
	.ds 4
_c:
	.ds 1
_opt:
	.ds 1
_tmp16:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_uip_lladdr::
	.ds 6
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_setipid'
;------------------------------------------------------------
;id                        Allocated to registers 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:169: void uip_setipid(uint16_t id) { ipid = id; }
;	-----------------------------------------
;	 function uip_setipid
;	-----------------------------------------
_uip_setipid:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_ipid
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_add32'
;------------------------------------------------------------
;op16                      Allocated to stack - sp -6
;op32                      Allocated to stack - sp -2
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:240: uip_add32(uint8_t *op32, uint16_t op16)
;	-----------------------------------------
;	 function uip_add32
;	-----------------------------------------
_uip_add32:
	push	dpl
	push	dph
	push	b
;	/home/user/contiki/core/net/uip.c:242: uip_acc32[3] = op32[3] + (op16 & 0xff);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	mov	a,r3
	add	a,r2
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:243: uip_acc32[2] = op32[2] + (op16 >> 8);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	mov	a,@r0
	add	a,r2
	mov	r2,a
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:244: uip_acc32[1] = op32[1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:245: uip_acc32[0] = op32[0];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dptr,#_uip_acc32
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:247: if(uip_acc32[2] < (op16 >> 8)) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00104$
;	/home/user/contiki/core/net/uip.c:248: ++uip_acc32[1];
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_uip_acc32 + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:249: if(uip_acc32[1] == 0) {
	mov	a,r7
	jnz	00104$
;	/home/user/contiki/core/net/uip.c:250: ++uip_acc32[0];
	mov	dptr,#_uip_acc32
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_uip_acc32
	mov	a,r7
	movx	@dptr,a
00104$:
;	/home/user/contiki/core/net/uip.c:255: if(uip_acc32[3] < (op16 & 0xff)) {
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r4,#0x00
	clr	c
	mov	a,r7
	subb	a,r5
	mov	a,r4
	subb	a,r6
	jnc	00111$
;	/home/user/contiki/core/net/uip.c:256: ++uip_acc32[2];
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_uip_acc32 + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:257: if(uip_acc32[2] == 0) {
	mov	a,r7
	jnz	00111$
;	/home/user/contiki/core/net/uip.c:258: ++uip_acc32[1];
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_uip_acc32 + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:259: if(uip_acc32[1] == 0) {
	mov	a,r7
	jnz	00111$
;	/home/user/contiki/core/net/uip.c:260: ++uip_acc32[0];
	mov	dptr,#_uip_acc32
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_uip_acc32
	mov	a,r7
	movx	@dptr,a
00111$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'chksum'
;------------------------------------------------------------
;data                      Allocated to stack - sp -11
;len                       Allocated to stack - sp -13
;sum                       Allocated to stack - sp -6
;t                         Allocated to registers r6 r7 
;dataptr                   Allocated to registers r7 r6 r3 
;last_byte                 Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -4
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:271: chksum(uint16_t sum, const uint8_t *data, uint16_t len)
;	-----------------------------------------
;	 function chksum
;	-----------------------------------------
_chksum:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x05
;	/home/user/contiki/core/net/uip.c:277: dataptr = data;
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar3,@r0
;	/home/user/contiki/core/net/uip.c:278: last_byte = data + len - 1;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r4,a
	mov	ar5,r3
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r2
	add	a,#0xFF
	mov	@r0,a
	mov	a,r4
	addc	a,#0xFF
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
;	/home/user/contiki/core/net/uip.c:280: while(dataptr < last_byte) {	/* At least two more bytes */
	mov	ar2,r7
	mov	ar4,r6
	mov	ar5,r3
00103$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00105$
;	/home/user/contiki/core/net/uip.c:281: t = (dataptr[0] << 8) + dataptr[1];
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	a,#0x01
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	ar6,r3
;	/home/user/contiki/core/net/uip.c:282: sum += t;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/home/user/contiki/core/net/uip.c:283: if(sum < t) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00102$
;	/home/user/contiki/core/net/uip.c:284: sum++;		/* carry */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00130$
	inc	r0
	inc	@r0
00130$:
00102$:
;	/home/user/contiki/core/net/uip.c:286: dataptr += 2;
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	ljmp	00103$
00105$:
;	/home/user/contiki/core/net/uip.c:289: if(dataptr == last_byte) {
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00132$
	sjmp	00109$
00132$:
;	/home/user/contiki/core/net/uip.c:290: t = (dataptr[0] << 8) + 0;
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	r5,#0x00
	mov	ar7,r2
	mov	r6,#0x00
;	/home/user/contiki/core/net/uip.c:291: sum += t;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/home/user/contiki/core/net/uip.c:292: if(sum < t) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00109$
;	/home/user/contiki/core/net/uip.c:293: sum++;		/* carry */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00134$
	inc	r0
	inc	@r0
00134$:
00109$:
;	/home/user/contiki/core/net/uip.c:298: return sum;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_chksum'
;------------------------------------------------------------
;len                       Allocated to stack - sp -3
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:302: uip_chksum(uint16_t *data, uint16_t len)
;	-----------------------------------------
;	 function uip_chksum
;	-----------------------------------------
_uip_chksum:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/user/contiki/core/net/uip.c:304: return uip_htons(chksum(0, (uint8_t *)data, len));
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	lcall	_chksum
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	_uip_htons
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ipchksum'
;------------------------------------------------------------
;sum                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:309: uip_ipchksum(void)
;	-----------------------------------------
;	 function uip_ipchksum
;	-----------------------------------------
_uip_ipchksum:
;	/home/user/contiki/core/net/uip.c:313: sum = chksum(0, &uip_buf[UIP_LLH_LEN], UIP_IPH_LEN);
	mov	a,#0x14
	push	acc
	clr	a
	push	acc
	mov	a,#(_uip_aligned_buf + 0x000e)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x000e) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#0x0000
	lcall	_chksum
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:315: return (sum == 0) ? 0xffff : uip_htons(sum);
	mov	a,r6
	orl	a,r7
	cjne	a,#0x01,00108$
00108$:
	clr	a
	rlc	a
	mov	r5,a
	jz	00103$
	mov	r4,#0xFF
	mov	r5,#0xFF
	sjmp	00104$
00103$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_uip_htons
	mov	r4,dpl
	mov	r5,dph
00104$:
	mov	dpl,r4
	mov	dph,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'upper_layer_chksum'
;------------------------------------------------------------
;proto                     Allocated to registers r7 
;upper_layer_len           Allocated to stack - sp -1
;sum                       Allocated to registers r7 r4 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:320: upper_layer_chksum(uint8_t proto)
;	-----------------------------------------
;	 function upper_layer_chksum
;	-----------------------------------------
_upper_layer_chksum:
	inc	sp
	inc	sp
	mov	r7,dpl
;	/home/user/contiki/core/net/uip.c:328: upper_layer_len = (((uint16_t)(BUF->len[0]) << 8) + BUF->len[1]) - UIP_IPH_LEN;
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	r0,sp
	dec	r0
	mov	a,r6
	add	a,#0xEC
	mov	@r0,a
	mov	a,r5
	addc	a,#0xFF
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/uip.c:334: sum = upper_layer_len + proto;
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	/home/user/contiki/core/net/uip.c:336: sum = chksum(sum, (uint8_t *)&BUF->srcipaddr, 2 * sizeof(uip_ipaddr_t));
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r6,#0x00
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,r7
	mov	dph,r4
	lcall	_chksum
	mov	r5,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	ar7,r5
	mov	ar4,r6
;	/home/user/contiki/core/net/uip.c:339: sum = chksum(sum, &uip_buf[UIP_IPH_LEN + UIP_LLH_LEN],
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#(_uip_aligned_buf + 0x0022)
	push	acc
	mov	a,#((_uip_aligned_buf + 0x0022) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r4
	lcall	_chksum
	mov	r5,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	ar7,r5
	mov	ar4,r6
;	/home/user/contiki/core/net/uip.c:342: return (sum == 0) ? 0xffff : uip_htons(sum);
	mov	a,r7
	orl	a,r4
	cjne	a,#0x01,00108$
00108$:
	clr	a
	rlc	a
	mov	r6,a
	jz	00103$
	mov	r5,#0xFF
	mov	r6,#0xFF
	sjmp	00104$
00103$:
	mov	dpl,r7
	mov	dph,r4
	lcall	_uip_htons
	mov	r5,dpl
	mov	r6,dph
00104$:
	mov	dpl,r5
	mov	dph,r6
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_tcpchksum'
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:355: uip_tcpchksum(void)
;	-----------------------------------------
;	 function uip_tcpchksum
;	-----------------------------------------
_uip_tcpchksum:
;	/home/user/contiki/core/net/uip.c:357: return upper_layer_chksum(UIP_PROTO_TCP);
	mov	dpl,#0x06
	ljmp	_upper_layer_chksum
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_init'
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:370: uip_init(void)
;	-----------------------------------------
;	 function uip_init
;	-----------------------------------------
_uip_init:
;	/home/user/contiki/core/net/uip.c:372: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00104$:
;	/home/user/contiki/core/net/uip.c:373: uip_listenports[c] = 0;
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_uip_listenports
	mov	dpl,a
	mov	a,#(_uip_listenports >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:372: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x14,00127$
00127$:
	jc	00104$
;	/home/user/contiki/core/net/uip.c:375: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00106$:
;	/home/user/contiki/core/net/uip.c:376: uip_conns[c].tcpstateflags = UIP_CLOSED;
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x22
	mul	ab
	add	a,#_uip_conns
	mov	r6,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x19
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:375: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00129$
00129$:
	jc	00106$
;	/home/user/contiki/core/net/uip.c:379: lastport = 1024;
	mov	dptr,#_lastport
	clr	a
	movx	@dptr,a
	mov	a,#0x04
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:383: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00108$:
;	/home/user/contiki/core/net/uip.c:384: uip_udp_conns[c].lport = 0;
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x0F
	mul	ab
	add	a,#_uip_udp_conns
	mov	r6,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:383: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00131$
00131$:
	jc	00108$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_connect'
;------------------------------------------------------------
;rport                     Allocated to stack - sp -15
;ripaddr                   Allocated to stack - sp -11
;conn                      Allocated to stack - sp -5
;cconn                     Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -2
;sloc1                     Allocated to stack - sp -8
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:398: uip_connect(uip_ipaddr_t *ripaddr, uint16_t rport)
;	-----------------------------------------
;	 function uip_connect
;	-----------------------------------------
_uip_connect:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:403: again:
00101$:
;	/home/user/contiki/core/net/uip.c:404: ++lastport;
	mov	dptr,#_lastport
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:406: if(lastport >= 32000) {
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	subb	a,#0x7D
	jc	00103$
;	/home/user/contiki/core/net/uip.c:407: lastport = 4096;
	mov	dptr,#_lastport
	clr	a
	movx	@dptr,a
	mov	a,#0x10
	inc	dptr
	movx	@dptr,a
00103$:
;	/home/user/contiki/core/net/uip.c:412: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00118$:
;	/home/user/contiki/core/net/uip.c:413: conn = &uip_conns[c];
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x22
	mul	ab
	add	a,#_uip_conns
	mov	r3,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/uip.c:414: if(conn->tcpstateflags != UIP_CLOSED &&
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x19
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00119$
;	/home/user/contiki/core/net/uip.c:415: conn->lport == uip_htons(lastport)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	_uip_htons
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r5
	cjne	a,ar6,00156$
	mov	a,r4
	cjne	a,ar7,00156$
	ljmp	00101$
00156$:
;	/home/user/contiki/core/net/uip.c:416: goto again;
00119$:
;	/home/user/contiki/core/net/uip.c:412: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00157$
00157$:
	jnc	00158$
	ljmp	00118$
00158$:
;	/home/user/contiki/core/net/uip.c:420: conn = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/uip.c:421: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00120$:
;	/home/user/contiki/core/net/uip.c:422: cconn = &uip_conns[c];
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x22
	mul	ab
	add	a,#_uip_conns
	mov	r6,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/uip.c:423: if(cconn->tcpstateflags == UIP_CLOSED) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x19
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jnz	00109$
;	/home/user/contiki/core/net/uip.c:424: conn = cconn;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	/home/user/contiki/core/net/uip.c:425: break;
	sjmp	00115$
00109$:
;	/home/user/contiki/core/net/uip.c:427: if(cconn->tcpstateflags == UIP_TIME_WAIT) {
	cjne	r7,#0x07,00121$
;	/home/user/contiki/core/net/uip.c:428: if(conn == 0 ||
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00110$
;	/home/user/contiki/core/net/uip.c:429: cconn->timer > conn->timer) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	subb	a,r5
	jnc	00121$
00110$:
;	/home/user/contiki/core/net/uip.c:430: conn = cconn;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00121$:
;	/home/user/contiki/core/net/uip.c:421: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0A,00164$
00164$:
	jnc	00165$
	ljmp	00120$
00165$:
00115$:
;	/home/user/contiki/core/net/uip.c:435: if(conn == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/home/user/contiki/core/net/uip.c:436: return 0;
	jnz	00117$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00122$
00117$:
;	/home/user/contiki/core/net/uip.c:439: conn->tcpstateflags = UIP_SYN_SENT;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x19
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:441: conn->snd_nxt[0] = iss[0];
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_iss
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:442: conn->snd_nxt[1] = iss[1];
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	dptr,#(_iss + 0x0001)
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:443: conn->snd_nxt[2] = iss[2];
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	dptr,#(_iss + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:444: conn->snd_nxt[3] = iss[3];
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_iss + 0x0003)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:446: conn->initialmss = conn->mss = UIP_TCP_MSS;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x36
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x36
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:448: conn->len = 1;   /* TCP length of the SYN is one. */
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:449: conn->nrtx = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1B
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:450: conn->timer = 1; /* Send the SYN next time around. */
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:451: conn->rto = UIP_RTO;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:452: conn->sa = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:453: conn->sv = 16;   /* Initial value of the RTT variance. */
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:454: conn->lport = uip_htons(lastport);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uip_htons
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:455: conn->rport = rport;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:456: uip_ipaddr_copy(&conn->ripaddr, ripaddr);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
;	/home/user/contiki/core/net/uip.c:458: return conn;
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00122$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	xch	a,r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_udp_new'
;------------------------------------------------------------
;rport                     Allocated to stack - sp -12
;ripaddr                   Allocated to stack - sp -8
;conn                      Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:464: uip_udp_new(const uip_ipaddr_t *ripaddr, uint16_t rport)
;	-----------------------------------------
;	 function uip_udp_new
;	-----------------------------------------
_uip_udp_new:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:469: again:
00101$:
;	/home/user/contiki/core/net/uip.c:470: ++lastport;
	mov	dptr,#_lastport
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:472: if(lastport >= 32000) {
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	subb	a,#0x7D
	jc	00103$
;	/home/user/contiki/core/net/uip.c:473: lastport = 4096;
	mov	dptr,#_lastport
	clr	a
	movx	@dptr,a
	mov	a,#0x10
	inc	dptr
	movx	@dptr,a
00103$:
;	/home/user/contiki/core/net/uip.c:476: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00115$:
;	/home/user/contiki/core/net/uip.c:477: if(uip_udp_conns[c].lport == uip_htons(lastport)) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x0F
	mul	ab
	add	a,#_uip_udp_conns
	mov	r3,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	push	ar4
	push	ar3
	lcall	_uip_htons
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	a,r3
	cjne	a,ar6,00149$
	mov	a,r4
	cjne	a,ar7,00149$
	sjmp	00101$
00149$:
;	/home/user/contiki/core/net/uip.c:476: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0A,00150$
00150$:
	jc	00115$
;	/home/user/contiki/core/net/uip.c:483: conn = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/uip.c:484: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00117$:
;	/home/user/contiki/core/net/uip.c:485: if(uip_udp_conns[c].lport == 0) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x0F
	mul	ab
	add	a,#_uip_udp_conns
	mov	r5,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00118$
;	/home/user/contiki/core/net/uip.c:486: conn = &uip_udp_conns[c];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/uip.c:487: break;
	sjmp	00109$
00118$:
;	/home/user/contiki/core/net/uip.c:484: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	mov	a,r7
	inc	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00153$
00153$:
	jc	00117$
00109$:
;	/home/user/contiki/core/net/uip.c:491: if(conn == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	/home/user/contiki/core/net/uip.c:492: return 0;
	jnz	00111$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00119$
00111$:
;	/home/user/contiki/core/net/uip.c:495: conn->lport = UIP_HTONS(lastport);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar7,r3
	mov	r2,#0x00
	mov	ar3,r4
	mov	r4,#0x00
	mov	a,r3
	orl	ar2,a
	mov	a,r4
	orl	ar7,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:496: conn->rport = rport;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:497: if(ripaddr == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00113$
;	/home/user/contiki/core/net/uip.c:498: memset(&conn->ripaddr, 0, sizeof(uip_ipaddr_t));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	sjmp	00114$
00113$:
;	/home/user/contiki/core/net/uip.c:500: uip_ipaddr_copy(&conn->ripaddr, ripaddr);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00114$:
;	/home/user/contiki/core/net/uip.c:502: conn->ttl = UIP_TTL;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x40
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:504: return conn;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00119$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_unlisten'
;------------------------------------------------------------
;port                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:509: uip_unlisten(uint16_t port)
;	-----------------------------------------
;	 function uip_unlisten
;	-----------------------------------------
_uip_unlisten:
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/core/net/uip.c:511: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00104$:
;	/home/user/contiki/core/net/uip.c:512: if(uip_listenports[c] == port) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x02
	mul	ab
	add	a,#_uip_listenports
	mov	r3,a
	mov	a,#(_uip_listenports >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	cjne	a,ar6,00105$
	mov	a,r2
	cjne	a,ar7,00105$
;	/home/user/contiki/core/net/uip.c:513: uip_listenports[c] = 0;
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:514: return;
	ret
00105$:
;	/home/user/contiki/core/net/uip.c:511: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x14,00116$
00116$:
	jc	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_listen'
;------------------------------------------------------------
;port                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:520: uip_listen(uint16_t port)
;	-----------------------------------------
;	 function uip_listen
;	-----------------------------------------
_uip_listen:
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/core/net/uip.c:522: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00104$:
;	/home/user/contiki/core/net/uip.c:523: if(uip_listenports[c] == 0) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x02
	mul	ab
	add	a,#_uip_listenports
	mov	r3,a
	mov	a,#(_uip_listenports >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	orl	a,r1
	jnz	00105$
;	/home/user/contiki/core/net/uip.c:524: uip_listenports[c] = port;
	mov	dpl,r3
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:525: return;
	ret
00105$:
;	/home/user/contiki/core/net/uip.c:522: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x14,00115$
00115$:
	jc	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_add_rcv_nxt'
;------------------------------------------------------------
;n                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:663: uip_add_rcv_nxt(uint16_t n)
;	-----------------------------------------
;	 function uip_add_rcv_nxt
;	-----------------------------------------
_uip_add_rcv_nxt:
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/core/net/uip.c:665: uip_add32(uip_conn->rcv_nxt, n);
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_uip_add32
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/uip.c:666: uip_conn->rcv_nxt[0] = uip_acc32[0];
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_acc32
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:667: uip_conn->rcv_nxt[1] = uip_acc32[1];
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x09
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:668: uip_conn->rcv_nxt[2] = uip_acc32[2];
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:669: uip_conn->rcv_nxt[3] = uip_acc32[3];
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0B
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_process'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;uip_connr                 Allocated to stack - sp -2
;m                         Allocated to registers r2 
;sloc0                     Allocated to stack - sp -10
;sloc1                     Allocated to stack - sp -2
;sloc2                     Allocated to stack - sp -7
;sloc3                     Allocated to stack - sp -4
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:673: uip_process(uint8_t flag)
;	-----------------------------------------
;	 function uip_process
;	-----------------------------------------
_uip_process:
	mov	a,sp
	add	a,#0x0B
	mov	sp,a
	mov	r7,dpl
;	/home/user/contiki/core/net/uip.c:675: register struct uip_conn *uip_connr = uip_conn;
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	/home/user/contiki/core/net/uip.c:678: if(flag == UIP_UDP_SEND_CONN) {
	cjne	r7,#0x04,00810$
	ljmp	00196$
00810$:
;	/home/user/contiki/core/net/uip.c:683: uip_sappdata = uip_appdata = &uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0036)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x0036) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x0036)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x0036) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:687: if(flag == UIP_POLL_REQUEST) {
	cjne	r7,#0x03,00145$
;	/home/user/contiki/core/net/uip.c:688: if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_ESTABLISHED &&
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x19
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	mov	r5,a
	cjne	r5,#0x03,00106$
;	/home/user/contiki/core/net/uip.c:689: !uip_outstanding(uip_connr)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00106$
;	/home/user/contiki/core/net/uip.c:690: uip_flags = UIP_POLL;
	mov	dptr,#_uip_flags
	mov	a,#0x08
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:691: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:692: goto appsend;
	ljmp	00324$
00106$:
;	/home/user/contiki/core/net/uip.c:694: } else if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_SENT) {
	anl	ar6,#0x0F
	cjne	r6,#0x02,00816$
	sjmp	00817$
00816$:
	ljmp	00383$
00817$:
;	/home/user/contiki/core/net/uip.c:696: BUF->flags = 0;
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:697: goto tcp_send_syn;
	ljmp	00253$
;	/home/user/contiki/core/net/uip.c:700: goto drop;
00145$:
;	/home/user/contiki/core/net/uip.c:703: } else if(flag == UIP_TIMER) {
	cjne	r7,#0x02,00818$
	sjmp	00819$
00818$:
	ljmp	00146$
00819$:
;	/home/user/contiki/core/net/uip.c:710: if(++iss[3] == 0) {
	mov	dptr,#(_iss + 0x0003)
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#(_iss + 0x0003)
	mov	a,r6
	movx	@dptr,a
	mov	a,r6
	jnz	00114$
;	/home/user/contiki/core/net/uip.c:711: if(++iss[2] == 0) {
	mov	dptr,#(_iss + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#(_iss + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r6
	jnz	00114$
;	/home/user/contiki/core/net/uip.c:712: if(++iss[1] == 0) {
	mov	dptr,#(_iss + 0x0001)
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#(_iss + 0x0001)
	mov	a,r6
	movx	@dptr,a
	mov	a,r6
	jnz	00114$
;	/home/user/contiki/core/net/uip.c:713: ++iss[0];
	mov	dptr,#_iss
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#_iss
	mov	a,r6
	movx	@dptr,a
00114$:
;	/home/user/contiki/core/net/uip.c:719: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:720: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:727: if(uip_connr->tcpstateflags == UIP_TIME_WAIT ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x19
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x07,00823$
	sjmp	00138$
00823$:
;	/home/user/contiki/core/net/uip.c:728: uip_connr->tcpstateflags == UIP_FIN_WAIT_2) {
	cjne	r3,#0x05,00139$
00138$:
;	/home/user/contiki/core/net/uip.c:729: ++(uip_connr->timer);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:730: if(uip_connr->timer == UIP_TIME_WAIT_TIMEOUT) {
	cjne	r4,#0x78,00826$
	sjmp	00827$
00826$:
	ljmp	00383$
00827$:
;	/home/user/contiki/core/net/uip.c:731: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	ljmp	00383$
00139$:
;	/home/user/contiki/core/net/uip.c:733: } else if(uip_connr->tcpstateflags != UIP_CLOSED) {
	mov	a,r3
	jnz	00828$
	ljmp	00383$
00828$:
;	/home/user/contiki/core/net/uip.c:738: if(uip_outstanding(uip_connr)) {
	push	ar3
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	orl	a,r2
	pop	ar3
	jnz	00829$
	ljmp	00134$
00829$:
;	/home/user/contiki/core/net/uip.c:739: if(uip_connr->timer-- == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	dec	a
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
	mov	a,r7
	jz	00830$
	ljmp	00383$
00830$:
;	/home/user/contiki/core/net/uip.c:740: if(uip_connr->nrtx == UIP_MAXRTX ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,#0x1B
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x08,00831$
	sjmp	00117$
00831$:
;	/home/user/contiki/core/net/uip.c:741: ((uip_connr->tcpstateflags == UIP_SYN_SENT ||
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x02,00832$
	sjmp	00120$
00832$:
;	/home/user/contiki/core/net/uip.c:742: uip_connr->tcpstateflags == UIP_SYN_RCVD) &&
	cjne	r7,#0x01,00118$
00120$:
;	/home/user/contiki/core/net/uip.c:743: uip_connr->nrtx == UIP_MAXSYNRTX)) {
	cjne	r2,#0x05,00118$
00117$:
;	/home/user/contiki/core/net/uip.c:744: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:749: uip_flags = UIP_TIMEDOUT;
	mov	dptr,#_uip_flags
	mov	a,#0x80
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:750: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:753: BUF->flags = TCP_RST | TCP_ACK;
	mov	r7,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r7
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	a,#0x14
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:754: goto tcp_send_nodata;
	ljmp	00375$
00118$:
;	/home/user/contiki/core/net/uip.c:758: uip_connr->timer = UIP_RTO << (uip_connr->nrtx > 4?
	mov	a,r2
	add	a,#0xff - 0x04
	jnc	00402$
;	/home/user/contiki/core/net/uip.c:759: 4:
	mov	r7,#0x04
	sjmp	00403$
00402$:
;	/home/user/contiki/core/net/uip.c:760: uip_connr->nrtx);
	mov	ar7,r2
00403$:
	mov	b,r7
	inc	b
	mov	a,#0x03
	sjmp	00840$
00838$:
	add	a,acc
00840$:
	djnz	b,00838$
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:761: ++(uip_connr->nrtx);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	r6
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:770: switch(uip_connr->tcpstateflags & UIP_TS_MASK) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	anl	a,#0x0F
	mov	r6,a
	add	a,#0xff - 0x08
	jnc	00841$
	ljmp	00383$
00841$:
	mov	a,r6
	add	a,#(00842$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00843$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00842$:
	.db	00128$
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00125$
	.db	00128$
	.db	00126$
	.db	00128$
	.db	00127$
00843$:
	.db	00128$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
	.db	00128$>>8
	.db	00126$>>8
	.db	00128$>>8
	.db	00127$>>8
;	/home/user/contiki/core/net/uip.c:771: case UIP_SYN_RCVD:
00122$:
;	/home/user/contiki/core/net/uip.c:774: goto tcp_send_synack;
	ljmp	00252$
;	/home/user/contiki/core/net/uip.c:777: case UIP_SYN_SENT:
00123$:
;	/home/user/contiki/core/net/uip.c:779: BUF->flags = 0;
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:780: goto tcp_send_syn;
	ljmp	00253$
;	/home/user/contiki/core/net/uip.c:783: case UIP_ESTABLISHED:
00124$:
;	/home/user/contiki/core/net/uip.c:788: uip_flags = UIP_REXMIT;
	mov	dptr,#_uip_flags
	mov	a,#0x04
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:789: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:790: goto apprexmit;
	ljmp	00338$
;	/home/user/contiki/core/net/uip.c:792: case UIP_FIN_WAIT_1:
00125$:
;	/home/user/contiki/core/net/uip.c:793: case UIP_CLOSING:
00126$:
;	/home/user/contiki/core/net/uip.c:794: case UIP_LAST_ACK:
00127$:
;	/home/user/contiki/core/net/uip.c:796: goto tcp_send_finack;
	ljmp	00312$
;	/home/user/contiki/core/net/uip.c:798: }
00128$:
	ljmp	00383$
00134$:
;	/home/user/contiki/core/net/uip.c:800: } else if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_ESTABLISHED) {
	anl	ar3,#0x0F
	cjne	r3,#0x03,00844$
	sjmp	00845$
00844$:
	ljmp	00383$
00845$:
;	/home/user/contiki/core/net/uip.c:803: uip_flags = UIP_POLL;
	mov	dptr,#_uip_flags
	mov	a,#0x08
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:804: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:805: goto appsend;
	ljmp	00324$
;	/home/user/contiki/core/net/uip.c:809: goto drop;
00146$:
;	/home/user/contiki/core/net/uip.c:812: if(flag == UIP_UDP_TIMER) {
	cjne	r7,#0x05,00151$
;	/home/user/contiki/core/net/uip.c:813: if(uip_udp_conn->lport != 0) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r5
	jnz	00848$
	ljmp	00383$
00848$:
;	/home/user/contiki/core/net/uip.c:814: uip_conn = NULL;
	mov	dptr,#_uip_conn
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:815: uip_sappdata = uip_appdata = &uip_buf[UIP_LLH_LEN + UIP_IPUDPH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x002a)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x002a) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x002a)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x002a) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:816: uip_len = uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:817: uip_flags = UIP_POLL;
	mov	dptr,#_uip_flags
	mov	a,#0x08
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:818: UIP_UDP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:819: goto udp_send;
	ljmp	00196$
;	/home/user/contiki/core/net/uip.c:821: goto drop;
00151$:
;	/home/user/contiki/core/net/uip.c:841: if(BUF->vhl != 0x45)  { /* IP version and header length. */
	mov	dptr,#(_uip_aligned_buf + 0x000e)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x45,00849$
	sjmp	00850$
00849$:
	ljmp	00383$
00850$:
;	/home/user/contiki/core/net/uip.c:856: if((BUF->len[0] << 8) + BUF->len[1] <= uip_len) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00851$
	ljmp	00383$
00851$:
;	/home/user/contiki/core/net/uip.c:857: uip_len = (BUF->len[0] << 8) + BUF->len[1];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_uip_len
	mov	a,r5
	add	a,r7
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:876: if((BUF->ipoffset[0] & 0x3f) != 0 ||
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x3F
	jz	00853$
	ljmp	00383$
00853$:
;	/home/user/contiki/core/net/uip.c:877: BUF->ipoffset[1] != 0) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00854$
	ljmp	00383$
00854$:
;	/home/user/contiki/core/net/uip.c:892: if(uip_ipaddr_cmp(&uip_hostaddr, &uip_all_zeroes_addr)) {
	mov	dptr,#_uip_hostaddr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_all_zeroes_addr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00164$
	mov	a,r7
	cjne	a,ar5,00164$
	mov	dptr,#(_uip_hostaddr + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uip_all_zeroes_addr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00857$
	mov	a,r7
	cjne	a,ar5,00857$
	sjmp	00165$
00857$:
00164$:
;	/home/user/contiki/core/net/uip.c:928: if(!uip_ipaddr_cmp(&BUF->destipaddr, &uip_hostaddr)) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x10
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_hostaddr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00858$
	mov	a,r7
	cjne	a,ar5,00858$
	sjmp	00859$
00858$:
	ljmp	00383$
00859$:
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x12
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uip_hostaddr + 0x0002)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00860$
	mov	a,r7
	cjne	a,ar5,00860$
	sjmp	00861$
00860$:
	ljmp	00383$
00861$:
;	/home/user/contiki/core/net/uip.c:930: goto drop;
00165$:
;	/home/user/contiki/core/net/uip.c:947: if(uip_ipchksum() != 0xffff) { /* Compute and check the IP header
	lcall	_uip_ipchksum
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xFF,00862$
	cjne	r7,#0xFF,00862$
	sjmp	00863$
00862$:
	ljmp	00383$
00863$:
;	/home/user/contiki/core/net/uip.c:957: if(BUF->proto == UIP_PROTO_TCP) { /* Check for TCP packet. If so,
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00864$
	ljmp	00199$
00864$:
;	/home/user/contiki/core/net/uip.c:965: if(BUF->proto == UIP_PROTO_UDP) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x11,00865$
	ljmp	00180$
00865$:
;	/home/user/contiki/core/net/uip.c:972: if(BUF->proto != UIP_PROTO_ICMP) { /* We only allow ICMP packets from
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00866$
	sjmp	00867$
00866$:
	ljmp	00383$
00867$:
;	/home/user/contiki/core/net/uip.c:988: if(ICMPBUF->type != ICMP_ECHO) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00868$
	sjmp	00869$
00868$:
	ljmp	00383$
00869$:
;	/home/user/contiki/core/net/uip.c:1004: ICMPBUF->type = ICMP_ECHO_REPLY;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1006: if(ICMPBUF->icmpchksum >= UIP_HTONS(0xffff - (ICMP_ECHO << 8))) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0xF7
	mov	a,r7
	subb	a,#0xFF
	jc	00178$
;	/home/user/contiki/core/net/uip.c:1007: ICMPBUF->icmpchksum += UIP_HTONS(ICMP_ECHO << 8) + 1;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x09
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00179$
00178$:
;	/home/user/contiki/core/net/uip.c:1009: ICMPBUF->icmpchksum += UIP_HTONS(ICMP_ECHO << 8);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00179$:
;	/home/user/contiki/core/net/uip.c:1013: uip_ipaddr_copy(&BUF->destipaddr, &BUF->srcipaddr);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1014: uip_ipaddr_copy(&BUF->srcipaddr, &uip_hostaddr);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_hostaddr
	push	acc
	mov	a,#(_uip_hostaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1017: BUF->ttl = UIP_TTL;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x40
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1018: goto ip_send_nolen;
	ljmp	00382$
;	/home/user/contiki/core/net/uip.c:1093: udp_input:
00180$:
;	/home/user/contiki/core/net/uip.c:1108: uip_len = uip_len - UIP_IPUDPH_LEN;
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xE4
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_uip_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1112: if(UDPBUF->destport == 0) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00871$
	ljmp	00383$
00871$:
;	/home/user/contiki/core/net/uip.c:1118: for(uip_udp_conn = &uip_udp_conns[0];
	mov	dptr,#_uip_udp_conn
	mov	a,#_uip_udp_conns
	movx	@dptr,a
	mov	a,#(_uip_udp_conns >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00385$:
;	/home/user/contiki/core/net/uip.c:1119: uip_udp_conn < &uip_udp_conns[UIP_UDP_CONNS];
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#(_uip_udp_conns + 0x0096)
	push	acc
	mov	a,#((_uip_udp_conns + 0x0096) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00872$
	ljmp	00383$
00872$:
;	/home/user/contiki/core/net/uip.c:1128: if(uip_udp_conn->lport != 0 &&
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00873$
	ljmp	00386$
00873$:
;	/home/user/contiki/core/net/uip.c:1129: UDPBUF->destport == uip_udp_conn->lport &&
	push	ar5
	push	ar6
	push	ar7
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	cjne	a,ar3,00874$
	mov	a,r7
	cjne	a,ar4,00874$
	sjmp	00875$
00874$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00386$
00875$:
	pop	ar7
	pop	ar6
	pop	ar5
;	/home/user/contiki/core/net/uip.c:1130: (uip_udp_conn->rport == 0 ||
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	00193$
;	/home/user/contiki/core/net/uip.c:1131: UDPBUF->srcport == uip_udp_conn->rport) &&
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	cjne	a,ar6,00877$
	mov	a,r5
	cjne	a,ar7,00877$
	sjmp	00878$
00877$:
	ljmp	00386$
00878$:
00193$:
;	/home/user/contiki/core/net/uip.c:1132: (uip_ipaddr_cmp(&uip_udp_conn->ripaddr, &uip_all_zeroes_addr) ||
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	dptr,#_uip_all_zeroes_addr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cjne	a,ar3,00879$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00879$
	sjmp	00880$
00879$:
	sjmp	00190$
00880$:
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_uip_all_zeroes_addr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar4,00881$
	mov	a,r3
	cjne	a,ar7,00881$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00195$
00881$:
	pop	ar7
	pop	ar6
	pop	ar5
00190$:
;	/home/user/contiki/core/net/uip.c:1133: uip_ipaddr_cmp(&uip_udp_conn->ripaddr, &uip_broadcast_addr) ||
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_uip_broadcast_addr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar4,00882$
	mov	a,r3
	cjne	a,ar7,00882$
	sjmp	00883$
00882$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00192$
00883$:
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_uip_broadcast_addr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar4,00884$
	mov	a,r3
	cjne	a,ar7,00884$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00195$
00884$:
	pop	ar7
	pop	ar6
	pop	ar5
00192$:
;	/home/user/contiki/core/net/uip.c:1134: uip_ipaddr_cmp(&BUF->srcipaddr, &uip_udp_conn->ripaddr))) {
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar2,00885$
	mov	a,r7
	cjne	a,ar3,00885$
	sjmp	00886$
00885$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00386$
00886$:
	pop	ar7
	pop	ar6
	pop	ar5
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0E
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r3
	cjne	a,ar5,00887$
	mov	a,r4
	cjne	a,ar6,00887$
	sjmp	00195$
00887$:
;	/home/user/contiki/core/net/uip.c:1135: goto udp_found;
00386$:
;	/home/user/contiki/core/net/uip.c:1120: ++uip_udp_conn) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	add	a,#0x0F
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00385$
;	/home/user/contiki/core/net/uip.c:1172: udp_found:
00195$:
;	/home/user/contiki/core/net/uip.c:1174: uip_conn = NULL;
	mov	dptr,#_uip_conn
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1175: uip_flags = UIP_NEWDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x02
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1176: uip_sappdata = uip_appdata = &uip_buf[UIP_LLH_LEN + UIP_IPUDPH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x002a)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x002a) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x002a)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x002a) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1177: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1178: UIP_UDP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1180: udp_send:
00196$:
;	/home/user/contiki/core/net/uip.c:1181: if(uip_slen == 0) {
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00888$
	ljmp	00383$
00888$:
;	/home/user/contiki/core/net/uip.c:1184: uip_len = uip_slen + UIP_IPUDPH_LEN;
	mov	a,#0x1C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1192: BUF->len[0] = (uip_len >> 8);
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	mov	ar6,r7
	mov	a,r6
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1193: BUF->len[1] = (uip_len & 0xff);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1196: BUF->ttl = uip_udp_conn->ttl;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1197: BUF->proto = UIP_PROTO_UDP;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x11
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1199: UDPBUF->udplen = UIP_HTONS(uip_slen + UIP_UDPH_LEN);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar3,r4
	mov	r2,#0x00
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r4
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1200: UDPBUF->udpchksum = 0;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1202: BUF->srcport  = uip_udp_conn->lport;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1203: BUF->destport = uip_udp_conn->rport;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1205: uip_ipaddr_copy(&BUF->srcipaddr, &uip_hostaddr);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_hostaddr
	push	acc
	mov	a,#(_uip_hostaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1206: uip_ipaddr_copy(&BUF->destipaddr, &uip_udp_conn->ripaddr);
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1208: uip_appdata = &uip_buf[UIP_LLH_LEN + UIP_IPTCPH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0036)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x0036) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1219: goto ip_send_nolen;
	ljmp	00382$
;	/home/user/contiki/core/net/uip.c:1224: tcp_input:
00199$:
;	/home/user/contiki/core/net/uip.c:1229: if(uip_tcpchksum() != 0xffff) {   /* Compute and check the TCP
	lcall	_uip_tcpchksum
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xFF,00889$
	cjne	r7,#0xFF,00889$
	sjmp	00890$
00889$:
	ljmp	00383$
00890$:
;	/home/user/contiki/core/net/uip.c:1238: if(BUF->destport == 0 || BUF->srcport == 0) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00891$
	ljmp	00383$
00891$:
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00892$
	ljmp	00383$
00892$:
;	/home/user/contiki/core/net/uip.c:1245: for(uip_connr = &uip_conns[0]; uip_connr <= &uip_conns[UIP_CONNS - 1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#_uip_conns
	inc	r0
	mov	@r0,#(_uip_conns >> 8)
	inc	r0
	mov	@r0,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00388$:
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_uip_conns + 0x0132)
	mov	b,#0x00
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00893$
	ljmp	00211$
00893$:
;	/home/user/contiki/core/net/uip.c:1247: if(uip_connr->tcpstateflags != UIP_CLOSED &&
	mov	a,#0x19
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00894$
	ljmp	00389$
00894$:
;	/home/user/contiki/core/net/uip.c:1248: BUF->destport == uip_connr->lport &&
	push	ar2
	push	ar3
	push	ar4
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00895$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00895$
	sjmp	00896$
00895$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00389$
00896$:
;	/home/user/contiki/core/net/uip.c:1249: BUF->srcport == uip_connr->rport &&
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00897$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00897$
	sjmp	00898$
00897$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00389$
00898$:
;	/home/user/contiki/core/net/uip.c:1250: uip_ipaddr_cmp(&BUF->srcipaddr, &uip_connr->ripaddr)) {
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00899$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00899$
	sjmp	00900$
00899$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00389$
00900$:
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x0E
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	dec	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00901$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00901$
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00254$
00901$:
	pop	ar4
	pop	ar3
	pop	ar2
;	/home/user/contiki/core/net/uip.c:1251: goto found;
00389$:
;	/home/user/contiki/core/net/uip.c:1246: ++uip_connr) {
	mov	a,#0x22
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00388$
00211$:
;	/home/user/contiki/core/net/uip.c:1259: if((BUF->flags & TCP_CTL) != TCP_SYN) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x3F
	cjne	r7,#0x02,00217$
;	/home/user/contiki/core/net/uip.c:1263: tmp16 = BUF->destport;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_tmp16
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1265: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00390$:
;	/home/user/contiki/core/net/uip.c:1266: if(tmp16 == uip_listenports[c]) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x02
	mul	ab
	add	a,#_uip_listenports
	mov	dpl,a
	mov	a,#(_uip_listenports >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	cjne	a,ar6,00904$
	mov	a,r3
	cjne	a,ar7,00904$
	ljmp	00226$
00904$:
;	/home/user/contiki/core/net/uip.c:1265: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x14,00905$
00905$:
	jc	00390$
;	/home/user/contiki/core/net/uip.c:1274: reset:
00217$:
;	/home/user/contiki/core/net/uip.c:1276: if(BUF->flags & TCP_RST) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	jnb	acc.2,00907$
	ljmp	00383$
00907$:
;	/home/user/contiki/core/net/uip.c:1282: BUF->flags = TCP_RST | TCP_ACK;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x14
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1283: uip_len = UIP_IPTCPH_LEN;
	mov	dptr,#_uip_len
	mov	a,#0x28
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1284: BUF->tcpoffset = 5 << 4;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x50
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1287: c = BUF->seqno[3];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1B
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
;	/home/user/contiki/core/net/uip.c:1288: BUF->seqno[3] = BUF->ackno[3];
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1B
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1F
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r3
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1289: BUF->ackno[3] = c;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1F
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1291: c = BUF->seqno[2];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
;	/home/user/contiki/core/net/uip.c:1292: BUF->seqno[2] = BUF->ackno[2];
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r3
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1293: BUF->ackno[2] = c;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1295: c = BUF->seqno[1];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x19
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
;	/home/user/contiki/core/net/uip.c:1296: BUF->seqno[1] = BUF->ackno[1];
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x19
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r3
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1297: BUF->ackno[1] = c;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1299: c = BUF->seqno[0];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_c
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1300: BUF->seqno[0] = BUF->ackno[0];
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x18
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1C
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r3
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1301: BUF->ackno[0] = c;
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1C
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1306: if(++BUF->ackno[3] == 0) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1F
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r5
	jnz	00225$
;	/home/user/contiki/core/net/uip.c:1307: if(++BUF->ackno[2] == 0) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r5
	jnz	00225$
;	/home/user/contiki/core/net/uip.c:1308: if(++BUF->ackno[1] == 0) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1D
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r5
	jnz	00225$
;	/home/user/contiki/core/net/uip.c:1309: ++BUF->ackno[0];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
00225$:
;	/home/user/contiki/core/net/uip.c:1315: tmp16 = BUF->srcport;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_tmp16
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1316: BUF->srcport = BUF->destport;
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r7
	mov	r2,a
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1317: BUF->destport = tmp16;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1320: uip_ipaddr_copy(&BUF->destipaddr, &BUF->srcipaddr);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar4,r6
	mov	ar3,r7
	mov	r2,#0x00
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x10
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1321: uip_ipaddr_copy(&BUF->srcipaddr, &uip_hostaddr);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_hostaddr
	push	acc
	mov	a,#(_uip_hostaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1324: goto tcp_send_noconn;
	ljmp	00381$
;	/home/user/contiki/core/net/uip.c:1329: found_listen:
00226$:
;	/home/user/contiki/core/net/uip.c:1336: uip_connr = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/uip.c:1337: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00392$:
;	/home/user/contiki/core/net/uip.c:1338: if(uip_conns[c].tcpstateflags == UIP_CLOSED) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x22
	mul	ab
	add	a,#_uip_conns
	mov	r4,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r3,a
	mov	a,#0x19
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00228$
;	/home/user/contiki/core/net/uip.c:1339: uip_connr = &uip_conns[c];
	mov	ar6,r4
	mov	ar7,r3
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/uip.c:1340: break;
	sjmp	00234$
00228$:
;	/home/user/contiki/core/net/uip.c:1342: if(uip_conns[c].tcpstateflags == UIP_TIME_WAIT) {
	cjne	r5,#0x07,00393$
;	/home/user/contiki/core/net/uip.c:1343: if(uip_connr == 0 ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00229$
;	/home/user/contiki/core/net/uip.c:1344: uip_conns[c].timer > uip_connr->timer) {
	mov	a,#0x1A
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	clr	c
	subb	a,r4
	jnc	00393$
00229$:
;	/home/user/contiki/core/net/uip.c:1345: uip_connr = &uip_conns[c];
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x22
	mul	ab
	add	a,#_uip_conns
	mov	r6,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
00393$:
;	/home/user/contiki/core/net/uip.c:1337: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00916$
00916$:
	jnc	00917$
	ljmp	00392$
00917$:
00234$:
;	/home/user/contiki/core/net/uip.c:1350: if(uip_connr == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00918$
	ljmp	00383$
00918$:
;	/home/user/contiki/core/net/uip.c:1358: uip_conn = uip_connr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dptr,#_uip_conn
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1361: uip_connr->rto = uip_connr->timer = UIP_RTO;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	a,#0x03
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1362: uip_connr->sa = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1363: uip_connr->sv = 4;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x04
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1364: uip_connr->nrtx = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1B
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1365: uip_connr->lport = BUF->destport;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1366: uip_connr->rport = BUF->srcport;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1367: uip_ipaddr_copy(&uip_connr->ripaddr, &BUF->srcipaddr);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar4,r6
	mov	ar3,r7
	mov	r2,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1368: uip_connr->tcpstateflags = UIP_SYN_RCVD;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x19
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1370: uip_connr->snd_nxt[0] = iss[0];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_iss
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1371: uip_connr->snd_nxt[1] = iss[1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_iss + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1372: uip_connr->snd_nxt[2] = iss[2];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_iss + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1373: uip_connr->snd_nxt[3] = iss[3];
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_iss + 0x0003)
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1374: uip_connr->len = 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1377: uip_connr->rcv_nxt[3] = BUF->seqno[3];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x03
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar3
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1B
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1378: uip_connr->rcv_nxt[2] = BUF->seqno[2];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar3
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1379: uip_connr->rcv_nxt[1] = BUF->seqno[1];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar3
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x19
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1380: uip_connr->rcv_nxt[0] = BUF->seqno[0];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1381: uip_add_rcv_nxt(1);
	mov	dptr,#0x0001
	lcall	_uip_add_rcv_nxt
;	/home/user/contiki/core/net/uip.c:1384: if((BUF->tcpoffset & 0xf0) > 0x50) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xF0
	mov	r7,a
	add	a,#0xff - 0x50
	jc	00919$
	ljmp	00252$
00919$:
;	/home/user/contiki/core/net/uip.c:1385: for(c = 0; c < ((BUF->tcpoffset >> 4) - 5) << 2 ;) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00395$:
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	mov	r6,#0x00
	add	a,#0xFB
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	ar4,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r3,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00920$
	ljmp	00252$
00920$:
;	/home/user/contiki/core/net/uip.c:1386: opt = uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + c];
	mov	a,#0x36
	add	a,r5
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_opt
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1387: if(opt == TCP_OPT_END) {
	mov	a,r7
	jnz	00921$
	ljmp	00252$
00921$:
;	/home/user/contiki/core/net/uip.c:1390: } else if(opt == TCP_OPT_NOOP) {
	cjne	r7,#0x01,00244$
;	/home/user/contiki/core/net/uip.c:1391: ++c;
	mov	dptr,#_c
	mov	a,r5
	inc	a
	movx	@dptr,a
	sjmp	00395$
00244$:
;	/home/user/contiki/core/net/uip.c:1393: } else if(opt == TCP_OPT_MSS &&
	cjne	r7,#0x02,00924$
	sjmp	00925$
00924$:
	ljmp	00240$
00925$:
;	/home/user/contiki/core/net/uip.c:1394: uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == TCP_OPT_MSS_LEN) {
	mov	a,#0x37
	add	a,r5
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00926$
	sjmp	00927$
00926$:
	ljmp	00240$
00927$:
;	/home/user/contiki/core/net/uip.c:1396: tmp16 = ((uint16_t)uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 2 + c] << 8) |
	mov	a,#0x38
	add	a,r5
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	@r0,ar7
	dec	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/uip.c:1397: (uint16_t)uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN + 3 + c];
	mov	a,#0x39
	add	a,r5
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r7,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r5
	orl	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	r7,a
	mov	dptr,#_tmp16
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1398: uip_connr->initialmss = uip_connr->mss =
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x12
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	/home/user/contiki/core/net/uip.c:1399: tmp16 > UIP_TCP_MSS? UIP_TCP_MSS: tmp16;
	clr	c
	mov	a,#0x36
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00404$
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#0x36
	inc	r0
	mov	@r0,#0x00
	sjmp	00405$
00404$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00405$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1402: break;
	sjmp	00252$
00240$:
;	/home/user/contiki/core/net/uip.c:1406: if(uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == 0) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	add	a,#0x37
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jz	00252$
;	/home/user/contiki/core/net/uip.c:1411: c += uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c];
	mov	a,#0x37
	add	a,r7
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_c
	add	a,r7
	movx	@dptr,a
	ljmp	00395$
;	/home/user/contiki/core/net/uip.c:1418: tcp_send_synack:
00252$:
;	/home/user/contiki/core/net/uip.c:1419: BUF->flags = TCP_ACK;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x10
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1421: tcp_send_syn:
00253$:
;	/home/user/contiki/core/net/uip.c:1422: BUF->flags |= TCP_SYN;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	orl	ar7,#0x02
	mov	dpl,r6
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1430: BUF->optdata[0] = TCP_OPT_MSS;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x28
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1431: BUF->optdata[1] = TCP_OPT_MSS_LEN;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x29
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x04
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1432: BUF->optdata[2] = (UIP_TCP_MSS) / 256;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x2A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1433: BUF->optdata[3] = (UIP_TCP_MSS) & 255;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x2B
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x36
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1434: uip_len = UIP_IPTCPH_LEN + TCP_OPT_MSS_LEN;
	mov	dptr,#_uip_len
	mov	a,#0x2C
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1435: BUF->tcpoffset = ((UIP_TCPH_LEN + TCP_OPT_MSS_LEN) / 4) << 4;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x60
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1436: goto tcp_send;
	ljmp	00377$
;	/home/user/contiki/core/net/uip.c:1439: found:
00254$:
;	/home/user/contiki/core/net/uip.c:1440: uip_conn = uip_connr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dptr,#_uip_conn
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1441: uip_flags = 0;
	mov	dptr,#_uip_flags
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1446: if(BUF->flags & TCP_RST) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	jnb	acc.2,00256$
;	/home/user/contiki/core/net/uip.c:1447: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1449: uip_flags = UIP_ABORT;
	mov	dptr,#_uip_flags
	mov	a,#0x20
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1450: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1451: goto drop;
	ljmp	00383$
00256$:
;	/home/user/contiki/core/net/uip.c:1455: c = (BUF->tcpoffset >> 4) << 2;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	add	a,acc
	add	a,acc
	mov	r7,a
	mov	dptr,#_c
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1459: uip_len = uip_len - c - UIP_IPH_LEN;
	mov	ar6,r7
	mov	r7,#0x00
	mov	dptr,#_uip_len
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	mov	a,r6
	add	a,#0xEC
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_uip_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1466: if(!((((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_SENT) &&
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x0F
	cjne	r2,#0x02,00268$
;	/home/user/contiki/core/net/uip.c:1467: ((BUF->flags & TCP_CTL) == (TCP_SYN | TCP_ACK))) ||
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x3F
	cjne	r7,#0x12,00933$
	ljmp	00265$
00933$:
00268$:
;	/home/user/contiki/core/net/uip.c:1468: (((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_RCVD) &&
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x19
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0x0F
	cjne	r5,#0x01,00264$
;	/home/user/contiki/core/net/uip.c:1469: ((BUF->flags & TCP_CTL) == TCP_SYN)))) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x3F
	cjne	r7,#0x02,00936$
	ljmp	00265$
00936$:
00264$:
;	/home/user/contiki/core/net/uip.c:1470: if((uip_len > 0 || ((BUF->flags & (TCP_SYN | TCP_FIN)) != 0)) &&
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00263$
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x03
	jnz	00938$
	ljmp	00265$
00938$:
00263$:
;	/home/user/contiki/core/net/uip.c:1471: (BUF->seqno[0] != uip_connr->rcv_nxt[0] ||
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar3,00939$
	sjmp	00940$
00939$:
	ljmp	00374$
00940$:
;	/home/user/contiki/core/net/uip.c:1472: BUF->seqno[1] != uip_connr->rcv_nxt[1] ||
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x19
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	inc	r3
	cjne	r3,#0x00,00941$
	inc	r4
00941$:
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar3,00942$
	sjmp	00943$
00942$:
	ljmp	00374$
00943$:
;	/home/user/contiki/core/net/uip.c:1473: BUF->seqno[2] != uip_connr->rcv_nxt[2] ||
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1A
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar3,00944$
	sjmp	00945$
00944$:
	ljmp	00374$
00945$:
;	/home/user/contiki/core/net/uip.c:1474: BUF->seqno[3] != uip_connr->rcv_nxt[3])) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1B
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar3,00946$
	sjmp	00947$
00946$:
	ljmp	00374$
00947$:
;	/home/user/contiki/core/net/uip.c:1475: goto tcp_send_ack;
00265$:
;	/home/user/contiki/core/net/uip.c:1483: if((BUF->flags & TCP_ACK) && uip_outstanding(uip_connr)) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	jb	acc.4,00948$
	ljmp	00279$
00948$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00949$
	ljmp	00279$
00949$:
;	/home/user/contiki/core/net/uip.c:1484: uip_add32(uip_connr->snd_nxt, uip_connr->len);
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_uip_add32
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/uip.c:1486: if(BUF->ackno[0] == uip_acc32[0] &&
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_acc32
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00950$
	sjmp	00951$
00950$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00279$
00951$:
	pop	ar7
	pop	ar6
	pop	ar5
;	/home/user/contiki/core/net/uip.c:1487: BUF->ackno[1] == uip_acc32[1] &&
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1D
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	cjne	a,ar2,00952$
	sjmp	00953$
00952$:
	ljmp	00279$
00953$:
;	/home/user/contiki/core/net/uip.c:1488: BUF->ackno[2] == uip_acc32[2] &&
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1E
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	cjne	a,ar2,00954$
	sjmp	00955$
00954$:
	ljmp	00279$
00955$:
;	/home/user/contiki/core/net/uip.c:1489: BUF->ackno[3] == uip_acc32[3]) {
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1F
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	cjne	a,ar2,00956$
	sjmp	00957$
00956$:
	ljmp	00279$
00957$:
;	/home/user/contiki/core/net/uip.c:1491: uip_connr->snd_nxt[0] = uip_acc32[0];
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1492: uip_connr->snd_nxt[1] = uip_acc32[1];
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1493: uip_connr->snd_nxt[2] = uip_acc32[2];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1494: uip_connr->snd_nxt[3] = uip_acc32[3];
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1497: if(uip_connr->nrtx == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1B
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00958$
	ljmp	00272$
00958$:
;	/home/user/contiki/core/net/uip.c:1499: m = uip_connr->rto - uip_connr->timer;
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf3
	mov	r1,a
	mov	a,#0x18
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r5
	mov	r2,a
;	/home/user/contiki/core/net/uip.c:1501: m = m - (uip_connr->sa >> 3);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x16
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r6,a
	mov	a,r2
	clr	c
	subb	a,r6
;	/home/user/contiki/core/net/uip.c:1502: uip_connr->sa += m;
	mov	r2,a
	add	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1503: if(m < 0) {
	mov	a,r2
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.7,00270$
;	/home/user/contiki/core/net/uip.c:1504: m = -m;
	clr	c
	clr	a
	subb	a,r2
	mov	r2,a
00270$:
;	/home/user/contiki/core/net/uip.c:1506: m = m - (uip_connr->sv >> 2);
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r3
;	/home/user/contiki/core/net/uip.c:1507: uip_connr->sv += m;
	mov	r2,a
	add	a,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1508: uip_connr->rto = (uip_connr->sa >> 3) + uip_connr->sv;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,r4
	mov	r4,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1946: return;
	pop	ar7
	pop	ar6
	pop	ar5
;	/home/user/contiki/core/net/uip.c:1508: uip_connr->rto = (uip_connr->sa >> 3) + uip_connr->sv;
00272$:
;	/home/user/contiki/core/net/uip.c:1512: uip_flags = UIP_ACKDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1514: uip_connr->timer = uip_connr->rto;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,#0x1A
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1517: uip_connr->len = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00279$:
;	/home/user/contiki/core/net/uip.c:1523: switch(uip_connr->tcpstateflags & UIP_TS_MASK) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x19
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	mov  r3,a
	add	a,#0xff - 0x08
	jnc	00960$
	ljmp	00383$
00960$:
	mov	a,r3
	add	a,#(00961$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r3
	add	a,#(00962$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00961$:
	.db	00373$
	.db	00281$
	.db	00288$
	.db	00307$
	.db	00349$
	.db	00362$
	.db	00370$
	.db	00369$
	.db	00346$
00962$:
	.db	00373$>>8
	.db	00281$>>8
	.db	00288$>>8
	.db	00307$>>8
	.db	00349$>>8
	.db	00362$>>8
	.db	00370$>>8
	.db	00369$>>8
	.db	00346$>>8
;	/home/user/contiki/core/net/uip.c:1528: case UIP_SYN_RCVD:
00281$:
;	/home/user/contiki/core/net/uip.c:1533: if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r3,a
	jnb	acc.0,00285$
;	/home/user/contiki/core/net/uip.c:1534: uip_connr->tcpstateflags = UIP_ESTABLISHED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1535: uip_flags = UIP_CONNECTED;
	mov	dptr,#_uip_flags
	mov	a,#0x40
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1536: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1537: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	00283$
;	/home/user/contiki/core/net/uip.c:1538: uip_flags |= UIP_NEWDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x42
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1539: uip_add_rcv_nxt(uip_len);
	mov	dpl,r2
	mov	dph,r3
	lcall	_uip_add_rcv_nxt
00283$:
;	/home/user/contiki/core/net/uip.c:1541: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1542: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1543: goto appsend;
	ljmp	00324$
00285$:
;	/home/user/contiki/core/net/uip.c:1546: if((BUF->flags & TCP_CTL) == TCP_SYN) {
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x3F
	cjne	r3,#0x02,00965$
	sjmp	00966$
00965$:
	ljmp	00383$
00966$:
;	/home/user/contiki/core/net/uip.c:1547: goto tcp_send_synack;
	ljmp	00252$
;	/home/user/contiki/core/net/uip.c:1551: case UIP_SYN_SENT:
00288$:
;	/home/user/contiki/core/net/uip.c:1556: if((uip_flags & UIP_ACKDATA) &&
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r3,a
	jb	acc.0,00967$
	ljmp	00305$
00967$:
;	/home/user/contiki/core/net/uip.c:1557: (BUF->flags & TCP_CTL) == (TCP_SYN | TCP_ACK)) {
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x3F
	cjne	r3,#0x12,00968$
	sjmp	00969$
00968$:
	ljmp	00305$
00969$:
;	/home/user/contiki/core/net/uip.c:1560: if((BUF->tcpoffset & 0xf0) > 0x50) {
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x20
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xF0
	mov	r3,a
	add	a,#0xff - 0x50
	jc	00970$
	ljmp	00303$
00970$:
;	/home/user/contiki/core/net/uip.c:1561: for(c = 0; c < ((BUF->tcpoffset >> 4) - 5) << 2 ;) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00398$:
	push	ar5
	push	ar6
	push	ar7
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x20
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	mov	r2,#0x00
	add	a,#0xFB
	mov	r3,a
	mov	a,r2
	addc	a,#0xFF
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r2,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r4,a
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00971$
	ljmp	00303$
00971$:
;	/home/user/contiki/core/net/uip.c:1562: opt = uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN + c];
	mov	a,#0x36
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_opt
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1563: if(opt == TCP_OPT_END) {
	mov	a,r3
	jnz	00972$
	ljmp	00303$
00972$:
;	/home/user/contiki/core/net/uip.c:1566: } else if(opt == TCP_OPT_NOOP) {
	cjne	r3,#0x01,00296$
;	/home/user/contiki/core/net/uip.c:1567: ++c;
	mov	dptr,#_c
	mov	a,r4
	inc	a
	movx	@dptr,a
	sjmp	00398$
00296$:
;	/home/user/contiki/core/net/uip.c:1569: } else if(opt == TCP_OPT_MSS &&
	cjne	r3,#0x02,00975$
	sjmp	00976$
00975$:
	ljmp	00292$
00976$:
;	/home/user/contiki/core/net/uip.c:1570: uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == TCP_OPT_MSS_LEN) {
	mov	a,#0x37
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x04,00977$
	sjmp	00978$
00977$:
	ljmp	00292$
00978$:
;	/home/user/contiki/core/net/uip.c:1572: tmp16 = (uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 2 + c] << 8) |
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x38
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
;	/home/user/contiki/core/net/uip.c:1573: uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 3 + c];
	mov	a,#0x39
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,r7
	orl	a,r3
	mov	@r0,a
	mov	a,r6
	orl	a,r2
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dptr,#_tmp16
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1574: uip_connr->initialmss =
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x14
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	/home/user/contiki/core/net/uip.c:1575: uip_connr->mss = tmp16 > UIP_TCP_MSS? UIP_TCP_MSS: tmp16;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf3
	mov	r1,a
	mov	a,#0x12
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	clr	c
	mov	a,#0x36
	subb	a,r6
	clr	a
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00406$
	mov	r2,#0x36
	mov	r3,#0x00
	sjmp	00407$
00406$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
00407$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1578: break;
	sjmp	00303$
00292$:
;	/home/user/contiki/core/net/uip.c:1582: if(uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == 0) {
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_c
	movx	a,@dptr
	mov	r3,a
	add	a,#0x37
	add	a,#_uip_aligned_buf
	mov	r2,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00303$
;	/home/user/contiki/core/net/uip.c:1587: c += uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c];
	mov	a,#0x37
	add	a,r3
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_c
	add	a,r3
	movx	@dptr,a
	ljmp	00398$
00303$:
;	/home/user/contiki/core/net/uip.c:1591: uip_connr->tcpstateflags = UIP_ESTABLISHED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1592: uip_connr->rcv_nxt[0] = BUF->seqno[0];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x18
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1593: uip_connr->rcv_nxt[1] = BUF->seqno[1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x19
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1594: uip_connr->rcv_nxt[2] = BUF->seqno[2];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1A
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1595: uip_connr->rcv_nxt[3] = BUF->seqno[3];
	mov	a,#0x03
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1B
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1596: uip_add_rcv_nxt(1);
	mov	dptr,#0x0001
	lcall	_uip_add_rcv_nxt
;	/home/user/contiki/core/net/uip.c:1597: uip_flags = UIP_CONNECTED | UIP_NEWDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x42
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1598: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1599: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1600: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1601: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1602: goto appsend;
	ljmp	00324$
00305$:
;	/home/user/contiki/core/net/uip.c:1605: uip_flags = UIP_ABORT;
	mov	dptr,#_uip_flags
	mov	a,#0x20
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1606: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1608: uip_conn->tcpstateflags = UIP_CLOSED;
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x19
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1609: goto reset;
	ljmp	00217$
;	/home/user/contiki/core/net/uip.c:1612: case UIP_ESTABLISHED:
00307$:
;	/home/user/contiki/core/net/uip.c:1624: if(BUF->flags & TCP_FIN && !(uip_connr->tcpstateflags & UIP_STOPPED)) {
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	jb	acc.0,00981$
	ljmp	00314$
00981$:
	mov	a,r4
	jnb	acc.4,00982$
	ljmp	00314$
00982$:
;	/home/user/contiki/core/net/uip.c:1625: if(uip_outstanding(uip_connr)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,#0x10
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	00983$
	ljmp	00383$
00983$:
;	/home/user/contiki/core/net/uip.c:1628: uip_add_rcv_nxt(1 + uip_len);
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00984$
	inc	r4
00984$:
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uip_add_rcv_nxt
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/uip.c:1629: uip_flags |= UIP_CLOSE;
	mov	dptr,#_uip_flags
	movx	a,@dptr
	orl	a,#0x10
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1630: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00311$
;	/home/user/contiki/core/net/uip.c:1631: uip_flags |= UIP_NEWDATA;
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	orl	a,#0x02
	movx	@dptr,a
00311$:
;	/home/user/contiki/core/net/uip.c:1633: UIP_APPCALL();
	push	ar7
	push	ar6
	push	ar5
	lcall	_tcpip_uipcall
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/uip.c:1634: uip_connr->len = 1;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1635: uip_connr->tcpstateflags = UIP_LAST_ACK;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1636: uip_connr->nrtx = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1B
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1637: tcp_send_finack:
00312$:
;	/home/user/contiki/core/net/uip.c:1638: BUF->flags = TCP_FIN | TCP_ACK;
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x11
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1639: goto tcp_send_nodata;
	ljmp	00375$
00314$:
;	/home/user/contiki/core/net/uip.c:1644: if((BUF->flags & TCP_URG) != 0) {
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jnb	acc.5,00317$
;	/home/user/contiki/core/net/uip.c:1658: uip_appdata = ((char *)uip_appdata) + ((BUF->urgp[0] << 8) | BUF->urgp[1]);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x27
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,#0x00
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	dptr,#_uip_appdata
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1659: uip_len -= (BUF->urgp[0] << 8) | BUF->urgp[1];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x26
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x27
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_uip_len
	mov	a,r4
	clr	c
	subb	a,r7
	movx	@dptr,a
	mov	a,r5
	subb	a,r6
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1946: return;
	pop	ar7
	pop	ar6
	pop	ar5
;	/home/user/contiki/core/net/uip.c:1659: uip_len -= (BUF->urgp[0] << 8) | BUF->urgp[1];
00317$:
;	/home/user/contiki/core/net/uip.c:1668: if(uip_len > 0 && !(uip_connr->tcpstateflags & UIP_STOPPED)) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00319$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	jb	acc.4,00319$
;	/home/user/contiki/core/net/uip.c:1669: uip_flags |= UIP_NEWDATA;
	mov	dptr,#_uip_flags
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1670: uip_add_rcv_nxt(uip_len);
	mov	dpl,r3
	mov	dph,r4
	lcall	_uip_add_rcv_nxt
00319$:
;	/home/user/contiki/core/net/uip.c:1685: tmp16 = ((uint16_t)BUF->wnd[0] << 8) + (uint16_t)BUF->wnd[1];
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x22
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x23
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	dptr,#_tmp16
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1686: if(tmp16 > uip_connr->initialmss ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,r7
	mov	a,r4
	subb	a,r6
	jc	00321$
;	/home/user/contiki/core/net/uip.c:1687: tmp16 == 0) {
	mov	a,r7
	orl	a,r6
	jnz	00322$
00321$:
;	/home/user/contiki/core/net/uip.c:1688: tmp16 = uip_connr->initialmss;
	mov	dptr,#_tmp16
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00322$:
;	/home/user/contiki/core/net/uip.c:1690: uip_connr->mss = tmp16;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x12
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_tmp16
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1708: if(uip_flags & (UIP_NEWDATA | UIP_ACKDATA)) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x03
	jnz	00991$
	ljmp	00383$
00991$:
;	/home/user/contiki/core/net/uip.c:1709: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1710: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1712: appsend:
00324$:
;	/home/user/contiki/core/net/uip.c:1714: if(uip_flags & UIP_ABORT) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jnb	acc.5,00326$
;	/home/user/contiki/core/net/uip.c:1715: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1716: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x19
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1717: BUF->flags = TCP_RST | TCP_ACK;
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	a,#0x14
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1718: goto tcp_send_nodata;
	ljmp	00375$
00326$:
;	/home/user/contiki/core/net/uip.c:1721: if(uip_flags & UIP_CLOSE) {
	mov	a,r4
	jnb	acc.4,00328$
;	/home/user/contiki/core/net/uip.c:1722: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1723: uip_connr->len = 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1724: uip_connr->tcpstateflags = UIP_FIN_WAIT_1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x19
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,#0x04
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1725: uip_connr->nrtx = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1B
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1726: BUF->flags = TCP_FIN | TCP_ACK;
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r3,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	a,#0x11
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1727: goto tcp_send_nodata;
	ljmp	00375$
00328$:
;	/home/user/contiki/core/net/uip.c:1731: if(uip_slen > 0) {
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00994$
	ljmp	00337$
00994$:
;	/home/user/contiki/core/net/uip.c:1735: if((uip_flags & UIP_ACKDATA) != 0) {
	mov	a,r4
	jnb	acc.0,00330$
;	/home/user/contiki/core/net/uip.c:1736: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00330$:
;	/home/user/contiki/core/net/uip.c:1742: if(uip_connr->len == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r4
	jnz	00334$
;	/home/user/contiki/core/net/uip.c:1747: if(uip_slen > uip_connr->mss) {
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	pop	ar5
	pop	ar6
	pop	ar7
	jnc	00332$
;	/home/user/contiki/core/net/uip.c:1748: uip_slen = uip_connr->mss;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dptr,#_uip_slen
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
00332$:
;	/home/user/contiki/core/net/uip.c:1753: uip_connr->len = uip_slen;
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	sjmp	00337$
00334$:
;	/home/user/contiki/core/net/uip.c:1759: uip_slen = uip_connr->len;
	mov	dptr,#_uip_slen
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00337$:
;	/home/user/contiki/core/net/uip.c:1762: uip_connr->nrtx = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1B
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1763: apprexmit:
00338$:
;	/home/user/contiki/core/net/uip.c:1764: uip_appdata = uip_sappdata;
	mov	dptr,#_uip_sappdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_uip_appdata
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1768: if(uip_slen > 0 && uip_connr->len > 0) {
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00340$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	00340$
;	/home/user/contiki/core/net/uip.c:1770: uip_len = uip_connr->len + UIP_TCPIP_HLEN;
	mov	dptr,#_uip_len
	mov	a,#0x28
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1772: BUF->flags = TCP_ACK | TCP_PSH;
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x18
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1774: goto tcp_send_noopts;
	ljmp	00376$
00340$:
;	/home/user/contiki/core/net/uip.c:1778: if(uip_flags & UIP_NEWDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jb	acc.1,01000$
	ljmp	00383$
01000$:
;	/home/user/contiki/core/net/uip.c:1779: uip_len = UIP_TCPIP_HLEN;
	mov	dptr,#_uip_len
	mov	a,#0x28
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1780: BUF->flags = TCP_ACK;
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x10
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1781: goto tcp_send_noopts;
	ljmp	00376$
;	/home/user/contiki/core/net/uip.c:1785: case UIP_LAST_ACK:
00346$:
;	/home/user/contiki/core/net/uip.c:1788: if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jb	acc.0,01001$
	ljmp	00383$
01001$:
;	/home/user/contiki/core/net/uip.c:1789: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1790: uip_flags = UIP_CLOSE;
	mov	dptr,#_uip_flags
	mov	a,#0x10
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1791: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1793: break;
	ljmp	00383$
;	/home/user/contiki/core/net/uip.c:1795: case UIP_FIN_WAIT_1:
00349$:
;	/home/user/contiki/core/net/uip.c:1799: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00351$
;	/home/user/contiki/core/net/uip.c:1800: uip_add_rcv_nxt(uip_len);
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uip_add_rcv_nxt
	pop	ar5
	pop	ar6
	pop	ar7
00351$:
;	/home/user/contiki/core/net/uip.c:1802: if(BUF->flags & TCP_FIN) {
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00358$
;	/home/user/contiki/core/net/uip.c:1803: if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00353$
;	/home/user/contiki/core/net/uip.c:1804: uip_connr->tcpstateflags = UIP_TIME_WAIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x07
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1805: uip_connr->timer = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1806: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	sjmp	00354$
00353$:
;	/home/user/contiki/core/net/uip.c:1808: uip_connr->tcpstateflags = UIP_CLOSING;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
00354$:
;	/home/user/contiki/core/net/uip.c:1810: uip_add_rcv_nxt(1);
	mov	dptr,#0x0001
	lcall	_uip_add_rcv_nxt
;	/home/user/contiki/core/net/uip.c:1811: uip_flags = UIP_CLOSE;
	mov	dptr,#_uip_flags
	mov	a,#0x10
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1812: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1813: goto tcp_send_ack;
	ljmp	00374$
00358$:
;	/home/user/contiki/core/net/uip.c:1814: } else if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00359$
;	/home/user/contiki/core/net/uip.c:1815: uip_connr->tcpstateflags = UIP_FIN_WAIT_2;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x05
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1816: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1817: goto drop;
	ljmp	00383$
00359$:
;	/home/user/contiki/core/net/uip.c:1819: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	01006$
	ljmp	00383$
01006$:
;	/home/user/contiki/core/net/uip.c:1820: goto tcp_send_ack;
	ljmp	00374$
;	/home/user/contiki/core/net/uip.c:1824: case UIP_FIN_WAIT_2:
00362$:
;	/home/user/contiki/core/net/uip.c:1825: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00364$
;	/home/user/contiki/core/net/uip.c:1826: uip_add_rcv_nxt(uip_len);
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uip_add_rcv_nxt
	pop	ar5
	pop	ar6
	pop	ar7
00364$:
;	/home/user/contiki/core/net/uip.c:1828: if(BUF->flags & TCP_FIN) {
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00366$
;	/home/user/contiki/core/net/uip.c:1829: uip_connr->tcpstateflags = UIP_TIME_WAIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x07
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1830: uip_connr->timer = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1831: uip_add_rcv_nxt(1);
	mov	dptr,#0x0001
	lcall	_uip_add_rcv_nxt
;	/home/user/contiki/core/net/uip.c:1832: uip_flags = UIP_CLOSE;
	mov	dptr,#_uip_flags
	mov	a,#0x10
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1833: UIP_APPCALL();
	lcall	_tcpip_uipcall
;	/home/user/contiki/core/net/uip.c:1834: goto tcp_send_ack;
	sjmp	00374$
00366$:
;	/home/user/contiki/core/net/uip.c:1836: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	01009$
	ljmp	00383$
01009$:
;	/home/user/contiki/core/net/uip.c:1837: goto tcp_send_ack;
;	/home/user/contiki/core/net/uip.c:1841: case UIP_TIME_WAIT:
	sjmp	00374$
00369$:
;	/home/user/contiki/core/net/uip.c:1842: goto tcp_send_ack;
;	/home/user/contiki/core/net/uip.c:1844: case UIP_CLOSING:
	sjmp	00374$
00370$:
;	/home/user/contiki/core/net/uip.c:1845: if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jb	acc.0,01010$
	ljmp	00383$
01010$:
;	/home/user/contiki/core/net/uip.c:1846: uip_connr->tcpstateflags = UIP_TIME_WAIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x07
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1847: uip_connr->timer = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/uip.c:1849: }
00373$:
;	/home/user/contiki/core/net/uip.c:1850: goto drop;
	ljmp	00383$
;	/home/user/contiki/core/net/uip.c:1854: tcp_send_ack:
00374$:
;	/home/user/contiki/core/net/uip.c:1855: BUF->flags = TCP_ACK;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x21
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x10
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1857: tcp_send_nodata:
00375$:
;	/home/user/contiki/core/net/uip.c:1858: uip_len = UIP_IPTCPH_LEN;
	mov	dptr,#_uip_len
	mov	a,#0x28
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1860: tcp_send_noopts:
00376$:
;	/home/user/contiki/core/net/uip.c:1861: BUF->tcpoffset = (UIP_TCPH_LEN / 4) << 4;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x50
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1867: tcp_send:
00377$:
;	/home/user/contiki/core/net/uip.c:1868: BUF->ackno[0] = uip_connr->rcv_nxt[0];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1869: BUF->ackno[1] = uip_connr->rcv_nxt[1];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x1D
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1870: BUF->ackno[2] = uip_connr->rcv_nxt[2];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x1E
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1871: BUF->ackno[3] = uip_connr->rcv_nxt[3];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1F
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1873: BUF->seqno[0] = uip_connr->snd_nxt[0];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1874: BUF->seqno[1] = uip_connr->snd_nxt[1];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x19
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1875: BUF->seqno[2] = uip_connr->snd_nxt[2];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x1A
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1876: BUF->seqno[3] = uip_connr->snd_nxt[3];
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x1B
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1878: BUF->proto = UIP_PROTO_TCP;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x06
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1880: BUF->srcport  = uip_connr->lport;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x14
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1881: BUF->destport = uip_connr->rport;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1883: uip_ipaddr_copy(&BUF->srcipaddr, &uip_hostaddr);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_hostaddr
	push	acc
	mov	a,#(_uip_hostaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1884: uip_ipaddr_copy(&BUF->destipaddr, &uip_connr->ripaddr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/uip.c:1886: if(uip_connr->tcpstateflags & UIP_STOPPED) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x19
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	jnb	acc.4,00379$
;	/home/user/contiki/core/net/uip.c:1889: BUF->wnd[0] = BUF->wnd[1] = 0;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x22
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x23
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	sjmp	00381$
00379$:
;	/home/user/contiki/core/net/uip.c:1891: BUF->wnd[0] = ((UIP_RECEIVE_WINDOW) >> 8);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x22
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1892: BUF->wnd[1] = ((UIP_RECEIVE_WINDOW) & 0xff);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x23
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x36
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1895: tcp_send_noconn:
00381$:
;	/home/user/contiki/core/net/uip.c:1896: BUF->ttl = UIP_TTL;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x40
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1903: BUF->len[0] = (uip_len >> 8);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1904: BUF->len[1] = (uip_len & 0xff);
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1907: BUF->urgp[0] = BUF->urgp[1] = 0;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x26
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x27
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1910: BUF->tcpchksum = 0;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x24
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1911: BUF->tcpchksum = ~(uip_tcpchksum());
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x24
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_uip_tcpchksum
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1914: ip_send_nolen:
00382$:
;	/home/user/contiki/core/net/uip.c:1920: BUF->vhl = 0x45;
	mov	dptr,#(_uip_aligned_buf + 0x000e)
	mov	a,#0x45
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1921: BUF->tos = 0;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1922: BUF->ipoffset[0] = BUF->ipoffset[1] = 0;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x07
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1923: ++ipid;
	mov	dptr,#_ipid
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1924: BUF->ipid[0] = ipid >> 8;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_ipid
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1925: BUF->ipid[1] = ipid & 0xff;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_ipid
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1927: BUF->ipchksum = 0;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1928: BUF->ipchksum = ~(uip_ipchksum());
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_uip_ipchksum
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1940: uip_flags = 0;
	mov	dptr,#_uip_flags
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1941: return;
;	/home/user/contiki/core/net/uip.c:1943: drop:
	sjmp	00400$
00383$:
;	/home/user/contiki/core/net/uip.c:1944: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1945: uip_flags = 0;
	mov	dptr,#_uip_flags
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1946: return;
00400$:
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_htons'
;------------------------------------------------------------
;val                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:1950: uip_htons(uint16_t val)
;	-----------------------------------------
;	 function uip_htons
;	-----------------------------------------
_uip_htons:
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/core/net/uip.c:1952: return UIP_HTONS(val);
	mov	ar5,r6
	mov	r4,#0x00
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dpl,r4
	mov	dph,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_htonl'
;------------------------------------------------------------
;val                       Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:1956: uip_htonl(uint32_t val)
;	-----------------------------------------
;	 function uip_htonl
;	-----------------------------------------
_uip_htonl:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	/home/user/contiki/core/net/uip.c:1958: return UIP_HTONL(val);
	mov	ar2,r4
	mov	ar3,r5
	mov	ar1,r2
	mov	r0,#0x00
	mov	ar2,r3
	mov	r3,#0x00
	mov	a,r2
	orl	ar0,a
	mov	a,r3
	orl	ar1,a
	mov	ar2,r1
	mov	ar3,r0
	mov	r1,#0x00
	mov	r0,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	ar7,r4
	mov	r6,#0x00
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,r6
	orl	ar0,a
	mov	a,r7
	orl	ar1,a
	mov	a,r5
	orl	ar3,a
	mov	a,r4
	orl	ar2,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	mov	a,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_send'
;------------------------------------------------------------
;len                       Allocated to stack - sp -9
;data                      Allocated to stack - sp -5
;copylen                   Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp +0
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/home/user/contiki/core/net/uip.c:1962: uip_send(const void *data, int len)
;	-----------------------------------------
;	 function uip_send
;	-----------------------------------------
_uip_send:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/home/user/contiki/core/net/uip.c:1966: copylen = MIN(len, UIP_BUFSIZE - UIP_LLH_LEN - UIP_TCPIP_HLEN -
	mov	dptr,#_uip_sappdata
	mov	r0,sp
	dec	r0
	dec	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r6,#(_uip_aligned_buf + 0x0036)
	mov	r7,#((_uip_aligned_buf + 0x0036) >> 8)
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
	mov	a,#0x36
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	sjmp	00108$
00107$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	ar7,r5
	mov	r2,#(_uip_aligned_buf + 0x0036)
	mov	r5,#((_uip_aligned_buf + 0x0036) >> 8)
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,r4
	subb	a,r5
	mov	r5,a
	mov	a,#0x36
	clr	c
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r5
	mov	r7,a
00108$:
;	/home/user/contiki/core/net/uip.c:1968: if(copylen > 0) {
	clr	c
	clr	a
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	/home/user/contiki/core/net/uip.c:1969: uip_slen = copylen;
	mov	dptr,#_uip_slen
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/uip.c:1970: if(data != uip_sappdata) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00105$
;	/home/user/contiki/core/net/uip.c:1971: memcpy(uip_sappdata, (data), uip_slen);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00105$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_uip_broadcast_addr:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
_uip_all_zeroes_addr:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.area XINIT   (CODE)
__xinit__uip_lladdr:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
