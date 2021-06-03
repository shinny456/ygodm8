    .include "asm/macro.inc"
Start:
    b Init

    .include "asm/rom_header.inc"

  ARM_FUNC_START Init
Init:
    mov r0, #0x12
    msr cpsr_fc, r0
    ldr sp, _080000F8
    mov r0, #0x1f
    msr cpsr_fc, r0
    ldr sp, _080000F4
    ldr r1, =0x03007FFC
    adr r0, IntrMain
    str r0, [r1]
    ldr r1, =AgbMain
    mov lr, pc
    bx r1
    b Init
_080000F4: .4byte 0x03007F00
_080000F8: .4byte 0x03007FA0

	ARM_FUNC_START IntrMain
IntrMain: @ 0x080000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr ip, [r3]
	mrs r0, spsr
	push {r0, r3, ip, lr}
	and r1, ip, ip, lsr #16
	mov r2, #0
	ands r0, r1, #1
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #2
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #4
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #8
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x1000
	bne _080001BC
	add r2, r2, #4
	ands r0, r1, #0x2000
_080001B8:
	bne _080001B8
_080001BC:
	strh r0, [r3, #2]
	mov r1, #0x20c0
	and r1, r1, ip
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, =0x03000C00
	add r1, r1, r2
	ldr r0, [r1]
	stmdb sp!, {lr}
	adr lr, _080001F4
	bx r0
_080001F4:
	.byte 0x00, 0x40, 0xBD, 0xE8, 0x00, 0x30, 0x0F, 0xE1, 0xDF, 0x30, 0xC3, 0xE3
	.byte 0x92, 0x30, 0x83, 0xE3, 0x03, 0xF0, 0x29, 0xE1, 0x09, 0x50, 0xBD, 0xE8, 0xB0, 0xC0, 0xC3, 0xE1
	.byte 0x00, 0xF0, 0x69, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1

