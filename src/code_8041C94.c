#include "global.h"


struct Test8041240 {
  u32 unk0;
  u32 unk4;
  u8 unk8;
  u8 filler9[3];
  u8* unkC;
  u16 unk10;
  u16 unk12;
  u16 unk14;
  u16 unk16;
  u16 unk18;
  u16 unk1A;
  u8 unk1C;
};

extern u8 g8E0D588[][5];
extern u8 g20240E4;
extern s16 g8E0D5A6[];
extern u16 gBG2VOFS;
extern u8 g8E0D5A1[];
extern u8* g8F1B80C[];
extern u8* g8E0D584;
extern u16 g8E0D5B0[];
extern u8 g8E0D5C7[];
extern u8 g8E0D617[];


void sub_8041B38 (void);
void sub_8041BE8 (struct Test8041240*);
void sub_8041104 (void);
void WaitForVBlank (void);
void sub_8040FDC (void);
void sub_804078C (void);
u32 CanPlayerSeeCard (u8 y, u8 x);
void sub_8041F48 (void);
void sub_80420C0 (void);
void sub_8041FE4 (void);
void sub_8042144 (void);
void sub_8042184 (void);
void CopySwordTile (void*);
void CopyShieldTile (void*);
void CopyStarTile (void*);
void CopyAttributeIconTiles (u8, u8*);
void CopyAttributeIconPal (u8, u16*);
void CopyTypeIconTiles (u8, u8*);
void CopyTypeIconPal (u8, u16*);
u32 CanOpponentSeeCard (u8, u8);
void sub_80428EC(u8);


void sub_8041C94 (u8* arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
  struct Test8041240 test;
  test.unk0 = 0;
  test.unk4 = 0;
  test.unk8 = 0;
  test.unkC = arg0;
  test.unk10 = 0;
  test.unk1C = 0;
  test.unk14 = arg1;
  test.unk16 = arg2;
  test.unk18 = arg3;
  test.unk1A = arg4;
  sub_8041B38();
  sub_8041BE8(&test);
  sub_8041104();
}

void sub_8041CCC (u16 arg0, u16 arg1) {
  struct Test8041240 test;
  u8* temp = g8F1B80C[arg0];
  test.unk0 = 0;
  test.unk4 = 0;
  test.unk8 = 0;
  test.unkC = temp;
  test.unk10 = 0;
  test.unk1C = 0;
  test.unk14 = arg0;
  test.unk16 = arg1;
  test.unk18 = 0;
  test.unk1A = 0;
  sub_8041B38();
  sub_8041BE8(&test);
  sub_8041104();
}

void sub_8041D14 (u16 arg0, u16 arg1) {
  struct Test8041240 test;
  u8* temp = g8E0D584;
  test.unk0 = 0;
  test.unk4 = 0;
  test.unk8 = 0;
  test.unkC = temp;
  test.unk10 = 0;
  test.unk1C = 0;
  test.unk14 = arg0;
  test.unk16 = arg1;
  test.unk18 = 0;
  test.unk1A = 0;
  sub_8041B38();
  sub_8041BE8(&test);
  sub_8041104();
}

void sub_8041D54 (void) {
  sub_8041104();
}

u32 AdjustBackgroundBeforeTurnStart (u8 arg0) {
  return gBG2VOFS = g8E0D5A1[arg0];
}

void sub_8041D78 (u8 arg0) {
  while (gBG2VOFS > g8E0D5A6[arg0] + 256) {
    gBG2VOFS -= 256;
    sub_8057808();
    WaitForVBlank();
    sub_8040FDC();
  }
  gBG2VOFS = g8E0D5A6[arg0];
  sub_8057808();
  sub_804078C();
  WaitForVBlank();
  sub_8040FDC();
}

void sub_8041DF0 (u8 arg0) {
  while (gBG2VOFS < g8E0D5A6[arg0] - 256) {
    gBG2VOFS += 256;
    sub_8057808();
    WaitForVBlank();
    sub_8040FDC();
  }
  gBG2VOFS = g8E0D5A6[arg0];
  sub_8057808();
  sub_804078C();
  WaitForVBlank();
  sub_8040FDC();
}

void sub_8041E64 (void) {
  g20240E4 = 4;
}

void sub_8041E70 (u8 arg0, u8 arg1) {
  g20240E4 = arg1;
  switch (g8E0D588[arg0][arg1]) {
    case 0:
      sub_804078C();
      WaitForVBlank();
      sub_8040FDC();
      break;
    case 1:
      sub_8041D78(arg1);
      break;
    case 2:
      sub_8041DF0(arg1);
      break;
  }
}

void sub_8041EC8 (void) {
  if (CanPlayerSeeCard(gDuelCursor.currentY, gDuelCursor.currentX) == 1) {
    gStatMod.card = gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]);
    SetFinalStat(&gStatMod);
  }
  else {
    SetCardInfo(CARD_NONE);
  }
  sub_8041F48();
  sub_80420C0();
  sub_8041FE4();
  sub_8042144();
  sub_8042184(); // TryDisplayFacedownText/TryCopy
}

void sub_8041F48 (void) {
  u8 buffer[32];
  u8 i, r3;
  const unsigned char* name;
  for (i = 0; i < 15; i++)
    CpuCopy16(gBgVram.cbb0 + 0x8000, gBgVram.cbb0 + 0x81E0 + i * 32, 32);
  name = GetCurrentLanguageString(gCardInfo.name);
  i = 0;
  r3 = 0;
  // r3 < (32 - 1) / 2
  // if all characters are special, the buffer can hold 15 of them
  // 1 byte is reserved for the null terminator
  while (r3 < 15 && *name && *name != '$') {
    u8 temp = *name;
    if (temp > 127) {
      buffer[i] = temp;
      i++;
      name++;
    }
    buffer[i] = *name;
    i++;
    name++;
    r3++;
  }
  buffer[i] = 0;
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x81E0, buffer, 0x801);
}

void sub_8041FE4 (void) {
  u8 r5 = 0;
  sub_800DDA0(gCardInfo.atk, 0);
  if (gCardInfo.atk != 0xFFFF && g2021BD0[0] == 10) {
    r5 = 1;
    CopySwordTile(gBgVram.cbb0 + 0x83C0);
  }
  for (; r5 < 5; r5++) {
    sub_8020968(gBgVram.cbb0 + 0x83C0 + r5 * 32, g2021BD0[r5][g8E0D5B0], 0x801);
  }
  r5 = 0;
  sub_800DDA0(gCardInfo.def, 0);
  if (gCardInfo.def != 0xFFFF && g2021BD0[0] == 10) {
    r5 = 1;
    CopyShieldTile(gBgVram.cbb0 + 0x8460);
  }
  for (; r5 < 5; r5++)
    sub_8020968(gBgVram.cbb0 + 0x8460 + r5 * 32, g2021BD0[r5][g8E0D5B0], 0x801);
}

void sub_80420C0 (void) {
  if (gCardInfo.level) {
    u8 i;
    CopyStarTile(gBgVram.cbb0 + 0x8040);
    sub_800DDA0(gCardInfo.level, 1);
    for (i = 0; i < 2; i++)
      sub_8020968(gBgVram.cbb0 + 0x8040 + (i + 1) * 32, g2021BD0[i][g8E0D5B0], 0x801);
  }
  else {
    CpuCopy16(gBgVram.cbb0 + 0x8000, gBgVram.cbb0 + 0x8040, 32);
    CpuCopy16(gBgVram.cbb0 + 0x8000, gBgVram.cbb0 + 0x8060, 32);
    CpuCopy16(gBgVram.cbb0 + 0x8000, gBgVram.cbb0 + 0x8080, 32);
  }
}

void sub_8042144 (void) {
  CopyAttributeIconTiles(gCardInfo.attribute, gBgVram.cbb0 + 0x8580);
  CopyAttributeIconPal(gCardInfo.attribute, gPaletteBuffer + 96);
  CopyTypeIconTiles(gCardInfo.type, gBgVram.cbb0 + 0x8500);
  CopyTypeIconPal(gCardInfo.type, gPaletteBuffer + 80);
}

void sub_8042184 (void) {
  if (!CanOpponentSeeCard(gDuelCursor.currentY, gDuelCursor.currentX))
    CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x8600, g8E0D5C7, 0x801);
  else
    CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x8600, g8E0D617, 0x801);
}
