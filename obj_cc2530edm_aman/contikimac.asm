;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
; This file was generated Tue Feb 10 06:19:37 2015
;--------------------------------------------------------
	.module contikimac
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _contikimac_driver
	.globl _contikimac_debug_print
	.globl _phase_update
	.globl _phase_wait
	.globl _phase_init
	.globl _list_item_next
	.globl _queuebuf_to_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_compact
	.globl _packetbuf_set_datalen
	.globl _packetbuf_totlen
	.globl _packetbuf_datalen
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _packetbuf_hdr_remove
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _mac_call_sent_callback
	.globl _rtimer_set
	.globl _memset
	.globl _memcpy
	.globl _watchdog_periodic
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
_rt:
	.ds 7
_pt:
	.ds 2
_received_seqnos:
	.ds 48
_cycle_start:
	.ds 2
_powercycle_sync_cycle_start_1_403:
	.ds 2
_powercycle_sync_cycle_phase_1_403:
	.ds 1
_powercycle_packet_seen_4_407:
	.ds 1
_powercycle_t0_4_407:
	.ds 2
_powercycle_count_4_407:
	.ds 1
_powercycle_start_5_415:
	.ds 2
_powercycle_silence_periods_5_415:
	.ds 1
_powercycle_periods_5_415:
	.ds 1
_input_packet_ct_1_483:
	.ds 21
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_we_are_receiving_burst:
	.ds 2
_contikimac_is_on:
	.ds 1
_contikimac_keep_radio_on:
	.ds 1
_we_are_sending:
	.ds 1
_radio_is_on:
	.ds 1
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
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:285: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/home/user/contiki/core/net/mac/contikimac.c:287: if(contikimac_is_on && radio_is_on == 0) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00104$
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	/home/user/contiki/core/net/mac/contikimac.c:288: radio_is_on = 1;
	mov	dptr,#_radio_is_on
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:289: NETSTACK_RADIO.on();
	mov	dptr,#(_cc2530_rf_driver + 0x0010)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	pop	ar6
	pop	ar7
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:294: off(void)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
;	/home/user/contiki/core/net/mac/contikimac.c:296: if(contikimac_is_on && radio_is_on != 0 &&
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00105$
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00105$
;	/home/user/contiki/core/net/mac/contikimac.c:297: contikimac_keep_radio_on == 0) {
	mov	dptr,#_contikimac_keep_radio_on
	movx	a,@dptr
	mov	r7,a
	jnz	00105$
;	/home/user/contiki/core/net/mac/contikimac.c:298: radio_is_on = 0;
	mov	dptr,#_radio_is_on
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:299: NETSTACK_RADIO.off();
	mov	dptr,#(_cc2530_rf_driver + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	pop	ar6
	pop	ar7
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'schedule_powercycle'
;------------------------------------------------------------
;time                      Allocated to stack - sp -8
;t                         Allocated to stack - sp -4
;r                         Allocated to registers 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:306: schedule_powercycle(struct rtimer *t, rtimer_clock_t time)
;	-----------------------------------------
;	 function schedule_powercycle
;	-----------------------------------------
_schedule_powercycle:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	/home/user/contiki/core/net/mac/contikimac.c:310: if(contikimac_is_on) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r4,a
	jnz	00113$
	ljmp	00105$
00113$:
;	/home/user/contiki/core/net/mac/contikimac.c:312: if(RTIMER_CLOCK_LT(RTIMER_TIME(t) + time, RTIMER_NOW() + 2)) {
	mov	a,sp
	add	a,#0xfc
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r7,a
	mov	r0,sp
	dec	r0
	mov	@r0,_T1CNTL
	inc	r0
	mov	@r0,#0x00
	mov	r6,_T1CNTH
	mov	r5,#0x00
	mov	r0,sp
	dec	r0
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r2,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	jnb	acc.7,00102$
;	/home/user/contiki/core/net/mac/contikimac.c:313: time = RTIMER_NOW() - RTIMER_TIME(t) + 2;
	mov	r2,_T1CNTL
	mov	r7,#0x00
	mov	r5,_T1CNTH
	mov	ar6,r5
	clr	a
	mov	r5,a
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r2,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:318: if(r != RTIMER_OK) {
;	/home/user/contiki/core/net/mac/contikimac.c:313: time = RTIMER_NOW() - RTIMER_TIME(t) + 2;
00102$:
;	/home/user/contiki/core/net/mac/contikimac.c:317: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r2,#_powercycle
	mov	r7,#(_powercycle >> 8)
;	/home/user/contiki/core/net/mac/contikimac.c:316: r = rtimer_set(t, RTIMER_TIME(t) + time, 1,
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar2
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	/home/user/contiki/core/net/mac/contikimac.c:318: if(r != RTIMER_OK) {
00105$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'schedule_powercycle_fixed'
;------------------------------------------------------------
;fixed_time                Allocated to stack - sp -3
;t                         Allocated to registers r5 r6 r7 
;r                         Allocated to registers 
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:325: schedule_powercycle_fixed(struct rtimer *t, rtimer_clock_t fixed_time)
;	-----------------------------------------
;	 function schedule_powercycle_fixed
;	-----------------------------------------
_schedule_powercycle_fixed:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/user/contiki/core/net/mac/contikimac.c:329: if(contikimac_is_on) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r4,a
	jnz	00113$
	ret
00113$:
;	/home/user/contiki/core/net/mac/contikimac.c:331: if(RTIMER_CLOCK_LT(fixed_time, RTIMER_NOW() + 1)) {
	push	ar5
	push	ar6
	push	ar7
	mov	r3,_T1CNTL
	mov	r4,#0x00
	mov	r2,_T1CNTH
	mov	ar7,r2
	clr	a
	mov	r2,a
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00114$
	inc	r4
00114$:
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.7,00102$
;	/home/user/contiki/core/net/mac/contikimac.c:332: fixed_time = RTIMER_NOW() + 1;
	push	ar5
	push	ar6
	push	ar7
	mov	r3,_T1CNTL
	mov	r4,#0x00
	mov	r2,_T1CNTH
	mov	ar7,r2
	clr	a
	mov	r2,a
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:337: if(r != RTIMER_OK) {
	pop	ar7
	pop	ar6
	pop	ar5
;	/home/user/contiki/core/net/mac/contikimac.c:332: fixed_time = RTIMER_NOW() + 1;
00102$:
;	/home/user/contiki/core/net/mac/contikimac.c:336: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r3,#_powercycle
	mov	r4,#(_powercycle >> 8)
;	/home/user/contiki/core/net/mac/contikimac.c:335: r = rtimer_set(t, fixed_time, 1,
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar3
	push	ar4
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	/home/user/contiki/core/net/mac/contikimac.c:337: if(r != RTIMER_OK) {
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle_turn_radio_off'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:344: powercycle_turn_radio_off(void)
;	-----------------------------------------
;	 function powercycle_turn_radio_off
;	-----------------------------------------
_powercycle_turn_radio_off:
;	/home/user/contiki/core/net/mac/contikimac.c:350: if(we_are_sending == 0 && we_are_receiving_burst == 0) {
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00104$
;	/home/user/contiki/core/net/mac/contikimac.c:351: off();
	ljmp	_off
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle_turn_radio_on'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:361: powercycle_turn_radio_on(void)
;	-----------------------------------------
;	 function powercycle_turn_radio_on
;	-----------------------------------------
_powercycle_turn_radio_on:
;	/home/user/contiki/core/net/mac/contikimac.c:363: if(we_are_sending == 0 && we_are_receiving_burst == 0) {
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00104$
;	/home/user/contiki/core/net/mac/contikimac.c:364: on();
	ljmp	_on
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -11
;t                         Allocated to stack - sp -6
;PT_YIELD_FLAG             Allocated to registers r4 
;sloc0                     Allocated to stack - sp -3
;sync_cycle_start          Allocated with name '_powercycle_sync_cycle_start_1_403'
;sync_cycle_phase          Allocated with name '_powercycle_sync_cycle_phase_1_403'
;packet_seen               Allocated with name '_powercycle_packet_seen_4_407'
;t0                        Allocated with name '_powercycle_t0_4_407'
;count                     Allocated with name '_powercycle_count_4_407'
;start                     Allocated with name '_powercycle_start_5_415'
;silence_periods           Allocated with name '_powercycle_silence_periods_5_415'
;periods                   Allocated with name '_powercycle_periods_5_415'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:369: powercycle(struct rtimer *t, void *ptr)
;	-----------------------------------------
;	 function powercycle
;	-----------------------------------------
_powercycle:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	/home/user/contiki/core/net/mac/contikimac.c:376: PT_BEGIN(&pt);
	mov	r4,#0x01
	mov	dptr,#_pt
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x00,00250$
	cjne	r3,#0x00,00250$
	sjmp	00101$
00250$:
	cjne	r2,#0xAA,00251$
	cjne	r3,#0x01,00251$
	ljmp	00110$
00251$:
	cjne	r2,#0xDC,00252$
	cjne	r3,#0x01,00252$
	ljmp	00131$
00252$:
	cjne	r2,#0xF8,00253$
	cjne	r3,#0x01,00253$
	ljmp	00150$
00253$:
	ljmp	00161$
00101$:
;	/home/user/contiki/core/net/mac/contikimac.c:379: sync_cycle_start = RTIMER_NOW();
	mov	r2,_T1CNTL
	mov	r3,#0x00
	mov	r7,_T1CNTH
	mov	r6,#0x00
	mov	dptr,#_powercycle_sync_cycle_start_1_403
	mov	a,r6
	add	a,r2
	movx	@dptr,a
	mov	a,r7
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:509: PT_END(&pt);
;	/home/user/contiki/core/net/mac/contikimac.c:384: while(1) {
00159$:
;	/home/user/contiki/core/net/mac/contikimac.c:392: if(sync_cycle_phase++ == NETSTACK_RDC_CHANNEL_CHECK_RATE) {
	mov	dptr,#_powercycle_sync_cycle_phase_1_403
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_powercycle_sync_cycle_phase_1_403
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	cjne	r3,#0x08,00103$
;	/home/user/contiki/core/net/mac/contikimac.c:393: sync_cycle_phase = 0;
	mov	dptr,#_powercycle_sync_cycle_phase_1_403
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:394: sync_cycle_start += RTIMER_ARCH_SECOND;
	mov	dptr,#_powercycle_sync_cycle_start_1_403
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_powercycle_sync_cycle_start_1_403
	mov	a,#0x09
	add	a,r2
	movx	@dptr,a
	mov	a,#0x3D
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:395: cycle_start = sync_cycle_start;
	mov	dptr,#_powercycle_sync_cycle_start_1_403
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_cycle_start
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00103$:
;	/home/user/contiki/core/net/mac/contikimac.c:398: cycle_start = sync_cycle_start + ((unsigned long)(sync_cycle_phase*RTIMER_ARCH_SECOND))/NETSTACK_RDC_CHANNEL_CHECK_RATE;
	mov	dptr,#_powercycle_sync_cycle_phase_1_403
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar3
	push	ar2
	mov	dptr,#0x3D09
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar2
	mov	a,r3
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1F
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0xE0
	orl	a,@r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,r7
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1F
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	dptr,#_powercycle_sync_cycle_start_1_403
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r3,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	mov	dptr,#_cycle_start
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:509: PT_END(&pt);
;	/home/user/contiki/core/net/mac/contikimac.c:398: cycle_start = sync_cycle_start + ((unsigned long)(sync_cycle_phase*RTIMER_ARCH_SECOND))/NETSTACK_RDC_CHANNEL_CHECK_RATE;
00104$:
;	/home/user/contiki/core/net/mac/contikimac.c:407: packet_seen = 0;
	mov	dptr,#_powercycle_packet_seen_4_407
;	/home/user/contiki/core/net/mac/contikimac.c:409: for(count = 0; count < CCA_COUNT_MAX; ++count) {
	clr	a
	movx	@dptr,a
	mov	dptr,#_powercycle_count_4_407
	movx	@dptr,a
00162$:
;	/home/user/contiki/core/net/mac/contikimac.c:410: t0 = RTIMER_NOW();
	mov	r2,_T1CNTL
	mov	r3,#0x00
	mov	r7,_T1CNTH
	mov	r6,#0x00
	mov	dptr,#_powercycle_t0_4_407
	mov	a,r6
	add	a,r2
	movx	@dptr,a
	mov	a,r7
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:411: if(we_are_sending == 0 && we_are_receiving_burst == 0) {
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jnz	00108$
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00108$
;	/home/user/contiki/core/net/mac/contikimac.c:412: powercycle_turn_radio_on();
	lcall	_powercycle_turn_radio_on
;	/home/user/contiki/core/net/mac/contikimac.c:419: if(NETSTACK_RADIO.channel_clear() == 0) {
	mov	dptr,#(_cc2530_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	__sdcc_call_dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,r2
	orl	a,r3
	jnz	00106$
;	/home/user/contiki/core/net/mac/contikimac.c:420: packet_seen = 1;
	mov	dptr,#_powercycle_packet_seen_4_407
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:421: break;
	sjmp	00116$
00106$:
;	/home/user/contiki/core/net/mac/contikimac.c:423: powercycle_turn_radio_off();
	lcall	_powercycle_turn_radio_off
00108$:
;	/home/user/contiki/core/net/mac/contikimac.c:425: schedule_powercycle_fixed(t, RTIMER_NOW() + CCA_SLEEP_TIME);
	mov	r2,_T1CNTL
	mov	r3,#0x00
	mov	r6,_T1CNTH
	mov	ar7,r6
	clr	a
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,#0x07
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_schedule_powercycle_fixed
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/contikimac.c:426: PT_YIELD(&pt);
	mov	r4,#0x00
	mov	dptr,#_pt
	mov	a,#0xAA
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
00110$:
	mov	a,r4
	jnz	00114$
	mov	dpl,#0x01
	ljmp	00164$
00114$:
;	/home/user/contiki/core/net/mac/contikimac.c:409: for(count = 0; count < CCA_COUNT_MAX; ++count) {
	mov	dptr,#_powercycle_count_4_407
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_powercycle_count_4_407
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00260$
00260$:
	jnc	00261$
	ljmp	00162$
00261$:
00116$:
;	/home/user/contiki/core/net/mac/contikimac.c:429: if(packet_seen) {
	mov	dptr,#_powercycle_packet_seen_4_407
	movx	a,@dptr
	mov	r7,a
	jnz	00262$
	ljmp	00149$
00262$:
;	/home/user/contiki/core/net/mac/contikimac.c:432: start = RTIMER_NOW();
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r5,_T1CNTH
	mov	r3,#0x00
	mov	dptr,#_powercycle_start_5_415
	mov	a,r3
	add	a,r6
	movx	@dptr,a
	mov	a,r5
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:434: periods = silence_periods = 0;
	mov	dptr,#_powercycle_silence_periods_5_415
	clr	a
	movx	@dptr,a
	mov	dptr,#_powercycle_periods_5_415
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:435: while(we_are_sending == 0 && radio_is_on &&
00139$:
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jz	00263$
	ljmp	00141$
00263$:
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jnz	00264$
	ljmp	00141$
00264$:
;	/home/user/contiki/core/net/mac/contikimac.c:436: RTIMER_CLOCK_LT(RTIMER_NOW(),
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r3,_T1CNTH
	mov	ar5,r3
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_powercycle_start_5_415
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0xC3
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,r7
	subb	a,r5
	mov	r5,a
	jb	acc.7,00265$
	ljmp	00141$
00265$:
;	/home/user/contiki/core/net/mac/contikimac.c:448: if(NETSTACK_RADIO.channel_clear()) {
	mov	dptr,#(_cc2530_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jz	00118$
;	/home/user/contiki/core/net/mac/contikimac.c:449: ++silence_periods;
	mov	dptr,#_powercycle_silence_periods_5_415
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00119$
00118$:
;	/home/user/contiki/core/net/mac/contikimac.c:451: silence_periods = 0;
	mov	dptr,#_powercycle_silence_periods_5_415
	clr	a
	movx	@dptr,a
00119$:
;	/home/user/contiki/core/net/mac/contikimac.c:455: ++periods;
	mov	dptr,#_powercycle_periods_5_415
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:457: if(NETSTACK_RADIO.receiving_packet()) {
	mov	dptr,#(_cc2530_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jz	00121$
;	/home/user/contiki/core/net/mac/contikimac.c:458: silence_periods = 0;
	mov	dptr,#_powercycle_silence_periods_5_415
	clr	a
	movx	@dptr,a
00121$:
;	/home/user/contiki/core/net/mac/contikimac.c:460: if(silence_periods > MAX_SILENCE_PERIODS) {
	mov	dptr,#_powercycle_silence_periods_5_415
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jnc	00126$
;	/home/user/contiki/core/net/mac/contikimac.c:461: powercycle_turn_radio_off();
	lcall	_powercycle_turn_radio_off
;	/home/user/contiki/core/net/mac/contikimac.c:462: break;
	ljmp	00141$
;	/home/user/contiki/core/net/mac/contikimac.c:464: if(WITH_FAST_SLEEP &&
00126$:
;	/home/user/contiki/core/net/mac/contikimac.c:465: periods > MAX_NONACTIVITY_PERIODS &&
	mov	dptr,#_powercycle_periods_5_415
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0A
	jnc	00125$
;	/home/user/contiki/core/net/mac/contikimac.c:466: !(NETSTACK_RADIO.receiving_packet() ||
	mov	dptr,#(_cc2530_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jnz	00125$
;	/home/user/contiki/core/net/mac/contikimac.c:467: NETSTACK_RADIO.pending_packet())) {
	mov	dptr,#(_cc2530_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jnz	00125$
;	/home/user/contiki/core/net/mac/contikimac.c:468: powercycle_turn_radio_off();
	lcall	_powercycle_turn_radio_off
;	/home/user/contiki/core/net/mac/contikimac.c:469: break;
	sjmp	00141$
00125$:
;	/home/user/contiki/core/net/mac/contikimac.c:471: if(NETSTACK_RADIO.pending_packet()) {
	mov	dptr,#(_cc2530_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jnz	00141$
;	/home/user/contiki/core/net/mac/contikimac.c:475: schedule_powercycle(t, CCA_CHECK_TIME + CCA_SLEEP_TIME);
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_schedule_powercycle
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/contikimac.c:476: PT_YIELD(&pt);
	mov	r4,#0x00
	mov	dptr,#_pt
	mov	a,#0xDC
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
00131$:
	mov	a,r4
	jz	00273$
	ljmp	00139$
00273$:
	mov	dpl,#0x01
	ljmp	00164$
00141$:
;	/home/user/contiki/core/net/mac/contikimac.c:478: if(radio_is_on) {
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00149$
;	/home/user/contiki/core/net/mac/contikimac.c:479: if(!(NETSTACK_RADIO.receiving_packet() ||
	mov	dptr,#(_cc2530_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jnz	00145$
;	/home/user/contiki/core/net/mac/contikimac.c:480: NETSTACK_RADIO.pending_packet()) ||
	mov	dptr,#(_cc2530_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jz	00142$
00145$:
;	/home/user/contiki/core/net/mac/contikimac.c:481: !RTIMER_CLOCK_LT(RTIMER_NOW(),
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r3,_T1CNTH
	mov	ar5,r3
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_powercycle_start_5_415
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0xC3
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,r7
	subb	a,r5
	mov	r5,a
	jb	acc.7,00149$
00142$:
;	/home/user/contiki/core/net/mac/contikimac.c:483: powercycle_turn_radio_off();
	lcall	_powercycle_turn_radio_off
00149$:
;	/home/user/contiki/core/net/mac/contikimac.c:488: if(RTIMER_CLOCK_LT(RTIMER_NOW() - cycle_start, CYCLE_TIME - CHECK_TIME * 4)) {
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r3,_T1CNTH
	mov	ar5,r3
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_cycle_start
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,r7
	subb	a,r5
	mov	r5,a
	mov	a,r3
	add	a,#0x9F
	mov	r3,a
	mov	a,r5
	addc	a,#0xF8
	mov	r5,a
	jb	acc.7,00278$
	ljmp	00159$
00278$:
;	/home/user/contiki/core/net/mac/contikimac.c:503: schedule_powercycle_fixed(t, CYCLE_TIME + cycle_start);
	mov	dptr,#_cycle_start
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xA1
	add	a,r6
	mov	r6,a
	mov	a,#0x07
	addc	a,r7
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_schedule_powercycle_fixed
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/contikimac.c:504: PT_YIELD(&pt);
	mov	r4,#0x00
	mov	dptr,#_pt
	mov	a,#0xF8
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
00150$:
	mov	a,r4
	jz	00279$
	ljmp	00159$
00279$:
	mov	dpl,#0x01
;	/home/user/contiki/core/net/mac/contikimac.c:509: PT_END(&pt);
	sjmp	00164$
00161$:
	mov	dptr,#_pt
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x03
00164$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'broadcast_rate_drop'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:513: broadcast_rate_drop(void)
;	-----------------------------------------
;	 function broadcast_rate_drop
;	-----------------------------------------
_broadcast_rate_drop:
;	/home/user/contiki/core/net/mac/contikimac.c:529: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;mac_callback_ptr          Allocated to stack - sp -28
;buf_list                  Allocated to stack - sp -31
;is_receiver_awake         Allocated to stack - sp -33
;mac_callback              Allocated to registers r6 r7 
;t0                        Allocated to registers r6 r2 
;encounter_time            Allocated to stack - sp -9
;strobes                   Allocated to registers 
;got_strobe_ack            Allocated to registers r7 
;hdrlen                    Allocated to stack - sp -7
;len                       Allocated to registers r4 r5 
;is_broadcast              Allocated to stack - sp -5
;is_reliable               Allocated to registers 
;is_known_receiver         Allocated to stack - sp -14
;collisions                Allocated to stack - sp -13
;transmit_len              Allocated to stack - sp -12
;ret                       Allocated to registers r6 r7 
;contikimac_was_on         Allocated to registers r3 
;seqno                     Allocated to stack - sp -10
;chdr                      Allocated to registers r2 r6 r7 
;ptr                       Allocated to stack - sp -4
;i                         Allocated to stack - sp -4
;wt                        Allocated to registers r4 r5 
;txtime                    Allocated to stack - sp -4
;ret                       Allocated to registers 
;ackbuf                    Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -23
;sloc1                     Allocated to stack - sp -21
;sloc2                     Allocated to stack - sp -19
;sloc3                     Allocated to stack - sp -17
;sloc4                     Allocated to stack - sp -16
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:534: send_packet(mac_callback_t mac_callback, void *mac_callback_ptr,
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	mov	a,sp
	add	a,#0x18
	mov	sp,a
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/core/net/mac/contikimac.c:539: rtimer_clock_t encounter_time = 0;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:543: uint8_t is_broadcast = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:545: uint8_t is_known_receiver = 0;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:556: if(!contikimac_is_on && !contikimac_keep_radio_on) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r5,a
	jnz	00102$
	mov	dptr,#_contikimac_keep_radio_on
	movx	a,@dptr
	mov	r5,a
	jnz	00102$
;	/home/user/contiki/core/net/mac/contikimac.c:558: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00181$
00102$:
;	/home/user/contiki/core/net/mac/contikimac.c:561: if(packetbuf_totlen() == 0) {
	push	ar7
	push	ar6
	lcall	_packetbuf_totlen
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00105$
;	/home/user/contiki/core/net/mac/contikimac.c:563: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00181$
00105$:
;	/home/user/contiki/core/net/mac/contikimac.c:568: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &rimeaddr_node_addr);
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:570: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
	mov	dpl,#0x19
	push	ar6
	lcall	_packetbuf_addr
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	pop	ar6
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jz	00109$
;	/home/user/contiki/core/net/mac/contikimac.c:571: is_broadcast = 1;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#0x01
;	/home/user/contiki/core/net/mac/contikimac.c:574: if(broadcast_rate_drop()) {
	push	ar7
	push	ar6
	lcall	_broadcast_rate_drop
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00109$
;	/home/user/contiki/core/net/mac/contikimac.c:575: return MAC_TX_COLLISION;
	mov	dptr,#0x0001
	ljmp	00181$
00109$:
;	/home/user/contiki/core/net/mac/contikimac.c:594: is_reliable = packetbuf_attr(PACKETBUF_ATTR_RELIABLE) ||
	mov	dpl,#0x0C
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00185$
;	/home/user/contiki/core/net/mac/contikimac.c:595: packetbuf_attr(PACKETBUF_ATTR_ERELIABLE);
	mov	dpl,#0x17
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	pop	ar6
	pop	ar7
00185$:
;	/home/user/contiki/core/net/mac/contikimac.c:597: packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
	push	ar7
	push	ar6
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0B
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/contikimac.c:600: hdrlen = packetbuf_totlen();
	lcall	_packetbuf_totlen
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	/home/user/contiki/core/net/mac/contikimac.c:601: if(packetbuf_hdralloc(sizeof(struct hdr)) == 0) {
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00111$
;	/home/user/contiki/core/net/mac/contikimac.c:604: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00181$
00111$:
;	/home/user/contiki/core/net/mac/contikimac.c:606: chdr = packetbuf_hdrptr();
	push	ar6
	push	ar7
	lcall	_packetbuf_hdrptr
;	/home/user/contiki/core/net/mac/contikimac.c:607: chdr->id = CONTIKIMAC_ID;
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/contikimac.c:608: chdr->len = hdrlen;
	inc	r2
	cjne	r2,#0x00,00328$
	inc	r6
00328$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/contikimac.c:611: hdrlen = NETSTACK_FRAMER.create();
	mov	dptr,#_framer_802154
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/contikimac.c:612: if(hdrlen < 0) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	r0
	mov	a,@r0
	pop	ar7
	pop	ar6
	jnb	acc.7,00113$
;	/home/user/contiki/core/net/mac/contikimac.c:615: packetbuf_hdr_remove(sizeof(struct hdr));
	mov	dptr,#0x0002
	lcall	_packetbuf_hdr_remove
;	/home/user/contiki/core/net/mac/contikimac.c:616: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00181$
00113$:
;	/home/user/contiki/core/net/mac/contikimac.c:618: hdrlen += sizeof(struct hdr);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:631: transmit_len = packetbuf_totlen();
	push	ar7
	push	ar6
	lcall	_packetbuf_totlen
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	/home/user/contiki/core/net/mac/contikimac.c:632: if(transmit_len < SHORTEST_PACKET_SIZE) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x2B
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00115$
;	/home/user/contiki/core/net/mac/contikimac.c:635: ptr = packetbuf_dataptr();
	push	ar6
	push	ar7
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/contikimac.c:636: memset(ptr + packetbuf_datalen(), 0, SHORTEST_PACKET_SIZE - packetbuf_totlen());
	lcall	_packetbuf_totlen
	mov	r6,dpl
	mov	r7,dph
	mov	a,#0x2B
	clr	c
	subb	a,r6
	mov	r5,a
	clr	a
	subb	a,r7
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_datalen
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:864: return ret;
	pop	ar7
	pop	ar6
;	/home/user/contiki/core/net/mac/contikimac.c:639: transmit_len = SHORTEST_PACKET_SIZE;
00115$:
;	/home/user/contiki/core/net/mac/contikimac.c:643: packetbuf_compact();
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	lcall	_packetbuf_compact
;	/home/user/contiki/core/net/mac/contikimac.c:649: transmit_len = packetbuf_totlen();
	lcall	_packetbuf_totlen
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	/home/user/contiki/core/net/mac/contikimac.c:651: NETSTACK_RADIO.prepare(packetbuf_hdrptr(), transmit_len);
	mov	dptr,#(_cc2530_rf_driver + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	push	ar3
	push	ar2
	lcall	_packetbuf_hdrptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00331$
	sjmp	00332$
00331$:
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00332$:
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:654: packetbuf_hdr_remove(hdrlen);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar6
	lcall	_packetbuf_hdr_remove
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:656: if(!is_broadcast && !is_receiver_awake) {
	pop	ar7
	pop	ar6
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jz	00333$
	ljmp	00121$
00333$:
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00121$
;	/home/user/contiki/core/net/mac/contikimac.c:658: ret = phase_wait(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	push	ar7
	push	ar6
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xe1
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
	add	a,#0xe1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	mov	a,#0xD0
	push	acc
	clr	a
	push	acc
	mov	a,#0xA1
	push	acc
	mov	a,#0x07
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_phase_wait
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	mov	ar6,r7
	mov	r7,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:661: if(ret == PHASE_DEFERRED) {
	cjne	r6,#0x02,00117$
	cjne	r7,#0x00,00117$
;	/home/user/contiki/core/net/mac/contikimac.c:662: return MAC_TX_DEFERRED;
	mov	dptr,#0x0003
	ljmp	00181$
00117$:
;	/home/user/contiki/core/net/mac/contikimac.c:664: if(ret != PHASE_UNKNOWN) {
	mov	a,r6
	orl	a,r7
	jz	00121$
;	/home/user/contiki/core/net/mac/contikimac.c:665: is_known_receiver = 1;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,#0x01
00121$:
;	/home/user/contiki/core/net/mac/contikimac.c:674: we_are_sending = 1;
	mov	dptr,#_we_are_sending
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:681: if(NETSTACK_RADIO.receiving_packet() || NETSTACK_RADIO.pending_packet()) {
	mov	dptr,#(_cc2530_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	orl	a,r5
	jnz	00123$
	mov	dptr,#(_cc2530_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	orl	a,r5
	jz	00124$
00123$:
;	/home/user/contiki/core/net/mac/contikimac.c:682: we_are_sending = 0;
	mov	dptr,#_we_are_sending
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:685: return MAC_TX_COLLISION;
	mov	dptr,#0x0001
	ljmp	00181$
00124$:
;	/home/user/contiki/core/net/mac/contikimac.c:690: off();
	lcall	_off
;	/home/user/contiki/core/net/mac/contikimac.c:696: collisions = 0;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:698: got_strobe_ack = 0;
	mov	r7,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:703: contikimac_was_on = contikimac_is_on;
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r3,a
;	/home/user/contiki/core/net/mac/contikimac.c:704: contikimac_is_on = 1;
	mov	dptr,#_contikimac_is_on
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:709: if(is_receiver_awake == 0) {
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00340$
	ljmp	00136$
00340$:
;	/home/user/contiki/core/net/mac/contikimac.c:711: for(i = 0; i < CCA_COUNT_MAX_TX; ++i) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00174$:
;	/home/user/contiki/core/net/mac/contikimac.c:712: t0 = RTIMER_NOW();
	push	ar3
	mov	r3,_T1CNTL
	mov	r4,#0x00
	mov	r2,_T1CNTH
	mov	ar5,r2
	clr	a
	add	a,r3
	mov	r3,a
	mov	a,r5
	addc	a,r4
	mov	r4,a
	mov	ar6,r3
	mov	ar2,r4
;	/home/user/contiki/core/net/mac/contikimac.c:713: on();
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_on
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:715: while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_CHECK_TIME)) { }
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,#0x01
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r2
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:864: return ret;
	pop	ar3
;	/home/user/contiki/core/net/mac/contikimac.c:715: while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_CHECK_TIME)) { }
00126$:
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	pop	ar3
	jb	acc.7,00126$
;	/home/user/contiki/core/net/mac/contikimac.c:717: if(NETSTACK_RADIO.channel_clear() == 0) {
	mov	dptr,#(_cc2530_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar7
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar7
	mov	a,r4
	orl	a,r5
	jnz	00130$
;	/home/user/contiki/core/net/mac/contikimac.c:718: collisions++;
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	@r0,#0x01
;	/home/user/contiki/core/net/mac/contikimac.c:719: off();
	push	ar7
	push	ar3
	lcall	_off
	pop	ar3
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:720: break;
	sjmp	00136$
00130$:
;	/home/user/contiki/core/net/mac/contikimac.c:722: off();
	push	ar3
	push	ar7
	push	ar3
	lcall	_off
	pop	ar3
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:723: t0 = RTIMER_NOW();
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	ar6,r4
	mov	ar2,r5
;	/home/user/contiki/core/net/mac/contikimac.c:724: while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_SLEEP_TIME)) { }
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,#0x07
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r2
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:864: return ret;
	pop	ar3
;	/home/user/contiki/core/net/mac/contikimac.c:724: while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_SLEEP_TIME)) { }
00131$:
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	pop	ar3
	jb	acc.7,00131$
;	/home/user/contiki/core/net/mac/contikimac.c:711: for(i = 0; i < CCA_COUNT_MAX_TX; ++i) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00344$
	inc	r0
	inc	@r0
00344$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x06
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00345$
	ljmp	00174$
00345$:
00136$:
;	/home/user/contiki/core/net/mac/contikimac.c:728: if(collisions > 0) {
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,@r0
	jz	00138$
;	/home/user/contiki/core/net/mac/contikimac.c:729: we_are_sending = 0;
	mov	dptr,#_we_are_sending
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:730: off();
	push	ar3
	lcall	_off
	pop	ar3
;	/home/user/contiki/core/net/mac/contikimac.c:732: contikimac_is_on = contikimac_was_on;
	mov	dptr,#_contikimac_is_on
	mov	a,r3
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:733: return MAC_TX_COLLISION;
	mov	dptr,#0x0001
	ljmp	00181$
00138$:
;	/home/user/contiki/core/net/mac/contikimac.c:738: if(!is_broadcast) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jnz	00140$
;	/home/user/contiki/core/net/mac/contikimac.c:742: on();
	push	ar7
	push	ar3
	lcall	_on
	pop	ar3
	pop	ar7
00140$:
;	/home/user/contiki/core/net/mac/contikimac.c:746: watchdog_periodic();
	push	ar3
	push	ar7
	push	ar3
	lcall	_watchdog_periodic
	pop	ar3
;	/home/user/contiki/core/net/mac/contikimac.c:747: t0 = RTIMER_NOW();
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	ar6,r4
	mov	ar2,r5
;	/home/user/contiki/core/net/mac/contikimac.c:748: seqno = packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO);
	mov	dpl,#0x0A
	push	ar6
	push	ar3
	push	ar2
	lcall	_packetbuf_attr
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar4
;	/home/user/contiki/core/net/mac/contikimac.c:749: for(strobes = 0, collisions = 0;
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,#0xC1
	add	a,r6
	mov	@r0,a
	mov	a,#0x07
	addc	a,r2
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x04
	add	a,r6
	mov	@r0,a
	mov	a,#0x01
	addc	a,r2
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,sp
	add	a,#0xFD
	mov	@r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:864: return ret;
	pop	ar3
;	/home/user/contiki/core/net/mac/contikimac.c:749: for(strobes = 0, collisions = 0;
00179$:
;	/home/user/contiki/core/net/mac/contikimac.c:750: got_strobe_ack == 0 && collisions == 0 &&
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	cjne	@r0,#0x00,00348$
	sjmp	00349$
00348$:
	ljmp	00161$
00349$:
;	/home/user/contiki/core/net/mac/contikimac.c:751: RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + STROBE_TIME); strobes++) {
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	pop	ar3
	jb	acc.7,00350$
	ljmp	00161$
00350$:
;	/home/user/contiki/core/net/mac/contikimac.c:753: watchdog_periodic();
	push	ar7
	push	ar3
	lcall	_watchdog_periodic
	pop	ar3
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:755: if(!is_broadcast && (is_receiver_awake || is_known_receiver) &&
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jnz	00142$
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00145$
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	jz	00142$
00145$:
;	/home/user/contiki/core/net/mac/contikimac.c:756: !RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + MAX_PHASE_STROBE_TIME)) {
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	pop	ar3
	jb	acc.7,00354$
	ljmp	00161$
00354$:
;	/home/user/contiki/core/net/mac/contikimac.c:758: break;
00142$:
;	/home/user/contiki/core/net/mac/contikimac.c:768: txtime = RTIMER_NOW();
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	/home/user/contiki/core/net/mac/contikimac.c:769: ret = NETSTACK_RADIO.transmit(transmit_len);
	mov	dptr,#(_cc2530_rf_driver + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	00355$
	sjmp	00356$
00355$:
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	ret
00356$:
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:789: wt = RTIMER_NOW();
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
;	/home/user/contiki/core/net/mac/contikimac.c:790: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x06
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:864: return ret;
	pop	ar3
;	/home/user/contiki/core/net/mac/contikimac.c:790: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
00146$:
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	pop	ar3
	jb	acc.7,00146$
;	/home/user/contiki/core/net/mac/contikimac.c:792: if(!is_broadcast && (NETSTACK_RADIO.receiving_packet() ||
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jz	00358$
	ljmp	00179$
00358$:
	mov	dptr,#(_cc2530_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar7
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar7
	mov	a,r4
	orl	a,r5
	jnz	00156$
;	/home/user/contiki/core/net/mac/contikimac.c:793: NETSTACK_RADIO.pending_packet() ||
	mov	dptr,#(_cc2530_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar7
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar7
	mov	a,r4
	orl	a,r5
	jnz	00156$
;	/home/user/contiki/core/net/mac/contikimac.c:794: NETSTACK_RADIO.channel_clear() == 0)) {
	mov	dptr,#(_cc2530_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar7
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar7
	mov	a,r4
	orl	a,r5
	jz	00361$
	ljmp	00179$
00361$:
00156$:
;	/home/user/contiki/core/net/mac/contikimac.c:796: wt = RTIMER_NOW();
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
;	/home/user/contiki/core/net/mac/contikimac.c:797: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x0A
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:864: return ret;
	pop	ar3
;	/home/user/contiki/core/net/mac/contikimac.c:797: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
00149$:
	push	ar3
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	pop	ar3
	jb	acc.7,00149$
;	/home/user/contiki/core/net/mac/contikimac.c:799: len = NETSTACK_RADIO.read(ackbuf, ACK_LEN);
	push	ar3
	mov	dptr,#(_cc2530_rf_driver + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar3
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	lcall	00363$
	sjmp	00364$
00363$:
	push	ar6
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00364$:
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:800: if(len == ACK_LEN && seqno == ackbuf[ACK_LEN - 1]) {
	cjne	r4,#0x03,00365$
	cjne	r5,#0x00,00365$
	sjmp	00366$
00365$:
	pop	ar3
	sjmp	00153$
00366$:
	pop	ar3
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r1,a
	mov	ar5,@r1
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00153$
;	/home/user/contiki/core/net/mac/contikimac.c:801: got_strobe_ack = 1;
	mov	r7,#0x01
;	/home/user/contiki/core/net/mac/contikimac.c:802: encounter_time = txtime;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	/home/user/contiki/core/net/mac/contikimac.c:803: break;
	sjmp	00161$
00153$:
;	/home/user/contiki/core/net/mac/contikimac.c:806: collisions++;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	inc	@r0
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,sp
	add	a,#0xe9
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
;	/home/user/contiki/core/net/mac/contikimac.c:751: RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + STROBE_TIME); strobes++) {
	ljmp	00179$
00161$:
;	/home/user/contiki/core/net/mac/contikimac.c:813: off();
	push	ar7
	push	ar3
	lcall	_off
	pop	ar3
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:835: contikimac_is_on = contikimac_was_on;
	mov	dptr,#_contikimac_is_on
	mov	a,r3
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:836: we_are_sending = 0;
	mov	dptr,#_we_are_sending
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:841: if(collisions > 0) {
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,@r0
	jz	00167$
;	/home/user/contiki/core/net/mac/contikimac.c:842: ret = MAC_TX_COLLISION;
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00188$
00167$:
;	/home/user/contiki/core/net/mac/contikimac.c:843: } else if(!is_broadcast && !got_strobe_ack) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jnz	00163$
	mov	a,r7
;	/home/user/contiki/core/net/mac/contikimac.c:844: ret = MAC_TX_NOACK;
	jnz	00163$
	mov	r6,#0x02
	mov	r7,a
	sjmp	00188$
00163$:
;	/home/user/contiki/core/net/mac/contikimac.c:846: ret = MAC_TX_OK;
	mov	r6,#0x00
	mov	r7,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:850: if(is_known_receiver && got_strobe_ack) {
00188$:
;	/home/user/contiki/core/net/mac/contikimac.c:856: if(!is_broadcast) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jnz	00173$
;	/home/user/contiki/core/net/mac/contikimac.c:857: if(collisions == 0 && is_receiver_awake == 0) {
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,@r0
	jnz	00173$
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00173$
;	/home/user/contiki/core/net/mac/contikimac.c:858: phase_update(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	push	ar7
	push	ar6
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_phase_update
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
00173$:
;	/home/user/contiki/core/net/mac/contikimac.c:864: return ret;
	mov	dpl,r6
	mov	dph,r7
00181$:
	mov	a,sp
	add	a,#0xE8
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qsend_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -4
;sent                      Allocated to registers r6 r7 
;ret                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:868: qsend_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function qsend_packet
;	-----------------------------------------
_qsend_packet:
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/core/net/mac/contikimac.c:870: int ret = send_packet(sent, ptr, NULL, 0);
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_send_packet
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:871: if(ret != MAC_TX_DEFERRED) {
	cjne	r4,#0x03,00108$
	cjne	r5,#0x00,00108$
	ret
00108$:
;	/home/user/contiki/core/net/mac/contikimac.c:872: mac_call_sent_callback(sent, ptr, ret, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qsend_list'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -11
;buf_list                  Allocated to stack - sp -14
;sent                      Allocated to stack - sp -6
;curr                      Allocated to registers r3 r4 r5 
;next                      Allocated to stack - sp -4
;ret                       Allocated to registers r6 r7 
;is_receiver_awake         Allocated to stack - sp -1
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:877: qsend_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function qsend_list
;	-----------------------------------------
_qsend_list:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x05
;	/home/user/contiki/core/net/mac/contikimac.c:879: struct rdc_buf_list *curr = buf_list;
	mov	sp,a
	add	a,#0xf2
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	/home/user/contiki/core/net/mac/contikimac.c:884: if(curr == NULL) {
	mov	a,r3
	orl	a,r4
	jnz	00102$
;	/home/user/contiki/core/net/mac/contikimac.c:885: return;
	ljmp	00117$
00102$:
;	/home/user/contiki/core/net/mac/contikimac.c:888: if(we_are_receiving_burst) {
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r2
	jz	00104$
;	/home/user/contiki/core/net/mac/contikimac.c:890: queuebuf_to_packetbuf(curr->buf);
	mov	a,#0x03
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_queuebuf_to_packetbuf
;	/home/user/contiki/core/net/mac/contikimac.c:892: mac_call_sent_callback(sent, ptr, MAC_TX_COLLISION, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf1
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
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	/home/user/contiki/core/net/mac/contikimac.c:893: return;
	ljmp	00117$
00104$:
;	/home/user/contiki/core/net/mac/contikimac.c:896: is_receiver_awake = 0;
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/contikimac.c:897: do { /* A loop sending a burst of packets from buf_list */
00114$:
;	/home/user/contiki/core/net/mac/contikimac.c:898: next = list_item_next(curr);
	mov	ar2,r3
	mov	ar6,r4
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	lcall	_list_item_next
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/contikimac.c:901: queuebuf_to_packetbuf(curr->buf);
	mov	a,#0x03
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	lcall	_queuebuf_to_packetbuf
	pop	ar3
	pop	ar4
	pop	ar5
;	/home/user/contiki/core/net/mac/contikimac.c:902: if(next != NULL) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
;	/home/user/contiki/core/net/mac/contikimac.c:903: packetbuf_set_attr(PACKETBUF_ATTR_PENDING, 1);
	push	ar5
	push	ar4
	push	ar3
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x12
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
00106$:
;	/home/user/contiki/core/net/mac/contikimac.c:907: ret = send_packet(sent, ptr, curr, is_receiver_awake);
	push	ar5
	push	ar4
	push	ar3
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xed
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
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_send_packet
	mov	r2,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	mov	ar6,r2
;	/home/user/contiki/core/net/mac/contikimac.c:908: if(ret != MAC_TX_DEFERRED) {
	cjne	r6,#0x03,00143$
	cjne	r7,#0x00,00143$
	sjmp	00108$
00143$:
;	/home/user/contiki/core/net/mac/contikimac.c:909: mac_call_sent_callback(sent, ptr, ret, 1);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xec
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
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00108$:
;	/home/user/contiki/core/net/mac/contikimac.c:912: if(ret == MAC_TX_OK) {
	mov	a,r6
	orl	a,r7
	jnz	00112$
;	/home/user/contiki/core/net/mac/contikimac.c:913: if(next != NULL) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00115$
;	/home/user/contiki/core/net/mac/contikimac.c:915: is_receiver_awake = 1;
	mov	r0,sp
	dec	r0
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:916: curr = next;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	sjmp	00115$
00112$:
;	/home/user/contiki/core/net/mac/contikimac.c:920: next = NULL;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
00115$:
;	/home/user/contiki/core/net/mac/contikimac.c:922: } while(next != NULL);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00146$
	ljmp	00114$
00146$:
00117$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'recv_burst_off'
;------------------------------------------------------------
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:929: recv_burst_off(void *ptr)
;	-----------------------------------------
;	 function recv_burst_off
;	-----------------------------------------
_recv_burst_off:
;	/home/user/contiki/core/net/mac/contikimac.c:931: off();
	lcall	_off
;	/home/user/contiki/core/net/mac/contikimac.c:932: we_are_receiving_burst = 0;
	mov	dptr,#_we_are_receiving_burst
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;chdr                      Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -4
;ct                        Allocated with name '_input_packet_ct_1_483'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:936: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	/home/user/contiki/core/net/mac/contikimac.c:939: if(!we_are_receiving_burst) {
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00102$
;	/home/user/contiki/core/net/mac/contikimac.c:940: off();
	lcall	_off
00102$:
;	/home/user/contiki/core/net/mac/contikimac.c:949: if(packetbuf_totlen() > 0 && NETSTACK_FRAMER.parse() >= 0) {
	lcall	_packetbuf_totlen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00171$
	ljmp	00125$
00171$:
	mov	dptr,#(_framer_802154 + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00172$
	ljmp	00125$
00172$:
;	/home/user/contiki/core/net/mac/contikimac.c:953: chdr = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
;	/home/user/contiki/core/net/mac/contikimac.c:954: if(chdr->id != CONTIKIMAC_ID) {
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	jz	00104$
;	/home/user/contiki/core/net/mac/contikimac.c:956: return;
	ljmp	00125$
00104$:
;	/home/user/contiki/core/net/mac/contikimac.c:958: packetbuf_hdrreduce(sizeof(struct hdr));
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_hdrreduce
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:959: packetbuf_set_datalen(chdr->len);
	inc	r5
	cjne	r5,#0x00,00174$
	inc	r6
00174$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	lcall	_packetbuf_set_datalen
;	/home/user/contiki/core/net/mac/contikimac.c:962: if(packetbuf_datalen() > 0 &&
	lcall	_packetbuf_datalen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00175$
	ljmp	00125$
00175$:
;	/home/user/contiki/core/net/mac/contikimac.c:963: packetbuf_totlen() > 0 &&
	lcall	_packetbuf_totlen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00176$
	ljmp	00125$
00176$:
;	/home/user/contiki/core/net/mac/contikimac.c:965: &rimeaddr_node_addr) ||
;	/home/user/contiki/core/net/mac/contikimac.c:964: (rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00113$
;	/home/user/contiki/core/net/mac/contikimac.c:967: &rimeaddr_null))) {
;	/home/user/contiki/core/net/mac/contikimac.c:966: rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00178$
	ljmp	00125$
00178$:
00113$:
;	/home/user/contiki/core/net/mac/contikimac.c:972: we_are_receiving_burst = packetbuf_attr(PACKETBUF_ATTR_PENDING);
	mov	dpl,#0x12
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_we_are_receiving_burst
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:973: if(we_are_receiving_burst) {
	mov	a,r6
	orl	a,r7
	jz	00106$
;	/home/user/contiki/core/net/mac/contikimac.c:974: on();
	lcall	_on
;	/home/user/contiki/core/net/mac/contikimac.c:977: ctimer_set(&ct, INTER_PACKET_DEADLINE, recv_burst_off, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_recv_burst_off
	push	acc
	mov	a,#(_recv_burst_off >> 8)
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dptr,#_input_packet_ct_1_483
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00137$
00106$:
;	/home/user/contiki/core/net/mac/contikimac.c:979: off();
	lcall	_off
;	/home/user/contiki/core/net/mac/contikimac.c:980: ctimer_stop(&ct);
	mov	dptr,#_input_packet_ct_1_483
	mov	b,#0x00
	lcall	_ctimer_stop
;	/home/user/contiki/core/net/mac/contikimac.c:987: for(i = 0; i < MAX_SEQNOS; ++i) {
00137$:
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00121$:
;	/home/user/contiki/core/net/mac/contikimac.c:988: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == received_seqnos[i].seqno &&
	push	ar6
	push	ar7
	mov	dpl,#0x0D
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_attr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,r4
	add	a,#_received_seqnos
	mov	@r0,a
	mov	a,r5
	addc	a,#(_received_seqnos >> 8)
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r2
	cjne	a,ar7,00180$
	mov	a,r3
	cjne	a,ar6,00180$
	sjmp	00181$
00180$:
	pop	ar7
	pop	ar6
	sjmp	00122$
00181$:
;	/home/user/contiki/core/net/mac/contikimac.c:990: &received_seqnos[i].sender)) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/contikimac.c:989: rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
	mov	dpl,#0x18
	push	ar5
	push	ar4
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jz	00122$
;	/home/user/contiki/core/net/mac/contikimac.c:993: return;
	ljmp	00125$
00122$:
;	/home/user/contiki/core/net/mac/contikimac.c:987: for(i = 0; i < MAX_SEQNOS; ++i) {
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	r6
	cjne	r6,#0x00,00183$
	inc	r7
00183$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00184$
	ljmp	00121$
00184$:
;	/home/user/contiki/core/net/mac/contikimac.c:996: for(i = MAX_SEQNOS - 1; i > 0; --i) {
	mov	r0,sp
	dec	r0
	mov	@r0,#0x0F
	inc	r0
	mov	@r0,#0x00
	mov	r4,#0x2D
	mov	r5,#0x00
00123$:
;	/home/user/contiki/core/net/mac/contikimac.c:997: memcpy(&received_seqnos[i], &received_seqnos[i - 1],
	mov	r0,sp
	dec	r0
	mov	a,@r0
	mov	r3,a
	dec	a
	clr	F0
	mov	b,#0x03
	jnb	acc.7,00185$
	cpl	F0
	cpl	a
	inc	a
00185$:
	mul	ab
	jnb	F0,00186$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00186$:
	add	a,#_received_seqnos
	mov	r2,a
	mov	a,#(_received_seqnos >> 8)
	addc	a,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	mov	a,r4
	add	a,#_received_seqnos
	mov	r6,a
	mov	a,r5
	addc	a,#(_received_seqnos >> 8)
	mov	r7,a
	mov	r3,#0x00
	push	ar5
	push	ar4
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	/home/user/contiki/core/net/mac/contikimac.c:996: for(i = MAX_SEQNOS - 1; i > 0; --i) {
	mov	a,r4
	add	a,#0xFD
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	r0,sp
	dec	r0
	dec	@r0
	cjne	@r0,#0xFF,00187$
	inc	r0
	dec	@r0
00187$:
	mov	r0,sp
	dec	r0
	clr	c
	clr	a
	subb	a,@r0
	clr	a
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00188$
	ljmp	00123$
00188$:
;	/home/user/contiki/core/net/mac/contikimac.c:1000: received_seqnos[0].seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	dptr,#(_received_seqnos + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1002: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/user/contiki/core/net/mac/contikimac.c:1001: rimeaddr_copy(&received_seqnos[0].sender,
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_received_seqnos
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/contikimac.c:1020: NETSTACK_MAC.input();
	mov	dptr,#(_csma_driver + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/contikimac.c:1021: return;
00125$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:1031: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	/home/user/contiki/core/net/mac/contikimac.c:1033: radio_is_on = 0;
	mov	dptr,#_radio_is_on
;	/home/user/contiki/core/net/mac/contikimac.c:1034: PT_INIT(&pt);
	clr	a
	movx	@dptr,a
	mov	dptr,#_pt
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1037: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r6,#_powercycle
	mov	r7,#(_powercycle >> 8)
;	/home/user/contiki/core/net/mac/contikimac.c:1036: rtimer_set(&rt, RTIMER_NOW() + CYCLE_TIME, 1,
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,#0xA1
	add	a,r4
	mov	r4,a
	mov	a,#0x07
	addc	a,r5
	mov	r5,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar6
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	mov	dptr,#_rt
	mov	b,#0x00
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	/home/user/contiki/core/net/mac/contikimac.c:1039: contikimac_is_on = 1;
	mov	dptr,#_contikimac_is_on
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1042: phase_init();
	ljmp	_phase_init
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_on'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:1048: turn_on(void)
;	-----------------------------------------
;	 function turn_on
;	-----------------------------------------
_turn_on:
;	/home/user/contiki/core/net/mac/contikimac.c:1050: if(contikimac_is_on == 0) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	/home/user/contiki/core/net/mac/contikimac.c:1051: contikimac_is_on = 1;
	mov	dptr,#_contikimac_is_on
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1052: contikimac_keep_radio_on = 0;
	mov	dptr,#_contikimac_keep_radio_on
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1054: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r6,#_powercycle
	mov	r7,#(_powercycle >> 8)
;	/home/user/contiki/core/net/mac/contikimac.c:1053: rtimer_set(&rt, RTIMER_NOW() + CYCLE_TIME, 1,
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,#0xA1
	add	a,r4
	mov	r4,a
	mov	a,#0x07
	addc	a,r5
	mov	r5,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar6
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	mov	dptr,#_rt
	mov	b,#0x00
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
00102$:
;	/home/user/contiki/core/net/mac/contikimac.c:1056: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:1060: turn_off(int keep_radio_on)
;	-----------------------------------------
;	 function turn_off
;	-----------------------------------------
_turn_off:
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/core/net/mac/contikimac.c:1062: contikimac_is_on = 0;
	mov	dptr,#_contikimac_is_on
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1063: contikimac_keep_radio_on = keep_radio_on;
	mov	dptr,#_contikimac_keep_radio_on
	mov	a,r6
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1064: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	/home/user/contiki/core/net/mac/contikimac.c:1065: radio_is_on = 1;
	mov	dptr,#_radio_is_on
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1066: return NETSTACK_RADIO.on();
	mov	dptr,#(_cc2530_rf_driver + 0x0010)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
00102$:
;	/home/user/contiki/core/net/mac/contikimac.c:1068: radio_is_on = 0;
	mov	dptr,#_radio_is_on
	clr	a
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/contikimac.c:1069: return NETSTACK_RADIO.off();
	mov	dptr,#(_cc2530_rf_driver + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
;------------------------------------------------------------
;Allocation info for local variables in function 'duty_cycle'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:1074: duty_cycle(void)
;	-----------------------------------------
;	 function duty_cycle
;	-----------------------------------------
_duty_cycle:
;	/home/user/contiki/core/net/mac/contikimac.c:1076: return (1ul * CLOCK_SECOND * CYCLE_TIME) / RTIMER_ARCH_SECOND;
	mov	dptr,#0x000F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'contikimac_debug_print'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/contikimac.c:1091: contikimac_debug_print(void)
;	-----------------------------------------
;	 function contikimac_debug_print
;	-----------------------------------------
_contikimac_debug_print:
;	/home/user/contiki/core/net/mac/contikimac.c:1093: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_contikimac_driver:
	.byte _str_0,(_str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _qsend_packet,(_qsend_packet >> 8)
	.byte _qsend_list,(_qsend_list >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _turn_on,(_turn_on >> 8)
	.byte _turn_off,(_turn_off >> 8)
	.byte _duty_cycle,(_duty_cycle >> 8)
_str_0:
	.ascii "ContikiMAC"
	.db 0x00
	.area XINIT   (CODE)
__xinit__we_are_receiving_burst:
	.byte #0x00,#0x00	;  0
__xinit__contikimac_is_on:
	.db #0x00	; 0
__xinit__contikimac_keep_radio_on:
	.db #0x00	; 0
__xinit__we_are_sending:
	.db #0x00	; 0
__xinit__radio_is_on:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
