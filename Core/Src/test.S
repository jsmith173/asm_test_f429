    .syntax unified
    .thumb

.global test1
    .type    test1, %function
	
test1:

	/* */
	
	ldr r4,=0x03
	ldr r3,=0x20008018
	cmp	r4, #1
	mov	r5, r0
	subs	r3, r4, #2
	cmp	r3, #7
	bhi.n	lab1
	tbh	[pc, r3, lsl #1]
.short	0x0090
	.word	0x00000002
	
    nop
    nop
	nop
    nop
    nop
	nop
    nop
    nop
	nop
    nop
    nop
	nop
    nop
    nop
	nop
    nop
    nop
	nop

	
lab1:	
    nop
    nop
	nop
loop:
		b loop

 
