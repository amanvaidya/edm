;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
; This file was generated Tue Feb 10 06:19:57 2015
;--------------------------------------------------------
	.module usb_core
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _usb_class_get_string_descriptor
	.globl _usb_arch_send_pending
	.globl _usb_arch_get_global_events
	.globl _usb_arch_set_global_event_process
	.globl _usb_arch_set_address
	.globl _usb_arch_get_ep_status
	.globl _usb_arch_set_configuration
	.globl _usb_arch_halt_endpoint
	.globl _usb_arch_control_stall
	.globl _usb_arch_discard_all_buffers
	.globl _usb_arch_disable_endpoint
	.globl _usb_arch_setup_interrupt_endpoint
	.globl _usb_arch_setup_bulk_endpoint
	.globl _usb_arch_setup
	.globl _usb_get_ep_events
	.globl _usb_set_ep_event_process
	.globl _usb_submit_xmit_buffer
	.globl _usb_submit_recv_buffer
	.globl _process_interrupt
	.globl _process_start
	.globl _usb_process
	.globl _usb_setup_buffer
	.globl _usb_set_global_event_process
	.globl _usb_get_global_events
	.globl _usb_send_ctrl_response
	.globl _usb_error_stall
	.globl _usb_send_ctrl_status
	.globl _usb_get_ctrl_data
	.globl _usb_setup
	.globl _usb_register_request_handler
	.globl _usb_prepend_request_handler
	.globl _usb_get_current_configuration
	.globl _usb_setup_bulk_endpoint
	.globl _usb_setup_interrupt_endpoint
	.globl _usb_disable_endpoint
	.globl _usb_discard_all_buffers
	.globl _usb_halt_endpoint
	.globl _usb_send_pending
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
_usb_setup_buffer::
	.ds 8
_ctrl_buffer:
	.ds 14
_usb_device_status:
	.ds 2
_usb_configuration_value:
	.ds 1
_get_endpoint_status_status_1_106:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_usb_request_handler_hooks:
	.ds 3
_usb_flags:
	.ds 1
_global_user_event_pocess:
	.ds 3
_global_user_events:
	.ds 2
_error_stall:
	.ds 1
_data_callback:
	.ds 2
_ctrl_data:
	.ds 3
_ctrl_data_len:
	.ds 2
_standard_request_hook:
	.ds 6
_usb_process::
	.ds 9
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
;Allocation info for local variables in function 'usb_set_global_event_process'
;------------------------------------------------------------
;p                         Allocated to registers 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:42: usb_set_global_event_process(struct process *p)
;	-----------------------------------------
;	 function usb_set_global_event_process
;	-----------------------------------------
_usb_set_global_event_process:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_global_user_event_pocess
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:44: global_user_event_pocess = p;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_get_global_events'
;------------------------------------------------------------
;e                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:47: usb_get_global_events(void)
;	-----------------------------------------
;	 function usb_get_global_events
;	-----------------------------------------
_usb_get_global_events:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:49: unsigned int e = global_user_events;
	mov	dptr,#_global_user_events
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:50: global_user_events = 0;
	mov	dptr,#_global_user_events
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:51: return e;
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'notify_user'
;------------------------------------------------------------
;e                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:55: notify_user(unsigned int e)
;	-----------------------------------------
;	 function notify_user
;	-----------------------------------------
_notify_user:
	mov	r6,dpl
	mov	r7,dph
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:57: global_user_events |= e;
	mov	dptr,#_global_user_events
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_global_user_events
	mov	a,r6
	orl	a,r4
	movx	@dptr,a
	mov	a,r7
	orl	a,r5
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:58: if(global_user_event_pocess) {
	mov	dptr,#_global_user_event_pocess
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00103$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:59: process_interrupt(global_user_event_pocess);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_process_interrupt
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_send_ctrl_response'
;------------------------------------------------------------
;len                       Allocated to stack - sp -3
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:65: usb_send_ctrl_response(const uint8_t * data, unsigned int len)
;	-----------------------------------------
;	 function usb_send_ctrl_response
;	-----------------------------------------
_usb_send_ctrl_response:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:67: if(ctrl_buffer.flags & USB_BUFFER_SUBMITTED)
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	jnb	acc.0,00102$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:68: return;
	ret
00102$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:69: if(len >= usb_setup_buffer.wLength) {
	mov	dptr,#(_usb_setup_buffer + 0x0006)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00104$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:70: len = usb_setup_buffer.wLength;     /* Truncate if too long */
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00104$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:72: ctrl_buffer.flags = USB_BUFFER_NOTIFY | USB_BUFFER_IN;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x48
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:73: if(len < usb_setup_buffer.wLength) {
	mov	dptr,#(_usb_setup_buffer + 0x0006)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00106$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:74: ctrl_buffer.flags |= USB_BUFFER_SHORT_END;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	ar3,#0x02
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00106$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:76: ctrl_buffer.next = NULL;
	mov	dptr,#_ctrl_buffer
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:77: ctrl_buffer.data = (uint8_t *) data;
	mov	dptr,#(_ctrl_buffer + 0x0003)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:78: ctrl_buffer.left = len;
	mov	dptr,#(_ctrl_buffer + 0x0006)
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:79: ctrl_buffer.id = IN_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:80: usb_submit_xmit_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	lcall	_usb_submit_xmit_buffer
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_error_stall'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:86: usb_error_stall()
;	-----------------------------------------
;	 function usb_error_stall
;	-----------------------------------------
_usb_error_stall:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:88: error_stall = 1;
	mov	dptr,#_error_stall
	mov	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:89: usb_arch_control_stall(0);
	mov	dpl,#0x00
	ljmp	_usb_arch_control_stall
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_send_ctrl_status'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:93: usb_send_ctrl_status()
;	-----------------------------------------
;	 function usb_send_ctrl_status
;	-----------------------------------------
_usb_send_ctrl_status:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:95: if(ctrl_buffer.flags & USB_BUFFER_SUBMITTED)
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	jnb	acc.0,00102$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:96: return;
	ret
00102$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:97: ctrl_buffer.flags = USB_BUFFER_NOTIFY | USB_BUFFER_IN;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x48
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:98: ctrl_buffer.next = NULL;
	mov	dptr,#_ctrl_buffer
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:99: ctrl_buffer.data = NULL;
	mov	dptr,#(_ctrl_buffer + 0x0003)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:100: ctrl_buffer.left = 0;
	mov	dptr,#(_ctrl_buffer + 0x0006)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:101: ctrl_buffer.id = STATUS_IN_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:102: usb_submit_xmit_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	lcall	_usb_submit_xmit_buffer
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_get_ctrl_data'
;------------------------------------------------------------
;length                    Allocated to stack - sp -3
;cb                        Allocated to stack - sp -5
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:112: usb_get_ctrl_data(uint8_t * data, unsigned int length,
;	-----------------------------------------
;	 function usb_get_ctrl_data
;	-----------------------------------------
_usb_get_ctrl_data:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:115: if(ctrl_buffer.flags & USB_BUFFER_SUBMITTED)
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	jnb	acc.0,00102$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:116: return;
	ret
00102$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:118: data_callback = cb;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dptr,#_data_callback
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:119: ctrl_data = data;
	mov	dptr,#_ctrl_data
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:120: ctrl_data_len = length;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_ctrl_data_len
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:121: ctrl_buffer.flags = USB_BUFFER_NOTIFY;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:122: ctrl_buffer.next = NULL;
	mov	dptr,#_ctrl_buffer
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:123: ctrl_buffer.data = data;
	mov	dptr,#(_ctrl_buffer + 0x0003)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:124: ctrl_buffer.left = length;
	mov	dptr,#(_ctrl_buffer + 0x0006)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:125: ctrl_buffer.id = OUT_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:126: usb_submit_recv_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	lcall	_usb_submit_recv_buffer
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_device_descriptor'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:139: get_device_descriptor()
;	-----------------------------------------
;	 function get_device_descriptor
;	-----------------------------------------
_get_device_descriptor:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:141: usb_send_ctrl_response((unsigned char *)&device_descriptor,
	mov	r6,#_device_descriptor
	mov	r7,#(_device_descriptor >> 8)
	mov	r5,#0x80
	mov	a,#0x12
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_string_descriptor'
;------------------------------------------------------------
;descriptor                Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:146: get_string_descriptor()
;	-----------------------------------------
;	 function get_string_descriptor
;	-----------------------------------------
_get_string_descriptor:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:187: LOW_BYTE(usb_setup_buffer.wValue));
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:186: usb_class_get_string_descriptor(usb_setup_buffer.wIndex,
	mov	dptr,#(_usb_setup_buffer + 0x0004)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	mov	dpl,r5
	mov	dph,r7
	lcall	_usb_class_get_string_descriptor
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:188: if(!descriptor) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:189: usb_error_stall();
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:190: return;
	ljmp	_usb_error_stall
00102$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:193: descriptor->bLength);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:192: usb_send_ctrl_response((const unsigned char *)descriptor,
	push	ar4
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_configuration_descriptor'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:198: get_configuration_descriptor()
;	-----------------------------------------
;	 function get_configuration_descriptor
;	-----------------------------------------
_get_configuration_descriptor:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:201: configuration_head->wTotalLength);
	mov	dptr,#_configuration_head
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:200: usb_send_ctrl_response((unsigned char *)configuration_head,
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_configuration'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:205: get_configuration()
;	-----------------------------------------
;	 function get_configuration
;	-----------------------------------------
_get_configuration:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:207: usb_send_ctrl_response((unsigned char *)&usb_configuration_value,
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_usb_configuration_value
	mov	b,#0x00
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_configuration'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:213: set_configuration()
;	-----------------------------------------
;	 function set_configuration
;	-----------------------------------------
_set_configuration:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:215: notify_user(USB_EVENT_CONFIG);
	mov	dptr,#0x0001
	lcall	_notify_user
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:216: if(usb_configuration_value != LOW_BYTE(usb_setup_buffer.wValue)) {
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_usb_configuration_value
	movx	a,@dptr
	mov	r7,a
	cjne	a,ar6,00109$
	sjmp	00102$
00109$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:217: usb_configuration_value = LOW_BYTE(usb_setup_buffer.wValue);
	mov	dptr,#_usb_configuration_value
	mov	a,r6
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:218: usb_arch_set_configuration(usb_configuration_value);
	mov	dpl,r6
	lcall	_usb_arch_set_configuration
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:219: usb_send_ctrl_status();
	lcall	_usb_send_ctrl_status
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:220: return 1;
	mov	dptr,#0x0001
	ret
00102$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:222: usb_send_ctrl_status();
	lcall	_usb_send_ctrl_status
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:223: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_device_status'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:228: get_device_status()
;	-----------------------------------------
;	 function get_device_status
;	-----------------------------------------
_get_device_status:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:231: usb_send_ctrl_response((const unsigned char *)&usb_device_status,
	mov	r6,#_usb_device_status
	mov	r7,#(_usb_device_status >> 8)
	mov	r5,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_endpoint_status'
;------------------------------------------------------------
;status                    Allocated with name '_get_endpoint_status_status_1_106'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:236: get_endpoint_status()
;	-----------------------------------------
;	 function get_endpoint_status
;	-----------------------------------------
_get_endpoint_status:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:241: if((usb_setup_buffer.wIndex & 0x7f) == 0) {
	mov	dptr,#(_usb_setup_buffer + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	anl	a,#0x7F
	jz	00110$
	sjmp	00102$
00110$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:242: usb_send_ctrl_response((const unsigned char *)&zero_word,
	mov	r4,#_zero_word
	mov	r5,#(_zero_word >> 8)
	mov	r3,#0x80
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
00102$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:245: status = usb_arch_get_ep_status(usb_setup_buffer.wIndex);
	mov	dpl,r6
	lcall	_usb_arch_get_ep_status
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_get_endpoint_status_status_1_106
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:246: usb_send_ctrl_response((uint8_t *) & status, sizeof(status));
	mov	r6,#_get_endpoint_status_status_1_106
	mov	r7,#(_get_endpoint_status_status_1_106 >> 8)
	mov	r5,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_interface_status'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:251: get_interface_status()
;	-----------------------------------------
;	 function get_interface_status
;	-----------------------------------------
_get_interface_status:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:254: usb_send_ctrl_response((const unsigned char *)&zero_word,
	mov	r6,#_zero_word
	mov	r7,#(_zero_word >> 8)
	mov	r5,#0x80
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_interface'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:259: get_interface()
;	-----------------------------------------
;	 function get_interface
;	-----------------------------------------
_get_interface:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:262: if(usb_configuration_value == 0)
	mov	dptr,#_usb_configuration_value
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:263: usb_error_stall();
	ljmp	_usb_error_stall
00102$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:265: usb_send_ctrl_response(&zero_byte, sizeof(zero_byte));
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_zero_byte
	mov	b,#0x80
	lcall	_usb_send_ctrl_response
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_standard_requests'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:271: handle_standard_requests()
;	-----------------------------------------
;	 function handle_standard_requests
;	-----------------------------------------
_handle_standard_requests:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:273: switch (usb_setup_buffer.bmRequestType) {
	mov	dptr,#_usb_setup_buffer
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x00,00204$
	ljmp	00121$
00204$:
	cjne	r7,#0x01,00205$
	ljmp	00128$
00205$:
	cjne	r7,#0x02,00206$
	ljmp	00132$
00206$:
	cjne	r7,#0x80,00207$
	sjmp	00101$
00207$:
	cjne	r7,#0x81,00208$
	sjmp	00113$
00208$:
	cjne	r7,#0x82,00209$
	ljmp	00117$
00209$:
	ljmp	00140$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:274: case 0x80:                   /* standard device IN requests */
00101$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:275: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jz	00109$
	cjne	r7,#0x06,00211$
	sjmp	00102$
00211$:
	cjne	r7,#0x08,00212$
	sjmp	00108$
00212$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:276: case GET_DESCRIPTOR:
	cjne	r7,#0x0A,00111$
	sjmp	00110$
00102$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:277: switch (HIGH_BYTE(usb_setup_buffer.wValue)) {
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00214$
	sjmp	00103$
00214$:
	cjne	r7,#0x02,00215$
	sjmp	00104$
00215$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:278: case DEVICE:
	cjne	r7,#0x03,00106$
	sjmp	00105$
00103$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:279: get_device_descriptor();
	lcall	_get_device_descriptor
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:280: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:281: case CONFIGURATION:
00104$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:282: get_configuration_descriptor();
	lcall	_get_configuration_descriptor
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:283: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:284: case STRING:
00105$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:285: get_string_descriptor();
	lcall	_get_string_descriptor
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:286: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:287: default:
00106$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:289: return 0;
	mov	dptr,#0x0000
	ret
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:292: case GET_CONFIGURATION:
00108$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:293: get_configuration();
	lcall	_get_configuration
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:294: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:295: case GET_STATUS:
00109$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:296: get_device_status();
	lcall	_get_device_status
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:297: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:298: case GET_INTERFACE:
00110$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:299: get_interface();
	lcall	_get_interface
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:300: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:301: default:
00111$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:302: return 0;
	mov	dptr,#0x0000
	ret
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:305: case 0x81:                   /* standard interface IN requests */
00113$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:306: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jz	00218$
	sjmp	00115$
00218$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:308: get_interface_status();
	lcall	_get_interface_status
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:309: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:319: default:
00115$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:320: return 0;
	mov	dptr,#0x0000
	ret
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:323: case 0x82:                   /* standard endpoint IN requests */
00117$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:324: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jz	00220$
	sjmp	00119$
00220$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:326: get_endpoint_status();
	lcall	_get_endpoint_status
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:327: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:328: default:
00119$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:329: return 0;
	mov	dptr,#0x0000
	ret
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:332: case 0x00:                   /* standard device OUT requests */
00121$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:333: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00221$
	sjmp	00122$
00221$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:334: case SET_ADDRESS:
	cjne	r7,#0x09,00126$
	sjmp	00123$
00122$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:336: usb_flags |= USB_FLAG_ADDRESS_PENDING;
	mov	dptr,#_usb_flags
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:339: usb_send_ctrl_status();
	lcall	_usb_send_ctrl_status
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:340: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:350: case SET_CONFIGURATION:
00123$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:351: if(set_configuration()) {
	lcall	_set_configuration
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:357: break;
	ljmp	00141$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:358: default:
00126$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:359: return 0;
	mov	dptr,#0x0000
	ret
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:362: case 0x01:                   /* standard interface OUT requests */
00128$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:363: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0B,00130$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:366: usb_send_ctrl_status();
	lcall	_usb_send_ctrl_status
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:367: break;
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:368: default:
	sjmp	00141$
00130$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:369: return 0;
	mov	dptr,#0x0000
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:372: case 0x02:                   /* standard endpoint OUT requests */
	ret
00132$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:373: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00225$
	sjmp	00134$
00225$:
	cjne	r7,#0x03,00138$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:375: case CLEAR_FEATURE:
00134$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:376: if(usb_setup_buffer.wValue == ENDPOINT_HALT_FEATURE) {
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:378: usb_setup_buffer.bRequest == SET_FEATURE);
	jnz	00136$
	cjne	r7,#0x03,00229$
	inc	a
00229$:
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:377: usb_arch_halt_endpoint(usb_setup_buffer.wIndex,
	mov	dptr,#(_usb_setup_buffer + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	push	ar7
	push	ar6
	mov	dpl,r4
	lcall	_usb_arch_halt_endpoint
	dec	sp
	dec	sp
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:379: usb_send_ctrl_status();
	lcall	_usb_send_ctrl_status
	sjmp	00141$
00136$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:381: usb_error_stall();
	lcall	_usb_error_stall
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:383: break;
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:384: default:
	sjmp	00141$
00138$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:385: return 0;
	mov	dptr,#0x0000
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:414: default:
	ret
00140$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:415: return 0;
	mov	dptr,#0x0000
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:416: }
	ret
00141$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:417: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'submit_setup'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:434: submit_setup(void)
;	-----------------------------------------
;	 function submit_setup
;	-----------------------------------------
_submit_setup:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:436: ctrl_buffer.next = NULL;
	mov	dptr,#_ctrl_buffer
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:437: ctrl_buffer.data = (uint8_t *) & usb_setup_buffer;
	mov	dptr,#(_ctrl_buffer + 0x0003)
	mov	a,#_usb_setup_buffer
	movx	@dptr,a
	mov	a,#(_usb_setup_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:438: ctrl_buffer.left = sizeof(usb_setup_buffer);
	mov	dptr,#(_ctrl_buffer + 0x0006)
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:439: ctrl_buffer.flags = (USB_BUFFER_PACKET_END | USB_BUFFER_SETUP
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x2C
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:441: ctrl_buffer.id = SETUP_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:442: usb_submit_recv_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	lcall	_usb_submit_recv_buffer
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_usb_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -8
;data                      Allocated to stack - sp -11
;process_pt                Allocated to stack - sp -5
;PT_YIELD_FLAG             Allocated to registers r4 
;events                    Allocated to registers r3 r4 
;hook                      Allocated to registers r2 r3 r4 
;i                         Allocated to registers r6 r7 
;handler                   Allocated to stack - sp -2
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:447: PROCESS_THREAD(usb_process, ev, data)
;	-----------------------------------------
;	 function process_thread_usb_process
;	-----------------------------------------
_process_thread_usb_process:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:449: PROCESS_BEGIN();
	mov	r4,#0x01
	mov	a,sp
	add	a,#0xfb
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
	mov	r3,a
	cjne	r2,#0x00,00263$
	cjne	r3,#0x00,00263$
	sjmp	00164$
00263$:
	cjne	r2,#0xC4,00264$
	cjne	r3,#0x01,00264$
	sjmp	00102$
00264$:
	ljmp	00166$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:451: while(1) {
00164$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:452: PROCESS_WAIT_EVENT();
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0xC4
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
00102$:
	mov	a,r4
	jnz	00106$
	mov	dpl,#0x01
	ljmp	00170$
00106$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:453: if(ev == PROCESS_EVENT_EXIT)
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	cjne	@r0,#0x83,00266$
	ljmp	00166$
00266$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:455: if(ev == PROCESS_EVENT_INTR) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	cjne	@r0,#0xF5,00164$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:456: unsigned int events = usb_arch_get_global_events();
	lcall	_usb_arch_get_global_events
	mov	r3,dpl
	mov	r4,dph
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:458: if(events) {
	mov	a,r3
	orl	a,r4
	jz	00117$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:459: if(events & USB_EVENT_RESET) {
	mov	a,r3
	jnb	acc.3,00111$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:460: submit_setup();
	push	ar4
	push	ar3
	lcall	_submit_setup
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:461: usb_configuration_value = 0;
	mov	dptr,#_usb_configuration_value
	clr	a
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:462: notify_user(USB_EVENT_RESET);
	mov	dptr,#0x0008
	lcall	_notify_user
	pop	ar3
	pop	ar4
00111$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:464: if(events & USB_EVENT_SUSPEND) {
	mov	a,r3
	jnb	acc.1,00113$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:465: notify_user(USB_EVENT_SUSPEND);
	mov	dptr,#0x0002
	push	ar4
	push	ar3
	lcall	_notify_user
	pop	ar3
	pop	ar4
00113$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:467: if(events & USB_EVENT_RESUME) {
	mov	a,r3
	jnb	acc.2,00117$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:468: notify_user(USB_EVENT_RESUME);
	mov	dptr,#0x0004
	lcall	_notify_user
00117$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:472: events = usb_get_ep_events(0);
	mov	dpl,#0x00
	lcall	_usb_get_ep_events
	mov	r2,dpl
	mov	r7,dph
	mov	ar3,r2
	mov	ar4,r7
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:473: if(events) {
	mov	a,r3
	orl	a,r4
	jnz	00273$
	ljmp	00164$
00273$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:474: if((events & USB_EP_EVENT_NOTIFICATION)
	mov	a,r3
	jb	acc.0,00274$
	ljmp	00164$
00274$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:475: && !(ctrl_buffer.flags & USB_BUFFER_SUBMITTED)) {
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	jnb	acc.0,00275$
	ljmp	00164$
00275$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:477: if(ctrl_buffer.flags & USB_BUFFER_FAILED) {
	mov	a,r3
	jnb	acc.7,00154$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:481: submit_setup();
	lcall	_submit_setup
	ljmp	00164$
00154$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:482: } else if(ctrl_buffer.flags & USB_BUFFER_SETUP) {
	mov	a,r3
	jb	acc.5,00277$
	ljmp	00151$
00277$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:483: struct USBRequestHandlerHook *hook = usb_request_handler_hooks;
	mov	dptr,#_usb_request_handler_hooks
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:489: for(i = 0; i < 8; i++)
	mov	r6,#0x08
	mov	r7,#0x00
00169$:
	dec	r6
	cjne	r6,#0xFF,00278$
	dec	r7
00278$:
	mov	a,r6
	orl	a,r7
	jnz	00169$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:494: while(hook) {
00124$:
	mov	a,r2
	orl	a,r3
	jnz	00280$
	ljmp	00126$
00280$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:495: const struct USBRequestHandler *handler = hook->handler;
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	dec	r0
	dec	r0
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
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:498: if(((handler->request_type ^ usb_setup_buffer.bmRequestType)
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_usb_setup_buffer
	movx	a,@dptr
	xrl	ar4,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:499: & handler->request_type_mask) == 0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	anl	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00281$
	ljmp	00122$
00281$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:500: && ((handler->request ^ usb_setup_buffer.bRequest)
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
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
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	xrl	ar5,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:501: & handler->request_mask) == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
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
	anl	a,r5
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00122$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:502: if(handler->handler_func())
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r6,a
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	r5,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r5
	orl	a,r6
	jnz	00126$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:503: break;
00122$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:505: hook = hook->next;
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
	ljmp	00124$
00126$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:507: if(!hook) {
	mov	a,r2
	orl	a,r3
	jnz	00128$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:509: usb_error_stall();
	lcall	_usb_error_stall
00128$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:517: if(error_stall) {
	mov	dptr,#_error_stall
	movx	a,@dptr
	mov	r7,a
	jnz	00285$
	ljmp	00164$
00285$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:518: error_stall = 0;
	mov	dptr,#_error_stall
	clr	a
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:519: submit_setup();
	lcall	_submit_setup
	ljmp	00164$
00151$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:522: if(ctrl_buffer.id == IN_ID) {
	mov	dptr,#(_ctrl_buffer + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r4,#0x03,00148$
	cjne	r5,#0x00,00148$
	cjne	r6,#0x00,00148$
	cjne	r7,#0x00,00148$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:525: ctrl_buffer.flags = USB_BUFFER_NOTIFY;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:526: ctrl_buffer.next = NULL;
	mov	dptr,#_ctrl_buffer
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:527: ctrl_buffer.data = NULL;
	mov	dptr,#(_ctrl_buffer + 0x0003)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:528: ctrl_buffer.left = 0;
	mov	dptr,#(_ctrl_buffer + 0x0006)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:529: ctrl_buffer.id = STATUS_OUT_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:530: usb_submit_recv_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	lcall	_usb_submit_recv_buffer
	dec	sp
	dec	sp
	dec	sp
	ljmp	00164$
00148$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:531: } else if(ctrl_buffer.id == STATUS_OUT_ID) {
	mov	dptr,#(_ctrl_buffer + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r4,#0x04,00145$
	cjne	r5,#0x00,00145$
	cjne	r6,#0x00,00145$
	cjne	r7,#0x00,00145$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:533: submit_setup();
	lcall	_submit_setup
	ljmp	00164$
00145$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:534: } else if(ctrl_buffer.id == STATUS_IN_ID) {
	cjne	r4,#0x05,00142$
	cjne	r5,#0x00,00142$
	cjne	r6,#0x00,00142$
	cjne	r7,#0x00,00142$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:536: if(usb_flags & USB_FLAG_ADDRESS_PENDING) {
	mov	dptr,#_usb_flags
	movx	a,@dptr
	mov	r3,a
	jnb	acc.0,00135$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:537: while(usb_send_pending(0));
00131$:
	mov	dpl,#0x00
	lcall	_usb_send_pending
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00131$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:538: usb_arch_set_address(LOW_BYTE(usb_setup_buffer.wValue));
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	lcall	_usb_arch_set_address
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:539: usb_flags &= ~USB_FLAG_ADDRESS_PENDING;
	mov	dptr,#_usb_flags
	movx	a,@dptr
	mov	r3,a
	anl	a,#0xFE
	movx	@dptr,a
00135$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:541: submit_setup();
	lcall	_submit_setup
	ljmp	00164$
00142$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:542: } else if(ctrl_buffer.id == OUT_ID) {
	cjne	r4,#0x02,00294$
	cjne	r5,#0x00,00294$
	cjne	r6,#0x00,00294$
	cjne	r7,#0x00,00294$
	sjmp	00295$
00294$:
	ljmp	00164$
00295$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:544: if(data_callback) {
	mov	dptr,#_data_callback
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00137$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:545: data_callback(ctrl_data, ctrl_data_len - ctrl_buffer.left);
	mov	dptr,#(_ctrl_buffer + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ctrl_data_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r5
	subb	a,r7
	mov	r7,a
	mov	dptr,#_ctrl_data
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar6
	push	ar7
	lcall	00297$
	sjmp	00298$
00297$:
	mov	dptr,#_data_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	ret
00298$:
	dec	sp
	dec	sp
	ljmp	00164$
00137$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:547: usb_send_ctrl_status();
	lcall	_usb_send_ctrl_status
	ljmp	00164$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:555: PROCESS_END();
00166$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x03
00170$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_setup'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:560: usb_setup(void)
;	-----------------------------------------
;	 function usb_setup
;	-----------------------------------------
_usb_setup:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:562: usb_arch_setup();
	lcall	_usb_arch_setup
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:563: process_start(&usb_process, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_usb_process
	mov	b,#0x00
	lcall	_process_start
	dec	sp
	dec	sp
	dec	sp
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:564: usb_arch_set_global_event_process(&usb_process);
	mov	dptr,#_usb_process
	mov	b,#0x00
	lcall	_usb_arch_set_global_event_process
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:565: usb_set_ep_event_process(0, &usb_process);
	mov	a,#_usb_process
	push	acc
	mov	a,#(_usb_process >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	lcall	_usb_set_ep_event_process
	dec	sp
	dec	sp
	dec	sp
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:567: usb_register_request_handler(&standard_request_hook);
	mov	dptr,#_standard_request_hook
	mov	b,#0x00
	ljmp	_usb_register_request_handler
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_register_request_handler'
;------------------------------------------------------------
;hook                      Allocated to stack - sp -2
;prevp                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:571: usb_register_request_handler(struct USBRequestHandlerHook *hook)
;	-----------------------------------------
;	 function usb_register_request_handler
;	-----------------------------------------
_usb_register_request_handler:
	push	dpl
	push	dph
	push	b
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:573: struct USBRequestHandlerHook **prevp = &usb_request_handler_hooks;
	mov	r2,#_usb_request_handler_hooks
	mov	r3,#(_usb_request_handler_hooks >> 8)
	mov	r4,#0x00
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:575: while(*prevp) {
00101$:
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
	mov	a,r5
	orl	a,r6
	jz	00103$
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:576: prevp = &(*prevp)->next;
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00101$
00103$:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:579: *prevp = hook;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,sp
	dec	r0
	dec	r0
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
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:580: hook->next = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_prepend_request_handler'
;------------------------------------------------------------
;hook                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:584: usb_prepend_request_handler(struct USBRequestHandlerHook *hook)
;	-----------------------------------------
;	 function usb_prepend_request_handler
;	-----------------------------------------
_usb_prepend_request_handler:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:586: hook->next = usb_request_handler_hooks;
	mov	dptr,#_usb_request_handler_hooks
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:587: usb_request_handler_hooks = hook;
	mov	dptr,#_usb_request_handler_hooks
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_get_current_configuration'
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:592: usb_get_current_configuration(void)
;	-----------------------------------------
;	 function usb_get_current_configuration
;	-----------------------------------------
_usb_get_current_configuration:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:594: return usb_configuration_value;
	mov	dptr,#_usb_configuration_value
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_setup_bulk_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:598: usb_setup_bulk_endpoint(unsigned char addr)
;	-----------------------------------------
;	 function usb_setup_bulk_endpoint
;	-----------------------------------------
_usb_setup_bulk_endpoint:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:600: usb_arch_setup_bulk_endpoint(addr);
	ljmp	_usb_arch_setup_bulk_endpoint
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_setup_interrupt_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:604: usb_setup_interrupt_endpoint(unsigned char addr)
;	-----------------------------------------
;	 function usb_setup_interrupt_endpoint
;	-----------------------------------------
_usb_setup_interrupt_endpoint:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:606: usb_arch_setup_interrupt_endpoint(addr);
	ljmp	_usb_arch_setup_interrupt_endpoint
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_disable_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:610: usb_disable_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_disable_endpoint
;	-----------------------------------------
_usb_disable_endpoint:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:612: usb_arch_discard_all_buffers(addr);
	mov  r7,dpl
	push	ar7
	lcall	_usb_arch_discard_all_buffers
	pop	ar7
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:613: usb_arch_disable_endpoint(addr);
	mov	dpl,r7
	ljmp	_usb_arch_disable_endpoint
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_discard_all_buffers'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:617: usb_discard_all_buffers(uint8_t addr)
;	-----------------------------------------
;	 function usb_discard_all_buffers
;	-----------------------------------------
_usb_discard_all_buffers:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:619: usb_arch_discard_all_buffers(addr);
	ljmp	_usb_arch_discard_all_buffers
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_halt_endpoint'
;------------------------------------------------------------
;halt                      Allocated to stack - sp -3
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:623: usb_halt_endpoint(uint8_t addr, int halt)
;	-----------------------------------------
;	 function usb_halt_endpoint
;	-----------------------------------------
_usb_halt_endpoint:
	mov	r7,dpl
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:625: usb_arch_halt_endpoint(addr, halt);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	lcall	_usb_arch_halt_endpoint
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_send_pending'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:629: usb_send_pending(uint8_t addr)
;	-----------------------------------------
;	 function usb_send_pending
;	-----------------------------------------
_usb_send_pending:
;	/home/user/contiki/cpu/cc2530edm_aman/usb/common/usb-core.c:631: return usb_arch_send_pending(addr);
	ljmp	_usb_arch_send_pending
	.area CSEG    (CODE)
	.area CONST   (CODE)
_zero_byte:
	.db #0x00	; 0
_zero_word:
	.byte #0x00,#0x00	; 0
_standard_request_handler:
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.byte _handle_standard_requests,(_handle_standard_requests >> 8)
	.area XINIT   (CODE)
__xinit__usb_request_handler_hooks:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__usb_flags:
	.db #0x00	; 0
__xinit__global_user_event_pocess:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__global_user_events:
	.byte #0x00,#0x00	; 0
__xinit__error_stall:
	.db #0x00	; 0
__xinit__data_callback:
	.byte #0x00,#0x00
__xinit__ctrl_data:
	.byte #0x00,#0x00,#0x00
__xinit__ctrl_data_len:
	.byte #0x00,#0x00	; 0
__xinit__standard_request_hook:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _standard_request_handler,(_standard_request_handler >> 8),#0x80
__xinit__usb_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_usb_process,(_process_thread_usb_process >> 8)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
