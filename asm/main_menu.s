    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START sub_8024B94
sub_8024B94: @ 0x08024B94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _08024C04
	mov sb, r0
	movs r1, #0
	ldr r2, _08024C08
	mov sl, r2
_08024BAC:
	ldr r0, [sp]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08024C14
	ldr r2, _08024C0C
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _08024C5C
	ldr r6, _08024C10
	ldr r2, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	mov ip, r1
_08024BD8:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08024BD8
	b _08024C5C
	.align 2, 0
_08024C04: .4byte gOamBuffer+0x18
_08024C08: .4byte 0x08FC488C
_08024C0C: .4byte 0x080C1CFC
_08024C10: .4byte 0xFFFFF3FF
_08024C14:
	ldr r2, _08024C80
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _08024C5C
	ldr r6, _08024C84
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_08024C38:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08024C38
_08024C5C:
	lsls r0, r7, #2
	add r0, sl
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	add sb, r0
	mov r1, r8
	cmp r1, #3
	bls _08024BAC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024C80: .4byte 0x080C1CF8
_08024C84: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8024C88
sub_8024C88: @ 0x08024C88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08024D30
	ldrb r0, [r0, #1]
	adds r0, r0, r1
	ldrb r7, [r0]
	ldr r2, _08024D34
	ldr r1, _08024D38
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r3, r2, #0
	movs r4, #0
	mov sb, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r0, r0, r3
	mov r8, r0
	ldrb r1, [r5, #1]
	cmp r4, r1
	bhs _08024CE4
	ldr r6, _08024D3C
	ldr r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	mov ip, r0
_08024CC0:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08024CC0
_08024CE4:
	lsls r0, r7, #2
	add r0, sb
	ldr r5, [r0]
	mov r3, r8
	movs r4, #0
	ldrb r1, [r5, #1]
	cmp r4, r1
	bhs _08024D24
	ldr r6, _08024D3C
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_08024CFC:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08024CFC
_08024D24:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024D30: .4byte 0x080C1D04
_08024D34: .4byte gOamBuffer+0x10
_08024D38: .4byte 0x08FC488C
_08024D3C: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8024D40
sub_8024D40: @ 0x08024D40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08024DE8
	ldrb r0, [r0, #1]
	adds r0, r0, r1
	ldrb r7, [r0]
	ldr r2, _08024DEC
	ldr r1, _08024DF0
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r3, r2, #0
	movs r4, #0
	mov sb, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r0, r0, r3
	mov r8, r0
	ldrb r1, [r5, #1]
	cmp r4, r1
	bhs _08024D9C
	ldr r6, _08024DF4
	ldr r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	mov ip, r0
_08024D78:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08024D78
_08024D9C:
	lsls r0, r7, #2
	add r0, sb
	ldr r5, [r0]
	mov r3, r8
	movs r4, #0
	ldrb r1, [r5, #1]
	cmp r4, r1
	bhs _08024DDC
	ldr r6, _08024DF4
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_08024DB4:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08024DB4
_08024DDC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024DE8: .4byte 0x080C1D06
_08024DEC: .4byte gOamBuffer+0x10
_08024DF0: .4byte 0x08FC488C
_08024DF4: .4byte 0xFFFFF3FF

	THUMB_FUNC_START FadeToBlack
FadeToBlack: @ 0x08024DF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _08024E40
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _08024E44
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_08024E18:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _08024E48
	mov ip, r0
_08024E20:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08024E4C
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _08024E54
	.align 2, 0
_08024E40: .4byte 0x02000000
_08024E44: .4byte 0xFFFFFC1F
_08024E48: .4byte 0x000001FF
_08024E4C:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_08024E54:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08024E72
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _08024E78
_08024E72:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_08024E78:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08024E96
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _08024E9E
_08024E96:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_08024E9E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _08024E20
	ldr r0, _08024EC8
	bl SetVBlankCallback
	bl WaitForVBlank
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08024E18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024EC8: .4byte LoadPalettes

	THUMB_FUNC_START sub_8024ECC
sub_8024ECC: @ 0x08024ECC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8025170
	adds r0, r4, #0
	bl sub_80251D8
	adds r0, r4, #0
	bl sub_8025228
	adds r0, r4, #0
	bl sub_80252DC
	adds r0, r4, #0
	bl sub_8024B94
	adds r0, r4, #0
	bl sub_8025340
	adds r0, r4, #0
	bl sub_80253A4
	adds r0, r4, #0
	bl sub_80253E8
	bl DisableDisplay
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r0, _08024F34
	bl SetVBlankCallback
	bl WaitForVBlank
	ldr r1, _08024F38
	ldr r2, _08024F3C
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024F34: .4byte LoadOam
_08024F38: .4byte 0x0400000E
_08024F3C: .4byte 0x00001F03

	THUMB_FUNC_START sub_8024F40
sub_8024F40: @ 0x08024F40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8024B94
	adds r0, r4, #0
	bl sub_8025340
	adds r0, r4, #0
	bl sub_8025424
	ldr r0, _08024F68
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024F68: .4byte LoadOam

	THUMB_FUNC_START sub_8024F6C
sub_8024F6C: @ 0x08024F6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8024C88
	adds r0, r4, #0
	bl sub_8025460
	ldr r1, _08024FA8
	ldr r2, _08024FAC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08024FB0
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024FA8: .4byte 0x0400000C
_08024FAC: .4byte 0x00001E0A
_08024FB0: .4byte LoadOam
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8024FB8
sub_8024FB8: @ 0x08024FB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8024D40
	adds r0, r4, #0
	bl sub_8025460
	ldr r1, _08024FF4
	ldr r2, _08024FF8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08024FFC
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024FF4: .4byte 0x0400000C
_08024FF8: .4byte 0x00001D0A
_08024FFC: .4byte LoadOam

	THUMB_FUNC_START sub_8025000
sub_8025000: @ 0x08025000
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8024D40
	adds r0, r4, #0
	bl sub_8025460
	ldr r1, _0802503C
	ldr r2, _08025040
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08025044
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802503C: .4byte 0x0400000C
_08025040: .4byte 0x00001D0A
_08025044: .4byte LoadOam

	THUMB_FUNC_START sub_8025048
sub_8025048: @ 0x08025048
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08025094
	ldr r1, _08025098
	ldr r0, _0802509C
	ldrb r4, [r0]
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80252B8
	subs r5, #0x10
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80252B8
	adds r0, r6, #0
	bl sub_8025424
	ldr r0, _080250A0
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080250A4
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025094: .4byte gOamBuffer+0x10
_08025098: .4byte 0x08FC488C
_0802509C: .4byte 0x080C1D04
_080250A0: .4byte LoadOam
_080250A4: .4byte 0x0000FBFF
	.byte 0x70, 0xB5, 0x06, 0x1C, 0x11, 0x4D, 0x12, 0x49
	.byte 0x12, 0x48, 0x04, 0x78, 0xA4, 0x00, 0x64, 0x18, 0x20, 0x68, 0x29, 0x1C, 0x32, 0x1C, 0x00, 0xF0
	.byte 0xFB, 0xF8, 0x10, 0x3D, 0x20, 0x68, 0x29, 0x1C, 0x32, 0x1C, 0x00, 0xF0, 0xF5, 0xF8, 0x30, 0x1C
	.byte 0x00, 0xF0, 0xA8, 0xF9, 0x0A, 0x48, 0xE3, 0xF7, 0x81, 0xF8, 0xE3, 0xF7, 0xA1, 0xF8, 0x20, 0xF0
	.byte 0xDD, 0xF9, 0x80, 0x22, 0xD2, 0x04, 0x11, 0x88, 0x06, 0x48, 0x08, 0x40, 0x10, 0x80, 0x70, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x10, 0x84, 0x01, 0x02, 0x8C, 0x48, 0xFC, 0x08, 0x06, 0x1D, 0x0C, 0x08
	.byte 0xC9, 0x54, 0x04, 0x08, 0xFF, 0xFB, 0x00, 0x00

	THUMB_FUNC_START sub_8025108
sub_8025108: @ 0x08025108
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08025154
	ldr r1, _08025158
	ldr r0, _0802515C
	ldrb r4, [r0]
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80252B8
	subs r5, #0x10
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80252B8
	adds r0, r6, #0
	bl sub_8025424
	ldr r0, _08025160
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08025164
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025154: .4byte gOamBuffer+0x10
_08025158: .4byte 0x08FC488C
_0802515C: .4byte 0x080C1D06
_08025160: .4byte LoadOam
_08025164: .4byte 0x0000FBFF
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8025170
sub_8025170: @ 0x08025170
	push {r4, r5, r6, r7, lr}
	ldr r0, _080251C0
	ldr r4, _080251C4
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r7, #0
	movs r0, #0xd0
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r4, #0
_0802518C:
	ldr r0, _080251C8
	adds r0, r4, r0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080251CC
	adds r0, r4, r0
	adds r1, r5, #0
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x40
	adds r6, #0x40
	adds r4, #0x3c
	adds r7, #1
	cmp r7, #0x13
	bls _0802518C
	ldr r0, _080251D0
	ldr r1, _080251D4
	movs r2, #0x10
	bl CpuSet
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080251C0: .4byte 0x08DE0800
_080251C4: .4byte 0x02008400
_080251C8: .4byte 0x08DE168C
_080251CC: .4byte 0x08DE1B3C
_080251D0: .4byte 0x08DE1FEC
_080251D4: .4byte 0x020000A0

	THUMB_FUNC_START sub_80251D8
sub_80251D8: @ 0x080251D8
	push {r4, r5, lr}
	ldr r0, _08025210
	ldr r1, _08025214
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_080251E6:
	ldr r0, _08025218
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0802521C
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _080251E6
	ldr r0, _08025220
	ldr r1, _08025224
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025210: .4byte 0x08DDB898
_08025214: .4byte 0x02000400
_08025218: .4byte 0x08DE02D0
_0802521C: .4byte 0x0200FC00
_08025220: .4byte 0x08DE0780
_08025224: .4byte 0x02000000

	THUMB_FUNC_START sub_8025228
sub_8025228: @ 0x08025228
	push {r4, lr}
	ldr r0, _08025250
	ldr r4, _08025254
	ldr r1, [r4]
	bl LZ77UnCompWram
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r0, _08025258
	ldr r1, _0802525C
	movs r2, #0x50
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025250: .4byte 0x08DE200C
_08025254: .4byte gUnk_8E010F4
_08025258: .4byte 0x08DE2B98
_0802525C: .4byte 0x02000200
	.byte 0xF0, 0xB5, 0x02, 0x1C, 0x0C, 0x1C, 0x05, 0x98, 0x1B, 0x06, 0x1B, 0x0E, 0x00, 0x06, 0x00, 0x0E
	.byte 0x00, 0x26, 0x51, 0x78, 0x8E, 0x42, 0x19, 0xD2, 0x0E, 0x4F, 0x85, 0x02, 0xC0, 0x20, 0x00, 0x01
	.byte 0x05, 0x40, 0x9B, 0x02, 0x03, 0x40, 0x52, 0x68, 0x8C, 0x46, 0x50, 0x88, 0x00, 0x04, 0x11, 0x88
	.byte 0x08, 0x43, 0x38, 0x40, 0x20, 0x60, 0x28, 0x43, 0x01, 0xC4, 0x90, 0x88, 0x38, 0x40, 0x20, 0x60
	.byte 0x18, 0x43, 0x01, 0xC4, 0x08, 0x32, 0x01, 0x36, 0x66, 0x45, 0xEE, 0xD3, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xFF, 0xF3, 0xFF, 0xFF

	THUMB_FUNC_START sub_80252B8
sub_80252B8: @ 0x080252B8
	push {r4, lr}
	movs r2, #0
	ldrb r0, [r0, #1]
	cmp r2, r0
	bhs _080252D4
	movs r4, #0x80
	lsls r4, r4, #2
	movs r3, #0x80
	lsls r3, r3, #0x11
_080252CA:
	stm r1!, {r4}
	stm r1!, {r3}
	adds r2, #1
	cmp r2, r0
	blo _080252CA
_080252D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80252DC
sub_80252DC: @ 0x080252DC
	push {r4, r5, lr}
	ldr r0, _0802533C
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	movs r1, #0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r4, r5, #0
_080252F0:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _080252F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802533C: .4byte gOamBuffer

	THUMB_FUNC_START sub_8025340
sub_8025340: @ 0x08025340
	push {r4, r5, r6, r7, lr}
	ldr r2, _08025394
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _08025398
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r0, #4]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r5, r0, r1
	ldr r3, _0802539C
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _0802538C
	ldr r6, _080253A0
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_0802536A:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0802536A
_0802538C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025394: .4byte 0x080C1D00
_08025398: .4byte 0x08FC488C
_0802539C: .4byte gOamBuffer+8
_080253A0: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_80253A4
sub_80253A4: @ 0x080253A4
	ldr r0, _080253C8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080253CC
	strh r1, [r0]
	ldr r0, _080253D0
	strh r1, [r0]
	ldr r0, _080253D4
	strh r1, [r0]
	ldr r0, _080253D8
	strh r1, [r0]
	ldr r0, _080253DC
	strh r1, [r0]
	ldr r0, _080253E0
	strh r1, [r0]
	ldr r0, _080253E4
	strh r1, [r0]
	bx lr
	.align 2, 0
_080253C8: .4byte gBG0VOFS
_080253CC: .4byte gBG0HOFS
_080253D0: .4byte gBG1VOFS
_080253D4: .4byte gBG1HOFS
_080253D8: .4byte gBG2VOFS
_080253DC: .4byte gBG2HOFS
_080253E0: .4byte gBG3VOFS
_080253E4: .4byte gBG3HOFS

	THUMB_FUNC_START sub_80253E8
sub_80253E8: @ 0x080253E8
	ldr r2, _0802540C
	ldr r3, _08025410
	adds r1, r3, #0
	strh r1, [r2]
	ldr r3, _08025414
	ldr r2, _08025418
	ldr r1, _0802541C
	ldrb r0, [r0, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08025420
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802540C: .4byte gBLDCNT
_08025410: .4byte 0x000008D8
_08025414: .4byte gBLDALPHA
_08025418: .4byte 0x080C1D1A
_0802541C: .4byte 0x080C1D11
_08025420: .4byte gBLDY

	THUMB_FUNC_START sub_8025424
sub_8025424: @ 0x08025424
	ldr r2, _08025448
	ldr r3, _0802544C
	adds r1, r3, #0
	strh r1, [r2]
	ldr r3, _08025450
	ldr r2, _08025454
	ldr r1, _08025458
	ldrb r0, [r0, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _0802545C
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025448: .4byte gBLDCNT
_0802544C: .4byte 0x000008D8
_08025450: .4byte gBLDALPHA
_08025454: .4byte 0x080C1D1A
_08025458: .4byte 0x080C1D11
_0802545C: .4byte gBLDY

	THUMB_FUNC_START sub_8025460
sub_8025460: @ 0x08025460
	ldr r2, _08025484
	ldr r3, _08025488
	adds r1, r3, #0
	strh r1, [r2]
	ldr r3, _0802548C
	ldr r2, _08025490
	ldr r1, _08025494
	ldrb r0, [r0, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08025498
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025484: .4byte gBLDCNT
_08025488: .4byte 0x00000CD8
_0802548C: .4byte gBLDALPHA
_08025490: .4byte 0x080C1D1A
_08025494: .4byte 0x080C1D11
_08025498: .4byte gBLDY

.align 2, 0
