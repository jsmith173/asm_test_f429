    .syntax unified
    .thumb

.global test1
    .type    test1, %function
test1:

	mov r8, sp
	ldr r9, =0x800080
	ldr r4, =0x8080b7ff
    sxtab16 r8, r9, r4, ror #8

    nop
    nop
	nop
loop:
		b loop

 
