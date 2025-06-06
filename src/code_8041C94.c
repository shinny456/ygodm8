#include "global.h"

extern u8 g8E0D588[][5];
extern u8 g20240E4;
extern s16 g8E0D5A6[];
extern u16 gBG2VOFS;
extern u8 g8E0D5A1[];
extern u8* g8F1B80C[];
extern u8* gText_TrapHadNoEffect;
extern u16 g8E0D5B0[];
extern u8 gText_Facedown[];
extern u8 g8E0D617[];


void sub_8041B38 (void);
void RunTextRenderTask (struct DuelTextbox*);
void UpdateDuelGfxExceptField (void);
void WaitForVBlank (void);
void sub_8040FDC (void);
void sub_804078C (void);
u32 CanPlayerSeeCard (u8 y, u8 x);
void DisplayCardNameInInfoBar (void);
void DisplayCardLevelInInfoBar (void);
void DisplayCardAtkDefInInfoBar (void);
void DisplayCardAttrTypeInInfoBar (void);
void DisplayCardFacedownIndicatorInInfoBar (void);
void CopySwordTile (void*);
void CopyShieldTile (void*);
void CopyStarTile (void*);
void CopyAttributeIconTiles (u8, u8*);
void CopyAttributeIconPal (u8, u16*);
void CopyTypeIconTiles (u8, u8*);
void CopyTypeIconPal (u8, u16*);
u32 CanOpponentSeeCard (u8, u8);
void sub_80428EC(u8);


void sub_8041C94 (u8* textPtr, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
  struct DuelTextbox textbox;
  textbox.textCursor = 0;
  textbox.tileCursor = 0;
  textbox.mode = 0;
  textbox.textBuffer = textPtr;
  textbox.blinkFrameCounter = 0;
  textbox.glyphOffset = 0;
  textbox.unk14 = arg1;
  textbox.unk16 = arg2;
  textbox.unk18 = arg3;
  textbox.unk1A = arg4;
  sub_8041B38();
  RunTextRenderTask(&textbox);
  UpdateDuelGfxExceptField();
}

void sub_8041CCC (u16 arg0, u16 arg1) {
  struct DuelTextbox textbox;
  u8* temp = g8F1B80C[arg0];
  textbox.textCursor = 0;
  textbox.tileCursor = 0;
  textbox.mode = 0;
  textbox.textBuffer = temp;
  textbox.blinkFrameCounter = 0;
  textbox.glyphOffset = 0;
  textbox.unk14 = arg0;
  textbox.unk16 = arg1;
  textbox.unk18 = 0;
  textbox.unk1A = 0;
  sub_8041B38();
  RunTextRenderTask(&textbox);
  UpdateDuelGfxExceptField();
}

void sub_8041D14 (u16 arg0, u16 arg1) {
  struct DuelTextbox textbox;
  u8* temp = gText_TrapHadNoEffect;
  textbox.textCursor = 0;
  textbox.tileCursor = 0;
  textbox.mode = 0;
  textbox.textBuffer = temp;
  textbox.blinkFrameCounter = 0;
  textbox.glyphOffset = 0;
  textbox.unk14 = arg0;
  textbox.unk16 = arg1;
  textbox.unk18 = 0;
  textbox.unk1A = 0;
  sub_8041B38();
  RunTextRenderTask(&textbox);
  UpdateDuelGfxExceptField();
}

void sub_8041D54 (void) {
  UpdateDuelGfxExceptField();
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

void DisplayCardInfoBar (void) {
  if (CanPlayerSeeCard(gDuelCursor.currentY, gDuelCursor.currentX) == 1) {
    gStatMod.card = gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]);
    SetFinalStat(&gStatMod);
  }
  else {
    SetCardInfo(CARD_NONE);
  }
  DisplayCardNameInInfoBar();
  DisplayCardLevelInInfoBar();
  DisplayCardAtkDefInInfoBar();
  DisplayCardAttrTypeInInfoBar();
  DisplayCardFacedownIndicatorInInfoBar();
}

void DisplayCardNameInInfoBar (void) {
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

void DisplayCardAtkDefInInfoBar (void) {
  u8 i = 0;
  ConvertU16ToDigitBuffer(gCardInfo.atk, DIGIT_FLAG_NONE);
  if (gCardInfo.atk != 0xFFFF && gDigitBufferU16[0] == DIGIT_TERMINATOR) {
    i = 1;
    CopySwordTile(gBgVram.cbb0 + 0x83C0);
  }
  for (; i < MAX_U16_DIGITS; i++) {
    sub_8020968(gBgVram.cbb0 + 0x83C0 + i * 32, gDigitBufferU16[i][g8E0D5B0], 0x801);
  }
  i = 0;
  ConvertU16ToDigitBuffer(gCardInfo.def, DIGIT_FLAG_NONE);
  if (gCardInfo.def != 0xFFFF && gDigitBufferU16[0] == DIGIT_TERMINATOR) {
    i = 1;
    CopyShieldTile(gBgVram.cbb0 + 0x8460);
  }
  for (; i < MAX_U16_DIGITS; i++)
    sub_8020968(gBgVram.cbb0 + 0x8460 + i * 32, gDigitBufferU16[i][g8E0D5B0], 0x801);
}

void DisplayCardLevelInInfoBar (void) {
  if (gCardInfo.level) {
    u8 i;
    CopyStarTile(gBgVram.cbb0 + 0x8040);
    ConvertU16ToDigitBuffer(gCardInfo.level, DIGIT_FLAG_ALIGN_LEFT);
    for (i = 0; i < 2; i++)
      sub_8020968(gBgVram.cbb0 + 0x8040 + (i + 1) * 32, gDigitBufferU16[i][g8E0D5B0], 0x801);
  }
  else {
    CpuCopy16(gBgVram.cbb0 + 0x8000, gBgVram.cbb0 + 0x8040, 32);
    CpuCopy16(gBgVram.cbb0 + 0x8000, gBgVram.cbb0 + 0x8060, 32);
    CpuCopy16(gBgVram.cbb0 + 0x8000, gBgVram.cbb0 + 0x8080, 32);
  }
}

void DisplayCardAttrTypeInInfoBar (void) {
  CopyAttributeIconTiles(gCardInfo.attribute, gBgVram.cbb0 + 0x8580);
  CopyAttributeIconPal(gCardInfo.attribute, gPaletteBuffer + 96);
  CopyTypeIconTiles(gCardInfo.type, gBgVram.cbb0 + 0x8500);
  CopyTypeIconPal(gCardInfo.type, gPaletteBuffer + 80);
}

void DisplayCardFacedownIndicatorInInfoBar (void) {
  if (!CanOpponentSeeCard(gDuelCursor.currentY, gDuelCursor.currentX))
    CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x8600, gText_Facedown, 0x801);
  else
    CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x8600, g8E0D617, 0x801);
}
