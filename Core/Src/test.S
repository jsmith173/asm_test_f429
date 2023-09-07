    .syntax unified
    .thumb

.global test1
    .type    test1, %function
test1:

	ldr r0, =0xf339d840
	ldr r2, =0x0
    adds r0, r0, r2

    nop
    nop
	nop
loop:
		b loop

 