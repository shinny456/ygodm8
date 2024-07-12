#include "global.h"
#include "overworld.h"
#include "duel.h"
#include "gba/io_reg.h"

// displacement of 1px based on direction
extern s8 g8E0E834[]; //x
extern s8 g8E0E838[]; //y

extern s16 gE0E83C[];
extern s8 gE0E854[]; // how many frames to wait?
extern s8 gE0E865[];

extern int g8105114[][27][2];

bool32 sub_8027018 (u64 amount);
int sub_8056070 (u16);

void sub_805345C (u8 obj, u8 direction, u8 distance, u8 arg3, struct ScriptCtx *script) {
  int i;
  script->unk86 = 0;
  sub_8053404(script);
  gOverworld.objects[obj].direction = direction;
  for (i = 0; i < distance; i++) {
    gOverworld.objects[obj].x += g8E0E834[direction];
    gOverworld.objects[obj].y += g8E0E838[direction];
    sub_8052088(obj);
    sub_804F124(obj);
    sub_804DF5C(obj);
    sub_804F254();
    sub_804F254();
  }
  gOverworld.objects[obj].wander = 0;
  if (arg3 == 1)
    gOverworld.objects[obj].wander = 1;
  sub_804F19C(obj);
  sub_804DF5C(obj);
  sub_804F254();
}

inline void sub_8053CF0 (u8 obj, u16 x, u16 y, u16 arg3, struct ScriptCtx* script) {
  gOverworld.objects[obj].x = x;
  gOverworld.objects[obj].y = y;
  gOverworld.objects[obj].wander = 0;
  sub_8052088(obj);
  sub_804F054(gOverworld.objects[obj].spriteId,
              gOverworld.objects[obj].direction * 3 + arg3,
              gBgVram.cbb4 + gUnk08103264[obj] * 32);
  sub_804F218();
}

void sub_8053520 (u8 obj, u16 x, u16 y, u16 arg3, u8 arg4, u8 arg5, struct ScriptCtx *script) {
  int i;
  switch (arg4) {
    case 0:
      sub_8053CF0(obj, x, y, arg3, script);
      break;
    case 1:
      gOverworld.objects[obj].unk1Dm = 1;
      REG_BLDCNT = 0xE40;
      gOverworld.objects[obj].x = x;
      gOverworld.objects[obj].y = y;
      gOverworld.objects[obj].wander = 0;
      sub_8052088(obj);
      sub_804F054(gOverworld.objects[obj].spriteId,
                  gOverworld.objects[obj].direction * 3 + arg3,
                  gBgVram.cbb4 + gUnk08103264[obj] * 32);
      for (i = 16; i >= 0; i--) {
        REG_BLDALPHA = ((i & 31) << 8) | ((16 - i) & 31);
        sub_804F218();
        sub_804F218();
        sub_804F218();
        sub_804F218();
      }
      break;
    case 2:
      gOverworld.objects[obj].x = x;
      gOverworld.objects[obj].y = y;
      gOverworld.objects[obj].wander = 0;
      sub_8052088(obj);
      sub_804F054(gOverworld.objects[obj].spriteId,
                  gOverworld.objects[obj].direction * 3 + arg3,
                  gBgVram.cbb4 + gUnk08103264[obj] * 32);
      for (i = 0; gE0E83C[i] != -1; i++) {
        gOverworld.objects[obj].unkA = gE0E83C[i];
        sub_804F218();
      }
      break;
    case 3:
      gOverworld.objects[obj].x = x;
      gOverworld.objects[obj].y = y;
      gOverworld.objects[obj].wander = 0;
      gOverworld.objects[obj].unk1Di = 1;
      sub_8052088(obj);
      sub_804F054(gOverworld.objects[obj].spriteId,
                  gOverworld.objects[obj].direction * 3 + arg3,
                  gBgVram.cbb4 + gUnk08103264[obj] * 32);
      sub_804F218();
      break;
    case 4:
      gOverworld.objects[obj].x = x;
      gOverworld.objects[obj].y = y;
      gOverworld.objects[obj].wander = 0;
      gOverworld.objects[obj].unk1Di = 0;
      sub_8052088(obj);
      sub_804F054(gOverworld.objects[obj].spriteId,
                  gOverworld.objects[obj].direction * 3 + arg3,
                  gBgVram.cbb4 + gUnk08103264[obj] * 32);
      sub_804F218();
      break;
  }
}

void sub_8053730 (u16 arg0, struct ScriptCtx* script) {
  u16 sp[15][3];
  u8 i;
  script->unk86 = 0;
  sub_8053404(script);
  for (i = 0; i < 15; i++) {
    sp[i][0] = gOverworld.objects[i].x;
    sp[i][1] = gOverworld.objects[i].y;
    sp[i][2] = gOverworld.objects[i].unk8;
  }
  for (i = 0; gE0E854[i] != -1; i++) {
    u8 j;
    u16 mask = 1;

    for (j = 0; j < 15; mask <<= 1, j++)
      if (arg0 & mask) {
        gOverworld.objects[j].x = sp[j][0];
        gOverworld.objects[j].y = sp[j][1];
        gOverworld.objects[j].unk8 = sp[j][2];
      }

    for (j = 0; j < gE0E854[i]; j++)
      sub_804F254();

    i++;

    for (mask = 1, j = 0; j < 15; mask <<= 1, j++)
      if (arg0 & mask) {
        gOverworld.objects[j].x = 0xC0;
        gOverworld.objects[j].y = 0xC0;
        gOverworld.objects[j].unk8 = 0;
      }

    for (j = 0; j < gE0E854[i]; j++)
      sub_804F254();
  }
}

void sub_8053884 (u16 arg0, u8 arg1, struct ScriptCtx* script) {
  int i, ii;
  u16 mask;
  switch (arg1) {
    case 0:
      script->unk86 = 0;
      sub_8053404(script);
      for (mask = 1, i = 0; i < 15; mask <<= 1, i++)
        if (arg0 & mask) {
          gOverworld.objects[i].wander = 0;
          gOverworld.objects[i].unk1Di = 0;
          gOverworld.objects[i].facePlayer = 0;
          gOverworld.objects[i].direction = 4;
          gOverworld.objects[i].unkE = 0;
          sub_804DF5C(i);
        }
      sub_804F254();
      break;
    case 1:
      script->unk86 = 0;
      sub_8053404(script);
      for (ii = 0; gE0E865[ii] != -1; ii++) {
        for (mask = 1, i = 0; i < 15; mask <<= 1, i++)
          if (arg0 & mask)
            gOverworld.objects[i].unkA = gE0E865[ii];
        sub_804F254();
      }
      break;
    case 2:
      sub_8053730(arg0, script);
      break;
  }
}

void sub_8053984 (u8 obj, u8 arg1, struct ScriptCtx* script) {
  int distance, i;
  s16 temp;

  script->unk86 = 0;
  sub_8053404(script);
  temp = arg1;
  if (arg1 > 223) {
    temp = (s8)arg1; // implementation defined?
  }
  gOverworld.objects[obj].direction = 3;
  distance = temp - gOverworld.objects[obj].x;
  if (gOverworld.objects[obj].x > temp) {
    gOverworld.objects[obj].direction = 1;
    distance = gOverworld.objects[obj].x - temp;
  }
  for (i = 0; i < distance; i++) {
    // Paradox brothers sound effect
    if (gOverworld.objects[obj].spriteId == 122 || gOverworld.objects[obj].spriteId == 123)
      if (i % 15 == 0)
        PlayMusic(0x139);

    gOverworld.objects[obj].x += g8E0E834[gOverworld.objects[obj].direction];
    gOverworld.objects[obj].y += g8E0E838[gOverworld.objects[obj].direction];
    sub_8052088(obj);
    sub_804F124(obj);
    sub_804DF5C(obj);
    sub_804F254();
    sub_804F254();
  }
  gOverworld.objects[obj].wander = 0;
  sub_804F19C(obj);
  sub_804DF5C(obj);
  sub_804F254();
}

void sub_8053A74 (u8 obj, u8 arg1, struct ScriptCtx* script) {
  int distance, i;
  s16 temp;

  script->unk86 = 0;
  sub_8053404(script);

  temp = arg1;
  if (arg1 > 223) {
    temp = (s8)arg1; // implementation defined?
  }
  gOverworld.objects[obj].direction = 0;
  distance = temp - gOverworld.objects[obj].y;
  if (gOverworld.objects[obj].y > temp) {
    gOverworld.objects[obj].direction = 2;
    distance = gOverworld.objects[obj].y - temp;
  }
  for (i = 0; i < distance; i++) {
    gOverworld.objects[obj].x += g8E0E834[gOverworld.objects[obj].direction];
    gOverworld.objects[obj].y += g8E0E838[gOverworld.objects[obj].direction];
    sub_8052088(obj);
    sub_804F124(obj);
    sub_804DF5C(obj);
    sub_804F254();
    sub_804F254();
  }
  gOverworld.objects[obj].wander = 0;
  sub_804F19C(obj);
  sub_804DF5C(obj);
  sub_804F254();
}

NAKED
void sub_8053B40(u8 reaction, u16 arg1, struct ScriptCtx* script) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0xc\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	str r0, [sp]\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	mov sl, r1\n\
	adds r1, r2, #0\n\
	adds r1, #0x86\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	adds r0, r2, #0\n\
	bl sub_8053404\n\
	movs r2, #0\n\
	ldr r4, _08053C0C\n\
	movs r0, #0xd8\n\
	ldr r1, [sp]\n\
	adds r3, r1, #0\n\
	muls r3, r0, r3\n\
	adds r0, r3, r4\n\
	ldr r1, [r0]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	beq _08053BFC\n\
	mov r8, r3\n\
	ldr r0, _08053C10\n\
	str r0, [sp, #4]\n\
_08053B84:\n\
	movs r7, #1\n\
	movs r5, #0\n\
	lsls r6, r2, #3\n\
	adds r2, #1\n\
	mov sb, r2\n\
	mov r1, r8\n\
	adds r0, r6, r1\n\
	ldr r2, _08053C0C\n\
	adds r1, r0, r2\n\
	ldr r4, [sp, #4]\n\
	adds r4, #0x2c\n\
_08053B9A:\n\
	mov r0, sl\n\
	ands r0, r7\n\
	cmp r0, #0\n\
	beq _08053BB0\n\
	ldr r0, [r1]\n\
	strb r0, [r4]\n\
	adds r0, r5, #0\n\
	str r1, [sp, #8]\n\
	bl sub_804EFE8\n\
	ldr r1, [sp, #8]\n\
_08053BB0:\n\
	lsls r0, r7, #0x11\n\
	lsrs r7, r0, #0x10\n\
	adds r4, #0x20\n\
	adds r5, #1\n\
	cmp r5, #0xe\n\
	ble _08053B9A\n\
	bl sub_804F28C\n\
	mov r1, r8\n\
	adds r0, r6, r1\n\
	ldr r2, _08053C14\n\
	adds r0, r0, r2\n\
	ldr r0, [r0]\n\
	cmp r0, #1\n\
	ble _08053BE8\n\
	movs r0, #0xd8\n\
	ldr r1, [sp]\n\
	muls r0, r1, r0\n\
	adds r0, r6, r0\n\
	adds r1, r2, #0\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	subs r5, r0, #1\n\
_08053BDE:\n\
	bl sub_804F28C\n\
	subs r5, #1\n\
	cmp r5, #0\n\
	bne _08053BDE\n\
_08053BE8:\n\
	mov r2, sb\n\
	lsls r0, r2, #3\n\
	add r0, r8\n\
	ldr r1, _08053C0C\n\
	adds r0, r0, r1\n\
	ldr r1, [r0]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _08053B84\n\
_08053BFC:\n\
	add sp, #0xc\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08053C0C: .4byte 0x08105114\n\
_08053C10: .4byte gOverworld\n\
_08053C14: .4byte 0x08105118");
}
/*
void sub_8053B40(u8 reaction, u16 arg1, struct ScriptCtx* script) {
  int i;

  script->unk86 = 0;
  sub_8053404(script);
  for (i = 0; g8105114[reaction][i][0] != -1; i++) {
    int j;
    u16 mask;
    for (mask = 1, j = 0; j < 15; mask <<= 1, j++) {
      if (arg1 & mask) {
        gOverworld.objects[j].unk1C = g8105114[reaction][i][0];
        sub_804EFE8(j);
      }
    }
    sub_804F28C();
    if (g8105114[reaction][i][1] < 2)
      continue;
    j = g8105114[reaction][i][1];
    while (--j)
      sub_804F28C();
  }
}*/

inline void sub_8053D50 (u8 obj, u8 arg1, struct ScriptCtx* script) {
  script->unk86 = 0;
  sub_8053404(script);
  gOverworld.objects[obj].spriteId = arg1;
  sub_804DF5C(obj);
  sub_804F1F4();
}

// move object faster (twice the "normal" speed)
inline void sub_8053D88 (u8 obj, u8 direction, u8 distance, struct ScriptCtx* script) {
  int i;

  script->unk86 = 0;
  sub_8053404(script);
  for (i = 0; i < distance / 2; i++) {
    gOverworld.objects[obj].x += g8E0E834[direction] * 2;
    gOverworld.objects[obj].y += g8E0E838[direction] * 2;
    sub_8052088(obj);
    sub_804DF5C(obj);
    sub_804F254();
  }
  gOverworld.objects[obj].wander = 0;
  sub_804F19C(obj);
  sub_804DF5C(obj);
  sub_804F254();
}

inline void sub_8053E34 (u8 arg0) {
  int i, temp;
  sub_805339C();
  sub_804F508();
  REG_BLDCNT = 0xFF;
  REG_WINOUT = 0x3D3E;
  for (i = 0; i < 16; i++) {
    REG_BLDY = i;
    temp = arg0;
    while (--temp != -1)
      sub_804F218();
  }
}

inline void sub_8053E94 (struct ScriptCtx* script) {
  script->unk1E = 0;
  if (CheckFlag(0x52) && CheckFlag(0x53) &&
      CheckFlag(0x54) && CheckFlag(0x55) && CheckFlag(0x56))
    script->unk1E = 1;
}

inline void sub_8053ED8 (struct ScriptCtx* script) {
  script->unk1E = 0;
  if (sub_8056070(0) == 1)
    script->unk1E = 1;
}

inline void sub_8053EF0 (struct ScriptCtx* script) {
  script->unk1E = 0;
  if (sub_8056070(1) == 1)
    script->unk1E = 1;
}

inline void sub_8053F0C (struct ScriptCtx* script) {
  script->unk1E = 0;
  if (sub_8027018(1000) == 1)
    script->unk1E = 1;
}

void sub_8053C18 (struct ScriptCtx* script, u8 arg1) {
  switch (arg1) {
    case 0:
      sub_8053E94(script);
      break;
    case 1:
      sub_8053ED8(script);
      break;
    case 2:
      sub_8053EF0(script);
      break;
    case 3:
      sub_8053F0C(script);
      break;
  }
}

//unused? inline?
void sub_8053CA8 (u8 obj, u16 x, u16 y, struct ScriptCtx* script) {
  script->unk86 = 0;
  sub_8053404(script);
  gOverworld.objects[obj].x = x;
  gOverworld.objects[obj].y = y;
  sub_8052088(obj);
  sub_804DF5C(obj);
  sub_804F218();
}
