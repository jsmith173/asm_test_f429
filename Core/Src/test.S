    .syntax unified
    .thumb

.global test1
    .type    test1, %function
test1:
    ldr r1, =0x0EE02020
    mov.w	r1, r1, rrx

    nop
    nop
	nop
loop:
		b loop

 