                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
                                      4 ; This file was generated Tue Feb 10 10:42:47 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module edm_bcast
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _autostart_processes
                                     13 	.globl _broadcast_send
                                     14 	.globl _broadcast_open
                                     15 	.globl _packetbuf_copyfrom
                                     16 	.globl _packetbuf_dataptr
                                     17 	.globl _leds_invert
                                     18 	.globl _etimer_reset
                                     19 	.globl _etimer_set
                                     20 	.globl _strchr
                                     21 	.globl _ACTIVE
                                     22 	.globl _TX_BYTE
                                     23 	.globl _RX_BYTE
                                     24 	.globl _ERR
                                     25 	.globl _FE
                                     26 	.globl _SLAVE
                                     27 	.globl _RE
                                     28 	.globl _MODE
                                     29 	.globl _T3OVFIF
                                     30 	.globl _T3CH0IF
                                     31 	.globl _T3CH1IF
                                     32 	.globl _T4OVFIF
                                     33 	.globl _T4CH0IF
                                     34 	.globl _T4CH1IF
                                     35 	.globl _OVFIM
                                     36 	.globl _B_0
                                     37 	.globl _B_1
                                     38 	.globl _B_2
                                     39 	.globl _B_3
                                     40 	.globl _B_4
                                     41 	.globl _B_5
                                     42 	.globl _B_6
                                     43 	.globl _B_7
                                     44 	.globl _P2IF
                                     45 	.globl _UTX0IF
                                     46 	.globl _UTX1IF
                                     47 	.globl _P1IF
                                     48 	.globl _WDTIF
                                     49 	.globl _ACC_0
                                     50 	.globl _ACC_1
                                     51 	.globl _ACC_2
                                     52 	.globl _ACC_3
                                     53 	.globl _ACC_4
                                     54 	.globl _ACC_5
                                     55 	.globl _ACC_6
                                     56 	.globl _ACC_7
                                     57 	.globl _P
                                     58 	.globl _F1
                                     59 	.globl _OV
                                     60 	.globl _RS0
                                     61 	.globl _RS1
                                     62 	.globl _F0
                                     63 	.globl _AC
                                     64 	.globl _CY
                                     65 	.globl _DMAIF
                                     66 	.globl _T1IF
                                     67 	.globl _T2IF
                                     68 	.globl _T3IF
                                     69 	.globl _T4IF
                                     70 	.globl _P0IF
                                     71 	.globl _STIF
                                     72 	.globl _DMAIE
                                     73 	.globl _T1IE
                                     74 	.globl _T2IE
                                     75 	.globl _T3IE
                                     76 	.globl _T4IE
                                     77 	.globl _P0IE
                                     78 	.globl _RFERRIE
                                     79 	.globl _ADCIE
                                     80 	.globl _URX0IE
                                     81 	.globl _URX1IE
                                     82 	.globl _ENCIE
                                     83 	.globl _STIE
                                     84 	.globl _EA
                                     85 	.globl _P2_0
                                     86 	.globl _P2_1
                                     87 	.globl _P2_2
                                     88 	.globl _P2_3
                                     89 	.globl _P2_4
                                     90 	.globl _P2_5
                                     91 	.globl _P2_6
                                     92 	.globl _P2_7
                                     93 	.globl _ENCIF_0
                                     94 	.globl _ENCIF_1
                                     95 	.globl _P1_0
                                     96 	.globl _P1_1
                                     97 	.globl _P1_2
                                     98 	.globl _P1_3
                                     99 	.globl _P1_4
                                    100 	.globl _P1_5
                                    101 	.globl _P1_6
                                    102 	.globl _P1_7
                                    103 	.globl _IT0
                                    104 	.globl _RFERRIF
                                    105 	.globl _IT1
                                    106 	.globl _URX0IF
                                    107 	.globl _ADCIF
                                    108 	.globl _URX1IF
                                    109 	.globl _P0_0
                                    110 	.globl _P0_1
                                    111 	.globl _P0_2
                                    112 	.globl _P0_3
                                    113 	.globl _P0_4
                                    114 	.globl _P0_5
                                    115 	.globl _P0_6
                                    116 	.globl _P0_7
                                    117 	.globl _WDCTL
                                    118 	.globl _U1GCR
                                    119 	.globl _U1UCR
                                    120 	.globl _U1BAUD
                                    121 	.globl _U1DBUF
                                    122 	.globl _U1CSR
                                    123 	.globl _U0GCR
                                    124 	.globl _U0UCR
                                    125 	.globl _U0BAUD
                                    126 	.globl _U0DBUF
                                    127 	.globl _U0CSR
                                    128 	.globl _TIMIF
                                    129 	.globl _T4CC1
                                    130 	.globl _T4CCTL1
                                    131 	.globl _T4CC0
                                    132 	.globl _T4CCTL0
                                    133 	.globl _T4CTL
                                    134 	.globl _T4CNT
                                    135 	.globl _T3CC1
                                    136 	.globl _T3CCTL1
                                    137 	.globl _T3CC0
                                    138 	.globl _T3CCTL0
                                    139 	.globl _T3CTL
                                    140 	.globl _T3CNT
                                    141 	.globl _T2MSEL
                                    142 	.globl _T2IRQM
                                    143 	.globl _T2MOVF2
                                    144 	.globl _T2MOVF1
                                    145 	.globl _T2MOVF0
                                    146 	.globl _T2M1
                                    147 	.globl _T2M0
                                    148 	.globl _T2IRQF
                                    149 	.globl _T2EVTCFG
                                    150 	.globl _T2CTRL
                                    151 	.globl _T1STAT
                                    152 	.globl _T1CCTL2
                                    153 	.globl _T1CCTL1
                                    154 	.globl _T1CCTL0
                                    155 	.globl _T1CTL
                                    156 	.globl _T1CNTH
                                    157 	.globl _T1CNTL
                                    158 	.globl _T1CC2H
                                    159 	.globl _T1CC2L
                                    160 	.globl _T1CC1H
                                    161 	.globl _T1CC1L
                                    162 	.globl _T1CC0H
                                    163 	.globl _T1CC0L
                                    164 	.globl _CLKCONSTA
                                    165 	.globl _CLKCONCMD
                                    166 	.globl _SLEEPSTA
                                    167 	.globl _SLEEPCMD
                                    168 	.globl _STLOAD
                                    169 	.globl _ST2
                                    170 	.globl _ST1
                                    171 	.globl _ST0
                                    172 	.globl _RFERRF
                                    173 	.globl _RFIRQF0
                                    174 	.globl _RFST
                                    175 	.globl _RFD
                                    176 	.globl _RFIRQF1
                                    177 	.globl _PSBANK
                                    178 	.globl _FMAP
                                    179 	.globl _MEMCTR
                                    180 	.globl __XPAGE
                                    181 	.globl _MPAGE
                                    182 	.globl _PMUX
                                    183 	.globl _P2DIR
                                    184 	.globl _P1DIR
                                    185 	.globl _P0DIR
                                    186 	.globl _P2INP
                                    187 	.globl _P1INP
                                    188 	.globl _P2SEL
                                    189 	.globl _P1SEL
                                    190 	.globl _P0SEL
                                    191 	.globl _APCFG
                                    192 	.globl _PERCFG
                                    193 	.globl _P0INP
                                    194 	.globl _P2IEN
                                    195 	.globl _P1IEN
                                    196 	.globl _P0IEN
                                    197 	.globl _PICTL
                                    198 	.globl _P2IFG
                                    199 	.globl _P1IFG
                                    200 	.globl _P0IFG
                                    201 	.globl _DMAREQ
                                    202 	.globl _DMAARM
                                    203 	.globl _DMA0CFGH
                                    204 	.globl _DMA0CFGL
                                    205 	.globl _DMA1CFGH
                                    206 	.globl _DMA1CFGL
                                    207 	.globl _DMAIRQ
                                    208 	.globl _ENCCS
                                    209 	.globl _ENCDO
                                    210 	.globl _ENCDI
                                    211 	.globl _RNDH
                                    212 	.globl _RNDL
                                    213 	.globl _ADCH
                                    214 	.globl _ADCL
                                    215 	.globl _ADCCON3
                                    216 	.globl _ADCCON2
                                    217 	.globl _ADCCON1
                                    218 	.globl _B
                                    219 	.globl _IRCON2
                                    220 	.globl _ACC
                                    221 	.globl _PSW
                                    222 	.globl _IRCON
                                    223 	.globl _IP1
                                    224 	.globl _IEN1
                                    225 	.globl _IP0
                                    226 	.globl _IEN0
                                    227 	.globl _P2
                                    228 	.globl _S1CON
                                    229 	.globl _IEN2
                                    230 	.globl _S0CON
                                    231 	.globl _DPS
                                    232 	.globl _P1
                                    233 	.globl _TCON
                                    234 	.globl _PCON
                                    235 	.globl _DPH1
                                    236 	.globl _DPL1
                                    237 	.globl _DPH0
                                    238 	.globl _DPL0
                                    239 	.globl _SP
                                    240 	.globl _P0
                                    241 	.globl _button_blink_process
                                    242 	.globl _X_IEEE_ADDR
                                    243 	.globl _X_INFOPAGE
                                    244 	.globl _X_P2DIR
                                    245 	.globl _X_P1DIR
                                    246 	.globl _X_P0DIR
                                    247 	.globl _X_U1GCR
                                    248 	.globl _X_U1UCR
                                    249 	.globl _X_U1BAUD
                                    250 	.globl _X_U1DBUF
                                    251 	.globl _X_U1CSR
                                    252 	.globl _X_P2INP
                                    253 	.globl _X_P1INP
                                    254 	.globl _X_P2SEL
                                    255 	.globl _X_P1SEL
                                    256 	.globl _X_P0SEL
                                    257 	.globl _X_APCFG
                                    258 	.globl _X_PERCFG
                                    259 	.globl _X_T4CC1
                                    260 	.globl _X_T4CCTL1
                                    261 	.globl _X_T4CC0
                                    262 	.globl _X_T4CCTL0
                                    263 	.globl _X_T4CTL
                                    264 	.globl _X_T4CNT
                                    265 	.globl _X_RFIRQF0
                                    266 	.globl _X_T1CCTL2
                                    267 	.globl _X_T1CCTL1
                                    268 	.globl _X_T1CCTL0
                                    269 	.globl _X_T1CTL
                                    270 	.globl _X_T1CNTH
                                    271 	.globl _X_T1CNTL
                                    272 	.globl _X_RFST
                                    273 	.globl _X_T1CC2H
                                    274 	.globl _X_T1CC2L
                                    275 	.globl _X_T1CC1H
                                    276 	.globl _X_T1CC1L
                                    277 	.globl _X_T1CC0H
                                    278 	.globl _X_T1CC0L
                                    279 	.globl _X_RFD
                                    280 	.globl _X_TIMIF
                                    281 	.globl _X_DMAREQ
                                    282 	.globl _X_DMAARM
                                    283 	.globl _X_DMA0CFGH
                                    284 	.globl _X_DMA0CFGL
                                    285 	.globl _X_DMA1CFGH
                                    286 	.globl _X_DMA1CFGL
                                    287 	.globl _X_DMAIRQ
                                    288 	.globl _X_T3CC1
                                    289 	.globl _X_T3CCTL1
                                    290 	.globl _X_T3CC0
                                    291 	.globl _X_T3CCTL0
                                    292 	.globl _X_T3CTL
                                    293 	.globl _X_T3CNT
                                    294 	.globl _X_WDCTL
                                    295 	.globl _X_MEMCTR
                                    296 	.globl _X_CLKCONCMD
                                    297 	.globl _X_U0GCR
                                    298 	.globl _X_U0UCR
                                    299 	.globl _X_T2MSEL
                                    300 	.globl _X_U0BAUD
                                    301 	.globl _X_U0DBUF
                                    302 	.globl _X_RFERRF
                                    303 	.globl _X_SLEEPCMD
                                    304 	.globl _X_RNDH
                                    305 	.globl _X_RNDL
                                    306 	.globl _X_ADCH
                                    307 	.globl _X_ADCL
                                    308 	.globl _X_ADCCON3
                                    309 	.globl _X_ADCCON2
                                    310 	.globl _X_ADCCON1
                                    311 	.globl _X_ENCCS
                                    312 	.globl _X_ENCDO
                                    313 	.globl _X_ENCDI
                                    314 	.globl _X_T1STAT
                                    315 	.globl _X_PMUX
                                    316 	.globl _X_STLOAD
                                    317 	.globl _X_P2IEN
                                    318 	.globl _X_P0IEN
                                    319 	.globl _X_T2IRQM
                                    320 	.globl _X_T2MOVF2
                                    321 	.globl _X_T2MOVF1
                                    322 	.globl _X_T2MOVF0
                                    323 	.globl _X_T2M1
                                    324 	.globl _X_T2M0
                                    325 	.globl _X_T2IRQF
                                    326 	.globl _X_P2
                                    327 	.globl _X_PSBANK
                                    328 	.globl _X_FMAP
                                    329 	.globl _X_CLKCONSTA
                                    330 	.globl _X_SLEEPSTA
                                    331 	.globl _X_T2EVTCFG
                                    332 	.globl _X_ST2
                                    333 	.globl _X_ST1
                                    334 	.globl _X_ST0
                                    335 	.globl _X_T2CTRL
                                    336 	.globl _X__XPAGE
                                    337 	.globl _X_MPAGE
                                    338 	.globl _X_RFIRQF1
                                    339 	.globl _X_P1
                                    340 	.globl _X_P0INP
                                    341 	.globl _X_P1IEN
                                    342 	.globl _X_PICTL
                                    343 	.globl _X_P2IFG
                                    344 	.globl _X_P1IFG
                                    345 	.globl _X_P0IFG
                                    346 	.globl _X_U0CSR
                                    347 	.globl _X_P0
                                    348 	.globl _USBF5
                                    349 	.globl _USBF4
                                    350 	.globl _USBF3
                                    351 	.globl _USBF2
                                    352 	.globl _USBF1
                                    353 	.globl _USBF0
                                    354 	.globl _USBCNTH
                                    355 	.globl _USBCNTL
                                    356 	.globl _USBCNT0
                                    357 	.globl _USBCSOH
                                    358 	.globl _USBCSOL
                                    359 	.globl _USBMAXO
                                    360 	.globl _USBCSIH
                                    361 	.globl _USBCSIL
                                    362 	.globl _USBCS0
                                    363 	.globl _USBMAXI
                                    364 	.globl _USBCTRL
                                    365 	.globl _USBINDEX
                                    366 	.globl _USBFRMH
                                    367 	.globl _USBFRML
                                    368 	.globl _USBCIE
                                    369 	.globl _USBOIE
                                    370 	.globl _USBIIE
                                    371 	.globl _USBCIF
                                    372 	.globl _USBOIF
                                    373 	.globl _USBIIF
                                    374 	.globl _USBPOW
                                    375 	.globl _USBADDR
                                    376 	.globl _CSPT
                                    377 	.globl _CSPZ
                                    378 	.globl _CSPY
                                    379 	.globl _CSPX
                                    380 	.globl _CSPSTAT
                                    381 	.globl _CSPCTRL
                                    382 	.globl _CSPPROG23
                                    383 	.globl _CSPPROG22
                                    384 	.globl _CSPPROG21
                                    385 	.globl _CSPPROG20
                                    386 	.globl _CSPPROG19
                                    387 	.globl _CSPPROG18
                                    388 	.globl _CSPPROG17
                                    389 	.globl _CSPPROG16
                                    390 	.globl _CSPPROG15
                                    391 	.globl _CSPPROG14
                                    392 	.globl _CSPPROG13
                                    393 	.globl _CSPPROG12
                                    394 	.globl _CSPPROG11
                                    395 	.globl _CSPPROG10
                                    396 	.globl _CSPPROG9
                                    397 	.globl _CSPPROG8
                                    398 	.globl _CSPPROG7
                                    399 	.globl _CSPPROG6
                                    400 	.globl _CSPPROG5
                                    401 	.globl _CSPPROG4
                                    402 	.globl _CSPPROG3
                                    403 	.globl _CSPPROG2
                                    404 	.globl _CSPPROG1
                                    405 	.globl _CSPPROG0
                                    406 	.globl _RFC_OBS_CTRL2
                                    407 	.globl _RFC_OBS_CTRL1
                                    408 	.globl _RFC_OBS_CTRL0
                                    409 	.globl _TXFILTCFG
                                    410 	.globl _PTEST1
                                    411 	.globl _PTEST0
                                    412 	.globl _ATEST
                                    413 	.globl _DACTEST2
                                    414 	.globl _DACTEST1
                                    415 	.globl _DACTEST0
                                    416 	.globl _MDMTEST1
                                    417 	.globl _MDMTEST0
                                    418 	.globl _ADCTEST2
                                    419 	.globl _ADCTEST1
                                    420 	.globl _ADCTEST0
                                    421 	.globl _AGCCTRL3
                                    422 	.globl _AGCCTRL2
                                    423 	.globl _AGCCTRL1
                                    424 	.globl _AGCCTRL0
                                    425 	.globl _FSCAL3
                                    426 	.globl _FSCAL2
                                    427 	.globl _FSCAL1
                                    428 	.globl _FSCAL0
                                    429 	.globl _FSCTRL
                                    430 	.globl _RXCTRL
                                    431 	.globl _FREQEST
                                    432 	.globl _MDMCTRL1
                                    433 	.globl _MDMCTRL0
                                    434 	.globl _RFRND
                                    435 	.globl _RFERRM
                                    436 	.globl _RFIRQM1
                                    437 	.globl _RFIRQM0
                                    438 	.globl _TXLAST_PTR
                                    439 	.globl _TXFIRST_PTR
                                    440 	.globl _RXP1_PTR
                                    441 	.globl _RXLAST_PTR
                                    442 	.globl _RXFIRST_PTR
                                    443 	.globl _TXFIFOCNT
                                    444 	.globl _RXFIFOCNT
                                    445 	.globl _RXFIRST
                                    446 	.globl _RSSISTAT
                                    447 	.globl _RSSI
                                    448 	.globl _CCACTRL1
                                    449 	.globl _CCACTRL0
                                    450 	.globl _FSMCTRL
                                    451 	.globl _FIFOPCTRL
                                    452 	.globl _FSMSTAT1
                                    453 	.globl _FSMSTAT0
                                    454 	.globl _TXCTRL
                                    455 	.globl _TXPOWER
                                    456 	.globl _FREQCTRL
                                    457 	.globl _FREQTUNE
                                    458 	.globl _RXMASKCLR
                                    459 	.globl _RXMASKSET
                                    460 	.globl _RXENABLE
                                    461 	.globl _FRMCTRL1
                                    462 	.globl _FRMCTRL0
                                    463 	.globl _SRCEXTEN2
                                    464 	.globl _SRCEXTEN1
                                    465 	.globl _SRCEXTEN0
                                    466 	.globl _SRCSHORTEN2
                                    467 	.globl _SRCSHORTEN1
                                    468 	.globl _SRCSHORTEN0
                                    469 	.globl _SRCMATCH
                                    470 	.globl _FRMFILT1
                                    471 	.globl _FRMFILT0
                                    472 	.globl _SHORT_ADDR1
                                    473 	.globl _SHORT_ADDR0
                                    474 	.globl _PAN_ID1
                                    475 	.globl _PAN_ID0
                                    476 	.globl _EXT_ADDR7
                                    477 	.globl _EXT_ADDR6
                                    478 	.globl _EXT_ADDR5
                                    479 	.globl _EXT_ADDR4
                                    480 	.globl _EXT_ADDR3
                                    481 	.globl _EXT_ADDR2
                                    482 	.globl _EXT_ADDR1
                                    483 	.globl _EXT_ADDR0
                                    484 	.globl _SRCSHORTPENDEN2
                                    485 	.globl _SRCSHORTPENDEN1
                                    486 	.globl _SRCSHORTPENDEN0
                                    487 	.globl _SRCEXTPENDEN2
                                    488 	.globl _SRCEXTPENDEN1
                                    489 	.globl _SRCEXTPENDEN0
                                    490 	.globl _SRCRESINDEX
                                    491 	.globl _SRCRESMASK2
                                    492 	.globl _SRCRESMASK1
                                    493 	.globl _SRCRESMASK0
                                    494 	.globl _SRC_ADDR_TABLE
                                    495 	.globl _TXFIFO
                                    496 	.globl _RXFIFO
                                    497 	.globl _RFCORE_RAM
                                    498 	.globl _CMPCTL
                                    499 	.globl _OPAMPS
                                    500 	.globl _OPAMPC
                                    501 	.globl _STCV2
                                    502 	.globl _STCV1
                                    503 	.globl _STCV0
                                    504 	.globl _STCS
                                    505 	.globl _STCC
                                    506 	.globl _T1CC4H
                                    507 	.globl _T1CC4L
                                    508 	.globl _T1CC3H
                                    509 	.globl _T1CC3L
                                    510 	.globl _XX_T1CC2H
                                    511 	.globl _XX_T1CC2L
                                    512 	.globl _XX_T1CC1H
                                    513 	.globl _XX_T1CC1L
                                    514 	.globl _XX_T1CC0H
                                    515 	.globl _XX_T1CC0L
                                    516 	.globl _T1CCTL4
                                    517 	.globl _T1CCTL3
                                    518 	.globl _XX_T1CCTL2
                                    519 	.globl _XX_T1CCTL1
                                    520 	.globl _XX_T1CCTL0
                                    521 	.globl _CLD
                                    522 	.globl _IRCTL
                                    523 	.globl _CHIPINFO1
                                    524 	.globl _CHIPINFO0
                                    525 	.globl _FWDATA
                                    526 	.globl _FADDRH
                                    527 	.globl _FADDRL
                                    528 	.globl _FCTL
                                    529 	.globl _IVCTRL
                                    530 	.globl _BATTMON
                                    531 	.globl _SRCRC
                                    532 	.globl _DBGDATA
                                    533 	.globl _TESTREG0
                                    534 	.globl _CHIPID
                                    535 	.globl _CHVER
                                    536 	.globl _OBSSEL5
                                    537 	.globl _OBSSEL4
                                    538 	.globl _OBSSEL3
                                    539 	.globl _OBSSEL2
                                    540 	.globl _OBSSEL1
                                    541 	.globl _OBSSEL0
                                    542 	.globl _I2CIO
                                    543 	.globl _I2CWC
                                    544 	.globl _I2CADDR
                                    545 	.globl _I2CDATA
                                    546 	.globl _I2CSTAT
                                    547 	.globl _I2CCFG
                                    548 	.globl _OPAMPMC
                                    549 	.globl _MONMUX
                                    550 ;--------------------------------------------------------
                                    551 ; special function registers
                                    552 ;--------------------------------------------------------
                                    553 	.area RSEG    (ABS,DATA)
      000000                        554 	.org 0x0000
                           000080   555 _P0	=	0x0080
                           000081   556 _SP	=	0x0081
                           000082   557 _DPL0	=	0x0082
                           000083   558 _DPH0	=	0x0083
                           000084   559 _DPL1	=	0x0084
                           000085   560 _DPH1	=	0x0085
                           000087   561 _PCON	=	0x0087
                           000088   562 _TCON	=	0x0088
                           000090   563 _P1	=	0x0090
                           000092   564 _DPS	=	0x0092
                           000098   565 _S0CON	=	0x0098
                           00009A   566 _IEN2	=	0x009a
                           00009B   567 _S1CON	=	0x009b
                           0000A0   568 _P2	=	0x00a0
                           0000A8   569 _IEN0	=	0x00a8
                           0000A9   570 _IP0	=	0x00a9
                           0000B8   571 _IEN1	=	0x00b8
                           0000B9   572 _IP1	=	0x00b9
                           0000C0   573 _IRCON	=	0x00c0
                           0000D0   574 _PSW	=	0x00d0
                           0000E0   575 _ACC	=	0x00e0
                           0000E8   576 _IRCON2	=	0x00e8
                           0000F0   577 _B	=	0x00f0
                           0000B4   578 _ADCCON1	=	0x00b4
                           0000B5   579 _ADCCON2	=	0x00b5
                           0000B6   580 _ADCCON3	=	0x00b6
                           0000BA   581 _ADCL	=	0x00ba
                           0000BB   582 _ADCH	=	0x00bb
                           0000BC   583 _RNDL	=	0x00bc
                           0000BD   584 _RNDH	=	0x00bd
                           0000B1   585 _ENCDI	=	0x00b1
                           0000B2   586 _ENCDO	=	0x00b2
                           0000B3   587 _ENCCS	=	0x00b3
                           0000D1   588 _DMAIRQ	=	0x00d1
                           0000D2   589 _DMA1CFGL	=	0x00d2
                           0000D3   590 _DMA1CFGH	=	0x00d3
                           0000D4   591 _DMA0CFGL	=	0x00d4
                           0000D5   592 _DMA0CFGH	=	0x00d5
                           0000D6   593 _DMAARM	=	0x00d6
                           0000D7   594 _DMAREQ	=	0x00d7
                           000089   595 _P0IFG	=	0x0089
                           00008A   596 _P1IFG	=	0x008a
                           00008B   597 _P2IFG	=	0x008b
                           00008C   598 _PICTL	=	0x008c
                           0000AB   599 _P0IEN	=	0x00ab
                           00008D   600 _P1IEN	=	0x008d
                           0000AC   601 _P2IEN	=	0x00ac
                           00008F   602 _P0INP	=	0x008f
                           0000F1   603 _PERCFG	=	0x00f1
                           0000F2   604 _APCFG	=	0x00f2
                           0000F3   605 _P0SEL	=	0x00f3
                           0000F4   606 _P1SEL	=	0x00f4
                           0000F5   607 _P2SEL	=	0x00f5
                           0000F6   608 _P1INP	=	0x00f6
                           0000F7   609 _P2INP	=	0x00f7
                           0000FD   610 _P0DIR	=	0x00fd
                           0000FE   611 _P1DIR	=	0x00fe
                           0000FF   612 _P2DIR	=	0x00ff
                           0000AE   613 _PMUX	=	0x00ae
                           000093   614 _MPAGE	=	0x0093
                           000093   615 __XPAGE	=	0x0093
                           0000C7   616 _MEMCTR	=	0x00c7
                           00009F   617 _FMAP	=	0x009f
                           00009F   618 _PSBANK	=	0x009f
                           000091   619 _RFIRQF1	=	0x0091
                           0000D9   620 _RFD	=	0x00d9
                           0000E1   621 _RFST	=	0x00e1
                           0000E9   622 _RFIRQF0	=	0x00e9
                           0000BF   623 _RFERRF	=	0x00bf
                           000095   624 _ST0	=	0x0095
                           000096   625 _ST1	=	0x0096
                           000097   626 _ST2	=	0x0097
                           0000AD   627 _STLOAD	=	0x00ad
                           0000BE   628 _SLEEPCMD	=	0x00be
                           00009D   629 _SLEEPSTA	=	0x009d
                           0000C6   630 _CLKCONCMD	=	0x00c6
                           00009E   631 _CLKCONSTA	=	0x009e
                           0000DA   632 _T1CC0L	=	0x00da
                           0000DB   633 _T1CC0H	=	0x00db
                           0000DC   634 _T1CC1L	=	0x00dc
                           0000DD   635 _T1CC1H	=	0x00dd
                           0000DE   636 _T1CC2L	=	0x00de
                           0000DF   637 _T1CC2H	=	0x00df
                           0000E2   638 _T1CNTL	=	0x00e2
                           0000E3   639 _T1CNTH	=	0x00e3
                           0000E4   640 _T1CTL	=	0x00e4
                           0000E5   641 _T1CCTL0	=	0x00e5
                           0000E6   642 _T1CCTL1	=	0x00e6
                           0000E7   643 _T1CCTL2	=	0x00e7
                           0000AF   644 _T1STAT	=	0x00af
                           000094   645 _T2CTRL	=	0x0094
                           00009C   646 _T2EVTCFG	=	0x009c
                           0000A1   647 _T2IRQF	=	0x00a1
                           0000A2   648 _T2M0	=	0x00a2
                           0000A3   649 _T2M1	=	0x00a3
                           0000A4   650 _T2MOVF0	=	0x00a4
                           0000A5   651 _T2MOVF1	=	0x00a5
                           0000A6   652 _T2MOVF2	=	0x00a6
                           0000A7   653 _T2IRQM	=	0x00a7
                           0000C3   654 _T2MSEL	=	0x00c3
                           0000CA   655 _T3CNT	=	0x00ca
                           0000CB   656 _T3CTL	=	0x00cb
                           0000CC   657 _T3CCTL0	=	0x00cc
                           0000CD   658 _T3CC0	=	0x00cd
                           0000CE   659 _T3CCTL1	=	0x00ce
                           0000CF   660 _T3CC1	=	0x00cf
                           0000EA   661 _T4CNT	=	0x00ea
                           0000EB   662 _T4CTL	=	0x00eb
                           0000EC   663 _T4CCTL0	=	0x00ec
                           0000ED   664 _T4CC0	=	0x00ed
                           0000EE   665 _T4CCTL1	=	0x00ee
                           0000EF   666 _T4CC1	=	0x00ef
                           0000D8   667 _TIMIF	=	0x00d8
                           000086   668 _U0CSR	=	0x0086
                           0000C1   669 _U0DBUF	=	0x00c1
                           0000C2   670 _U0BAUD	=	0x00c2
                           0000C4   671 _U0UCR	=	0x00c4
                           0000C5   672 _U0GCR	=	0x00c5
                           0000F8   673 _U1CSR	=	0x00f8
                           0000F9   674 _U1DBUF	=	0x00f9
                           0000FA   675 _U1BAUD	=	0x00fa
                           0000FB   676 _U1UCR	=	0x00fb
                           0000FC   677 _U1GCR	=	0x00fc
                           0000C9   678 _WDCTL	=	0x00c9
                                    679 ;--------------------------------------------------------
                                    680 ; special function bits
                                    681 ;--------------------------------------------------------
                                    682 	.area RSEG    (ABS,DATA)
      000000                        683 	.org 0x0000
                           000087   684 _P0_7	=	0x0087
                           000086   685 _P0_6	=	0x0086
                           000085   686 _P0_5	=	0x0085
                           000084   687 _P0_4	=	0x0084
                           000083   688 _P0_3	=	0x0083
                           000082   689 _P0_2	=	0x0082
                           000081   690 _P0_1	=	0x0081
                           000080   691 _P0_0	=	0x0080
                           00008F   692 _URX1IF	=	0x008f
                           00008D   693 _ADCIF	=	0x008d
                           00008B   694 _URX0IF	=	0x008b
                           00008A   695 _IT1	=	0x008a
                           000089   696 _RFERRIF	=	0x0089
                           000088   697 _IT0	=	0x0088
                           000097   698 _P1_7	=	0x0097
                           000096   699 _P1_6	=	0x0096
                           000095   700 _P1_5	=	0x0095
                           000094   701 _P1_4	=	0x0094
                           000093   702 _P1_3	=	0x0093
                           000092   703 _P1_2	=	0x0092
                           000091   704 _P1_1	=	0x0091
                           000090   705 _P1_0	=	0x0090
                           000099   706 _ENCIF_1	=	0x0099
                           000098   707 _ENCIF_0	=	0x0098
                           0000A7   708 _P2_7	=	0x00a7
                           0000A6   709 _P2_6	=	0x00a6
                           0000A5   710 _P2_5	=	0x00a5
                           0000A4   711 _P2_4	=	0x00a4
                           0000A3   712 _P2_3	=	0x00a3
                           0000A2   713 _P2_2	=	0x00a2
                           0000A1   714 _P2_1	=	0x00a1
                           0000A0   715 _P2_0	=	0x00a0
                           0000AF   716 _EA	=	0x00af
                           0000AD   717 _STIE	=	0x00ad
                           0000AC   718 _ENCIE	=	0x00ac
                           0000AB   719 _URX1IE	=	0x00ab
                           0000AA   720 _URX0IE	=	0x00aa
                           0000A9   721 _ADCIE	=	0x00a9
                           0000A8   722 _RFERRIE	=	0x00a8
                           0000BD   723 _P0IE	=	0x00bd
                           0000BC   724 _T4IE	=	0x00bc
                           0000BB   725 _T3IE	=	0x00bb
                           0000BA   726 _T2IE	=	0x00ba
                           0000B9   727 _T1IE	=	0x00b9
                           0000B8   728 _DMAIE	=	0x00b8
                           0000C7   729 _STIF	=	0x00c7
                           0000C5   730 _P0IF	=	0x00c5
                           0000C4   731 _T4IF	=	0x00c4
                           0000C3   732 _T3IF	=	0x00c3
                           0000C2   733 _T2IF	=	0x00c2
                           0000C1   734 _T1IF	=	0x00c1
                           0000C0   735 _DMAIF	=	0x00c0
                           0000D7   736 _CY	=	0x00d7
                           0000D6   737 _AC	=	0x00d6
                           0000D5   738 _F0	=	0x00d5
                           0000D4   739 _RS1	=	0x00d4
                           0000D3   740 _RS0	=	0x00d3
                           0000D2   741 _OV	=	0x00d2
                           0000D1   742 _F1	=	0x00d1
                           0000D0   743 _P	=	0x00d0
                           0000E7   744 _ACC_7	=	0x00e7
                           0000E6   745 _ACC_6	=	0x00e6
                           0000E5   746 _ACC_5	=	0x00e5
                           0000E4   747 _ACC_4	=	0x00e4
                           0000E3   748 _ACC_3	=	0x00e3
                           0000E2   749 _ACC_2	=	0x00e2
                           0000E1   750 _ACC_1	=	0x00e1
                           0000E0   751 _ACC_0	=	0x00e0
                           0000EC   752 _WDTIF	=	0x00ec
                           0000EB   753 _P1IF	=	0x00eb
                           0000EA   754 _UTX1IF	=	0x00ea
                           0000E9   755 _UTX0IF	=	0x00e9
                           0000E8   756 _P2IF	=	0x00e8
                           0000F7   757 _B_7	=	0x00f7
                           0000F6   758 _B_6	=	0x00f6
                           0000F5   759 _B_5	=	0x00f5
                           0000F4   760 _B_4	=	0x00f4
                           0000F3   761 _B_3	=	0x00f3
                           0000F2   762 _B_2	=	0x00f2
                           0000F1   763 _B_1	=	0x00f1
                           0000F0   764 _B_0	=	0x00f0
                           0000DE   765 _OVFIM	=	0x00de
                           0000DD   766 _T4CH1IF	=	0x00dd
                           0000DC   767 _T4CH0IF	=	0x00dc
                           0000DB   768 _T4OVFIF	=	0x00db
                           0000DA   769 _T3CH1IF	=	0x00da
                           0000D9   770 _T3CH0IF	=	0x00d9
                           0000D8   771 _T3OVFIF	=	0x00d8
                           0000FF   772 _MODE	=	0x00ff
                           0000FE   773 _RE	=	0x00fe
                           0000FD   774 _SLAVE	=	0x00fd
                           0000FC   775 _FE	=	0x00fc
                           0000FB   776 _ERR	=	0x00fb
                           0000FA   777 _RX_BYTE	=	0x00fa
                           0000F9   778 _TX_BYTE	=	0x00f9
                           0000F8   779 _ACTIVE	=	0x00f8
                                    780 ;--------------------------------------------------------
                                    781 ; overlayable register banks
                                    782 ;--------------------------------------------------------
                                    783 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        784 	.ds 8
                                    785 ;--------------------------------------------------------
                                    786 ; internal ram data
                                    787 ;--------------------------------------------------------
                                    788 	.area DSEG    (DATA)
                                    789 ;--------------------------------------------------------
                                    790 ; overlayable items in internal ram 
                                    791 ;--------------------------------------------------------
                                    792 ;--------------------------------------------------------
                                    793 ; indirectly addressable internal ram data
                                    794 ;--------------------------------------------------------
                                    795 	.area ISEG    (DATA)
                                    796 ;--------------------------------------------------------
                                    797 ; absolute internal ram data
                                    798 ;--------------------------------------------------------
                                    799 	.area IABS    (ABS,DATA)
                                    800 	.area IABS    (ABS,DATA)
                                    801 ;--------------------------------------------------------
                                    802 ; bit data
                                    803 ;--------------------------------------------------------
                                    804 	.area BSEG    (BIT)
                                    805 ;--------------------------------------------------------
                                    806 ; paged external ram data
                                    807 ;--------------------------------------------------------
                                    808 	.area PSEG    (PAG,XDATA)
                                    809 ;--------------------------------------------------------
                                    810 ; external ram data
                                    811 ;--------------------------------------------------------
                                    812 	.area XSEG    (XDATA)
                           0061A6   813 _MONMUX	=	0x61a6
                           0061A6   814 _OPAMPMC	=	0x61a6
                           006230   815 _I2CCFG	=	0x6230
                           006231   816 _I2CSTAT	=	0x6231
                           006232   817 _I2CDATA	=	0x6232
                           006233   818 _I2CADDR	=	0x6233
                           006234   819 _I2CWC	=	0x6234
                           006235   820 _I2CIO	=	0x6235
                           006243   821 _OBSSEL0	=	0x6243
                           006244   822 _OBSSEL1	=	0x6244
                           006245   823 _OBSSEL2	=	0x6245
                           006246   824 _OBSSEL3	=	0x6246
                           006247   825 _OBSSEL4	=	0x6247
                           006248   826 _OBSSEL5	=	0x6248
                           006249   827 _CHVER	=	0x6249
                           00624A   828 _CHIPID	=	0x624a
                           00624B   829 _TESTREG0	=	0x624b
                           006260   830 _DBGDATA	=	0x6260
                           006262   831 _SRCRC	=	0x6262
                           006264   832 _BATTMON	=	0x6264
                           006265   833 _IVCTRL	=	0x6265
                           006270   834 _FCTL	=	0x6270
                           006271   835 _FADDRL	=	0x6271
                           006272   836 _FADDRH	=	0x6272
                           006273   837 _FWDATA	=	0x6273
                           006276   838 _CHIPINFO0	=	0x6276
                           006277   839 _CHIPINFO1	=	0x6277
                           006281   840 _IRCTL	=	0x6281
                           006290   841 _CLD	=	0x6290
                           0062A0   842 _XX_T1CCTL0	=	0x62a0
                           0062A1   843 _XX_T1CCTL1	=	0x62a1
                           0062A2   844 _XX_T1CCTL2	=	0x62a2
                           0062A3   845 _T1CCTL3	=	0x62a3
                           0062A4   846 _T1CCTL4	=	0x62a4
                           0062A6   847 _XX_T1CC0L	=	0x62a6
                           0062A7   848 _XX_T1CC0H	=	0x62a7
                           0062A8   849 _XX_T1CC1L	=	0x62a8
                           0062A9   850 _XX_T1CC1H	=	0x62a9
                           0062AA   851 _XX_T1CC2L	=	0x62aa
                           0062AB   852 _XX_T1CC2H	=	0x62ab
                           0062AC   853 _T1CC3L	=	0x62ac
                           0062AD   854 _T1CC3H	=	0x62ad
                           0062AE   855 _T1CC4L	=	0x62ae
                           0062AF   856 _T1CC4H	=	0x62af
                           0062B0   857 _STCC	=	0x62b0
                           0062B1   858 _STCS	=	0x62b1
                           0062B2   859 _STCV0	=	0x62b2
                           0062B3   860 _STCV1	=	0x62b3
                           0062B4   861 _STCV2	=	0x62b4
                           0062C0   862 _OPAMPC	=	0x62c0
                           0062C1   863 _OPAMPS	=	0x62c1
                           0062D0   864 _CMPCTL	=	0x62d0
                           006000   865 _RFCORE_RAM	=	0x6000
                           006000   866 _RXFIFO	=	0x6000
                           006080   867 _TXFIFO	=	0x6080
                           006100   868 _SRC_ADDR_TABLE	=	0x6100
                           006160   869 _SRCRESMASK0	=	0x6160
                           006161   870 _SRCRESMASK1	=	0x6161
                           006162   871 _SRCRESMASK2	=	0x6162
                           006163   872 _SRCRESINDEX	=	0x6163
                           006164   873 _SRCEXTPENDEN0	=	0x6164
                           006165   874 _SRCEXTPENDEN1	=	0x6165
                           006166   875 _SRCEXTPENDEN2	=	0x6166
                           006167   876 _SRCSHORTPENDEN0	=	0x6167
                           006168   877 _SRCSHORTPENDEN1	=	0x6168
                           006169   878 _SRCSHORTPENDEN2	=	0x6169
                           00616A   879 _EXT_ADDR0	=	0x616a
                           00616B   880 _EXT_ADDR1	=	0x616b
                           00616C   881 _EXT_ADDR2	=	0x616c
                           00616D   882 _EXT_ADDR3	=	0x616d
                           00616E   883 _EXT_ADDR4	=	0x616e
                           00616F   884 _EXT_ADDR5	=	0x616f
                           006170   885 _EXT_ADDR6	=	0x6170
                           006171   886 _EXT_ADDR7	=	0x6171
                           006172   887 _PAN_ID0	=	0x6172
                           006173   888 _PAN_ID1	=	0x6173
                           006174   889 _SHORT_ADDR0	=	0x6174
                           006175   890 _SHORT_ADDR1	=	0x6175
                           006180   891 _FRMFILT0	=	0x6180
                           006181   892 _FRMFILT1	=	0x6181
                           006182   893 _SRCMATCH	=	0x6182
                           006183   894 _SRCSHORTEN0	=	0x6183
                           006184   895 _SRCSHORTEN1	=	0x6184
                           006185   896 _SRCSHORTEN2	=	0x6185
                           006186   897 _SRCEXTEN0	=	0x6186
                           006187   898 _SRCEXTEN1	=	0x6187
                           006188   899 _SRCEXTEN2	=	0x6188
                           006189   900 _FRMCTRL0	=	0x6189
                           00618A   901 _FRMCTRL1	=	0x618a
                           00618B   902 _RXENABLE	=	0x618b
                           00618C   903 _RXMASKSET	=	0x618c
                           00618D   904 _RXMASKCLR	=	0x618d
                           00618E   905 _FREQTUNE	=	0x618e
                           00618F   906 _FREQCTRL	=	0x618f
                           006190   907 _TXPOWER	=	0x6190
                           006191   908 _TXCTRL	=	0x6191
                           006192   909 _FSMSTAT0	=	0x6192
                           006193   910 _FSMSTAT1	=	0x6193
                           006194   911 _FIFOPCTRL	=	0x6194
                           006195   912 _FSMCTRL	=	0x6195
                           006196   913 _CCACTRL0	=	0x6196
                           006197   914 _CCACTRL1	=	0x6197
                           006198   915 _RSSI	=	0x6198
                           006199   916 _RSSISTAT	=	0x6199
                           00619A   917 _RXFIRST	=	0x619a
                           00619B   918 _RXFIFOCNT	=	0x619b
                           00619C   919 _TXFIFOCNT	=	0x619c
                           00619D   920 _RXFIRST_PTR	=	0x619d
                           00619E   921 _RXLAST_PTR	=	0x619e
                           00619F   922 _RXP1_PTR	=	0x619f
                           0061A1   923 _TXFIRST_PTR	=	0x61a1
                           0061A2   924 _TXLAST_PTR	=	0x61a2
                           0061A3   925 _RFIRQM0	=	0x61a3
                           0061A4   926 _RFIRQM1	=	0x61a4
                           0061A5   927 _RFERRM	=	0x61a5
                           0061A7   928 _RFRND	=	0x61a7
                           0061A8   929 _MDMCTRL0	=	0x61a8
                           0061A9   930 _MDMCTRL1	=	0x61a9
                           0061AA   931 _FREQEST	=	0x61aa
                           0061AB   932 _RXCTRL	=	0x61ab
                           0061AC   933 _FSCTRL	=	0x61ac
                           0061AD   934 _FSCAL0	=	0x61ad
                           0061AE   935 _FSCAL1	=	0x61ae
                           0061AF   936 _FSCAL2	=	0x61af
                           0061B0   937 _FSCAL3	=	0x61b0
                           0061B1   938 _AGCCTRL0	=	0x61b1
                           0061B2   939 _AGCCTRL1	=	0x61b2
                           0061B3   940 _AGCCTRL2	=	0x61b3
                           0061B4   941 _AGCCTRL3	=	0x61b4
                           0061B5   942 _ADCTEST0	=	0x61b5
                           0061B6   943 _ADCTEST1	=	0x61b6
                           0061B7   944 _ADCTEST2	=	0x61b7
                           0061B8   945 _MDMTEST0	=	0x61b8
                           0061B9   946 _MDMTEST1	=	0x61b9
                           0061BA   947 _DACTEST0	=	0x61ba
                           0061BB   948 _DACTEST1	=	0x61bb
                           0061BC   949 _DACTEST2	=	0x61bc
                           0061BD   950 _ATEST	=	0x61bd
                           0061BE   951 _PTEST0	=	0x61be
                           0061BF   952 _PTEST1	=	0x61bf
                           0061FA   953 _TXFILTCFG	=	0x61fa
                           0061EB   954 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   955 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   956 _RFC_OBS_CTRL2	=	0x61ed
                           0061C0   957 _CSPPROG0	=	0x61c0
                           0061C1   958 _CSPPROG1	=	0x61c1
                           0061C2   959 _CSPPROG2	=	0x61c2
                           0061C3   960 _CSPPROG3	=	0x61c3
                           0061C4   961 _CSPPROG4	=	0x61c4
                           0061C5   962 _CSPPROG5	=	0x61c5
                           0061C6   963 _CSPPROG6	=	0x61c6
                           0061C7   964 _CSPPROG7	=	0x61c7
                           0061C8   965 _CSPPROG8	=	0x61c8
                           0061C9   966 _CSPPROG9	=	0x61c9
                           0061CA   967 _CSPPROG10	=	0x61ca
                           0061CB   968 _CSPPROG11	=	0x61cb
                           0061CC   969 _CSPPROG12	=	0x61cc
                           0061CD   970 _CSPPROG13	=	0x61cd
                           0061CE   971 _CSPPROG14	=	0x61ce
                           0061CF   972 _CSPPROG15	=	0x61cf
                           0061D0   973 _CSPPROG16	=	0x61d0
                           0061D1   974 _CSPPROG17	=	0x61d1
                           0061D2   975 _CSPPROG18	=	0x61d2
                           0061D3   976 _CSPPROG19	=	0x61d3
                           0061D4   977 _CSPPROG20	=	0x61d4
                           0061D5   978 _CSPPROG21	=	0x61d5
                           0061D6   979 _CSPPROG22	=	0x61d6
                           0061D7   980 _CSPPROG23	=	0x61d7
                           0061E0   981 _CSPCTRL	=	0x61e0
                           0061E1   982 _CSPSTAT	=	0x61e1
                           0061E2   983 _CSPX	=	0x61e2
                           0061E3   984 _CSPY	=	0x61e3
                           0061E4   985 _CSPZ	=	0x61e4
                           0061E5   986 _CSPT	=	0x61e5
                           006200   987 _USBADDR	=	0x6200
                           006201   988 _USBPOW	=	0x6201
                           006202   989 _USBIIF	=	0x6202
                           006204   990 _USBOIF	=	0x6204
                           006206   991 _USBCIF	=	0x6206
                           006207   992 _USBIIE	=	0x6207
                           006209   993 _USBOIE	=	0x6209
                           00620B   994 _USBCIE	=	0x620b
                           00620C   995 _USBFRML	=	0x620c
                           00620D   996 _USBFRMH	=	0x620d
                           00620E   997 _USBINDEX	=	0x620e
                           00620F   998 _USBCTRL	=	0x620f
                           006210   999 _USBMAXI	=	0x6210
                           006211  1000 _USBCS0	=	0x6211
                           006211  1001 _USBCSIL	=	0x6211
                           006212  1002 _USBCSIH	=	0x6212
                           006213  1003 _USBMAXO	=	0x6213
                           006214  1004 _USBCSOL	=	0x6214
                           006215  1005 _USBCSOH	=	0x6215
                           006216  1006 _USBCNT0	=	0x6216
                           006216  1007 _USBCNTL	=	0x6216
                           006217  1008 _USBCNTH	=	0x6217
                           006220  1009 _USBF0	=	0x6220
                           006222  1010 _USBF1	=	0x6222
                           006224  1011 _USBF2	=	0x6224
                           006226  1012 _USBF3	=	0x6226
                           006228  1013 _USBF4	=	0x6228
                           00622A  1014 _USBF5	=	0x622a
                           007080  1015 _X_P0	=	0x7080
                           007086  1016 _X_U0CSR	=	0x7086
                           007089  1017 _X_P0IFG	=	0x7089
                           00708A  1018 _X_P1IFG	=	0x708a
                           00708B  1019 _X_P2IFG	=	0x708b
                           00708C  1020 _X_PICTL	=	0x708c
                           00708D  1021 _X_P1IEN	=	0x708d
                           00708F  1022 _X_P0INP	=	0x708f
                           007090  1023 _X_P1	=	0x7090
                           007091  1024 _X_RFIRQF1	=	0x7091
                           007093  1025 _X_MPAGE	=	0x7093
                           007093  1026 _X__XPAGE	=	0x7093
                           007094  1027 _X_T2CTRL	=	0x7094
                           007095  1028 _X_ST0	=	0x7095
                           007096  1029 _X_ST1	=	0x7096
                           007097  1030 _X_ST2	=	0x7097
                           00709C  1031 _X_T2EVTCFG	=	0x709c
                           00709D  1032 _X_SLEEPSTA	=	0x709d
                           00709E  1033 _X_CLKCONSTA	=	0x709e
                           00709F  1034 _X_FMAP	=	0x709f
                           00709F  1035 _X_PSBANK	=	0x709f
                           0070A0  1036 _X_P2	=	0x70a0
                           0070A1  1037 _X_T2IRQF	=	0x70a1
                           0070A2  1038 _X_T2M0	=	0x70a2
                           0070A3  1039 _X_T2M1	=	0x70a3
                           0070A4  1040 _X_T2MOVF0	=	0x70a4
                           0070A5  1041 _X_T2MOVF1	=	0x70a5
                           0070A6  1042 _X_T2MOVF2	=	0x70a6
                           0070A7  1043 _X_T2IRQM	=	0x70a7
                           0070AB  1044 _X_P0IEN	=	0x70ab
                           0070AC  1045 _X_P2IEN	=	0x70ac
                           0070AD  1046 _X_STLOAD	=	0x70ad
                           0070AE  1047 _X_PMUX	=	0x70ae
                           0070AF  1048 _X_T1STAT	=	0x70af
                           0070B1  1049 _X_ENCDI	=	0x70b1
                           0070B2  1050 _X_ENCDO	=	0x70b2
                           0070B3  1051 _X_ENCCS	=	0x70b3
                           0070B4  1052 _X_ADCCON1	=	0x70b4
                           0070B5  1053 _X_ADCCON2	=	0x70b5
                           0070B6  1054 _X_ADCCON3	=	0x70b6
                           0070BA  1055 _X_ADCL	=	0x70ba
                           0070BB  1056 _X_ADCH	=	0x70bb
                           0070BC  1057 _X_RNDL	=	0x70bc
                           0070BD  1058 _X_RNDH	=	0x70bd
                           0070BE  1059 _X_SLEEPCMD	=	0x70be
                           0070BF  1060 _X_RFERRF	=	0x70bf
                           0070C1  1061 _X_U0DBUF	=	0x70c1
                           0070C2  1062 _X_U0BAUD	=	0x70c2
                           0070C3  1063 _X_T2MSEL	=	0x70c3
                           0070C4  1064 _X_U0UCR	=	0x70c4
                           0070C5  1065 _X_U0GCR	=	0x70c5
                           0070C6  1066 _X_CLKCONCMD	=	0x70c6
                           0070C7  1067 _X_MEMCTR	=	0x70c7
                           0070C9  1068 _X_WDCTL	=	0x70c9
                           0070CA  1069 _X_T3CNT	=	0x70ca
                           0070CB  1070 _X_T3CTL	=	0x70cb
                           0070CC  1071 _X_T3CCTL0	=	0x70cc
                           0070CD  1072 _X_T3CC0	=	0x70cd
                           0070CE  1073 _X_T3CCTL1	=	0x70ce
                           0070CF  1074 _X_T3CC1	=	0x70cf
                           0070D1  1075 _X_DMAIRQ	=	0x70d1
                           0070D2  1076 _X_DMA1CFGL	=	0x70d2
                           0070D3  1077 _X_DMA1CFGH	=	0x70d3
                           0070D4  1078 _X_DMA0CFGL	=	0x70d4
                           0070D5  1079 _X_DMA0CFGH	=	0x70d5
                           0070D6  1080 _X_DMAARM	=	0x70d6
                           0070D7  1081 _X_DMAREQ	=	0x70d7
                           0070D8  1082 _X_TIMIF	=	0x70d8
                           0070D9  1083 _X_RFD	=	0x70d9
                           0070DA  1084 _X_T1CC0L	=	0x70da
                           0070DB  1085 _X_T1CC0H	=	0x70db
                           0070DC  1086 _X_T1CC1L	=	0x70dc
                           0070DD  1087 _X_T1CC1H	=	0x70dd
                           0070DE  1088 _X_T1CC2L	=	0x70de
                           0070DF  1089 _X_T1CC2H	=	0x70df
                           0070E1  1090 _X_RFST	=	0x70e1
                           0070E2  1091 _X_T1CNTL	=	0x70e2
                           0070E3  1092 _X_T1CNTH	=	0x70e3
                           0070E4  1093 _X_T1CTL	=	0x70e4
                           0070E5  1094 _X_T1CCTL0	=	0x70e5
                           0070E6  1095 _X_T1CCTL1	=	0x70e6
                           0070E7  1096 _X_T1CCTL2	=	0x70e7
                           0070E9  1097 _X_RFIRQF0	=	0x70e9
                           0070EA  1098 _X_T4CNT	=	0x70ea
                           0070EB  1099 _X_T4CTL	=	0x70eb
                           0070EC  1100 _X_T4CCTL0	=	0x70ec
                           0070ED  1101 _X_T4CC0	=	0x70ed
                           0070EE  1102 _X_T4CCTL1	=	0x70ee
                           0070EF  1103 _X_T4CC1	=	0x70ef
                           0070F1  1104 _X_PERCFG	=	0x70f1
                           0070F2  1105 _X_APCFG	=	0x70f2
                           0070F3  1106 _X_P0SEL	=	0x70f3
                           0070F4  1107 _X_P1SEL	=	0x70f4
                           0070F5  1108 _X_P2SEL	=	0x70f5
                           0070F6  1109 _X_P1INP	=	0x70f6
                           0070F7  1110 _X_P2INP	=	0x70f7
                           0070F8  1111 _X_U1CSR	=	0x70f8
                           0070F9  1112 _X_U1DBUF	=	0x70f9
                           0070FA  1113 _X_U1BAUD	=	0x70fa
                           0070FB  1114 _X_U1UCR	=	0x70fb
                           0070FC  1115 _X_U1GCR	=	0x70fc
                           0070FD  1116 _X_P0DIR	=	0x70fd
                           0070FE  1117 _X_P1DIR	=	0x70fe
                           0070FF  1118 _X_P2DIR	=	0x70ff
                           007800  1119 _X_INFOPAGE	=	0x7800
                           00780C  1120 _X_IEEE_ADDR	=	0x780c
      000004                       1121 _et_blink:
      000004                       1122 	.ds 10
      00000E                       1123 _broadcast:
      00000E                       1124 	.ds 15
                                   1125 ;--------------------------------------------------------
                                   1126 ; absolute external ram data
                                   1127 ;--------------------------------------------------------
                                   1128 	.area XABS    (ABS,XDATA)
                                   1129 ;--------------------------------------------------------
                                   1130 ; external initialized ram data
                                   1131 ;--------------------------------------------------------
                                   1132 	.area XISEG   (XDATA)
      000ABC                       1133 _button_blink_process::
      000ABC                       1134 	.ds 9
                                   1135 	.area HOME    (CODE)
                                   1136 	.area GSINIT0 (CODE)
                                   1137 	.area GSINIT1 (CODE)
                                   1138 	.area GSINIT2 (CODE)
                                   1139 	.area GSINIT3 (CODE)
                                   1140 	.area GSINIT4 (CODE)
                                   1141 	.area GSINIT5 (CODE)
                                   1142 	.area GSINIT  (CODE)
                                   1143 	.area GSFINAL (CODE)
                                   1144 	.area CSEG    (CODE)
                                   1145 ;--------------------------------------------------------
                                   1146 ; global & static initialisations
                                   1147 ;--------------------------------------------------------
                                   1148 	.area HOME    (CODE)
                                   1149 	.area GSINIT  (CODE)
                                   1150 	.area GSFINAL (CODE)
                                   1151 	.area GSINIT  (CODE)
                                   1152 ;--------------------------------------------------------
                                   1153 ; Home
                                   1154 ;--------------------------------------------------------
                                   1155 	.area HOME    (CODE)
                                   1156 	.area HOME    (CODE)
                                   1157 ;--------------------------------------------------------
                                   1158 ; code
                                   1159 ;--------------------------------------------------------
                                   1160 	.area CSEG    (CODE)
                                   1161 ;------------------------------------------------------------
                                   1162 ;Allocation info for local variables in function 'broadcast_recv'
                                   1163 ;------------------------------------------------------------
                                   1164 ;from                      Allocated to stack - sp -4
                                   1165 ;c                         Allocated to registers 
                                   1166 ;data                      Allocated to registers r5 r6 r7 
                                   1167 ;------------------------------------------------------------
                                   1168 ;	edm_bcast.c:27: broadcast_recv(struct broadcast_conn *c, const rimeaddr_t *from)
                                   1169 ;	-----------------------------------------
                                   1170 ;	 function broadcast_recv
                                   1171 ;	-----------------------------------------
      000407                       1172 _broadcast_recv:
                           000007  1173 	ar7 = 0x07
                           000006  1174 	ar6 = 0x06
                           000005  1175 	ar5 = 0x05
                           000004  1176 	ar4 = 0x04
                           000003  1177 	ar3 = 0x03
                           000002  1178 	ar2 = 0x02
                           000001  1179 	ar1 = 0x01
                           000000  1180 	ar0 = 0x00
                                   1181 ;	edm_bcast.c:29: char* data = packetbuf_dataptr();
      000407 12 2C 6A         [24] 1182 	lcall	_packetbuf_dataptr
      00040A AD 82            [24] 1183 	mov	r5,dpl
      00040C AE 83            [24] 1184 	mov	r6,dph
      00040E AF F0            [24] 1185 	mov	r7,b
                                   1186 ;	edm_bcast.c:31: if (strchr (data, '1'))
      000410 C0 07            [24] 1187 	push	ar7
      000412 C0 06            [24] 1188 	push	ar6
      000414 C0 05            [24] 1189 	push	ar5
      000416 74 31            [12] 1190 	mov	a,#0x31
      000418 C0 E0            [24] 1191 	push	acc
      00041A 8D 82            [24] 1192 	mov	dpl,r5
      00041C 8E 83            [24] 1193 	mov	dph,r6
      00041E 8F F0            [24] 1194 	mov	b,r7
      000420 12 49 4E         [24] 1195 	lcall	_strchr
      000423 AA 82            [24] 1196 	mov	r2,dpl
      000425 AB 83            [24] 1197 	mov	r3,dph
      000427 AC F0            [24] 1198 	mov	r4,b
      000429 15 81            [12] 1199 	dec	sp
      00042B D0 05            [24] 1200 	pop	ar5
      00042D D0 06            [24] 1201 	pop	ar6
      00042F D0 07            [24] 1202 	pop	ar7
      000431 EA               [12] 1203 	mov	a,r2
      000432 4B               [12] 1204 	orl	a,r3
      000433 60 12            [24] 1205 	jz	00102$
                                   1206 ;	edm_bcast.c:32: leds_invert(1);
      000435 75 82 01         [24] 1207 	mov	dpl,#0x01
      000438 C0 07            [24] 1208 	push	ar7
      00043A C0 06            [24] 1209 	push	ar6
      00043C C0 05            [24] 1210 	push	ar5
      00043E 12 07 39         [24] 1211 	lcall	_leds_invert
      000441 D0 05            [24] 1212 	pop	ar5
      000443 D0 06            [24] 1213 	pop	ar6
      000445 D0 07            [24] 1214 	pop	ar7
      000447                       1215 00102$:
                                   1216 ;	edm_bcast.c:33: if (strchr (data, '2'))
      000447 C0 07            [24] 1217 	push	ar7
      000449 C0 06            [24] 1218 	push	ar6
      00044B C0 05            [24] 1219 	push	ar5
      00044D 74 32            [12] 1220 	mov	a,#0x32
      00044F C0 E0            [24] 1221 	push	acc
      000451 8D 82            [24] 1222 	mov	dpl,r5
      000453 8E 83            [24] 1223 	mov	dph,r6
      000455 8F F0            [24] 1224 	mov	b,r7
      000457 12 49 4E         [24] 1225 	lcall	_strchr
      00045A AA 82            [24] 1226 	mov	r2,dpl
      00045C AB 83            [24] 1227 	mov	r3,dph
      00045E AC F0            [24] 1228 	mov	r4,b
      000460 15 81            [12] 1229 	dec	sp
      000462 D0 05            [24] 1230 	pop	ar5
      000464 D0 06            [24] 1231 	pop	ar6
      000466 D0 07            [24] 1232 	pop	ar7
      000468 EA               [12] 1233 	mov	a,r2
      000469 4B               [12] 1234 	orl	a,r3
      00046A 60 12            [24] 1235 	jz	00104$
                                   1236 ;	edm_bcast.c:34: leds_invert(2);
      00046C 75 82 02         [24] 1237 	mov	dpl,#0x02
      00046F C0 07            [24] 1238 	push	ar7
      000471 C0 06            [24] 1239 	push	ar6
      000473 C0 05            [24] 1240 	push	ar5
      000475 12 07 39         [24] 1241 	lcall	_leds_invert
      000478 D0 05            [24] 1242 	pop	ar5
      00047A D0 06            [24] 1243 	pop	ar6
      00047C D0 07            [24] 1244 	pop	ar7
      00047E                       1245 00104$:
                                   1246 ;	edm_bcast.c:35: if (strchr (data, '3'))
      00047E C0 07            [24] 1247 	push	ar7
      000480 C0 06            [24] 1248 	push	ar6
      000482 C0 05            [24] 1249 	push	ar5
      000484 74 33            [12] 1250 	mov	a,#0x33
      000486 C0 E0            [24] 1251 	push	acc
      000488 8D 82            [24] 1252 	mov	dpl,r5
      00048A 8E 83            [24] 1253 	mov	dph,r6
      00048C 8F F0            [24] 1254 	mov	b,r7
      00048E 12 49 4E         [24] 1255 	lcall	_strchr
      000491 AA 82            [24] 1256 	mov	r2,dpl
      000493 AB 83            [24] 1257 	mov	r3,dph
      000495 AC F0            [24] 1258 	mov	r4,b
      000497 15 81            [12] 1259 	dec	sp
      000499 D0 05            [24] 1260 	pop	ar5
      00049B D0 06            [24] 1261 	pop	ar6
      00049D D0 07            [24] 1262 	pop	ar7
      00049F EA               [12] 1263 	mov	a,r2
      0004A0 4B               [12] 1264 	orl	a,r3
      0004A1 60 12            [24] 1265 	jz	00106$
                                   1266 ;	edm_bcast.c:36: leds_invert(4);
      0004A3 75 82 04         [24] 1267 	mov	dpl,#0x04
      0004A6 C0 07            [24] 1268 	push	ar7
      0004A8 C0 06            [24] 1269 	push	ar6
      0004AA C0 05            [24] 1270 	push	ar5
      0004AC 12 07 39         [24] 1271 	lcall	_leds_invert
      0004AF D0 05            [24] 1272 	pop	ar5
      0004B1 D0 06            [24] 1273 	pop	ar6
      0004B3 D0 07            [24] 1274 	pop	ar7
      0004B5                       1275 00106$:
                                   1276 ;	edm_bcast.c:37: if (strchr (data, '4'))
      0004B5 74 34            [12] 1277 	mov	a,#0x34
      0004B7 C0 E0            [24] 1278 	push	acc
      0004B9 8D 82            [24] 1279 	mov	dpl,r5
      0004BB 8E 83            [24] 1280 	mov	dph,r6
      0004BD 8F F0            [24] 1281 	mov	b,r7
      0004BF 12 49 4E         [24] 1282 	lcall	_strchr
      0004C2 AD 82            [24] 1283 	mov	r5,dpl
      0004C4 AE 83            [24] 1284 	mov	r6,dph
      0004C6 AF F0            [24] 1285 	mov	r7,b
      0004C8 15 81            [12] 1286 	dec	sp
      0004CA ED               [12] 1287 	mov	a,r5
      0004CB 4E               [12] 1288 	orl	a,r6
      0004CC 60 06            [24] 1289 	jz	00109$
                                   1290 ;	edm_bcast.c:38: leds_invert(8);     
      0004CE 75 82 08         [24] 1291 	mov	dpl,#0x08
      0004D1 02 07 39         [24] 1292 	ljmp	_leds_invert
      0004D4                       1293 00109$:
      0004D4 22               [24] 1294 	ret
                                   1295 ;------------------------------------------------------------
                                   1296 ;Allocation info for local variables in function 'process_thread_button_blink_process'
                                   1297 ;------------------------------------------------------------
                                   1298 ;ev                        Allocated to stack - sp -6
                                   1299 ;data                      Allocated to stack - sp -9
                                   1300 ;process_pt                Allocated to registers r5 r6 r7 
                                   1301 ;val1                      Allocated to stack - sp -3
                                   1302 ;val2                      Allocated to stack - sp -2
                                   1303 ;val3                      Allocated to stack - sp -1
                                   1304 ;val4                      Allocated to stack - sp +0
                                   1305 ;PT_YIELD_FLAG             Allocated to registers r4 
                                   1306 ;------------------------------------------------------------
                                   1307 ;	edm_bcast.c:48: PROCESS_THREAD(button_blink_process, ev, data)
                                   1308 ;	-----------------------------------------
                                   1309 ;	 function process_thread_button_blink_process
                                   1310 ;	-----------------------------------------
      0004D5                       1311 _process_thread_button_blink_process:
      0004D5 E5 81            [12] 1312 	mov	a,sp
      0004D7 24 04            [12] 1313 	add	a,#0x04
      0004D9 F5 81            [12] 1314 	mov	sp,a
                                   1315 ;	edm_bcast.c:52: PROCESS_BEGIN();
      0004DB AD 82            [24] 1316 	mov	r5,dpl
      0004DD AE 83            [24] 1317 	mov	r6,dph
      0004DF AF F0            [24] 1318 	mov	r7,b
      0004E1 7C 01            [12] 1319 	mov	r4,#0x01
      0004E3 12 5B 32         [24] 1320 	lcall	__gptrget
      0004E6 FA               [12] 1321 	mov	r2,a
      0004E7 A3               [24] 1322 	inc	dptr
      0004E8 12 5B 32         [24] 1323 	lcall	__gptrget
      0004EB FB               [12] 1324 	mov	r3,a
      0004EC BA 00 05         [24] 1325 	cjne	r2,#0x00,00175$
      0004EF BB 00 02         [24] 1326 	cjne	r3,#0x00,00175$
      0004F2 80 0C            [24] 1327 	sjmp	00101$
      0004F4                       1328 00175$:
      0004F4 BA 45 06         [24] 1329 	cjne	r2,#0x45,00176$
      0004F7 BB 00 03         [24] 1330 	cjne	r3,#0x00,00176$
      0004FA 02 05 8C         [24] 1331 	ljmp	00126$
      0004FD                       1332 00176$:
      0004FD 02 06 AE         [24] 1333 	ljmp	00145$
      000500                       1334 00101$:
                                   1335 ;	edm_bcast.c:54: broadcast_open(&broadcast, 129, &broadcast_call);
      000500 C0 07            [24] 1336 	push	ar7
      000502 C0 06            [24] 1337 	push	ar6
      000504 C0 05            [24] 1338 	push	ar5
      000506 74 F5            [12] 1339 	mov	a,#_broadcast_call
      000508 C0 E0            [24] 1340 	push	acc
      00050A 74 A2            [12] 1341 	mov	a,#(_broadcast_call >> 8)
      00050C C0 E0            [24] 1342 	push	acc
      00050E 74 80            [12] 1343 	mov	a,#0x80
      000510 C0 E0            [24] 1344 	push	acc
      000512 74 81            [12] 1345 	mov	a,#0x81
      000514 C0 E0            [24] 1346 	push	acc
      000516 E4               [12] 1347 	clr	a
      000517 C0 E0            [24] 1348 	push	acc
      000519 90 00 0E         [24] 1349 	mov	dptr,#_broadcast
      00051C 75 F0 00         [24] 1350 	mov	b,#0x00
      00051F 12 30 B8         [24] 1351 	lcall	_broadcast_open
      000522 E5 81            [12] 1352 	mov	a,sp
      000524 24 FB            [12] 1353 	add	a,#0xfb
      000526 F5 81            [12] 1354 	mov	sp,a
                                   1355 ;	edm_bcast.c:55: etimer_set(&et_blink, CLOCK_SECOND);
      000528 74 80            [12] 1356 	mov	a,#0x80
      00052A C0 E0            [24] 1357 	push	acc
      00052C E4               [12] 1358 	clr	a
      00052D C0 E0            [24] 1359 	push	acc
      00052F 90 00 04         [24] 1360 	mov	dptr,#_et_blink
      000532 75 F0 00         [24] 1361 	mov	b,#0x00
      000535 12 0E 8F         [24] 1362 	lcall	_etimer_set
      000538 15 81            [12] 1363 	dec	sp
      00053A 15 81            [12] 1364 	dec	sp
      00053C D0 05            [24] 1365 	pop	ar5
      00053E D0 06            [24] 1366 	pop	ar6
      000540 D0 07            [24] 1367 	pop	ar7
                                   1368 ;	edm_bcast.c:58: BUTTON_FUNC_GPIO(1);
      000542 AB F3            [24] 1369 	mov	r3,_P0SEL
      000544 74 FE            [12] 1370 	mov	a,#0xFE
      000546 5B               [12] 1371 	anl	a,r3
      000547 F5 F3            [12] 1372 	mov	_P0SEL,a
                                   1373 ;	edm_bcast.c:59: BUTTON_FUNC_GPIO(2);
      000549 AB F3            [24] 1374 	mov	r3,_P0SEL
      00054B 74 FD            [12] 1375 	mov	a,#0xFD
      00054D 5B               [12] 1376 	anl	a,r3
      00054E F5 F3            [12] 1377 	mov	_P0SEL,a
                                   1378 ;	edm_bcast.c:60: BUTTON_FUNC_GPIO(3);
      000550 AB F3            [24] 1379 	mov	r3,_P0SEL
      000552 74 FB            [12] 1380 	mov	a,#0xFB
      000554 5B               [12] 1381 	anl	a,r3
      000555 F5 F3            [12] 1382 	mov	_P0SEL,a
                                   1383 ;	edm_bcast.c:61: BUTTON_FUNC_GPIO(4);
      000557 AB F3            [24] 1384 	mov	r3,_P0SEL
      000559 74 F7            [12] 1385 	mov	a,#0xF7
      00055B 5B               [12] 1386 	anl	a,r3
      00055C F5 F3            [12] 1387 	mov	_P0SEL,a
                                   1388 ;	edm_bcast.c:62: BUTTON_DIR_INPUT(1);
      00055E AB FD            [24] 1389 	mov	r3,_P0DIR
      000560 74 FE            [12] 1390 	mov	a,#0xFE
      000562 5B               [12] 1391 	anl	a,r3
      000563 F5 FD            [12] 1392 	mov	_P0DIR,a
                                   1393 ;	edm_bcast.c:63: BUTTON_DIR_INPUT(2);
      000565 AB FD            [24] 1394 	mov	r3,_P0DIR
      000567 74 FD            [12] 1395 	mov	a,#0xFD
      000569 5B               [12] 1396 	anl	a,r3
      00056A F5 FD            [12] 1397 	mov	_P0DIR,a
                                   1398 ;	edm_bcast.c:64: BUTTON_DIR_INPUT(3);
      00056C AB FD            [24] 1399 	mov	r3,_P0DIR
      00056E 74 FB            [12] 1400 	mov	a,#0xFB
      000570 5B               [12] 1401 	anl	a,r3
      000571 F5 FD            [12] 1402 	mov	_P0DIR,a
                                   1403 ;	edm_bcast.c:65: BUTTON_DIR_INPUT(4);
      000573 AB FD            [24] 1404 	mov	r3,_P0DIR
      000575 74 F7            [12] 1405 	mov	a,#0xF7
      000577 5B               [12] 1406 	anl	a,r3
      000578 F5 FD            [12] 1407 	mov	_P0DIR,a
                                   1408 ;	edm_bcast.c:67: while(1) {
      00057A                       1409 00143$:
                                   1410 ;	edm_bcast.c:69: PROCESS_WAIT_EVENT();
      00057A 7C 00            [12] 1411 	mov	r4,#0x00
      00057C 8D 82            [24] 1412 	mov	dpl,r5
      00057E 8E 83            [24] 1413 	mov	dph,r6
      000580 8F F0            [24] 1414 	mov	b,r7
      000582 74 45            [12] 1415 	mov	a,#0x45
      000584 12 25 A1         [24] 1416 	lcall	__gptrput
      000587 A3               [24] 1417 	inc	dptr
      000588 E4               [12] 1418 	clr	a
      000589 12 25 A1         [24] 1419 	lcall	__gptrput
      00058C                       1420 00126$:
      00058C EC               [12] 1421 	mov	a,r4
      00058D 70 06            [24] 1422 	jnz	00130$
      00058F 75 82 01         [24] 1423 	mov	dpl,#0x01
      000592 02 06 C0         [24] 1424 	ljmp	00146$
      000595                       1425 00130$:
                                   1426 ;	edm_bcast.c:71: if(ev == PROCESS_EVENT_TIMER) {
      000595 E5 81            [12] 1427 	mov	a,sp
      000597 24 FA            [12] 1428 	add	a,#0xfa
      000599 F8               [12] 1429 	mov	r0,a
      00059A B6 88 DD         [24] 1430 	cjne	@r0,#0x88,00143$
                                   1431 ;	edm_bcast.c:72: etimer_reset(&et_blink);
      00059D 90 00 04         [24] 1432 	mov	dptr,#_et_blink
      0005A0 75 F0 00         [24] 1433 	mov	b,#0x00
      0005A3 C0 07            [24] 1434 	push	ar7
      0005A5 C0 06            [24] 1435 	push	ar6
      0005A7 C0 05            [24] 1436 	push	ar5
      0005A9 12 0E C3         [24] 1437 	lcall	_etimer_reset
      0005AC D0 05            [24] 1438 	pop	ar5
      0005AE D0 06            [24] 1439 	pop	ar6
      0005B0 D0 07            [24] 1440 	pop	ar7
                                   1441 ;	edm_bcast.c:74: val1 = val2 = val3 = val4 = 1;
      0005B2 A8 81            [24] 1442 	mov	r0,sp
      0005B4 76 01            [12] 1443 	mov	@r0,#0x01
      0005B6 A8 81            [24] 1444 	mov	r0,sp
      0005B8 18               [12] 1445 	dec	r0
      0005B9 76 01            [12] 1446 	mov	@r0,#0x01
      0005BB A8 81            [24] 1447 	mov	r0,sp
      0005BD 18               [12] 1448 	dec	r0
      0005BE 18               [12] 1449 	dec	r0
      0005BF 76 01            [12] 1450 	mov	@r0,#0x01
      0005C1 E5 81            [12] 1451 	mov	a,sp
      0005C3 24 FD            [12] 1452 	add	a,#0xfd
      0005C5 F8               [12] 1453 	mov	r0,a
      0005C6 76 01            [12] 1454 	mov	@r0,#0x01
                                   1455 ;	edm_bcast.c:76: val1 = PORT_READ(0, 0);
      0005C8 E5 81            [12] 1456 	mov	a,sp
      0005CA 24 FD            [12] 1457 	add	a,#0xfd
      0005CC F8               [12] 1458 	mov	r0,a
      0005CD A2 80            [12] 1459 	mov	c,_P0_0
      0005CF E4               [12] 1460 	clr	a
      0005D0 33               [12] 1461 	rlc	a
      0005D1 F6               [12] 1462 	mov	@r0,a
                                   1463 ;	edm_bcast.c:77: val2 = PORT_READ(0, 1);
      0005D2 A8 81            [24] 1464 	mov	r0,sp
      0005D4 18               [12] 1465 	dec	r0
      0005D5 18               [12] 1466 	dec	r0
      0005D6 A2 81            [12] 1467 	mov	c,_P0_1
      0005D8 E4               [12] 1468 	clr	a
      0005D9 33               [12] 1469 	rlc	a
      0005DA F6               [12] 1470 	mov	@r0,a
                                   1471 ;	edm_bcast.c:78: val3 = PORT_READ(0, 2);
      0005DB A8 81            [24] 1472 	mov	r0,sp
      0005DD 18               [12] 1473 	dec	r0
      0005DE A2 82            [12] 1474 	mov	c,_P0_2
      0005E0 E4               [12] 1475 	clr	a
      0005E1 33               [12] 1476 	rlc	a
      0005E2 F6               [12] 1477 	mov	@r0,a
                                   1478 ;	edm_bcast.c:79: val4 = PORT_READ(0, 3);
      0005E3 A8 81            [24] 1479 	mov	r0,sp
      0005E5 A2 83            [12] 1480 	mov	c,_P0_3
      0005E7 E4               [12] 1481 	clr	a
      0005E8 33               [12] 1482 	rlc	a
      0005E9 F6               [12] 1483 	mov	@r0,a
                                   1484 ;	edm_bcast.c:81: if (val1 == 0) {
      0005EA E5 81            [12] 1485 	mov	a,sp
      0005EC 24 FD            [12] 1486 	add	a,#0xfd
      0005EE F8               [12] 1487 	mov	r0,a
      0005EF E6               [12] 1488 	mov	a,@r0
      0005F0 70 29            [24] 1489 	jnz	00133$
                                   1490 ;	edm_bcast.c:83: packetbuf_copyfrom("B1_Pressed", 11);
      0005F2 C0 07            [24] 1491 	push	ar7
      0005F4 C0 06            [24] 1492 	push	ar6
      0005F6 C0 05            [24] 1493 	push	ar5
      0005F8 74 0B            [12] 1494 	mov	a,#0x0B
      0005FA C0 E0            [24] 1495 	push	acc
      0005FC E4               [12] 1496 	clr	a
      0005FD C0 E0            [24] 1497 	push	acc
      0005FF 90 A2 FF         [24] 1498 	mov	dptr,#__str_0
      000602 75 F0 80         [24] 1499 	mov	b,#0x80
      000605 12 28 B3         [24] 1500 	lcall	_packetbuf_copyfrom
      000608 15 81            [12] 1501 	dec	sp
      00060A 15 81            [12] 1502 	dec	sp
                                   1503 ;	edm_bcast.c:84: broadcast_send(&broadcast);
      00060C 90 00 0E         [24] 1504 	mov	dptr,#_broadcast
      00060F 75 F0 00         [24] 1505 	mov	b,#0x00
      000612 12 31 36         [24] 1506 	lcall	_broadcast_send
      000615 D0 05            [24] 1507 	pop	ar5
      000617 D0 06            [24] 1508 	pop	ar6
      000619 D0 07            [24] 1509 	pop	ar7
      00061B                       1510 00133$:
                                   1511 ;	edm_bcast.c:86: if (val2 == 0) {
      00061B A8 81            [24] 1512 	mov	r0,sp
      00061D 18               [12] 1513 	dec	r0
      00061E 18               [12] 1514 	dec	r0
      00061F E6               [12] 1515 	mov	a,@r0
      000620 70 29            [24] 1516 	jnz	00135$
                                   1517 ;	edm_bcast.c:88: packetbuf_copyfrom("B2_Pressed", 11);
      000622 C0 07            [24] 1518 	push	ar7
      000624 C0 06            [24] 1519 	push	ar6
      000626 C0 05            [24] 1520 	push	ar5
      000628 74 0B            [12] 1521 	mov	a,#0x0B
      00062A C0 E0            [24] 1522 	push	acc
      00062C E4               [12] 1523 	clr	a
      00062D C0 E0            [24] 1524 	push	acc
      00062F 90 A3 0A         [24] 1525 	mov	dptr,#__str_1
      000632 75 F0 80         [24] 1526 	mov	b,#0x80
      000635 12 28 B3         [24] 1527 	lcall	_packetbuf_copyfrom
      000638 15 81            [12] 1528 	dec	sp
      00063A 15 81            [12] 1529 	dec	sp
                                   1530 ;	edm_bcast.c:89: broadcast_send(&broadcast);
      00063C 90 00 0E         [24] 1531 	mov	dptr,#_broadcast
      00063F 75 F0 00         [24] 1532 	mov	b,#0x00
      000642 12 31 36         [24] 1533 	lcall	_broadcast_send
      000645 D0 05            [24] 1534 	pop	ar5
      000647 D0 06            [24] 1535 	pop	ar6
      000649 D0 07            [24] 1536 	pop	ar7
      00064B                       1537 00135$:
                                   1538 ;	edm_bcast.c:91: if (val3 == 0)  {
      00064B A8 81            [24] 1539 	mov	r0,sp
      00064D 18               [12] 1540 	dec	r0
      00064E E6               [12] 1541 	mov	a,@r0
      00064F 70 29            [24] 1542 	jnz	00137$
                                   1543 ;	edm_bcast.c:93: packetbuf_copyfrom("B3_Pressed", 11);
      000651 C0 07            [24] 1544 	push	ar7
      000653 C0 06            [24] 1545 	push	ar6
      000655 C0 05            [24] 1546 	push	ar5
      000657 74 0B            [12] 1547 	mov	a,#0x0B
      000659 C0 E0            [24] 1548 	push	acc
      00065B E4               [12] 1549 	clr	a
      00065C C0 E0            [24] 1550 	push	acc
      00065E 90 A3 15         [24] 1551 	mov	dptr,#__str_2
      000661 75 F0 80         [24] 1552 	mov	b,#0x80
      000664 12 28 B3         [24] 1553 	lcall	_packetbuf_copyfrom
      000667 15 81            [12] 1554 	dec	sp
      000669 15 81            [12] 1555 	dec	sp
                                   1556 ;	edm_bcast.c:94: broadcast_send(&broadcast);
      00066B 90 00 0E         [24] 1557 	mov	dptr,#_broadcast
      00066E 75 F0 00         [24] 1558 	mov	b,#0x00
      000671 12 31 36         [24] 1559 	lcall	_broadcast_send
      000674 D0 05            [24] 1560 	pop	ar5
      000676 D0 06            [24] 1561 	pop	ar6
      000678 D0 07            [24] 1562 	pop	ar7
      00067A                       1563 00137$:
                                   1564 ;	edm_bcast.c:96: if (val4 == 0)  {
      00067A A8 81            [24] 1565 	mov	r0,sp
      00067C E6               [12] 1566 	mov	a,@r0
      00067D 60 03            [24] 1567 	jz	00183$
      00067F 02 05 7A         [24] 1568 	ljmp	00143$
      000682                       1569 00183$:
                                   1570 ;	edm_bcast.c:98: packetbuf_copyfrom("B4_Pressed", 11);
      000682 C0 07            [24] 1571 	push	ar7
      000684 C0 06            [24] 1572 	push	ar6
      000686 C0 05            [24] 1573 	push	ar5
      000688 74 0B            [12] 1574 	mov	a,#0x0B
      00068A C0 E0            [24] 1575 	push	acc
      00068C E4               [12] 1576 	clr	a
      00068D C0 E0            [24] 1577 	push	acc
      00068F 90 A3 20         [24] 1578 	mov	dptr,#__str_3
      000692 75 F0 80         [24] 1579 	mov	b,#0x80
      000695 12 28 B3         [24] 1580 	lcall	_packetbuf_copyfrom
      000698 15 81            [12] 1581 	dec	sp
      00069A 15 81            [12] 1582 	dec	sp
                                   1583 ;	edm_bcast.c:99: broadcast_send(&broadcast);
      00069C 90 00 0E         [24] 1584 	mov	dptr,#_broadcast
      00069F 75 F0 00         [24] 1585 	mov	b,#0x00
      0006A2 12 31 36         [24] 1586 	lcall	_broadcast_send
      0006A5 D0 05            [24] 1587 	pop	ar5
      0006A7 D0 06            [24] 1588 	pop	ar6
      0006A9 D0 07            [24] 1589 	pop	ar7
      0006AB 02 05 7A         [24] 1590 	ljmp	00143$
                                   1591 ;	edm_bcast.c:104: PROCESS_END();
      0006AE                       1592 00145$:
      0006AE 8D 82            [24] 1593 	mov	dpl,r5
      0006B0 8E 83            [24] 1594 	mov	dph,r6
      0006B2 8F F0            [24] 1595 	mov	b,r7
      0006B4 E4               [12] 1596 	clr	a
      0006B5 12 25 A1         [24] 1597 	lcall	__gptrput
      0006B8 A3               [24] 1598 	inc	dptr
      0006B9 E4               [12] 1599 	clr	a
      0006BA 12 25 A1         [24] 1600 	lcall	__gptrput
      0006BD 75 82 03         [24] 1601 	mov	dpl,#0x03
      0006C0                       1602 00146$:
      0006C0 E5 81            [12] 1603 	mov	a,sp
      0006C2 24 FC            [12] 1604 	add	a,#0xFC
      0006C4 F5 81            [12] 1605 	mov	sp,a
      0006C6 22               [24] 1606 	ret
                                   1607 	.area CSEG    (CODE)
                                   1608 	.area CONST   (CODE)
      00A2F5                       1609 _broadcast_call:
      00A2F5 07 04                 1610 	.byte _broadcast_recv,(_broadcast_recv >> 8)
      00A2F7 00 00                 1611 	.byte #0x00,#0x00
      00A2F9                       1612 _autostart_processes:
      00A2F9 BC 0A 00              1613 	.byte _button_blink_process,(_button_blink_process >> 8),#0x00
                                   1614 ; generic printIvalPtr
      00A2FC 00 00 00              1615 	.byte #0x00,#0x00,#0x00
      00A2FF                       1616 __str_0:
      00A2FF 42 31 5F 50 72 65 73  1617 	.ascii "B1_Pressed"
             73 65 64
      00A309 00                    1618 	.db 0x00
      00A30A                       1619 __str_1:
      00A30A 42 32 5F 50 72 65 73  1620 	.ascii "B2_Pressed"
             73 65 64
      00A314 00                    1621 	.db 0x00
      00A315                       1622 __str_2:
      00A315 42 33 5F 50 72 65 73  1623 	.ascii "B3_Pressed"
             73 65 64
      00A31F 00                    1624 	.db 0x00
      00A320                       1625 __str_3:
      00A320 42 34 5F 50 72 65 73  1626 	.ascii "B4_Pressed"
             73 65 64
      00A32A 00                    1627 	.db 0x00
                                   1628 	.area XINIT   (CODE)
      00A3EB                       1629 __xinit__button_blink_process:
                                   1630 ; generic printIvalPtr
      00A3EB 00 00 00              1631 	.byte #0x00,#0x00,#0x00
      00A3EE D5 04                 1632 	.byte _process_thread_button_blink_process,(_process_thread_button_blink_process >> 8)
      00A3F0 00 00                 1633 	.byte #0x00,#0x00	; 0
      00A3F2 00                    1634 	.db #0x00	; 0
      00A3F3 00                    1635 	.db #0x00	; 0
                                   1636 	.area CABS    (ABS,CODE)
