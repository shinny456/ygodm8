#include "global.h"
#include "overworld.h"
#include "card.h"
#include "gba/syscall.h"
#include "duel.h"
#include "gba/io_reg.h"
#include "gba/macro.h"

extern u8* gUnk_8E0CD14;
extern u8 g201EF50[];
extern u8 g201EFC0[];
extern u8* g8E0F4F4[];
extern u8* g8E0F504[];
extern u8* g8E0F528[];
extern u8* g8E0F540[];
extern u8* g8E0F594[];
extern u8* g8E0F5E8[];
extern u8* g8E0F600[];

extern s8 g8E0F618[]; // pairs
extern s8 g8E0F65B[]; // pairs

extern s8 g8E0F688[];
extern s8 g8E0F69A[];
extern s8 g8E0F6AC[];



u8* sub_8020824 (u8*);
u16 sub_805629C (u16, u16);
void sub_80562E0 (void);
u8* sub_8020824 (u8*);
void sub_8056208 (void);
int sub_8056258 (u8, u8);
void sub_805787C (int);


void sub_8051584 (void);
void sub_80515A0 (void);
void sub_804F580 (void);
void sub_804F598 (void);

void sub_802BF70 (void);
void sub_802C5B4 (void);
void sub_8055C64 (void);
void sub_8000224 (void);

void RemoveMoney (u64);


/*
void sub_8053F30 (struct ScriptCtx* script) {
  u8* name;
  u32 temp;
  int i, ip;
  int r7, r6, r3;
  int sb;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);
  SetCardInfo(sub_805629C(1, 800));
  name = gCardInfo.name;
  name = sub_8020824(name);
  for (i = 0; i < 112; i++) {
    g201EF50[i] = 0;
    g201EFC0[i] = 0;
  }

  r7 = 0, r6 = 0, r3 = 0;
  while (name[r6] && name[r6] != '$') {
    if ((s8)name[r6] < 0) {
      g201EF50[r6] = name[r6];
      r6++;
    }
    else if (name[r6] == ' ' && r3 <= 27) {
      r7 = r6;
      sb = r3;
    }
    g201EF50[r6] = name[r6];
    r6++;
    r3++;
  }

  if (r3 >= 27) {
    g201EF50[r7] = '\0';
    r6 = r7 + 1;
    strcpy(g201EF50, g201EFC0);
    for (; sb <= 27; r7++, sb++)
      g201EFC0[r7] = ' ';
    strcpy(g201EFC0 + r7, g201EF50 + r6);
  }
  else
    strcpy(g201EFC0, g201EF50);

  for (i = 0, ip = 0; ip < 80 && g201EFC0[ip]; i++, ip++) {
    if ((s8)g201EFC0[i] < 0) {
      script->unk22[i] = g201EFC0[i];
      i++;
    }
    script->unk22[i] = g201EFC0[i];
  }
  script->unk22[i] = '\0';
  script->unk78 = 0;
  script->unkC = 0;
  sub_80562E0();
}*/

NAKED
void sub_8053F30 (struct ScriptCtx* script) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	mov r8, r0\n\
	ldr r0, _08053FC4\n\
	ldr r2, [r0]\n\
	ldrb r0, [r2]\n\
	lsls r0, r0, #0x18\n\
	ldrb r1, [r2, #1]\n\
	lsls r1, r1, #0x10\n\
	orrs r0, r1\n\
	ldrb r1, [r2, #2]\n\
	lsls r1, r1, #8\n\
	orrs r0, r1\n\
	ldrb r1, [r2, #3]\n\
	orrs r0, r1\n\
	bl sub_80562CC\n\
	movs r1, #0xc8\n\
	lsls r1, r1, #2\n\
	movs r0, #1\n\
	bl sub_805629C\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	bl SetCardInfo\n\
	ldr r0, _08053FC8\n\
	ldr r5, [r0]\n\
	adds r0, r5, #0\n\
	bl sub_8020824\n\
	adds r5, r0, #0\n\
	movs r4, #0\n\
	ldr r3, _08053FCC\n\
	ldr r6, _08053FD0\n\
	movs r2, #0\n\
_08053F80:\n\
	adds r1, r4, r3\n\
	adds r0, r4, r6\n\
	strb r2, [r0]\n\
	strb r2, [r1]\n\
	adds r4, #1\n\
	cmp r4, #0x6f\n\
	ble _08053F80\n\
  \n\
  \n\
  \n\
	movs r0, #0x1a\n\
	mov ip, r0\n\
	movs r7, #0\n\
	movs r6, #0\n\
	movs r3, #0\n\
	ldrb r0, [r5]\n\
	movs r1, #0x22\n\
	add r1, r8\n\
	mov sl, r1\n\
	mov r1, r8\n\
	adds r1, #0x78\n\
	str r1, [sp]\n\
	cmp r0, #0\n\
	beq _08053FF8\n\
	cmp r0, #0x24\n\
	beq _08053FF8\n\
	adds r2, r5, #0\n\
	ldr r4, _08053FCC\n\
_08053FB2:\n\
	ldrb r1, [r2]\n\
	lsls r0, r1, #0x18\n\
	cmp r0, #0\n\
	bge _08053FD4\n\
	strb r1, [r4]\n\
	adds r4, #1\n\
	adds r6, #1\n\
	adds r2, #1\n\
	b _08053FE2\n\
	.align 2, 0\n\
_08053FC4: .4byte gUnk_8E0CD14\n\
_08053FC8: .4byte gCardInfo\n\
_08053FCC: .4byte 0x0201EF50\n\
_08053FD0: .4byte 0x0201EFC0\n\
_08053FD4:\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #0x20\n\
	bne _08053FE2\n\
	cmp r3, #0x1b\n\
	bgt _08053FE2\n\
	adds r7, r6, #0\n\
	mov sb, r3\n\
_08053FE2:\n\
	ldrb r0, [r2]\n\
	strb r0, [r4]\n\
	adds r4, #1\n\
	adds r6, #1\n\
	adds r2, #1\n\
	adds r3, #1\n\
	ldrb r0, [r2]\n\
	cmp r0, #0\n\
	beq _08053FF8\n\
	cmp r0, #0x24\n\
	bne _08053FB2\n\
  \n\
  \n\
_08053FF8:\n\
	cmp r3, ip\n\
	ble _0805403C\n\
	ldr r1, _08054034\n\
	adds r2, r7, r1\n\
	movs r0, #0\n\
	strb r0, [r2]\n\
	adds r6, r7, #1\n\
	ldr r4, _08054038\n\
	adds r0, r4, #0\n\
	bl strcpy\n\
	mov r3, sb\n\
	cmp r3, #0x1b\n\
	bgt _08054024\n\
	adds r2, r4, #0\n\
	movs r1, #0x20\n\
_08054018:\n\
	adds r0, r7, r2\n\
	strb r1, [r0]\n\
	adds r7, #1\n\
	adds r3, #1\n\
	cmp r3, #0x1b\n\
	ble _08054018\n\
_08054024:\n\
	ldr r0, _08054038\n\
	adds r0, r7, r0\n\
	ldr r1, _08054034\n\
	adds r1, r6, r1\n\
	bl strcpy\n\
	b _08054044\n\
	.align 2, 0\n\
_08054034: .4byte 0x0201EF50\n\
_08054038: .4byte 0x0201EFC0\n\
_0805403C:\n\
	ldr r0, _080540A8\n\
	ldr r1, _080540AC\n\
	bl strcpy\n\
  \n\
  \n\
  \n\
_08054044:\n\
	movs r4, #0\n\
	mov ip, r4\n\
	ldr r1, _080540A8\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _08054080\n\
	adds r3, r1, #0\n\
	mov r1, sl\n\
_08054054:\n\
	ldrb r2, [r3]\n\
	movs r0, #0\n\
	ldrsb r0, [r3, r0]\n\
	cmp r0, #0\n\
	bge _08054066\n\
	strb r2, [r1]\n\
	adds r3, #1\n\
	adds r1, #1\n\
	adds r4, #1\n\
_08054066:\n\
	ldrb r0, [r3]\n\
	strb r0, [r1]\n\
	adds r3, #1\n\
	adds r1, #1\n\
	adds r4, #1\n\
	movs r0, #1\n\
	add ip, r0\n\
	mov r0, ip\n\
	cmp r0, #0x4f\n\
	bgt _08054080\n\
	ldrb r0, [r3]\n\
	cmp r0, #0\n\
	bne _08054054\n\
_08054080:\n\
	mov r0, sl\n\
	adds r1, r0, r4\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	ldr r1, [sp]\n\
	strb r0, [r1]\n\
	movs r0, #2\n\
	mov r1, r8\n\
	strb r0, [r1, #0xc]\n\
	bl sub_80562E0\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080540A8: .4byte 0x0201EFC0\n\
_080540AC: .4byte 0x0201EF50");
}

void sub_80540B0 (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r4, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);
  sub_8056208();
  text = sub_8020824(g8E0F4F4[sub_8056258(0, 3)]);

  for (r4 = 0, r5 = 0; r5 < 80 && text[r4] && text[r4] != '$'; r4++, r5++) {
    if ((s8)text[r4] < 0) {
      script->unk22[r4] = text[r4];
      r4++;
    }
    script->unk22[r4] = text[r4];
  }
  script->unk22[r4] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_8054150 (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r4, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);
  sub_8056208();
  sub_8056208();
  text = sub_8020824(g8E0F504[sub_8056258(0, 8)]);

  for (r4 = 0, r5 = 0; r5 < 80 && text[r4] && text[r4] != '$'; r4++, r5++) {
    if ((s8)text[r4] < 0) {
      script->unk22[r4] = text[r4];
      r4++;
    }
    script->unk22[r4] = text[r4];
  }
  script->unk22[r4] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_80541F4 (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r1, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 3; r5++)
    sub_8056208();

  text = sub_8020824(g8E0F528[sub_8056258(0, 5)]);

  for (r5 = 0, r1 = 0; r1 < 80 && text[r5] && text[r5] != '$'; r5++, r1++) {
    if ((s8)text[r5] < 0) {
      script->unk22[r5] = text[r5];
      r5++;
    }
    script->unk22[r5] = text[r5];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_805429C (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 4; r5++)
    sub_8056208();

  text = g8E0F540[sub_8056258(0, 20)];

  for (r5 = 0; r5 < 80 && text[r5]; r5 +=2) {
    script->unk22[r5] = text[r5];
    script->unk22[r5 + 1] = text[r5 + 1];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_8054320 (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 5; r5++)
    sub_8056208();

  text = g8E0F594[sub_8056258(0, 20)];

  for (r5 = 0; r5< 80 && text[r5]; r5 +=2) {
    script->unk22[r5] = text[r5];
    script->unk22[r5 + 1] = text[r5 + 1];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_80543A4 (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r1, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 6; r5++)
    sub_8056208();

  text = sub_8020824(g8E0F5E8[sub_8056258(0, 5)]);

  for (r5 = 0, r1 = 0; r1 < 80 && text[r5] && text[r5] != '$'; r5++, r1++) {
    if ((s8)text[r5] < 0) {
      script->unk22[r5] = text[r5];
      r5++;
    }
    script->unk22[r5] = text[r5];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_805444C (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r1, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 7; r5++)
    sub_8056208();

  text = sub_8020824(g8E0F600[sub_8056258(0, 5)]);

  for (r5 = 0, r1 = 0; r1 < 80 && text[r5] && text[r5] != '$'; r5++, r1++) {
    if ((s8)text[r5] < 0) {
      script->unk22[r5] = text[r5];
      r5++;
    }
    script->unk22[r5] = text[r5];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_80544F4 (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r1, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 8; r5++)
    sub_8056208();

  text = sub_8020824(g8E0F4F4[sub_8056258(0, 3)]);

  for (r5 = 0, r1 = 0; r1 < 80 && text[r5] && text[r5] != '$'; r5++, r1++) {
    if ((s8)text[r5] < 0) {
      script->unk22[r5] = text[r5];
      r5++;
    }
    script->unk22[r5] = text[r5];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_805459C (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r1, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 9; r5++)
    sub_8056208();

  text = sub_8020824(g8E0F528[sub_8056258(0, 5)]);

  for (r5 = 0, r1 = 0; r1 < 80 && text[r5] && text[r5] != '$'; r5++, r1++) {
    if ((s8)text[r5] < 0) {
      script->unk22[r5] = text[r5];
      r5++;
    }
    script->unk22[r5] = text[r5];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

NAKED
void sub_8054644 (struct ScriptCtx* script) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	mov r8, r0\n\
	ldr r0, _080546E4\n\
	ldr r2, [r0]\n\
	ldrb r0, [r2]\n\
	lsls r0, r0, #0x18\n\
	ldrb r1, [r2, #1]\n\
	lsls r1, r1, #0x10\n\
	orrs r0, r1\n\
	ldrb r1, [r2, #2]\n\
	lsls r1, r1, #8\n\
	orrs r0, r1\n\
	ldrb r1, [r2, #3]\n\
	orrs r0, r1\n\
	bl sub_80562CC\n\
	movs r4, #9\n\
_08054670:\n\
	bl sub_8056208\n\
	subs r4, #1\n\
	cmp r4, #0\n\
	bge _08054670\n\
	movs r1, #0xc8\n\
	lsls r1, r1, #2\n\
	movs r0, #1\n\
	bl sub_805629C\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	bl SetCardInfo\n\
	ldr r0, _080546E8\n\
	ldr r5, [r0]\n\
	adds r0, r5, #0\n\
	bl sub_8020824\n\
	adds r5, r0, #0\n\
	movs r4, #0\n\
	movs r0, #0x22\n\
	add r0, r8\n\
	mov sl, r0\n\
	mov r1, r8\n\
	adds r1, #0x78\n\
	str r1, [sp]\n\
	ldr r3, _080546EC\n\
	ldr r6, _080546F0\n\
	movs r2, #0\n\
_080546AC:\n\
	adds r1, r4, r3\n\
	adds r0, r4, r6\n\
	strb r2, [r0]\n\
	strb r2, [r1]\n\
	adds r4, #1\n\
	cmp r4, #0x6f\n\
	ble _080546AC\n\
	movs r0, #0x1a\n\
	mov ip, r0\n\
	movs r7, #0\n\
	movs r6, #0\n\
	movs r3, #0\n\
	ldrb r0, [r5]\n\
	cmp r0, #0\n\
	beq _08054718\n\
	cmp r0, #0x24\n\
	beq _08054718\n\
	adds r2, r5, #0\n\
	ldr r4, _080546EC\n\
_080546D2:\n\
	ldrb r1, [r2]\n\
	lsls r0, r1, #0x18\n\
	cmp r0, #0\n\
	bge _080546F4\n\
	strb r1, [r4]\n\
	adds r4, #1\n\
	adds r6, #1\n\
	adds r2, #1\n\
	b _08054702\n\
	.align 2, 0\n\
_080546E4: .4byte gUnk_8E0CD14\n\
_080546E8: .4byte gCardInfo\n\
_080546EC: .4byte 0x0201EF50\n\
_080546F0: .4byte 0x0201EFC0\n\
_080546F4:\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #0x20\n\
	bne _08054702\n\
	cmp r3, #0x1b\n\
	bgt _08054702\n\
	adds r7, r6, #0\n\
	mov sb, r3\n\
_08054702:\n\
	ldrb r0, [r2]\n\
	strb r0, [r4]\n\
	adds r4, #1\n\
	adds r6, #1\n\
	adds r2, #1\n\
	adds r3, #1\n\
	ldrb r0, [r2]\n\
	cmp r0, #0\n\
	beq _08054718\n\
	cmp r0, #0x24\n\
	bne _080546D2\n\
_08054718:\n\
	cmp r3, ip\n\
	ble _0805475C\n\
	ldr r1, _08054754\n\
	adds r2, r7, r1\n\
	movs r0, #0\n\
	strb r0, [r2]\n\
	adds r6, r7, #1\n\
	ldr r4, _08054758\n\
	adds r0, r4, #0\n\
	bl strcpy\n\
	mov r3, sb\n\
	cmp r3, #0x1b\n\
	bgt _08054744\n\
	adds r2, r4, #0\n\
	movs r1, #0x20\n\
_08054738:\n\
	adds r0, r7, r2\n\
	strb r1, [r0]\n\
	adds r7, #1\n\
	adds r3, #1\n\
	cmp r3, #0x1b\n\
	ble _08054738\n\
_08054744:\n\
	ldr r0, _08054758\n\
	adds r0, r7, r0\n\
	ldr r1, _08054754\n\
	adds r1, r6, r1\n\
	bl strcpy\n\
	b _08054764\n\
	.align 2, 0\n\
_08054754: .4byte 0x0201EF50\n\
_08054758: .4byte 0x0201EFC0\n\
_0805475C:\n\
	ldr r0, _080547C8\n\
	ldr r1, _080547CC\n\
	bl strcpy\n\
_08054764:\n\
	movs r4, #0\n\
	mov ip, r4\n\
	ldr r1, _080547C8\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _080547A0\n\
	adds r3, r1, #0\n\
	mov r1, sl\n\
_08054774:\n\
	ldrb r2, [r3]\n\
	movs r0, #0\n\
	ldrsb r0, [r3, r0]\n\
	cmp r0, #0\n\
	bge _08054786\n\
	strb r2, [r1]\n\
	adds r3, #1\n\
	adds r1, #1\n\
	adds r4, #1\n\
_08054786:\n\
	ldrb r0, [r3]\n\
	strb r0, [r1]\n\
	adds r3, #1\n\
	adds r1, #1\n\
	adds r4, #1\n\
	movs r0, #1\n\
	add ip, r0\n\
	mov r0, ip\n\
	cmp r0, #0x4f\n\
	bgt _080547A0\n\
	ldrb r0, [r3]\n\
	cmp r0, #0\n\
	bne _08054774\n\
_080547A0:\n\
	mov r0, sl\n\
	adds r1, r0, r4\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	ldr r1, [sp]\n\
	strb r0, [r1]\n\
	movs r0, #2\n\
	mov r1, r8\n\
	strb r0, [r1, #0xc]\n\
	bl sub_80562E0\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080547C8: .4byte 0x0201EFC0\n\
_080547CC: .4byte 0x0201EF50");
}

void sub_80547D0 (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r1, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 11; r5++)
    sub_8056208();

  text = sub_8020824(g8E0F4F4[sub_8056258(0, 3)]);

  for (r5 = 0, r1 = 0; r1 < 80 && text[r5] && text[r5] != '$'; r5++, r1++) {
    if ((s8)text[r5] < 0) {
      script->unk22[r5] = text[r5];
      r5++;
    }
    script->unk22[r5] = text[r5];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_8054878 (struct ScriptCtx* script) {
  u32 temp;
  u8* text;
  int r1, r5;

  temp = gUnk_8E0CD14[0] << 24;
  temp |= gUnk_8E0CD14[1] << 16;
  temp |= gUnk_8E0CD14[2] << 8;
  temp |= gUnk_8E0CD14[3];
  sub_80562CC(temp);

  for (r5 = 0; r5 < 12; r5++)
    sub_8056208();

  text = sub_8020824(g8E0F504[sub_8056258(0, 8)]);

  for (r5 = 0, r1 = 0; r1 < 80 && text[r5] && text[r5] != '$'; r5++, r1++) {
    if ((s8)text[r5] < 0) {
      script->unk22[r5] = text[r5];
      r5++;
    }
    script->unk22[r5] = text[r5];
  }
  script->unk22[r5] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
  sub_80562E0();
}

void sub_8054920 (struct ScriptCtx* script) {
  int i;

  gOverworld.background = 1;
  sub_805339C();
  sub_804F508();
  REG_BLDCNT = 0xC7;
  for (i = 0; i <= 16; i++) {
    REG_BLDY = i;
    sub_805787C(8);
  }
  sub_805787C(10);
  REG_BLDY = 16;
  sub_8008220();
  LZ77UnCompWram(g84C9FBC, gBgVram.cbb0);
  CpuCopy16(g84D0CE0, g02000000.bg + 16, 0x1E0);
  CpuCopy16(g84CFCE0, gBgVram.sbb1F, 0x800);
  CpuCopy16(g84D04E0, gBgVram.sbb1E, 0x800);
  sub_8008220();
  sub_804EC4C();

  for (i = 16; i >= 0; i--) {
    REG_BLDY = i;
    sub_805787C(8);
  }
  sub_805787C(100);
  REG_BLDY = 0;
  sub_8008220();
}

void sub_80549E8 (struct ScriptCtx* script) {
  int i;

  gOverworld.background = 2;
  sub_805339C();
  sub_804F508();
  REG_BLDCNT = 0xC7;
  for (i = 0; i <= 16; i++) {
    REG_BLDY = i;
    sub_805787C(8);
  }
  sub_805787C(10);
  REG_BLDY = 16;
  sub_8008220();
  LZ77UnCompWram(g84D0EC0, gBgVram.cbb0);
  CpuCopy16(g84D69D0, g02000000.bg + 16, 0x1E0);
  CpuCopy16(g84D59D0, gBgVram.sbb1F, 0x800);
  CpuCopy16(g84D61D0, gBgVram.sbb1E, 0x800);
  sub_8008220();
  sub_804EC4C();

  for (i = 16; i >= 0; i--) {
    REG_BLDY = i;
    sub_805787C(8);
  }
  sub_805787C(100);
  REG_BLDY = 0;
  sub_8008220();
}

inline void sub_8054EC8 (void) {
  int i, j;
  sub_8053404();
  sub_804F508();
  REG_BLDCNT = 0x9F;
  for (i = 0; i <= 16; i++) {
    REG_BLDY = i;
    for (j = 1; j != -1; j--)
      sub_8008220();
  }
  for (i = 0; i < 10; i++)
    sub_8008220();
  for (i = 16; i >= 0; i -= 4) {
    REG_BLDY = i;
    sub_8008220();
  }
  REG_BLDY = 0;
  sub_8008220();
}

inline void sub_8054F28 (void) {
  int i;
  sub_805339C();
  REG_DISPCNT = 0x1F00;
  REG_BLDCNT = 0x9F;
  REG_BLDY = 16;
  for (i = 0; i < 2; i++)
    sub_8008220();
  REG_BLDY = 0;
  for (i = 0; i < 30; i++)
    sub_8008220();
  REG_BLDY = 16;
  for (i = 0; i < 2; i++)
    sub_8008220();
  REG_BLDY = 0;
  for (i = 0; i < 8; i++)
    sub_8008220();
  REG_BLDY = 16;
  for (i = 0; i < 2; i++)
    sub_8008220();
  REG_BLDY = 0;
  sub_8008220();
}

inline void sub_8054FB0 (void) {
  int i, j;
  sub_8053404();
  sub_804F508();
  REG_BLDCNT = 0x82;
  for (i = 0; g8E0F618[i] != -1; i += 2) {
    REG_BLDY = g8E0F618[i];
    j = g8E0F618[i + 1];
    while (--j != -1)
      sub_8008220();
  }
  REG_BLDY = 0;
  sub_8008220();
}

inline void sub_8055048 (void) {
  int i;
  sub_8053404();
  sub_804F508();
  REG_BLDCNT = 0x82;
  for (i = 0; g8E0F65B[i] != -1; i += 2) {
    REG_BLDY = g8E0F65B[i];
    sub_805787C(g8E0F65B[i + 1]);
  }

  REG_BLDCNT = 0xBF;

  for (i = 0; i <= 16; i++) {
    REG_BLDY = i;
    sub_805787C(4);
  }
  sub_805787C(10);
  REG_BLDY = 0;
  sub_8008220();
}

inline void sub_80550C0 (struct ScriptCtx* script) {
  int i;
  sub_8053404();
  sub_804F508();
  sub_804F5D8();
  sub_8051584();

  for (i = 0; g8E0F688[i] != -1; i++) {
    sub_80515A0();
    sub_8044F80(g02000000.bg, 0, 0x1FF, g8E0F688[i]);
    sub_8008220();
    LoadPalettes();
  }
  script->unk86 = 0;
}

inline void sub_8055124 (struct ScriptCtx* script) {
  int i;
  sub_8053404();
  sub_804F508();
  sub_804F580();
  sub_804F598();
  sub_8051584();

  for (i = 0; g8E0F69A[i] != -1; i++) {
    sub_80515A0();
    sub_8044F80(g02000000.bg, 0x100, 0x1FF, g8E0F69A[i]);
    sub_8044EC8(g02000000.bg, 0x10, 0xFF, g8E0F6AC[i]);
    sub_8008220();
    LoadPalettes();
  }
  script->unk86 = 0;
}

void sub_8054AB0 (u8 arg0, struct ScriptCtx* script) {
  switch (arg0) {
    case 0:
      sub_8054EC8();
      break;
    case 1:
      sub_8054F28();
      break;
    case 2:
      sub_8053F30(script);
      break;
    case 3:
      sub_80540B0(script);
      break;
    case 4:
      sub_8054150(script);
      break;
    case 5:
      sub_80541F4(script);
      break;
    case 6:
      sub_805429C(script);
      break;
    case 7:
      sub_8054320(script);
      break;
    case 8:
      sub_80543A4(script);
      break;
    case 9:
      sub_805444C(script);
      break;
    case 10:
      sub_80544F4(script);
      break;
    case 11:
      sub_805459C(script);
      break;
    case 12:
      sub_8054644(script);
      break;
    case 13:
      sub_80547D0(script);
      break;
    case 14:
      sub_8054878(script);
      break;
    case 15:
      StartCutscene(0);
      break;
    case 16:
      StartCutscene(1);
      break;
    case 17:
      sub_802BF70();
      sub_804ED08();
      sub_80533BC();
      break;
    case 18:
      sub_802C5B4();
      sub_804ED08();
      sub_80533BC();
      break;
    case 19:
      sub_8055C64();
      sub_804ED08();
      break;
    case 20:
      sub_8000224();
      break;
    case 21:
      sub_8054FB0();
      break;
    case 22:
      sub_8054920(script);
      break;
    case 23:
      sub_80549E8(script);
      break;
    case 24:
      sub_8055048();
      break;
    case 25:
      sub_80550C0(script);
      break;
    case 32:
      sub_8055124(script);
      break;
    case 33:
      StartCutscene(8);
      break;
    case 34:
      StartCutscene(7);
      break;
    case 35:
      RemoveMoney(1000);
      break;
  }
}

// split?
inline void sub_80551B4 (void) {

}

// split?

extern u16* g8E0FD04[];
extern u16* g8E0FD14[];
extern int g8E0FD24[];
extern int g8E0FD34[];

inline void sub_80551B8 (void) {
  int r5 = -1;
  u16 r8, r2;

  switch (gOverworld.map.id) {
    case 41:
      if (CheckFlag(0xf6)) {
        r5 = 0;
        if (!CheckFlag(0xb4))
          r5 = 2;
      }
      break;
    case 16:
    case 17:
    case 18:
      if (CheckFlag(0xf7))
        r5 = 1;
      break;
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
      if (CheckFlag(0xf7))
        r5 = 3;
      break;
  }
  if (r5 == -1)
    return;

  if (r5 == 0) {
    if (gOverworld.unk244 >= 0xFFFF)
      gOverworld.unk244 = -1;
    gOverworld.unk244++;
    if ((gOverworld.unk244 % 4) == 0)
      gBG3HOFS += 0xFFFF;
    if ((gOverworld.unk244 % 16) == 0)
      gBG3VOFS += 0xFFFF;
  }
  if (r5 == 2) {
    if (gOverworld.unk244 <= 0)
      gOverworld.unk244 = 0xFFFF;
    gOverworld.unk244--;
    if ((gOverworld.unk244 % 4) == 0)
      gBG3HOFS++;
    if ((gOverworld.unk244 % 16) == 0)
      gBG3VOFS++;
  }
  if (gOverworld.unk248 >= 0xFFFF)
    gOverworld.unk248 = -1;
  gOverworld.unk248++;
  r8 = g8E0FD04[r5][gOverworld.unk248 % g8E0FD24[r5]];
  gOverworld.unk24E = r8;
  r2 = g8E0FD14[r5][gOverworld.unk248 % g8E0FD34[r5]];
  gOverworld.unk24C = r2;
  gBG2VOFS = -r2;
  gBG2HOFS = 8 - r8;
  gBG1VOFS = -r2;
  gBG1HOFS = 8 - r8;
}

extern s16 g20244BC[];

extern s16 g8E0FCEE[];
extern s16 g8E0FCDA[];

void sub_804EEE0 (void);

/*
static inline void test (s16* r5, s16* r7, int j) {
  
    *r5 = g8E0FCEE[j];
    *r7 = g8E0FCDA[j];
    sub_804EEE0();
    gBG2VOFS = -*r5;
    gBG2HOFS = 8 - *r7;
    gBG1VOFS = -*r5;
    gBG1HOFS = 8 - *r7;
  
}

inline void sub_80553F8 (struct ScriptCtx* script, u8 arg1) {
  int i, j;
 
  script->unk86 = 0;
  sub_8053404();

  for (i = 0; i != arg1; i++)
    for (j = 0; j < 10; j++) 
      test(g20244BC, g20244BC + 1, j);
    
  gOverworld.unk24C = 0;
  gOverworld.unk24E = 0;
  sub_804EEE0();
  gBG2VOFS = -gOverworld.unk24C;
  gBG2HOFS = 8 - gOverworld.unk24E;
  gBG1VOFS = -gOverworld.unk24C;
  gBG1HOFS = 8 - gOverworld.unk24E;
}*/

NAKED
inline void sub_80553F8 (struct ScriptCtx* script, u8 arg1) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	lsls r1, r1, #0x18\n\
	lsrs r1, r1, #0x18\n\
	mov r8, r1\n\
	adds r2, r0, #0\n\
	adds r2, #0x86\n\
	movs r1, #0\n\
	strb r1, [r2]\n\
	bl sub_8053404\n\
	movs r0, #0\n\
	cmp r0, r8\n\
	beq _08055466\n\
	ldr r5, _080554A4\n\
	adds r7, r5, #2\n\
	ldr r1, _080554A8\n\
	mov sl, r1\n\
	ldr r1, _080554AC\n\
	mov sb, r1\n\
_08055426:\n\
	movs r4, #0\n\
	adds r6, r0, #1\n\
_0805542A:\n\
	ldr r0, _080554B0\n\
	lsls r1, r4, #1\n\
	adds r0, r1, r0\n\
	ldrh r0, [r0]\n\
	strh r0, [r5]\n\
	ldr r0, _080554B4\n\
	adds r1, r1, r0\n\
	ldrh r0, [r1]\n\
	strh r0, [r7]\n\
	bl sub_804EEE0\n\
	ldrh r2, [r5]\n\
	rsbs r2, r2, #0\n\
	mov r0, sl\n\
	strh r2, [r0]\n\
	ldrh r1, [r7]\n\
	movs r0, #8\n\
	subs r1, r0, r1\n\
	mov r0, sb\n\
	strh r1, [r0]\n\
	ldr r0, _080554B8\n\
	strh r2, [r0]\n\
	ldr r0, _080554BC\n\
	strh r1, [r0]\n\
	adds r4, #1\n\
	cmp r4, #9\n\
	ble _0805542A\n\
	adds r0, r6, #0\n\
	cmp r0, r8\n\
	bne _08055426\n\
_08055466:\n\
	ldr r4, _080554C0\n\
	movs r1, #0x93\n\
	lsls r1, r1, #2\n\
	adds r5, r4, r1\n\
	movs r0, #0\n\
	strh r0, [r5]\n\
	adds r1, #2\n\
	adds r4, r4, r1\n\
	strh r0, [r4]\n\
	bl sub_804EEE0\n\
	ldr r0, _080554A8\n\
	ldrh r2, [r5]\n\
	rsbs r2, r2, #0\n\
	strh r2, [r0]\n\
	ldr r3, _080554AC\n\
	ldrh r0, [r4]\n\
	movs r1, #8\n\
	subs r1, r1, r0\n\
	strh r1, [r3]\n\
	ldr r0, _080554B8\n\
	strh r2, [r0]\n\
	ldr r0, _080554BC\n\
	strh r1, [r0]\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080554A4: .4byte 0x020244BC\n\
_080554A8: .4byte gBG2VOFS\n\
_080554AC: .4byte gBG2HOFS\n\
_080554B0: .4byte 0x08E0FCEE\n\
_080554B4: .4byte 0x08E0FCDA\n\
_080554B8: .4byte gBG1VOFS\n\
_080554BC: .4byte gBG1HOFS\n\
_080554C0: .4byte gOverworld");
}

inline void sub_80554C4 (void) {
  gOverworld.unk244 = 0;
  gOverworld.unk248 = 0;
  gOverworld.unk24C = 0;
  gOverworld.unk24E = 0;
}
