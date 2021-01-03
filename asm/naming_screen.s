    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_8005D1C
sub_8005D1C: @ 0x08005D1C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_803ED78
	bl sub_800604C
	movs r0, #0x2e
	bl PlayMusic
	ldr r0, _08005DE8
	ldr r1, _08005DEC
	bl LZ77UnCompWram
	ldr r0, _08005DF0
	ldr r1, _08005DF4
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	movs r4, #0
_08005D48:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08005DF8
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _08005DFC
	adds r1, r1, r5
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x13
	bls _08005D48
	ldr r0, _08005E00
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r5, r1
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08005E04
	ldr r1, _08005E08
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r0, _08005E0C
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r4, r2
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08005E10
	adds r0, r5, r1
	ldr r4, _08005E14
	ldr r1, [r4]
	adds r1, #0xe
	ldr r2, _08005E18
	bl sub_8020DB8
	bl sub_800683C
	ldr r0, _08005E1C
	bl sub_80081DC
	bl sub_8008220
	bl sub_80075B0
	ldr r2, _08005E20
	mov r8, r2
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	adds r7, r4, #0
_08005DC4:
	ldr r2, _08005E24
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	ldr r4, _08005E14
	cmp r0, #0
	beq _08005E54
	ldr r1, [r4]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	beq _08005E28
	movs r0, #0x36
	bl PlayMusic
	ldr r1, [r4]
	movs r0, #5
	strh r0, [r1, #0x32]
	b _08005E46
	.align 2, 0
_08005DE8: .4byte gUnk_807A9EC
_08005DEC: .4byte 0x02000400
_08005DF0: .4byte gUnk_8081440
_08005DF4: .4byte 0x02000000
_08005DF8: .4byte gUnk_8081640
_08005DFC: .4byte 0x0200F400
_08005E00: .4byte gUnk_8081F10
_08005E04: .4byte gUnk_8081AF0
_08005E08: .4byte 0x02000200
_08005E0C: .4byte gUnk_807F2F0
_08005E10: .4byte 0xFFFF9020
_08005E14: .4byte gUnk_8DF8114
_08005E18: .4byte 0x00000901
_08005E1C: .4byte sub_80074CC
_08005E20: .4byte 0x00004081
_08005E24: .4byte gUnk2020DFC
_08005E28:
	ldrh r0, [r1, #0xe]
	cmp r0, r8
	beq _08005E40
	movs r0, #0x37
	bl PlayMusic
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #9]
	bl sub_8006B40
	b _08006040
_08005E40:
	movs r0, #0x39
	bl PlayMusic
_08005E46:
	ldr r0, [r7]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r5, [r0]
	ldr r4, _08005E80
	ldr r2, _08005E84
_08005E54:
	ldrh r1, [r2]
	movs r6, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005E8E
	ldr r1, [r4]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	bne _08005E8E
	ldrh r0, [r1, #0xe]
	cmp r0, r8
	beq _08005E88
	movs r0, #0x37
	bl PlayMusic
	ldr r0, [r4]
	strb r6, [r0, #9]
	bl sub_8006B40
	b _08006040
	.align 2, 0
_08005E80: .4byte gUnk_8DF8114
_08005E84: .4byte gUnk2020DFC
_08005E88:
	movs r0, #0x39
	bl PlayMusic
_08005E8E:
	ldr r0, _08005EB8
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08005EC0
	ldr r4, _08005EBC
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #7
	bhi _08005EE4
	movs r0, #0x36
	bl PlayMusic
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	adds r0, #1
	b _08005EE2
	.align 2, 0
_08005EB8: .4byte 0x02020DF4
_08005EBC: .4byte gUnk_8DF8114
_08005EC0:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08005EE4
	ldr r4, _08005EF4
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08005EE4
	movs r0, #0x36
	bl PlayMusic
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	subs r0, #1
_08005EE2:
	strb r0, [r1, #2]
_08005EE4:
	ldr r4, _08005EF4
	ldr r2, [r4]
	ldrb r1, [r2, #3]
	cmp r1, #0
	beq _08005EF8
	cmp r1, #1
	beq _08005F02
	b _08005FB2
	.align 2, 0
_08005EF4: .4byte gUnk_8DF8114
_08005EF8:
	bl sub_8006764
	bl sub_80064F4
	b _08005FB2
_08005F02:
	ldr r0, _08005F60
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08005F24
	ldrh r0, [r2, #0x32]
	cmp r0, #5
	beq _08005F18
	movs r0, #0x37
	bl PlayMusic
_08005F18:
	ldr r0, [r4]
	strb r5, [r0]
	ldr r0, [r4]
	strb r5, [r0, #1]
	ldr r0, [r4]
	strb r5, [r0, #3]
_08005F24:
	ldr r0, _08005F60
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08005F7A
	ldr r4, _08005F64
	ldr r0, [r4]
	ldrh r0, [r0, #0x32]
	cmp r0, #5
	bne _08005F68
	movs r0, #0x38
	bl PlayMusic
	ldr r1, [r4]
	movs r0, #3
	strh r0, [r1, #0x32]
	strb r5, [r1]
	ldr r0, [r4]
	strb r5, [r0, #1]
	ldr r0, [r4]
	strb r5, [r0, #3]
	ldr r0, [r4]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r5, [r0]
	bl sub_800683C
	b _08005F7A
	.align 2, 0
_08005F60: .4byte gUnk2020DFC
_08005F64: .4byte gUnk_8DF8114
_08005F68:
	movs r0, #0x37
	bl PlayMusic
	ldr r0, [r4]
	strb r5, [r0]
	ldr r0, [r4]
	strb r5, [r0, #1]
	ldr r0, [r4]
	strb r5, [r0, #3]
_08005F7A:
	ldr r0, _08005F98
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08005F9C
	ldr r0, [r7]
	strb r5, [r0, #3]
	ldr r1, [r7]
	movs r0, #0xa
	strb r0, [r1]
	b _08005FAC
	.align 2, 0
_08005F98: .4byte 0x02020DF4
_08005F9C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08005FB2
	ldr r0, [r7]
	strb r1, [r0, #3]
	ldr r0, [r7]
	strb r1, [r0]
_08005FAC:
	ldr r1, [r7]
	movs r0, #3
	strh r0, [r1, #0x32]
_08005FB2:
	ldr r4, _08005FE8
	ldr r1, [r4]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	bne _08005FC0
	movs r0, #1
	strb r0, [r1, #3]
_08005FC0:
	bl sub_8006958
	bl sub_8006B40
	bl sub_8006C60
	bl sub_8006E84
	bl sub_8007068
	bl sub_8007350
	ldr r3, [r4]
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08005FEC
	cmp r0, #1
	beq _08006010
	strb r5, [r3, #4]
	b _08006036
	.align 2, 0
_08005FE8: .4byte gUnk_8DF8114
_08005FEC:
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	movs r0, #0xb7
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	ldrh r0, [r1]
	cmp r0, sb
	bne _08006036
	movs r0, #1
	strb r0, [r3, #4]
	b _08006036
_08006010:
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r1]
	subs r0, #0x10
	movs r4, #0
	strh r0, [r1]
	movs r0, #0xb7
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	ldrh r1, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	bne _08006036
	strb r4, [r3, #4]
_08006036:
	bl LoadOam
	bl sub_8008220
	b _08005DC4
_08006040:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800604C
sub_800604C: @ 0x0800604C
	push {r4, r5, lr}
	ldr r0, _080060A8
	ldr r1, _080060AC
	bl bzero
	ldr r4, _080060B0
	ldr r0, [r4]
	adds r0, #0xe
	ldr r1, _080060B4
	movs r2, #0x13
	bl strncpy
	movs r2, #0
	adds r5, r4, #0
	ldr r3, _080060B8
_0800606A:
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r0, #0xe
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800607A
	strh r3, [r1]
_0800607A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0800606A
	ldr r2, [r5]
	movs r0, #0
	strh r0, [r2, #0x1e]
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r2, r1
	subs r1, #0x6c
	strh r1, [r0]
	movs r3, #0xb7
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	movs r0, #3
	strh r0, [r2, #0x32]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080060A8: .4byte 0x02018800
_080060AC: .4byte 0x00004314
_080060B0: .4byte gUnk_8DF8114
_080060B4: .4byte 0x02020DE0
_080060B8: .4byte 0x00004081

	THUMB_FUNC_START sub_80060BC
sub_80060BC: @ 0x080060BC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800616C
	mov ip, r0
	ldr r4, [r0]
	ldrh r0, [r4, #0x32]
	cmp r0, #5
	bne _080060CC
	b _080064E6
_080060CC:
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	adds r6, r4, #0
	adds r6, #0x20
	adds r1, r6, r0
	adds r5, r4, #0
	adds r5, #0xe
	adds r0, r5, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r2, [r4, #2]
	lsls r2, r2, #1
	adds r2, r5, r2
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r3, #1
	ldrsb r3, [r4, r3]
	movs r1, #0x2c
	muls r1, r3, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r1, r1, r0
	ldrh r0, [r1, #0x34]
	strh r0, [r2]
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _08006104
	b _0800646E
_08006104:
	adds r7, r0, #0
	lsls r1, r7, #1
	adds r2, r5, r1
	ldrh r3, [r2]
	ldr r0, _08006170
	cmp r3, r0
	beq _08006114
	b _08006378
_08006114:
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	mov r2, ip
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _08006174
	cmp r2, r0
	bne _08006136
	b _08006328
_08006136:
	cmp r2, r0
	ble _0800613C
	b _08006244
_0800613C:
	ldr r0, _08006178
	cmp r2, r0
	bne _08006144
	b _08006328
_08006144:
	cmp r2, r0
	bgt _080061D0
	ldr r0, _0800617C
	cmp r2, r0
	bne _08006150
	b _08006328
_08006150:
	cmp r2, r0
	bgt _0800619C
	ldr r0, _08006180
	cmp r2, r0
	bne _0800615C
	b _08006328
_0800615C:
	cmp r2, r0
	bgt _08006188
	ldr r0, _08006184
	cmp r2, r0
	bne _08006168
	b _08006348
_08006168:
	b _08006354
	.align 2, 0
_0800616C: .4byte gUnk_8DF8114
_08006170: .4byte 0x00004A81
_08006174: .4byte 0x00007783
_08006178: .4byte 0x00005883
_0800617C: .4byte 0x00005083
_08006180: .4byte 0x00004A83
_08006184: .4byte 0x00004583
_08006188:
	ldr r0, _08006194
	cmp r2, r0
	bne _08006190
	b _08006328
_08006190:
	ldr r0, _08006198
	b _0800630A
	.align 2, 0
_08006194: .4byte 0x00004C83
_08006198: .4byte 0x00004E83
_0800619C:
	ldr r0, _080061B4
	cmp r2, r0
	bne _080061A4
	b _08006328
_080061A4:
	cmp r2, r0
	bgt _080061BC
	ldr r0, _080061B8
	cmp r2, r0
	bne _080061B0
	b _08006328
_080061B0:
	adds r0, #2
	b _0800630A
	.align 2, 0
_080061B4: .4byte 0x00005481
_080061B8: .4byte 0x00005281
_080061BC:
	ldr r0, _080061C8
	cmp r2, r0
	bne _080061C4
	b _08006328
_080061C4:
	ldr r0, _080061CC
	b _0800630A
	.align 2, 0
_080061C8: .4byte 0x00005483
_080061CC: .4byte 0x00005683
_080061D0:
	ldr r0, _080061EC
	cmp r2, r0
	bne _080061D8
	b _08006328
_080061D8:
	cmp r2, r0
	bgt _0800620C
	ldr r0, _080061F0
	cmp r2, r0
	bne _080061E4
	b _08006328
_080061E4:
	cmp r2, r0
	bgt _080061F8
	ldr r0, _080061F4
	b _0800630A
	.align 2, 0
_080061EC: .4byte 0x00006383
_080061F0: .4byte 0x00005C83
_080061F4: .4byte 0x00005A83
_080061F8:
	ldr r0, _08006204
	cmp r2, r0
	bne _08006200
	b _08006328
_08006200:
	ldr r0, _08006208
	b _0800630A
	.align 2, 0
_08006204: .4byte 0x00005E83
_08006208: .4byte 0x00006083
_0800620C:
	ldr r0, _08006224
	cmp r2, r0
	bne _08006214
	b _08006328
_08006214:
	cmp r2, r0
	bgt _08006230
	ldr r0, _08006228
	cmp r2, r0
	bne _08006220
	b _08006328
_08006220:
	ldr r0, _0800622C
	b _0800630A
	.align 2, 0
_08006224: .4byte 0x00006E83
_08006228: .4byte 0x00006583
_0800622C: .4byte 0x00006783
_08006230:
	ldr r0, _0800623C
	cmp r2, r0
	bne _08006238
	b _08006328
_08006238:
	ldr r0, _08006240
	b _0800630A
	.align 2, 0
_0800623C: .4byte 0x00007183
_08006240: .4byte 0x00007483
_08006244:
	ldr r0, _08006268
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _080062C0
	ldr r0, _0800626C
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _0800628C
	ldr r0, _08006270
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _08006278
	ldr r0, _08006274
	b _0800630A
	.align 2, 0
_08006268: .4byte 0x0000BB82
_0800626C: .4byte 0x0000AF82
_08006270: .4byte 0x0000A982
_08006274: .4byte 0x00007A83
_08006278:
	ldr r0, _08006284
	cmp r2, r0
	beq _08006328
	ldr r0, _08006288
	b _0800630A
	.align 2, 0
_08006284: .4byte 0x0000AB82
_08006288: .4byte 0x0000AD82
_0800628C:
	ldr r0, _080062A0
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _080062AC
	ldr r0, _080062A4
	cmp r2, r0
	beq _08006328
	ldr r0, _080062A8
	b _0800630A
	.align 2, 0
_080062A0: .4byte 0x0000B582
_080062A4: .4byte 0x0000B182
_080062A8: .4byte 0x0000B382
_080062AC:
	ldr r0, _080062B8
	cmp r2, r0
	beq _08006328
	ldr r0, _080062BC
	b _0800630A
	.align 2, 0
_080062B8: .4byte 0x0000B782
_080062BC: .4byte 0x0000B982
_080062C0:
	ldr r0, _080062D8
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _080062F8
	ldr r0, _080062DC
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _080062E4
	ldr r0, _080062E0
	b _0800630A
	.align 2, 0
_080062D8: .4byte 0x0000C682
_080062DC: .4byte 0x0000BF82
_080062E0: .4byte 0x0000BD82
_080062E4:
	ldr r0, _080062F0
	cmp r2, r0
	beq _08006328
	ldr r0, _080062F4
	b _0800630A
	.align 2, 0
_080062F0: .4byte 0x0000C282
_080062F4: .4byte 0x0000C482
_080062F8:
	ldr r0, _08006310
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _0800631C
	ldr r0, _08006314
	cmp r2, r0
	beq _08006328
	ldr r0, _08006318
_0800630A:
	cmp r2, r0
	beq _08006328
	b _08006354
	.align 2, 0
_08006310: .4byte 0x0000D382
_08006314: .4byte 0x0000CD82
_08006318: .4byte 0x0000D082
_0800631C:
	ldr r0, _0800633C
	cmp r2, r0
	beq _08006328
	ldr r0, _08006340
	cmp r2, r0
	bne _08006354
_08006328:
	ldr r0, _08006344
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	b _08006414
	.align 2, 0
_0800633C: .4byte 0x0000D682
_08006340: .4byte 0x0000D982
_08006344: .4byte gUnk_8DF8114
_08006348:
	ldr r0, _08006350
	strh r0, [r1]
	b _0800646E
	.align 2, 0
_08006350: .4byte 0x00009483
_08006354:
	ldr r2, _08006370
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	ldr r0, _08006374
	strh r0, [r1]
	b _0800646E
	.align 2, 0
_08006370: .4byte gUnk_8DF8114
_08006374: .4byte 0x00004A81
_08006378:
	ldr r0, _080063B0
	cmp r3, r0
	bne _08006450
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	mov r1, ip
	ldr r0, [r1]
	ldrb r1, [r0, #2]
	lsls r1, r1, #1
	adds r0, #0xe
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080063B4
	cmp r1, r0
	beq _08006404
	cmp r1, r0
	bgt _080063D4
	ldr r0, _080063B8
	cmp r1, r0
	beq _08006404
	cmp r1, r0
	bgt _080063C0
	ldr r0, _080063BC
	b _080063E6
	.align 2, 0
_080063B0: .4byte 0x00004B81
_080063B4: .4byte 0x00007A83
_080063B8: .4byte 0x00007183
_080063BC: .4byte 0x00006E83
_080063C0:
	ldr r0, _080063CC
	cmp r1, r0
	beq _08006404
	ldr r0, _080063D0
	b _080063E6
	.align 2, 0
_080063CC: .4byte 0x00007483
_080063D0: .4byte 0x00007783
_080063D4:
	ldr r0, _080063EC
	cmp r1, r0
	beq _08006404
	cmp r1, r0
	bgt _080063F8
	ldr r0, _080063F0
	cmp r1, r0
	beq _08006404
	ldr r0, _080063F4
_080063E6:
	cmp r1, r0
	beq _08006404
	b _0800642C
	.align 2, 0
_080063EC: .4byte 0x0000D382
_080063F0: .4byte 0x0000CD82
_080063F4: .4byte 0x0000D082
_080063F8:
	ldr r0, _08006420
	cmp r1, r0
	beq _08006404
	ldr r0, _08006424
	cmp r1, r0
	bne _0800642C
_08006404:
	ldr r0, _08006428
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #2
_08006414:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _0800646E
	.align 2, 0
_08006420: .4byte 0x0000D682
_08006424: .4byte 0x0000D982
_08006428: .4byte gUnk_8DF8114
_0800642C:
	ldr r2, _08006448
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	ldr r0, _0800644C
	strh r0, [r1]
	b _0800646E
	.align 2, 0
_08006448: .4byte gUnk_8DF8114
_0800644C: .4byte 0x00004B81
_08006450:
	cmp r7, #7
	bls _0800646E
	movs r0, #7
	strb r0, [r4, #2]
	mov r1, ip
	ldr r0, [r1]
	ldrb r1, [r0, #2]
	lsls r2, r1, #1
	adds r0, #0xe
	adds r2, r0, r2
	adds r1, #1
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_0800646E:
	movs r4, #0
	ldr r6, _08006498
	ldr r5, _0800649C
_08006474:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080064A4
	lsrs r0, r4, #1
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r5]
	lsls r2, r4, #1
	adds r1, #0xe
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _080064A0
	bl sub_8020968
	b _080064BE
	.align 2, 0
_08006498: .4byte 0x02008400
_0800649C: .4byte gUnk_8DF8114
_080064A0: .4byte 0x00000901
_080064A4:
	lsrs r0, r4, #1
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r5]
	lsls r2, r4, #1
	adds r1, #0xe
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _080064EC
	bl sub_8020968
_080064BE:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08006474
	bl LoadCharblock2
	ldr r2, _080064F0
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	cmp r0, #7
	bhi _080064DA
	adds r0, #1
	strb r0, [r1, #2]
_080064DA:
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	cmp r0, #8
	bne _080064E6
	movs r0, #5
	strh r0, [r1, #0x32]
_080064E6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080064EC: .4byte 0x00000901
_080064F0: .4byte gUnk_8DF8114

	THUMB_FUNC_START sub_80064F4
sub_80064F4: @ 0x080064F4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800651C
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08006558
	movs r0, #0x36
	bl PlayMusic
	ldr r5, _08006520
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	cmp r1, #7
	bne _08006524
	movs r0, #6
	strb r0, [r2, #1]
	b _08006558
	.align 2, 0
_0800651C: .4byte 0x02020DF4
_08006520: .4byte gUnk_8DF8114
_08006524:
	cmp r1, #0
	ble _0800652E
	subs r0, #1
	strb r0, [r2, #1]
	b _08006558
_0800652E:
	movs r0, #0xb5
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08006558
	adds r4, r0, #0
	adds r4, #0x9a
	ldr r1, _08006584
	ldrh r0, [r2, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl strlen
	lsrs r0, r0, #1
	cmp r4, r0
	blo _08006558
	ldr r1, [r5]
	movs r0, #6
	strb r0, [r1, #1]
_08006558:
	ldr r0, _08006588
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080065C2
	movs r0, #0x36
	bl PlayMusic
	ldr r6, _0800658C
	ldr r2, [r6]
	ldrb r3, [r2, #1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08006590
	movs r0, #0
	strb r0, [r2, #1]
	b _080065C2
	.align 2, 0
_08006584: .4byte gUnk_8DF8030
_08006588: .4byte 0x02020DF4
_0800658C: .4byte gUnk_8DF8114
_08006590:
	cmp r1, #5
	bgt _0800659A
	adds r0, r3, #1
	strb r0, [r2, #1]
	b _080065C2
_0800659A:
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r5, [r0]
	cmp r5, #0
	bne _080065C2
	adds r4, r5, #0
	adds r4, #0x9a
	ldr r1, _080065F4
	ldrh r0, [r2, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl strlen
	lsrs r0, r0, #1
	cmp r4, r0
	blo _080065C2
	ldr r0, [r6]
	strb r5, [r0, #1]
_080065C2:
	ldr r2, _080065F8
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08006628
	movs r0, #0x36
	bl PlayMusic
	ldr r3, _080065FC
	ldr r1, [r3]
	ldrb r4, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	ble _08006618
	ldrh r0, [r1, #0x32]
	cmp r0, #2
	bhi _08006600
	cmp r2, #6
	bne _08006600
	subs r0, r4, #2
	strb r0, [r1]
	b _08006628
	.align 2, 0
_080065F4: .4byte gUnk_8DF8030
_080065F8: .4byte 0x02020DF4
_080065FC: .4byte gUnk_8DF8114
_08006600:
	ldr r0, _08006610
	ldr r1, [r0]
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r5, _08006614
	b _08006628
	.align 2, 0
_08006610: .4byte gUnk_8DF8114
_08006614: .4byte 0x02020DF4
_08006618:
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, [r3]
	movs r0, #1
	strb r0, [r1, #3]
	ldr r1, [r3]
	movs r0, #5
	strh r0, [r1, #0x32]
_08006628:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800667C
	movs r0, #0x36
	bl PlayMusic
	ldr r3, _08006658
	ldr r1, [r3]
	ldrb r4, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #9
	bgt _0800666C
	ldrh r0, [r1, #0x32]
	cmp r0, #2
	bhi _0800665C
	cmp r2, #4
	bne _0800665C
	adds r0, r4, #2
	strb r0, [r1]
	b _0800667C
	.align 2, 0
_08006658: .4byte gUnk_8DF8114
_0800665C:
	ldr r0, _08006668
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0800667C
	.align 2, 0
_08006668: .4byte gUnk_8DF8114
_0800666C:
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r3]
	movs r0, #1
	strb r0, [r1, #3]
	ldr r1, [r3]
	movs r0, #5
	strh r0, [r1, #0x32]
_0800667C:
	ldr r0, _080066D8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08006718
	movs r0, #0x37
	bl PlayMusic
	ldr r7, _080066DC
	ldr r4, [r7]
	ldrh r0, [r4, #0x32]
	cmp r0, #2
	bne _080066EE
	movs r5, #0
	ldrsb r5, [r4, r5]
	movs r6, #1
	ldrsb r6, [r4, r6]
	movs r0, #0x2c
	adds r1, r6, #0
	muls r1, r0, r1
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r1, r1, r0
	ldrh r1, [r1, #0x34]
	ldr r0, _080066E0
	cmp r1, r0
	beq _080066E4
	adds r1, r5, #6
	movs r0, #0xb
	muls r0, r6, r0
	adds r1, r1, r0
	movs r2, #0
	movs r3, #0
	strh r1, [r4, #0x32]
	strh r5, [r4, #0xa]
	strh r6, [r4, #0xc]
	strb r2, [r4]
	ldr r0, [r7]
	strb r2, [r0, #1]
	ldr r0, [r7]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r3, [r0]
	b _080066E8
	.align 2, 0
_080066D8: .4byte 0x02020DF4
_080066DC: .4byte gUnk_8DF8114
_080066E0: .4byte 0x00004081
_080066E4:
	bl sub_80060BC
_080066E8:
	bl sub_800683C
	b _08006718
_080066EE:
	bl sub_80060BC
	ldr r1, [r7]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	bls _08006718
	movs r2, #0
	movs r0, #2
	strh r0, [r1, #0x32]
	ldrh r0, [r1, #0xa]
	strb r0, [r1]
	ldr r1, [r7]
	ldrh r0, [r1, #0xc]
	strb r0, [r1, #1]
	ldr r0, [r7]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r2, [r0]
	bl sub_800683C
_08006718:
	ldr r0, _08006750
	ldrh r1, [r0]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800675C
	ldr r3, _08006754
	ldr r1, [r3]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	bls _08006758
	movs r2, #0
	strh r4, [r1, #0x32]
	ldrh r0, [r1, #0xa]
	strb r0, [r1]
	ldr r1, [r3]
	ldrh r0, [r1, #0xc]
	strb r0, [r1, #1]
	ldr r0, [r3]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r2, [r0]
	bl sub_800683C
	b _0800675C
	.align 2, 0
_08006750: .4byte 0x02020DF4
_08006754: .4byte gUnk_8DF8114
_08006758:
	bl sub_80068C4
_0800675C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8006764
sub_8006764: @ 0x08006764
	push {r4, r5, r6, lr}
	ldr r1, _080067A8
	ldr r4, _080067AC
	ldr r0, [r4]
	ldrh r0, [r0, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl strlen
	movs r1, #0x9a
	lsls r1, r1, #1
	cmp r0, r1
	bls _08006832
	ldr r0, _080067B0
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080067B6
	ldr r0, [r4]
	movs r2, #1
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _080067B6
	movs r3, #0xb5
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0xb
	bls _080067B4
	subs r0, #0xb
	strh r0, [r1]
	b _080067B6
	.align 2, 0
_080067A8: .4byte gUnk_8DF8030
_080067AC: .4byte gUnk_8DF8114
_080067B0: .4byte 0x02020DF4
_080067B4:
	strh r2, [r1]
_080067B6:
	ldr r0, _080067FC
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08006822
	ldr r5, _08006800
	ldr r1, [r5]
	movs r0, #1
	ldrsb r0, [r1, r0]
	cmp r0, #6
	bne _08006822
	movs r2, #0xb5
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r4, [r0]
	adds r4, #0xa5
	ldr r6, _08006804
	ldrh r0, [r1, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl strlen
	lsrs r0, r0, #1
	cmp r4, r0
	bhs _08006808
	ldr r0, [r5]
	movs r3, #0xb5
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, #0xb
	b _08006820
	.align 2, 0
_080067FC: .4byte 0x02020DF4
_08006800: .4byte gUnk_8DF8114
_08006804: .4byte gUnk_8DF8030
_08006808:
	ldr r4, [r5]
	ldrh r0, [r4, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl strlen
	lsrs r0, r0, #1
	subs r0, #0x9a
	movs r2, #0xb5
	lsls r2, r2, #1
	adds r1, r4, r2
_08006820:
	strh r0, [r1]
_08006822:
	ldr r0, _08006838
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08006832
	bl sub_800683C
_08006832:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006838: .4byte 0x02020DF4

	THUMB_FUNC_START sub_800683C
sub_800683C: @ 0x0800683C
	push {r4, r5, lr}
	ldr r5, _080068B4
	ldr r2, [r5]
	movs r0, #0xb5
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08006878
	adds r4, r0, #0
	adds r4, #0x9a
	ldr r1, _080068B8
	ldrh r0, [r2, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl strlen
	lsrs r0, r0, #1
	cmp r4, r0
	bls _08006878
	ldr r0, [r5]
	ldrh r0, [r0, #0x32]
	cmp r0, #5
	beq _08006878
	ldr r0, _080068BC
	movs r1, #0x9a
	lsls r1, r1, #7
	bl bzero
_08006878:
	ldr r4, _080068B4
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x34
	ldr r2, _080068B8
	ldrh r1, [r3, #0x32]
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r5, #0xb5
	lsls r5, r5, #1
	adds r2, r3, r5
	ldrh r2, [r2]
	lsls r2, r2, #1
	ldr r1, [r1]
	adds r1, r1, r2
	movs r2, #0x9a
	lsls r2, r2, #1
	bl strncpy
	ldr r0, _080068BC
	ldr r1, [r4]
	adds r1, #0x34
	ldr r2, _080068C0
	bl sub_8020DB8
	bl LoadCharblock2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080068B4: .4byte gUnk_8DF8114
_080068B8: .4byte gUnk_8DF8030
_080068BC: .4byte 0x02008A20
_080068C0: .4byte 0x00000901

	THUMB_FUNC_START sub_80068C4
sub_80068C4: @ 0x080068C4
	push {r4, lr}
	ldr r4, _0800691C
	ldr r1, [r4]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	beq _0800694A
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080068E4
	movs r0, #0x38
	bl PlayMusic
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	subs r0, #1
	strb r0, [r1, #2]
_080068E4:
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	lsls r0, r0, #1
	adds r3, r2, #0
	adds r3, #0xe
	adds r0, r3, r0
	ldr r1, _08006920
	strh r1, [r0]
	ldrb r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800692C
	ldrb r2, [r2, #2]
	lsrs r0, r2, #1
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #5
	ldr r1, _08006924
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r3, r2
	ldrh r1, [r2]
	ldr r2, _08006928
	bl sub_8020968
	b _08006946
	.align 2, 0
_0800691C: .4byte gUnk_8DF8114
_08006920: .4byte 0x00004081
_08006924: .4byte 0x02008400
_08006928: .4byte 0x00000901
_0800692C:
	ldrb r2, [r2, #2]
	lsrs r0, r2, #1
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #5
	ldr r1, _08006950
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r3, r2
	ldrh r1, [r2]
	ldr r2, _08006954
	bl sub_8020968
_08006946:
	bl LoadCharblock2
_0800694A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006950: .4byte 0x02008400
_08006954: .4byte 0x00000901

	THUMB_FUNC_START sub_8006958
sub_8006958: @ 0x08006958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080069E0
	ldr r0, [r0]
	ldrh r0, [r0, #0x32]
	cmp r0, #5
	bne _080069EC
	movs r1, #0
_08006972:
	movs r6, #0
	lsls r5, r1, #2
	ldr r2, _080069E4
	adds r0, r5, r2
	ldr r0, [r0]
	adds r1, #1
	mov r8, r1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _080069D2
	ldr r7, _080069E8
	adds r0, r2, #0
	mov sl, r0
	adds r1, r7, #4
	mov sb, r1
_08006990:
	mov r2, ip
	lsls r3, r2, #3
	adds r1, r3, r7
	mov r2, sl
	adds r0, r5, r2
	ldr r4, [r0]
	ldr r0, [r4, #4]
	lsls r2, r6, #3
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, sb
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r4, [r4, #1]
	cmp r6, r4
	blo _08006990
_080069D2:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _08006972
	b _08006B28
	.align 2, 0
_080069E0: .4byte gUnk_8DF8114
_080069E4: .4byte gUnk_8DF7FD4
_080069E8: .4byte 0x02018400
_080069EC:
	cmp r0, #4
	bhi _08006A68
	movs r1, #0
_080069F2:
	movs r6, #0
	lsls r5, r1, #2
	ldr r2, _08006A60
	adds r0, r5, r2
	ldr r0, [r0]
	adds r1, #1
	mov r8, r1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _08006A52
	ldr r7, _08006A64
	adds r0, r2, #0
	mov sl, r0
	adds r1, r7, #4
	mov sb, r1
_08006A10:
	mov r2, ip
	lsls r3, r2, #3
	adds r1, r3, r7
	mov r2, sl
	adds r0, r5, r2
	ldr r4, [r0]
	ldr r0, [r4, #4]
	lsls r2, r6, #3
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, sb
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r4, [r4, #1]
	cmp r6, r4
	blo _08006A10
_08006A52:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _080069F2
	b _08006B28
	.align 2, 0
_08006A60: .4byte gUnk_8DF7FD4
_08006A64: .4byte 0x02018400
_08006A68:
	movs r1, #0
_08006A6A:
	adds r2, r1, #1
	mov r8, r2
	cmp r1, #2
	beq _08006ACE
	movs r6, #0
	lsls r5, r1, #2
	ldr r1, _08006B38
	adds r0, r5, r1
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _08006ACE
	ldr r7, _08006B3C
	adds r2, r1, #0
	mov sl, r2
	adds r0, r7, #4
	mov sb, r0
_08006A8C:
	mov r1, ip
	lsls r3, r1, #3
	adds r1, r3, r7
	mov r2, sl
	adds r0, r5, r2
	ldr r4, [r0]
	ldr r0, [r4, #4]
	lsls r2, r6, #3
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, sb
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r4, [r4, #1]
	cmp r6, r4
	blo _08006A8C
_08006ACE:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _08006A6A
	movs r6, #0
	ldr r2, _08006B38
	ldr r0, [r2, #0x1c]
	ldrb r1, [r0, #1]
	cmp r6, r1
	bhs _08006B28
	ldr r5, _08006B3C
	adds r4, r0, #0
	adds r2, r5, #4
	mov r8, r2
	ldr r7, [r4, #4]
_08006AEE:
	mov r0, ip
	lsls r3, r0, #3
	adds r1, r3, r5
	lsls r2, r6, #3
	adds r2, r2, r7
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r5, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, r8
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r6, r0
	blo _08006AEE
_08006B28:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006B38: .4byte gUnk_8DF7FD4
_08006B3C: .4byte 0x02018400

	THUMB_FUNC_START sub_8006B40
sub_8006B40: @ 0x08006B40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0xa
	ldr r0, _08006BB0
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _08006C00
	movs r4, #0
	ldr r0, _08006BB4
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #1]
	cmp r4, r1
	bhs _08006B9E
	ldr r7, _08006BB8
	adds r5, r0, #0
	ldr r2, [r5, #4]
	mov ip, r2
	adds r0, r7, #4
	mov r8, r0
_08006B6A:
	lsls r3, r6, #3
	adds r1, r3, r7
	lsls r2, r4, #3
	add r2, ip
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, r8
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08006B6A
_08006B9E:
	bl LoadOam
	ldr r3, _08006BB0
	ldr r0, [r3]
	movs r1, #0
	strh r1, [r0, #0x1e]
	movs r4, #7
	ldrh r2, [r0, #0x1c]
	b _08006BD6
	.align 2, 0
_08006BB0: .4byte gUnk_8DF8114
_08006BB4: .4byte gUnk_8DF7FD4
_08006BB8: .4byte 0x02018400
_08006BBC:
	ldr r3, _08006BF4
	ldr r2, [r3]
	lsls r1, r4, #1
	adds r2, #0xe
	adds r1, r2, r1
	movs r0, #0
	strh r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #1
	adds r2, r2, r0
	ldrh r2, [r2]
_08006BD6:
	ldr r0, _08006BF8
	cmp r2, r0
	beq _08006BBC
	cmp r2, #0
	beq _08006BBC
	ldr r0, _08006BFC
	ldr r1, [r3]
	adds r1, #0xe
	movs r2, #0x13
	bl strncpy
	bl sub_80072A8
	b _08006C4C
	.align 2, 0
_08006BF4: .4byte gUnk_8DF8114
_08006BF8: .4byte 0x00004081
_08006BFC: .4byte 0x02020DE0
_08006C00:
	movs r4, #0
	ldr r0, _08006C58
	ldr r0, [r0, #0x28]
	ldrb r1, [r0, #1]
	cmp r4, r1
	bhs _08006C4C
	ldr r7, _08006C5C
	adds r5, r0, #0
	ldr r2, [r5, #4]
	mov ip, r2
	adds r0, r7, #4
	mov r8, r0
_08006C18:
	lsls r3, r6, #3
	adds r1, r3, r7
	lsls r2, r4, #3
	add r2, ip
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, r8
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08006C18
_08006C4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006C58: .4byte gUnk_8DF7FD4
_08006C5C: .4byte 0x02018400

	THUMB_FUNC_START sub_8006C60
sub_8006C60: @ 0x08006C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0x15
	mov sb, r0
	ldr r3, _08006C98
	ldr r4, [r3]
	ldr r2, _08006C9C
	ldrb r0, [r4, #8]
	ldr r1, [r2, #0x30]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r4, #7]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08006CA0
	movs r0, #0
	strb r0, [r4, #7]
	adds r2, r3, #0
	ldr r1, [r2]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	b _08006CA4
	.align 2, 0
_08006C98: .4byte gUnk_8DF8114
_08006C9C: .4byte gUnk_8DF7FD4
_08006CA0:
	adds r0, r1, #1
	strb r0, [r4, #7]
_08006CA4:
	ldr r3, _08006D3C
	ldr r2, [r3]
	ldrb r0, [r2, #8]
	ldr r3, _08006D40
	ldr r1, [r3, #0x30]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08006CBA
	strb r0, [r2, #8]
_08006CBA:
	movs r7, #0
	ldr r1, _08006D3C
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	ldr r2, _08006D40
	ldr r1, [r2, #0x30]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r7, r0
	bhs _08006D86
	ldr r3, _08006D3C
	mov sl, r3
	ldr r6, _08006D44
	adds r0, r6, #4
	mov ip, r0
	str r1, [sp]
	adds r1, r6, #2
	mov r8, r1
_08006CE0:
	mov r2, sl
	ldr r5, [r2]
	movs r3, #0xb5
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006D48
	ldrh r0, [r5, #0x32]
	cmp r0, #5
	beq _08006D48
	mov r0, sb
	lsls r2, r0, #3
	adds r4, r2, r6
	ldrb r0, [r5, #8]
	ldr r1, _08006D40
	ldr r3, [r1, #0x30]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r0, [r0, #4]
	lsls r1, r7, #3
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, r8
	adds r4, r2, r0
	ldrb r0, [r5, #8]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r0, [r0, #4]
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	strh r0, [r4]
	add r2, ip
	ldrb r0, [r5, #8]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r0, [r0, #4]
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _08006D64
	.align 2, 0
_08006D3C: .4byte gUnk_8DF8114
_08006D40: .4byte gUnk_8DF7FD4
_08006D44: .4byte 0x02018400
_08006D48:
	mov r0, sb
	lsls r1, r0, #3
	adds r2, r1, r6
	movs r0, #0xa0
	strh r0, [r2]
	mov r3, r8
	adds r2, r1, r3
	movs r0, #0xf0
	strh r0, [r2]
	add r1, ip
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
_08006D64:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r3, sl
	ldr r0, [r3]
	ldrb r0, [r0, #8]
	lsls r0, r0, #3
	ldr r1, [sp]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r7, r0
	blo _08006CE0
_08006D86:
	movs r7, #0
	ldr r2, _08006E18
	ldr r0, [r2]
	ldrb r0, [r0, #8]
	ldr r3, _08006E1C
	ldr r1, [r3, #0x34]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r7, r0
	bhs _08006E6C
	ldr r0, _08006E20
	mov r8, r0
	movs r1, #4
	add r1, r8
	mov sl, r1
_08006DA6:
	ldr r0, [r2]
	movs r3, #0xb5
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrh r4, [r1]
	adds r4, #0x9a
	ldr r1, _08006E24
	ldrh r0, [r0, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r2, [sp, #4]
	bl strlen
	lsrs r0, r0, #1
	ldr r2, [sp, #4]
	cmp r4, r0
	bhs _08006E28
	mov r0, sb
	lsls r5, r0, #3
	mov r3, r8
	adds r1, r5, r3
	ldr r6, _08006E1C
	ldr r3, [r2]
	ldrb r0, [r3, #8]
	ldr r4, [r6, #0x34]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #4]
	lsls r2, r7, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #4]
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	add r5, sl
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	b _08006E48
	.align 2, 0
_08006E18: .4byte gUnk_8DF8114
_08006E1C: .4byte gUnk_8DF7FD4
_08006E20: .4byte 0x02018400
_08006E24: .4byte gUnk_8DF8030
_08006E28:
	mov r3, sb
	lsls r2, r3, #3
	mov r0, r8
	adds r1, r2, r0
	movs r0, #0xa0
	strh r0, [r1]
	mov r0, r8
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0xf0
	strh r1, [r0]
	add r2, sl
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r2]
_08006E48:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r2, _08006E7C
	ldr r0, [r2]
	ldrb r0, [r0, #8]
	ldr r3, _08006E80
	ldr r1, [r3, #0x34]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r7, r0
	blo _08006DA6
_08006E6C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006E7C: .4byte gUnk_8DF8114
_08006E80: .4byte gUnk_8DF7FD4

	THUMB_FUNC_START sub_8006E84
sub_8006E84: @ 0x08006E84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0x17
	mov ip, r0
	ldr r0, _08006F14
	ldr r1, [r0]
	ldrb r1, [r1, #3]
	cmp r1, #0
	bne _08006F28
	movs r7, #0
	ldr r0, _08006F18
	ldr r1, [r0, #0x38]
	ldrb r2, [r1, #1]
	cmp r7, r2
	bhs _08006F6C
	ldr r0, _08006F1C
	mov sb, r0
	mov r8, r1
	ldr r1, [r1, #4]
	mov sl, r1
_08006EB2:
	mov r2, ip
	lsls r5, r2, #3
	mov r0, sb
	adds r6, r5, r0
	lsls r3, r7, #3
	add r3, sl
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r2, r1, #0
	orrs r2, r0
	ldr r0, _08006F14
	ldr r4, [r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #4
	adds r0, #3
	lsls r0, r0, #0x10
	ldr r1, _08006F20
	ands r0, r1
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	lsls r0, r0, #4
	adds r0, #0x1f
	movs r1, #0xff
	ands r0, r1
	orrs r2, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	orrs r2, r0
	str r2, [r6]
	ldr r1, _08006F24
	adds r5, r5, r1
	ldrh r0, [r3, #4]
	strh r0, [r5]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	mov r2, r8
	ldrb r2, [r2, #1]
	cmp r7, r2
	blo _08006EB2
	b _08006F6C
	.align 2, 0
_08006F14: .4byte gUnk_8DF8114
_08006F18: .4byte gUnk_8DF7FD4
_08006F1C: .4byte 0x02018400
_08006F20: .4byte 0x01FF0000
_08006F24: .4byte 0x02018404
_08006F28:
	movs r7, #0
	ldr r0, _08006FF8
	ldr r1, [r0, #0x38]
	ldrb r0, [r1, #1]
	cmp r7, r0
	bhs _08006F6C
	ldr r3, _08006FFC
	adds r6, r3, #4
	adds r4, r1, #0
	movs r5, #0xa0
_08006F3C:
	mov r1, ip
	lsls r2, r1, #3
	adds r0, r2, r3
	strh r5, [r0]
	adds r0, r3, #2
	adds r0, r2, r0
	movs r1, #0xf0
	strh r1, [r0]
	adds r2, r2, r6
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r2, [r4, #1]
	cmp r7, r2
	blo _08006F3C
_08006F6C:
	ldr r1, _08007000
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #7
	bhi _0800700C
	movs r7, #0
	ldr r2, _08006FF8
	ldr r0, [r2, #0x54]
	ldrb r1, [r0, #1]
	cmp r7, r1
	bhs _08007050
	ldr r2, _08006FFC
	mov r8, r2
	adds r6, r0, #0
	movs r0, #4
	add r0, r8
	mov sl, r0
	ldr r1, [r6, #4]
	mov sb, r1
_08006F92:
	mov r2, ip
	lsls r4, r2, #3
	mov r0, r8
	adds r5, r4, r0
	lsls r3, r7, #3
	add r3, sb
	ldrh r0, [r3]
	movs r1, #0x84
	lsls r1, r1, #8
	adds r2, r1, #0
	orrs r2, r0
	ldr r1, _08007000
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r0, r0, r1
	ldr r1, _08007004
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	orrs r2, r0
	ldrh r1, [r3, #2]
	ldr r0, _08007008
	ands r0, r1
	lsls r0, r0, #0x10
	movs r1, #8
	orrs r0, r1
	orrs r2, r0
	str r2, [r5]
	add r4, sl
	ldrh r0, [r3, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r6, #1]
	cmp r7, r0
	blo _08006F92
	b _08007050
	.align 2, 0
_08006FF8: .4byte gUnk_8DF7FD4
_08006FFC: .4byte 0x02018400
_08007000: .4byte gUnk_8DF8114
_08007004: .4byte 0x01FF0000
_08007008: .4byte 0x00003FFF
_0800700C:
	movs r7, #0
	ldr r1, _08007060
	ldr r0, [r1, #0x54]
	ldrb r2, [r0, #1]
	cmp r7, r2
	bhs _08007050
	ldr r3, _08007064
	adds r6, r3, #4
	adds r4, r0, #0
	movs r5, #0xa0
_08007020:
	mov r0, ip
	lsls r2, r0, #3
	adds r0, r2, r3
	strh r5, [r0]
	adds r0, r3, #2
	adds r0, r2, r0
	movs r1, #0xf0
	strh r1, [r0]
	adds r2, r2, r6
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r2, [r4, #1]
	cmp r7, r2
	blo _08007020
_08007050:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007060: .4byte gUnk_8DF7FD4
_08007064: .4byte 0x02018400

	THUMB_FUNC_START sub_8007068
sub_8007068: @ 0x08007068
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0x19
	mov ip, r0
	movs r6, #0
	ldr r1, _080070F8
	mov sb, r1
	ldr r2, _080070FC
	movs r7, #0xa0
	mov r8, r7
	adds r0, r2, #4
	mov sl, r0
	adds r5, r2, #2
	movs r4, #0xf0
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r3, r1, #0
_08007090:
	mov r7, ip
	lsls r1, r7, #3
	adds r0, r1, r2
	mov r7, r8
	strh r7, [r0]
	adds r0, r1, r5
	strh r4, [r0]
	add r1, sl
	strh r3, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	cmp r6, #8
	bls _08007090
	movs r0, #0x19
	mov ip, r0
	mov r1, sb
	ldr r4, [r1]
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _080070C6
	b _08007294
_080070C6:
	ldrh r0, [r4, #0x32]
	cmp r0, #5
	bls _080070CE
	b _080071D8
_080070CE:
	ldr r2, _08007100
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r4, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r4, #5]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08007104
	movs r0, #0
	strb r0, [r4, #5]
	mov r7, sb
	ldr r1, [r7]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	b _08007108
	.align 2, 0
_080070F8: .4byte gUnk_8DF8114
_080070FC: .4byte 0x02018400
_08007100: .4byte gUnk_8DF7FD4
_08007104:
	adds r0, #1
	strb r0, [r4, #5]
_08007108:
	mov r0, sb
	ldr r3, [r0]
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08007124
	strb r0, [r3, #6]
_08007124:
	movs r6, #0
	mov r7, sb
	ldr r1, [r7]
	ldrh r0, [r1, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #1]
	cmp r6, r1
	blo _08007142
	b _08007294
_08007142:
	ldr r0, _080071D4
	mov r8, r0
	adds r7, r2, #0
	movs r1, #4
	add r1, r8
	mov sl, r1
_0800714E:
	mov r0, ip
	lsls r5, r0, #3
	mov r1, r8
	adds r2, r5, r1
	mov r0, sb
	ldr r3, [r0]
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, [r1, #4]
	lsls r4, r6, #3
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r2]
	mov r2, r8
	adds r2, #2
	adds r2, r5, r2
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, [r1, #4]
	adds r0, r4, r0
	ldrh r0, [r0, #2]
	strh r0, [r2]
	add r5, sl
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, [r1, #4]
	adds r4, r4, r0
	ldrh r0, [r4, #4]
	strh r0, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #1]
	cmp r6, r1
	blo _0800714E
	b _08007294
	.align 2, 0
_080071D4: .4byte 0x02018400
_080071D8:
	ldr r2, _08007200
	movs r3, #0x11
	lsls r0, r3, #2
	adds r0, r0, r2
	ldrb r1, [r4, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r4, #5]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08007204
	movs r0, #0
	strb r0, [r4, #5]
	mov r7, sb
	ldr r1, [r7]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	b _08007208
	.align 2, 0
_08007200: .4byte gUnk_8DF7FD4
_08007204:
	adds r0, #1
	strb r0, [r4, #5]
_08007208:
	lsls r0, r3, #2
	adds r2, r0, r2
	mov r0, sb
	ldr r4, [r0]
	ldrb r0, [r4, #6]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08007220
	strb r0, [r4, #6]
_08007220:
	movs r6, #0
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #6]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _08007294
	ldr r7, _080072A4
	adds r5, r1, #0
	adds r0, r7, #4
	mov r8, r0
_0800723C:
	mov r1, ip
	lsls r3, r1, #3
	adds r1, r3, r7
	mov r0, sb
	ldr r4, [r0]
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	lsls r2, r6, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r7, #2
	adds r1, r3, r1
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	add r3, r8
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #1]
	cmp r6, r0
	blo _0800723C
_08007294:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080072A4: .4byte 0x02018400

	THUMB_FUNC_START sub_80072A8
sub_80072A8: @ 0x080072A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #6
	mov r8, r5
	ldr r1, _08007314
	ldr r2, _08007318
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0800731C
	ldr r2, _08007320
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08007324
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08007328
	ldr r1, [r0]
	movs r0, #8
	strb r0, [r1, #2]
	bl sub_8006E84
	bl LoadOam
	movs r4, #0
_080072DA:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _080072DA
	movs r0, #8
	bl sub_8035020
	movs r4, #0
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	add r0, r8
	cmp r4, r0
	bge _08007344
	ldr r6, _08007324
	adds r7, r0, #0
_08007302:
	ldrh r0, [r6]
	cmp r0, #0xf
	bhi _08007336
	cmp r5, #0
	beq _0800732C
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08007336
	.align 2, 0
_08007314: .4byte gBLDCNT
_08007318: .4byte 0x000006D6
_0800731C: .4byte gBLDALPHA
_08007320: .4byte 0x00000C0A
_08007324: .4byte gBLDY
_08007328: .4byte gUnk_8DF8114
_0800732C:
	adds r0, #1
	strh r0, [r6]
	bl LoadBlendingRegs
	mov r5, r8
_08007336:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blt _08007302
_08007344:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8007350
sub_8007350: @ 0x08007350
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080074C0
	mov sl, r0
	ldr r1, _080074C4
	mov sb, r1
	ldr r1, [r1]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	ldrh r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r6, #0xb6
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	mov r8, r0
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sb
	ldr r1, [r2]
	adds r0, r1, r5
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r4, [r0, r2]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, r5
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r7, #0xb7
	lsls r7, r7, #1
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	ldr r1, [r0]
	adds r5, r1, r5
	ldrh r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r5, [r0, r2]
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8008144
	ldr r5, _080074C8
	mov r1, r8
	strh r1, [r5]
	strh r6, [r5, #8]
	strh r4, [r5, #0x10]
	strh r0, [r5, #0x18]
	mov r0, sl
	adds r0, #0x80
	movs r2, #0
	ldrsh r7, [r0, r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	mov sb, r0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_8008144
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r2, sl
	movs r0, #0
	ldrsh r4, [r2, r0]
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r1, sl
	ldrh r4, [r1]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_8008144
	mov r2, r8
	strh r2, [r5, #0x20]
	strh r6, [r5, #0x28]
	strh r4, [r5, #0x30]
	strh r0, [r5, #0x38]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080074C0: .4byte gUnk_8088ED4
_080074C4: .4byte gUnk_8DF8114
_080074C8: .4byte 0x02018406

	THUMB_FUNC_START sub_80074CC
sub_80074CC: @ 0x080074CC
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _08007568
	ldr r0, _0800756C
	mov ip, r0
	ldr r4, _08007570
	movs r6, #0
	movs r5, #0xa0
_080074DC:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _080074DC
	ldr r1, _08007574
	ldr r2, _08007578
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800757C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007580
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r1, _08007584
	movs r0, #8
	strh r0, [r1]
	subs r1, #4
	movs r2, #0xb0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r1, #0
	strh r0, [r7]
	ldr r2, _08007588
	adds r0, r2, #0
	mov r1, ip
	strh r0, [r1]
	bl LoadBlendingRegs
	ldr r0, _0800758C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007590
	strh r1, [r0]
	ldr r0, _08007594
	strh r1, [r0]
	ldr r0, _08007598
	strh r1, [r0]
	bl LoadBgOffsets
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007568: .4byte gBLDCNT
_0800756C: .4byte gBLDALPHA
_08007570: .4byte 0x02018400
_08007574: .4byte 0x0400000A
_08007578: .4byte 0x00001F09
_0800757C: .4byte 0x00001E02
_08007580: .4byte 0x04000208
_08007584: .4byte 0x04000004
_08007588: .4byte 0x00000C0A
_0800758C: .4byte gBG1HOFS
_08007590: .4byte gBG1VOFS
_08007594: .4byte gBG2HOFS
_08007598: .4byte gBG2VOFS

	THUMB_FUNC_START sub_800759C
sub_800759C: @ 0x0800759C
	push {lr}
	ldr r0, _080075AC
	movs r1, #0x13
	bl bzero
	pop {r0}
	bx r0
	.align 2, 0
_080075AC: .4byte 0x02020DE0

	THUMB_FUNC_START sub_80075B0
sub_80075B0: @ 0x080075B0
	push {lr}
	bl sub_8006958
	bl sub_8006B40
	bl sub_8006C60
	bl sub_8006E84
	bl sub_8007068
	bl sub_8007350
	bl LoadOam
	bl LoadVRAM
	bl LoadPalettes
	pop {r0}
	bx r0
	.byte 0x00, 0x00

.align 2, 0