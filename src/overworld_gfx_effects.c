#include "global.h"

// -----------------split?-------------
extern struct UnkFC4618 {
  u8 unk0;
  u8 unk1;
  u8 filler2[2];
  struct OamQM {
    u16 unk0;
    u16 unk2;
    u16 unk4;
  } * unk4;
} ** g8FC4618[];

struct Unk1234 {
  u8 unk0;
  u8 unk1;
  u16 unk2;
  s16 unk4;
  u8 unk6bit0:2;
};

extern u8 g8E0E08C[];
extern u8 gSharedMem[];

extern s8 g8E0E091[];
extern s8 g8E0E099[];
extern s8 g8E0E0A2[];
extern s8 g8E0E2FF[];
extern u32* g8E0E324[];
extern u8 g8E0E36C[];
extern u16* g8E0E33C[];
extern u16* g8E0E354[];
extern u16 g8E0E372[];
extern s8 g8E0E311[];
extern u8 g8E0E37E[];

void sub_805787C (int);
void sub_804F850 (struct Unk1234* arg0, u32 arg1, u32 arg2);

extern struct OamData gOamBuffer[];

/*
void sub_804F78C (u16 arg0) {
  u8 i, j;
  for (i = 23; i < 26; i++) {
    int temp = g8E0E08C[i - 23] + 29;
    u8 r4 = temp - arg0 % 29;
    if (r4 >= 29)
      r4 -= 29;
    for (j = 0; j < 16; j++)
      g02000000.bg[i * 16 + j] = 0;
    if (arg0 <= g8E0E08C[i - 23])
      continue;
    for (j = 1; j < 16; j++) {
      if (r4 + j > 14)
        if (r4 + j < 31) {
          *(g02000000.bg - 14 + i * 16 + r4 + j) = gSharedMem[i * 16 + j];
        }
    }
  }
}*/

NAKED
void sub_804F78C (u16 arg0) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r8, r0\n\
	movs r5, #0x17\n\
	ldr r0, _0804F840\n\
	mov sb, r0\n\
	mov r0, r8\n\
	movs r1, #0x1d\n\
	bl __umodsi3\n\
	mov sl, r0\n\
_0804F7AC:\n\
	adds r1, r5, #0\n\
	subs r1, #0x17\n\
	mov r2, sb\n\
	adds r0, r1, r2\n\
	ldrb r0, [r0]\n\
	adds r0, #0x1d\n\
	mov r2, sl\n\
	subs r0, r0, r2\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r7, r1, #0\n\
	cmp r4, #0x1c\n\
	bls _0804F7CE\n\
	adds r0, r4, #0\n\
	subs r0, #0x1d\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
_0804F7CE:\n\
	movs r2, #0\n\
	lsls r1, r5, #4\n\
	adds r5, #1\n\
	mov ip, r5\n\
	ldr r6, _0804F844\n\
	adds r3, r1, #0\n\
	movs r5, #0\n\
_0804F7DC:\n\
	adds r0, r3, r2\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r6\n\
	strh r5, [r0]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
	cmp r2, #0xf\n\
	bls _0804F7DC\n\
	mov r2, sb\n\
	adds r0, r7, r2\n\
	ldrb r0, [r0]\n\
	cmp r8, r0\n\
	bls _0804F826\n\
	movs r2, #1\n\
	adds r3, r1, #0\n\
	adds r5, r3, r4\n\
	ldr r7, _0804F848\n\
	ldr r6, _0804F84C\n\
_0804F802:\n\
	adds r0, r4, r2\n\
	cmp r0, #0xe\n\
	ble _0804F81C\n\
	cmp r0, #0x1e\n\
	bgt _0804F81C\n\
	adds r0, r5, r2\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r7\n\
	adds r1, r3, r2\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r6\n\
	ldrh r1, [r1]\n\
	strh r1, [r0]\n\
_0804F81C:\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
	cmp r2, #0xf\n\
	bls _0804F802\n\
_0804F826:\n\
	mov r1, ip\n\
	lsls r0, r1, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #0x19\n\
	bls _0804F7AC\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0804F840: .4byte 0x08E0E08C\n\
_0804F844: .4byte 0x02000000\n\
_0804F848: .4byte 0x01FFFFE4\n\
_0804F84C: .4byte 0x02018800");
}



/*
inline u32 sub_8051520_inline (struct Unk1234* arg0, u16 arg1) {
  u32 ret = 448;
  int temp = arg1 + arg0->unk2;
  if (temp >= 448) {
    ret += 63;
    ret = temp & ret;
  }
  if (temp <= 240) {
    ret += 511;
    ret = temp & ret;
  }
  return ret;
}*/

inline u16 sub_8051554_inline (struct Unk1234* arg0, s16 arg1) {
  u16 ret = 192;
  if (arg1 + arg0->unk4 >= 192)
    ret = arg1 + arg0->unk4 & 0xFF;
  if (arg1 + arg0->unk4 <= 160)
    ret = arg1 + arg0->unk4 & 0xFF;
  return ret;
}

inline void sub_8051584 (void) {
  CpuCopy16(g02000000.bg, gSharedMem, 0x400);
}

inline void sub_80515A0 (void) {
  CpuCopy16(gSharedMem, g02000000.bg, 0x400);
}

inline void sub_80515BC (void) {
  CpuCopy16(gOamBuffer, gSharedMem + 0x400, 0x400);
}

inline void sub_80515D8 (void) {
  CpuCopy16(gSharedMem + 0x400, gOamBuffer, 0x400);
}

inline void sub_80515F4 (void) {
  u32 i;
  for (i = 0; g8E0E091[i] >= 0; i++) {
    sub_80515A0();
    sub_8044F80(g02000000.bg, 0, 0x1FF, g8E0E091[i]);
    WaitForVBlank();
    LoadPalettes();
  }
}

inline void sub_8051648 (void) {
  u32 i;
  for (i = 0; g8E0E099[i] >= 0; i++) {
    sub_80515A0();
    sub_8044F80(g02000000.bg, 0, 0x16F, g8E0E099[i]);
    sub_8044F80(g02000000.bg, 0x1C0, 0x1FF, g8E0E099[i]);
    WaitForVBlank();
    LoadPalettes();
  }
}

inline void sub_80516B0 (u32 unsued, u8 arg0) {
  u32 i;
  for (i = 0; g8E0E0A2[i] >= 0; i++) {
    gBLDALPHA = g8E0E0A2[i] << 8 | 0x10;
    WaitForVBlank();
    LoadBlendingRegs();
    sub_805787C(arg0);
  }
}

inline void sub_80516F8 (void) {
  u8 i;
  for (i = 1; i < 82; i++)
    sub_80411EC(gOamBuffer + i);
}

inline void sub_805171C (void) {
  u8 i;
  for (i = 82; i < 97; i++)
    sub_80411EC(gOamBuffer + i);
}

inline void sub_8051740 (void) {
  sub_80516F8();
  WaitForVBlank();
  LoadOam();
}

//sp  = arg1 * 2
//sp4 = r7 = arg2 * 8
//r8 = i
/*
void sub_804F850 (struct Unk1234* arg0, u32 arg1, u32 arg2) {
  int i;
  for (i = 1; i < 66; i++)
    sub_80411EC(gOamBuffer + i);
  for (i = 0; i < g8FC4618[arg0->unk0][arg1][arg2].unk1; i++) {
    u16 sb = g8FC4618[arg0->unk0][arg1]->unk4[i].unk0;
    u16 r3 = sub_8051554_inline(arg0, g8FC4618[arg0->unk0][arg1]->unk4[i].unk0);
    u16* oam = (u16*)gOamBuffer;
    int temp = (g8FC4618[arg0->unk0][arg1][arg2].unk1 - i) * 4;
    r3 |= sb & 0xFF00;
    oam[temp] = r3;
  }
}*/

NAKED
void sub_804F850 (struct Unk1234* arg0, u32 arg1, u32 arg2) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #8\n\
	adds r5, r0, #0\n\
	adds r6, r1, #0\n\
	adds r7, r2, #0\n\
	ldr r0, _0804F8A4\n\
	adds r4, r0, #0\n\
	adds r4, #8\n\
	movs r0, #0x41\n\
	mov r8, r0\n\
_0804F86C:\n\
	adds r0, r4, #0\n\
	bl sub_80411EC\n\
	adds r4, #8\n\
	movs r1, #1\n\
	rsbs r1, r1, #0\n\
	add r8, r1\n\
	mov r2, r8\n\
	cmp r2, #0\n\
	bge _0804F86C\n\
	movs r3, #0\n\
	mov r8, r3\n\
	ldr r1, _0804F8A8\n\
	ldrb r2, [r5]\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	lsls r6, r6, #2\n\
	mov ip, r6\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	lsls r7, r7, #3\n\
	adds r0, r7, r0\n\
	mov r4, ip\n\
	str r4, [sp]\n\
	str r7, [sp, #4]\n\
	b _0804FA00\n\
	.align 2, 0\n\
_0804F8A4: .4byte gOamBuffer\n\
_0804F8A8: .4byte 0x08FC4618\n\
_0804F8AC:\n\
	lsls r0, r2, #2\n\
	ldr r6, _0804FA18\n\
	adds r0, r0, r6\n\
	ldr r0, [r0]\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	adds r6, r7, r0\n\
	ldr r0, [r6, #4]\n\
	mov r2, r8\n\
	lsls r1, r2, #3\n\
	adds r0, r1, r0\n\
  \n\
	ldrh r3, [r0]\n\
	mov sb, r3\n\
	movs r3, #0xc0\n\
	ldrb r2, [r0]\n\
	movs r4, #4\n\
	ldrsh r0, [r5, r4]\n\
	adds r4, r2, r0\n\
	mov sl, r1\n\
	cmp r4, #0xbf\n\
	ble _0804F8DE\n\
	ldrh r0, [r5, #4]\n\
	adds r3, r2, r0\n\
	movs r0, #0xff\n\
	ands r3, r0\n\
_0804F8DE:\n\
	cmp r4, #0xa0\n\
	bgt _0804F8EA\n\
	ldrh r0, [r5, #4]\n\
	adds r3, r2, r0\n\
	movs r1, #0xff\n\
	ands r3, r1\n\
_0804F8EA:\n\
	ldr r2, _0804FA1C\n\
	ldrb r1, [r6, #1]\n\
	mov r4, r8\n\
	subs r1, r1, r4\n\
	lsls r1, r1, #3\n\
	adds r1, r1, r2\n\
	movs r0, #0xff\n\
	lsls r0, r0, #8\n\
	mov r6, sb\n\
	ands r0, r6\n\
	orrs r3, r0\n\
	movs r4, #0\n\
	strh r3, [r1]\n\
	ldrb r1, [r5, #6]\n\
	movs r3, #3\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	movs r1, #1\n\
	add r1, r8\n\
	mov sb, r1\n\
	cmp r0, #1\n\
	bne _0804F93C\n\
	ldrb r0, [r5]\n\
	lsls r0, r0, #2\n\
	ldr r6, _0804FA18\n\
	adds r0, r0, r6\n\
	ldr r0, [r0]\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	adds r0, r7, r0\n\
	ldrb r0, [r0, #1]\n\
	subs r0, r0, r1\n\
	adds r0, #1\n\
	lsls r0, r0, #3\n\
	adds r0, r0, r2\n\
	ldrh r1, [r0]\n\
	movs r6, #0x80\n\
	lsls r6, r6, #3\n\
	adds r2, r6, #0\n\
	orrs r1, r2\n\
	strh r1, [r0]\n\
_0804F93C:\n\
	ldrb r1, [r5, #6]\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	ldrb r2, [r5]\n\
	cmp r0, #2\n\
	bne _0804F96C\n\
	lsls r0, r2, #2\n\
	ldr r1, _0804FA18\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	adds r0, r7, r0\n\
	ldrb r0, [r0, #1]\n\
	subs r0, #1\n\
	cmp r8, r0\n\
	bne _0804F96C\n\
	ldr r3, _0804FA1C\n\
	ldrh r0, [r3, #8]\n\
	movs r4, #0x80\n\
	lsls r4, r4, #4\n\
	adds r1, r4, #0\n\
	orrs r0, r1\n\
	strh r0, [r3, #8]\n\
_0804F96C:\n\
	lsls r0, r2, #2\n\
	ldr r6, _0804FA18\n\
	adds r0, r0, r6\n\
	ldr r0, [r0]\n\
	ldr r7, [sp]\n\
	adds r0, r7, r0\n\
	ldr r0, [r0]\n\
	ldr r1, [sp, #4]\n\
	adds r4, r1, r0\n\
	ldr r0, [r4, #4]\n\
	add r0, sl\n\
	ldrh r6, [r0, #2]\n\
	ldr r3, _0804FA20\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #1\n\
	adds r0, r3, #0\n\
	ands r0, r6\n\
	ldrh r7, [r5, #2]\n\
	adds r1, r0, r7\n\
	ldr r0, _0804FA24\n\
	cmp r1, r0\n\
	ble _0804F99C\n\
	adds r2, r1, #0\n\
	ands r2, r3\n\
_0804F99C:\n\
	cmp r1, #0xf0\n\
	bgt _0804F9A4\n\
	adds r2, r3, #0\n\
	ands r2, r1\n\
_0804F9A4:\n\
	ldrb r1, [r4, #1]\n\
	mov r0, sb\n\
	subs r1, r1, r0\n\
	adds r1, #1\n\
	lsls r1, r1, #2\n\
	adds r1, #1\n\
	lsls r1, r1, #1\n\
	ldr r3, _0804FA1C\n\
	adds r1, r1, r3\n\
	movs r0, #0xfe\n\
	lsls r0, r0, #8\n\
	ands r0, r6\n\
	orrs r2, r0\n\
	strh r2, [r1]\n\
	ldrb r0, [r5]\n\
	lsls r0, r0, #2\n\
	ldr r4, _0804FA18\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	ldr r6, [sp]\n\
	adds r0, r6, r0\n\
	ldr r0, [r0]\n\
	ldr r7, [sp, #4]\n\
	adds r0, r7, r0\n\
	ldrb r1, [r0, #1]\n\
	mov r2, sb\n\
	subs r1, r1, r2\n\
	adds r1, #1\n\
	lsls r1, r1, #2\n\
	adds r1, #2\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r3\n\
	ldr r0, [r0, #4]\n\
	add r0, sl\n\
	ldrh r0, [r0, #4]\n\
	strh r0, [r1]\n\
	mov r8, sb\n\
	ldrb r2, [r5]\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	mov ip, r6\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	ldr r7, [sp, #4]\n\
	adds r0, r7, r0\n\
_0804FA00:\n\
	ldrb r0, [r0, #1]\n\
	cmp r8, r0\n\
	bge _0804FA08\n\
	b _0804F8AC\n\
_0804FA08:\n\
	add sp, #8\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0804FA18: .4byte 0x08FC4618\n\
_0804FA1C: .4byte gOamBuffer\n\
_0804FA20: .4byte 0x000001FF\n\
_0804FA24: .4byte 0x000001BF");
}

extern u32* g8FC4440[];
extern u32* g8FC452C[];

// overworld effect sprite tiles and pal (obtaining god cards etc.)
void sub_804FA28 (struct Unk1234* arg0) {
  int i, j;
  u8* src;
  u8* dest;

  LZ77UnCompWram(g8FC4440[arg0->unk0], gSharedMem + 0x400);

  src = gSharedMem + 0x400;
  dest = gBgVram.cbb5;
  for (i = 0; i < 16; dest += 0x200, i++)
    for (j = 0; j < 512; j++)
      *dest++ = *src++;

  src = gSharedMem + 0x2400;
  dest = gBgVram.cbb5 + 0x200;
  for (i = 0; i < 12; dest += 0x200, i++)
    for (j = 0; j < 512; j++)
      *dest++ = *src++;

  CpuCopy16(g8FC452C[arg0->unk0], g02000000.bg + 0x170, 0xA0);
  if (CheckFlag(0xF3))
    sub_8044E50(g02000000.bg, 0x170, 0x1BF);
  WaitForVBlank();
  sub_804F2DC();
}


// sub_804FA28 doesn't match if this function is put above it
inline void sub_805176C (struct Unk1234* arg0, u32 arg1) {
  int i, j;
  for (i = 0; g8FC4618[arg0->unk0][arg1][i].unk0; i++) {
    sub_804F850(arg0, arg1, i);
    for (j = 0; j < g8FC4618[arg0->unk0][arg1][i].unk0; j++) {
      WaitForVBlank();
      LoadOam();
    }
  }
}

inline void sub_8051814 (struct Unk1234* arg0) {
  int i;
  for (i = 0; g8FC4618[arg0->unk0][i]; i++) {
    sub_805176C(arg0, i);
  }
}

NAKED
inline void sub_80518E4 (void) {
  asm_unified("push {r4, r5, lr}\n\
	ldr r2, _0805191C @ =0x02018400\n\
	ldrb r1, [r2, #1]\n\
	movs r3, #0xd\n\
	rsbs r3, r3, #0\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	movs r1, #4\n\
	orrs r0, r1\n\
	strb r0, [r2, #1]\n\
	movs r4, #0x70\n\
	adds r5, r3, #0\n\
	movs r3, #4\n\
	ldr r0, _08051920 @ =0x00000E01\n\
	adds r2, r2, r0\n\
_08051902:\n\
	ldrb r1, [r2]\n\
	adds r0, r5, #0\n\
	ands r0, r1\n\
	orrs r0, r3\n\
	strb r0, [r2]\n\
	adds r2, #0x20\n\
	adds r4, #1\n\
	cmp r4, #0x7f\n\
	ble _08051902\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0805191C: .4byte 0x02018400\n\
_08051920: .4byte 0x00000E01");
}

/*
inline void sub_80518E4 (void) {
  int i;
  gOamBuffer[0].objMode = 1;
  // UB and BUG: array access out of bounds
  for (i = 112; i < 128; i++)
    gOamBuffer[i * 4].objMode = 1;
}

inline void sub_8051924 (void) {
  int i;
  gOamBuffer[0].objMode = 0;
  // UB and BUG: array access out of bounds
  for (i = 112; i < 128; i++)
    gOamBuffer[i * 4].objMode = 0;
}*/

NAKED
inline void sub_8051924 (void) {
  asm_unified("\n\
	push {r4, lr}\n\
	ldr r1, _08051950 @ =0x02018400\n\
	ldrb r2, [r1, #1]\n\
	movs r3, #0xd\n\
	rsbs r3, r3, #0\n\
	adds r0, r3, #0\n\
	ands r0, r2\n\
	strb r0, [r1, #1]\n\
	movs r4, #0x70\n\
	ldr r0, _08051954 @ =0x00000E01\n\
	adds r2, r1, r0\n\
_0805193A:\n\
	ldrb r1, [r2]\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	strb r0, [r2]\n\
	adds r2, #0x20\n\
	adds r4, #1\n\
	cmp r4, #0x7f\n\
	ble _0805193A\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08051950: .4byte 0x02018400\n\
_08051954: .4byte 0x00000E01");
}



extern u8 g8E0E0D2[];
extern u8 g8E0E0AC[];
extern s8 g8E0E11C[];

void sub_804FB04 (struct Unk1234* arg0) {
  int i, j, k;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 1;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  sub_8051584();
  for (i = 0; g8FC4618[arg0->unk0][i]; i++) {
    for (j = 0; g8FC4618[arg0->unk0][i][j].unk0; j++) {
      sub_804F850(arg0, i, j);
      sub_80515A0();
      sub_8044EC8(g02000000.bg, 0, 0x16F, g8E0E0D2[j]);
      sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E0D2[j]);
      sub_8044F80(g02000000.bg, 0, 0x1FF, g8E0E0AC[j]);
      for (k = 0; k < g8FC4618[arg0->unk0][i][j].unk0; k++) {
        WaitForVBlank();
        LoadOam();
        LoadPalettes();
      }
    }
  }
  sub_8051740();
}

extern u8 gE0E0F8[];
extern s16 gE0E146[];
extern s16 gE0DB14[];

void sub_804FC84 (struct Unk1234* arg0) {
  int i, j, k;
  u8 ii;

  arg0->unk6bit0 = 1;
  gBLDCNT = 0x2F00;
  gBLDALPHA = gE0E0F8[0] << 8 | 0x10;
  sub_804FA28(arg0);
  i = 0;
  if (gE0E146[arg0->unk0] != -1)
    PlayMusic(gE0E146[arg0->unk0]);
  for (; gE0DB14[i + 2] != - 1; i += 3) {
    arg0->unk2 = gE0DB14[i];
    arg0->unk4 = gE0DB14[i + 1];
    sub_805176C(arg0, arg0->unk1);
    gBLDALPHA = gE0E0F8[i / 3] << 8 | 0x10;
    for (k = gE0DB14[i + 2]; k > 0; k--) {
      WaitForVBlank();
      LoadBlendingRegs();
    }
  }
  sub_8051740();

  for (i = 0; g8E0E11C[i] >= 0; i++) {
    sub_80515A0();
    sub_8044F80(g02000000.bg, 0, 0x1FF, g8E0E11C[i]);
    WaitForVBlank();
    LoadPalettes();
  }
}

extern s16 (*g8E0DFC0[])[3];

extern s8 g8E0E1D2[];

void sub_804FE78 (struct Unk1234* arg0) {
  int i, j;

  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  for (i = 0; g8E0DFC0[arg0->unk0][i][2] != - 1; i++) {
    arg0->unk2 = g8E0DFC0[arg0->unk0][i][0];
    arg0->unk4 = g8E0DFC0[arg0->unk0][i][1];
    sub_8051814(arg0);
    if (g8E0E1D2[arg0->unk0] == i)
      PlayMusic(0x14E);
    for (j = g8E0DFC0[arg0->unk0][i][2]; j > 0; j--)
      WaitForVBlank();
  }
}

void sub_8050028 (struct Unk1234* arg0) {
  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  sub_8051814(arg0);
}

void sub_8050114 (struct Unk1234* arg0) {
  int i, j;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  for (i = 0; g8FC4618[arg0->unk0][arg0->unk1][i].unk0; i++) {
    sub_80516F8();
    sub_804F850(arg0, arg0->unk1, i);
    if (g8E0E1D2[arg0->unk0] == i)
      PlayMusic(0x14E);
    for (j = 0; j < g8FC4618[arg0->unk0][arg0->unk1][i].unk0; j++) {
      WaitForVBlank();
      LoadOam();
    }
  }
  sub_8051740();
}

extern u8 g8E0E20E[];
extern s8 g8E0E284[];



void sub_805022C (struct Unk1234* arg0) {
  int i, j;
  u8 ii;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  sub_8051584();
  for (i = 0; g8FC4618[arg0->unk0][arg0->unk1][i].unk0; i++) {
    sub_804F850(arg0, arg0->unk1, i);
    if (g8E0E1D2[arg0->unk0] == i)
      PlayMusic(0x14E);
    if (g8E0E20E[i] < 6) {
      sub_80515A0();
      sub_8044EC8(g02000000.bg, 0, 0x16F, g8E0E20E[i]);
      sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E20E[i]);
    }
    WaitForVBlank();
    LoadOam();
    LoadPalettes();
    j = 1;
    while (g8FC4618[arg0->unk0][arg0->unk1][i].unk0 > j++)
      WaitForVBlank();
  }
  for (i = 0; g8E0E284[i] >= 0; i++) {
    sub_80515A0();
    sub_8044EC8(g02000000.bg, 0, 0x16F, g8E0E284[i]);
    sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E284[i]);
    WaitForVBlank();
    LoadPalettes();
  }
  sub_8051740();
}

void sub_80503D8 (struct Unk1234* arg0) {
  int i, j, k;
  int sb;
  u8 ii;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  sub_8051584();
  sb = 0;
  for (i = 0; g8FC4618[arg0->unk0][i]; i++) {
    for (j = 0; g8FC4618[arg0->unk0][i][j].unk0; j++) {
      sub_804F850(arg0, i, j);
      for (k = 0; k < g8FC4618[arg0->unk0][i][j].unk0; k++) {
        sub_80515A0();
        if (j > 9) {
          sb += 2;
          if (sb > 16)
            sb = 16;
          sub_8044F80(g02000000.bg, 0, 0x1FF, sb);
        }
        WaitForVBlank();
        LoadOam();
        LoadPalettes();
      }
    }
  }
  sub_8051740();
  sub_80515F4();
}

void sub_8050584 (struct Unk1234* arg0) {
  int i, j, k;
  int sl;
  u8 ii;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  sub_8051584();

  for (i = 0, sl = 0; g8FC4618[arg0->unk0][i]; i++) {
    for (j = 0; g8FC4618[arg0->unk0][i][j].unk0; j++) {
      sub_804F850(arg0, i, j);
      sub_80515A0();
      sub_8044EC8(g02000000.bg, 0, 0x16F, g8E0E20E[j]);
      sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E20E[j]);
      if (j > 10) {
        sl += 3;
        if (sl > 16)
          sl = 16;
        sub_8044F80(g02000000.bg, 0, 0x1FF, sl);
      }
      for (k = 0; k < g8FC4618[arg0->unk0][i][j].unk0; k++) {
        WaitForVBlank();
        LoadOam();
        LoadPalettes();
      }
    }
  }
  sub_8051740();
  sub_80515F4();
}

extern s8 g8E0E2A0[];
extern s8 g8E0E295[];
extern s8 g8E0E2B2[];

void sub_8050748 (struct Unk1234* arg0) {
  int i, r5, r4;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 2;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  sub_8051584();
  sub_80515BC();
  sub_805171C();
  WaitForVBlank();
  LoadOam();
  for (i = 0; g8E0E2A0[i] >= 0; i++) {
    sub_8044EC8(g02000000.bg, 1, 0x19F, g8E0E2A0[i]);
    sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E2A0[i]);
    g02000000.bg[0] = 0xFFFF;
    WaitForVBlank();
    LoadPalettes();
  }
  REG_WINOUT = 0x3F;
  REG_DISPCNT = 0x9F00;
  sub_804F850(arg0, 0, 0);
  WaitForVBlank();
  LoadOam();
  for (i = 0; g8FC4618[arg0->unk0][i]; i++) {
    for (r5 = 0; g8E0E295[r5 / 29] >= 0; r5++) {
      sub_804F78C(r5);
      for (r4 = 0; r4 <= g8E0E295[r5 / 29]; r4++) {
        WaitForVBlank();
        LoadPalettes();
        LoadOam();
      }
    }
  }
  sub_80515D8();
  sub_8051740();
  REG_DISPCNT = 0x1F00;
  for (i = 0; g8E0E2B2[i] >= 0; i++) {
    sub_80515A0();
    sub_8044EC8(g02000000.bg, 0, 0x16F, g8E0E2B2[i]);
    sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E2B2[i]);
    WaitForVBlank();
    LoadPalettes();
  }
}

void sub_8050978 (struct Unk1234* arg0) {
  int i, j, k;
  u8 jj;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  sub_8051584();
  for (i = 0; g8FC4618[arg0->unk0][i]; i++) {
    for (j = 0; g8FC4618[arg0->unk0][i][j].unk0; j++) {
      sub_804F850(arg0, i, j);
      sub_80515A0();
      sub_8044EC8(g02000000.bg, 0, 0x13F, g8E0E20E[j]);
      sub_8044EC8(g02000000.bg, 0x150, 0x16F, g8E0E20E[j]);
      sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E20E[j]);
      for (k = 0; k < g8FC4618[arg0->unk0][i][j].unk0; k++) {
        WaitForVBlank();
        LoadOam();
        LoadPalettes();
      }
    }
  }
  for (i = 0; g8E0E284[i] >= 0; i++) {
    sub_80515A0();
    sub_8044EC8(g02000000.bg, 0, 0x13F, g8E0E284[i]);
    sub_8044EC8(g02000000.bg, 0x150, 0x16F, g8E0E284[i]);
    sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E284[i]);
    WaitForVBlank();
    LoadPalettes();
  }
  sub_8051740();
}

void sub_8050B50 (struct Unk1234* arg0) {
  int sb;
  int i, j, k;
  u8 jj;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_804FA28(arg0);
  sub_8051584();
  sb = 0;
  for (i = 0; g8FC4618[arg0->unk0][i]; i++) {
    for (j = 0; g8FC4618[arg0->unk0][i][j].unk0; j++) {
      sub_804F850(arg0, i, j);
      for (k = 0; k < g8FC4618[arg0->unk0][i][j].unk0; k++) {
        sub_80515A0();
        if (j > 3) {
          sb++;
          if (sb > 16)
            sb = 16;
          sub_8044F80(g02000000.bg, 0, 0x1FF, sb);
        }
        WaitForVBlank();
        LoadOam();
        LoadPalettes();
      }
    }
  }
  sub_8051740();
}

extern s8 g8E0E2C4[];

void sub_8050CC0 (struct Unk1234* arg0) {
  int r8;
  int i, j, k;
  u8 jj;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0xBF;
  gBLDY = 0;
  sub_804FA28(arg0);
  sub_8051584();
  r8 = 0;
  for (j = 0; g8FC4618[arg0->unk0][arg0->unk1][j].unk0; j++) {
    sub_804F850(arg0, arg0->unk1, j);
    for (k = 0; k < g8FC4618[arg0->unk0][arg0->unk1][j].unk0; k++) {
      gBLDY = 0;
      if (k == 0 && g8E0E2C4[j] == 1) {
        gBLDY = 8;
        WaitForVBlank();
        LoadBlendingRegs();
        LoadOam();
        LoadPalettes();
        sub_80515A0();
        sub_8044EC8(g02000000.bg, 0, 0x16F, g8E0E20E[j]);
        sub_8044EC8(g02000000.bg, 0x1C0, 0x1FF, g8E0E20E[j]);
      }
      else if (g8E0E2C4[j] > 2) {
        r8 += 2;
        if (r8 > 16)
          r8 = 16;
        gBLDY = r8;
        WaitForVBlank();
        LoadBlendingRegs();
        LoadOam();
        LoadPalettes();
      }
      else {
        WaitForVBlank();
        LoadBlendingRegs();
        LoadOam();
        LoadPalettes();
      }
    }
  }
  sub_8051740();
  for (j = 0; g8E0E091[j] >= 0; j++) {
    sub_80515A0();
    sub_8044F80(g02000000.bg, 0, 0x1FF, g8E0E091[j]);
    WaitForVBlank();
    LoadPalettes();
  }
}

void sub_8050EE0 (struct Unk1234* arg0) {
  int i;
  u8 jj;

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 0;
  gBLDCNT = 0;
  sub_8051584();

  for (i = 0; g8E0E2FF[i] >= 0; i++) {
    sub_80515A0();
    sub_8044EC8(g02000000.bg, 0, 0x1FF, g8E0E2FF[i]);
    WaitForVBlank();
    LoadPalettes();
  }
  for (i = 0; i < 6; i++) {
    LZ77UnCompWram(g8E0E324[i], gBgVram.cbb0 + g8E0E36C[i]);
    CpuCopy16(g8E0E33C[i], gBgVram.cbb0 + g8E0E372[i] * 2, 0x800); /*use u16 ptr arithmetic instead*/
    CpuCopy16(g8E0E354[i], g02000000.bg + g8E0E37E[i], 0x1E0);
    WaitForVBlank();
    sub_804EC4C();
    sub_805787C(0x80);
  }
  for (i = 0; g8E0E311[i] >= 0; i++) {
    sub_80515A0();
    sub_8044EC8(g02000000.bg, 0, 0x1FF, g8E0E311[i]);
    WaitForVBlank();
    LoadPalettes();
  }
}

void sub_8051010 (struct Unk1234* arg0) {
  sub_8051740();

  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 1;
  gBLDCNT = 0x2F00;
  gBLDALPHA = 0x10;
  sub_804FA28(arg0);
  sub_8051584();
  sub_8051648();

  sub_804F850(arg0, arg0->unk1, 0);
  WaitForVBlank();
  LoadOam();
  sub_805787C(8);
  sub_80516B0(0, 0);
  sub_8051740();
}

void sub_8051144 (struct Unk1234* arg0) {
  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 1;
  gBLDCNT = 0x2F00;
  gBLDALPHA = 0x10;
  sub_804FA28(arg0);
  sub_804F850(arg0, arg0->unk1, 0);
  WaitForVBlank();
  LoadOam();
  sub_805787C(8);
  sub_80516B0(0, 0);
  sub_8051740();
}

void sub_80511EC (struct Unk1234* arg0) {
  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6bit0 = 1;
  gBLDCNT = 0x2F00;
  gBLDALPHA = 0x10;
  sub_804FA28(arg0);
  sub_804F850(arg0, arg0->unk1, 0);
  WaitForVBlank();
  LoadOam();
  sub_805787C(32);
  sub_80516B0(0, 1);
  sub_8051740();
  sub_80515F4();
}

void sub_80512E0 (struct ScriptCtx* scriptCtx, u8 effect) {
  struct Unk1234 unk1234;
  unk1234.unk0 = effect;
  switch (g8E0E384[unk1234.unk0]) {
    case 1:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_804FB04(&unk1234);
      unk1234.unk0 = effect + 1;
      unk1234.unk1 = 0;
      sub_804FC84(&unk1234);
      break;
    case 2:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_8050028(&unk1234);
      break;
    case 3:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_804FE78(&unk1234);
      break;
    case 4:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      unk1234.unk1 = 0;
      sub_8050114(&unk1234);
      break;
    case 5:
      scriptCtx->unk86 = 0;
      unk1234.unk1 = 0;
      sub_8053404(scriptCtx);
      sub_805022C(&unk1234);
      break;
    case 6:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_8050978(&unk1234);
      break;
    case 7:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_8050748(&unk1234);
      break;
    case 8:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_8050584(&unk1234);
      break;
    case 9:
      scriptCtx->unk86 = 0;
      unk1234.unk1 = 0;
      sub_8053404(scriptCtx);
      sub_8050CC0(&unk1234);
      break;
    case 10:
      scriptCtx->unk86 = 0;
      unk1234.unk0 = 4;
      sub_8053404(scriptCtx);
      sub_804FB04(&unk1234);
      unk1234.unk0 = 41;
      unk1234.unk1 = 0;
      sub_804FC84(&unk1234);
      break;
    case 11:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_80503D8(&unk1234);
      break;
    case 12:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_8050B50(&unk1234);
      break;
    case 13:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      sub_8050EE0(&unk1234);
      break;
    case 14:
      scriptCtx->unk86 = 0;
      unk1234.unk1 = 1;
      sub_8053404(scriptCtx);
      sub_805022C(&unk1234);
      break;
    case 15:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      unk1234.unk1 = 1;
      sub_8051010(&unk1234);
      unk1234.unk0 = 45;
      unk1234.unk1 = 0;
      sub_8051144(&unk1234);
      unk1234.unk0 = 46;
      unk1234.unk1 = 1;
      sub_80511EC(&unk1234);
      break;
    case 16:
      scriptCtx->unk86 = 0;
      unk1234.unk1 = 2;
      sub_8053404(scriptCtx);
      sub_805022C(&unk1234);
      break;
    case 17:
      scriptCtx->unk86 = 0;
      sub_8053404(scriptCtx);
      unk1234.unk1 = 1;
      sub_8051010(&unk1234);
      unk1234.unk0 = 22;
      unk1234.unk1 = 0;
      sub_80511EC(&unk1234);
      break;
  }
}

NAKED
u32 sub_8051520_inline (struct Unk1234* arg0, u16 arg1) {
  asm_unified("\n\
  lsls r1, r1, #0x10\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #1\n\
	lsrs r1, r1, #0x10\n\
	ldrh r0, [r0, #2]\n\
	adds r1, r1, r0\n\
	ldr r0, _0805154C @ =0x000001BF\n\
	cmp r1, r0\n\
	ble _0805153A\n\
	adds r2, #0x3f\n\
	adds r0, r2, #0\n\
	adds r2, r1, #0\n\
	ands r2, r0\n\
_0805153A:\n\
	cmp r1, #0xf0\n\
	bgt _08051546\n\
	ldr r2, _08051550 @ =0x000001FF\n\
	adds r0, r2, #0\n\
	adds r2, r0, #0\n\
	ands r2, r1\n\
_08051546:\n\
	adds r0, r2, #0\n\
	bx lr\n\
	.align 2, 0\n\
_0805154C: .4byte 0x000001BF\n\
_08051550: .4byte 0x000001FF");
}


