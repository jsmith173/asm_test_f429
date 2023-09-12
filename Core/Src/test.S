    .syntax unified
    .thumb

.global test1
    .type    test1, %function
	
test1:

    ldr sp,=0x200006A4

	ldr r0,=0x12345678
	push {r0}

	ldr r0,=0xFEDCBA98
	push {r0}

	ldr r3,=0x2000069E

    // test reading 32bit value from unaligned memory
	// r0 : 0x5678fedc
	ldr r3,=0x2000069E
    ldr	r0, [r3, #0]

    // test reading 16bit value from unaligned memory
	// r1 : 0x78fe
	ldr r3,=0x2000069F
    ldrh r1, [r3, #0]
	
    // test reading 16bit value from unaligned memory
	// r1 : 0xfedc
	ldr r3,=0x2000069E
    ldrh r1, [r3, #0]

    // test writing 32bit value to unaligned memory
	// r0 : 0x5678fedc
	ldr r0,=0xffffffff
    str	r0, [r3, #0]
	
    nop
    nop
	nop
loop:
		b loop

 
