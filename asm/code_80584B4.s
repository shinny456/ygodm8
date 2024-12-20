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
	ldr r2, _08058840          //copy a function to RAM?
	movs r0, #1
	eors r2, r0
	ldr r3, _08058844
	ldr r0, _08058848
	ldr r1, _08058840
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08058858
	.align 2, 0
_08058840: .4byte sub_8058760
_08058844: .4byte 0x0201F0D0
_08058848: .4byte sub_80587A0
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
_08058880: .4byte sub_80587E0
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
	bl _call_via_r3
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





// m4a_1.s

	THUMB_FUNC_START umul3232H32
umul3232H32: @ 0x08058904
	adr r2, __umul3232H32
	bx r2
  .arm
__umul3232H32:
	umull r2, r3, r0, r1
	add r0, r3, 0
	bx lr
  thumb_func_end umul3232H32

	THUMB_FUNC_START SoundMain
SoundMain: @ 0x08058914
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
	bl _8058D36
	ldr r0, [sp, #0x18]
_08058956:
	ldr r3, [r0, #0x28]
	bl _8058D36
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
_8058D36:
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

	THUMB_FUNC_START ply_port
ply_port: @ 0x08058F50
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

	THUMB_FUNC_START m4aSoundVSync
m4aSoundVSync: @ 0x08058F68
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



//m4a.c
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
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
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

	THUMB_FUNC_START MPlayFadeOut
MPlayFadeOut: @ 0x080595A4
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
	bl m4aSoundMode
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

	THUMB_FUNC_START m4aSoundMain
m4aSoundMain: @ 0x0805963C
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START m4aSongNumStart
m4aSongNumStart: @ 0x08059648
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

	THUMB_FUNC_START m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x08059674
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

	THUMB_FUNC_START m4aSongNumStop
m4aSongNumStop: @ 0x08059714
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
	bl m4aMPlayStop
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
	bl m4aMPlayStop
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

	THUMB_FUNC_START m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x080597E0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
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
_08059960: .4byte ply_memacc
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
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080599AC: .4byte 0x020255F8

	THUMB_FUNC_START sub_80599B0
sub_80599B0: @ 0x080599B0
	push {lr}
	ldr r1, _080599C0
	ldr r1, [r1]
	bl _call_via_r1
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
_08059AAC: .4byte sub_8059290
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
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _08059B44
	muls r0, r5, r0
	ldr r1, _08059B48
	adds r0, r0, r1
	ldr r1, _08059B4C
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08059B50
	strh r6, [r0]
	ldr r4, _08059B54
	ldr r0, _08059B58
	adds r1, r5, #0
	bl __divsi3
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

	THUMB_FUNC_START m4aSoundMode
m4aSoundMode: @ 0x08059B60
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
	bl m4aSoundMode
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

	THUMB_FUNC_START m4aMPlayStop
m4aMPlayStop: @ 0x08059E60
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

	THUMB_FUNC_START ply_memacc
ply_memacc: @ 0x0805A83C
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
	bl _call_via_r2
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
	bl _call_via_r2
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

    .align 2, 0
