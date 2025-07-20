#include "global.h"

extern struct {
  unsigned short unk0;
  unsigned short unk2;
  unsigned unk4:1;
} g201EE68;

void sub_8034E30 (void) {
  g201EE68.unk0 = 0;
  g201EE68.unk2 = 0;
  g201EE68.unk4 = 1;
}

void sub_8034E48 (void) {
  if (++g201EE68.unk0 == g201EE68.unk2)
    g201EE68.unk4 = 1;
}

void sub_8034E68 (unsigned short arg0) {
  g201EE68.unk2 = g201EE68.unk0 + arg0;
  g201EE68.unk4 = 0;
}

unsigned sub_8034E84 (void) {
  return g201EE68.unk4;
}



//split? (sound.c?)
void sub_805977C (void);
extern unsigned char g80D29D0[];

extern struct {
  struct MusicPlayerInfo* unk0;
  unsigned char filler4[8];
} g8AFBD0C[];

extern struct {
  struct SongHeader* unk0;
  unsigned short unk4;
} g8AFBDE4[];

static unsigned char sub_8035128 (unsigned short);
void m4aSongNumStartOrChange (unsigned short);
void m4aSongNumStart (unsigned short);
void m4aSongNumStop (unsigned short);
extern struct MusicPlayerInfo g2025840;
void m4aMPlayFadeOut(struct MusicPlayerInfo *mplayInfo, unsigned short speed);
void sub_805A5F0 (struct MusicPlayerInfo*, unsigned short, unsigned short);

static inline unsigned char sub_80350F4_inline (unsigned short arg0) {
  //TODO: see MUSICPLAYER_STATUS_PAUSE define
  if (g8AFBD0C[g8AFBDE4[arg0].unk4].unk0->status & 0xFFFF)
    if (g8AFBD0C[g8AFBDE4[arg0].unk4].unk0->status & 0x80000000)
      return 1;
  return 0;
}

static inline unsigned char sub_8035128_inline (unsigned short arg0) {
  if (arg0 < 800 && arg0 < (unsigned short)UNK2C5)
    return 0;
  return 1;
}

/*
void sub_8034E94 (unsigned short arg0) {
  unsigned r2;
  if (sub_8035128_inline(arg0))
    return;
  switch (arg0) {
    case 0xF2:
      r2 = 0x17C;
      break;
    case 0xF4:
      r2 = 0x17D;
      break;
    case 0xF6:
      r2 = 0x17F;
      break;
    case 0x17C:
      r2 = 0xF2;
      break;
    case 0x17D:
      r2 = 0xF4;
      break;
    case 0x17F:
      r2 = 0xF6;
      break;
    default:
      return;
  }
  if (sub_80350F4_inline(r2))
    m4aSongNumStartOrChange(arg0);
}
*/

NAKED
void sub_8034E94 (unsigned short arg0) {
  asm_unified("push {r4, lr}\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	ldr r0, _08034EB0\n\
	cmp r4, r0\n\
	bhi _08034EB8\n\
	ldr r0, _08034EB4\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	cmp r4, r0\n\
	bhs _08034EB8\n\
	movs r0, #0\n\
	b _08034EBA\n\
	.align 2, 0\n\
_08034EB0: .4byte 0x0000031F\n\
_08034EB4: .4byte 0x000002C5\n\
_08034EB8:\n\
	movs r0, #1\n\
_08034EBA:\n\
	cmp r0, #0\n\
	bne _08034F58\n\
	cmp r4, #0xf6\n\
	beq _08034F04\n\
	cmp r4, #0xf6\n\
	bgt _08034ED0\n\
	cmp r4, #0xf2\n\
	beq _08034EF4\n\
	cmp r4, #0xf4\n\
	beq _08034EFA\n\
	b _08034F58\n\
_08034ED0:\n\
	ldr r0, _08034EE4\n\
	cmp r4, r0\n\
	beq _08034F10\n\
	cmp r4, r0\n\
	bgt _08034EE8\n\
	subs r0, #1\n\
	cmp r4, r0\n\
	beq _08034F0C\n\
	b _08034F58\n\
	.align 2, 0\n\
_08034EE4: .4byte 0x0000017D\n\
_08034EE8:\n\
	ldr r0, _08034EF0\n\
	cmp r4, r0\n\
	beq _08034F14\n\
	b _08034F58\n\
	.align 2, 0\n\
_08034EF0: .4byte 0x0000017F\n\
_08034EF4:\n\
	movs r2, #0xbe\n\
	lsls r2, r2, #1\n\
	b _08034F16\n\
_08034EFA:\n\
	ldr r2, _08034F00\n\
	b _08034F16\n\
	.align 2, 0\n\
_08034F00: .4byte 0x0000017D\n\
_08034F04:\n\
	ldr r2, _08034F08\n\
	b _08034F16\n\
	.align 2, 0\n\
_08034F08: .4byte 0x0000017F\n\
_08034F0C:\n\
	movs r2, #0xf2\n\
	b _08034F16\n\
_08034F10:\n\
	movs r2, #0xf4\n\
	b _08034F16\n\
_08034F14:\n\
	movs r2, #0xf6\n\
_08034F16:\n\
	ldr r3, _08034F44\n\
	ldr r0, _08034F48\n\
	lsls r2, r2, #3\n\
	adds r2, r2, r0\n\
	ldrh r1, [r2, #4]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r3\n\
	ldr r3, [r0]\n\
	ldr r1, [r3]\n\
	ldr r0, [r2]\n\
	cmp r1, r0\n\
	bne _08034F52\n\
	ldr r1, [r3, #4]\n\
	ldrh r0, [r3, #4]\n\
	cmp r0, #0\n\
	beq _08034F3E\n\
	cmp r1, #0\n\
	bge _08034F4C\n\
_08034F3E:\n\
	movs r0, #0\n\
	b _08034F4E\n\
	.align 2, 0\n\
_08034F44: .4byte 0x08AFBD0C\n\
_08034F48: .4byte 0x08AFBDE4\n\
_08034F4C:\n\
	movs r0, #1\n\
_08034F4E:\n\
	cmp r0, #0\n\
	bne _08034F58\n\
_08034F52:\n\
	adds r0, r4, #0\n\
	bl m4aSongNumStartOrChange\n\
_08034F58:\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0");
}

void PlayMusic (int arg0) {
  unsigned short arg0_u16 = arg0;
  if (sub_8035128(arg0_u16) == 1)
    return;
  //TODO: enums: SONG_NUM_START etc...
  switch (g80D29D0[arg0_u16]) {
    case 2:
    case 3:
      m4aSongNumStart(arg0_u16);
      break;
    case 4:
      m4aMPlayStop(&g2025840);
      break;
    case 1:
    case 5:
      m4aSongNumStartOrChange(arg0_u16);
      break;
    case 6:
      sub_8034E94(arg0_u16);
      break;
  }
}

void sub_8034FD4 (void) {
  sub_805977C();
}

void sub_8034FE0 (void) {
  sub_8034FEC(0xD6);
}

void sub_8034FEC (unsigned arg0) {
  unsigned short arg0_u16 = arg0;
  if (!sub_8035128_inline(arg0_u16))
    m4aSongNumStop(arg0_u16);
}

void FadeOutMusic (unsigned arg0) {
  unsigned short arg0_u16 = arg0;
  m4aMPlayFadeOut(&g2025840, arg0_u16);
}

void sub_8035038 (unsigned short arg0) {
  unsigned i;
  for (i = 0; i < (unsigned short)UNK12; i++)
    m4aMPlayFadeOut(g8AFBD0C[i].unk0, arg0);
}

static void sub_803506C (unsigned short arg0, unsigned short arg1) {
  if (!sub_8035128_inline(arg0) &&
      g8AFBD0C[g8AFBDE4[arg0].unk4].unk0->songHeader == g8AFBDE4[arg0].unk0)
    m4aMPlayFadeOut(g8AFBD0C[g8AFBDE4[arg0].unk4].unk0, arg1);
}

//unused?
static void sub_80350CC (unsigned short arg0) {
  sub_803506C(0x2BD, arg0);
  sub_803506C(0x2BE, arg0);
}

static unsigned char sub_80350F4 (unsigned short arg0) {
  //TODO: see MUSICPLAYER_STATUS_PAUSE define
  if (g8AFBD0C[g8AFBDE4[arg0].unk4].unk0->status & 0xFFFF)
    if (!(g8AFBD0C[g8AFBDE4[arg0].unk4].unk0->status & 0x80000000))
      return 1;
  return 0;
}

static unsigned char sub_8035128 (unsigned short arg0) {
  if (arg0 < 800 && arg0 < (unsigned short)UNK2C5)
    return 0;
  return 1;
}

static void sub_803514C (unsigned short arg0) {
  sub_805A5F0(&g2025840, 0xFFFF, arg0 & 0x3FC);
}



//split?
extern unsigned char* g8E0CD10;
extern struct {
  unsigned char* unk0;
  unsigned long unk4;
} g80D2D00[];

unsigned short sub_8035170 (void) {
  unsigned i;
  unsigned long total = 0;
  unsigned char* ptr = g8E0CD10;
  for (i = 0; i < 0x747; i++)
    total += *ptr++;
  return total;
}

void sub_803519C (void) {
  unsigned r3 = 0, r5 = 0;
  for (; g80D2D00[r3].unk0; r3++) {
    unsigned long r1;
    unsigned char* dest = g80D2D00[r3].unk0;
    for (r1 = g80D2D00[r3].unk4; r1; r5++, dest++, r1--)
      *dest = g8E0CD10[r5];
  }
}

void sub_80351F8 (void) {
  unsigned r4 = 0, r6 = 0;
  for (; g80D2D00[r4].unk0; r4++) {
    unsigned long r1;
    unsigned char* src = g80D2D00[r4].unk0;
    for (r1 = g80D2D00[r4].unk4; r1; src++, r6++, r1--)
      g8E0CD10[r6] = *src;
  }
}
