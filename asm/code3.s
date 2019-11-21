    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_8048C60
sub_8048C60: @ 0x08048C60
	push {lr}
	ldr r0, _08048C7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048C88
	bl sub_8048CE0
	ldr r1, _08048C80
	strh r0, [r1]
	ldr r0, _08048C84
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r1, #2]
	b _08048C9A
	.align 2, 0
_08048C7C: .4byte 0x020241FC
_08048C80: .4byte gLifePoints
_08048C84: .4byte 0x02021D10
_08048C88:
	ldr r2, _08048CA0
	ldr r0, _08048CA4
	adds r1, r0, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r2]
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r2, #2]
_08048C9A:
	pop {r0}
	bx r0
	.align 2, 0
_08048CA0: .4byte gLifePoints
_08048CA4: .4byte 0x02021D10

	THUMB_FUNC_START sub_8048CA8
sub_8048CA8: @ 0x08048CA8
	lsls r0, r0, #0x18
	ldr r2, _08048CB4
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08048CB4: .4byte gLifePoints

	THUMB_FUNC_START sub_8048CB8
sub_8048CB8: @ 0x08048CB8
	ldr r1, _08048CC4
	movs r0, #0xfa
	lsls r0, r0, #5
	str r0, [r1]
	bx lr
	.align 2, 0
_08048CC4: .4byte 0x02024254
	.byte 0x01, 0x1C, 0x03, 0x48, 0x81, 0x42, 0x00, 0xD9
	.byte 0x01, 0x1C, 0x02, 0x48, 0x01, 0x60, 0x70, 0x47, 0xE8, 0xFD, 0x00, 0x00, 0x54, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_8048CE0
sub_8048CE0: @ 0x08048CE0
	ldr r0, _08048CE8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08048CE8: .4byte 0x02024254

	THUMB_FUNC_START sub_8048CEC
sub_8048CEC: @ 0x08048CEC
	ldr r2, _08048D00
	ldr r0, _08048D04
	ldrh r0, [r0]
	str r0, [r2]
	movs r1, #0xfa
	lsls r1, r1, #5
	cmp r0, r1
	bls _08048CFE
	str r1, [r2]
_08048CFE:
	bx lr
	.align 2, 0
_08048D00: .4byte 0x02024254
_08048D04: .4byte gLifePoints

	THUMB_FUNC_START sub_8048D08
sub_8048D08: @ 0x08048D08
	ldr r2, _08048D18
	ldr r1, [r2]
	ldr r0, _08048D1C
	cmp r1, r0
	bhi _08048D16
	adds r0, #1
	str r0, [r2]
_08048D16:
	bx lr
	.align 2, 0
_08048D18: .4byte 0x02024254
_08048D1C: .4byte 0x00001F3F
	.byte 0x00, 0x06, 0x09, 0x04, 0x05, 0x4A, 0xC0, 0x0D, 0x82, 0x18, 0x09, 0x0C, 0x10, 0x88, 0x09, 0x18
	.byte 0x03, 0x48, 0x81, 0x42, 0x06, 0xDD, 0x01, 0x30, 0x10, 0x80, 0x04, 0xE0, 0x58, 0x42, 0x02, 0x02
	.byte 0xE7, 0xFD, 0x00, 0x00, 0x11, 0x80, 0x70, 0x47, 0x00, 0x06, 0x09, 0x04, 0x09, 0x0C, 0x05, 0x4A
	.byte 0xC0, 0x0D, 0x82, 0x18, 0x10, 0x88, 0x40, 0x1A, 0x00, 0x28, 0x00, 0xDC, 0x00, 0x20, 0x10, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x58, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_8048D68
sub_8048D68: @ 0x08048D68
	push {r4, lr}
	ldr r3, _08048DAC
	ldr r2, _08048DB0
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08048DB4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08048D9C
	ldr r0, _08048DB8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048E0C
_08048D9C:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048DBC
	movs r0, #0xc8
	bl sub_803F978
	b _08048DC2
	.align 2, 0
_08048DAC: .4byte 0x020245A0
_08048DB0: .4byte 0x02024260
_08048DB4: .4byte gBoard
_08048DB8: .4byte gUnk_02021C08
_08048DBC:
	movs r0, #0xc8
	bl sub_803F9C0
_08048DC2:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08048DFC
	ldr r2, _08048E00
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08048E04
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048E12
	ldr r1, _08048E08
	movs r0, #0xa9
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08048E12
	.align 2, 0
_08048DFC: .4byte gBoard
_08048E00: .4byte 0x02024260
_08048E04: .4byte gUnk_02021C08
_08048E08: .4byte gUnk_02021C10
_08048E0C:
	movs r0, #0xc8
	bl sub_80581DC
_08048E12:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8048E18
sub_8048E18: @ 0x08048E18
	push {r4, lr}
	ldr r3, _08048E60
	ldr r2, _08048E64
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08048E68
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08048E4C
	ldr r0, _08048E6C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048EC4
_08048E4C:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048E70
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F978
	b _08048E78
	.align 2, 0
_08048E60: .4byte 0x020245A0
_08048E64: .4byte 0x02024260
_08048E68: .4byte gBoard
_08048E6C: .4byte gUnk_02021C08
_08048E70:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F9C0
_08048E78:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08048EB0
	ldr r2, _08048EB4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08048EB8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048ECC
	ldr r1, _08048EBC
	ldr r0, _08048EC0
	strh r0, [r1]
	bl sub_801CEBC
	b _08048ECC
	.align 2, 0
_08048EB0: .4byte gBoard
_08048EB4: .4byte 0x02024260
_08048EB8: .4byte gUnk_02021C08
_08048EBC: .4byte gUnk_02021C10
_08048EC0: .4byte 0x00000153
_08048EC4:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_80581DC
_08048ECC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8048ED4
sub_8048ED4: @ 0x08048ED4
	push {r4, lr}
	ldr r3, _08048F1C
	ldr r2, _08048F20
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08048F24
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08048F08
	ldr r0, _08048F28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048F7C
_08048F08:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048F2C
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F978
	b _08048F34
	.align 2, 0
_08048F1C: .4byte 0x020245A0
_08048F20: .4byte 0x02024260
_08048F24: .4byte gBoard
_08048F28: .4byte gUnk_02021C08
_08048F2C:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F9C0
_08048F34:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08048F6C
	ldr r2, _08048F70
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08048F74
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048F84
	ldr r1, _08048F78
	movs r0, #0xaa
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08048F84
	.align 2, 0
_08048F6C: .4byte gBoard
_08048F70: .4byte 0x02024260
_08048F74: .4byte gUnk_02021C08
_08048F78: .4byte gUnk_02021C10
_08048F7C:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_80581DC
_08048F84:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8048F8C
sub_8048F8C: @ 0x08048F8C
	push {r4, lr}
	ldr r3, _08048FD4
	ldr r2, _08048FD8
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08048FDC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08048FC0
	ldr r0, _08048FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049038
_08048FC0:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048FE4
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_803F978
	b _08048FEC
	.align 2, 0
_08048FD4: .4byte 0x020245A0
_08048FD8: .4byte 0x02024260
_08048FDC: .4byte gBoard
_08048FE0: .4byte gUnk_02021C08
_08048FE4:
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_803F9C0
_08048FEC:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08049024
	ldr r2, _08049028
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804902C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049040
	ldr r1, _08049030
	ldr r0, _08049034
	strh r0, [r1]
	bl sub_801CEBC
	b _08049040
	.align 2, 0
_08049024: .4byte gBoard
_08049028: .4byte 0x02024260
_0804902C: .4byte gUnk_02021C08
_08049030: .4byte gUnk_02021C10
_08049034: .4byte 0x00000155
_08049038:
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_80581DC
_08049040:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8049048
sub_8049048: @ 0x08049048
	push {r4, lr}
	ldr r3, _0804908C
	ldr r2, _08049090
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08049094
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _0804907C
	ldr r0, _08049098
	ldrb r0, [r0]
	cmp r0, #0
	beq _080490F4
_0804907C:
	bl GetCurrTurn
	cmp r0, #0
	bne _080490A0
	ldr r0, _0804909C
	bl sub_803F978
	b _080490A6
	.align 2, 0
_0804908C: .4byte 0x020245A0
_08049090: .4byte 0x02024260
_08049094: .4byte gBoard
_08049098: .4byte gUnk_02021C08
_0804909C: .4byte 0x00001388
_080490A0:
	ldr r0, _080490E0
	bl sub_803F9C0
_080490A6:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _080490E4
	ldr r2, _080490E8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080490EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080490FA
	ldr r1, _080490F0
	movs r0, #0xab
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _080490FA
	.align 2, 0
_080490E0: .4byte 0x00001388
_080490E4: .4byte gBoard
_080490E8: .4byte 0x02024260
_080490EC: .4byte gUnk_02021C08
_080490F0: .4byte gUnk_02021C10
_080490F4:
	ldr r0, _08049100
	bl sub_80581DC
_080490FA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049100: .4byte 0x00001388

	THUMB_FUNC_START sub_8049104
sub_8049104: @ 0x08049104
	push {r4, lr}
	ldr r3, _08049148
	ldr r2, _0804914C
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08049150
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049138
	ldr r0, _08049154
	ldrb r0, [r0]
	cmp r0, #0
	beq _080491A8
_08049138:
	bl GetCurrTurn
	cmp r0, #0
	bne _08049158
	movs r0, #0x32
	bl sub_803F9E4
	b _0804915E
	.align 2, 0
_08049148: .4byte 0x020245A0
_0804914C: .4byte 0x02024260
_08049150: .4byte gBoard
_08049154: .4byte gUnk_02021C08
_08049158:
	movs r0, #0x32
	bl sub_803F99C
_0804915E:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08049194
	ldr r2, _08049198
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804919C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080491AE
	ldr r1, _080491A0
	ldr r0, _080491A4
	strh r0, [r1]
	bl sub_801CEBC
	b _080491AE
	.align 2, 0
_08049194: .4byte gBoard
_08049198: .4byte 0x02024260
_0804919C: .4byte gUnk_02021C08
_080491A0: .4byte gUnk_02021C10
_080491A4: .4byte 0x00000157
_080491A8:
	movs r0, #0x32
	bl sub_80581DC
_080491AE:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80491B4
sub_80491B4: @ 0x080491B4
	push {r4, lr}
	ldr r3, _080491F8
	ldr r2, _080491FC
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08049200
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _080491E8
	ldr r0, _08049204
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049258
_080491E8:
	bl GetCurrTurn
	cmp r0, #0
	bne _08049208
	movs r0, #0x64
	bl sub_803F9E4
	b _0804920E
	.align 2, 0
_080491F8: .4byte 0x020245A0
_080491FC: .4byte 0x02024260
_08049200: .4byte gBoard
_08049204: .4byte gUnk_02021C08
_08049208:
	movs r0, #0x64
	bl sub_803F99C
_0804920E:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08049248
	ldr r2, _0804924C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049250
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804925E
	ldr r1, _08049254
	movs r0, #0xac
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804925E
	.align 2, 0
_08049248: .4byte gBoard
_0804924C: .4byte 0x02024260
_08049250: .4byte gUnk_02021C08
_08049254: .4byte gUnk_02021C10
_08049258:
	movs r0, #0x64
	bl sub_80581DC
_0804925E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8049264
sub_8049264: @ 0x08049264
	push {r4, lr}
	ldr r3, _080492A8
	ldr r2, _080492AC
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _080492B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049298
	ldr r0, _080492B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049308
_08049298:
	bl GetCurrTurn
	cmp r0, #0
	bne _080492B8
	movs r0, #0xc8
	bl sub_803F9E4
	b _080492BE
	.align 2, 0
_080492A8: .4byte 0x020245A0
_080492AC: .4byte 0x02024260
_080492B0: .4byte gBoard
_080492B4: .4byte gUnk_02021C08
_080492B8:
	movs r0, #0xc8
	bl sub_803F99C
_080492BE:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _080492F4
	ldr r2, _080492F8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080492FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804930E
	ldr r1, _08049300
	ldr r0, _08049304
	strh r0, [r1]
	bl sub_801CEBC
	b _0804930E
	.align 2, 0
_080492F4: .4byte gBoard
_080492F8: .4byte 0x02024260
_080492FC: .4byte gUnk_02021C08
_08049300: .4byte gUnk_02021C10
_08049304: .4byte 0x00000159
_08049308:
	movs r0, #0xc8
	bl sub_80581DC
_0804930E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8049314
sub_8049314: @ 0x08049314
	push {r4, lr}
	ldr r3, _0804935C
	ldr r2, _08049360
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08049364
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049348
	ldr r0, _08049368
	ldrb r0, [r0]
	cmp r0, #0
	beq _080493BC
_08049348:
	bl GetCurrTurn
	cmp r0, #0
	bne _0804936C
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F9E4
	b _08049374
	.align 2, 0
_0804935C: .4byte 0x020245A0
_08049360: .4byte 0x02024260
_08049364: .4byte gBoard
_08049368: .4byte gUnk_02021C08
_0804936C:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F99C
_08049374:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _080493AC
	ldr r2, _080493B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080493B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080493C4
	ldr r1, _080493B8
	movs r0, #0xad
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _080493C4
	.align 2, 0
_080493AC: .4byte gBoard
_080493B0: .4byte 0x02024260
_080493B4: .4byte gUnk_02021C08
_080493B8: .4byte gUnk_02021C10
_080493BC:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_80581DC
_080493C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80493CC
sub_80493CC: @ 0x080493CC
	push {r4, lr}
	ldr r3, _08049414
	ldr r2, _08049418
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _0804941C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049400
	ldr r0, _08049420
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049478
_08049400:
	bl GetCurrTurn
	cmp r0, #0
	bne _08049424
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F9E4
	b _0804942C
	.align 2, 0
_08049414: .4byte 0x020245A0
_08049418: .4byte 0x02024260
_0804941C: .4byte gBoard
_08049420: .4byte gUnk_02021C08
_08049424:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F99C
_0804942C:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08049464
	ldr r2, _08049468
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804946C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049480
	ldr r1, _08049470
	ldr r0, _08049474
	strh r0, [r1]
	bl sub_801CEBC
	b _08049480
	.align 2, 0
_08049464: .4byte gBoard
_08049468: .4byte 0x02024260
_0804946C: .4byte gUnk_02021C08
_08049470: .4byte gUnk_02021C10
_08049474: .4byte 0x0000015B
_08049478:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_80581DC
_08049480:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8049488
sub_8049488: @ 0x08049488
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804950C
_0804948E:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _080494A6
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_080494A6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804948E
	movs r5, #0
	ldr r6, _08049510
_080494B4:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _080494CC
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_080494CC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080494B4
	ldr r3, _08049514
	ldr r2, _08049518
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804951C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049504
	ldr r1, _08049520
	movs r0, #0xa8
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_08049504:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804950C: .4byte gBoard+0x14
_08049510: .4byte gBoard+0x28
_08049514: .4byte gBoard
_08049518: .4byte 0x02024260
_0804951C: .4byte gUnk_02021C08
_08049520: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8049524
sub_8049524: @ 0x08049524
	push {r4, r5, r6, lr}
	ldr r3, _080495B0
	ldr r2, _080495B4
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _080495B8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049558
	ldr r0, _080495BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080495C8
_08049558:
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x14
_0804955E:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08049576
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_08049576:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804955E
	ldr r3, _080495B8
	ldr r2, _080495B4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080495BC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080495CC
	ldr r1, _080495C0
	ldr r0, _080495C4
	strh r0, [r1]
	bl sub_801CEBC
	b _080495CC
	.align 2, 0
_080495B0: .4byte 0x020245A0
_080495B4: .4byte 0x02024260
_080495B8: .4byte gBoard
_080495BC: .4byte gUnk_02021C08
_080495C0: .4byte gUnk_02021C10
_080495C4: .4byte 0x00000151
_080495C8:
	bl sub_80581DC
_080495CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80495D4
sub_80495D4: @ 0x080495D4
	push {r4, r5, lr}
	ldr r5, _08049660
	ldr r4, _08049664
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80555A4
	cmp r0, #1
	bne _08049692
	ldr r2, _08049668
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049622
	ldr r0, _0804966C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049678
_08049622:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804966C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080496A0
	ldr r1, _08049670
	ldr r0, _08049674
	strh r0, [r1]
	bl sub_801CEBC
	b _080496A0
	.align 2, 0
_08049660: .4byte gBoard
_08049664: .4byte 0x02024260
_08049668: .4byte 0x020245A0
_0804966C: .4byte gUnk_02021C08
_08049670: .4byte gUnk_02021C10
_08049674: .4byte 0x0000012D
_08049678:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _080496A0
_08049692:
	ldr r0, _080496A8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080496A0
	movs r0, #0x39
	bl sub_8034F60
_080496A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080496A8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_80496AC
sub_80496AC: @ 0x080496AC
	push {r4, r5, lr}
	ldr r5, _0804973C
	ldr r4, _08049740
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80555D4
	cmp r0, #1
	bne _0804976A
	ldr r2, _08049744
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _080496FA
	ldr r0, _08049748
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049750
_080496FA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049748
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049778
	ldr r1, _0804974C
	movs r0, #0x97
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049778
	.align 2, 0
_0804973C: .4byte gBoard
_08049740: .4byte 0x02024260
_08049744: .4byte 0x020245A0
_08049748: .4byte gUnk_02021C08
_0804974C: .4byte gUnk_02021C10
_08049750:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049778
_0804976A:
	ldr r0, _08049780
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049778
	movs r0, #0x39
	bl sub_8034F60
_08049778:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049780: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049784
sub_8049784: @ 0x08049784
	push {r4, r5, lr}
	ldr r5, _08049810
	ldr r4, _08049814
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055604
	cmp r0, #1
	bne _08049842
	ldr r2, _08049818
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _080497D2
	ldr r0, _0804981C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049828
_080497D2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804981C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049850
	ldr r1, _08049820
	ldr r0, _08049824
	strh r0, [r1]
	bl sub_801CEBC
	b _08049850
	.align 2, 0
_08049810: .4byte gBoard
_08049814: .4byte 0x02024260
_08049818: .4byte 0x020245A0
_0804981C: .4byte gUnk_02021C08
_08049820: .4byte gUnk_02021C10
_08049824: .4byte 0x0000012F
_08049828:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049850
_08049842:
	ldr r0, _08049858
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049850
	movs r0, #0x39
	bl sub_8034F60
_08049850:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049858: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804985C
sub_804985C: @ 0x0804985C
	push {r4, r5, lr}
	ldr r5, _080498EC
	ldr r4, _080498F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055634
	cmp r0, #1
	bne _0804991A
	ldr r2, _080498F4
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _080498AA
	ldr r0, _080498F8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049900
_080498AA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080498F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049928
	ldr r1, _080498FC
	movs r0, #0x98
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049928
	.align 2, 0
_080498EC: .4byte gBoard
_080498F0: .4byte 0x02024260
_080498F4: .4byte 0x020245A0
_080498F8: .4byte gUnk_02021C08
_080498FC: .4byte gUnk_02021C10
_08049900:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049928
_0804991A:
	ldr r0, _08049930
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049928
	movs r0, #0x39
	bl sub_8034F60
_08049928:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049930: .4byte gUnk_02021C08

THUMB_FUNC_START sub_8049934
sub_8049934: @ 0x08049934
	push {r4, r5, lr}
	ldr r5, _080499C0
	ldr r4, _080499C4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055664
	cmp r0, #1
	bne _080499F2
	ldr r2, _080499C8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049982
	ldr r0, _080499CC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080499D8
_08049982:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080499CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049A00
	ldr r1, _080499D0
	ldr r0, _080499D4
	strh r0, [r1]
	bl sub_801CEBC
	b _08049A00
	.align 2, 0
_080499C0: .4byte gBoard
_080499C4: .4byte 0x02024260
_080499C8: .4byte 0x020245A0
_080499CC: .4byte gUnk_02021C08
_080499D0: .4byte gUnk_02021C10
_080499D4: .4byte 0x00000131
_080499D8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049A00
_080499F2:
	ldr r0, _08049A08
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049A00
	movs r0, #0x39
	bl sub_8034F60
_08049A00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049A08: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049A0C
sub_8049A0C: @ 0x08049A0C
	push {r4, r5, lr}
	ldr r5, _08049A9C
	ldr r4, _08049AA0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055694
	cmp r0, #1
	bne _08049ACA
	ldr r2, _08049AA4
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049A5A
	ldr r0, _08049AA8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049AB0
_08049A5A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049AA8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049AD8
	ldr r1, _08049AAC
	movs r0, #0x99
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049AD8
	.align 2, 0
_08049A9C: .4byte gBoard
_08049AA0: .4byte 0x02024260
_08049AA4: .4byte 0x020245A0
_08049AA8: .4byte gUnk_02021C08
_08049AAC: .4byte gUnk_02021C10
_08049AB0:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049AD8
_08049ACA:
	ldr r0, _08049AE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049AD8
	movs r0, #0x39
	bl sub_8034F60
_08049AD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049AE0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049AE4
sub_8049AE4: @ 0x08049AE4
	push {r4, r5, lr}
	ldr r5, _08049B70
	ldr r4, _08049B74
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80556C4
	cmp r0, #1
	bne _08049BA2
	ldr r2, _08049B78
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049B32
	ldr r0, _08049B7C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049B88
_08049B32:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049B7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049BB0
	ldr r1, _08049B80
	ldr r0, _08049B84
	strh r0, [r1]
	bl sub_801CEBC
	b _08049BB0
	.align 2, 0
_08049B70: .4byte gBoard
_08049B74: .4byte 0x02024260
_08049B78: .4byte 0x020245A0
_08049B7C: .4byte gUnk_02021C08
_08049B80: .4byte gUnk_02021C10
_08049B84: .4byte 0x00000133
_08049B88:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049BB0
_08049BA2:
	ldr r0, _08049BB8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049BB0
	movs r0, #0x39
	bl sub_8034F60
_08049BB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049BB8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049BBC
sub_8049BBC: @ 0x08049BBC
	push {r4, r5, lr}
	ldr r5, _08049C4C
	ldr r4, _08049C50
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80556F4
	cmp r0, #1
	bne _08049C7A
	ldr r2, _08049C54
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049C0A
	ldr r0, _08049C58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049C60
_08049C0A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049C58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049C88
	ldr r1, _08049C5C
	movs r0, #0x9a
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049C88
	.align 2, 0
_08049C4C: .4byte gBoard
_08049C50: .4byte 0x02024260
_08049C54: .4byte 0x020245A0
_08049C58: .4byte gUnk_02021C08
_08049C5C: .4byte gUnk_02021C10
_08049C60:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049C88
_08049C7A:
	ldr r0, _08049C90
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049C88
	movs r0, #0x39
	bl sub_8034F60
_08049C88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049C90: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049C94
sub_8049C94: @ 0x08049C94
	push {r4, r5, lr}
	ldr r5, _08049D20
	ldr r4, _08049D24
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055724
	cmp r0, #1
	bne _08049D52
	ldr r2, _08049D28
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049CE2
	ldr r0, _08049D2C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049D38
_08049CE2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049D2C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049D60
	ldr r1, _08049D30
	ldr r0, _08049D34
	strh r0, [r1]
	bl sub_801CEBC
	b _08049D60
	.align 2, 0
_08049D20: .4byte gBoard
_08049D24: .4byte 0x02024260
_08049D28: .4byte 0x020245A0
_08049D2C: .4byte gUnk_02021C08
_08049D30: .4byte gUnk_02021C10
_08049D34: .4byte 0x00000135
_08049D38:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049D60
_08049D52:
	ldr r0, _08049D68
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049D60
	movs r0, #0x39
	bl sub_8034F60
_08049D60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049D68: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049D6C
sub_8049D6C: @ 0x08049D6C
	push {r4, r5, lr}
	ldr r5, _08049DFC
	ldr r4, _08049E00
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055754
	cmp r0, #1
	bne _08049E2A
	ldr r2, _08049E04
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049DBA
	ldr r0, _08049E08
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049E10
_08049DBA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049E08
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E38
	ldr r1, _08049E0C
	movs r0, #0x9b
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049E38
	.align 2, 0
_08049DFC: .4byte gBoard
_08049E00: .4byte 0x02024260
_08049E04: .4byte 0x020245A0
_08049E08: .4byte gUnk_02021C08
_08049E0C: .4byte gUnk_02021C10
_08049E10:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049E38
_08049E2A:
	ldr r0, _08049E40
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E38
	movs r0, #0x39
	bl sub_8034F60
_08049E38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049E40: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049E44
sub_8049E44: @ 0x08049E44
	push {r4, r5, lr}
	ldr r5, _08049ED0
	ldr r4, _08049ED4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055784
	cmp r0, #1
	bne _08049F02
	ldr r2, _08049ED8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049E92
	ldr r0, _08049EDC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049EE8
_08049E92:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049EDC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049F10
	ldr r1, _08049EE0
	ldr r0, _08049EE4
	strh r0, [r1]
	bl sub_801CEBC
	b _08049F10
	.align 2, 0
_08049ED0: .4byte gBoard
_08049ED4: .4byte 0x02024260
_08049ED8: .4byte 0x020245A0
_08049EDC: .4byte gUnk_02021C08
_08049EE0: .4byte gUnk_02021C10
_08049EE4: .4byte 0x00000137
_08049EE8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049F10
_08049F02:
	ldr r0, _08049F18
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049F10
	movs r0, #0x39
	bl sub_8034F60
_08049F10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049F18: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049F1C
sub_8049F1C: @ 0x08049F1C
	push {r4, r5, lr}
	ldr r5, _08049FAC
	ldr r4, _08049FB0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80557B4
	cmp r0, #1
	bne _08049FDA
	ldr r2, _08049FB4
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049F6A
	ldr r0, _08049FB8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049FC0
_08049F6A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049FB8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049FE8
	ldr r1, _08049FBC
	movs r0, #0x9c
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049FE8
	.align 2, 0
_08049FAC: .4byte gBoard
_08049FB0: .4byte 0x02024260
_08049FB4: .4byte 0x020245A0
_08049FB8: .4byte gUnk_02021C08
_08049FBC: .4byte gUnk_02021C10
_08049FC0:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049FE8
_08049FDA:
	ldr r0, _08049FF0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049FE8
	movs r0, #0x39
	bl sub_8034F60
_08049FE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049FF0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049FF4
sub_8049FF4: @ 0x08049FF4
	push {r4, r5, lr}
	ldr r5, _0804A080
	ldr r4, _0804A084
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80557E4
	cmp r0, #1
	bne _0804A0B2
	ldr r2, _0804A088
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A042
	ldr r0, _0804A08C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A098
_0804A042:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A08C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A0C0
	ldr r1, _0804A090
	ldr r0, _0804A094
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A0C0
	.align 2, 0
_0804A080: .4byte gBoard
_0804A084: .4byte 0x02024260
_0804A088: .4byte 0x020245A0
_0804A08C: .4byte gUnk_02021C08
_0804A090: .4byte gUnk_02021C10
_0804A094: .4byte 0x00000139
_0804A098:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A0C0
_0804A0B2:
	ldr r0, _0804A0C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A0C0
	movs r0, #0x39
	bl sub_8034F60
_0804A0C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A0C8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A0CC
sub_804A0CC: @ 0x0804A0CC
	push {r4, r5, lr}
	ldr r5, _0804A15C
	ldr r4, _0804A160
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055814
	cmp r0, #1
	bne _0804A18A
	ldr r2, _0804A164
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A11A
	ldr r0, _0804A168
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A170
_0804A11A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A168
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A198
	ldr r1, _0804A16C
	movs r0, #0x9d
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A198
	.align 2, 0
_0804A15C: .4byte gBoard
_0804A160: .4byte 0x02024260
_0804A164: .4byte 0x020245A0
_0804A168: .4byte gUnk_02021C08
_0804A16C: .4byte gUnk_02021C10
_0804A170:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A198
_0804A18A:
	ldr r0, _0804A1A0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A198
	movs r0, #0x39
	bl sub_8034F60
_0804A198:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A1A0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A1A4
sub_804A1A4: @ 0x0804A1A4
	push {r4, r5, lr}
	ldr r5, _0804A230
	ldr r4, _0804A234
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055844
	cmp r0, #1
	bne _0804A262
	ldr r2, _0804A238
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A1F2
	ldr r0, _0804A23C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A248
_0804A1F2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A23C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A270
	ldr r1, _0804A240
	ldr r0, _0804A244
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A270
	.align 2, 0
_0804A230: .4byte gBoard
_0804A234: .4byte 0x02024260
_0804A238: .4byte 0x020245A0
_0804A23C: .4byte gUnk_02021C08
_0804A240: .4byte gUnk_02021C10
_0804A244: .4byte 0x0000013B
_0804A248:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A270
_0804A262:
	ldr r0, _0804A278
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A270
	movs r0, #0x39
	bl sub_8034F60
_0804A270:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A278: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A27C
sub_804A27C: @ 0x0804A27C
	push {r4, r5, lr}
	ldr r5, _0804A30C
	ldr r4, _0804A310
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055874
	cmp r0, #1
	bne _0804A33A
	ldr r2, _0804A314
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A2CA
	ldr r0, _0804A318
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A320
_0804A2CA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A318
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A348
	ldr r1, _0804A31C
	movs r0, #0x9e
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A348
	.align 2, 0
_0804A30C: .4byte gBoard
_0804A310: .4byte 0x02024260
_0804A314: .4byte 0x020245A0
_0804A318: .4byte gUnk_02021C08
_0804A31C: .4byte gUnk_02021C10
_0804A320:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A348
_0804A33A:
	ldr r0, _0804A350
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A348
	movs r0, #0x39
	bl sub_8034F60
_0804A348:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A350: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A354
sub_804A354: @ 0x0804A354
	push {r4, r5, lr}
	ldr r5, _0804A3E0
	ldr r4, _0804A3E4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80558A4
	cmp r0, #1
	bne _0804A412
	ldr r2, _0804A3E8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A3A2
	ldr r0, _0804A3EC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A3F8
_0804A3A2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A3EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A420
	ldr r1, _0804A3F0
	ldr r0, _0804A3F4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A420
	.align 2, 0
_0804A3E0: .4byte gBoard
_0804A3E4: .4byte 0x02024260
_0804A3E8: .4byte 0x020245A0
_0804A3EC: .4byte gUnk_02021C08
_0804A3F0: .4byte gUnk_02021C10
_0804A3F4: .4byte 0x0000013D
_0804A3F8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A420
_0804A412:
	ldr r0, _0804A428
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A420
	movs r0, #0x39
	bl sub_8034F60
_0804A420:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A428: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A42C
sub_804A42C: @ 0x0804A42C
	push {r4, r5, lr}
	ldr r5, _0804A4B8
	ldr r4, _0804A4BC
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80558D4
	cmp r0, #1
	bne _0804A4EA
	ldr r2, _0804A4C0
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A47A
	ldr r0, _0804A4C4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A4D0
_0804A47A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A4C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A4F8
	ldr r1, _0804A4C8
	ldr r0, _0804A4CC
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A4F8
	.align 2, 0
_0804A4B8: .4byte gBoard
_0804A4BC: .4byte 0x02024260
_0804A4C0: .4byte 0x020245A0
_0804A4C4: .4byte gUnk_02021C08
_0804A4C8: .4byte gUnk_02021C10
_0804A4CC: .4byte 0x0000013F
_0804A4D0:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A4F8
_0804A4EA:
	ldr r0, _0804A500
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A4F8
	movs r0, #0x39
	bl sub_8034F60
_0804A4F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A500: .4byte gUnk_02021C08

THUMB_FUNC_START sub_804A504
sub_804A504: @ 0x0804A504
	push {r4, r5, lr}
	ldr r5, _0804A590
	ldr r4, _0804A594
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055904
	cmp r0, #1
	bne _0804A5C2
	ldr r2, _0804A598
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A552
	ldr r0, _0804A59C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A5A8
_0804A552:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A59C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A5D0
	ldr r1, _0804A5A0
	ldr r0, _0804A5A4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A5D0
	.align 2, 0
_0804A590: .4byte gBoard
_0804A594: .4byte 0x02024260
_0804A598: .4byte 0x020245A0
_0804A59C: .4byte gUnk_02021C08
_0804A5A0: .4byte gUnk_02021C10
_0804A5A4: .4byte 0x00000141
_0804A5A8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A5D0
_0804A5C2:
	ldr r0, _0804A5D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A5D0
	movs r0, #0x39
	bl sub_8034F60
_0804A5D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A5D8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A5DC
sub_804A5DC: @ 0x0804A5DC
	push {r4, r5, lr}
	ldr r5, _0804A66C
	ldr r4, _0804A670
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055934
	cmp r0, #1
	bne _0804A69A
	ldr r2, _0804A674
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A62A
	ldr r0, _0804A678
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A680
_0804A62A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A678
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A6A8
	ldr r1, _0804A67C
	movs r0, #0xa1
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A6A8
	.align 2, 0
_0804A66C: .4byte gBoard
_0804A670: .4byte 0x02024260
_0804A674: .4byte 0x020245A0
_0804A678: .4byte gUnk_02021C08
_0804A67C: .4byte gUnk_02021C10
_0804A680:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A6A8
_0804A69A:
	ldr r0, _0804A6B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A6A8
	movs r0, #0x39
	bl sub_8034F60
_0804A6A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A6B0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A6B4
sub_804A6B4: @ 0x0804A6B4
	push {r4, r5, lr}
	ldr r5, _0804A740
	ldr r4, _0804A744
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055964
	cmp r0, #1
	bne _0804A772
	ldr r2, _0804A748
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A702
	ldr r0, _0804A74C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A758
_0804A702:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A74C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A780
	ldr r1, _0804A750
	ldr r0, _0804A754
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A780
	.align 2, 0
_0804A740: .4byte gBoard
_0804A744: .4byte 0x02024260
_0804A748: .4byte 0x020245A0
_0804A74C: .4byte gUnk_02021C08
_0804A750: .4byte gUnk_02021C10
_0804A754: .4byte 0x00000143
_0804A758:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A780
_0804A772:
	ldr r0, _0804A788
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A780
	movs r0, #0x39
	bl sub_8034F60
_0804A780:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A788: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A78C
sub_804A78C: @ 0x0804A78C
	push {r4, r5, lr}
	ldr r5, _0804A81C
	ldr r4, _0804A820
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055994
	cmp r0, #1
	bne _0804A84A
	ldr r2, _0804A824
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A7DA
	ldr r0, _0804A828
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A830
_0804A7DA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A828
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A858
	ldr r1, _0804A82C
	movs r0, #0xa2
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A858
	.align 2, 0
_0804A81C: .4byte gBoard
_0804A820: .4byte 0x02024260
_0804A824: .4byte 0x020245A0
_0804A828: .4byte gUnk_02021C08
_0804A82C: .4byte gUnk_02021C10
_0804A830:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A858
_0804A84A:
	ldr r0, _0804A860
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A858
	movs r0, #0x39
	bl sub_8034F60
_0804A858:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A860: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A864
sub_804A864: @ 0x0804A864
	push {r4, r5, lr}
	ldr r5, _0804A8F0
	ldr r4, _0804A8F4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80559C4
	cmp r0, #1
	bne _0804A922
	ldr r2, _0804A8F8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A8B2
	ldr r0, _0804A8FC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A908
_0804A8B2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A8FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A930
	ldr r1, _0804A900
	ldr r0, _0804A904
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A930
	.align 2, 0
_0804A8F0: .4byte gBoard
_0804A8F4: .4byte 0x02024260
_0804A8F8: .4byte 0x020245A0
_0804A8FC: .4byte gUnk_02021C08
_0804A900: .4byte gUnk_02021C10
_0804A904: .4byte 0x00000145
_0804A908:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A930
_0804A922:
	ldr r0, _0804A938
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A930
	movs r0, #0x39
	bl sub_8034F60
_0804A930:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A938: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A93C
sub_804A93C: @ 0x0804A93C
	push {r4, r5, lr}
	ldr r5, _0804A9CC
	ldr r4, _0804A9D0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80559F4
	cmp r0, #1
	bne _0804A9FA
	ldr r2, _0804A9D4
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A98A
	ldr r0, _0804A9D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A9E0
_0804A98A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A9D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AA08
	ldr r1, _0804A9DC
	movs r0, #0xa3
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804AA08
	.align 2, 0
_0804A9CC: .4byte gBoard
_0804A9D0: .4byte 0x02024260
_0804A9D4: .4byte 0x020245A0
_0804A9D8: .4byte gUnk_02021C08
_0804A9DC: .4byte gUnk_02021C10
_0804A9E0:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804AA08
_0804A9FA:
	ldr r0, _0804AA10
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AA08
	movs r0, #0x39
	bl sub_8034F60
_0804AA08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804AA10: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804AA14
sub_804AA14: @ 0x0804AA14
	push {r4, r5, lr}
	ldr r5, _0804AAA0
	ldr r4, _0804AAA4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055A24
	cmp r0, #1
	bne _0804AAD2
	ldr r2, _0804AAA8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804AA62
	ldr r0, _0804AAAC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AAB8
_0804AA62:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AAAC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AAE0
	ldr r1, _0804AAB0
	ldr r0, _0804AAB4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804AAE0
	.align 2, 0
_0804AAA0: .4byte gBoard
_0804AAA4: .4byte 0x02024260
_0804AAA8: .4byte 0x020245A0
_0804AAAC: .4byte gUnk_02021C08
_0804AAB0: .4byte gUnk_02021C10
_0804AAB4: .4byte 0x00000147
_0804AAB8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804AAE0
_0804AAD2:
	ldr r0, _0804AAE8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AAE0
	movs r0, #0x39
	bl sub_8034F60
_0804AAE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804AAE8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804AAEC
sub_804AAEC: @ 0x0804AAEC
	push {r4, r5, lr}
	ldr r5, _0804AB7C
	ldr r4, _0804AB80
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055A54
	cmp r0, #1
	bne _0804ABAA
	ldr r2, _0804AB84
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804AB3A
	ldr r0, _0804AB88
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AB90
_0804AB3A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AB88
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ABB8
	ldr r1, _0804AB8C
	movs r0, #0xa4
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804ABB8
	.align 2, 0
_0804AB7C: .4byte gBoard
_0804AB80: .4byte 0x02024260
_0804AB84: .4byte 0x020245A0
_0804AB88: .4byte gUnk_02021C08
_0804AB8C: .4byte gUnk_02021C10
_0804AB90:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804ABB8
_0804ABAA:
	ldr r0, _0804ABC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ABB8
	movs r0, #0x39
	bl sub_8034F60
_0804ABB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ABC0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804ABC4
sub_804ABC4: @ 0x0804ABC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0804AC48
	ldr r2, [r0, #4]
	ldrb r0, [r2, #2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #2]
	movs r4, #0
	ldr r0, _0804AC4C
	mov r8, r0
	ldr r1, _0804AC50
	mov ip, r1
	mov r6, r8
	adds r6, #0x14
	movs r7, #3
	rsbs r7, r7, #0
	movs r5, #0x10
_0804ABEA:
	lsls r0, r4, #2
	adds r3, r0, r6
	ldr r2, [r3]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0804AC06
	ldrb r1, [r2, #5]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r1, [r3]
	ldrb r0, [r1, #5]
	orrs r0, r5
	strb r0, [r1, #5]
_0804AC06:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804ABEA
	mov r2, ip
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AC54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AC3C
	ldr r1, _0804AC58
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804AC3C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC48: .4byte gDuel+0x100
_0804AC4C: .4byte gBoard
_0804AC50: .4byte 0x02024260
_0804AC54: .4byte gUnk_02021C08
_0804AC58: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804AC5C
sub_804AC5C: @ 0x0804AC5C
	push {r4, r5, lr}
	movs r0, #1
	bl sub_8040744
	movs r2, #0
	ldr r3, _0804ACBC
	adds r5, r3, #0
	subs r5, #0x14
	movs r4, #0x10
_0804AC6E:
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804AC80
	ldrb r0, [r1, #5]
	orrs r0, r4
	strb r0, [r1, #5]
_0804AC80:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0804AC6E
	ldr r2, _0804ACC0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804ACC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ACB6
	ldr r1, _0804ACC8
	movs r0, #0xae
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804ACB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ACBC: .4byte gBoard+0x14
_0804ACC0: .4byte 0x02024260
_0804ACC4: .4byte gUnk_02021C08
_0804ACC8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804ACCC
sub_804ACCC: @ 0x0804ACCC
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0804AD28
	ldr r5, _0804AD2C
	adds r4, r6, #0
	adds r4, #0x14
	movs r3, #0x10
_0804ACDA:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804ACEC
	ldrb r0, [r1, #5]
	orrs r0, r3
	strb r0, [r1, #5]
_0804ACEC:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0804ACDA
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r5, [r5, #3]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AD30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AD20
	ldr r1, _0804AD34
	movs r0, #0xaf
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804AD20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD28: .4byte gBoard
_0804AD2C: .4byte 0x02024260
_0804AD30: .4byte gUnk_02021C08
_0804AD34: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804AD38
sub_804AD38: @ 0x0804AD38
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0804AD8C
_0804AD3E:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804AD50
	adds r0, r1, #0
	bl sub_804037C
_0804AD50:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804AD3E
	ldr r3, _0804AD90
	ldr r2, _0804AD94
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AD98
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AD86
	ldr r1, _0804AD9C
	ldr r0, _0804ADA0
	strh r0, [r1]
	bl sub_801CEBC
_0804AD86:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD8C: .4byte gBoard+0x14
_0804AD90: .4byte gBoard
_0804AD94: .4byte 0x02024260
_0804AD98: .4byte gUnk_02021C08
_0804AD9C: .4byte gUnk_02021C10
_0804ADA0: .4byte 0x0000015D

	THUMB_FUNC_START sub_804ADA4
sub_804ADA4: @ 0x0804ADA4
	push {r4, lr}
	ldr r3, _0804AE44
	ldr r2, _0804AE48
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r4, [r1]
	cmp r4, #0x3e
	bne _0804ADF0
	movs r0, #0x3f
	strh r0, [r1]
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #5]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AE4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ADF0
	ldr r1, _0804AE50
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1]
	strh r4, [r1, #2]
	bl sub_801CEBC
_0804ADF0:
	ldr r3, _0804AE44
	ldr r2, _0804AE48
	ldrb r0, [r2, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r2, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldrh r4, [r1]
	ldr r0, _0804AE54
	cmp r4, r0
	bne _0804AE3C
	movs r0, #0x3f
	strh r0, [r1]
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #5]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AE4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AE3C
	ldr r1, _0804AE50
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1]
	strh r4, [r1, #2]
	bl sub_801CEBC
_0804AE3C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804AE44: .4byte gBoard
_0804AE48: .4byte 0x02024260
_0804AE4C: .4byte gUnk_02021C08
_0804AE50: .4byte gUnk_02021C10
_0804AE54: .4byte 0x000002A1

	THUMB_FUNC_START sub_804AE58
sub_804AE58: @ 0x0804AE58
	push {r4, r5, r6, lr}
	ldr r5, _0804AEC0
	ldr r6, _0804AEC4
	ldrh r1, [r6, #8]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804AEBA
	ldrh r1, [r6, #8]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804AEC8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0xa]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804AECC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AEBA
	ldr r0, _0804AED0
	ldr r1, _0804AED4
	strh r1, [r0]
	ldrh r1, [r6, #0xa]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804AEBA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AEC0: .4byte gBoard+0x28
_0804AEC4: .4byte 0x08E00FA8
_0804AEC8: .4byte 0x02024260
_0804AECC: .4byte gUnk_02021C08
_0804AED0: .4byte gUnk_02021C10
_0804AED4: .4byte 0x0000029E

	THUMB_FUNC_START sub_804AED8
sub_804AED8: @ 0x0804AED8
	push {r4, r5, r6, lr}
	ldr r5, _0804AF40
	ldr r6, _0804AF44
	ldrh r1, [r6, #0x10]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804AF3A
	ldrh r1, [r6, #0x10]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804AF48
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x12]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804AF4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AF3A
	ldr r0, _0804AF50
	ldr r1, _0804AF54
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804AF3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AF40: .4byte gBoard+0x28
_0804AF44: .4byte 0x08E00FA8
_0804AF48: .4byte 0x02024260
_0804AF4C: .4byte gUnk_02021C08
_0804AF50: .4byte gUnk_02021C10
_0804AF54: .4byte 0x0000029F

	THUMB_FUNC_START sub_804AF58
sub_804AF58: @ 0x0804AF58
	push {r4, r5, r6, lr}
	ldr r5, _0804AFC0
	ldr r6, _0804AFC4
	ldrh r1, [r6, #0x18]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804AFBA
	ldrh r1, [r6, #0x18]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804AFC8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x1a]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804AFCC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AFBA
	ldr r0, _0804AFD0
	ldr r1, _0804AFD4
	strh r1, [r0]
	ldrh r1, [r6, #0x1a]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804AFBA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AFC0: .4byte gBoard+0x28
_0804AFC4: .4byte 0x08E00FA8
_0804AFC8: .4byte 0x02024260
_0804AFCC: .4byte gUnk_02021C08
_0804AFD0: .4byte gUnk_02021C10
_0804AFD4: .4byte 0x000002A1

	THUMB_FUNC_START sub_804AFD8
sub_804AFD8: @ 0x0804AFD8
	push {r4, r5, r6, lr}
	ldr r5, _0804B040
	ldr r6, _0804B044
	ldrh r1, [r6, #0x20]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B03A
	ldrh r1, [r6, #0x20]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B048
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x22]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B04C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B03A
	ldr r0, _0804B050
	ldr r1, _0804B054
	strh r1, [r0]
	ldrh r1, [r6, #0x22]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B03A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B040: .4byte gBoard+0x28
_0804B044: .4byte 0x08E00FA8
_0804B048: .4byte 0x02024260
_0804B04C: .4byte gUnk_02021C08
_0804B050: .4byte gUnk_02021C10
_0804B054: .4byte 0x000002A2

	THUMB_FUNC_START sub_804B058
sub_804B058: @ 0x0804B058
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0804B074
	mov r0, sp
	adds r1, r4, #0
	bl sub_804B144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B078
	movs r5, #0x1d
	b _0804B0B8
	.align 2, 0
_0804B074: .4byte 0x08E01090
_0804B078:
	adds r1, r4, #0
	subs r1, #8
	mov r0, sp
	bl sub_804B144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B08E
	movs r5, #0x1c
	b _0804B0B8
_0804B08E:
	adds r1, r4, #0
	subs r1, #0x10
	mov r0, sp
	bl sub_804B144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B0A4
	movs r5, #0x1b
	b _0804B0B8
_0804B0A4:
	adds r1, r4, #0
	subs r1, #0xc0
	mov r0, sp
	bl sub_804B144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B122
	movs r5, #5
_0804B0B8:
	ldr r4, _0804B12C
	ldr r2, _0804B130
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0804B134
	lsls r2, r5, #3
	adds r1, #2
	adds r5, r2, r1
	ldrh r1, [r5]
	bl sub_804D600
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl ClearZone
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl ClearZone
	bl ResetNumTributes
	ldr r0, _0804B138
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B122
	ldr r0, _0804B13C
	ldr r1, _0804B140
	strh r1, [r0]
	ldrh r1, [r5]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B122:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B12C: .4byte gBoard
_0804B130: .4byte 0x02024260
_0804B134: .4byte 0x08E00FA8
_0804B138: .4byte gUnk_02021C08
_0804B13C: .4byte gUnk_02021C10
_0804B140: .4byte 0x000002A3

	THUMB_FUNC_START sub_804B144
sub_804B144: @ 0x0804B144
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
	ldr r1, _0804B1D0
	ldr r0, [r1, #0x28]
	ldrh r0, [r0]
	mov ip, r1
	ldrh r1, [r3]
	cmp r0, r1
	beq _0804B176
	mov r1, ip
	adds r1, #0x28
_0804B15E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _0804B176
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r5, [r3]
	cmp r0, r5
	bne _0804B15E
_0804B176:
	cmp r2, #5
	beq _0804B204
	adds r0, r2, #0
	strb r2, [r4]
	movs r2, #0
	cmp r2, r0
	beq _0804B190
	mov r1, ip
	ldr r0, [r1, #0x28]
	ldrh r0, [r0]
	ldrh r5, [r3, #4]
	cmp r0, r5
	beq _0804B1B2
_0804B190:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _0804B1B2
	ldrb r0, [r4]
	cmp r2, r0
	beq _0804B190
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r1, [r3, #4]
	cmp r0, r1
	bne _0804B190
_0804B1B2:
	cmp r2, #5
	beq _0804B204
	adds r1, r2, #0
	strb r2, [r4, #1]
	movs r2, #0
	ldrb r0, [r4]
	adds r5, r0, #0
	cmp r2, r5
	beq _0804B1D4
	cmp r2, r1
	beq _0804B1D4
	mov r1, ip
	ldr r0, [r1, #0x28]
	b _0804B1F2
	.align 2, 0
_0804B1D0: .4byte gBoard
_0804B1D4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _0804B1FA
	cmp r2, r5
	beq _0804B1D4
	ldrb r0, [r4, #1]
	cmp r2, r0
	beq _0804B1D4
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
_0804B1F2:
	ldrh r0, [r0]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bne _0804B1D4
_0804B1FA:
	cmp r2, #5
	beq _0804B204
	strb r2, [r4, #2]
	movs r0, #1
	b _0804B206
_0804B204:
	movs r0, #0
_0804B206:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_804B20C
sub_804B20C: @ 0x0804B20C
	push {r4, r5, r6, lr}
	ldr r5, _0804B280
	ldr r6, _0804B284
	adds r4, r6, #0
	adds r4, #0x48
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B278
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B288
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x4a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B28C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B278
	ldr r0, _0804B290
	movs r1, #0xa9
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B278:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B280: .4byte gBoard+0x28
_0804B284: .4byte 0x08E00FA8
_0804B288: .4byte 0x02024260
_0804B28C: .4byte gUnk_02021C08
_0804B290: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804B294
sub_804B294: @ 0x0804B294
	push {r4, r5, r6, lr}
	ldr r5, _0804B304
	ldr r6, _0804B308
	adds r4, r6, #0
	adds r4, #0x50
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B2FE
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B30C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x52
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B310
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B2FE
	ldr r0, _0804B314
	ldr r1, _0804B318
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B2FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B304: .4byte gBoard+0x28
_0804B308: .4byte 0x08E00FA8
_0804B30C: .4byte 0x02024260
_0804B310: .4byte gUnk_02021C08
_0804B314: .4byte gUnk_02021C10
_0804B318: .4byte 0x000002A5

	THUMB_FUNC_START sub_804B31C
sub_804B31C: @ 0x0804B31C
	push {r4, r5, r6, lr}
	ldr r5, _0804B38C
	ldr r6, _0804B390
	adds r4, r6, #0
	adds r4, #0x58
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B386
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B394
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x5a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B398
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B386
	ldr r0, _0804B39C
	ldr r1, _0804B3A0
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B386:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B38C: .4byte gBoard+0x28
_0804B390: .4byte 0x08E00FA8
_0804B394: .4byte 0x02024260
_0804B398: .4byte gUnk_02021C08
_0804B39C: .4byte gUnk_02021C10
_0804B3A0: .4byte 0x000002A6

	THUMB_FUNC_START sub_804B3A4
sub_804B3A4: @ 0x0804B3A4
	push {r4, r5, r6, lr}
	ldr r5, _0804B414
	ldr r6, _0804B418
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B40E
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B41C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x62
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B420
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B40E
	ldr r0, _0804B424
	ldr r1, _0804B428
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B40E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B414: .4byte gBoard+0x28
_0804B418: .4byte 0x08E00FA8
_0804B41C: .4byte 0x02024260
_0804B420: .4byte gUnk_02021C08
_0804B424: .4byte gUnk_02021C10
_0804B428: .4byte 0x000002A7
	.byte 0x70, 0xB5, 0x1C, 0x4D
	.byte 0x1C, 0x4E, 0x34, 0x1C, 0x68, 0x34, 0x21, 0x88, 0x28, 0x1C, 0xF8, 0xF7, 0x17, 0xF9, 0x01, 0x28
	.byte 0x2A, 0xD1, 0x21, 0x88, 0x28, 0x1C, 0xF8, 0xF7, 0x25, 0xF9, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E
	.byte 0x2B, 0x1C, 0x28, 0x3B, 0x14, 0x4A, 0x91, 0x78, 0x88, 0x00, 0x40, 0x18, 0xD2, 0x78, 0x80, 0x18
	.byte 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x21, 0xF9, 0xF7, 0x66, 0xFF, 0xA4, 0x00, 0x64, 0x19
	.byte 0x20, 0x68, 0x34, 0x1C, 0x6A, 0x34, 0x21, 0x88, 0x02, 0xF0, 0xC2, 0xF8, 0xF9, 0xF7, 0x7A, 0xFF
	.byte 0x0A, 0x48, 0x00, 0x78, 0x00, 0x28, 0x07, 0xD1, 0x09, 0x48, 0xAA, 0x21, 0x89, 0x00, 0x01, 0x80
	.byte 0x21, 0x88, 0x41, 0x80, 0xD1, 0xF7, 0x12, 0xFD, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xA8, 0x0F, 0xE0, 0x08, 0x60, 0x42, 0x02, 0x02, 0x08, 0x1C, 0x02, 0x02
	.byte 0x10, 0x1C, 0x02, 0x02, 0x70, 0xB5, 0x1B, 0x4D, 0x1B, 0x4E, 0x34, 0x1C, 0x70, 0x34, 0x21, 0x88
	.byte 0x28, 0x1C, 0xF8, 0xF7, 0xD3, 0xF8, 0x01, 0x28, 0x29, 0xD1, 0x21, 0x88, 0x28, 0x1C, 0xF8, 0xF7
	.byte 0xE1, 0xF8, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x2B, 0x1C, 0x28, 0x3B, 0x13, 0x4A, 0x91, 0x78
	.byte 0x88, 0x00, 0x40, 0x18, 0xD2, 0x78, 0x80, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x21
	.byte 0xF9, 0xF7, 0x22, 0xFF, 0xA4, 0x00, 0x64, 0x19, 0x20, 0x68, 0x34, 0x1C, 0x72, 0x34, 0x21, 0x88
	.byte 0x02, 0xF0, 0x7E, 0xF8, 0xF9, 0xF7, 0x36, 0xFF, 0x09, 0x48, 0x00, 0x78, 0x00, 0x28, 0x06, 0xD1
	.byte 0x08, 0x48, 0x09, 0x49, 0x01, 0x80, 0x21, 0x88, 0x41, 0x80, 0xD1, 0xF7, 0xCF, 0xFC, 0x70, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xF8, 0x3F, 0x02, 0x02, 0xA8, 0x0F, 0xE0, 0x08, 0x60, 0x42, 0x02, 0x02
	.byte 0x08, 0x1C, 0x02, 0x02, 0x10, 0x1C, 0x02, 0x02, 0xB3, 0x02, 0x00, 0x00, 0x30, 0xB5, 0x23, 0x4D
	.byte 0x23, 0x4C, 0xA1, 0x78, 0x88, 0x00, 0x40, 0x18, 0xE1, 0x78, 0x40, 0x18, 0x80, 0x00, 0x40, 0x19
	.byte 0x00, 0x68, 0x00, 0x88, 0x0A, 0xF0, 0x96, 0xFA, 0x01, 0x28, 0x4E, 0xD1, 0x1D, 0x4A, 0x20, 0x79
	.byte 0x90, 0x70, 0x60, 0x79, 0xD0, 0x70, 0x21, 0x79, 0x88, 0x00, 0x40, 0x18, 0x61, 0x79, 0x40, 0x18
	.byte 0x80, 0x00, 0x40, 0x19, 0x00, 0x68, 0x00, 0x88, 0x10, 0x80, 0x0D, 0xF0, 0xAF, 0xF8, 0x01, 0x28
	.byte 0x03, 0xD1, 0x15, 0x48, 0x00, 0x78, 0x00, 0x28, 0x2A, 0xD0, 0xA1, 0x78, 0x88, 0x00, 0x40, 0x18
	.byte 0xE1, 0x78, 0x40, 0x18, 0x80, 0x00, 0x40, 0x19, 0x00, 0x68, 0xF4, 0xF7, 0xE5, 0xFE, 0x21, 0x79
	.byte 0x88, 0x00, 0x40, 0x18, 0x64, 0x79, 0x00, 0x19, 0x80, 0x00, 0x40, 0x19, 0x00, 0x68, 0x00, 0x21
	.byte 0xF9, 0xF7, 0xC2, 0xFE, 0x08, 0x48, 0x00, 0x78, 0x00, 0x28, 0x25, 0xD1, 0x07, 0x49, 0xA3, 0x20
	.byte 0x80, 0x00, 0x08, 0x80, 0xD1, 0xF7, 0x7A, 0xFC, 0x1E, 0xE0, 0x00, 0x00, 0xD0, 0x3F, 0x02, 0x02
	.byte 0x60, 0x42, 0x02, 0x02, 0xA0, 0x45, 0x02, 0x02, 0x08, 0x1C, 0x02, 0x02, 0x10, 0x1C, 0x02, 0x02
	.byte 0xA0, 0x78, 0x81, 0x00, 0x09, 0x18, 0xE4, 0x78, 0x09, 0x19, 0x89, 0x00, 0x49, 0x19, 0x08, 0x68
	.byte 0xF4, 0xF7, 0xC4, 0xFE, 0x0C, 0xF0, 0xF2, 0xFD, 0x06, 0xE0, 0x05, 0x48, 0x00, 0x78, 0x00, 0x28
	.byte 0x02, 0xD1, 0x39, 0x20, 0xE9, 0xF7, 0xAC, 0xFC, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x08, 0x1C, 0x02, 0x02

	THUMB_FUNC_START sub_804B614
sub_804B614: @ 0x0804B614
	push {r4, r5, lr}
	ldr r5, _0804B6A0
	ldr r4, _0804B6A4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055AB4
	cmp r0, #1
	bne _0804B6D2
	ldr r2, _0804B6A8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804B662
	ldr r0, _0804B6AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B6B8
_0804B662:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B6AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B6E0
	ldr r1, _0804B6B0
	ldr r0, _0804B6B4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804B6E0
	.align 2, 0
_0804B6A0: .4byte gBoard
_0804B6A4: .4byte 0x02024260
_0804B6A8: .4byte 0x020245A0
_0804B6AC: .4byte gUnk_02021C08
_0804B6B0: .4byte gUnk_02021C10
_0804B6B4: .4byte 0x0000028E
_0804B6B8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804B6E0
_0804B6D2:
	ldr r0, _0804B6E8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B6E0
	movs r0, #0x39
	bl sub_8034F60
_0804B6E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B6E8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804B6EC
sub_804B6EC: @ 0x0804B6EC
	push {r4, r5, lr}
	ldr r5, _0804B778
	ldr r4, _0804B77C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055AE4
	cmp r0, #1
	bne _0804B7AA
	ldr r2, _0804B780
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804B73A
	ldr r0, _0804B784
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B790
_0804B73A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B784
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B7B8
	ldr r1, _0804B788
	ldr r0, _0804B78C
	strh r0, [r1]
	bl sub_801CEBC
	b _0804B7B8
	.align 2, 0
_0804B778: .4byte gBoard
_0804B77C: .4byte 0x02024260
_0804B780: .4byte 0x020245A0
_0804B784: .4byte gUnk_02021C08
_0804B788: .4byte gUnk_02021C10
_0804B78C: .4byte 0x0000028B
_0804B790:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804B7B8
_0804B7AA:
	ldr r0, _0804B7C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B7B8
	movs r0, #0x39
	bl sub_8034F60
_0804B7B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B7C0: .4byte gUnk_02021C08

THUMB_FUNC_START sub_804B7C4
sub_804B7C4: @ 0x0804B7C4
	push {r4, r5, lr}
	ldr r5, _0804B854
	ldr r4, _0804B858
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055B14
	cmp r0, #1
	bne _0804B882
	ldr r2, _0804B85C
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804B812
	ldr r0, _0804B860
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B868
_0804B812:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B860
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B890
	ldr r1, _0804B864
	movs r0, #0xa7
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
	b _0804B890
	.align 2, 0
_0804B854: .4byte gBoard
_0804B858: .4byte 0x02024260
_0804B85C: .4byte 0x020245A0
_0804B860: .4byte gUnk_02021C08
_0804B864: .4byte gUnk_02021C10
_0804B868:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804B890
_0804B882:
	ldr r0, _0804B898
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B890
	movs r0, #0x39
	bl sub_8034F60
_0804B890:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B898: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804B89C
sub_804B89C: @ 0x0804B89C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _0804B934
	mov sb, r0
	ldr r5, _0804B938
	ldr r1, _0804B93C
	mov r8, r1
	ldr r7, _0804B940
_0804B8B2:
	lsls r0, r6, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804B8F2
	bl IsGodCard
	cmp r0, #1
	beq _0804B8F2
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r5]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _0804B944
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bls _0804B8F2
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804B8F2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0804B8B2
	ldr r3, _0804B948
	ldr r2, _0804B94C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B950
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B928
	ldr r1, _0804B954
	ldr r0, _0804B958
	strh r0, [r1]
	bl sub_801CEBC
_0804B928:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B934: .4byte gBoard+0x14
_0804B938: .4byte gUnk2021AC0
_0804B93C: .4byte gDuel+0xF0
_0804B940: .4byte 0x000005DB
_0804B944: .4byte gCardInfo
_0804B948: .4byte gBoard
_0804B94C: .4byte 0x02024260
_0804B950: .4byte gUnk_02021C08
_0804B954: .4byte gUnk_02021C10
_0804B958: .4byte 0x00000295

	THUMB_FUNC_START sub_804B95C
sub_804B95C: @ 0x0804B95C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804B9B8
_0804B962:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804B97A
	adds r0, r1, #0
	bl sub_804037C
	ldr r0, [r4]
	bl sub_804037C
_0804B97A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804B962
	ldr r3, _0804B9BC
	ldr r2, _0804B9C0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B9C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B9B0
	ldr r1, _0804B9C8
	ldr r0, _0804B9CC
	strh r0, [r1]
	bl sub_801CEBC
_0804B9B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B9B8: .4byte gBoard+0x14
_0804B9BC: .4byte gBoard
_0804B9C0: .4byte 0x02024260
_0804B9C4: .4byte gUnk_02021C08
_0804B9C8: .4byte gUnk_02021C10
_0804B9CC: .4byte 0x0000029D

	THUMB_FUNC_START sub_804B9D0
sub_804B9D0: @ 0x0804B9D0
	push {r4, r5, r6, lr}
	ldr r5, _0804BA44
	ldr r6, _0804BA48
	adds r4, r6, #0
	adds r4, #0x78
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BA3C
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BA4C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x7a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BA50
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BA3C
	ldr r0, _0804BA54
	movs r1, #0xad
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BA3C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BA44: .4byte gBoard+0x28
_0804BA48: .4byte 0x08E00FA8
_0804BA4C: .4byte 0x02024260
_0804BA50: .4byte gUnk_02021C08
_0804BA54: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804BA58
sub_804BA58: @ 0x0804BA58
	push {r4, r5, r6, lr}
	ldr r5, _0804BAC8
	ldr r6, _0804BACC
	adds r4, r6, #0
	adds r4, #0x80
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BAC2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BAD0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x82
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BAD4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BAC2
	ldr r0, _0804BAD8
	ldr r1, _0804BADC
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BAC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BAC8: .4byte gBoard+0x28
_0804BACC: .4byte 0x08E00FA8
_0804BAD0: .4byte 0x02024260
_0804BAD4: .4byte gUnk_02021C08
_0804BAD8: .4byte gUnk_02021C10
_0804BADC: .4byte 0x000002B5

	THUMB_FUNC_START sub_804BAE0
sub_804BAE0: @ 0x0804BAE0
	push {r4, r5, r6, lr}
	ldr r5, _0804BB50
	ldr r6, _0804BB54
	adds r4, r6, #0
	adds r4, #0x88
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BB4A
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BB58
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x8a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BB5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BB4A
	ldr r0, _0804BB60
	ldr r1, _0804BB64
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BB4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB50: .4byte gBoard+0x28
_0804BB54: .4byte 0x08E00FA8
_0804BB58: .4byte 0x02024260
_0804BB5C: .4byte gUnk_02021C08
_0804BB60: .4byte gUnk_02021C10
_0804BB64: .4byte 0x000002B6

	THUMB_FUNC_START sub_804BB68
sub_804BB68: @ 0x0804BB68
	push {r4, r5, r6, lr}
	ldr r5, _0804BBD8
	ldr r6, _0804BBDC
	adds r4, r6, #0
	adds r4, #0x90
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BBD2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BBE0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x92
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BBE4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BBD2
	ldr r0, _0804BBE8
	ldr r1, _0804BBEC
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BBD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BBD8: .4byte gBoard+0x28
_0804BBDC: .4byte 0x08E00FA8
_0804BBE0: .4byte 0x02024260
_0804BBE4: .4byte gUnk_02021C08
_0804BBE8: .4byte gUnk_02021C10
_0804BBEC: .4byte 0x000002B7

	THUMB_FUNC_START sub_804BBF0
sub_804BBF0: @ 0x0804BBF0
	push {r4, r5, r6, lr}
	ldr r5, _0804BC64
	ldr r6, _0804BC68
	adds r4, r6, #0
	adds r4, #0x98
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BC5C
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BC6C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x9a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BC70
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BC5C
	ldr r0, _0804BC74
	movs r1, #0xae
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BC5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BC64: .4byte gBoard+0x28
_0804BC68: .4byte 0x08E00FA8
_0804BC6C: .4byte 0x02024260
_0804BC70: .4byte gUnk_02021C08
_0804BC74: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804BC78
sub_804BC78: @ 0x0804BC78
	push {r4, r5, r6, lr}
	ldr r5, _0804BCE8
	ldr r6, _0804BCEC
	adds r4, r6, #0
	adds r4, #0xa0
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BCE2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BCF0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xa2
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BCF4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BCE2
	ldr r0, _0804BCF8
	ldr r1, _0804BCFC
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BCE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BCE8: .4byte gBoard+0x28
_0804BCEC: .4byte 0x08E00FA8
_0804BCF0: .4byte 0x02024260
_0804BCF4: .4byte gUnk_02021C08
_0804BCF8: .4byte gUnk_02021C10
_0804BCFC: .4byte 0x000002B9

	THUMB_FUNC_START sub_804BD00
sub_804BD00: @ 0x0804BD00
	push {r4, r5, r6, lr}
	ldr r5, _0804BD70
	ldr r6, _0804BD74
	adds r4, r6, #0
	adds r4, #0xa8
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BD6A
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BD78
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xaa
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BD7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BD6A
	ldr r0, _0804BD80
	ldr r1, _0804BD84
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BD6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD70: .4byte gBoard+0x28
_0804BD74: .4byte 0x08E00FA8
_0804BD78: .4byte 0x02024260
_0804BD7C: .4byte gUnk_02021C08
_0804BD80: .4byte gUnk_02021C10
_0804BD84: .4byte 0x000002BA

	THUMB_FUNC_START sub_804BD88
sub_804BD88: @ 0x0804BD88
	push {r4, r5, r6, lr}
	ldr r5, _0804BDF8
	ldr r6, _0804BDFC
	adds r4, r6, #0
	adds r4, #0xb0
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BDF2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BE00
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xb2
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BE04
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BDF2
	ldr r0, _0804BE08
	ldr r1, _0804BE0C
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BDF2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BDF8: .4byte gBoard+0x28
_0804BDFC: .4byte 0x08E00FA8
_0804BE00: .4byte 0x02024260
_0804BE04: .4byte gUnk_02021C08
_0804BE08: .4byte gUnk_02021C10
_0804BE0C: .4byte 0x000002BB

	THUMB_FUNC_START sub_804BE10
sub_804BE10: @ 0x0804BE10
	push {r4, r5, r6, lr}
	ldr r5, _0804BE84
	ldr r6, _0804BE88
	adds r4, r6, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BE7C
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BE8C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xba
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BE90
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BE7C
	ldr r0, _0804BE94
	movs r1, #0xaf
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BE7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BE84: .4byte gBoard+0x28
_0804BE88: .4byte 0x08E00FA8
_0804BE8C: .4byte 0x02024260
_0804BE90: .4byte gUnk_02021C08
_0804BE94: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804BE98
sub_804BE98: @ 0x0804BE98
	push {r4, r5, r6, lr}
	ldr r5, _0804BF00
	ldr r6, _0804BF04
	ldrh r1, [r6, #0x30]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BEFA
	ldrh r1, [r6, #0x30]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BF08
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x32]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BF0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BEFA
	ldr r0, _0804BF10
	ldr r1, _0804BF14
	strh r1, [r0]
	ldrh r1, [r6, #0x32]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BEFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BF00: .4byte gBoard+0x28
_0804BF04: .4byte 0x08E00FA8
_0804BF08: .4byte 0x02024260
_0804BF0C: .4byte gUnk_02021C08
_0804BF10: .4byte gUnk_02021C10
_0804BF14: .4byte 0x00000299

	THUMB_FUNC_START sub_804BF18
sub_804BF18: @ 0x0804BF18
	push {r4, r5, r6, lr}
	ldr r5, _0804BF80
	ldr r6, _0804BF84
	ldrh r1, [r6, #0x38]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BF7A
	ldrh r1, [r6, #0x38]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BF88
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x3a]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BF8C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BF7A
	ldr r0, _0804BF90
	ldr r1, _0804BF94
	strh r1, [r0]
	ldrh r1, [r6, #0x3a]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BF7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BF80: .4byte gBoard+0x28
_0804BF84: .4byte 0x08E00FA8
_0804BF88: .4byte 0x02024260
_0804BF8C: .4byte gUnk_02021C08
_0804BF90: .4byte gUnk_02021C10
_0804BF94: .4byte 0x0000029A

	THUMB_FUNC_START sub_804BF98
sub_804BF98: @ 0x0804BF98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _0804C05C
	ldr r6, _0804C060
	adds r4, r6, #0
	adds r4, #0x40
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C052
	adds r7, r6, #0
	adds r7, #0x44
	ldrh r1, [r7]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C052
	movs r0, #0x46
	adds r0, r0, r6
	mov r8, r0
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C052
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804C064
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x42
	ldrh r1, [r4]
	bl sub_804D600
	ldrh r1, [r7]
	adds r0, r5, #0
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	bl ClearZone
	mov r0, r8
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	bl ClearZone
	bl ResetNumTributes
	ldr r0, _0804C068
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C052
	ldr r0, _0804C06C
	ldr r1, _0804C070
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804C052:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C05C: .4byte gBoard+0x28
_0804C060: .4byte 0x08E00FA8
_0804C064: .4byte 0x02024260
_0804C068: .4byte gUnk_02021C08
_0804C06C: .4byte gUnk_02021C10
_0804C070: .4byte 0x0000029B

	THUMB_FUNC_START sub_804C074
sub_804C074: @ 0x0804C074
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C0E0
_0804C07A:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #1
	beq _0804C0A2
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C0E4
	ldrb r0, [r0, #0x16]
	cmp r0, #4
	bne _0804C0A2
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C0A2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C07A
	ldr r3, _0804C0E8
	ldr r2, _0804C0EC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C0F0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C0D8
	ldr r1, _0804C0F4
	ldr r0, _0804C0F8
	strh r0, [r1]
	bl sub_801CEBC
_0804C0D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C0E0: .4byte gBoard+0x14
_0804C0E4: .4byte gCardInfo
_0804C0E8: .4byte gBoard
_0804C0EC: .4byte 0x02024260
_0804C0F0: .4byte gUnk_02021C08
_0804C0F4: .4byte gUnk_02021C10
_0804C0F8: .4byte 0x0000028D

	THUMB_FUNC_START sub_804C0FC
sub_804C0FC: @ 0x0804C0FC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C15C
_0804C102:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804C11E
	adds r0, r1, #0
	bl sub_8040688
	cmp r0, #0
	bge _0804C11E
	ldr r0, [r4]
	bl sub_8040360
_0804C11E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C102
	ldr r3, _0804C160
	ldr r2, _0804C164
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C168
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C154
	ldr r1, _0804C16C
	ldr r0, _0804C170
	strh r0, [r1]
	bl sub_801CEBC
_0804C154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C15C: .4byte gBoard+0x28
_0804C160: .4byte gBoard
_0804C164: .4byte 0x02024260
_0804C168: .4byte gUnk_02021C08
_0804C16C: .4byte gUnk_02021C10
_0804C170: .4byte 0x0000028F

	THUMB_FUNC_START sub_804C174
sub_804C174: @ 0x0804C174
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C1D4
_0804C17A:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C1D8
	ldrb r0, [r0, #0x16]
	cmp r0, #3
	bne _0804C196
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C196:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C17A
	ldr r3, _0804C1DC
	ldr r2, _0804C1E0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C1E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C1CE
	ldr r1, _0804C1E8
	movs r0, #0xa4
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804C1CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C1D4: .4byte gBoard+0x14
_0804C1D8: .4byte gCardInfo
_0804C1DC: .4byte gBoard
_0804C1E0: .4byte 0x02024260
_0804C1E4: .4byte gUnk_02021C08
_0804C1E8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804C1EC
sub_804C1EC: @ 0x0804C1EC
	push {r4, r5, lr}
	ldr r5, _0804C278
	ldr r4, _0804C27C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055B44
	cmp r0, #1
	bne _0804C2AA
	ldr r2, _0804C280
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804C23A
	ldr r0, _0804C284
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C290
_0804C23A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C284
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C2B8
	ldr r1, _0804C288
	ldr r0, _0804C28C
	strh r0, [r1]
	bl sub_801CEBC
	b _0804C2B8
	.align 2, 0
_0804C278: .4byte gBoard
_0804C27C: .4byte 0x02024260
_0804C280: .4byte 0x020245A0
_0804C284: .4byte gUnk_02021C08
_0804C288: .4byte gUnk_02021C10
_0804C28C: .4byte 0x00000291
_0804C290:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804C2B8
_0804C2AA:
	ldr r0, _0804C2C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C2B8
	movs r0, #0x39
	bl sub_8034F60
_0804C2B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C2C0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804C2C4
sub_804C2C4: @ 0x0804C2C4
	push {r4, lr}
	ldr r4, _0804C35C
	ldr r3, _0804C360
	ldrb r1, [r3, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r3, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldrh r1, [r2]
	ldr r0, _0804C364
	cmp r1, r0
	bne _0804C30E
	adds r0, #1
	strh r0, [r2]
	ldrb r1, [r3, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r3, [r3, #5]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C30E
	ldr r1, _0804C36C
	ldr r0, _0804C370
	strh r0, [r1]
	bl sub_801CEBC
_0804C30E:
	ldr r3, _0804C35C
	ldr r2, _0804C360
	ldrb r0, [r2, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r2, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldrh r0, [r1]
	cmp r0, #0x52
	bne _0804C354
	ldr r0, _0804C374
	strh r0, [r1]
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #5]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C354
	ldr r1, _0804C36C
	ldr r0, _0804C370
	strh r0, [r1]
	bl sub_801CEBC
_0804C354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C35C: .4byte gBoard
_0804C360: .4byte 0x02024260
_0804C364: .4byte 0x00000187
_0804C368: .4byte gUnk_02021C08
_0804C36C: .4byte gUnk_02021C10
_0804C370: .4byte 0x00000292
_0804C374: .4byte 0x000002E6

	THUMB_FUNC_START sub_804C378
sub_804C378: @ 0x0804C378
	push {r4, r5, lr}
	ldr r5, _0804C404
	ldr r4, _0804C408
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055B74
	cmp r0, #1
	bne _0804C436
	ldr r2, _0804C40C
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804C3C6
	ldr r0, _0804C410
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C41C
_0804C3C6:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C410
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C444
	ldr r1, _0804C414
	ldr r0, _0804C418
	strh r0, [r1]
	bl sub_801CEBC
	b _0804C444
	.align 2, 0
_0804C404: .4byte gBoard
_0804C408: .4byte 0x02024260
_0804C40C: .4byte 0x020245A0
_0804C410: .4byte gUnk_02021C08
_0804C414: .4byte gUnk_02021C10
_0804C418: .4byte 0x00000293
_0804C41C:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804C444
_0804C436:
	ldr r0, _0804C44C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C444
	movs r0, #0x39
	bl sub_8034F60
_0804C444:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C44C: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804C450
sub_804C450: @ 0x0804C450
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C4BC
_0804C456:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #1
	beq _0804C47E
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C4C0
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bne _0804C47E
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C47E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C456
	ldr r3, _0804C4C4
	ldr r2, _0804C4C8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C4CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C4B6
	ldr r1, _0804C4D0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804C4B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C4BC: .4byte gBoard+0x14
_0804C4C0: .4byte gCardInfo
_0804C4C4: .4byte gBoard
_0804C4C8: .4byte 0x02024260
_0804C4CC: .4byte gUnk_02021C08
_0804C4D0: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804C4D4
sub_804C4D4: @ 0x0804C4D4
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C534
_0804C4DA:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C538
	ldrb r0, [r0, #0x16]
	cmp r0, #0xa
	bne _0804C4F6
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C4F6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C4DA
	ldr r3, _0804C53C
	ldr r2, _0804C540
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C544
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C52C
	ldr r1, _0804C548
	ldr r0, _0804C54C
	strh r0, [r1]
	bl sub_801CEBC
_0804C52C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C534: .4byte gBoard+0x14
_0804C538: .4byte gCardInfo
_0804C53C: .4byte gBoard
_0804C540: .4byte 0x02024260
_0804C544: .4byte gUnk_02021C08
_0804C548: .4byte gUnk_02021C10
_0804C54C: .4byte 0x00000296

	THUMB_FUNC_START sub_804C550
sub_804C550: @ 0x0804C550
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C5B0
_0804C556:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C5B4
	ldrb r0, [r0, #0x16]
	cmp r0, #0x13
	bne _0804C572
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C572:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C556
	ldr r3, _0804C5B8
	ldr r2, _0804C5BC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C5C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C5A8
	ldr r1, _0804C5C4
	ldr r0, _0804C5C8
	strh r0, [r1]
	bl sub_801CEBC
_0804C5A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C5B0: .4byte gBoard+0x14
_0804C5B4: .4byte gCardInfo
_0804C5B8: .4byte gBoard
_0804C5BC: .4byte 0x02024260
_0804C5C0: .4byte gUnk_02021C08
_0804C5C4: .4byte gUnk_02021C10
_0804C5C8: .4byte 0x00000297

	THUMB_FUNC_START sub_804C5CC
sub_804C5CC: @ 0x0804C5CC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C62C
_0804C5D2:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C630
	ldrb r0, [r0, #0x16]
	cmp r0, #0xd
	bne _0804C5EE
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C5EE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C5D2
	ldr r3, _0804C634
	ldr r2, _0804C638
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C63C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C626
	ldr r1, _0804C640
	movs r0, #0xa6
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804C626:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C62C: .4byte gBoard+0x14
_0804C630: .4byte gCardInfo
_0804C634: .4byte gBoard
_0804C638: .4byte 0x02024260
_0804C63C: .4byte gUnk_02021C08
_0804C640: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804C644
sub_804C644: @ 0x0804C644
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0804C69C
	ldr r5, _0804C6A0
	ldr r4, _0804C6A4
	movs r3, #0x10
_0804C650:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804C662
	ldrb r0, [r1, #5]
	orrs r0, r3
	strb r0, [r1, #5]
_0804C662:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0804C650
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r5, [r5, #3]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C6A8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C694
	ldr r1, _0804C6AC
	ldr r0, _0804C6B0
	strh r0, [r1]
	bl sub_801CEBC
_0804C694:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C69C: .4byte gBoard
_0804C6A0: .4byte 0x02024260
_0804C6A4: .4byte gHands+0x14
_0804C6A8: .4byte gUnk_02021C08
_0804C6AC: .4byte gUnk_02021C10
_0804C6B0: .4byte 0x00000316

	THUMB_FUNC_START sub_804C6B4
sub_804C6B4: @ 0x0804C6B4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, _0804C6D4
	ldr r4, _0804C6D8
	adds r0, r4, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C6DC
	movs r0, #0x1a
	b _0804C6EE
	.align 2, 0
_0804C6D4: .4byte gBoard+0x28
_0804C6D8: .4byte 0x08E00FA8
_0804C6DC:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C74E
	movs r0, #0x18
_0804C6EE:
	ldr r6, _0804C758
	ldr r5, _0804C75C
	lsls r0, r0, #3
	mov r8, r0
	adds r0, r0, r5
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r6, #0
	subs r3, #0x28
	ldr r2, _0804C760
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	adds r5, #2
	mov r1, r8
	adds r4, r1, r5
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804C764
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C74E
	ldr r0, _0804C768
	ldr r1, _0804C76C
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804C74E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C758: .4byte gBoard+0x28
_0804C75C: .4byte 0x08E00FA8
_0804C760: .4byte 0x02024260
_0804C764: .4byte gUnk_02021C08
_0804C768: .4byte gUnk_02021C10
_0804C76C: .4byte 0x000002D2

	THUMB_FUNC_START sub_804C770
sub_804C770: @ 0x0804C770
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C7D0
_0804C776:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C7D4
	ldrb r0, [r0, #0x16]
	cmp r0, #2
	bne _0804C792
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C792:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C776
	ldr r3, _0804C7D8
	ldr r2, _0804C7DC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C7E0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C7C8
	ldr r1, _0804C7E4
	ldr r0, _0804C7E8
	strh r0, [r1]
	bl sub_801CEBC
_0804C7C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C7D0: .4byte gBoard+0x14
_0804C7D4: .4byte gCardInfo
_0804C7D8: .4byte gBoard
_0804C7DC: .4byte 0x02024260
_0804C7E0: .4byte gUnk_02021C08
_0804C7E4: .4byte gUnk_02021C10
_0804C7E8: .4byte 0x00000313

	THUMB_FUNC_START sub_804C7EC
sub_804C7EC: @ 0x0804C7EC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C84C
_0804C7F2:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C850
	ldrb r0, [r0, #0x16]
	cmp r0, #8
	bne _0804C80E
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C80E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C7F2
	ldr r3, _0804C854
	ldr r2, _0804C858
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C85C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C844
	ldr r1, _0804C860
	ldr r0, _0804C864
	strh r0, [r1]
	bl sub_801CEBC
_0804C844:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C84C: .4byte gBoard+0x14
_0804C850: .4byte gCardInfo
_0804C854: .4byte gBoard
_0804C858: .4byte 0x02024260
_0804C85C: .4byte gUnk_02021C08
_0804C860: .4byte gUnk_02021C10
_0804C864: .4byte 0x00000312

	THUMB_FUNC_START sub_804C868
sub_804C868: @ 0x0804C868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0804C8E4
	adds r0, r4, #0
	movs r1, #0x3a
	bl NumCardInRow
	cmp r0, #0
	beq _0804C910
	movs r5, #0
	mov r8, r4
	movs r7, #0
	movs r0, #3
	rsbs r0, r0, #0
	adds r6, r0, #0
_0804C888:
	lsls r0, r5, #2
	mov r1, r8
	adds r4, r0, r1
	ldr r2, [r4]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0804C8E8
	movs r0, #0x3a
	strh r0, [r2]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #5]
	ands r0, r6
	strb r0, [r1, #5]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r4]
	strb r7, [r0, #4]
	ldr r0, [r4]
	bl sub_8040360
	ldr r0, [r4]
	bl sub_80403E8
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r3, #0x21
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #5]
	b _0804C906
	.align 2, 0
_0804C8E4: .4byte gBoard+0x28
_0804C8E8:
	cmp r0, #0x3a
	bne _0804C906
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #5]
	ands r0, r6
	strb r0, [r1, #5]
_0804C906:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C888
_0804C910:
	ldr r3, _0804C948
	ldr r2, _0804C94C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C950
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C93C
	ldr r1, _0804C954
	ldr r0, _0804C958
	strh r0, [r1]
	bl sub_801CEBC
_0804C93C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C948: .4byte gBoard
_0804C94C: .4byte 0x02024260
_0804C950: .4byte gUnk_02021C08
_0804C954: .4byte gUnk_02021C10
_0804C958: .4byte 0x00000311

	THUMB_FUNC_START sub_804C95C
sub_804C95C: @ 0x0804C95C
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804CA34
	adds r0, r6, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	beq _0804C9FE
	adds r7, r6, #0
	subs r7, #0x14
	adds r0, r7, #0
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	beq _0804C9FE
	adds r0, r6, #0
	bl EmptyZoneInRow
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0
	bl HighestAtkMonInRowExceptGodCards
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	lsrs r5, r5, #0x16
	adds r5, r5, r7
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r3, [r4]
	ldr r0, [r5]
	ldrb r0, [r0, #5]
	movs r1, #4
	ands r1, r0
	ldrb r2, [r3, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r6, [r4]
	ldr r0, [r5]
	bl sub_8040688
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8040684
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r5]
	bl ClearZone
_0804C9FE:
	ldr r3, _0804CA38
	ldr r2, _0804CA3C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CA40
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CA2C
	ldr r1, _0804CA44
	movs r0, #0xc4
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804CA2C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CA34: .4byte gBoard+0x28
_0804CA38: .4byte gBoard
_0804CA3C: .4byte 0x02024260
_0804CA40: .4byte gUnk_02021C08
_0804CA44: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804CA48
sub_804CA48: @ 0x0804CA48
	push {r4, r5, r6, lr}
	ldr r5, _0804CAB8
	ldr r6, _0804CABC
	adds r4, r6, #0
	adds r4, #0xc8
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804CAB2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804CAC0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xca
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804CAC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CAB2
	ldr r0, _0804CAC8
	ldr r1, _0804CACC
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804CAB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CAB8: .4byte gBoard+0x28
_0804CABC: .4byte 0x08E00FA8
_0804CAC0: .4byte 0x02024260
_0804CAC4: .4byte gUnk_02021C08
_0804CAC8: .4byte gUnk_02021C10
_0804CACC: .4byte 0x0000030F

	THUMB_FUNC_START sub_804CAD0
sub_804CAD0: @ 0x0804CAD0
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804CBA4
	adds r0, r6, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	beq _0804CB70
	adds r7, r6, #0
	subs r7, #0x14
	adds r0, r7, #0
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	beq _0804CB70
	adds r0, r6, #0
	bl EmptyZoneInRow
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0
	bl HighestAtkMonInRowExceptGodCards
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	lsrs r5, r5, #0x16
	adds r5, r5, r7
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r3, [r4]
	ldr r0, [r5]
	ldrb r0, [r0, #5]
	movs r1, #4
	ands r1, r0
	ldrb r2, [r3, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r6, [r4]
	ldr r0, [r5]
	bl sub_8040688
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8040684
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, [r5]
	bl ClearZone
_0804CB70:
	ldr r3, _0804CBA8
	ldr r2, _0804CBAC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CBB0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CB9C
	ldr r1, _0804CBB4
	ldr r0, _0804CBB8
	strh r0, [r1]
	bl sub_801CEBC
_0804CB9C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CBA4: .4byte gBoard+0x28
_0804CBA8: .4byte gBoard
_0804CBAC: .4byte 0x02024260
_0804CBB0: .4byte gUnk_02021C08
_0804CBB4: .4byte gUnk_02021C10
_0804CBB8: .4byte 0x0000030D

	THUMB_FUNC_START sub_804CBBC
sub_804CBBC: @ 0x0804CBBC
	push {r4, r5, lr}
	ldr r5, _0804CC68
	adds r0, r5, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	beq _0804CC36
	adds r0, r5, #0
	bl EmptyZoneInRow
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	bl sub_804535C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0804CC36
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	strh r1, [r0]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r0, [r4]
	bl sub_8040360
	ldr r0, [r4]
	bl sub_80403E8
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
_0804CC36:
	ldr r2, _0804CC6C
	ldr r4, _0804CC70
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CC74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CC62
	ldr r1, _0804CC78
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804CC62:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804CC68: .4byte gBoard+0x28
_0804CC6C: .4byte gBoard
_0804CC70: .4byte 0x02024260
_0804CC74: .4byte gUnk_02021C08
_0804CC78: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804CC7C
sub_804CC7C: @ 0x0804CC7C
	push {r4, r5, lr}
	ldr r5, _0804CD08
	ldr r4, _0804CD0C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055BA4
	cmp r0, #1
	bne _0804CD36
	ldr r2, _0804CD10
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804CCCA
	ldr r0, _0804CD14
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804CD1C
_0804CCCA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CD14
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CD44
	ldr r1, _0804CD18
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
	b _0804CD44
	.align 2, 0
_0804CD08: .4byte gBoard
_0804CD0C: .4byte 0x02024260
_0804CD10: .4byte 0x020245A0
_0804CD14: .4byte gUnk_02021C08
_0804CD18: .4byte gUnk_02021C10
_0804CD1C:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804CD44
_0804CD36:
	ldr r0, _0804CD4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CD44
	movs r0, #0x39
	bl sub_8034F60
_0804CD44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804CD4C: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804CD50
sub_804CD50: @ 0x0804CD50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0804CDF0
	mov r8, r0
_0804CD5C:
	movs r5, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r7, r0, #2
_0804CD64:
	lsls r0, r5, #2
	adds r0, r0, r7
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CD80
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804CD80:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CD64
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0804CD5C
	movs r6, #2
	ldr r0, _0804CDF0
	mov r8, r0
_0804CD9A:
	movs r5, #0
	lsls r0, r6, #2
	adds r7, r6, #1
	adds r0, r0, r6
	lsls r6, r0, #2
_0804CDA4:
	lsls r0, r5, #2
	adds r0, r0, r6
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CDC0
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_0804CDC0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CDA4
	lsls r0, r7, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0804CD9A
	ldr r0, _0804CDF4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CDE6
	ldr r0, _0804CDF8
	ldr r1, _0804CDFC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0804CDE6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CDF0: .4byte gBoard
_0804CDF4: .4byte gUnk_02021C08
_0804CDF8: .4byte gUnk_02021C10
_0804CDFC: .4byte 0x02024260

	THUMB_FUNC_START sub_804CE00
sub_804CE00: @ 0x0804CE00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0804CEE4
	mov r8, r0
_0804CE0C:
	movs r5, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r7, r0, #2
_0804CE14:
	lsls r0, r5, #2
	adds r0, r0, r7
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CE30
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804CE30:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CE14
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0804CE0C
	movs r6, #2
	ldr r0, _0804CEE4
	mov r8, r0
_0804CE4A:
	movs r5, #0
	lsls r0, r6, #2
	adds r7, r6, #1
	adds r0, r0, r6
	lsls r6, r0, #2
_0804CE54:
	lsls r0, r5, #2
	adds r0, r0, r6
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CE70
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_0804CE70:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CE54
	lsls r0, r7, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0804CE4A
	movs r5, #0
	ldr r7, _0804CEE8
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
_0804CE8C:
	lsls r6, r5, #2
	adds r4, r6, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CEA4
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_0804CEA4:
	mov r1, r8
	adds r4, r6, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CEBC
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804CEBC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CE8C
	ldr r0, _0804CEEC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CEDA
	ldr r0, _0804CEF0
	ldr r1, _0804CEF4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0804CEDA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CEE4: .4byte gBoard
_0804CEE8: .4byte gHands
_0804CEEC: .4byte gUnk_02021C08
_0804CEF0: .4byte gUnk_02021C10
_0804CEF4: .4byte 0x02024260

	THUMB_FUNC_START sub_804CEF8
sub_804CEF8: @ 0x0804CEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _0804CF88
	mov sb, r0
	ldr r5, _0804CF8C
	ldr r1, _0804CF90
	mov r8, r1
	ldr r7, _0804CF94
_0804CF0E:
	lsls r0, r6, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804CF44
	strh r0, [r5]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _0804CF98
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bls _0804CF44
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #5]
_0804CF44:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0804CF0E
	ldr r2, _0804CF9C
	ldr r4, _0804CFA0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CFA4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CF7A
	ldr r1, _0804CFA8
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804CF7A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CF88: .4byte gBoard+0x14
_0804CF8C: .4byte gUnk2021AC0
_0804CF90: .4byte gDuel+0xF0
_0804CF94: .4byte 0x000005DB
_0804CF98: .4byte gCardInfo
_0804CF9C: .4byte gBoard
_0804CFA0: .4byte 0x02024260
_0804CFA4: .4byte gUnk_02021C08
_0804CFA8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804CFAC
sub_804CFAC: @ 0x0804CFAC
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0804D020
_0804CFB2:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804CFC4
	adds r0, r1, #0
	bl sub_804034C
_0804CFC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804CFB2
	movs r4, #0
	ldr r5, _0804D024
_0804CFD2:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804CFE4
	adds r0, r1, #0
	bl sub_804034C
_0804CFE4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804CFD2
	ldr r2, _0804D028
	ldr r4, _0804D02C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D030
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D01A
	ldr r1, _0804D034
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804D01A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D020: .4byte gBoard+0x28
_0804D024: .4byte gBoard+0x3C
_0804D028: .4byte gBoard
_0804D02C: .4byte 0x02024260
_0804D030: .4byte gUnk_02021C08
_0804D034: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804D038
sub_804D038: @ 0x0804D038
	push {r4, r5, lr}
	ldr r5, _0804D0C4
	ldr r4, _0804D0C8
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055BD4
	cmp r0, #1
	bne _0804D0F2
	ldr r2, _0804D0CC
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804D086
	ldr r0, _0804D0D0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D0D8
_0804D086:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D0D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D100
	ldr r1, _0804D0D4
	movs r0, #0xc4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804D100
	.align 2, 0
_0804D0C4: .4byte gBoard
_0804D0C8: .4byte 0x02024260
_0804D0CC: .4byte 0x020245A0
_0804D0D0: .4byte gUnk_02021C08
_0804D0D4: .4byte gUnk_02021C10
_0804D0D8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804D100
_0804D0F2:
	ldr r0, _0804D108
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D100
	movs r0, #0x39
	bl sub_8034F60
_0804D100:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D108: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804D10C
sub_804D10C: @ 0x0804D10C
	push {lr}
	bl sub_801D1A8
	movs r0, #1
	bl sub_801D188
	ldr r0, _0804D134
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _0804D138
	ldr r0, _0804D13C
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0804D134: .4byte 0x02024260
_0804D138: .4byte 0x0810300C
_0804D13C: .4byte gCardInfo
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_804D150
sub_804D150: @ 0x0804D150
	push {r4, lr}
	ldr r0, _0804D198
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #1
	strb r0, [r4]
	ldr r3, _0804D19C
	ldr r2, _0804D1A0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D1A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D190
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D1A8
	movs r0, #0xa5
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804D190:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D198: .4byte gDuel
_0804D19C: .4byte gBoard
_0804D1A0: .4byte 0x02024260
_0804D1A4: .4byte gUnk_02021C08
_0804D1A8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804D1AC
sub_804D1AC: @ 0x0804D1AC
	push {r4, lr}
	ldr r0, _0804D1F0
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #2
	strb r0, [r4]
	ldr r3, _0804D1F4
	ldr r2, _0804D1F8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D1FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D1EA
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D200
	ldr r0, _0804D204
	strh r0, [r1]
	bl sub_801CEBC
_0804D1EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D1F0: .4byte gDuel
_0804D1F4: .4byte gBoard
_0804D1F8: .4byte 0x02024260
_0804D1FC: .4byte gUnk_02021C08
_0804D200: .4byte gUnk_02021C10
_0804D204: .4byte 0x0000014B

	THUMB_FUNC_START sub_804D208
sub_804D208: @ 0x0804D208
	push {r4, lr}
	ldr r0, _0804D250
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #3
	strb r0, [r4]
	ldr r3, _0804D254
	ldr r2, _0804D258
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D25C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D248
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D260
	movs r0, #0xa6
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804D248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D250: .4byte gDuel
_0804D254: .4byte gBoard
_0804D258: .4byte 0x02024260
_0804D25C: .4byte gUnk_02021C08
_0804D260: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804D264
sub_804D264: @ 0x0804D264
	push {r4, lr}
	ldr r0, _0804D2A8
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #4
	strb r0, [r4]
	ldr r3, _0804D2AC
	ldr r2, _0804D2B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D2B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D2A2
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D2B8
	ldr r0, _0804D2BC
	strh r0, [r1]
	bl sub_801CEBC
_0804D2A2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D2A8: .4byte gDuel
_0804D2AC: .4byte gBoard
_0804D2B0: .4byte 0x02024260
_0804D2B4: .4byte gUnk_02021C08
_0804D2B8: .4byte gUnk_02021C10
_0804D2BC: .4byte 0x0000014D

	THUMB_FUNC_START sub_804D2C0
sub_804D2C0: @ 0x0804D2C0
	push {r4, lr}
	ldr r0, _0804D308
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #5
	strb r0, [r4]
	ldr r3, _0804D30C
	ldr r2, _0804D310
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D314
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D300
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D318
	movs r0, #0xa7
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804D300:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D308: .4byte gDuel
_0804D30C: .4byte gBoard
_0804D310: .4byte 0x02024260
_0804D314: .4byte gUnk_02021C08
_0804D318: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804D31C
sub_804D31C: @ 0x0804D31C
	push {r4, lr}
	ldr r0, _0804D360
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #6
	strb r0, [r4]
	ldr r3, _0804D364
	ldr r2, _0804D368
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D36C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D35A
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D370
	ldr r0, _0804D374
	strh r0, [r1]
	bl sub_801CEBC
_0804D35A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D360: .4byte gDuel
_0804D364: .4byte gBoard
_0804D368: .4byte 0x02024260
_0804D36C: .4byte gUnk_02021C08
_0804D370: .4byte gUnk_02021C10
_0804D374: .4byte 0x0000014F
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x00, 0x24
	.byte 0x12, 0x4D, 0xA0, 0x00, 0x40, 0x19, 0x00, 0x68, 0x01, 0x21, 0xF7, 0xF7, 0xBD, 0xFF, 0x60, 0x1C
	.byte 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xF4, 0xD9, 0x0C, 0x4B, 0x0D, 0x4A, 0x91, 0x78, 0x88, 0x00
	.byte 0x40, 0x18, 0xD2, 0x78, 0x80, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x21, 0xF7, 0xF7
	.byte 0xAB, 0xFF, 0x08, 0x48, 0x00, 0x78, 0x00, 0x28, 0x05, 0xD1, 0x07, 0x49, 0xA8, 0x20, 0x80, 0x00
	.byte 0x08, 0x80, 0xCF, 0xF7, 0x63, 0xFD, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xD0, 0x3F, 0x02, 0x02
	.byte 0x60, 0x42, 0x02, 0x02, 0x08, 0x1C, 0x02, 0x02, 0x10, 0x1C, 0x02, 0x02

	THUMB_FUNC_START sub_804D40C
sub_804D40C: @ 0x0804D40C
	push {lr}
	bl GetCurrTurn
	bl sub_8043CE4
	bl GetCurrTurn
	bl sub_8043CE4
	ldr r3, _0804D450
	ldr r2, _0804D454
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D458
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D44A
	ldr r1, _0804D45C
	ldr r0, _0804D460
	strh r0, [r1]
	bl sub_801CEBC
_0804D44A:
	pop {r0}
	bx r0
	.align 2, 0
_0804D450: .4byte gBoard
_0804D454: .4byte 0x02024260
_0804D458: .4byte gUnk_02021C08
_0804D45C: .4byte gUnk_02021C10
_0804D460: .4byte 0x00000315

	THUMB_FUNC_START sub_804D464
sub_804D464: @ 0x0804D464
	push {r4, lr}
	ldr r0, _0804D488
	bl NumEmptyZonesInRow
	movs r1, #5
	subs r1, r1, r0
	movs r0, #0xc8
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl GetCurrTurn
	cmp r0, #0
	bne _0804D48C
	adds r0, r4, #0
	bl sub_803F9E4
	b _0804D492
	.align 2, 0
_0804D488: .4byte gHands+0x14
_0804D48C:
	adds r0, r4, #0
	bl sub_803F99C
_0804D492:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _0804D4D0
	ldr r2, _0804D4D4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D4D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D4C8
	ldr r1, _0804D4DC
	movs r0, #0xc5
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804D4C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D4D0: .4byte gBoard
_0804D4D4: .4byte 0x02024260
_0804D4D8: .4byte gUnk_02021C08
_0804D4DC: .4byte gUnk_02021C10

.align 2, 0

/*
.4byte sub_8047D60
.4byte EffectReaperOfTheCards
.4byte EffectFairysGift
.4byte EffectRelinquished
.4byte EffectThousandEyesRestrict
.4byte EffectSkelengel
.4byte EffectHarpieLady
.4byte EffectHarpieLadySisters
.4byte EffectTimeWizard
.4byte EffectCastleOfDarkIllusions
.4byte EffectMysticalElf
.4byte EffectCurseOfDragon
.4byte EffectFlameSwordsman
.4byte EffectGiantSoldierOfStone
.4byte EffectBattleOx
.4byte EffectMonsterTamer
.4byte EffectPumpkingTheKingOfGhosts
.4byte EffectMammothGraveyard
.4byte EffectCatapultTurtle
.4byte EffectGoddessOfWhim
.4byte EffectSpiritOfTheMountain
.4byte EffectDragonSeeker
.4byte EffectTrapMaster
.4byte EffectFiendsHand
.4byte EffectIllusionistFacelessMage
.4byte EffectElectricLizard
.4byte EffectDarkMagicianGirl
.4byte EffectWodanTheResidentOfTheForest
.4byte EffectMWarrior1
.4byte EffectMWarrior2
.4byte EffectRedArcheryGirl
.4byte EffectLadyOfFaith
.4byte EffectFireReaper
.4byte EffectKairyuShin
.4byte EffectGyakutennoMegami
.4byte EffectMonsterEye
.4byte EffectDoron
.4byte EffectSwampBattleGuard
.4byte EffectLavaBattleGuard
.4byte EffectLavaBattleGuard
.4byte EffectLabyrinthTank
.4byte EffectSpiritOfTheBooks
.4byte EffectHourglassOfLife
.4byte EffectBeastKingOfTheSwamps
.4byte EffectNemuriko
.4byte EffectToadMaster
.4byte EffectHoshiningen
.4byte EffectInvitationToADarkSleep
.4byte EffectWitchsApprentice
.4byte EffectMysticLamp
.4byte EffectLeghul
.4byte EffectInsectQueen
.4byte EffectObeliskTheTormentor
.4byte EffectSliferTheSkyDragon
.4byte EffectTheWingedDragonOfRaBattleMode
.4byte sub_80486EC
.4byte sub_80486F0
.4byte sub_80486F4
.4byte sub_80486F8
.4byte sub_80486FC
.4byte EffectDarkMagicianGirl2
.4byte EffectAlphaTheMagnetWarrior
.4byte EffectBetaTheMagnetWarrior
.4byte EffectGammaTheMagnetWarrior
.4byte EffectValkyrionTheMagnaWarrior
.4byte EffectBeastOfGilfer
.4byte EffectDarkNecrofear
.4byte sub_8048754  @Zombyra the dark?
.4byte sub_80487BC
.4byte sub_80487C0
.4byte sub_8048814
.4byte EffectJinzo
.4byte sub_8046D38
.4byte EffectBarrelDragon
.4byte EffectReflectBounder
.4byte EffectParasiteParacide
.4byte EffectSkullMarkLadyBug
.4byte EffectPinchHopper
.4byte sub_80489A4
.4byte sub_804703C
.4byte sub_80489F0
.4byte sub_8048A5C
.4byte EffectAncientLamp
.4byte sub_8048AA0
.4byte sub_80471BC
.4byte EffectDarkPaladin
.4byte sub_8048B10
.4byte EffectByserShock
.4byte EffectKingsKnight
.4byte sub_804745C
.4byte sub_804757C
.4byte sub_8047684
.4byte EffectXYDragonCannon
.4byte sub_8047818
.4byte EffectYZTankDragon
.4byte EffectXYZDragonCannon
.4byte EffectPuppetMaster
.4byte EffectTheWingedDragonOfRaPhoenixMode
.4byte EffectPenguinTorpedo
.4byte EffectBerserkDragon
.4byte sub_8047CAC
.4byte sub_8048BCC
.4byte sub_8048C18
.4byte sub_8048C1C
.4byte sub_8048C20
.4byte sub_8048C24
.4byte sub_8048C28
.4byte sub_8048C2C
.4byte sub_8048C30
.4byte sub_8048C34
.4byte sub_8048C38
.4byte sub_8048C3C
.4byte sub_8048C40
.4byte sub_8048C44
.4byte sub_8048C48
.4byte sub_8048C4C
.4byte sub_8048C50
.4byte sub_8048C54
.4byte sub_8048C58
.4byte sub_8048C5C*/