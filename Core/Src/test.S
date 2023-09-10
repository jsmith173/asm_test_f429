    .syntax unified
    .thumb

.global test1
    .type    test1, %function
test1:

    ldr sp,=0x200006A4

	ldr r0,=0xfe
	push {r0}

	ldr r0,=0x00
	push {r0}

	ldr r0,=0x00
	push {r0}
	
	ldr r3,=0x2000069E
    ldr	r3, [r3, #0]

    nop
    nop
	nop
loop:
		b loop

 
