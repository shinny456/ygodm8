    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START CpuFastSet
CpuFastSet: @ 0x08058750
	svc #0xc
	bx lr

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x08058754
	svc #0xb
	bx lr

	THUMB_FUNC_START HuffUnComp
HuffUnComp: @ 0x08058758
	svc #0x13
	bx lr

	THUMB_FUNC_START LZ77UnCompWram
LZ77UnCompWram: @ 0x0805875C
	svc #0x11
	bx lr

	THUMB_FUNC_START sub_8058760
sub_8058760: @ 0x08058760
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _08058798
	ldrh r0, [r2]
	ldr r1, _0805879C
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08058790
	adds r1, r0, #0
_08058782:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _08058782
_08058790:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058798: .4byte 0x04000204
_0805879C: .4byte 0x0000FFFC

	THUMB_FUNC_START sub_80587A0
sub_80587A0: @ 0x080587A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080587D8
	ldrh r0, [r2]
	ldr r1, _080587DC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080587D0
	adds r1, r0, #0
_080587C2:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _080587C2
_080587D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080587D8: .4byte 0x04000204
_080587DC: .4byte 0x0000FFFC

	THUMB_FUNC_START sub_80587E0
sub_80587E0: @ 0x080587E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _08058814
	ldrh r0, [r2]
	ldr r1, _08058818
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08058822
	adds r2, r0, #0
_08058802:
	ldrb r1, [r4]
	ldrb r0, [r5]
	adds r5, #1
	adds r4, #1
	cmp r1, r0
	beq _0805881C
	subs r0, r4, #1
	b _08058824
	.align 2, 0
_08058814: .4byte 0x04000204
_08058818: .4byte 0x0000FFFC
_0805881C:
	subs r3, #1
	cmp r3, r2
	bne _08058802
_08058822:
	movs r0, #0
_08058824:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805882C
sub_805882C: @ 0x0805882C
	ldr r2, _08058840
	movs r0, #1
	eors r2, r0
	ldr r3, _08058844
	ldr r0, _08058848
	ldr r1, _08058840
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08058858
	.align 2, 0
_08058840: .4byte 0x08058761
_08058844: .4byte 0x0201F0D0
_08058848: .4byte 0x080587A1
_0805884C:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08058858:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0805884C
	ldr r1, _08058878
	ldr r0, _0805887C
	str r0, [r1]
	ldr r2, _08058880
	movs r0, #1
	eors r2, r0
	ldr r3, _08058884
	ldr r0, _08058888
	ldr r1, _08058880
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08058898
	.align 2, 0
_08058878: .4byte 0x020245AC
_0805887C: .4byte 0x0201F0D1
_08058880: .4byte 0x080587E1
_08058884: .4byte 0x0201F030
_08058888: .4byte 0x0805882D
_0805888C:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08058898:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0805888C
	ldr r1, _080588B4
	ldr r0, _080588B8
	str r0, [r1]
	ldr r2, _080588BC
	ldrh r0, [r2]
	ldr r1, _080588C0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_080588B4: .4byte 0x020245B0
_080588B8: .4byte 0x0201F031
_080588BC: .4byte 0x04000204
_080588C0: .4byte 0x0000FFFC

	THUMB_FUNC_START sub_80588C4
sub_80588C4: @ 0x080588C4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _080588D6
_080588D0:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080588D6:
	cmp r7, #2
	bhi _080588F8
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80587A0
	ldr r0, _08058900
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_805AAC4
	adds r3, r0, #0
	cmp r3, #0
	bne _080588D0
_080588F8:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08058900: .4byte 0x020245B0

	THUMB_FUNC_START sub_8058904
sub_8058904: @ 0x08058904
	add r2, pc, #0x0
	bx r2
	.byte 0x90, 0x21, 0x83, 0xE0, 0x00, 0x00, 0x83, 0xE2
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	THUMB_FUNC_START sub_8058914
sub_8058914: @ 0x08058914
	ldr r0, _08058980
	ldr r0, [r0]
	ldr r2, _08058984
	ldr r3, [r0]
	cmp r2, r3
	beq _08058922
	bx lr
_08058922:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08058946
	ldr r2, _0805898C
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08058944
	adds r2, #0xe4
_08058944:
	adds r1, r1, r2
_08058946:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08058956
	ldr r0, [r0, #0x24]
	bl sub_8058D36
	ldr r0, [sp, #0x18]
_08058956:
	ldr r3, [r0, #0x28]
	bl sub_8058D36
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08058990
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08058976
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08058976:
	str r5, [sp, #8]
	ldr r6, _08058994
	ldr r3, _08058988
	bx r3
	.align 2, 0
_08058980: .4byte 0x03007FF0
_08058984: .4byte 0x68736D53
_08058988: .4byte 0x03000001
_0805898C: .4byte 0x04000006
_08058990: .4byte 0x00000350
_08058994: .4byte 0x00000630
	.byte 0x43, 0x79, 0x00, 0x2B, 0x2C, 0xD0, 0x01, 0xA1
	.byte 0x08, 0x47, 0x00, 0x00, 0x02, 0x00, 0x54, 0xE3, 0x35, 0x7E, 0x80, 0x02, 0x08, 0x70, 0x85, 0x10
	.byte 0x08, 0x40, 0xA0, 0xE1, 0xD6, 0x00, 0x95, 0xE1, 0xD0, 0x10, 0xD5, 0xE1, 0x01, 0x00, 0x80, 0xE0
	.byte 0xD6, 0x10, 0x97, 0xE1, 0x01, 0x00, 0x80, 0xE0, 0xD1, 0x10, 0xD7, 0xE0, 0x01, 0x00, 0x80, 0xE0
	.byte 0x90, 0x03, 0x01, 0xE0, 0xC1, 0x04, 0xA0, 0xE1, 0x80, 0x00, 0x10, 0xE3, 0x01, 0x00, 0x80, 0x12
	.byte 0x06, 0x00, 0xC5, 0xE7, 0x01, 0x00, 0xC5, 0xE4, 0x01, 0x40, 0x54, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA
	.byte 0x2F, 0x00, 0x8F, 0xE2, 0x10, 0xFF, 0x2F, 0xE1, 0x00, 0x20, 0x41, 0x46, 0x76, 0x19, 0xC9, 0x08
	.byte 0x01, 0xD3, 0x01, 0xC5, 0x01, 0xC6, 0x49, 0x08, 0x03, 0xD3, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5
	.byte 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5
	.byte 0x01, 0xC6, 0x01, 0x39, 0xF5, 0xDC, 0x06, 0x9C, 0xA0, 0x69, 0x84, 0x46, 0xA0, 0x79, 0x50, 0x34
	.byte 0x01, 0x90, 0x63, 0x6A, 0x05, 0x98, 0x00, 0x28, 0x0A, 0xD0, 0x04, 0x49, 0x09, 0x78, 0xA0, 0x29
	.byte 0x00, 0xD2, 0xE4, 0x31, 0x81, 0x42, 0x03, 0xD3, 0x6B, 0xE1, 0x00, 0x00, 0x06, 0x00, 0x00, 0x04
	.byte 0x26, 0x78, 0xC7, 0x20, 0x30, 0x42, 0x00, 0xD1, 0x5E, 0xE1, 0x80, 0x20, 0x30, 0x42, 0x14, 0xD0
	.byte 0x40, 0x20, 0x30, 0x42, 0x19, 0xD1, 0x03, 0x26, 0x26, 0x70, 0x18, 0x1C, 0x10, 0x30, 0xA0, 0x62
	.byte 0xD8, 0x68, 0xA0, 0x61, 0x00, 0x25, 0x65, 0x72, 0xE5, 0x61, 0xDA, 0x78, 0xC0, 0x20, 0x10, 0x42
	.byte 0x2F, 0xD0, 0x10, 0x20, 0x06, 0x43, 0x26, 0x70, 0x2B, 0xE0, 0x65, 0x7A, 0x04, 0x20, 0x30, 0x42
	.byte 0x06, 0xD0, 0x60, 0x7B, 0x01, 0x38, 0x60, 0x73, 0x2A, 0xD8, 0x00, 0x20, 0x20, 0x70, 0x3B, 0xE1
	.byte 0x40, 0x20, 0x30, 0x42, 0x0C, 0xD0, 0xE0, 0x79, 0x45, 0x43, 0x2D, 0x0A, 0x20, 0x7B, 0x85, 0x42
	.byte 0x1E, 0xD8, 0x25, 0x7B, 0x00, 0x2D, 0xF0, 0xD0, 0x04, 0x20, 0x06, 0x43, 0x26, 0x70, 0x17, 0xE0
	.byte 0x03, 0x22, 0x32, 0x40, 0x02, 0x2A, 0x0A, 0xD1, 0x60, 0x79, 0x45, 0x43, 0x2D, 0x0A, 0xA0, 0x79
	.byte 0x85, 0x42, 0x0D, 0xD8, 0x05, 0x1C, 0xEC, 0xD0, 0x01, 0x3E, 0x26, 0x70, 0x08, 0xE0, 0x03, 0x2A
	.byte 0x06, 0xD1, 0x20, 0x79, 0x2D, 0x18, 0xFF, 0x2D, 0x02, 0xD3, 0xFF, 0x25, 0x01, 0x3E, 0x26, 0x70
	.byte 0x65, 0x72, 0x06, 0x98, 0xC0, 0x79, 0x01, 0x30, 0x68, 0x43, 0x05, 0x09, 0xA0, 0x78, 0x68, 0x43
	.byte 0x00, 0x0A, 0xA0, 0x72, 0xE0, 0x78, 0x68, 0x43, 0x00, 0x0A, 0xE0, 0x72, 0x10, 0x20, 0x30, 0x40
	.byte 0x04, 0x90, 0x07, 0xD0, 0x18, 0x1C, 0x10, 0x30, 0x99, 0x68, 0x40, 0x18, 0x03, 0x90, 0xD8, 0x68
	.byte 0x40, 0x1A, 0x04, 0x90, 0x02, 0x9D, 0xA2, 0x69, 0xA3, 0x6A, 0x01, 0xA0, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0x80, 0x8D, 0xE5, 0x0A, 0xA0, 0xD4, 0xE5, 0x0B, 0xB0, 0xD4, 0xE5, 0x0A, 0xA8, 0xA0, 0xE1
	.byte 0x0B, 0xB8, 0xA0, 0xE1, 0x01, 0x00, 0xD4, 0xE5, 0x08, 0x00, 0x10, 0xE3, 0x47, 0x00, 0x00, 0x0A
	.byte 0x04, 0x00, 0x52, 0xE3, 0x19, 0x00, 0x00, 0xDA, 0x08, 0x20, 0x52, 0xE0, 0x00, 0xE0, 0xA0, 0xC3
	.byte 0x05, 0x00, 0x00, 0xCA, 0x08, 0xE0, 0xA0, 0xE1, 0x08, 0x20, 0x82, 0xE0, 0x04, 0x80, 0x42, 0xE2
	.byte 0x08, 0xE0, 0x4E, 0xE0, 0x03, 0x20, 0x12, 0xE2, 0x04, 0x20, 0xA0, 0x03, 0x00, 0x60, 0x95, 0xE5
	.byte 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x67, 0x74, 0x81, 0xE0
	.byte 0x01, 0x51, 0x95, 0xE2, 0xF6, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4
	.byte 0x04, 0x80, 0x58, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA, 0x0E, 0x80, 0x98, 0xE0, 0x50, 0x00, 0x00, 0x0A
	.byte 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0
	.byte 0xFF, 0x18, 0xC1, 0xE3, 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x67, 0x74, 0x81, 0xE0, 0x01, 0x20, 0x52, 0xE2, 0x12, 0x00, 0x00, 0x0A, 0x01, 0x51, 0x95, 0xE2
	.byte 0xF4, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2
	.byte 0xD2, 0xFF, 0xFF, 0xCA, 0x3E, 0x00, 0x00, 0xEA, 0x18, 0x00, 0x9D, 0xE5, 0x00, 0x00, 0x50, 0xE3
	.byte 0x05, 0x00, 0x00, 0x0A, 0x14, 0x30, 0x9D, 0xE5, 0x00, 0x90, 0x62, 0xE2, 0x02, 0x20, 0x90, 0xE0
	.byte 0x2B, 0x00, 0x00, 0xCA, 0x00, 0x90, 0x49, 0xE0, 0xFB, 0xFF, 0xFF, 0xEA, 0x10, 0x10, 0xBD, 0xE8
	.byte 0x00, 0x20, 0xA0, 0xE3, 0x03, 0x00, 0x00, 0xEA, 0x10, 0x20, 0x9D, 0xE5, 0x00, 0x00, 0x52, 0xE3
	.byte 0x0C, 0x30, 0x9D, 0x15, 0xE8, 0xFF, 0xFF, 0x1A, 0x00, 0x20, 0xC4, 0xE5, 0x25, 0x0F, 0xA0, 0xE1
	.byte 0x03, 0x51, 0xC5, 0xE3, 0x03, 0x00, 0x60, 0xE2, 0x80, 0x01, 0xA0, 0xE1, 0x76, 0x60, 0xA0, 0xE1
	.byte 0x77, 0x70, 0xA0, 0xE1, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x26, 0x00, 0x00, 0xEA
	.byte 0x10, 0x10, 0x2D, 0xE9, 0x1C, 0xE0, 0x94, 0xE5, 0x20, 0x10, 0x94, 0xE5, 0x9C, 0x01, 0x04, 0xE0
	.byte 0xD0, 0x00, 0xD3, 0xE1, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0, 0x00, 0x60, 0x95, 0xE5
	.byte 0x30, 0x76, 0x95, 0xE5, 0x9E, 0x01, 0x09, 0xE0, 0xC9, 0x9B, 0x80, 0xE0, 0x9A, 0x09, 0x0C, 0xE0
	.byte 0xFF, 0xC8, 0xCC, 0xE3, 0x66, 0x64, 0x8C, 0xE0, 0x9B, 0x09, 0x0C, 0xE0, 0xFF, 0xC8, 0xCC, 0xE3
	.byte 0x67, 0x74, 0x8C, 0xE0, 0x04, 0xE0, 0x8E, 0xE0, 0xAE, 0x9B, 0xB0, 0xE1, 0x07, 0x00, 0x00, 0x0A
	.byte 0xFE, 0xE5, 0xCE, 0xE3, 0x09, 0x20, 0x52, 0xE0, 0xCE, 0xFF, 0xFF, 0xDA, 0x01, 0x90, 0x59, 0xE2
	.byte 0x01, 0x00, 0x80, 0x00, 0xD9, 0x00, 0xB3, 0x11, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0
	.byte 0x01, 0x51, 0x95, 0xE2, 0xEA, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4
	.byte 0x04, 0x80, 0x58, 0xE2, 0xE4, 0xFF, 0xFF, 0xCA, 0x01, 0x30, 0x43, 0xE2, 0x10, 0x10, 0xBD, 0xE8
	.byte 0x1C, 0xE0, 0x84, 0xE5, 0x18, 0x20, 0x84, 0xE5, 0x28, 0x30, 0x84, 0xE5, 0x00, 0x80, 0x9D, 0xE5
	.byte 0x01, 0x00, 0x8F, 0xE2, 0x10, 0xFF, 0x2F, 0xE1, 0x01, 0x98, 0x01, 0x38, 0x01, 0xDD, 0x40, 0x34
	.byte 0x86, 0xE6, 0x06, 0x98, 0x04, 0x4B, 0x03, 0x60, 0x07, 0xB0, 0xFF, 0xBC, 0x80, 0x46, 0x89, 0x46
	.byte 0x92, 0x46, 0x9B, 0x46, 0x08, 0xBC


	.GLOBAL sub_8058D36
	.THUMB
	.THUMB_FUNC
	.TYPE sub_8058D36, function
sub_8058D36: @ 0x08058D36
	bx r3
	.byte 0x53, 0x6D, 0x73, 0x68, 0xA4, 0x46, 0x00, 0x21
	.byte 0x00, 0x22, 0x00, 0x23, 0x00, 0x24, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x64, 0x46
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8058D54
sub_8058D54: @ 0x08058D54
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08058D72
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08058D66
	str r1, [r2, #0x34]
	b _08058D68
_08058D66:
	str r1, [r3, #0x20]
_08058D68:
	cmp r1, #0
	beq _08058D6E
	str r2, [r1, #0x30]
_08058D6E:
	movs r1, #0
	str r1, [r0, #0x2c]
_08058D72:
	bx lr
sub_8058D74:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08058D98
_08058D7E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08058D8C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08058D8C:
	adds r0, r4, #0
	bl sub_8058D54
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08058D7E
_08058D98:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058DA4
sub_8058DA4: @ 0x08058DA4
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08058DD4
_08058DAA:
	ldr r3, [r2]
	bl sub_8058DBE
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08058DAA
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058DBC
sub_8058DBC: @ 0x08058DBC
	ldrb r3, [r2]
sub_8058DBE:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08058DD0
	ldr r0, _08058DD4
	cmp r2, r0
	blo _08058DCE
	lsrs r0, r2, #0xe
	beq _08058DD0
_08058DCE:
	movs r3, #0
_08058DD0:
	pop {r0}
	bx lr
	.align 2, 0
_08058DD4: .4byte 0x08AEA65C

	THUMB_FUNC_START sub_8058DD8
sub_8058DD8: @ 0x08058DD8
	ldr r2, [r1, #0x40]


sub_08058DDA: @ 0x08058DDA
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b sub_8058DBE
	.byte 0x00, 0x00
sub_8058DE4:
	push {lr}
_08058DE6:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_8058DBC
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8058E04
sub_8058E04: @ 0x08058E04
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08058E1C
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b sub_8058DE4
_08058E1C:
	b sub_8058D74
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058E20
sub_8058E20: @ 0x08058E20
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08058E32
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08058E32:
	bx lr

	THUMB_FUNC_START sub_8058E34
sub_8058E34: @ 0x08058E34
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08058E44
	adds r2, #1
	str r2, [r1, #0x40]
	b _08058DE6
_08058E44:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_8058DD8
	cmp ip, r3
	bhs _08058E56
	b _08058DE6
_08058E56:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058E64
sub_8058E64: @ 0x08058E64
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0x1d]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058E70
sub_8058E70: @ 0x08058E70
	mov ip, lr
	bl sub_8058DD8
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	THUMB_FUNC_START sub_8058E84
sub_8058E84: @ 0x08058E84
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058E98
sub_8058E98: @ 0x08058E98
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl sub_8058DBE
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl sub_8058DBE
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl sub_8058DBE
	str r3, [r1, #0x2c]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058EC8
sub_8058EC8: @ 0x08058EC8
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058EDC
sub_8058EDC: @ 0x08058EDC
	mov ip, lr
	bl sub_8058DD8
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8058EF0
sub_8058EF0: @ 0x08058EF0
	mov ip, lr
	bl sub_8058DD8
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8058F04
sub_8058F04: @ 0x08058F04
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058F18
sub_8058F18: @ 0x08058F18
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0x1b]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058F24
sub_8058F24: @ 0x08058F24
	mov ip, lr
	bl sub_8058DD8
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08058F3A
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08058F3A:
	bx ip

	THUMB_FUNC_START sub_8058F3C
sub_8058F3C: @ 0x08058F3C
	mov ip, lr
	bl sub_8058DD8
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8058F50
sub_8058F50: @ 0x08058F50
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08058F64
	adds r0, r0, r3
	bl sub_08058DDA
	strb r3, [r0]
	bx ip
	.align 2, 0
_08058F64: .4byte 0x04000060

	THUMB_FUNC_START sub_8058F68
sub_8058F68: @ 0x08058F68
	ldr r0, _08059214
	ldr r0, [r0]
	ldr r2, _08059218
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08058FA8
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08058FA8
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08058FAC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08058F8E
	ldr r1, _08058FB0
	str r1, [r2, #8]
_08058F8E:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08058F98
	ldr r1, _08058FB0
	str r1, [r2, #0x14]
_08058F98:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08058FA8:
	bx lr
	.align 2, 0
_08058FAC: .4byte 0x040000BC
_08058FB0: .4byte 0x84400004
	.byte 0x98, 0x4A, 0x43, 0x6B, 0x9A, 0x42, 0x00, 0xD0, 0x70, 0x47, 0x01, 0x33
	.byte 0x43, 0x63, 0x01, 0xB5, 0x83, 0x6B, 0x00, 0x2B, 0x02, 0xD0, 0xC0, 0x6B, 0x00, 0xF0, 0x1E, 0xF9
	.byte 0x01, 0xBC, 0xF0, 0xB4, 0x44, 0x46, 0x4D, 0x46, 0x56, 0x46, 0x5F, 0x46, 0xF0, 0xB4, 0x07, 0x1C
	.byte 0x78, 0x68, 0x00, 0x28, 0x00, 0xDA, 0x09, 0xE1, 0x8A, 0x48, 0x00, 0x68, 0x80, 0x46, 0x38, 0x1C
	.byte 0x00, 0xF0, 0x56, 0xFF, 0x78, 0x68, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0xE0, 0x78, 0x8C, 0x39, 0x8C
	.byte 0x40, 0x18, 0xA3, 0xE0, 0x3E, 0x7A, 0xFD, 0x6A, 0x01, 0x23, 0x00, 0x24, 0x28, 0x78, 0x80, 0x21
	.byte 0x01, 0x42, 0x00, 0xD1, 0x88, 0xE0, 0x9A, 0x46, 0x1C, 0x43, 0xA3, 0x46, 0x2C, 0x6A, 0x00, 0x2C
	.byte 0x13, 0xD0, 0x21, 0x78, 0xC7, 0x20, 0x08, 0x42, 0x09, 0xD0, 0x20, 0x7C, 0x00, 0x28, 0x09, 0xD0
	.byte 0x01, 0x38, 0x20, 0x74, 0x06, 0xD1, 0x40, 0x20, 0x01, 0x43, 0x21, 0x70, 0x02, 0xE0, 0x20, 0x1C
	.byte 0x00, 0xF0, 0xAC, 0xFC, 0x64, 0x6B, 0x00, 0x2C, 0xEB, 0xD1, 0x2B, 0x78, 0x40, 0x20, 0x18, 0x42
	.byte 0x3A, 0xD0, 0x28, 0x1C, 0x00, 0xF0, 0xAC, 0xFC, 0x80, 0x20, 0x28, 0x70, 0x02, 0x20, 0xE8, 0x73
	.byte 0x40, 0x20, 0xE8, 0x74, 0x16, 0x20, 0x68, 0x76, 0x01, 0x20, 0xA9, 0x1D, 0x88, 0x77, 0x2B, 0xE0
	.byte 0x2A, 0x6C, 0x11, 0x78, 0x80, 0x29, 0x01, 0xD2, 0xE9, 0x79, 0x04, 0xE0, 0x01, 0x32, 0x2A, 0x64
	.byte 0xBD, 0x29, 0x00, 0xD3, 0xE9, 0x71, 0xCF, 0x29, 0x08, 0xD3, 0x40, 0x46, 0x83, 0x6B, 0x08, 0x1C
	.byte 0xCF, 0x38, 0x39, 0x1C, 0x2A, 0x1C, 0x00, 0xF0, 0xB9, 0xF8, 0x15, 0xE0, 0xB0, 0x29, 0x0E, 0xD9
	.byte 0x08, 0x1C, 0xB1, 0x38, 0xB8, 0x72, 0x43, 0x46, 0x5B, 0x6B, 0x80, 0x00, 0x1B, 0x58, 0x38, 0x1C
	.byte 0x29, 0x1C, 0x00, 0xF0, 0xAB, 0xF8, 0x28, 0x78, 0x00, 0x28, 0x33, 0xD0, 0x04, 0xE0, 0x54, 0x48
	.byte 0x80, 0x39, 0x09, 0x18, 0x08, 0x78, 0x68, 0x70, 0x68, 0x78, 0x00, 0x28, 0xD0, 0xD0, 0x01, 0x38
	.byte 0x68, 0x70, 0x69, 0x7E, 0x00, 0x29, 0x25, 0xD0, 0xE8, 0x7D, 0x00, 0x28, 0x22, 0xD0, 0x28, 0x7F
	.byte 0x00, 0x28, 0x02, 0xD0, 0x01, 0x38, 0x28, 0x77, 0x1C, 0xE0, 0xA8, 0x7E, 0x40, 0x18, 0xA8, 0x76
	.byte 0x01, 0x1C, 0x40, 0x38, 0x00, 0x06, 0x02, 0xD5, 0x0A, 0x06, 0x12, 0x16, 0x01, 0xE0, 0x80, 0x20
	.byte 0x42, 0x1A, 0xE8, 0x7D, 0x50, 0x43, 0x82, 0x11, 0xA8, 0x7D, 0x50, 0x40, 0x00, 0x06, 0x09, 0xD0
	.byte 0xAA, 0x75, 0x28, 0x78, 0x29, 0x7E, 0x00, 0x29, 0x01, 0xD1, 0x0C, 0x21, 0x00, 0xE0, 0x03, 0x21
	.byte 0x08, 0x43, 0x28, 0x70, 0x53, 0x46, 0x5C, 0x46, 0x01, 0x3E, 0x03, 0xDD, 0x50, 0x20, 0x2D, 0x18
	.byte 0x5B, 0x00, 0x6B, 0xE7, 0xF8, 0x68, 0x01, 0x30, 0xF8, 0x60, 0x00, 0x2C, 0x03, 0xD1, 0x80, 0x20
	.byte 0x00, 0x06, 0x78, 0x60, 0x5A, 0xE0, 0x7C, 0x60, 0x78, 0x8C, 0x96, 0x38, 0x78, 0x84, 0x96, 0x28
	.byte 0x00, 0xD3, 0x57, 0xE7, 0x3A, 0x7A, 0xFD, 0x6A, 0x28, 0x78, 0x80, 0x21, 0x01, 0x42, 0x48, 0xD0
	.byte 0x0F, 0x21, 0x01, 0x42, 0x45, 0xD0, 0x91, 0x46, 0x38, 0x1C, 0x29, 0x1C, 0x00, 0xF0, 0xFC, 0xFE
	.byte 0x2C, 0x6A, 0x00, 0x2C, 0x38, 0xD0, 0x21, 0x78, 0xC7, 0x20, 0x08, 0x42, 0x03, 0xD1, 0x20, 0x1C
	.byte 0x00, 0xF0, 0x0C, 0xFC, 0x2D, 0xE0, 0x60, 0x78, 0x07, 0x26, 0x06, 0x40, 0x2B, 0x78, 0x03, 0x20
	.byte 0x18, 0x42, 0x07, 0xD0, 0x00, 0xF0, 0x64, 0xF8, 0x00, 0x2E, 0x03, 0xD0, 0x60, 0x7F, 0x01, 0x21
	.byte 0x08, 0x43, 0x60, 0x77, 0x2B, 0x78, 0x0C, 0x20, 0x18, 0x42, 0x1A, 0xD0, 0x21, 0x7A, 0x08, 0x20
	.byte 0x28, 0x56, 0x0A, 0x18, 0x00, 0xD5, 0x00, 0x22, 0x00, 0x2E, 0x0C, 0xD0, 0x40, 0x46, 0x03, 0x6B
	.byte 0x11, 0x1C, 0x6A, 0x7A, 0x30, 0x1C, 0x00, 0xF0, 0x21, 0xF8, 0x20, 0x62, 0x60, 0x7F, 0x02, 0x21
	.byte 0x08, 0x43, 0x60, 0x77, 0x05, 0xE0, 0x11, 0x1C, 0x6A, 0x7A, 0x60, 0x6A, 0x00, 0xF0, 0xA0, 0xF9
	.byte 0x20, 0x62, 0x64, 0x6B, 0x00, 0x2C, 0xC6, 0xD1, 0x28, 0x78, 0xF0, 0x21, 0x08, 0x40, 0x28, 0x70
	.byte 0x4A, 0x46, 0x01, 0x3A, 0x02, 0xDD, 0x50, 0x20, 0x2D, 0x18, 0xAD, 0xDC, 0x06, 0x48, 0x78, 0x63
	.byte 0xFF, 0xBC, 0x80, 0x46, 0x89, 0x46, 0x92, 0x46, 0x9B, 0x46, 0x08, 0xBC

	THUMB_FUNC_START sub_805920C
sub_805920C: @ 0x0805920C
	bx r3
	.byte 0x00, 0x00
	.byte 0xD0, 0xA8, 0xAE, 0x08
_08059214: .4byte 0x03007FF0
_08059218: .4byte 0x68736D53

	THUMB_FUNC_START sub_805921C
sub_805921C: @ 0x0805921C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08059254
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08059252
	movs r6, #0
_08059230:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805924A
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08059248
	ldr r3, _0805925C
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_805920C
_08059248:
	strb r6, [r4]
_0805924A:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08059230
_08059252:
	str r4, [r5, #0x20]
_08059254:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805925C: .4byte 0x03007FF0

	THUMB_FUNC_START sub_8059260
sub_8059260: @ 0x08059260
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08059278
	movs r0, #0xff
_08059278:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0805928C
	movs r0, #0xff
_0805928C:
	strb r0, [r4, #3]
	bx lr

	THUMB_FUNC_START sub_8059290
sub_8059290: @ 0x08059290
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08059488
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0805948C
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080592D6
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080592D4
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080592D4
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080592D4:
	str r3, [r5, #0x40]
_080592D6:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08059328
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080592F6
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _080592F8
_080592F6:
	adds r0, r3, #0
_080592F8:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _08059310
	b _08059476
_08059310:
	movs r0, #0x80
	tst r0, r2
	beq _0805932C
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08059324
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08059324:
	ldrb r3, [r6, #1]
	b _0805932C
_08059328:
	mov sb, r4
	ldrb r3, [r5, #5]
_0805932C:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _0805933C
	movs r0, #0xff
_0805933C:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0805937C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08059354
	b _08059476
_08059354:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080593D0
	movs r0, #0x40
	tst r0, r1
	bne _080593D0
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080593D0
	beq _08059374
	b _08059476
_08059374:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080593D0
	b _08059476
_0805937C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0805938A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080593D0
	movs r0, #0x40
	tst r0, r1
	beq _080593A4
	cmp r2, #0
	bne _080593A8
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080593C2
_080593A4:
	cmp r2, #0
	bne _080593C4
_080593A8:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080593B4
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080593C2
_080593B4:
	bhi _080593C4
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080593C0
	adds r7, r0, #0
	b _080593C2
_080593C0:
	blo _080593C4
_080593C2:
	mov r8, r4
_080593C4:
	adds r4, #0x40
	subs r3, #1
	bgt _0805938A
	mov r4, r8
	cmp r4, #0
	beq _08059476
_080593D0:
	adds r0, r4, #0
	bl sub_805999C
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080593E4
	str r4, [r3, #0x30]
_080593E4:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080593F6
	adds r1, r5, #0
	bl sub_80594D0
_080593F6:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_8059F68
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl sub_8059260
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08059430
	movs r3, #0
_08059430:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0805945E
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0805944A
	movs r0, #0x70
	tst r0, r1
	bne _0805944C
_0805944A:
	movs r1, #8
_0805944C:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_805920C
	b _08059468
_0805945E:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_8059520
_08059468:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08059476:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08059488: .4byte 0x03007FF0
_0805948C: .4byte 0x08AEA8D0

	THUMB_FUNC_START sub_8059490
sub_8059490: @ 0x08059490
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080594A2
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080594A4
_080594A2:
	ldrb r3, [r1, #5]
_080594A4:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080594CC
	movs r4, #0x83
	movs r5, #0x40
_080594AE:
	ldrb r2, [r1]
	tst r2, r4
	beq _080594C6
	tst r2, r5
	bne _080594C6
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080594C6
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080594CC
_080594C6:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080594AE
_080594CC:
	pop {r4, r5}
	bx lr

	THUMB_FUNC_START sub_80594D0
sub_80594D0: @ 0x080594D0
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080594E0
	movs r2, #0xc
	b _080594E2
_080594E0:
	movs r2, #3
_080594E2:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80594EC
sub_80594EC: @ 0x080594EC
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80594F8
sub_80594F8: @ 0x080594F8
	mov ip, lr
	bl sub_80594EC
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08059508
	bl sub_80594D0
_08059508:
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805950C
sub_805950C: @ 0x0805950C
	mov ip, lr
	bl sub_80594EC
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _0805951C
	bl sub_80594D0
_0805951C:
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8059520
sub_8059520: @ 0x08059520
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08059534
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08059534:
	ldr r3, _0805957C
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08059580
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl sub_8058904
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_8058904
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805957C: .4byte 0x08AEA6EC
_08059580: .4byte 0x08AEA7A0
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8059588
sub_8059588: @ 0x08059588
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _0805959C
	cmp r3, r0
	bne _0805959A
	ldr r0, [r2, #4]
	ldr r1, _080595A0
	ands r0, r1
	str r0, [r2, #4]
_0805959A:
	bx lr
	.align 2, 0
_0805959C: .4byte 0x68736D53
_080595A0: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_80595A4
sub_80595A4: @ 0x080595A4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080595C0
	cmp r3, r0
	bne _080595BC
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_080595BC:
	bx lr
	.align 2, 0
_080595C0: .4byte 0x68736D53

	THUMB_FUNC_START sub_80595C4
sub_80595C4: @ 0x080595C4
	push {r4, r5, r6, lr}
	ldr r0, _08059618
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0805961C
	ldr r2, _08059620
	bl CpuSet
	ldr r0, _08059624
	bl sub_80599C4
	ldr r0, _08059628
	bl sub_8059880
	ldr r0, _0805962C
	bl sub_8059B60
	ldr r0, _08059630
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08059612
	ldr r5, _08059634
	adds r6, r0, #0
_080595F6:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_8059D04
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08059638
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080595F6
_08059612:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059618: .4byte 0x08058999
_0805961C: .4byte 0x03000000
_08059620: .4byte 0x04000100
_08059624: .4byte 0x020245C0
_08059628: .4byte 0x02025600
_0805962C: .4byte 0x0097FC00
_08059630: .4byte 0x00000012
_08059634: .4byte 0x08AFBD0C
_08059638: .4byte 0x02025AC0

	THUMB_FUNC_START sub_805963C
sub_805963C: @ 0x0805963C
	push {lr}
	bl sub_8058914
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8059648
sub_8059648: @ 0x08059648
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0805966C
	ldr r1, _08059670
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_8059D7C
	pop {r0}
	bx r0
	.align 2, 0
_0805966C: .4byte 0x08AFBD0C
_08059670: .4byte 0x08AFBDE4

	THUMB_FUNC_START sub_8059674
sub_8059674: @ 0x08059674
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080596A0
	ldr r1, _080596A4
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080596A8
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_8059D7C
	b _080596BC
	.align 2, 0
_080596A0: .4byte 0x08AFBD0C
_080596A4: .4byte 0x08AFBDE4
_080596A8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080596B4
	cmp r2, #0
	bge _080596BC
_080596B4:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_8059D7C
_080596BC:
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0x00, 0x04, 0x09, 0x4A, 0x0A, 0x49, 0x40, 0x0B, 0x40, 0x18, 0x83, 0x88, 0x59, 0x00
	.byte 0xC9, 0x18, 0x89, 0x00, 0x89, 0x18, 0x09, 0x68, 0x0B, 0x68, 0x02, 0x68, 0x93, 0x42, 0x09, 0xD0
	.byte 0x08, 0x1C, 0x11, 0x1C, 0x00, 0xF0, 0x4A, 0xFB, 0x12, 0xE0, 0x00, 0x00, 0x0C, 0xBD, 0xAF, 0x08
	.byte 0xE4, 0xBD, 0xAF, 0x08, 0x4A, 0x68, 0x88, 0x88, 0x00, 0x28, 0x04, 0xD1, 0x08, 0x1C, 0x19, 0x1C
	.byte 0x00, 0xF0, 0x3C, 0xFB, 0x04, 0xE0, 0x00, 0x2A, 0x02, 0xDA, 0x08, 0x1C, 0xFF, 0xF7, 0x3C, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8059714
sub_8059714: @ 0x08059714
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08059740
	ldr r1, _08059744
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0805973A
	adds r0, r2, #0
	bl sub_8059E60
_0805973A:
	pop {r0}
	bx r0
	.align 2, 0
_08059740: .4byte 0x08AFBD0C
_08059744: .4byte 0x08AFBDE4
	.byte 0x00, 0xB5, 0x00, 0x04, 0x09, 0x4A, 0x0A, 0x49
	.byte 0x40, 0x0B, 0x40, 0x18, 0x83, 0x88, 0x59, 0x00, 0xC9, 0x18, 0x89, 0x00, 0x89, 0x18, 0x0A, 0x68
	.byte 0x11, 0x68, 0x00, 0x68, 0x81, 0x42, 0x02, 0xD1, 0x10, 0x1C, 0xFF, 0xF7, 0x0D, 0xFF, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x0C, 0xBD, 0xAF, 0x08, 0xE4, 0xBD, 0xAF, 0x08

	THUMB_FUNC_START sub_805977C
sub_805977C: @ 0x0805977C
	push {r4, r5, lr}
	ldr r0, _080597A0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0805979A
	ldr r5, _080597A4
	adds r4, r0, #0
_0805978C:
	ldr r0, [r5]
	bl sub_8059E60
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0805978C
_0805979A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080597A0: .4byte 0x00000012
_080597A4: .4byte 0x08AFBD0C
	.byte 0x00, 0xB5, 0xFF, 0xF7, 0xED, 0xFE, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x08, 0x48, 0x00, 0x04, 0x00, 0x0C, 0x00, 0x28, 0x08, 0xD0
	.byte 0x06, 0x4D, 0x04, 0x1C, 0x28, 0x68, 0xFF, 0xF7, 0xDF, 0xFE, 0x0C, 0x35, 0x01, 0x3C, 0x00, 0x2C
	.byte 0xF8, 0xD1, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x12, 0x00, 0x00, 0x00, 0x0C, 0xBD, 0xAF, 0x08

	THUMB_FUNC_START sub_80597E0
sub_80597E0: @ 0x080597E0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_80595A4
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x02, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x53, 0x6B, 0x03, 0x48, 0x83, 0x42, 0x03, 0xD1, 0xD1, 0x84
	.byte 0x91, 0x84, 0x02, 0x48, 0x10, 0x85, 0x70, 0x47, 0x53, 0x6D, 0x73, 0x68, 0x01, 0x01, 0x00, 0x00
	.byte 0x02, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x53, 0x6B, 0x05, 0x48, 0x83, 0x42, 0x07, 0xD1, 0xD1, 0x84
	.byte 0x91, 0x84, 0x02, 0x20, 0x10, 0x85, 0x50, 0x68, 0x02, 0x49, 0x08, 0x40, 0x50, 0x60, 0x70, 0x47
	.byte 0x53, 0x6D, 0x73, 0x68, 0xFF, 0xFF, 0xFF, 0x7F, 0xF0, 0xB5, 0x05, 0x7A, 0xC4, 0x6A, 0x00, 0x2D
	.byte 0x1B, 0xDD, 0x80, 0x27, 0x21, 0x78, 0x38, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x11, 0xD0, 0x40, 0x26
	.byte 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD0, 0x20, 0x1C, 0x00, 0xF0, 0xA9, 0xF8, 0x27, 0x70
	.byte 0x02, 0x20, 0xE0, 0x73, 0xE6, 0x74, 0x16, 0x20, 0x60, 0x76, 0x21, 0x1C, 0x24, 0x31, 0x01, 0x20
	.byte 0x08, 0x70, 0x01, 0x3D, 0x50, 0x34, 0x00, 0x2D, 0xE4, 0xDC, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8059880
sub_8059880: @ 0x08059880
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08059948
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _0805994C
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08059950
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _08059954
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08059958
	cmp r6, r0
	bne _08059940
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _0805995C
	ldr r0, _08059960
	str r0, [r1, #0x20]
	ldr r0, _08059964
	str r0, [r1, #0x44]
	ldr r0, _08059968
	str r0, [r1, #0x4c]
	ldr r0, _0805996C
	str r0, [r1, #0x70]
	ldr r0, _08059970
	str r0, [r1, #0x74]
	ldr r0, _08059974
	str r0, [r1, #0x78]
	ldr r0, _08059978
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _0805997C
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08059980
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08059984
	str r0, [r4, #0x28]
	ldr r0, _08059988
	str r0, [r4, #0x2c]
	ldr r0, _0805998C
	str r0, [r4, #0x30]
	ldr r0, _08059990
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08059994
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08059940:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059948: .4byte 0x04000084
_0805994C: .4byte 0x04000080
_08059950: .4byte 0x04000063
_08059954: .4byte 0x03007FF0
_08059958: .4byte 0x68736D53
_0805995C: .4byte 0x02025570
_08059960: .4byte 0x0805A83D
_08059964: .4byte 0x080594F9
_08059968: .4byte 0x0805950D
_0805996C: .4byte 0x0805A995
_08059970: .4byte 0x08059491
_08059974: .4byte 0x08059ABD
_08059978: .4byte 0x0805921D
_0805997C: .4byte 0x08059EA1
_08059980: .4byte 0x08059F69
_08059984: .4byte 0x0805A17D
_08059988: .4byte 0x0805A0C5
_0805998C: .4byte 0x0805A01D
_08059990: .4byte 0x00000000
_08059994: .4byte 0x05000040
	.byte 0x2A, 0xDF, 0x70, 0x47

	THUMB_FUNC_START sub_805999C
sub_805999C: @ 0x0805999C
	push {lr}
	ldr r1, _080599AC
	ldr r1, [r1]
	bl sub_805AABC
	pop {r0}
	bx r0
	.align 2, 0
_080599AC: .4byte 0x020255F8

	THUMB_FUNC_START sub_80599B0
sub_80599B0: @ 0x080599B0
	push {lr}
	ldr r1, _080599C0
	ldr r1, [r1]
	bl sub_805AABC
	pop {r0}
	bx r0
	.align 2, 0
_080599C0: .4byte 0x020255FC

	THUMB_FUNC_START sub_80599C4
sub_80599C4: @ 0x080599C4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08059A7C
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _080599E0
	ldr r0, _08059A80
	str r0, [r1]
_080599E0:
	ldr r1, _08059A84
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _080599EE
	ldr r0, _08059A80
	str r0, [r1]
_080599EE:
	ldr r0, _08059A88
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08059A8C
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08059A90
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08059A94
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08059A98
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08059A9C
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08059AA0
	str r0, [r1]
	ldr r0, _08059AA4
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08059AA8
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08059AAC
	str r0, [r5, #0x38]
	ldr r0, _08059AB0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08059AB4
	adds r0, r4, #0
	bl sub_8058DA4
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_8059ABC
	ldr r0, _08059AB8
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059A7C: .4byte 0x040000C4
_08059A80: .4byte 0x84400004
_08059A84: .4byte 0x040000D0
_08059A88: .4byte 0x040000C6
_08059A8C: .4byte 0x04000084
_08059A90: .4byte 0x0000A90E
_08059A94: .4byte 0x04000089
_08059A98: .4byte 0x040000BC
_08059A9C: .4byte 0x040000A0
_08059AA0: .4byte 0x040000A4
_08059AA4: .4byte 0x03007FF0
_08059AA8: .4byte 0x050003EC
_08059AAC: .4byte 0x08059291
_08059AB0: .4byte 0x0805AAB5
_08059AB4: .4byte 0x02025570
_08059AB8: .4byte 0x68736D53

	THUMB_FUNC_START sub_8059ABC
sub_8059ABC: @ 0x08059ABC
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08059B3C
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08059B40
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_805AF28
	strb r0, [r4, #0xb]
	ldr r0, _08059B44
	muls r0, r5, r0
	ldr r1, _08059B48
	adds r0, r0, r1
	ldr r1, _08059B4C
	bl sub_805AF28
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_805AF28
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08059B50
	strh r6, [r0]
	ldr r4, _08059B54
	ldr r0, _08059B58
	adds r1, r5, #0
	bl sub_805AF28
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_8059CC8
	ldr r1, _08059B5C
_08059B20:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08059B20
	ldr r1, _08059B5C
_08059B28:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08059B28
	ldr r1, _08059B50
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059B3C: .4byte 0x03007FF0
_08059B40: .4byte 0x08AEA7D0
_08059B44: .4byte 0x00091D1B
_08059B48: .4byte 0x00001388
_08059B4C: .4byte 0x00002710
_08059B50: .4byte 0x04000102
_08059B54: .4byte 0x04000100
_08059B58: .4byte 0x00044940
_08059B5C: .4byte 0x04000006

	THUMB_FUNC_START sub_8059B60
sub_8059B60: @ 0x08059B60
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08059BEC
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08059BF0
	cmp r1, r0
	bne _08059BE6
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08059B82
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08059B82:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08059BA2
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08059B98:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08059B98
_08059BA2:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08059BB0
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08059BB0:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08059BCE
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08059BF4
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08059BCE:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08059BE2
	bl sub_8059C4C
	adds r0, r4, #0
	bl sub_8059ABC
_08059BE2:
	ldr r0, _08059BF0
	str r0, [r5]
_08059BE6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059BEC: .4byte 0x03007FF0
_08059BF0: .4byte 0x68736D53
_08059BF4: .4byte 0x04000089
	.byte 0xF0, 0xB5, 0x12, 0x48, 0x06, 0x68, 0x31, 0x68
	.byte 0x11, 0x48, 0x81, 0x42, 0x1B, 0xD1, 0x48, 0x1C, 0x30, 0x60, 0x0C, 0x25, 0x34, 0x1C, 0x50, 0x34
	.byte 0x00, 0x20, 0x20, 0x70, 0x01, 0x3D, 0x40, 0x34, 0x00, 0x2D, 0xFA, 0xDC, 0xF4, 0x69, 0x00, 0x2C
	.byte 0x0B, 0xD0, 0x01, 0x25, 0x00, 0x27, 0x28, 0x06, 0x00, 0x0E, 0xF1, 0x6A, 0x00, 0xF0, 0x46, 0xFF
	.byte 0x27, 0x70, 0x01, 0x35, 0x40, 0x34, 0x04, 0x2D, 0xF5, 0xDD, 0x03, 0x48, 0x30, 0x60, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xF0, 0x7F, 0x00, 0x03, 0x53, 0x6D, 0x73, 0x68

	THUMB_FUNC_START sub_8059C4C
sub_8059C4C: @ 0x08059C4C
	push {lr}
	sub sp, #4
	ldr r0, _08059CAC
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08059CB0
	adds r0, r1, r3
	cmp r0, #1
	bhi _08059CA4
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08059CB4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08059C76
	ldr r0, _08059CB8
	str r0, [r1]
_08059C76:
	ldr r1, _08059CBC
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08059C84
	ldr r0, _08059CB8
	str r0, [r1]
_08059C84:
	ldr r0, _08059CC0
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08059CC4
	mov r0, sp
	bl CpuSet
_08059CA4:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08059CAC: .4byte 0x03007FF0
_08059CB0: .4byte 0x978C92AD
_08059CB4: .4byte 0x040000C4
_08059CB8: .4byte 0x84400004
_08059CBC: .4byte 0x040000D0
_08059CC0: .4byte 0x040000C6
_08059CC4: .4byte 0x05000318

	THUMB_FUNC_START sub_8059CC8
sub_8059CC8: @ 0x08059CC8
	push {r4, lr}
	ldr r0, _08059CF8
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08059CFC
	cmp r3, r0
	beq _08059CF0
	ldr r0, _08059D00
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_08059CF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059CF8: .4byte 0x03007FF0
_08059CFC: .4byte 0x68736D53
_08059D00: .4byte 0x040000C6

	THUMB_FUNC_START sub_8059D04
sub_8059D04: @ 0x08059D04
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08059D68
	cmp r4, #0x10
	bls _08059D18
	movs r4, #0x10
_08059D18:
	ldr r0, _08059D70
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08059D74
	cmp r1, r0
	bne _08059D68
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_80599B0
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08059D4C
	movs r1, #0
_08059D3E:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08059D3E
_08059D4C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08059D5C
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08059D5C:
	str r7, [r5, #0x24]
	ldr r0, _08059D78
	str r0, [r5, #0x20]
	ldr r0, _08059D74
	str r0, [r5]
	str r0, [r7, #0x34]
_08059D68:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059D70: .4byte 0x03007FF0
_08059D74: .4byte 0x68736D53
_08059D78: .4byte 0x08058FB5

	THUMB_FUNC_START sub_8059D7C
sub_8059D7C: @ 0x08059D7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08059E5C
	cmp r1, r0
	bne _08059E52
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08059DBE
	ldr r0, [r5]
	cmp r0, #0
	beq _08059DA8
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08059DB4
_08059DA8:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08059DBE
	cmp r1, #0
	blt _08059DBE
_08059DB4:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08059E52
_08059DBE:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _08059E1E
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08059E3E
	mov r8, r6
_08059DF2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_805921C
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _08059E1E
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08059DF2
_08059E1E:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08059E3E
	movs r1, #0
	mov r8, r1
_08059E28:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_805921C
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08059E28
_08059E3E:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08059E4E
	ldrb r0, [r7, #3]
	bl sub_8059B60
_08059E4E:
	ldr r0, _08059E5C
	str r0, [r5, #0x34]
_08059E52:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059E5C: .4byte 0x68736D53

	THUMB_FUNC_START sub_8059E60
sub_8059E60: @ 0x08059E60
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08059E9C
	cmp r1, r0
	bne _08059E96
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08059E92
_08059E82:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_805921C
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08059E82
_08059E92:
	ldr r0, _08059E9C
	str r0, [r6, #0x34]
_08059E96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059E9C: .4byte 0x68736D53

	THUMB_FUNC_START sub_8059EA0
sub_8059EA0: @ 0x08059EA0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08059F62
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08059EE0
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08059F62
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08059EE4
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08059F36
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08059F36
	.align 2, 0
_08059EE0: .4byte 0x0000FFFF
_08059EE4:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08059F36
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08059F16
_08059EFA:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_805921C
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08059F0E
	strb r0, [r4]
_08059F0E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08059EFA
_08059F16:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08059F2A
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08059F2E
_08059F2A:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08059F2E:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08059F62
_08059F36:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08059F62
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08059F44:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08059F5A
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08059F5A:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08059F44
_08059F62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8059F68
sub_8059F68: @ 0x08059F68
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08059FCC
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08059F90
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08059F90:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08059FA6
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08059FA6:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08059FB2
	adds r1, r0, #0
	b _08059FB8
_08059FB2:
	cmp r1, #0x7f
	ble _08059FB8
	movs r1, #0x7f
_08059FB8:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08059FCC:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0805A010
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0805A00A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_0805A00A:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_0805A010:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805A01C
sub_805A01C: @ 0x0805A01C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _0805A054
	cmp r5, #0x14
	bhi _0805A038
	movs r5, #0
	b _0805A046
_0805A038:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0805A046
	movs r5, #0x3b
_0805A046:
	ldr r0, _0805A050
	adds r0, r5, r0
	ldrb r0, [r0]
	b _0805A0B6
	.align 2, 0
_0805A050: .4byte 0x08AEA884
_0805A054:
	cmp r5, #0x23
	bhi _0805A060
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _0805A072
_0805A060:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _0805A072
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_0805A072:
	ldr r3, _0805A0BC
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _0805A0C0
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_0805A0B6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805A0BC: .4byte 0x08AEA7E8
_0805A0C0: .4byte 0x08AEA86C

	THUMB_FUNC_START sub_805A0C4
sub_805A0C4: @ 0x0805A0C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _0805A0EC
	cmp r0, #2
	bgt _0805A0D8
	cmp r0, #1
	beq _0805A0DE
	b _0805A100
_0805A0D8:
	cmp r1, #3
	beq _0805A0F4
	b _0805A100
_0805A0DE:
	ldr r1, _0805A0E8
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _0805A108
	.align 2, 0
_0805A0E8: .4byte 0x04000063
_0805A0EC:
	ldr r1, _0805A0F0
	b _0805A102
	.align 2, 0
_0805A0F0: .4byte 0x04000069
_0805A0F4:
	ldr r1, _0805A0FC
	movs r0, #0
	b _0805A10A
	.align 2, 0
_0805A0FC: .4byte 0x04000070
_0805A100:
	ldr r1, _0805A110
_0805A102:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_0805A108:
	movs r0, #0x80
_0805A10A:
	strb r0, [r1]
	bx lr
	.align 2, 0
_0805A110: .4byte 0x04000079

	THUMB_FUNC_START sub_805A114
sub_805A114: @ 0x0805A114
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _0805A134
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _0805A140
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _0805A14E
_0805A134:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _0805A140
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _0805A14E
_0805A140:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _0805A15E
_0805A14E:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _0805A160
	movs r0, #0xf
_0805A15E:
	strb r0, [r1, #0xa]
_0805A160:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805A17C
sub_805A17C: @ 0x0805A17C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _0805A19C
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _0805A1A0
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _0805A1A6
	.align 2, 0
_0805A19C: .4byte 0x03007FF0
_0805A1A0:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_0805A1A6:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_0805A1AC:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _0805A1C2
	b _0805A5AC
_0805A1C2:
	cmp r6, #2
	beq _0805A1F4
	cmp r6, #2
	bgt _0805A1D0
	cmp r6, #1
	beq _0805A1D6
	b _0805A22C
_0805A1D0:
	cmp r6, #3
	beq _0805A20C
	b _0805A22C
_0805A1D6:
	ldr r0, _0805A1E8
	str r0, [sp, #8]
	ldr r7, _0805A1EC
	ldr r2, _0805A1F0
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _0805A23C
	.align 2, 0
_0805A1E8: .4byte 0x04000060
_0805A1EC: .4byte 0x04000062
_0805A1F0: .4byte 0x04000063
_0805A1F4:
	ldr r0, _0805A200
	str r0, [sp, #8]
	ldr r7, _0805A204
	ldr r2, _0805A208
	b _0805A234
	.align 2, 0
_0805A200: .4byte 0x04000061
_0805A204: .4byte 0x04000068
_0805A208: .4byte 0x04000069
_0805A20C:
	ldr r0, _0805A220
	str r0, [sp, #8]
	ldr r7, _0805A224
	ldr r2, _0805A228
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _0805A23C
	.align 2, 0
_0805A220: .4byte 0x04000070
_0805A224: .4byte 0x04000072
_0805A228: .4byte 0x04000073
_0805A22C:
	ldr r0, _0805A28C
	str r0, [sp, #8]
	ldr r7, _0805A290
	ldr r2, _0805A294
_0805A234:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_0805A23C:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0805A332
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _0805A356
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_805A114
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _0805A2A4
	cmp r6, #2
	bgt _0805A298
	cmp r6, #1
	beq _0805A29E
	b _0805A2F8
	.align 2, 0
_0805A28C: .4byte 0x04000071
_0805A290: .4byte 0x04000078
_0805A294: .4byte 0x04000079
_0805A298:
	cmp r6, #3
	beq _0805A2B0
	b _0805A2F8
_0805A29E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_0805A2A4:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _0805A304
_0805A2B0:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _0805A2D8
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _0805A2EC
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_0805A2D8:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0805A2F0
	movs r0, #0xc0
	b _0805A312
	.align 2, 0
_0805A2EC: .4byte 0x04000090
_0805A2F0:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _0805A314
_0805A2F8:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_0805A304:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0805A312
	movs r0, #0x40
_0805A312:
	strb r0, [r4, #0x1a]
_0805A314:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _0805A32E
	b _0805A46A
_0805A32E:
	strb r2, [r4, #9]
	b _0805A498
_0805A332:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0805A364
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _0805A356
	b _0805A4AA
_0805A356:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_805A0C4
	movs r0, #0
	strb r0, [r4]
	b _0805A5A8
_0805A364:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _0805A3A4
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0805A3A4
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0805A3D6
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0805A498
	ldrb r2, [r4, #7]
	mov r8, r2
	b _0805A498
_0805A3A4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805A498
	cmp r6, #3
	bne _0805A3B6
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0805A3B6:
	adds r0, r4, #0
	bl sub_805A114
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _0805A40A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0805A406
_0805A3D6:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805A356
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0805A4AA
	movs r2, #8
	mov r8, r2
	b _0805A4AA
_0805A406:
	ldrb r0, [r4, #7]
	b _0805A496
_0805A40A:
	cmp r0, #1
	bne _0805A416
_0805A40E:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _0805A496
_0805A416:
	cmp r0, #2
	bne _0805A45A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _0805A456
_0805A42E:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0805A43E
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _0805A3D6
_0805A43E:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0805A40E
	movs r0, #8
	mov r8, r0
	b _0805A40E
_0805A456:
	ldrb r0, [r4, #5]
	b _0805A496
_0805A45A:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _0805A494
_0805A46A:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0805A42E
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _0805A498
	ldrb r2, [r4, #5]
	mov r8, r2
	b _0805A498
_0805A494:
	ldrb r0, [r4, #4]
_0805A496:
	strb r0, [r4, #0xb]
_0805A498:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _0805A4AA
	subs r0, #1
	str r0, [sp]
	b _0805A3A4
_0805A4AA:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _0805A522
	cmp r6, #3
	bgt _0805A4EA
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _0805A4EA
	ldr r0, _0805A4D4
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _0805A4DC
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _0805A4D8
	b _0805A4E6
	.align 2, 0
_0805A4D4: .4byte 0x04000089
_0805A4D8: .4byte 0x000007FC
_0805A4DC:
	cmp r0, #0x7f
	bgt _0805A4EA
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _0805A4F8
_0805A4E6:
	ands r0, r1
	str r0, [r4, #0x20]
_0805A4EA:
	cmp r6, #4
	beq _0805A4FC
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _0805A50A
	.align 2, 0
_0805A4F8: .4byte 0x000007FE
_0805A4FC:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_0805A50A:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_0805A522:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _0805A5A8
	ldr r1, _0805A56C
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _0805A574
	ldr r0, _0805A570
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _0805A5A8
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _0805A5A8
	.align 2, 0
_0805A56C: .4byte 0x04000081
_0805A570: .4byte 0x08AEA8C0
_0805A574:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _0805A5A8
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805A5A8
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_0805A5A8:
	movs r0, #0
	strb r0, [r4, #0x1d]
_0805A5AC:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _0805A5B6
	b _0805A1AC
_0805A5B6:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x10, 0xB5, 0x02, 0x1C, 0x09, 0x04, 0x09, 0x0C
	.byte 0x53, 0x6B, 0x06, 0x48, 0x83, 0x42, 0x05, 0xD1, 0xD1, 0x83, 0x94, 0x8B, 0x08, 0x1C, 0x60, 0x43
	.byte 0x00, 0x12, 0x10, 0x84, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x53, 0x6D, 0x73, 0x68

	THUMB_FUNC_START sub_805A5F0
sub_805A5F0: @ 0x0805A5F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _0805A654
	cmp r3, r0
	bne _0805A648
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _0805A644
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_0805A620:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _0805A63A
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0805A63A
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_0805A63A:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _0805A620
_0805A644:
	ldr r0, _0805A654
	str r0, [r4, #0x34]
_0805A648:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A654: .4byte 0x68736D53
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
	.byte 0xE0, 0xB4, 0x04, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x8C, 0x46, 0x12, 0x04, 0x16, 0x0C, 0x63, 0x6B
	.byte 0x15, 0x48, 0x83, 0x42, 0x21, 0xD1, 0x58, 0x1C, 0x60, 0x63, 0x22, 0x7A, 0xE3, 0x6A, 0x01, 0x25
	.byte 0x00, 0x2A, 0x18, 0xDD, 0x80, 0x20, 0x81, 0x46, 0x30, 0x04, 0x07, 0x16, 0x0C, 0x20, 0x80, 0x46
	.byte 0x60, 0x46, 0x28, 0x40, 0x00, 0x28, 0x09, 0xD0, 0x19, 0x78, 0x48, 0x46, 0x08, 0x40, 0x00, 0x28
	.byte 0x04, 0xD0, 0xDF, 0x72, 0x5E, 0x73, 0x40, 0x46, 0x08, 0x43, 0x18, 0x70, 0x01, 0x3A, 0x50, 0x33
	.byte 0x6D, 0x00, 0x00, 0x2A, 0xEC, 0xDC, 0x04, 0x48, 0x60, 0x63, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x53, 0x6D, 0x73, 0x68, 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x04, 0x1C, 0x09, 0x04, 0x0F, 0x0C, 0x12, 0x06, 0x16, 0x0E, 0x63, 0x6B
	.byte 0x13, 0x48, 0x83, 0x42, 0x1E, 0xD1, 0x58, 0x1C, 0x60, 0x63, 0x22, 0x7A, 0xE1, 0x6A, 0x01, 0x25
	.byte 0x00, 0x2A, 0x15, 0xDD, 0x80, 0x20, 0x80, 0x46, 0x03, 0x20, 0x84, 0x46, 0x38, 0x1C, 0x28, 0x40
	.byte 0x00, 0x28, 0x08, 0xD0, 0x0B, 0x78, 0x40, 0x46, 0x18, 0x40, 0x00, 0x28, 0x03, 0xD0, 0x4E, 0x75
	.byte 0x60, 0x46, 0x18, 0x43, 0x08, 0x70, 0x01, 0x3A, 0x50, 0x31, 0x6D, 0x00, 0x00, 0x2A, 0xED, 0xDC
	.byte 0x03, 0x48, 0x60, 0x63, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x53, 0x6D, 0x73, 0x68

	THUMB_FUNC_START sub_805A734
sub_805A734: @ 0x0805A734
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _0805A748
	movs r0, #0xc
	b _0805A74A
_0805A748:
	movs r0, #3
_0805A74A:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x06, 0x1C
	.byte 0x09, 0x04, 0x09, 0x0C, 0x8A, 0x46, 0x12, 0x06, 0x12, 0x0E, 0x90, 0x46, 0x71, 0x6B, 0x15, 0x48
	.byte 0x81, 0x42, 0x1F, 0xD1, 0x48, 0x1C, 0x70, 0x63, 0x35, 0x7A, 0xF4, 0x6A, 0x01, 0x27, 0x00, 0x2D
	.byte 0x16, 0xDD, 0xC1, 0x46, 0x50, 0x46, 0x38, 0x40, 0x00, 0x28, 0x0C, 0xD0, 0x80, 0x20, 0x21, 0x78
	.byte 0x08, 0x40, 0x00, 0x28, 0x07, 0xD0, 0x40, 0x46, 0xE0, 0x75, 0x49, 0x46, 0x00, 0x29, 0x02, 0xD1
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xC7, 0xFF, 0x01, 0x3D, 0x50, 0x34, 0x7F, 0x00, 0x00, 0x2D, 0xE9, 0xDC
	.byte 0x04, 0x48, 0x70, 0x63, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x53, 0x6D, 0x73, 0x68, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
	.byte 0xE0, 0xB4, 0x06, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x8A, 0x46, 0x12, 0x06, 0x12, 0x0E, 0x90, 0x46
	.byte 0x71, 0x6B, 0x15, 0x48, 0x81, 0x42, 0x1F, 0xD1, 0x48, 0x1C, 0x70, 0x63, 0x35, 0x7A, 0xF4, 0x6A
	.byte 0x01, 0x27, 0x00, 0x2D, 0x16, 0xDD, 0xC1, 0x46, 0x50, 0x46, 0x38, 0x40, 0x00, 0x28, 0x0C, 0xD0
	.byte 0x80, 0x20, 0x21, 0x78, 0x08, 0x40, 0x00, 0x28, 0x07, 0xD0, 0x40, 0x46, 0x60, 0x76, 0x49, 0x46
	.byte 0x00, 0x29, 0x02, 0xD1, 0x20, 0x1C, 0xFF, 0xF7, 0x8D, 0xFF, 0x01, 0x3D, 0x50, 0x34, 0x7F, 0x00
	.byte 0x00, 0x2D, 0xE9, 0xDC, 0x04, 0x48, 0x70, 0x63, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x53, 0x6D, 0x73, 0x68

	THUMB_FUNC_START sub_805A83C
sub_805A83C: @ 0x0805A83C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _0805A860
	b _0805A98E
_0805A860:
	lsls r0, r5, #2
	ldr r1, _0805A86C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A86C: .4byte 0x0805A870
_0805A870: @ jump table
	.4byte _0805A8B8 @ case 0
	.4byte _0805A8BC @ case 1
	.4byte _0805A8C4 @ case 2
	.4byte _0805A8CC @ case 3
	.4byte _0805A8D6 @ case 4
	.4byte _0805A8E4 @ case 5
	.4byte _0805A8F2 @ case 6
	.4byte _0805A8FA @ case 7
	.4byte _0805A902 @ case 8
	.4byte _0805A90A @ case 9
	.4byte _0805A912 @ case 10
	.4byte _0805A91A @ case 11
	.4byte _0805A922 @ case 12
	.4byte _0805A930 @ case 13
	.4byte _0805A93E @ case 14
	.4byte _0805A94C @ case 15
	.4byte _0805A95A @ case 16
	.4byte _0805A968 @ case 17
_0805A8B8:
	strb r2, [r3]
	b _0805A98E
_0805A8BC:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _0805A98E
_0805A8C4:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _0805A98E
_0805A8CC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _0805A98E
_0805A8D6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _0805A98E
_0805A8E4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _0805A98E
_0805A8F2:
	ldrb r3, [r3]
	cmp r3, r2
	beq _0805A974
	b _0805A988
_0805A8FA:
	ldrb r3, [r3]
	cmp r3, r2
	bne _0805A974
	b _0805A988
_0805A902:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _0805A974
	b _0805A988
_0805A90A:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _0805A974
	b _0805A988
_0805A912:
	ldrb r3, [r3]
	cmp r3, r2
	bls _0805A974
	b _0805A988
_0805A91A:
	ldrb r3, [r3]
	cmp r3, r2
	blo _0805A974
	b _0805A988
_0805A922:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _0805A974
	b _0805A988
_0805A930:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _0805A974
	b _0805A988
_0805A93E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _0805A974
	b _0805A988
_0805A94C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0805A974
	b _0805A988
_0805A95A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _0805A974
	b _0805A988
_0805A968:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0805A988
_0805A974:
	ldr r0, _0805A984
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_805AAC0
	b _0805A98E
	.align 2, 0
_0805A984: .4byte 0x02025574
_0805A988:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_0805A98E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805A994
sub_805A994: @ 0x0805A994
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _0805A9B0
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_805AAC0
	pop {r0}
	bx r0
	.align 2, 0
_0805A9B0: .4byte 0x08AEA904
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x12, 0x68, 0x00, 0xF0, 0x81, 0xF8, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x70, 0x55, 0x02, 0x02, 0x10, 0xB5, 0x0A, 0x6C, 0x0C, 0x48, 0x04, 0x40
	.byte 0x10, 0x78, 0x04, 0x43, 0x50, 0x78, 0x03, 0x02, 0x0A, 0x48, 0x04, 0x40, 0x1C, 0x43, 0x90, 0x78
	.byte 0x03, 0x04, 0x09, 0x48, 0x04, 0x40, 0x1C, 0x43, 0xD0, 0x78, 0x03, 0x06, 0x07, 0x48, 0x04, 0x40
	.byte 0x1C, 0x43, 0x8C, 0x62, 0x04, 0x32, 0x0A, 0x64, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00
	.byte 0x08, 0x6C, 0x02, 0x78, 0x08, 0x1C, 0x24, 0x30, 0x02, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x02, 0x78, 0x08, 0x1C, 0x2C, 0x30, 0x02, 0x70, 0x08, 0x6C
	.byte 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x2D, 0x32
	.byte 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x00, 0x78
	.byte 0x0A, 0x1C, 0x2E, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00
	.byte 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x2F, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x02, 0x78, 0x8A, 0x77, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47
	.byte 0x08, 0x6C, 0x02, 0x78, 0xCA, 0x77, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x08, 0x6C, 0x00, 0x78
	.byte 0x0A, 0x1C, 0x26, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00
	.byte 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x27, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START _call_via_r0
_call_via_r0: @ 0x0805AAB8
	bx r0
	.byte 0xC0, 0x46

	THUMB_FUNC_START sub_805AABC
sub_805AABC: @ 0x0805AABC
	bx r1
	.byte 0xC0, 0x46

	THUMB_FUNC_START sub_805AAC0
sub_805AAC0: @ 0x0805AAC0
	bx r2
	.byte 0xC0, 0x46

	THUMB_FUNC_START sub_805AAC4
sub_805AAC4: @ 0x0805AAC4
	bx r3
	.byte 0xC0, 0x46, 0x20, 0x47, 0xC0, 0x46, 0x28, 0x47, 0xC0, 0x46
	.byte 0x30, 0x47, 0xC0, 0x46, 0x38, 0x47, 0xC0, 0x46, 0x40, 0x47, 0xC0, 0x46, 0x48, 0x47, 0xC0, 0x46
	.byte 0x50, 0x47, 0xC0, 0x46, 0x58, 0x47, 0xC0, 0x46, 0x60, 0x47, 0xC0, 0x46, 0x68, 0x47, 0xC0, 0x46
	.byte 0x70, 0x47, 0xC0, 0x46

	THUMB_FUNC_START sub_805AAF4
sub_805AAF4: @ 0x0805AAF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r4, #0
	str r4, [sp]
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0
	bge _0805AB24
	ldr r0, [sp]
	mvns r0, r0
	str r0, [sp]
	rsbs r0, r4, #0
	adds r6, r0, #0
	rsbs r1, r5, #0
	cmp r0, #0
	beq _0805AB1E
	subs r1, #1
_0805AB1E:
	adds r7, r1, #0
	adds r5, r7, #0
	adds r4, r6, #0
_0805AB24:
	cmp r3, #0
	bge _0805AB40
	ldr r1, [sp]
	mvns r1, r1
	str r1, [sp]
	rsbs r0, r2, #0
	str r0, [sp, #4]
	rsbs r2, r3, #0
	cmp r0, #0
	beq _0805AB3A
	subs r2, #1
_0805AB3A:
	str r2, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
_0805AB40:
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r4
	mov r8, r5
	cmp r6, #0
	beq _0805AB4E
	b _0805AD9C
_0805AB4E:
	cmp r7, r8
	bls _0805AC28
	ldr r0, _0805AB64
	cmp r7, r0
	bhi _0805AB68
	movs r1, #0
	cmp r7, #0xff
	bls _0805AB72
	movs r1, #8
	b _0805AB72
	.align 2, 0
_0805AB64: .4byte 0x0000FFFF
_0805AB68:
	ldr r0, _0805AC1C
	movs r1, #0x18
	cmp r7, r0
	bhi _0805AB72
	movs r1, #0x10
_0805AB72:
	ldr r0, _0805AC20
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _0805AB9A
	lsls r7, r2
	mov r3, r8
	lsls r3, r2
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
_0805AB9A:
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _0805AC24
	ands r1, r7
	str r1, [sp, #0xc]
	mov r0, r8
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r3, r2
	lsls r4, r4, #0x10
	mov r1, sl
	lsrs r0, r1, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805ABDA
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805ABDA
	cmp r4, r2
	bhs _0805ABDA
	subs r6, #1
	adds r4, r4, r7
_0805ABDA:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r1, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r3, r2
	lsls r5, r5, #0x10
	ldr r0, _0805AC24
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bhs _0805AC12
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805AC12
	cmp r5, r2
	bhs _0805AC12
	subs r1, #1
_0805AC12:
	lsls r6, r6, #0x10
	orrs r6, r1
	movs r0, #0
	str r0, [sp, #0x10]
	b _0805AEF2
	.align 2, 0
_0805AC1C: .4byte 0x00FFFFFF
_0805AC20: .4byte 0x08DF1828
_0805AC24: .4byte 0x0000FFFF
_0805AC28:
	cmp r2, #0
	bne _0805AC36
	movs r0, #1
	movs r1, #0
	bl sub_805B51C
	adds r7, r0, #0
_0805AC36:
	adds r1, r7, #0
	ldr r0, _0805AC48
	cmp r7, r0
	bhi _0805AC4C
	movs r2, #0
	cmp r7, #0xff
	bls _0805AC56
	movs r2, #8
	b _0805AC56
	.align 2, 0
_0805AC48: .4byte 0x0000FFFF
_0805AC4C:
	ldr r0, _0805AC74
	movs r2, #0x18
	cmp r7, r0
	bhi _0805AC56
	movs r2, #0x10
_0805AC56:
	ldr r0, _0805AC78
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0805AC7C
	mov r1, r8
	subs r1, r1, r7
	mov r8, r1
	movs r2, #1
	str r2, [sp, #0x10]
	b _0805AD1A
	.align 2, 0
_0805AC74: .4byte 0x00FFFFFF
_0805AC78: .4byte 0x08DF1828
_0805AC7C:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _0805AD98
	ands r1, r7
	str r1, [sp, #0x14]
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r2, [sp, #0x14]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805ACD6
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805ACD6
	cmp r4, r1
	bhs _0805ACD6
	subs r6, #1
	adds r4, r4, r7
_0805ACD6:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r2, r0, #0
	ldr r4, [sp, #0x14]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0805AD98
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _0805AD10
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805AD10
	cmp r5, r1
	bhs _0805AD10
	subs r2, #1
	adds r5, r5, r7
_0805AD10:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #0x10]
	subs r1, r5, r1
	mov r8, r1
_0805AD1A:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0805AD98
	ands r0, r7
	str r0, [sp, #0x18]
	mov r0, r8
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r1, [sp, #0x18]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805AD5A
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805AD5A
	cmp r4, r2
	bhs _0805AD5A
	subs r6, #1
	adds r4, r4, r7
_0805AD5A:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r1, r0, #0
	ldr r4, [sp, #0x18]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0805AD98
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0805AD92
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805AD92
	cmp r5, r2
	bhs _0805AD92
	subs r1, #1
_0805AD92:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0805AEF2
	.align 2, 0
_0805AD98: .4byte 0x0000FFFF
_0805AD9C:
	cmp r6, r8
	bls _0805ADA8
	movs r6, #0
	movs r4, #0
	str r4, [sp, #0x10]
	b _0805AEF2
_0805ADA8:
	adds r1, r6, #0
	ldr r0, _0805ADBC
	cmp r6, r0
	bhi _0805ADC0
	movs r2, #0
	cmp r6, #0xff
	bls _0805ADCA
	movs r2, #8
	b _0805ADCA
	.align 2, 0
_0805ADBC: .4byte 0x0000FFFF
_0805ADC0:
	ldr r0, _0805ADEC
	movs r2, #0x18
	cmp r6, r0
	bhi _0805ADCA
	movs r2, #0x10
_0805ADCA:
	ldr r0, _0805ADF0
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0805ADF8
	cmp r8, r6
	bhi _0805ADE4
	cmp sl, r7
	blo _0805ADF4
_0805ADE4:
	movs r6, #1
	mov r1, sl
	b _0805AEEC
	.align 2, 0
_0805ADEC: .4byte 0x00FFFFFF
_0805ADF0: .4byte 0x08DF1828
_0805ADF4:
	movs r6, #0
	b _0805AEEE
_0805ADF8:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov sb, r0
	ldr r1, _0805AF24
	ands r1, r6
	str r1, [sp, #0x1c]
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B51C
	adds r3, r0, #0
	ldr r2, [sp, #0x1c]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805AE5A
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _0805AE5A
	cmp r4, r1
	bhs _0805AE5A
	subs r3, #1
	adds r4, r4, r6
_0805AE5A:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	str r3, [sp, #0x30]
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r2, r0, #0
	ldr r4, [sp, #0x1c]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0805AF24
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x30]
	cmp r5, r1
	bhs _0805AE98
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _0805AE98
	cmp r5, r1
	bhs _0805AE98
	subs r2, #1
	adds r5, r5, r6
_0805AE98:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _0805AF24
	mov sb, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, sb
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _0805AED0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0805AED0:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, sb
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _0805AEEA
	cmp r3, r8
	bne _0805AEEE
	cmp r1, sl
	bls _0805AEEE
_0805AEEA:
	subs r6, #1
_0805AEEC:
	subs r0, r1, r7
_0805AEEE:
	movs r2, #0
	str r2, [sp, #0x10]
_0805AEF2:
	str r6, [sp, #0x20]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r4, [sp]
	cmp r4, #0
	beq _0805AF14
	rsbs r0, r1, #0
	str r0, [sp, #0x28]
	rsbs r1, r2, #0
	cmp r0, #0
	beq _0805AF0E
	subs r1, #1
_0805AF0E:
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
_0805AF14:
	adds r0, r1, #0
	adds r1, r2, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805AF24: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805AF28
sub_805AF28: @ 0x0805AF28
	cmp r1, #0
	beq _0805AFB0
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _0805AF3E
	rsbs r1, r1, #0
_0805AF3E:
	cmp r0, #0
	bpl _0805AF44
	rsbs r0, r0, #0
_0805AF44:
	cmp r0, r1
	blo _0805AFA2
	movs r4, #1
	lsls r4, r4, #0x1c
_0805AF4C:
	cmp r1, r4
	bhs _0805AF5A
	cmp r1, r0
	bhs _0805AF5A
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0805AF4C
_0805AF5A:
	lsls r4, r4, #3
_0805AF5C:
	cmp r1, r4
	bhs _0805AF6A
	cmp r1, r0
	bhs _0805AF6A
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805AF5C
_0805AF6A:
	cmp r0, r1
	blo _0805AF72
	subs r0, r0, r1
	orrs r2, r3
_0805AF72:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805AF7E
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0805AF7E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805AF8A
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0805AF8A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0805AF96
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0805AF96:
	cmp r0, #0
	beq _0805AFA2
	lsrs r3, r3, #4
	beq _0805AFA2
	lsrs r1, r1, #4
	b _0805AF6A
_0805AFA2:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _0805AFAC
	rsbs r0, r0, #0
_0805AFAC:
	pop {r4}
	mov pc, lr
_0805AFB0:
	push {lr}
	bl sub_0805AFBC
	movs r0, #0
	pop {pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0805AFBC
sub_0805AFBC: @ 0x0805AFBC
	mov pc, lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805AFC0
sub_805AFC0: @ 0x0805AFC0
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r3, _0805AFE0
	ldr r2, _0805AFDC
	bl sub_805C534
	cmp r0, #0
	bge _0805AFE4
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_805C694
	b _0805AFFA
	.align 2, 0
_0805AFDC: .4byte 0x41E00000
_0805AFE0: .4byte 0x00000000
_0805AFE4:
	ldr r3, _0805B000
	ldr r2, _0805AFFC
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_805BE8C
	bl sub_805C694
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
_0805AFFA:
	pop {r4, r5, pc}
	.align 2, 0
_0805AFFC: .4byte 0xC1E00000
_0805B000: .4byte 0x00000000

	THUMB_FUNC_START sub_805B004
sub_805B004: @ 0x0805B004
	movs r3, #1
	cmp r1, #0
	beq _0805B0C8
	bpl _0805B00E
	rsbs r1, r1, #0
_0805B00E:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _0805B018
	rsbs r0, r0, #0
_0805B018:
	cmp r0, r1
	blo _0805B0BC
	movs r4, #1
	lsls r4, r4, #0x1c
_0805B020:
	cmp r1, r4
	bhs _0805B02E
	cmp r1, r0
	bhs _0805B02E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0805B020
_0805B02E:
	lsls r4, r4, #3
_0805B030:
	cmp r1, r4
	bhs _0805B03E
	cmp r1, r0
	bhs _0805B03E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805B030
_0805B03E:
	movs r2, #0
	cmp r0, r1
	blo _0805B046
	subs r0, r0, r1
_0805B046:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805B058
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B058:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805B06A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B06A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0805B07C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B07C:
	mov ip, r3
	cmp r0, #0
	beq _0805B08A
	lsrs r3, r3, #4
	beq _0805B08A
	lsrs r1, r1, #4
	b _0805B03E
_0805B08A:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _0805B0BC
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0805B0A0
	lsrs r4, r1, #3
	adds r0, r0, r4
_0805B0A0:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0805B0AE
	lsrs r4, r1, #2
	adds r0, r0, r4
_0805B0AE:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0805B0BC
	lsrs r4, r1, #1
	adds r0, r0, r4
_0805B0BC:
	pop {r4}
	cmp r4, #0
	bpl _0805B0C4
	rsbs r0, r0, #0
_0805B0C4:
	pop {r4}
	mov pc, lr
_0805B0C8:
	push {lr}
	bl sub_0805AFBC
	movs r0, #0
	pop {pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805B0D4
sub_805B0D4: @ 0x0805B0D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0805B140
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0805B114
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0805B114:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805B140: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805B144
sub_805B144: @ 0x0805B144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r0
	mov r8, r1
	cmp r6, #0
	beq _0805B15E
	b _0805B3AC
_0805B15E:
	cmp r7, r8
	bls _0805B238
	ldr r0, _0805B174
	cmp r7, r0
	bhi _0805B178
	movs r1, #0
	cmp r7, #0xff
	bls _0805B182
	movs r1, #8
	b _0805B182
	.align 2, 0
_0805B174: .4byte 0x0000FFFF
_0805B178:
	ldr r0, _0805B22C
	movs r1, #0x18
	cmp r7, r0
	bhi _0805B182
	movs r1, #0x10
_0805B182:
	ldr r0, _0805B230
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _0805B1AE
	lsls r7, r2
	mov r0, r8
	lsls r0, r2
	mov r8, r0
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	mov r3, sl
	lsls r3, r2
	mov sl, r3
_0805B1AE:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0805B234
	ands r0, r7
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r1, [sp]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805B1EE
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B1EE
	cmp r4, r2
	bhs _0805B1EE
	subs r6, #1
	adds r4, r4, r7
_0805B1EE:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r1, r0, #0
	ldr r4, [sp]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0805B234
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0805B226
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B226
	cmp r5, r2
	bhs _0805B226
	subs r1, #1
_0805B226:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0805B3B2
	.align 2, 0
_0805B22C: .4byte 0x00FFFFFF
_0805B230: .4byte 0x08DF1928
_0805B234: .4byte 0x0000FFFF
_0805B238:
	cmp r2, #0
	bne _0805B246
	movs r0, #1
	movs r1, #0
	bl sub_805B51C
	adds r7, r0, #0
_0805B246:
	adds r1, r7, #0
	ldr r0, _0805B258
	cmp r7, r0
	bhi _0805B25C
	movs r2, #0
	cmp r7, #0xff
	bls _0805B266
	movs r2, #8
	b _0805B266
	.align 2, 0
_0805B258: .4byte 0x0000FFFF
_0805B25C:
	ldr r0, _0805B284
	movs r2, #0x18
	cmp r7, r0
	bhi _0805B266
	movs r2, #0x10
_0805B266:
	ldr r0, _0805B288
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0805B28C
	mov r0, r8
	subs r0, r0, r7
	mov r8, r0
	movs r1, #1
	str r1, [sp, #4]
	b _0805B32A
	.align 2, 0
_0805B284: .4byte 0x00FFFFFF
_0805B288: .4byte 0x08DF1928
_0805B28C:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _0805B3A8
	ands r1, r7
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r2, [sp, #8]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805B2E6
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B2E6
	cmp r4, r1
	bhs _0805B2E6
	subs r6, #1
	adds r4, r4, r7
_0805B2E6:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r2, r0, #0
	ldr r4, [sp, #8]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0805B3A8
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _0805B320
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B320
	cmp r5, r1
	bhs _0805B320
	subs r2, #1
	adds r5, r5, r7
_0805B320:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #4]
	subs r1, r5, r1
	mov r8, r1
_0805B32A:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0805B3A8
	ands r0, r7
	str r0, [sp, #0xc]
	mov r0, r8
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805B36A
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B36A
	cmp r4, r2
	bhs _0805B36A
	subs r6, #1
	adds r4, r4, r7
_0805B36A:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r1, r0, #0
	ldr r4, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0805B3A8
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0805B3A2
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B3A2
	cmp r5, r2
	bhs _0805B3A2
	subs r1, #1
_0805B3A2:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0805B502
	.align 2, 0
_0805B3A8: .4byte 0x0000FFFF
_0805B3AC:
	cmp r6, r8
	bls _0805B3B8
	movs r6, #0
_0805B3B2:
	movs r4, #0
	str r4, [sp, #4]
	b _0805B502
_0805B3B8:
	adds r1, r6, #0
	ldr r0, _0805B3CC
	cmp r6, r0
	bhi _0805B3D0
	movs r2, #0
	cmp r6, #0xff
	bls _0805B3DA
	movs r2, #8
	b _0805B3DA
	.align 2, 0
_0805B3CC: .4byte 0x0000FFFF
_0805B3D0:
	ldr r0, _0805B3FC
	movs r2, #0x18
	cmp r6, r0
	bhi _0805B3DA
	movs r2, #0x10
_0805B3DA:
	ldr r0, _0805B400
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0805B408
	cmp r8, r6
	bhi _0805B3F4
	cmp sl, r7
	blo _0805B404
_0805B3F4:
	movs r6, #1
	mov r1, sl
	b _0805B4FC
	.align 2, 0
_0805B3FC: .4byte 0x00FFFFFF
_0805B400: .4byte 0x08DF1928
_0805B404:
	movs r6, #0
	b _0805B4FE
_0805B408:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov sb, r0
	ldr r1, _0805B518
	ands r1, r6
	str r1, [sp, #0x10]
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B51C
	adds r3, r0, #0
	ldr r2, [sp, #0x10]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805B46A
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _0805B46A
	cmp r4, r1
	bhs _0805B46A
	subs r3, #1
	adds r4, r4, r6
_0805B46A:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	str r3, [sp, #0x1c]
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r2, r0, #0
	ldr r4, [sp, #0x10]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0805B518
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x1c]
	cmp r5, r1
	bhs _0805B4A8
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _0805B4A8
	cmp r5, r1
	bhs _0805B4A8
	subs r2, #1
	adds r5, r5, r6
_0805B4A8:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _0805B518
	mov sb, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, sb
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _0805B4E0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0805B4E0:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, sb
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _0805B4FA
	cmp r3, r8
	bne _0805B4FE
	cmp r1, sl
	bls _0805B4FE
_0805B4FA:
	subs r6, #1
_0805B4FC:
	subs r0, r1, r7
_0805B4FE:
	movs r2, #0
	str r2, [sp, #4]
_0805B502:
	str r6, [sp, #0x14]
	ldr r3, [sp, #4]
	str r3, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805B518: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805B51C
sub_805B51C: @ 0x0805B51C
	cmp r1, #0
	beq _0805B58A
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _0805B584
	movs r4, #1
	lsls r4, r4, #0x1c
_0805B52E:
	cmp r1, r4
	bhs _0805B53C
	cmp r1, r0
	bhs _0805B53C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0805B52E
_0805B53C:
	lsls r4, r4, #3
_0805B53E:
	cmp r1, r4
	bhs _0805B54C
	cmp r1, r0
	bhs _0805B54C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805B53E
_0805B54C:
	cmp r0, r1
	blo _0805B554
	subs r0, r0, r1
	orrs r2, r3
_0805B554:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805B560
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0805B560:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805B56C
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0805B56C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0805B578
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0805B578:
	cmp r0, #0
	beq _0805B584
	lsrs r3, r3, #4
	beq _0805B584
	lsrs r1, r1, #4
	b _0805B54C
_0805B584:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_0805B58A:
	push {lr}
	bl sub_0805AFBC
	movs r0, #0
	pop {pc}

	THUMB_FUNC_START sub_805B594
sub_805B594: @ 0x0805B594
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov r4, sp
	str r4, [sp, #8]
	adds r7, r2, #0
	mov r8, r3
	str r0, [sp, #0xc]
	adds r6, r1, #0
	cmp r3, #0
	beq _0805B5B2
	b _0805B77C
_0805B5B2:
	cmp r7, r6
	bls _0805B61C
	ldr r0, _0805B5C8
	cmp r7, r0
	bhi _0805B5CC
	movs r1, #0
	cmp r7, #0xff
	bls _0805B5D6
	movs r1, #8
	b _0805B5D6
	.align 2, 0
_0805B5C8: .4byte 0x0000FFFF
_0805B5CC:
	ldr r0, _0805B610
	movs r1, #0x18
	cmp r7, r0
	bhi _0805B5D6
	movs r1, #0x10
_0805B5D6:
	ldr r0, _0805B614
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r0, r1, r0
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _0805B5FE
	lsls r7, r0
	lsls r6, r0
	subs r1, r1, r0
	ldr r0, [sp, #0xc]
	lsrs r0, r1
	orrs r6, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r1
	str r0, [sp, #0xc]
_0805B5FE:
	lsrs r2, r7, #0x10
	mov r8, r2
	ldr r3, _0805B618
	mov sb, r3
	mov r4, sb
	ands r4, r7
	mov sb, r4
	b _0805B6FC
	.align 2, 0
_0805B610: .4byte 0x00FFFFFF
_0805B614: .4byte 0x08DF1A28
_0805B618: .4byte 0x0000FFFF
_0805B61C:
	cmp r2, #0
	bne _0805B62A
	movs r0, #1
	movs r1, #0
	bl sub_805B51C
	adds r7, r0, #0
_0805B62A:
	adds r1, r7, #0
	ldr r0, _0805B63C
	cmp r7, r0
	bhi _0805B640
	movs r2, #0
	cmp r7, #0xff
	bls _0805B64A
	movs r2, #8
	b _0805B64A
	.align 2, 0
_0805B63C: .4byte 0x0000FFFF
_0805B640:
	ldr r0, _0805B664
	movs r2, #0x18
	cmp r7, r0
	bhi _0805B64A
	movs r2, #0x10
_0805B64A:
	ldr r0, _0805B668
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r0, r1, r0
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0805B66C
	subs r6, r6, r7
	b _0805B6EE
	.align 2, 0
_0805B664: .4byte 0x00FFFFFF
_0805B668: .4byte 0x08DF1A28
_0805B66C:
	ldr r4, [sp, #0x10]
	subs r1, r1, r4
	lsls r7, r4
	adds r5, r6, #0
	lsrs r5, r1
	lsls r6, r4
	ldr r0, [sp, #0xc]
	lsrs r0, r1
	orrs r6, r0
	ldr r0, [sp, #0xc]
	lsls r0, r4
	str r0, [sp, #0xc]
	lsrs r1, r7, #0x10
	mov r8, r1
	ldr r2, _0805B778
	mov sb, r2
	mov r3, sb
	ands r3, r7
	mov sb, r3
	adds r0, r5, #0
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl sub_805B51C
	mov r1, sb
	muls r1, r0, r1
	lsls r4, r4, #0x10
	lsrs r0, r6, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805B6BC
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B6BC
	cmp r4, r1
	bhs _0805B6BC
	adds r4, r4, r7
_0805B6BC:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r8
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl sub_805B51C
	mov r1, sb
	muls r1, r0, r1
	lsls r5, r5, #0x10
	ldr r0, _0805B778
	ands r6, r0
	orrs r5, r6
	cmp r5, r1
	bhs _0805B6EC
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B6EC
	cmp r5, r1
	bhs _0805B6EC
	adds r5, r5, r7
_0805B6EC:
	subs r6, r5, r1
_0805B6EE:
	lsrs r4, r7, #0x10
	mov r8, r4
	ldr r0, _0805B778
	mov sb, r0
	mov r1, sb
	ands r1, r7
	mov sb, r1
_0805B6FC:
	adds r0, r6, #0
	mov r1, r8
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, r8
	bl sub_805B51C
	mov r1, sb
	muls r1, r0, r1
	lsls r4, r4, #0x10
	ldr r2, [sp, #0xc]
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805B72A
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B72A
	cmp r4, r1
	bhs _0805B72A
	adds r4, r4, r7
_0805B72A:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r8
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl sub_805B51C
	mov r1, sb
	muls r1, r0, r1
	lsls r5, r5, #0x10
	ldr r0, _0805B778
	ldr r3, [sp, #0xc]
	ands r0, r3
	orrs r5, r0
	cmp r5, r1
	bhs _0805B75C
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B75C
	cmp r5, r1
	bhs _0805B75C
	adds r5, r5, r7
_0805B75C:
	subs r1, r5, r1
	str r1, [sp, #0xc]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne _0805B768
	b _0805B92A
_0805B768:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r0, r1
	str r0, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	b _0805B920
	.align 2, 0
_0805B778: .4byte 0x0000FFFF
_0805B77C:
	cmp r8, r6
	bls _0805B78E
	str r0, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	str r1, [sp]
	str r2, [sp, #4]
	b _0805B92A
_0805B78E:
	mov r1, r8
	ldr r0, _0805B7A0
	cmp r8, r0
	bhi _0805B7A4
	movs r2, #0
	cmp r1, #0xff
	bls _0805B7AE
	movs r2, #8
	b _0805B7AE
	.align 2, 0
_0805B7A0: .4byte 0x0000FFFF
_0805B7A4:
	ldr r0, _0805B7F0
	movs r2, #0x18
	cmp r8, r0
	bhi _0805B7AE
	movs r2, #0x10
_0805B7AE:
	ldr r0, _0805B7F4
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r0, r1, r0
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0805B7F8
	cmp r6, r8
	bhi _0805B7CC
	ldr r2, [sp, #0xc]
	cmp r2, r7
	blo _0805B7DC
_0805B7CC:
	ldr r3, [sp, #0xc]
	subs r0, r3, r7
	mov r4, r8
	subs r6, r6, r4
	cmp r0, r3
	bls _0805B7DA
	subs r6, #1
_0805B7DA:
	str r0, [sp, #0xc]
_0805B7DC:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0805B7E4
	b _0805B92A
_0805B7E4:
	ldr r1, [sp, #0xc]
	str r1, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	b _0805B926
	.align 2, 0
_0805B7F0: .4byte 0x00FFFFFF
_0805B7F4: .4byte 0x08DF1A28
_0805B7F8:
	ldr r2, [sp, #0x10]
	subs r1, r1, r2
	str r1, [sp, #0x14]
	mov r3, r8
	lsls r3, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	lsls r7, r2
	adds r5, r6, #0
	lsrs r5, r1
	lsls r6, r2
	ldr r0, [sp, #0xc]
	lsrs r0, r1
	orrs r6, r0
	ldr r4, [sp, #0xc]
	lsls r4, r2
	str r4, [sp, #0xc]
	lsrs r3, r3, #0x10
	mov sl, r3
	ldr r0, _0805B93C
	mov r1, r8
	ands r1, r0
	str r1, [sp, #0x20]
	adds r0, r5, #0
	mov r1, sl
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sl
	bl sub_805B51C
	mov sb, r0
	ldr r3, [sp, #0x20]
	mov r2, sb
	muls r2, r3, r2
	lsls r4, r4, #0x10
	lsrs r0, r6, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805B862
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	add r4, r8
	cmp r4, r8
	blo _0805B862
	cmp r4, r2
	bhs _0805B862
	add sb, r0
	add r4, r8
_0805B862:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sl
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sl
	bl sub_805B51C
	adds r3, r0, #0
	ldr r1, [sp, #0x20]
	adds r2, r3, #0
	muls r2, r1, r2
	lsls r5, r5, #0x10
	ldr r0, _0805B93C
	ands r6, r0
	orrs r5, r6
	cmp r5, r2
	bhs _0805B89A
	subs r3, #1
	add r5, r8
	cmp r5, r8
	blo _0805B89A
	cmp r5, r2
	bhs _0805B89A
	subs r3, #1
	add r5, r8
_0805B89A:
	mov r4, sb
	lsls r1, r4, #0x10
	orrs r1, r3
	subs r6, r5, r2
	ldr r0, _0805B93C
	mov sb, r0
	adds r2, r1, #0
	ands r2, r0
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	mov r3, sb
	ands r0, r3
	lsrs r3, r7, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r3, r4
	adds r2, r1, #0
	muls r2, r0, r2
	muls r1, r3, r1
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0805B8D2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
_0805B8D2:
	lsrs r0, r4, #0x10
	adds r1, r1, r0
	mov r2, sb
	ands r4, r2
	lsls r0, r4, #0x10
	ands r5, r2
	adds r0, r0, r5
	cmp r1, r6
	bhi _0805B8EE
	cmp r1, r6
	bne _0805B8FC
	ldr r3, [sp, #0xc]
	cmp r0, r3
	bls _0805B8FC
_0805B8EE:
	subs r3, r0, r7
	mov r4, r8
	subs r1, r1, r4
	cmp r3, r0
	bls _0805B8FA
	subs r1, #1
_0805B8FA:
	adds r0, r3, #0
_0805B8FC:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0805B92A
	ldr r3, [sp, #0xc]
	subs r2, r3, r0
	subs r6, r6, r1
	cmp r2, r3
	bls _0805B90E
	subs r6, #1
_0805B90E:
	adds r0, r6, #0
	ldr r4, [sp, #0x14]
	lsls r0, r4
	ldr r1, [sp, #0x10]
	lsrs r2, r1
	orrs r0, r2
	str r0, [sp, #0x18]
	lsrs r6, r1
	str r6, [sp, #0x1c]
_0805B920:
	ldr r3, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	ldr r0, [sp, #8]
_0805B926:
	str r3, [r0]
	str r4, [r0, #4]
_0805B92A:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805B93C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805B940
sub_805B940: @ 0x0805B940
	cmp r1, #0
	beq _0805B9F6
	movs r3, #1
	cmp r0, r1
	bhs _0805B94C
	mov pc, lr
_0805B94C:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_0805B952:
	cmp r1, r4
	bhs _0805B960
	cmp r1, r0
	bhs _0805B960
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0805B952
_0805B960:
	lsls r4, r4, #3
_0805B962:
	cmp r1, r4
	bhs _0805B970
	cmp r1, r0
	bhs _0805B970
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805B962
_0805B970:
	movs r2, #0
	cmp r0, r1
	blo _0805B978
	subs r0, r0, r1
_0805B978:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805B98A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B98A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805B99C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B99C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0805B9AE
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B9AE:
	mov ip, r3
	cmp r0, #0
	beq _0805B9BC
	lsrs r3, r3, #4
	beq _0805B9BC
	lsrs r1, r1, #4
	b _0805B970
_0805B9BC:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _0805B9C8
	pop {r4}
	mov pc, lr
_0805B9C8:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0805B9D6
	lsrs r4, r1, #3
	adds r0, r0, r4
_0805B9D6:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0805B9E4
	lsrs r4, r1, #2
	adds r0, r0, r4
_0805B9E4:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0805B9F2
	lsrs r4, r1, #1
	adds r0, r0, r4
_0805B9F2:
	pop {r4}
	mov pc, lr
_0805B9F6:
	push {lr}
	bl sub_0805AFBC
	movs r0, #0
	pop {pc}

	THUMB_FUNC_START sub_805BA00
sub_805BA00: @ 0x0805BA00
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _0805BA18
	movs r2, #1
_0805BA18:
	cmp r2, #0
	beq _0805BA38
	ldr r6, _0805BA2C
	ldr r2, _0805BA30
	ldr r3, _0805BA34
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _0805BAF0
	.align 2, 0
_0805BA2C: .4byte 0x000007FF
_0805BA30: .4byte 0x00000000
_0805BA34: .4byte 0x00080000
_0805BA38:
	movs r2, #0
	cmp r0, #4
	bne _0805BA40
	movs r2, #1
_0805BA40:
	cmp r2, #0
	bne _0805BA8C
	movs r2, #0
	cmp r0, #2
	bne _0805BA4C
	movs r2, #1
_0805BA4C:
	cmp r2, #0
	beq _0805BA56
	movs r4, #0
	movs r5, #0
	b _0805BAF4
_0805BA56:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0805BAF4
	ldr r2, [r1, #8]
	ldr r0, _0805BA74
	cmp r2, r0
	bge _0805BA86
	subs r2, r0, r2
	cmp r2, #0x38
	ble _0805BA78
	movs r4, #0
	movs r5, #0
	b _0805BAE6
	.align 2, 0
_0805BA74: .4byte 0xFFFFFC02
_0805BA78:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_805D0E8
	adds r5, r1, #0
	adds r4, r0, #0
	b _0805BAE6
_0805BA86:
	ldr r0, _0805BA94
	cmp r2, r0
	ble _0805BA9C
_0805BA8C:
	ldr r6, _0805BA98
	movs r4, #0
	movs r5, #0
	b _0805BAF4
	.align 2, 0
_0805BA94: .4byte 0x000003FF
_0805BA98: .4byte 0x000007FF
_0805BA9C:
	ldr r0, _0805BAC4
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0805BAC8
	cmp r2, #0
	bne _0805BAC8
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _0805BAD0
	movs r0, #0x80
	movs r1, #0
	b _0805BACC
	.align 2, 0
_0805BAC4: .4byte 0x000003FF
_0805BAC8:
	movs r0, #0x7f
	movs r1, #0
_0805BACC:
	adds r4, r4, r0
	adcs r5, r1
_0805BAD0:
	ldr r0, _0805BB34
	cmp r5, r0
	bls _0805BAE6
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_0805BAE6:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_0805BAF0:
	adds r5, r1, #0
	adds r4, r0, #0
_0805BAF4:
	str r4, [sp]
	ldr r2, _0805BB38
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _0805BB3C
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _0805BB40
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _0805BB44
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805BB34: .4byte 0x1FFFFFFF
_0805BB38: .4byte 0x000FFFFF
_0805BB3C: .4byte 0xFFF00000
_0805BB40: .4byte 0x000007FF
_0805BB44: .4byte 0xFFFF800F

	THUMB_FUNC_START sub_805BB48
sub_805BB48: @ 0x0805BB48
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _0805BBBC
	orrs r1, r5
	cmp r1, #0
	bne _0805BB7C
	movs r0, #2
	str r0, [r6]
	b _0805BC10
_0805BB7C:
	ldr r0, _0805BBB4
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _0805BBB8
	cmp r5, r0
	bhi _0805BBEC
	adds r7, r0, #0
_0805BB9A:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _0805BB9A
	b _0805BBEC
	.align 2, 0
_0805BBB4: .4byte 0xFFFFFC02
_0805BBB8: .4byte 0x0FFFFFFF
_0805BBBC:
	ldr r0, _0805BBD0
	cmp r3, r0
	bne _0805BBF2
	orrs r1, r5
	cmp r1, #0
	bne _0805BBD4
	movs r0, #4
	str r0, [r6]
	b _0805BC10
	.align 2, 0
_0805BBD0: .4byte 0x000007FF
_0805BBD4:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _0805BBEA
	movs r0, #1
	str r0, [r6]
	b _0805BBEC
_0805BBEA:
	str r1, [r6]
_0805BBEC:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _0805BC10
_0805BBF2:
	ldr r1, _0805BC14
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _0805BC18
	ldr r3, _0805BC1C
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_0805BC10:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805BC14: .4byte 0xFFFFFC01
_0805BC18: .4byte 0x00000000
_0805BC1C: .4byte 0x10000000

	THUMB_FUNC_START sub_805BC20
sub_805BC20: @ 0x0805BC20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _0805BC3C
	movs r0, #1
_0805BC3C:
	cmp r0, #0
	beq _0805BC44
_0805BC40:
	adds r0, r3, #0
	b _0805BE7C
_0805BC44:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _0805BC4E
	movs r1, #1
_0805BC4E:
	cmp r1, #0
	bne _0805BCC6
	movs r1, #0
	cmp r2, #4
	bne _0805BC5A
	movs r1, #1
_0805BC5A:
	cmp r1, #0
	beq _0805BC7C
	movs r1, #0
	cmp r0, #4
	bne _0805BC66
	movs r1, #1
_0805BC66:
	cmp r1, #0
	beq _0805BC40
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0805BC40
	ldr r0, _0805BC78
	b _0805BE7C
	.align 2, 0
_0805BC78: .4byte 0x02020A00
_0805BC7C:
	movs r1, #0
	cmp r0, #4
	bne _0805BC84
	movs r1, #1
_0805BC84:
	cmp r1, #0
	bne _0805BCC6
	movs r1, #0
	cmp r0, #2
	bne _0805BC90
	movs r1, #1
_0805BC90:
	cmp r1, #0
	beq _0805BCB8
	movs r0, #0
	cmp r2, #2
	bne _0805BC9C
	movs r0, #1
_0805BC9C:
	cmp r0, #0
	beq _0805BC40
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _0805BE7A
_0805BCB8:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _0805BCC2
	movs r1, #1
_0805BCC2:
	cmp r1, #0
	beq _0805BCCA
_0805BCC6:
	adds r0, r4, #0
	b _0805BE7C
_0805BCCA:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0805BCEA
	rsbs r0, r0, #0
_0805BCEA:
	cmp r0, #0x3f
	bgt _0805BD68
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _0805BD34
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_0805BD02:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _0805BD02
	mov r8, sb
_0805BD34:
	cmp r8, sb
	ble _0805BD84
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_0805BD40:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _0805BD40
	mov sb, r8
	b _0805BD84
_0805BD68:
	cmp sb, r8
	ble _0805BD76
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _0805BD7C
_0805BD76:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_0805BD7C:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_0805BD84:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _0805BE2C
	mov r2, ip
	cmp r2, #0
	beq _0805BDA6
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_805D11C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _0805BDB2
_0805BDA6:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_0805BDB2:
	cmp r3, #0
	blt _0805BDC8
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _0805BDE0
_0805BDC8:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_805D11C
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0805BDE0:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_0805BDEC:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _0805BE28
	cmp r3, r0
	bhi _0805BE44
	cmp r3, r0
	bne _0805BE02
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _0805BE44
_0805BE02:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _0805BDEC
	.align 2, 0
_0805BE28: .4byte 0x0FFFFFFF
_0805BE2C:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_0805BE44:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _0805BE88
	cmp r1, r0
	bls _0805BE7A
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_0805BE7A:
	mov r0, sl
_0805BE7C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805BE88: .4byte 0x1FFFFFFF

	THUMB_FUNC_START sub_805BE8C
sub_805BE8C: @ 0x0805BE8C
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_805BB48
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_805BB48
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_805BC20
	bl sub_805BA00
	add sp, #0x4c
	pop {r4, pc}
	.byte 0x10, 0xB5, 0x93, 0xB0
	.byte 0x0F, 0x90, 0x10, 0x91, 0x11, 0x92, 0x12, 0x93, 0x0F, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x3C, 0xFE
	.byte 0x11, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x37, 0xFE, 0x60, 0x68, 0x01, 0x21, 0x48, 0x40
	.byte 0x60, 0x60, 0x0A, 0xAA, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x9A, 0xFE, 0xFF, 0xF7, 0x88, 0xFD
	.byte 0x13, 0xB0, 0x10, 0xBD

	THUMB_FUNC_START sub_805BEF4
sub_805BEF4: @ 0x0805BEF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_805BB48
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_805BB48
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _0805BF2A
	movs r0, #1
_0805BF2A:
	cmp r0, #0
	bne _0805BF8E
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0805BF38
	movs r2, #1
_0805BF38:
	cmp r2, #0
	beq _0805BF40
	ldr r0, [sp, #4]
	b _0805BFB0
_0805BF40:
	movs r2, #0
	cmp r1, #4
	bne _0805BF48
	movs r2, #1
_0805BF48:
	cmp r2, #0
	beq _0805BF5A
	movs r1, #0
	cmp r0, #2
	bne _0805BF54
	movs r1, #1
_0805BF54:
	cmp r1, #0
	bne _0805BF72
	b _0805BF8E
_0805BF5A:
	movs r2, #0
	cmp r0, #4
	bne _0805BF62
	movs r2, #1
_0805BF62:
	cmp r2, #0
	beq _0805BF82
	movs r0, #0
	cmp r1, #2
	bne _0805BF6E
	movs r0, #1
_0805BF6E:
	cmp r0, #0
	beq _0805BF7C
_0805BF72:
	ldr r0, _0805BF78
	b _0805C17A
	.align 2, 0
_0805BF78: .4byte 0x02020A00
_0805BF7C:
	mov r1, r8
	ldr r0, [r1, #4]
	b _0805BFB0
_0805BF82:
	movs r2, #0
	cmp r1, #2
	bne _0805BF8A
	movs r2, #1
_0805BF8A:
	cmp r2, #0
	beq _0805BFA0
_0805BF8E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0805C17A
_0805BFA0:
	movs r1, #0
	cmp r0, #2
	bne _0805BFA8
	movs r1, #1
_0805BFA8:
	cmp r1, #0
	beq _0805BFC0
	mov r2, r8
	ldr r0, [r2, #4]
_0805BFB0:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _0805C17A
_0805BFC0:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_805B0D4
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_805B0D4
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_805B0D4
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_805B0D4
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _0805C038
	cmp r7, r3
	bne _0805C040
	cmp r6, r2
	bls _0805C040
_0805C038:
	ldr r5, _0805C190
	ldr r4, _0805C18C
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0805C040:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _0805C05C
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _0805C06C
	cmp r0, r6
	bls _0805C06C
_0805C05C:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0805C06C:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _0805C194
	cmp r5, r0
	bls _0805C0EE
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_0805C0B2:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _0805C0D8
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_0805C0D8:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _0805C0B2
	mov r0, ip
	str r0, [sp, #0x30]
_0805C0EE:
	ldr r0, _0805C198
	cmp r5, r0
	bhi _0805C140
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_0805C100:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _0805C12A
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_0805C12A:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _0805C100
	mov r1, ip
	str r1, [sp, #0x30]
_0805C140:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0805C16E
	cmp r2, #0
	bne _0805C16E
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0805C166
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _0805C16E
_0805C166:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_0805C16E:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_0805C17A:
	bl sub_805BA00
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805C18C: .4byte 0x00000000
_0805C190: .4byte 0x00000001
_0805C194: .4byte 0x1FFFFFFF
_0805C198: .4byte 0x0FFFFFFF
	.byte 0xF0, 0xB5, 0x92, 0xB0
	.byte 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xCC, 0xFC
	.byte 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xC7, 0xFC, 0xEC, 0x46, 0x00, 0x20, 0x00, 0x9B
	.byte 0x01, 0x2B, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28, 0x01, 0xD0, 0x69, 0x46, 0xA0, 0xE0, 0x00, 0x20
	.byte 0x05, 0x9A, 0x15, 0x1C, 0x01, 0x2A, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28, 0x01, 0xD0, 0x21, 0x1C
	.byte 0x96, 0xE0, 0x01, 0x98, 0x06, 0x99, 0x48, 0x40, 0x01, 0x90, 0x00, 0x20, 0x04, 0x2B, 0x00, 0xD1
	.byte 0x01, 0x20, 0x00, 0x28, 0x05, 0xD1, 0x00, 0x24, 0x02, 0x2B, 0x00, 0xD1, 0x01, 0x24, 0x00, 0x2C
	.byte 0x08, 0xD0, 0x61, 0x46, 0x08, 0x68, 0xA8, 0x42, 0x00, 0xD0, 0x81, 0xE0, 0x00, 0x49, 0x7F, 0xE0
	.byte 0x00, 0x0A, 0x02, 0x02, 0x00, 0x20, 0x04, 0x2A, 0x00, 0xD1, 0x01, 0x20, 0x00, 0x28, 0x06, 0xD0
	.byte 0x00, 0x20, 0x00, 0x21, 0x03, 0x90, 0x04, 0x91, 0x02, 0x94, 0x69, 0x46, 0x70, 0xE0, 0x00, 0x20
	.byte 0x02, 0x2A, 0x00, 0xD1, 0x01, 0x20, 0x00, 0x28, 0x03, 0xD0, 0x04, 0x20, 0x62, 0x46, 0x10, 0x60
	.byte 0x65, 0xE0, 0x63, 0x46, 0x99, 0x68, 0x07, 0x98, 0x0E, 0x1A, 0x9E, 0x60, 0xDC, 0x68, 0x1D, 0x69
	.byte 0x08, 0x98, 0x09, 0x99, 0x0E, 0x90, 0x0F, 0x91, 0xA9, 0x42, 0x04, 0xD8, 0x0F, 0x99, 0xA9, 0x42
	.byte 0x0B, 0xD1, 0xA0, 0x42, 0x09, 0xD9, 0xE3, 0x0F, 0x6A, 0x00, 0x19, 0x1C, 0x11, 0x43, 0x60, 0x00
	.byte 0x0D, 0x1C, 0x04, 0x1C, 0x70, 0x1E, 0x62, 0x46, 0x90, 0x60, 0x29, 0x4F, 0x27, 0x4E, 0x00, 0x20
	.byte 0x00, 0x21, 0x10, 0x90, 0x11, 0x91, 0x0F, 0x99, 0xA9, 0x42, 0x0E, 0xD8, 0xA9, 0x42, 0x02, 0xD1
	.byte 0x0E, 0x9A, 0xA2, 0x42, 0x09, 0xD8, 0x10, 0x98, 0x30, 0x43, 0x11, 0x99, 0x39, 0x43, 0x10, 0x90
	.byte 0x11, 0x91, 0x0E, 0x98, 0x0F, 0x99, 0x24, 0x1A, 0x8D, 0x41, 0xFB, 0x07, 0x72, 0x08, 0x18, 0x1C
	.byte 0x10, 0x43, 0x79, 0x08, 0x0F, 0x1C, 0x06, 0x1C, 0xE3, 0x0F, 0x6A, 0x00, 0x19, 0x1C, 0x11, 0x43
	.byte 0x60, 0x00, 0x0D, 0x1C, 0x04, 0x1C, 0x38, 0x1C, 0x30, 0x43, 0x00, 0x28, 0xDB, 0xD1, 0xFF, 0x20
	.byte 0x10, 0x99, 0x01, 0x40, 0x00, 0x22, 0x80, 0x29, 0x14, 0xD1, 0x00, 0x2A, 0x12, 0xD1, 0x01, 0x30
	.byte 0x10, 0x99, 0x01, 0x40, 0x10, 0x1C, 0x08, 0x43, 0x00, 0x28, 0x03, 0xD1, 0x28, 0x1C, 0x20, 0x43
	.byte 0x00, 0x28, 0x07, 0xD0, 0x80, 0x20, 0x00, 0x21, 0x10, 0x9A, 0x11, 0x9B, 0x12, 0x18, 0x4B, 0x41
	.byte 0x10, 0x92, 0x11, 0x93, 0x10, 0x98, 0x11, 0x99, 0x62, 0x46, 0xD0, 0x60, 0x11, 0x61, 0x61, 0x46
	.byte 0x08, 0x1C, 0xFF, 0xF7, 0x75, 0xFB, 0x12, 0xB0, 0xF0, 0xBD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10

	THUMB_FUNC_START sub_805C324
sub_805C324: @ 0x0805C324
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _0805C334
	movs r0, #1
_0805C334:
	cmp r0, #0
	bne _0805C346
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0805C342
	movs r0, #1
_0805C342:
	cmp r0, #0
	beq _0805C34A
_0805C346:
	movs r0, #1
	b _0805C420
_0805C34A:
	movs r0, #0
	cmp r1, #4
	bne _0805C352
	movs r0, #1
_0805C352:
	cmp r0, #0
	beq _0805C36A
	movs r0, #0
	cmp r2, #4
	bne _0805C35E
	movs r0, #1
_0805C35E:
	cmp r0, #0
	beq _0805C36A
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _0805C420
_0805C36A:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _0805C374
	movs r1, #1
_0805C374:
	cmp r1, #0
	bne _0805C3C2
	movs r1, #0
	cmp r2, #4
	bne _0805C380
	movs r1, #1
_0805C380:
	cmp r1, #0
	beq _0805C392
_0805C384:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0805C3CC
	movs r1, #1
	b _0805C3CC
_0805C392:
	movs r1, #0
	cmp r0, #2
	bne _0805C39A
	movs r1, #1
_0805C39A:
	cmp r1, #0
	beq _0805C3AA
	movs r1, #0
	cmp r2, #2
	bne _0805C3A6
	movs r1, #1
_0805C3A6:
	cmp r1, #0
	bne _0805C41E
_0805C3AA:
	movs r1, #0
	cmp r0, #2
	bne _0805C3B2
	movs r1, #1
_0805C3B2:
	cmp r1, #0
	bne _0805C384
	movs r0, #0
	cmp r2, #2
	bne _0805C3BE
	movs r0, #1
_0805C3BE:
	cmp r0, #0
	beq _0805C3D0
_0805C3C2:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _0805C3CC
	subs r1, #2
_0805C3CC:
	adds r0, r1, #0
	b _0805C420
_0805C3D0:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _0805C3E2
_0805C3D8:
	movs r0, #1
	cmp r4, #0
	beq _0805C420
	subs r0, #2
	b _0805C420
_0805C3E2:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _0805C3D8
	cmp r1, r0
	bge _0805C3FA
_0805C3EE:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _0805C420
	movs r0, #1
	b _0805C420
_0805C3FA:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _0805C3D8
	cmp r3, r2
	bne _0805C40E
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _0805C3D8
_0805C40E:
	cmp r2, r3
	bhi _0805C3EE
	cmp r2, r3
	bne _0805C41E
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _0805C3EE
_0805C41E:
	movs r0, #0
_0805C420:
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0, 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93
	.byte 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x88, 0xFB, 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x83, 0xFB, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x6D, 0xFF, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00
	.byte 0x10, 0xB5, 0x8E, 0xB0, 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46
	.byte 0xFF, 0xF7, 0x72, 0xFB, 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x6D, 0xFB, 0x00, 0x21
	.byte 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98
	.byte 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46
	.byte 0x21, 0x1C, 0xFF, 0xF7, 0x47, 0xFF, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0
	.byte 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x4C, 0xFB
	.byte 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x47, 0xFB, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x21, 0xFF, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0, 0x0A, 0x90, 0x0B, 0x91
	.byte 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x26, 0xFB, 0x0C, 0xA8, 0x05, 0xAC
	.byte 0x21, 0x1C, 0xFF, 0xF7, 0x21, 0xFB, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21
	.byte 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29
	.byte 0x02, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0xFA, 0xFE
	.byte 0x0E, 0xB0, 0x10, 0xBD

	THUMB_FUNC_START sub_805C534
sub_805C534: @ 0x0805C534
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_805BB48
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_805BB48
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0805C55C
	movs r1, #1
_0805C55C:
	cmp r1, #0
	bne _0805C56E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0805C56A
	movs r1, #1
_0805C56A:
	cmp r1, #0
	beq _0805C574
_0805C56E:
	movs r0, #1
	rsbs r0, r0, #0
	b _0805C57C
_0805C574:
	mov r0, sp
	adds r1, r4, #0
	bl sub_805C324
_0805C57C:
	add sp, #0x38
	pop {r4, pc}
	.byte 0x10, 0xB5, 0x8E, 0xB0, 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46
	.byte 0xFF, 0xF7, 0xDA, 0xFA, 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xD5, 0xFA, 0x00, 0x21
	.byte 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98
	.byte 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46
	.byte 0x21, 0x1C, 0xFF, 0xF7, 0xAF, 0xFE, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0
	.byte 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xB4, 0xFA
	.byte 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xAF, 0xFA, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x89, 0xFE, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00

	THUMB_FUNC_START sub_805C618
sub_805C618: @ 0x0805C618
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _0805C630
	movs r0, #2
	str r0, [sp]
	b _0805C686
_0805C630:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0805C656
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _0805C650
	ldr r1, _0805C64C
	ldr r0, _0805C648
	b _0805C68C
	.align 2, 0
_0805C648: .4byte 0xC1E00000
_0805C64C: .4byte 0x00000000
_0805C650:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _0805C65A
_0805C656:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_0805C65A:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _0805C690
	cmp r0, r1
	bhi _0805C686
	adds r5, r1, #0
	ldr r4, [sp, #8]
_0805C66A:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _0805C66A
	str r4, [sp, #8]
_0805C686:
	mov r0, sp
	bl sub_805BA00
_0805C68C:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0805C690: .4byte 0x0FFFFFFF

	THUMB_FUNC_START sub_805C694
sub_805C694: @ 0x0805C694
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_805BB48
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0805C6AE
	movs r1, #1
_0805C6AE:
	cmp r1, #0
	bne _0805C6E2
	movs r1, #0
	cmp r0, #1
	bhi _0805C6BA
	movs r1, #1
_0805C6BA:
	cmp r1, #0
	bne _0805C6E2
	movs r1, #0
	cmp r0, #4
	bne _0805C6C6
	movs r1, #1
_0805C6C6:
	cmp r1, #0
	beq _0805C6DC
_0805C6CA:
	ldr r0, [sp, #4]
	ldr r1, _0805C6D8
	cmp r0, #0
	beq _0805C700
	adds r1, #1
	b _0805C700
	.align 2, 0
_0805C6D8: .4byte 0x7FFFFFFF
_0805C6DC:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _0805C6E6
_0805C6E2:
	movs r0, #0
	b _0805C702
_0805C6E6:
	cmp r0, #0x1e
	bgt _0805C6CA
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_805D0E8
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0805C700
	rsbs r1, r1, #0
_0805C700:
	adds r0, r1, #0
_0805C702:
	add sp, #0x1c
	pop {pc}
	.byte 0x00, 0x00, 0x00, 0xB5, 0x87, 0xB0, 0x05, 0x90, 0x06, 0x91
	.byte 0x05, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x18, 0xFA, 0x00, 0x21, 0x01, 0x98, 0x00, 0x28, 0x00, 0xD1
	.byte 0x01, 0x21, 0x01, 0x91, 0x68, 0x46, 0xFF, 0xF7, 0x6B, 0xF9, 0x07, 0xB0, 0x00, 0xBD, 0x00, 0x00

	THUMB_FUNC_START sub_805C730
sub_805C730: @ 0x0805C730
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl sub_805BA00
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.byte 0x00, 0x00, 0x30, 0xB5, 0x87, 0xB0, 0x05, 0x90, 0x06, 0x91
	.byte 0x05, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xF0, 0xF9, 0x03, 0x9A, 0x04, 0x9B, 0x9D, 0x00, 0x94, 0x0F
	.byte 0x28, 0x1C, 0x20, 0x43, 0x05, 0x1C, 0x08, 0x4C, 0x10, 0x1C, 0x20, 0x40, 0x00, 0x21, 0x08, 0x43
	.byte 0x00, 0x28, 0x01, 0xD0, 0x01, 0x20, 0x05, 0x43, 0x00, 0x98, 0x01, 0x99, 0x02, 0x9A, 0x2B, 0x1C
	.byte 0x00, 0xF0, 0x88, 0xFC, 0x07, 0xB0, 0x30, 0xBD, 0xFF, 0xFF, 0xFF, 0x3F

	THUMB_FUNC_START sub_805C79C
sub_805C79C: @ 0x0805C79C
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0805C7AE
	movs r1, #1
_0805C7AE:
	cmp r1, #0
	beq _0805C7BC
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _0805C822
_0805C7BC:
	movs r1, #0
	cmp r3, #4
	bne _0805C7C4
	movs r1, #1
_0805C7C4:
	cmp r1, #0
	bne _0805C7F8
	movs r1, #0
	cmp r3, #2
	bne _0805C7D0
	movs r1, #1
_0805C7D0:
	cmp r1, #0
	beq _0805C7D8
	movs r2, #0
	b _0805C822
_0805C7D8:
	cmp r2, #0
	beq _0805C822
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0805C7F4
	subs r0, r3, r0
	cmp r0, #0x19
	ble _0805C7F0
	movs r2, #0
	b _0805C820
_0805C7F0:
	lsrs r2, r0
	b _0805C820
_0805C7F4:
	cmp r0, #0x7f
	ble _0805C7FE
_0805C7F8:
	movs r5, #0xff
	movs r2, #0
	b _0805C822
_0805C7FE:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _0805C816
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0805C818
	adds r2, #0x40
	b _0805C818
_0805C816:
	adds r2, #0x3f
_0805C818:
	cmp r2, #0
	bge _0805C820
	lsrs r2, r2, #1
	adds r5, #1
_0805C820:
	lsrs r2, r2, #7
_0805C822:
	ldr r0, _0805C844
	ands r2, r0
	ldr r0, _0805C848
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _0805C84C
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _0805C850
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805C844: .4byte 0x007FFFFF
_0805C848: .4byte 0xFF800000
_0805C84C: .4byte 0x807FFFFF
_0805C850: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_805C854
sub_805C854: @ 0x0805C854
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _0805C898
	cmp r2, #0
	bne _0805C874
	movs r0, #2
	str r0, [r3]
	b _0805C8CC
_0805C874:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _0805C894
	cmp r2, r1
	bhi _0805C8B4
	adds r0, r4, #0
_0805C888:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _0805C888
	str r0, [r3, #8]
	b _0805C8B4
	.align 2, 0
_0805C894: .4byte 0x3FFFFFFF
_0805C898:
	cmp r1, #0xff
	bne _0805C8B8
	cmp r2, #0
	bne _0805C8A6
	movs r0, #4
	str r0, [r3]
	b _0805C8CC
_0805C8A6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _0805C8B2
	movs r0, #1
_0805C8B2:
	str r0, [r3]
_0805C8B4:
	str r2, [r3, #0xc]
	b _0805C8CC
_0805C8B8:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_0805C8CC:
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805C8D0
sub_805C8D0: @ 0x0805C8D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0805C8E6
	movs r0, #1
_0805C8E6:
	cmp r0, #0
	beq _0805C8EE
_0805C8EA:
	adds r0, r6, #0
	b _0805CA44
_0805C8EE:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _0805C8F8
	movs r1, #1
_0805C8F8:
	cmp r1, #0
	bne _0805C96C
	movs r1, #0
	cmp r2, #4
	bne _0805C904
	movs r1, #1
_0805C904:
	cmp r1, #0
	beq _0805C924
	movs r1, #0
	cmp r0, #4
	bne _0805C910
	movs r1, #1
_0805C910:
	cmp r1, #0
	beq _0805C8EA
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0805C8EA
	ldr r0, _0805C920
	b _0805CA44
	.align 2, 0
_0805C920: .4byte 0x02020A18
_0805C924:
	movs r1, #0
	cmp r0, #4
	bne _0805C92C
	movs r1, #1
_0805C92C:
	cmp r1, #0
	bne _0805C96C
	movs r1, #0
	cmp r0, #2
	bne _0805C938
	movs r1, #1
_0805C938:
	cmp r1, #0
	beq _0805C95E
	movs r0, #0
	cmp r2, #2
	bne _0805C944
	movs r0, #1
_0805C944:
	cmp r0, #0
	beq _0805C8EA
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _0805CA42
_0805C95E:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _0805C968
	movs r1, #1
_0805C968:
	cmp r1, #0
	beq _0805C970
_0805C96C:
	adds r0, r7, #0
	b _0805CA44
_0805C970:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _0805C980
	rsbs r0, r0, #0
_0805C980:
	cmp r0, #0x1f
	bgt _0805C9C4
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _0805C9A6
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_0805C994:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _0805C994
	adds r3, r1, #0
_0805C9A6:
	cmp r3, r1
	ble _0805C9D6
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_0805C9B0:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _0805C9B0
	adds r1, r3, #0
	b _0805C9D6
_0805C9C4:
	cmp r1, r3
	ble _0805C9CC
	movs r4, #0
	b _0805C9D0
_0805C9CC:
	adds r1, r3, #0
	movs r2, #0
_0805C9D0:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_0805C9D6:
	cmp r6, r8
	beq _0805CA20
	cmp r6, #0
	beq _0805C9E2
	subs r3, r4, r2
	b _0805C9E4
_0805C9E2:
	subs r3, r2, r4
_0805C9E4:
	cmp r3, #0
	blt _0805C9F2
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _0805C9FC
_0805C9F2:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_0805C9FC:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _0805CA1C
	cmp r0, r2
	bhi _0805CA28
_0805CA06:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _0805CA06
	b _0805CA28
	.align 2, 0
_0805CA1C: .4byte 0x3FFFFFFE
_0805CA20:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_0805CA28:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _0805CA42
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_0805CA42:
	adds r0, r5, #0
_0805CA44:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0
	.byte 0x0C, 0x90, 0x0D, 0x91, 0x0C, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xFC, 0xFE, 0x0D, 0xA8, 0x04, 0xAC
	.byte 0x21, 0x1C, 0xFF, 0xF7, 0xF7, 0xFE, 0x08, 0xAA, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x30, 0xFF
	.byte 0xFF, 0xF7, 0x94, 0xFE, 0x0E, 0xB0, 0x10, 0xBD, 0x10, 0xB5, 0x8E, 0xB0, 0x0C, 0x90, 0x0D, 0x91
	.byte 0x0C, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xE6, 0xFE, 0x0D, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0xE1, 0xFE, 0x60, 0x68, 0x01, 0x21, 0x48, 0x40, 0x60, 0x60, 0x08, 0xAA, 0x68, 0x46, 0x21, 0x1C
	.byte 0xFF, 0xF7, 0x16, 0xFF, 0xFF, 0xF7, 0x7A, 0xFE, 0x0E, 0xB0, 0x10, 0xBD, 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x8E, 0xB0, 0x0C, 0x90, 0x0D, 0x91, 0x0C, 0xA8, 0x69, 0x46, 0xFF, 0xF7
	.byte 0xC9, 0xFE, 0x0D, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xC4, 0xFE, 0x6F, 0x46, 0x08, 0xA8
	.byte 0x80, 0x46, 0x00, 0x20, 0x00, 0x99, 0xC1, 0x46, 0x01, 0x29, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28
	.byte 0x2C, 0xD1, 0x00, 0x22, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x22, 0x00, 0x2A, 0x01, 0xD0
	.byte 0x01, 0x98, 0x33, 0xE0, 0x00, 0x22, 0x04, 0x29, 0x00, 0xD1, 0x01, 0x22, 0x00, 0x2A, 0x06, 0xD0
	.byte 0x00, 0x21, 0x02, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x0C, 0xD1, 0x16, 0xE0, 0x00, 0x22
	.byte 0x04, 0x28, 0x00, 0xD1, 0x01, 0x22, 0x00, 0x2A, 0x0A, 0xD0, 0x00, 0x20, 0x02, 0x29, 0x00, 0xD1
	.byte 0x01, 0x20, 0x00, 0x28, 0x19, 0xD0, 0x01, 0x48, 0x69, 0xE0, 0x00, 0x00, 0x18, 0x0A, 0x02, 0x02
	.byte 0x00, 0x22, 0x02, 0x29, 0x00, 0xD1, 0x01, 0x22, 0x00, 0x2A, 0x08, 0xD0, 0x01, 0x98, 0x05, 0x99
	.byte 0x48, 0x40, 0x41, 0x42, 0x01, 0x43, 0xC9, 0x0F, 0x01, 0x91, 0x68, 0x46, 0x57, 0xE0, 0x00, 0x21
	.byte 0x02, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x08, 0xD0, 0x78, 0x68, 0x05, 0x99, 0x48, 0x40
	.byte 0x41, 0x42, 0x01, 0x43, 0xC9, 0x0F, 0x05, 0x91, 0x20, 0x1C, 0x48, 0xE0, 0xF8, 0x68, 0x00, 0x21
	.byte 0x07, 0x9A, 0x00, 0x23, 0xFE, 0xF7, 0xAE, 0xFA, 0x0A, 0x1C, 0x15, 0x1C, 0x06, 0x1C, 0xBC, 0x68
	.byte 0x06, 0x98, 0x24, 0x18, 0x0A, 0x94, 0x79, 0x68, 0x05, 0x98, 0x41, 0x40, 0x48, 0x42, 0x08, 0x43
	.byte 0xC0, 0x0F, 0x09, 0x90, 0x02, 0x34, 0x0A, 0x94, 0x00, 0x2A, 0x0D, 0xDA, 0x01, 0x22, 0x80, 0x21
	.byte 0x09, 0x06, 0x01, 0x34, 0x28, 0x1C, 0x10, 0x40, 0x00, 0x28, 0x01, 0xD0, 0x76, 0x08, 0x0E, 0x43
	.byte 0x6D, 0x08, 0x00, 0x2D, 0xF5, 0xDB, 0x0A, 0x94, 0x14, 0x48, 0x85, 0x42, 0x0F, 0xD8, 0x80, 0x24
	.byte 0x24, 0x06, 0x01, 0x23, 0x02, 0x1C, 0x0A, 0x99, 0x01, 0x39, 0x6D, 0x00, 0x30, 0x1C, 0x20, 0x40
	.byte 0x00, 0x28, 0x00, 0xD0, 0x1D, 0x43, 0x76, 0x00, 0x95, 0x42, 0xF5, 0xD9, 0x0A, 0x91, 0x7F, 0x20
	.byte 0x28, 0x40, 0x40, 0x28, 0x06, 0xD1, 0x80, 0x20, 0x28, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x2E
	.byte 0x00, 0xD0, 0x40, 0x35, 0x0B, 0x95, 0x03, 0x20, 0x41, 0x46, 0x08, 0x60, 0x48, 0x46, 0xFF, 0xF7
	.byte 0xCD, 0xFD, 0x0E, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBD, 0xFF, 0xFF, 0xFF, 0x3F
	.byte 0x70, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x1A, 0xFE
	.byte 0x09, 0xA8, 0x04, 0xAD, 0x29, 0x1C, 0xFF, 0xF7, 0x15, 0xFE, 0x6C, 0x46, 0x00, 0x20, 0x00, 0x9B
	.byte 0x01, 0x2B, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28, 0x01, 0xD0, 0x69, 0x46, 0x58, 0xE0, 0x00, 0x20
	.byte 0x04, 0x9A, 0x16, 0x1C, 0x01, 0x2A, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28, 0x01, 0xD0, 0x29, 0x1C
	.byte 0x4E, 0xE0, 0x01, 0x98, 0x05, 0x99, 0x48, 0x40, 0x01, 0x90, 0x00, 0x20, 0x04, 0x2B, 0x00, 0xD1
	.byte 0x01, 0x20, 0x00, 0x28, 0x05, 0xD1, 0x00, 0x20, 0x02, 0x2B, 0x00, 0xD1, 0x01, 0x20, 0x00, 0x28
	.byte 0x08, 0xD0, 0x20, 0x68, 0x21, 0x1C, 0xB0, 0x42, 0x3A, 0xD1, 0x01, 0x49, 0x38, 0xE0, 0x00, 0x00
	.byte 0x18, 0x0A, 0x02, 0x02, 0x00, 0x21, 0x04, 0x2A, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x03, 0xD0
	.byte 0x03, 0x90, 0x02, 0x90, 0x69, 0x46, 0x2B, 0xE0, 0x00, 0x20, 0x02, 0x2A, 0x00, 0xD1, 0x01, 0x20
	.byte 0x00, 0x28, 0x02, 0xD0, 0x04, 0x20, 0x20, 0x60, 0x21, 0xE0, 0xA1, 0x68, 0x06, 0x98, 0x08, 0x1A
	.byte 0xA0, 0x60, 0xE2, 0x68, 0x07, 0x9B, 0x9A, 0x42, 0x02, 0xD2, 0x52, 0x00, 0x01, 0x38, 0xA0, 0x60
	.byte 0x80, 0x20, 0xC0, 0x05, 0x00, 0x21, 0x9A, 0x42, 0x01, 0xD3, 0x01, 0x43, 0xD2, 0x1A, 0x40, 0x08
	.byte 0x52, 0x00, 0x00, 0x28, 0xF7, 0xD1, 0x7F, 0x20, 0x08, 0x40, 0x40, 0x28, 0x06, 0xD1, 0x80, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x2A, 0x00, 0xD0, 0x40, 0x31, 0xE1, 0x60, 0x21, 0x1C
	.byte 0x08, 0x1C, 0xFF, 0xF7, 0x53, 0xFD, 0x0A, 0xB0, 0x70, 0xBD, 0x00, 0x00

	THUMB_FUNC_START sub_805CCFC
sub_805CCFC: @ 0x0805CCFC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _0805CD0A
	movs r0, #1
_0805CD0A:
	cmp r0, #0
	bne _0805CD1C
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _0805CD18
	movs r0, #1
_0805CD18:
	cmp r0, #0
	beq _0805CD20
_0805CD1C:
	movs r0, #1
	b _0805CDDE
_0805CD20:
	movs r0, #0
	cmp r2, #4
	bne _0805CD28
	movs r0, #1
_0805CD28:
	cmp r0, #0
	beq _0805CD40
	movs r0, #0
	cmp r3, #4
	bne _0805CD34
	movs r0, #1
_0805CD34:
	cmp r0, #0
	beq _0805CD40
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _0805CDDE
_0805CD40:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _0805CD4A
	movs r2, #1
_0805CD4A:
	cmp r2, #0
	bne _0805CD98
	movs r2, #0
	cmp r3, #4
	bne _0805CD56
	movs r2, #1
_0805CD56:
	cmp r2, #0
	beq _0805CD68
_0805CD5A:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0805CDA2
	movs r1, #1
	b _0805CDA2
_0805CD68:
	movs r2, #0
	cmp r0, #2
	bne _0805CD70
	movs r2, #1
_0805CD70:
	cmp r2, #0
	beq _0805CD80
	movs r2, #0
	cmp r3, #2
	bne _0805CD7C
	movs r2, #1
_0805CD7C:
	cmp r2, #0
	bne _0805CDDC
_0805CD80:
	movs r2, #0
	cmp r0, #2
	bne _0805CD88
	movs r2, #1
_0805CD88:
	cmp r2, #0
	bne _0805CD5A
	movs r0, #0
	cmp r3, #2
	bne _0805CD94
	movs r0, #1
_0805CD94:
	cmp r0, #0
	beq _0805CDA6
_0805CD98:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _0805CDA2
	subs r1, #2
_0805CDA2:
	adds r0, r1, #0
	b _0805CDDE
_0805CDA6:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0805CDB8
_0805CDAE:
	movs r0, #1
	cmp r3, #0
	beq _0805CDDE
	subs r0, #2
	b _0805CDDE
_0805CDB8:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _0805CDAE
	cmp r2, r0
	bge _0805CDD0
_0805CDC4:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _0805CDDE
	movs r0, #1
	b _0805CDDE
_0805CDD0:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _0805CDAE
	cmp r0, r1
	blo _0805CDC4
_0805CDDC:
	movs r0, #0
_0805CDDE:
	pop {r4, pc}
	.byte 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x32, 0xFD
	.byte 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x2D, 0xFD, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x7D, 0xFF, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91
	.byte 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x1E, 0xFD, 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x19, 0xFD, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1
	.byte 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20
	.byte 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x59, 0xFF, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00
	.byte 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xFA, 0xFC
	.byte 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xF5, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x35, 0xFF, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91
	.byte 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xD6, 0xFC, 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0xD1, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1
	.byte 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x02, 0xD0, 0x01, 0x20
	.byte 0x40, 0x42, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x10, 0xFF, 0x0A, 0xB0, 0x10, 0xBD
	.byte 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xB2, 0xFC
	.byte 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xAD, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x02, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C
	.byte 0xFF, 0xF7, 0xEC, 0xFE, 0x0A, 0xB0, 0x10, 0xBD, 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91
	.byte 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x8E, 0xFC, 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x89, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1
	.byte 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20
	.byte 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0xC9, 0xFE, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00
	.byte 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x6A, 0xFC
	.byte 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x65, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0xA5, 0xFE, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x00, 0xB5, 0x84, 0xB0, 0x01, 0x1C, 0x03, 0x20
	.byte 0x00, 0x90, 0xCA, 0x0F, 0x01, 0x92, 0x00, 0x29, 0x02, 0xD1, 0x02, 0x20, 0x00, 0x90, 0x1B, 0xE0
	.byte 0x1E, 0x20, 0x02, 0x90, 0x00, 0x2A, 0x0A, 0xD0, 0x80, 0x20, 0x00, 0x06, 0x81, 0x42, 0x03, 0xD1
	.byte 0x00, 0x48, 0x14, 0xE0, 0x00, 0x00, 0x00, 0xCF, 0x48, 0x42, 0x03, 0x90, 0x00, 0xE0, 0x03, 0x91
	.byte 0x03, 0x9A, 0x08, 0x4B, 0x9A, 0x42, 0x07, 0xD8, 0x02, 0x99, 0x50, 0x00, 0x01, 0x39, 0x02, 0x1C
	.byte 0x98, 0x42, 0xFA, 0xD9, 0x02, 0x91, 0x03, 0x90, 0x68, 0x46, 0xFF, 0xF7, 0xC7, 0xFB, 0x04, 0xB0
	.byte 0x00, 0xBD, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x3F, 0x00, 0xB5, 0x85, 0xB0, 0x04, 0x90, 0x04, 0xA8
	.byte 0x69, 0x46, 0xFF, 0xF7, 0x17, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x02, 0x28, 0x00, 0xD1, 0x01, 0x21
	.byte 0x00, 0x29, 0x16, 0xD1, 0x00, 0x21, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x10, 0xD1
	.byte 0x00, 0x21, 0x04, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x07, 0xD0, 0x01, 0x98, 0x02, 0x49
	.byte 0x00, 0x28, 0x12, 0xD0, 0x01, 0x31, 0x10, 0xE0, 0xFF, 0xFF, 0xFF, 0x7F, 0x02, 0x99, 0x00, 0x29
	.byte 0x01, 0xDA, 0x00, 0x20, 0x0A, 0xE0, 0x1E, 0x29, 0xF0, 0xDC, 0x1E, 0x20, 0x40, 0x1A, 0x03, 0x99
	.byte 0xC1, 0x40, 0x01, 0x98, 0x00, 0x28, 0x00, 0xD0, 0x49, 0x42, 0x08, 0x1C, 0x05, 0xB0, 0x00, 0xBD
	.byte 0x00, 0xB5, 0x85, 0xB0, 0x04, 0x90, 0x04, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xE3, 0xFB, 0x00, 0x21
	.byte 0x01, 0x98, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x01, 0x91, 0x68, 0x46, 0xFF, 0xF7, 0x7E, 0xFB
	.byte 0x05, 0xB0, 0x00, 0xBD

	THUMB_FUNC_START sub_805D0A4
sub_805D0A4: @ 0x0805D0A4
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl sub_805C79C
	add sp, #0x10
	pop {pc}
	.byte 0x00, 0x00, 0x70, 0xB5, 0x86, 0xB0
	.byte 0x05, 0x90, 0x05, 0xA8, 0x01, 0xA9, 0xFF, 0xF7, 0xC5, 0xFB, 0x01, 0x98, 0x02, 0x99, 0x03, 0x9A
	.byte 0x04, 0x9B, 0x00, 0x24, 0x9E, 0x08, 0xA5, 0x07, 0x34, 0x1C, 0x2C, 0x43, 0x9B, 0x07, 0x00, 0x94
	.byte 0xFF, 0xF7, 0x26, 0xFB, 0x06, 0xB0, 0x70, 0xBD

	THUMB_FUNC_START sub_805D0E8
sub_805D0E8: @ 0x0805D0E8
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0805D118
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _0805D104
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _0805D114
_0805D104:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_0805D114:
	adds r1, r4, #0
	adds r0, r3, #0
_0805D118:
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D11C
sub_805D11C: @ 0x0805D11C
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0805D12A
	subs r1, #1
_0805D12A:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D134
sub_805D134: @ 0x0805D134
	adds r2, r0, #0
	adds r0, r1, #0
	subs r1, #1
	cmp r0, #0
	beq _0805D14C
	movs r3, #0
_0805D140:
	strb r3, [r2]
	adds r2, #1
	adds r0, r1, #0
	subs r1, #1
	cmp r0, #0
	bne _0805D140
_0805D14C:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D150
sub_805D150: @ 0x0805D150
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _0805D190
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D190
	adds r1, r5, #0
_0805D16A:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0805D16A
	cmp r2, #3
	bls _0805D18E
_0805D184:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0805D184
_0805D18E:
	adds r4, r1, #0
_0805D190:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0805D1AA
	adds r1, r0, #0
_0805D19C:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _0805D19C
_0805D1AA:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D1B0
sub_805D1B0: @ 0x0805D1B0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r3, r6, #0
	adds r2, r1, #0
	adds r0, r2, #0
	orrs r0, r6
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D1E8
	ldr r1, [r2]
	ldr r5, _0805D1D0
	adds r0, r1, r5
	bics r0, r1
	ldr r4, _0805D1D4
	b _0805D1E2
	.align 2, 0
_0805D1D0: .4byte 0xFEFEFEFF
_0805D1D4: .4byte 0x80808080
_0805D1D8:
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
_0805D1E2:
	ands r0, r4
	cmp r0, #0
	beq _0805D1D8
_0805D1E8:
	ldrb r0, [r2]
	strb r0, [r3]
	lsls r0, r0, #0x18
	adds r2, #1
	adds r3, #1
	cmp r0, #0
	bne _0805D1E8
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D1FC
sub_805D1FC: @ 0x0805D1FC
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D234
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _0805D218
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _0805D21C
	b _0805D228
	.align 2, 0
_0805D218: .4byte 0xFEFEFEFF
_0805D21C: .4byte 0x80808080
_0805D220:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_0805D228:
	ands r0, r3
	cmp r0, #0
	beq _0805D220
	adds r1, r2, #0
	b _0805D234
_0805D232:
	adds r1, #1
_0805D234:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805D232
	subs r0, r1, r5
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D240
sub_805D240: @ 0x0805D240
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r3, r1, #0
	adds r0, r3, #0
	orrs r0, r7
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D282
	cmp r2, #3
	bls _0805D282
	ldr r1, [r3]
	ldr r6, _0805D264
	adds r0, r1, r6
	bics r0, r1
	ldr r5, _0805D268
	b _0805D27C
	.align 2, 0
_0805D264: .4byte 0xFEFEFEFF
_0805D268: .4byte 0x80808080
_0805D26C:
	subs r2, #4
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r2, #3
	bls _0805D282
	ldr r1, [r3]
	adds r0, r1, r6
	bics r0, r1
_0805D27C:
	ands r0, r5
	cmp r0, #0
	beq _0805D26C
_0805D282:
	cmp r2, #0
	beq _0805D296
	subs r2, #1
	ldrb r0, [r3]
	strb r0, [r4]
	lsls r0, r0, #0x18
	adds r3, #1
	adds r4, #1
	cmp r0, #0
	bne _0805D282
_0805D296:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	beq _0805D2AC
	movs r1, #0
_0805D2A0:
	strb r1, [r4]
	adds r4, #1
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0805D2A0
_0805D2AC:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}

    .align 2, 0
