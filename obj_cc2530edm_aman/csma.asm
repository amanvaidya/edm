;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
; This file was generated Tue Feb 10 06:19:36 2015
;--------------------------------------------------------
	.module csma
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _csma_driver
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _list_item_next
	.globl _list_length
	.globl _list_remove
	.globl _list_add
	.globl _list_push
	.globl _list_head
	.globl _list_init
	.globl _random_rand
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _queuebuf_attr
	.globl _queuebuf_free
	.globl _queuebuf_update_attr_from_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _mac_call_sent_callback
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
_neighbor_memb_memb_count:
	.ds 2
_neighbor_memb_memb_mem:
	.ds 70
_packet_memb_memb_count:
	.ds 8
_packet_memb_memb_mem:
	.ds 72
_metadata_memb_memb_count:
	.ds 8
_metadata_memb_memb_mem:
	.ds 48
_send_packet_seqno_1_203:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_neighbor_memb:
	.ds 10
_packet_memb:
	.ds 10
_metadata_memb:
	.ds 10
_neighbor_list_list:
	.ds 3
_neighbor_list:
	.ds 3
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
;Allocation info for local variables in function 'neighbor_queue_from_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - sp -2
;n                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:122: neighbor_queue_from_addr(const rimeaddr_t *addr)
;	-----------------------------------------
;	 function neighbor_queue_from_addr
;	-----------------------------------------
_neighbor_queue_from_addr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	dpl
	push	dph
	push	b
;	/home/user/contiki/core/net/mac/csma.c:124: struct neighbor_queue *n = list_head(neighbor_list);
	mov	dptr,#_neighbor_list
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	/home/user/contiki/core/net/mac/csma.c:125: while(n != NULL) {
00103$:
	mov	a,r2
	orl	a,r3
	jz	00105$
;	/home/user/contiki/core/net/mac/csma.c:126: if(rimeaddr_cmp(&n->addr, addr)) {
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
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
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00102$
;	/home/user/contiki/core/net/mac/csma.c:127: return n;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	sjmp	00106$
00102$:
;	/home/user/contiki/core/net/mac/csma.c:129: n = list_item_next(n);
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00103$
00105$:
;	/home/user/contiki/core/net/mac/csma.c:131: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00106$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'default_timebase'
;------------------------------------------------------------
;time                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:135: default_timebase(void)
;	-----------------------------------------
;	 function default_timebase
;	-----------------------------------------
_default_timebase:
;	/home/user/contiki/core/net/mac/csma.c:140: time = NETSTACK_RDC.channel_check_interval();
	mov	dptr,#(_nullrdc_driver + 0x000f)
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
;	/home/user/contiki/core/net/mac/csma.c:145: if(time == 0) {
	mov	a,r6
	orl	a,r7
;	/home/user/contiki/core/net/mac/csma.c:146: time = CLOCK_SECOND / NETSTACK_RDC_CHANNEL_CHECK_RATE;
	jnz	00102$
	mov	r6,#0x10
	mov	r7,a
00102$:
;	/home/user/contiki/core/net/mac/csma.c:148: return time;
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_packet_list'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;n                         Allocated to registers r5 r6 r7 
;q                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:152: transmit_packet_list(void *ptr)
;	-----------------------------------------
;	 function transmit_packet_list
;	-----------------------------------------
_transmit_packet_list:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/user/contiki/core/net/mac/csma.c:154: struct neighbor_queue *n = ptr;
;	/home/user/contiki/core/net/mac/csma.c:155: if(n) {
	mov	a,r5
	orl	a,r6
	jnz	00113$
	ljmp	00105$
00113$:
;	/home/user/contiki/core/net/mac/csma.c:156: struct rdc_buf_list *q = list_head(n->queued_packet_list);
	mov	a,#0x20
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/home/user/contiki/core/net/mac/csma.c:157: if(q != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00105$
;	/home/user/contiki/core/net/mac/csma.c:161: NETSTACK_RDC.send_list(packet_sent, n, q);
	mov	dptr,#(_nullrdc_driver + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
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
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	lcall	00115$
	sjmp	00116$
00115$:
	push	ar3
	push	ar4
	mov	dptr,#_packet_sent
	ret
00116$:
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar3
	pop	ar4
00105$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'free_packet'
;------------------------------------------------------------
;p                         Allocated to stack - sp -10
;n                         Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:167: free_packet(struct neighbor_queue *n, struct rdc_buf_list *p)
;	-----------------------------------------
;	 function free_packet
;	-----------------------------------------
_free_packet:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/home/user/contiki/core/net/mac/csma.c:169: if(p != NULL) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00114$
	ljmp	00106$
00114$:
;	/home/user/contiki/core/net/mac/csma.c:171: list_remove(n->queued_packet_list, p);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x20
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/csma.c:173: queuebuf_free(p->buf);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_queuebuf_free
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/csma.c:174: memb_free(&metadata_memb, p->ptr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/csma.c:175: memb_free(&packet_memb, p);
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/user/contiki/core/net/mac/csma.c:178: if(list_head(n->queued_packet_list) != NULL) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_head
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jnz	00115$
	ljmp	00102$
00115$:
;	/home/user/contiki/core/net/mac/csma.c:180: n->transmissions = 0;
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
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:181: n->collisions = 0;
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
;	/home/user/contiki/core/net/mac/csma.c:182: n->deferrals = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1C
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
;	/home/user/contiki/core/net/mac/csma.c:185: transmit_packet_list, n);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/home/user/contiki/core/net/mac/csma.c:184: ctimer_set(&n->transmit_timer, default_timebase(),
	push	ar7
	push	ar6
	push	ar5
	lcall	_default_timebase
	xch	a,r0
	mov	a,sp
	add	a,#0xfb
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00106$
00102$:
;	/home/user/contiki/core/net/mac/csma.c:188: ctimer_stop(&n->transmit_timer);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x05
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
	lcall	_ctimer_stop
;	/home/user/contiki/core/net/mac/csma.c:189: list_remove(neighbor_list, n);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_neighbor_list
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/csma.c:190: memb_free(&neighbor_memb, n);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00106$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_sent'
;------------------------------------------------------------
;status                    Allocated to stack - sp -25
;num_transmissions         Allocated to stack - sp -27
;ptr                       Allocated to registers r5 r6 r7 
;n                         Allocated to stack - sp -19
;q                         Allocated to stack - sp -16
;metadata                  Allocated to stack - sp -13
;time                      Allocated to stack - sp -10
;sent                      Allocated to stack - sp -8
;cptr                      Allocated to stack - sp -6
;num_tx                    Allocated to stack - sp -3
;backoff_exponent          Allocated to registers r4 r3 
;backoff_transmissions     Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -21
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:196: packet_sent(void *ptr, int status, int num_transmissions)
;	-----------------------------------------
;	 function packet_sent
;	-----------------------------------------
_packet_sent:
	mov	a,sp
	add	a,#0x16
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/user/contiki/core/net/mac/csma.c:208: n = ptr;
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/csma.c:209: if(n == NULL) {
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	/home/user/contiki/core/net/mac/csma.c:210: return;
	ljmp	00131$
00102$:
;	/home/user/contiki/core/net/mac/csma.c:212: switch(status) {
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	cjne	@r0,#0x00,00174$
	inc	r0
	cjne	@r0,#0x00,00174$
	sjmp	00104$
00174$:
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	cjne	@r0,#0x01,00175$
	inc	r0
	cjne	@r0,#0x00,00175$
	sjmp	00105$
00175$:
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	cjne	@r0,#0x02,00176$
	inc	r0
	cjne	@r0,#0x00,00176$
	sjmp	00104$
00176$:
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
;	/home/user/contiki/core/net/mac/csma.c:214: case MAC_TX_NOACK:
	cjne	@r0,#0x03,00107$
	inc	r0
	cjne	@r0,#0x00,00107$
	sjmp	00106$
00104$:
;	/home/user/contiki/core/net/mac/csma.c:215: n->transmissions++;
	mov	a,sp
	add	a,#0xed
	mov	r0,a
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
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:216: break;
;	/home/user/contiki/core/net/mac/csma.c:217: case MAC_TX_COLLISION:
	sjmp	00107$
00105$:
;	/home/user/contiki/core/net/mac/csma.c:218: n->collisions++;
	mov	a,sp
	add	a,#0xed
	mov	r0,a
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
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:219: break;
;	/home/user/contiki/core/net/mac/csma.c:220: case MAC_TX_DEFERRED:
	sjmp	00107$
00106$:
;	/home/user/contiki/core/net/mac/csma.c:221: n->deferrals++;
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x1C
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
	mov	r7,a
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:298: mac_call_sent_callback(sent, cptr, status, num_tx);
;	/home/user/contiki/core/net/mac/csma.c:223: }
00107$:
;	/home/user/contiki/core/net/mac/csma.c:225: for(q = list_head(n->queued_packet_list);
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x20
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00129$:
;	/home/user/contiki/core/net/mac/csma.c:226: q != NULL; q = list_item_next(q)) {
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	clr	a
	push	acc
	clr	a
	push	acc
	clr	a
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
	jnz	00178$
	ljmp	00110$
00178$:
;	/home/user/contiki/core/net/mac/csma.c:227: if(queuebuf_attr(q->buf, PACKETBUF_ATTR_MAC_SEQNO) ==
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,#0x03
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0A
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_queuebuf_attr
	mov	r6,dpl
	mov	r7,dph
	dec	sp
;	/home/user/contiki/core/net/mac/csma.c:228: packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO)) {
	mov	dpl,#0x0A
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r6
	cjne	a,ar4,00179$
	mov	a,r7
	cjne	a,ar5,00179$
	sjmp	00110$
00179$:
;	/home/user/contiki/core/net/mac/csma.c:226: q != NULL; q = list_item_next(q)) {
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_item_next
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	ljmp	00129$
00110$:
;	/home/user/contiki/core/net/mac/csma.c:233: if(q != NULL) {
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00180$
	ljmp	00131$
00180$:
;	/home/user/contiki/core/net/mac/csma.c:234: metadata = (struct qbuf_metadata *)q->ptr;
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,#0x06
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/home/user/contiki/core/net/mac/csma.c:236: if(metadata != NULL) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00181$
	ljmp	00131$
00181$:
;	/home/user/contiki/core/net/mac/csma.c:237: sent = metadata->sent;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	/home/user/contiki/core/net/mac/csma.c:238: cptr = metadata->cptr;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x02
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
	add	a,#0xfa
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/csma.c:239: num_tx = n->transmissions;
	mov	a,sp
	add	a,#0xed
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
	mov	r4,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	/home/user/contiki/core/net/mac/csma.c:240: if(status == MAC_TX_COLLISION ||
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	cjne	@r0,#0x01,00182$
	inc	r0
	cjne	@r0,#0x00,00182$
	sjmp	00114$
00182$:
;	/home/user/contiki/core/net/mac/csma.c:241: status == MAC_TX_NOACK) {
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	cjne	@r0,#0x02,00183$
	inc	r0
	cjne	@r0,#0x00,00183$
	sjmp	00184$
00183$:
	ljmp	00121$
00184$:
;	/home/user/contiki/core/net/mac/csma.c:255: }
00114$:
;	/home/user/contiki/core/net/mac/csma.c:259: time = default_timebase();
	push	ar7
	push	ar6
	push	ar5
	lcall	_default_timebase
	mov	r4,dpl
	mov	r3,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
;	/home/user/contiki/core/net/mac/csma.c:264: backoff_exponent = num_tx;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
;	/home/user/contiki/core/net/mac/csma.c:267: if(backoff_exponent > CSMA_MAX_BACKOFF_EXPONENT) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,#0x03
	subb	a,@r0
	clr	a
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
;	/home/user/contiki/core/net/mac/csma.c:268: backoff_exponent = CSMA_MAX_BACKOFF_EXPONENT;
	mov	r4,#0x03
	mov	r3,#0x00
00116$:
;	/home/user/contiki/core/net/mac/csma.c:272: backoff_transmissions = 1 << backoff_exponent;
	mov	b,r4
	inc	b
	mov	r0,sp
	dec	r0
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
	dec	r0
	sjmp	00187$
00186$:
	mov	a,@r0
	add	a,acc
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	dec	r0
00187$:
	djnz	b,00186$
;	/home/user/contiki/core/net/mac/csma.c:276: time = time + (random_rand() % (backoff_transmissions * time));
	push	ar7
	push	ar6
	push	ar5
	lcall	_random_rand
	xch	a,r0
	mov	a,sp
	add	a,#0xe8
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
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
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__moduint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	/home/user/contiki/core/net/mac/csma.c:278: if(n->transmissions < metadata->max_transmissions) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x05
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
	mov	a,r5
	subb	a,r4
	jnc	00118$
;	/home/user/contiki/core/net/mac/csma.c:281: transmit_packet_list, n);
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/home/user/contiki/core/net/mac/csma.c:280: ctimer_set(&n->transmit_timer, time,
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
;	/home/user/contiki/core/net/mac/csma.c:284: queuebuf_update_attr_from_packetbuf(q->buf);
	mov	sp,a
	add	a,#0xf0
	mov	r0,a
	mov	a,#0x03
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_queuebuf_update_attr_from_packetbuf
	ljmp	00131$
00118$:
;	/home/user/contiki/core/net/mac/csma.c:288: free_packet(n, q);
	mov	a,sp
	add	a,#0xf0
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
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free_packet
	dec	sp
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/csma.c:289: mac_call_sent_callback(sent, cptr, status, num_tx);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf6
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
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00131$
00121$:
;	/home/user/contiki/core/net/mac/csma.c:297: free_packet(n, q);
	mov	a,sp
	add	a,#0xf0
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
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free_packet
	dec	sp
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/csma.c:298: mac_call_sent_callback(sent, cptr, status, num_tx);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf6
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
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00131$:
	mov	a,sp
	add	a,#0xEA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp -18
;sent                      Allocated to stack - sp -13
;q                         Allocated to stack - sp -5
;n                         Allocated to stack - sp -2
;addr                      Allocated to stack - sp -8
;metadata                  Allocated to registers r4 r3 r2 
;sloc0                     Allocated to stack - sp -11
;seqno                     Allocated with name '_send_packet_seqno_1_203'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:305: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
;	/home/user/contiki/core/net/mac/csma.c:310: const rimeaddr_t *addr = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	/home/user/contiki/core/net/mac/csma.c:312: if(seqno == 0) {
	mov	dptr,#_send_packet_seqno_1_203
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r2
	jnz	00102$
;	/home/user/contiki/core/net/mac/csma.c:315: seqno++;
	mov	dptr,#_send_packet_seqno_1_203
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	/home/user/contiki/core/net/mac/csma.c:317: packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, seqno++);
	mov	dptr,#_send_packet_seqno_1_203
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_send_packet_seqno_1_203
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	push	ar6
	push	ar7
	mov	dpl,#0x0A
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/csma.c:320: n = neighbor_queue_from_addr(addr);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_neighbor_queue_from_addr
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/csma.c:321: if(n == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00164$
	ljmp	00109$
00164$:
;	/home/user/contiki/core/net/mac/csma.c:323: n = memb_alloc(&neighbor_memb);
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	lcall	_memb_alloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	/home/user/contiki/core/net/mac/csma.c:324: if(n != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00165$
	ljmp	00109$
00165$:
;	/home/user/contiki/core/net/mac/csma.c:326: rimeaddr_copy(&n->addr, addr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
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
	mov	dph,r4
	mov	b,r5
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/csma.c:327: n->transmissions = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1A
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
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:328: n->collisions = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1B
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
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:329: n->deferrals = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
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
	clr	a
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:331: LIST_STRUCT_INIT(n, queued_packet_list);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x20
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1D
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_list_init
;	/home/user/contiki/core/net/mac/csma.c:333: list_add(neighbor_list, n);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_neighbor_list
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
00109$:
;	/home/user/contiki/core/net/mac/csma.c:337: if(n != NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00166$
	ljmp	00127$
00166$:
;	/home/user/contiki/core/net/mac/csma.c:339: q = memb_alloc(&packet_memb);
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/home/user/contiki/core/net/mac/csma.c:340: if(q != NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00167$
	ljmp	00123$
00167$:
;	/home/user/contiki/core/net/mac/csma.c:341: q->ptr = memb_alloc(&metadata_memb);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	push	ar4
	push	ar3
	push	ar2
	lcall	_memb_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:342: if(q->ptr != NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00168$
	ljmp	00121$
00168$:
;	/home/user/contiki/core/net/mac/csma.c:343: q->buf = queuebuf_new_from_packetbuf();
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,#0x03
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
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_new_from_packetbuf
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:344: if(q->buf != NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00169$
	ljmp	00119$
00169$:
;	/home/user/contiki/core/net/mac/csma.c:345: struct qbuf_metadata *metadata = (struct qbuf_metadata *)q->ptr;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	ar4,r5
	mov	ar3,r6
	mov	ar2,r7
;	/home/user/contiki/core/net/mac/csma.c:347: if(packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS) == 0) {
	mov	dpl,#0x09
	push	ar4
	push	ar3
	push	ar2
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	orl	a,b
	jnz	00111$
;	/home/user/contiki/core/net/mac/csma.c:349: metadata->max_transmissions = CSMA_MAX_MAC_TRANSMISSIONS;
	mov	a,#0x05
	add	a,r4
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
	sjmp	00112$
00111$:
;	/home/user/contiki/core/net/mac/csma.c:351: metadata->max_transmissions =
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x05
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
;	/home/user/contiki/core/net/mac/csma.c:352: packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS);
	mov	dpl,#0x09
	push	ar4
	push	ar3
	push	ar2
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
00112$:
;	/home/user/contiki/core/net/mac/csma.c:354: metadata->sent = sent;
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:355: metadata->cptr = ptr;
	mov	a,#0x02
	add	a,r4
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/home/user/contiki/core/net/mac/csma.c:357: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x01,00114$
	cjne	r7,#0x00,00114$
;	/home/user/contiki/core/net/mac/csma.c:359: list_push(n->queued_packet_list, q);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x20
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_push
	dec	sp
	dec	sp
	dec	sp
	sjmp	00115$
00114$:
;	/home/user/contiki/core/net/mac/csma.c:361: list_add(n->queued_packet_list, q);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x20
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
00115$:
;	/home/user/contiki/core/net/mac/csma.c:365: if(list_head(n->queued_packet_list) == q) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x20
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_head
	mov	r4,dpl
	mov	r3,dph
	mov	r2,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00174$
	sjmp	00117$
00174$:
;	/home/user/contiki/core/net/mac/csma.c:366: ctimer_set(&n->transmit_timer, 0, transmit_packet_list, n);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x05
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar4
	push	ar3
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00117$:
;	/home/user/contiki/core/net/mac/csma.c:368: return;
	ljmp	00128$
00119$:
;	/home/user/contiki/core/net/mac/csma.c:370: memb_free(&metadata_memb, q->ptr);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00121$:
;	/home/user/contiki/core/net/mac/csma.c:373: memb_free(&packet_memb, q);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00123$:
;	/home/user/contiki/core/net/mac/csma.c:377: if(list_length(n->queued_packet_list) == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x20
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_length
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00127$
;	/home/user/contiki/core/net/mac/csma.c:378: list_remove(neighbor_list, n);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_neighbor_list
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	/home/user/contiki/core/net/mac/csma.c:379: memb_free(&neighbor_memb, n);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar6
	push	ar7
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00127$:
;	/home/user/contiki/core/net/mac/csma.c:385: mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xea
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
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00128$:
	mov	a,sp
	add	a,#0xF2
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:389: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
;	/home/user/contiki/core/net/mac/csma.c:391: NETSTACK_NETWORK.input();
	mov	dptr,#(_rime_driver + 0x0005)
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:395: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	/home/user/contiki/core/net/mac/csma.c:397: return NETSTACK_RDC.on();
	mov	dptr,#(_nullrdc_driver + 0x000b)
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
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:401: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/core/net/mac/csma.c:403: return NETSTACK_RDC.off(keep_radio_on);
	mov	dptr,#(_nullrdc_driver + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	lcall	00103$
	sjmp	00104$
00103$:
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	ret
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:407: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	/home/user/contiki/core/net/mac/csma.c:409: if(NETSTACK_RDC.channel_check_interval) {
	mov	dptr,#(_nullrdc_driver + 0x000f)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	orl	a,r6
	jz	00102$
;	/home/user/contiki/core/net/mac/csma.c:410: return NETSTACK_RDC.channel_check_interval();
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
00102$:
;	/home/user/contiki/core/net/mac/csma.c:412: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	/home/user/contiki/core/net/mac/csma.c:416: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	/home/user/contiki/core/net/mac/csma.c:418: memb_init(&packet_memb);
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_init
;	/home/user/contiki/core/net/mac/csma.c:419: memb_init(&metadata_memb);
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_init
;	/home/user/contiki/core/net/mac/csma.c:420: memb_init(&neighbor_memb);
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	ljmp	_memb_init
	.area CSEG    (CODE)
	.area CONST   (CODE)
_csma_driver:
	.byte _str_0,(_str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
_str_0:
	.ascii "CSMA"
	.db 0x00
	.area XINIT   (CODE)
__xinit__neighbor_memb:
	.byte #0x23,#0x00	; 35
	.byte #0x02,#0x00	; 2
	.byte _neighbor_memb_memb_count,(_neighbor_memb_memb_count >> 8),#0x00
	.byte _neighbor_memb_memb_mem,(_neighbor_memb_memb_mem >> 8),#0x00
__xinit__packet_memb:
	.byte #0x09,#0x00	; 9
	.byte #0x08,#0x00	; 8
	.byte _packet_memb_memb_count,(_packet_memb_memb_count >> 8),#0x00
	.byte _packet_memb_memb_mem,(_packet_memb_memb_mem >> 8),#0x00
__xinit__metadata_memb:
	.byte #0x06,#0x00	; 6
	.byte #0x08,#0x00	; 8
	.byte _metadata_memb_memb_count,(_metadata_memb_memb_count >> 8),#0x00
	.byte _metadata_memb_memb_mem,(_metadata_memb_memb_mem >> 8),#0x00
__xinit__neighbor_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__neighbor_list:
	.byte _neighbor_list_list,(_neighbor_list_list >> 8),#0x00
	.area CABS    (ABS,CODE)
