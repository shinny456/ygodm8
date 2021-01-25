    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_8025CCC
sub_8025CCC: @ 0x08025CCC
	push {r4, r5, r6, lr}
	bl GetNumpadCursorPos
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_8025C88
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08025D44
	ldr r0, _08025D38
	lsls r3, r4, #2
	adds r3, r3, r0
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	movs r2, #0xff
	adds r5, r2, #0
	ands r5, r1
	adds r5, #0x30
	ldr r4, _08025D3C
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r2
	orrs r0, r5
	adds r1, r4, #0
	adds r1, #0x40
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	ldr r2, _08025D40
	adds r5, r2, #0
	ands r5, r1
	adds r5, #0x48
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r2
	orrs r0, r5
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #2
	strh r6, [r0]
	b _08025DA0
	.align 2, 0
_08025D38: .4byte 0x08E01248
_08025D3C: .4byte gOamBuffer
_08025D40: .4byte 0x000001FF
_08025D44:
	subs r2, r6, #1
	lsls r2, r2, #0x18
	ldr r1, _08025DA8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r2, r2, #0x15
	adds r2, r2, r0
	ldr r0, [r2, #4]
	ldrh r1, [r0]
	movs r3, #0xff
	adds r5, r3, #0
	ands r5, r1
	adds r5, #0x30
	ldr r0, _08025DAC
	mov ip, r0
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r3
	orrs r0, r5
	mov r1, ip
	adds r1, #0x40
	movs r4, #0
	strh r0, [r1]
	ldr r0, [r2, #4]
	ldrh r1, [r0, #2]
	ldr r3, _08025DB0
	adds r5, r3, #0
	ands r5, r1
	adds r5, #0x48
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r3
	orrs r0, r5
	mov r1, ip
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r2, #4]
	ldrh r1, [r0, #4]
	mov r0, ip
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
_08025DA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025DA8: .4byte 0x08E01328
_08025DAC: .4byte gOamBuffer
_08025DB0: .4byte 0x000001FF

	THUMB_FUNC_START sub_8025DB4
sub_8025DB4: @ 0x08025DB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	movs r0, #0xff
	mov r8, r0
	ldr r1, _08025E6C
	mov ip, r1
	movs r3, #0xf0
	lsls r3, r3, #8
	mov sb, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sl, r0
_08025DD4:
	ldr r1, _08025E70
	adds r0, r7, r1
	ldrb r5, [r0]
	lsls r5, r5, #2
	ldr r3, _08025E74
	adds r5, r5, r3
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0]
	mov r1, r8
	ands r1, r3
	adds r1, #0x12
	lsls r2, r7, #3
	add r2, ip
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r3
	mov r3, r8
	ands r1, r3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #2]
	lsls r0, r7, #4
	adds r0, #0x38
	mov r2, r8
	ands r2, r6
	adds r2, r2, r0
	lsls r4, r7, #2
	adds r3, r4, #1
	lsls r3, r3, #1
	add r3, ip
	mov r1, sl
	ands r1, r6
	ldr r0, _08025E78
	ands r2, r0
	orrs r1, r2
	strh r1, [r3]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0, #4]
	mov r1, sb
	ands r1, r3
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x16
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	adds r2, r4, #2
	lsls r2, r2, #1
	add r2, ip
	ldr r0, _08025E7C
	ands r0, r3
	mov r3, sb
	ands r1, r3
	orrs r0, r1
	strh r0, [r2]
	adds r4, #3
	lsls r4, r4, #1
	add r4, ip
	movs r0, #0
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _08025DD4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025E6C: .4byte gOamBuffer
_08025E70: .4byte g2021DC0
_08025E74: .4byte 0x08E0119C
_08025E78: .4byte 0x000001FF
_08025E7C: .4byte 0x00000FFF

	THUMB_FUNC_START sub_8025E80
sub_8025E80: @ 0x08025E80
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_8025C44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08025F24
	adds r0, r4, r0
	ldrb r5, [r0]
	bl sub_8025C5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r5, r5, r1
	lsls r5, r5, #0x18
	ldr r0, _08025F28
	lsrs r5, r5, #0x16
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r6, [r0]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r6
	adds r0, #0x12
	ldr r1, _08025F2C
	mov r8, r1
	lsls r2, r4, #3
	add r2, r8
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r6
	ands r0, r3
	orrs r1, r0
	movs r6, #0
	strh r1, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	lsls r0, r4, #4
	adds r0, #0x38
	ands r3, r1
	adds r3, r3, r0
	lsls r4, r4, #2
	adds r2, r4, #1
	lsls r2, r2, #1
	add r2, r8
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r1, _08025F30
	ands r3, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0, #4]
	lsrs r1, r3, #0xc
	adds r1, #3
	lsls r1, r1, #0x1c
	adds r2, r4, #2
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _08025F34
	ands r0, r3
	lsrs r1, r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	adds r4, #3
	lsls r4, r4, #1
	add r4, r8
	strh r6, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025F24: .4byte g2021DC0
_08025F28: .4byte 0x08E0119C
_08025F2C: .4byte gOamBuffer
_08025F30: .4byte 0x000001FF
_08025F34: .4byte 0x00000FFF

	THUMB_FUNC_START sub_8025F38
sub_8025F38: @ 0x08025F38
	push {r4, r5, lr}
	movs r1, #0
	movs r5, #0
	ldr r0, _08025F60
	movs r4, #0xa0
	movs r3, #0xf0
	movs r2, #0xc0
	lsls r2, r2, #4
_08025F48:
	strh r4, [r0]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	strh r5, [r0, #6]
	adds r0, #8
	adds r1, #1
	cmp r1, #0x7f
	bls _08025F48
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025F60: .4byte gOamBuffer

	THUMB_FUNC_START sub_8025F64
sub_8025F64: @ 0x08025F64
	push {r4, r5, r6, lr}
	ldr r0, _08025FC4
	ldr r1, _08025FC8
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_800E074
	ldr r0, _08025FCC
	ldr r1, _08025FD0
	ldr r2, _08025FD4
	bl CpuSet
	movs r4, #0
	movs r5, #0
_08025F80:
	ldr r0, _08025FD8
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _08025FDC
	adds r1, r1, r6
	ldr r2, _08025FE0
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _08025F80
	ldr r0, _08025FE4
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r6, r2
	bl LZ77UnCompWram
	ldr r0, _08025FE8
	ldr r4, _08025FEC
	ldr r2, _08025FF0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08025FF4
	adds r4, #0x60
	ldr r2, _08025FF8
	adds r1, r4, #0
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025FC4: .4byte 0x080C1DD4
_08025FC8: .4byte 0x02000400
_08025FCC: .4byte 0x080C5840
_08025FD0: .4byte 0x02000000
_08025FD4: .4byte 0x04000020
_08025FD8: .4byte 0x080C58C0
_08025FDC: .4byte 0x0200FC00
_08025FE0: .4byte 0x0400000F
_08025FE4: .4byte 0x080C61B8
_08025FE8: .4byte 0x080C5EF0
_08025FEC: .4byte 0x02000200
_08025FF0: .4byte 0x04000018
_08025FF4: .4byte 0x080C5D70
_08025FF8: .4byte 0x04000010

	THUMB_FUNC_START sub_8025FFC
sub_8025FFC: @ 0x08025FFC
	push {lr}
	bl LoadPalettes
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8026014
sub_8026014: @ 0x08026014
  bx lr

	THUMB_FUNC_START sub_8026018
sub_8026018: @ 0x08026018
  bx lr

	THUMB_FUNC_START sub_802601C
sub_802601C: @ 0x0802601C
	push {lr}
	bl sub_8045718
	ldr r0, _08026048
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _0802604C
	ldr r3, _08026050
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08026054
	strh r1, [r0]
	ldr r0, _08026058
	strh r1, [r0]
	bl LoadBgOffsets
	pop {r0}
	bx r0
	.align 2, 0
_08026048: .4byte 0x04000050
_0802604C: .4byte 0x0400000E
_08026050: .4byte 0x00001F03
_08026054: .4byte gBG3VOFS
_08026058: .4byte gBG3HOFS
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8026060
sub_8026060: @ 0x08026060
	push {lr}
	bl LoadVRAM
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026070
sub_8026070: @ 0x08026070
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

  	.align 2, 0
