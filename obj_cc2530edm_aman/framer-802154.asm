;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
; This file was generated Tue Feb 10 06:19:36 2015
;--------------------------------------------------------
	.module framer_802154
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _framer_802154
	.globl _random_rand
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_datalen
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _frame802154_parse
	.globl _frame802154_create
	.globl _frame802154_hdrlen
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _memset
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_mac_dsn:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_initialized:
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
;Allocation info for local variables in function 'is_broadcast_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -4
;mode                      Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/framer-802154.c:78: is_broadcast_addr(uint8_t mode, uint8_t *addr)
;	-----------------------------------------
;	 function is_broadcast_addr
;	-----------------------------------------
_is_broadcast_addr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	/home/user/contiki/core/net/mac/framer-802154.c:80: int i = mode == FRAME802154_SHORTADDRMODE ? 2 : 8;
	cjne	r7,#0x02,00108$
	mov	r7,#0x02
	sjmp	00109$
00108$:
	mov	r7,#0x08
00109$:
	mov	ar6,r7
	mov	r7,#0x00
;	/home/user/contiki/core/net/mac/framer-802154.c:81: while(i-- > 0) {
00103$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xFF,00124$
	dec	r7
00124$:
	clr	c
	clr	a
	subb	a,r4
	clr	a
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	/home/user/contiki/core/net/mac/framer-802154.c:82: if(addr[i] != 0xff) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r3,a
	mov	a,r7
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
	cjne	r3,#0xFF,00126$
	sjmp	00103$
00126$:
;	/home/user/contiki/core/net/mac/framer-802154.c:83: return 0;
	mov	dptr,#0x0000
	ret
00105$:
;	/home/user/contiki/core/net/mac/framer-802154.c:86: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create'
;------------------------------------------------------------
;params                    Allocated to stack - sp -50
;len                       Allocated to stack - sp -1
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/framer-802154.c:90: create(void)
;	-----------------------------------------
;	 function create
;	-----------------------------------------
_create:
	mov	a,sp
	add	a,#0x33
;	/home/user/contiki/core/net/mac/framer-802154.c:96: memset(&params, 0, sizeof(params));
	mov	sp,a
	add	a,#0xCE
	mov	r1,a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar1
	mov	a,#0x31
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
	pop	ar1
;	/home/user/contiki/core/net/mac/framer-802154.c:98: if(!initialized) {
	mov	dptr,#_initialized
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	/home/user/contiki/core/net/mac/framer-802154.c:99: initialized = 1;
	mov	dptr,#_initialized
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/core/net/mac/framer-802154.c:100: mac_dsn = random_rand() & 0xff;
	push	ar1
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	pop	ar1
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_mac_dsn
	mov	a,r6
	movx	@dptr,a
00102$:
;	/home/user/contiki/core/net/mac/framer-802154.c:104: params.fcf.frame_type = FRAME802154_DATAFRAME;
	mov	@r1,#0x01
;	/home/user/contiki/core/net/mac/framer-802154.c:105: params.fcf.security_enabled = 0;
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/framer-802154.c:106: params.fcf.frame_pending = packetbuf_attr(PACKETBUF_ATTR_PENDING);
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	dpl,#0x12
	push	ar1
	push	ar0
	lcall	_packetbuf_attr
	mov	r6,dpl
	pop	ar0
	mov	@r0,ar6
;	/home/user/contiki/core/net/mac/framer-802154.c:107: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
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
	pop	ar1
	mov	a,r6
	orl	a,r7
	jz	00104$
;	/home/user/contiki/core/net/mac/framer-802154.c:108: params.fcf.ack_required = 0;
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00105$
00104$:
;	/home/user/contiki/core/net/mac/framer-802154.c:110: params.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_MAC_ACK);
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	dpl,#0x0B
	push	ar1
	push	ar0
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	mov	@r0,ar6
00105$:
;	/home/user/contiki/core/net/mac/framer-802154.c:112: params.fcf.panid_compression = 0;
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/framer-802154.c:115: params.fcf.frame_version = FRAME802154_IEEE802154_2003;
	mov	a,#0x06
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/framer-802154.c:118: if(packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO)) {
	mov	dpl,#0x0A
	push	ar1
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	pop	ar1
	orl	a,b
	jz	00107$
;	/home/user/contiki/core/net/mac/framer-802154.c:119: params.seq = packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO);
	mov	a,#0x08
	add	a,r1
	mov	r0,a
	mov	dpl,#0x0A
	push	ar1
	push	ar0
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	mov	@r0,ar6
	sjmp	00109$
00107$:
;	/home/user/contiki/core/net/mac/framer-802154.c:121: params.seq = mac_dsn++;
	mov	a,#0x08
	add	a,r1
	mov	r0,a
	mov	dptr,#_mac_dsn
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mac_dsn
	inc	a
	movx	@dptr,a
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/framer-802154.c:122: packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, params.seq);
	mov	r6,#0x00
	push	ar1
	push	ar7
	push	ar6
	mov	dpl,#0x0A
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar1
;	/home/user/contiki/core/net/mac/framer-802154.c:131: if(sizeof(rimeaddr_t) == 2) {
00109$:
;	/home/user/contiki/core/net/mac/framer-802154.c:133: params.fcf.src_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	a,#0x07
	add	a,r1
	mov	r0,a
	mov	@r0,#0x02
;	/home/user/contiki/core/net/mac/framer-802154.c:137: params.dest_pid = mac_dst_pan_id;
	mov	a,#0x09
	add	a,r1
	mov	r0,a
	mov	dptr,#_mac_dst_pan_id
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/framer-802154.c:143: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
	mov	dpl,#0x19
	push	ar1
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
	pop	ar1
	mov	a,r6
	orl	a,r7
	jz	00116$
;	/home/user/contiki/core/net/mac/framer-802154.c:145: params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	mov	@r0,#0x02
;	/home/user/contiki/core/net/mac/framer-802154.c:146: params.dest_addr[0] = 0xFF;
	mov	a,#0x0B
	add	a,r1
	mov	r0,a
	mov	@r0,#0xFF
;	/home/user/contiki/core/net/mac/framer-802154.c:147: params.dest_addr[1] = 0xFF;
	mov	a,#0x0C
	add	a,r1
	mov	r0,a
	mov	@r0,#0xFF
	sjmp	00117$
00116$:
;	/home/user/contiki/core/net/mac/framer-802154.c:151: packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	push	ar1
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar1
;	/home/user/contiki/core/net/mac/framer-802154.c:150: rimeaddr_copy((rimeaddr_t *)&params.dest_addr,
	mov	a,#0x0B
	add	a,r1
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
;	/home/user/contiki/core/net/mac/framer-802154.c:154: params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	mov	@r0,#0x02
;	/home/user/contiki/core/net/mac/framer-802154.c:156: params.fcf.dest_addr_mode = FRAME802154_LONGADDRMODE;
00117$:
;	/home/user/contiki/core/net/mac/framer-802154.c:161: params.src_pid = mac_src_pan_id;
	mov	a,#0x13
	add	a,r1
	mov	r0,a
	mov	dptr,#_mac_src_pan_id
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/framer-802154.c:167: rimeaddr_copy((rimeaddr_t *)&params.src_addr, &rimeaddr_node_addr);
	mov	a,#0x15
	add	a,r1
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar1
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
;	/home/user/contiki/core/net/mac/framer-802154.c:169: params.payload = packetbuf_dataptr();
	mov	a,#0x2D
	add	a,r1
	mov	r0,a
	push	ar1
	push	ar0
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar0
	pop	ar1
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/framer-802154.c:170: params.payload_len = packetbuf_datalen();
	mov	a,#0x30
	add	a,r1
	mov	r0,a
	push	ar1
	push	ar0
	lcall	_packetbuf_datalen
	mov	r6,dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar6
;	/home/user/contiki/core/net/mac/framer-802154.c:171: len = frame802154_hdrlen(&params);
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar1
	lcall	_frame802154_hdrlen
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/framer-802154.c:172: if(packetbuf_hdralloc(len)) {
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar1
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	pop	ar1
	orl	a,b
	jz	00119$
;	/home/user/contiki/core/net/mac/framer-802154.c:173: frame802154_create(&params, packetbuf_hdrptr(), len);
	push	ar1
	lcall	_packetbuf_hdrptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar1
	mov	ar2,r1
	mov	r6,#0x00
	mov	r7,#0x40
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_frame802154_create
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	/home/user/contiki/core/net/mac/framer-802154.c:179: return len;
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	sjmp	00121$
00119$:
;	/home/user/contiki/core/net/mac/framer-802154.c:182: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
00121$:
	mov	a,sp
	add	a,#0xCD
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse'
;------------------------------------------------------------
;frame                     Allocated to stack - sp -50
;len                       Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -53
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/framer-802154.c:187: parse(void)
;	-----------------------------------------
;	 function parse
;	-----------------------------------------
_parse:
	mov	a,sp
	add	a,#0x36
	mov	sp,a
;	/home/user/contiki/core/net/mac/framer-802154.c:191: len = packetbuf_datalen();
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	r7,dph
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/framer-802154.c:192: if(frame802154_parse(packetbuf_dataptr(), len, &frame) &&
	mov	a,sp
	add	a,#0xCE
	mov	r5,a
	mov	a,sp
	add	a,#0xcb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	push	ar5
	lcall	_packetbuf_dataptr
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xca
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
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_frame802154_parse
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00131$
	ljmp	00109$
00131$:
;	/home/user/contiki/core/net/mac/framer-802154.c:193: packetbuf_hdrreduce(len - frame.payload_len)) {
	mov	a,#0x30
	add	a,r5
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	r0,sp
	dec	r0
	mov	a,@r0
	clr	c
	subb	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	push	ar5
	push	ar1
	lcall	_packetbuf_hdrreduce
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar5
	orl	a,b
	jnz	00132$
	ljmp	00109$
00132$:
;	/home/user/contiki/core/net/mac/framer-802154.c:194: if(frame.fcf.dest_addr_mode) {
	mov	a,#0x05
	add	a,r5
	mov	r0,a
	mov	a,@r0
	mov	r7,a
	jz	00107$
;	/home/user/contiki/core/net/mac/framer-802154.c:195: if(frame.dest_pid != mac_src_pan_id &&
	mov	a,#0x09
	add	a,r5
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	mov	dptr,#_mac_src_pan_id
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar2,00134$
	mov	a,r6
	cjne	a,ar3,00134$
	sjmp	00102$
00134$:
;	/home/user/contiki/core/net/mac/framer-802154.c:196: frame.dest_pid != FRAME802154_BROADCASTPANDID) {
	cjne	r4,#0xFF,00135$
	cjne	r6,#0xFF,00135$
	sjmp	00102$
00135$:
;	/home/user/contiki/core/net/mac/framer-802154.c:199: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
	ljmp	00111$
00102$:
;	/home/user/contiki/core/net/mac/framer-802154.c:201: if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
	mov	a,#0x0B
	add	a,r5
	mov	r6,a
	mov	r4,#0x00
	mov	r3,#0x40
	push	ar5
	push	ar1
	push	ar6
	push	ar4
	push	ar3
	mov	dpl,r7
	lcall	_is_broadcast_addr
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00107$
;	/home/user/contiki/core/net/mac/framer-802154.c:202: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (rimeaddr_t *)&frame.dest_addr);
	mov	a,#0x0B
	add	a,r5
	mov	r7,a
	mov	r6,#0x00
	mov	r4,#0x40
	push	ar5
	push	ar1
	push	ar7
	push	ar6
	push	ar4
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
00107$:
;	/home/user/contiki/core/net/mac/framer-802154.c:205: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (rimeaddr_t *)&frame.src_addr);
	mov	a,#0x15
	add	a,r5
	mov	r7,a
	mov	r6,#0x00
	mov	r4,#0x40
	push	ar5
	push	ar1
	push	ar7
	push	ar6
	push	ar4
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
;	/home/user/contiki/core/net/mac/framer-802154.c:206: packetbuf_set_attr(PACKETBUF_ATTR_PENDING, frame.fcf.frame_pending);
	mov	a,#0x02
	add	a,r5
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	push	ar5
	push	ar1
	push	ar7
	push	ar6
	mov	dpl,#0x12
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
;	/home/user/contiki/core/net/mac/framer-802154.c:208: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, frame.seq);
	mov	a,#0x08
	add	a,r5
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	push	ar1
	push	ar7
	push	ar6
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar1
;	/home/user/contiki/core/net/mac/framer-802154.c:215: return len - frame.payload_len;
	mov	ar7,@r1
	mov	r6,#0x00
	mov	r0,sp
	dec	r0
	mov	a,@r0
	clr	c
	subb	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	sjmp	00111$
00109$:
;	/home/user/contiki/core/net/mac/framer-802154.c:217: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
00111$:
	mov	a,sp
	add	a,#0xCA
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_mac_dst_pan_id:
	.byte #0x49,#0x54	; 21577
_mac_src_pan_id:
	.byte #0x49,#0x54	; 21577
_framer_802154:
	.byte _create,(_create >> 8)
	.byte _parse,(_parse >> 8)
	.area XINIT   (CODE)
__xinit__initialized:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
