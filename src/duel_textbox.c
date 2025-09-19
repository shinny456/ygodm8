#include "global.h"

enum DuelTextboxToken {
  MODE_TEXT, // normal text, no token
  MODE_WAIT_INPUT,
  MODE_CARD_NAME,
  MODE_3, // unused?
  MODE_PLAYER_NAME,
  MODE_CARD_DESCRIPTION, // description isn't needed for duel textboxes, maybe something else?
  MODE_CLEAR_TEXTBOX_AND_ADVANCE,
};


extern const unsigned char gFieldArenaTiles[];
extern const unsigned char gFieldForestTiles[];
extern const unsigned char gFieldWastelandTiles[];
extern const unsigned char gFieldMountainTiles[];
extern const unsigned char gFieldSogenTiles[];
extern const unsigned char gFieldUmiTiles[];
extern const unsigned char gFieldYamiTiles[];

//TODO: 1D array also works (as with any other tilemap)
extern const unsigned short gFieldArenaTilemap[][31];
extern const unsigned short gFieldForestTilemap[][31];
extern const unsigned short gFieldWastelandTilemap[][31];
extern const unsigned short gFieldMountainTilemap[][31];
extern const unsigned short gFieldSogenTilemap[][31];
extern const unsigned short gFieldUmiTilemap[][31];
extern const unsigned short gFieldYamiTilemap[][31];

extern const unsigned short gFieldArenaPalette[];
extern const unsigned short gFieldForestPalette[];
extern const unsigned short gFieldWastelandPalette[];
extern const unsigned short gFieldMountainPalette[];
extern const unsigned short gFieldSogenPalette[];
extern const unsigned short gFieldUmiPalette[];
extern const unsigned short gFieldYamiPalette[];

static const unsigned char* CONST_DATA gFieldTilePtrs[] = {
  gFieldArenaTiles,
  gFieldForestTiles,
  gFieldWastelandTiles,
  gFieldMountainTiles,
  gFieldSogenTiles,
  gFieldUmiTiles,
  gFieldYamiTiles
};

static const unsigned short (* CONST_DATA gFieldTileMapPtrs[])[31] = {
  gFieldArenaTilemap,
  gFieldForestTilemap,
  gFieldWastelandTilemap,
  gFieldMountainTilemap,
  gFieldSogenTilemap,
  gFieldUmiTilemap,
  gFieldYamiTilemap
};

static const unsigned short * CONST_DATA gFieldPalettePtrs[] = {
  gFieldArenaPalette,
  gFieldForestPalette,
  gFieldWastelandPalette,
  gFieldMountainPalette,
  gFieldSogenPalette,
  gFieldUmiPalette,
  gFieldYamiPalette
};

extern CONST_DATA unsigned char gE0D14C[] /*= _("　　　　　　　　")*/;

 // all spaces. empty duel text box before displaying actual text.
extern CONST_DATA unsigned char gText_Spaces[] /*= _(
  "                            "
  "                            "
  "                            "
  "                             "
)*/;


extern u16 gNewButtons;



extern struct OamData gOamBuffer[];
extern unsigned char gCardNameWorkingBuffer[]; // working buffer for handling layout and wrap
extern unsigned char gCardNameRenderBuffer[]; // final render buffer for glyph blitting loop
extern unsigned char* gText_NumTributesRequired[];
extern const s16 sin_cos_table[];
extern unsigned char gFontTileGlyphs[];
extern u16 g80F2C30[][30];


void sub_8041B38 (void);
void RunTextRenderTask (struct DuelTextbox*);
static void ClearTextboxAndAdvance (struct DuelTextbox*);


s16 fix_mul (s16, s16);
s16 fix_inverse (s16);

// must be declared as either int or u32 to match the assignments in sub_8040EF0:
// gBG2VOFS = AdjustBackgroundBeforeTurnStart(gDuelCursor.currentY);
// gBG2VOFS = AdjustBackgroundBeforeTurnStart(1);
// (most likely due to implicit declarations?)
u32 AdjustBackgroundBeforeTurnStart (unsigned char);


void sub_8040B4C (void);
void DisplayCardInfoBar (void);
void sub_80408FC (void);
void sub_8041E64 (void);
void InitDuelCursor (void);
void UpdateAllDuelGfx (void);
void sub_80411D4 (void);
/*
gFieldTilePtrs:
080DFDC4 gFieldArenaTiles
080E169C gFieldForestTiles
080E436C gFieldWastelandTiles
080E616C gFieldMountainTiles
080E7D58 gFieldSogenTiles
080E95A0 gFieldUmiTiles
080EAEBC gFieldYamiTiles

gFieldTileMapPtrs:
080EC6C4 gFieldArenaTilemap
080ECFF8 gFieldForestTilemap
080ED92C gFieldWastelandTilemap
080EE260 gFieldMountainTilemap
080EEB94 gFieldSogenTilemap
080EF4C8 gFieldUmiTilemap
080EFDFC gFieldYamiTilemap

gFieldPalettePtrs
080F0730 gFieldArenaPalette
080F0790 gFieldForestPalette
080F07F0 gFieldWastelandPalette
080F0850 gFieldMountainPalette
080F08B0 gFieldSogenPalette
080F0910 gFieldUmiPalette
080F0970 gFieldYamiPalette
*/

// todo: replace with affine struct
static void sub_8040C6C (void) {
  unsigned char i;
  for (i = 0; i < 128; i++)
    sub_80411EC(gOamBuffer + i);

  gOamBuffer[0].affineParam = fix_mul(sin_cos_table[64], fix_inverse(256));
  gOamBuffer[1].affineParam = fix_mul(sin_cos_table[0], fix_inverse(256));
  gOamBuffer[2].affineParam = fix_mul(-sin_cos_table[0], fix_inverse(256));
  gOamBuffer[3].affineParam = fix_mul(sin_cos_table[64], fix_inverse(256));

  gOamBuffer[4].affineParam = fix_mul(sin_cos_table[64], fix_inverse(256));
  gOamBuffer[5].affineParam = fix_mul(sin_cos_table[0], fix_inverse(256));
  gOamBuffer[6].affineParam = fix_mul(-sin_cos_table[0], fix_inverse(256));
  gOamBuffer[7].affineParam = fix_mul(sin_cos_table[64], fix_inverse(256));

  gOamBuffer[8].affineParam = fix_mul(sin_cos_table[128], fix_inverse(256));
  gOamBuffer[9].affineParam = fix_mul(sin_cos_table[64], fix_inverse(256));
  gOamBuffer[10].affineParam = fix_mul(-sin_cos_table[64], fix_inverse(256));
  gOamBuffer[11].affineParam = fix_mul(sin_cos_table[128], fix_inverse(256));
  gOamBuffer[8].affineParam = 0;
  gOamBuffer[9].affineParam = 256; //1.0 fixed point
  gOamBuffer[10].affineParam = -257;
  gOamBuffer[11].affineParam = 0;

  gOamBuffer[12].affineParam = fix_mul(sin_cos_table[0xC0], fix_inverse(256));
  gOamBuffer[13].affineParam = fix_mul(sin_cos_table[128], fix_inverse(256));
  gOamBuffer[14].affineParam = fix_mul(-sin_cos_table[128], fix_inverse(256));
  gOamBuffer[15].affineParam = fix_mul(sin_cos_table[0xC0], fix_inverse(256));
  gOamBuffer[12].affineParam = 0xFF00;
  gOamBuffer[13].affineParam = 0;
  gOamBuffer[14].affineParam = 0;
  gOamBuffer[15].affineParam = -257;

  gOamBuffer[16].affineParam = fix_mul(sin_cos_table[256], fix_inverse(256));
  gOamBuffer[17].affineParam = fix_mul(sin_cos_table[0xC0], fix_inverse(256));
  gOamBuffer[18].affineParam = fix_mul(-sin_cos_table[0xC0], fix_inverse(256));
  gOamBuffer[19].affineParam = fix_mul(sin_cos_table[256], fix_inverse(256));
}

void sub_8040EF0 (void) {
  unsigned char i, field;
  WaitForVBlank();
  DisableDisplay();
  field = gDuel.field;
  REG_BG2CNT = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(27) | BGCNT_TXT256x512;
  HuffUnComp(gFieldTilePtrs[field], gBgVram.cbb0);
  CpuCopy16(gFieldPalettePtrs[field], gPaletteBuffer, 96);

  // copying 64 bytes from 62 byte array? (sub_8044D34 does it right i think)
  // this results in the last tile-column of the background being made up of tiles meant for the next row.
  // however the last column is never seen on screen
  // copies past array (2D array) by copying 40 rows (there are only 38 rows)
  // is this UB?
  // TODO: i < 38; pass size of 62 to CpuCopy16
  for (i = 0; i < 40; i++)
    CpuCopy16(gFieldTileMapPtrs[field][i], gBgVram.cbb0 + 0xD800 + i * 64, 64);
  gBG2HOFS = 4;
  gBG2VOFS = AdjustBackgroundBeforeTurnStart(gDuelCursor.currentY);
  gBG2VOFS = AdjustBackgroundBeforeTurnStart(1);
  sub_8040B4C();
  DisplayCardInfoBar();
  sub_8040C6C();
  sub_80577A4();
  sub_80408FC();
  WaitForVBlank();
  LoadVRAM();
  LoadBgOffsets();
  LoadOam();
  LoadPalettes();
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
  REG_BLDCNT = 0xD4;
  REG_BLDY = 10;
}

void sub_8040FDC (void) {
  LoadOam();
  LoadBgOffsets();
  CpuCopy32(gBgVram.cbb0 + 0x8040, (unsigned char*)BG_VRAM + 0x8040, 0x740);
  CpuCopy16(gPaletteBuffer + 0x50, (u16*)PLTT + 0x50, 0x40);
}

// flush textbox tiles to VRAM?
void sub_8041014 (void) {
  CpuCopy32(gBgVram.cbb0 + 0x87A0, (unsigned char*)BG_VRAM + 0x87A0, 0x1D00);
  CpuCopy32(gBgVram.cbb0 + 0xE800, (unsigned char*)BG_VRAM + 0xE800, 0x480);
}

void sub_8041050 (void) {
  LoadBgOffsets();
  CpuCopy32(gBgVram.cbb0 + 0x87A0, (unsigned char*)BG_VRAM + 0x87A0, 0x160);
  CpuCopy32(gBgVram.cbb0 + 0xF000, (unsigned char*)BG_VRAM + 0xF000, 0x1000);
}

void sub_8041090 (void) {
  sub_8041E64();
  REG_DISPCNT = 0;
  InitDuelCursor();
  UpdateAllDuelGfx();
  SetVBlankCallback(LoadBgOffsets);
}

void UpdateAllDuelGfx (void) {
  WaitForVBlank();
  DisableDisplay();
  SetDuelFieldGfx(gDuel.field);
  //below this is same as UpdateDuelGfxExceptField
  sub_8040B4C();
  DisplayCardInfoBar();
  sub_8040C6C();
  sub_80577A4();
  sub_80408FC();
  WaitForVBlank();
  sub_80411D4();
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
  REG_BLDCNT = 0xD4;
  REG_BLDY = 10;
}

void UpdateDuelGfxExceptField (void) {
  sub_8040B4C(); // init bg1 for b button menu and card details at the bottom
  DisplayCardInfoBar();
  sub_8040C6C();
  sub_80577A4();
  sub_80408FC();
  WaitForVBlank();
  sub_80411D4();
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
  REG_BLDCNT = 0xD4;
  REG_BLDY = 10;
}

void SetDuelFieldGfx (unsigned char field) {
  unsigned char i;
  REG_BG2CNT = 0x9B02;
  HuffUnComp(gFieldTilePtrs[field], gBgVram.cbb0);
  CpuCopy16(gFieldPalettePtrs[field], gPaletteBuffer, 96);
  // copying 64 bytes from 62 byte array? (see sub_8040EF0 comment)
  // TODO: i < 38; pass size of 62 to CpuCopy16
  for (i = 0; i < 40; i++)
    CpuCopy16(gFieldTileMapPtrs[field][i], gBgVram.cbb0 + 0xD800 + i * 64, 64);
  gBG2HOFS = 4;
  gBG2VOFS = AdjustBackgroundBeforeTurnStart(gDuelCursor.currentY);
}

void sub_80411D4 (void) {
  LoadVRAM();
  LoadBgOffsets();
  LoadOam();
  LoadPalettes();
}

void sub_80411EC (struct OamData* oam) {
  oam->y = 192;
  oam->x = 448;
  oam->shape = 0;
  oam->size = 0;
  oam->tileNum = 0;
  oam->priority = 3;
  oam->hflip = 0;
  oam->vflip = 0;
  oam->affineMode = 0;
}

void DisplayNumRequiredTributesTextbox (unsigned char numTributes) {
  struct DuelTextbox textbox;
  unsigned char* string = gText_NumTributesRequired[numTributes - 1];
  textbox.textCursor = 0;
  textbox.tileCursor = 0;
  textbox.mode = 0;
  textbox.textBuffer = string;
  textbox.blinkFrameCounter = 0;
  textbox.glyphOffset = 0;
  textbox.unk14 = 0;
  textbox.unk16 = 0;
  textbox.unk18 = 0;
  textbox.unk1A = 0;
  sub_8041B38();
  RunTextRenderTask(&textbox);
  UpdateDuelGfxExceptField();
}

// processes control tokens from raw text (followed by a #)
// e.g. "$0#5% you saw it too%#0didn't you?#1..."
void RenderNextTextToken (struct DuelTextbox* textbox) {
  switch (textbox->textBuffer[textbox->textCursor]) {
    case '#':
      textbox->textCursor++;
      switch (textbox->textBuffer[textbox->textCursor]) {
        case '0': // line break
          textbox->textCursor++;
          if (textbox->tileCursor % 28)
            textbox->tileCursor = (textbox->tileCursor / 28 + 1) * 28;
          if (textbox->tileCursor > 84)
            textbox->tileCursor = 84;
          break;
        case '1':
          textbox->mode = MODE_WAIT_INPUT;
          break;
        case '2':
          textbox->mode = MODE_CARD_NAME;
          textbox->textCursor++;
          textbox->glyphOffset = 0;
          textbox->cardId = textbox->unk14;
          break;
        case '3':
          textbox->mode = MODE_CARD_NAME;
          textbox->textCursor++;
          textbox->glyphOffset = 0;
          textbox->cardId = textbox->unk16;
          break;
        case '4':
          textbox->mode = MODE_CLEAR_TEXTBOX_AND_ADVANCE;
          break;
        case '5':
          textbox->glyphOffset = 0;
          textbox->mode = MODE_PLAYER_NAME;
          textbox->textCursor++;
          break;
        case '6':
          textbox->glyphOffset = 0;
          textbox->mode = MODE_CARD_DESCRIPTION;
          textbox->cardId = textbox->unk18;
          textbox->textCursor++;
          break;
        case '7':
          textbox->glyphOffset = 0;
          textbox->mode = MODE_CARD_DESCRIPTION;
          textbox->cardId = textbox->unk1A;
          textbox->textCursor++;
          break;
        case '8':
          {
            u32 i;
            for (i = textbox->textBuffer[textbox->textCursor + 1]; i; i--)
              WaitForVBlank();
          }
          textbox->textCursor += 2;
          break;
      }
      break;
    case '$':
      textbox->textCursor += GetLanguageStringOffset(textbox->textBuffer + textbox->textCursor);
      break;
    default:
      //macroize this? (basically the same code is in script.c)
      {
        u16 r3;
        if (textbox->textBuffer[textbox->textCursor] & 0x80) {
          r3 = textbox->textBuffer[textbox->textCursor + 1] << 8;
          r3 |= textbox->textBuffer[textbox->textCursor];
          textbox->textCursor += 2;
        }
        else switch (textbox->textBuffer[textbox->textCursor]) {
          case ' ': case '!': case '"': case '%': case '\'':
            case ',': case '-': case '.': case ':': case ';': case '?':
            case 'A' ... 'Z': case 'a' ... 'z':
                r3 = gUnk_8E00E30[textbox->textBuffer[textbox->textCursor] - ' '][1];
                r3 <<= 8;
                r3 |= gUnk_8E00E30[textbox->textBuffer[textbox->textCursor] - ' '][0];
                textbox->textCursor++;
                break;
            default:
                r3 = gUnk_8E00E30[0][1];
                r3 <<= 8;
                r3 |= gUnk_8E00E30[0][0];
                textbox->textCursor++;
                break;
        }
        if (textbox->tileCursor % 2)
          sub_8020968(gBgVram.cbb0 + 0x88C0 + textbox->tileCursor / 2 * 128, r3, 0x101);
        else
          sub_8020968(gBgVram.cbb0 + 0x88A0 + textbox->tileCursor / 2 * 128, r3, 0x101);
        textbox->tileCursor++;
      }
      break;
  }
}

//waiting for player to press A, B, or R to close text box.
void WaitForTextboxAdvanceInput (struct DuelTextbox* textbox) {
  if (gNewButtons & (A_BUTTON | B_BUTTON | R_BUTTON)) {
    PlayMusic(SFX_DIALOGUE);
    textbox->textCursor++;
    textbox->tileCursor = 0;
    textbox->blinkFrameCounter = 0;
    textbox->mode = 0;
    CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x88A0, gText_Spaces, 0x101);
  }
  else {
    switch (textbox->blinkFrameCounter++) {
      case 0:
        if (textbox->tileCursor % 2)
          sub_8020968(gBgVram.cbb0 + 0x88C0 + textbox->tileCursor / 2 * 128, 0xA081, 0x101);
        else
          sub_8020968(gBgVram.cbb0 + 0x88A0 + textbox->tileCursor / 2 * 128, 0xA081, 0x101);
        break;
      case 15:
        if (textbox->tileCursor % 2)
          sub_8020968(gBgVram.cbb0 + 0x88C0 + textbox->tileCursor / 2 * 128, 0x4081, 0x101);
        else
          sub_8020968(gBgVram.cbb0 + 0x88A0 + textbox->tileCursor / 2 * 128, 0x4081, 0x101);
        break;
      case 29:
        textbox->blinkFrameCounter = 0;
        break;
    }
  }
}

void RenderNextCardNameChar (struct DuelTextbox* textbox) {
  u32 r8;
  u16 r3;
  u16 r5;
  u16 r4;
  u16 r2;
  u16 sb;
  if (!textbox->glyphOffset) {
    SetCardInfo(textbox->cardId);
    r8 = 25;
    if (gLanguage == GERMAN) {
      if (textbox->cardId == MACHINE_CONVERSION_FACTORY)
        r8 = 26;
      if (textbox->cardId == MAN_EATING_TREASURE_CHEST)
        r8 = 27;
    }
    for (r3 = 0; r3 < 112; r3++)
      gCardNameWorkingBuffer[r3] = gCardNameRenderBuffer[r3] = 0;
    r3 = GetLanguageStringOffset(gCardInfo.name);
    r5 = 0;
    r4 = 0;
    r2 = 0;
    while (gCardInfo.name[r3] && gCardInfo.name[r3] != '$') {
      if (gCardInfo.name[r3] > 127) {
        gCardNameWorkingBuffer[r4] = gCardInfo.name[r3];
        r4++;
        r3++;
      }
      else if (gCardInfo.name[r3] == ' ' && r2 < 28) {
        r5 = r4;
        sb = r2;
      }
      gCardNameWorkingBuffer[r4] = gCardInfo.name[r3];
      r4++;
      r3++;
      r2++;
    }
    if (r2 > r8) {
      gCardNameWorkingBuffer[r5] = 0;
      r4 = r5 + 1;
      strcpy(gCardNameRenderBuffer, gCardNameWorkingBuffer);
      for (r2 = sb; r2 < 28; r2++) {
        gCardNameRenderBuffer[r5] = ' ';
        r5++;
      }
      strcpy(gCardNameRenderBuffer + r5, gCardNameWorkingBuffer + r4);
    }
    else {
      strcpy(gCardNameRenderBuffer, gCardNameWorkingBuffer);
    }
  }
  if (gCardNameRenderBuffer[textbox->glyphOffset] <= 127) {
    r3 = gUnk_8E00E30[gCardNameRenderBuffer[textbox->glyphOffset] - ' '][1];
    r3 <<= 8;
    r3 |= gUnk_8E00E30[gCardNameRenderBuffer[textbox->glyphOffset] - ' '][0];
    textbox->glyphOffset++;
  }
  else {
    r3 = gCardNameRenderBuffer[textbox->glyphOffset + 1];
    r3 <<= 8;
    r3 |= gCardNameRenderBuffer[textbox->glyphOffset];
    textbox->glyphOffset += 2;
  }
  if (textbox->tileCursor % 2)
    sub_8020968(gBgVram.cbb0 + 0x88C0 + textbox->tileCursor / 2 * 128, r3, 0x101);
  else
    sub_8020968(gBgVram.cbb0 + 0x88A0 + textbox->tileCursor / 2 * 128, r3, 0x101);
  textbox->tileCursor++;
  if (!gCardNameRenderBuffer[textbox->glyphOffset])
    textbox->mode = 0;
}

void RenderNextPlayerNameChar (struct DuelTextbox* textbox) {
  u16 r3;
  if (gPlayerName[textbox->glyphOffset] <= 127) {
    r3 = gUnk_8E00E30[gPlayerName[textbox->glyphOffset] - ' '][1];
    r3 <<= 8;
    r3 |= gUnk_8E00E30[gPlayerName[textbox->glyphOffset] - ' '][0];
    textbox->glyphOffset++;
  }
  else {
    r3 = gPlayerName[textbox->glyphOffset + 1];
    r3 <<= 8;
    r3 |= gPlayerName[textbox->glyphOffset];
    textbox->glyphOffset += 2;
  }
  if (textbox->tileCursor % 2)
    sub_8020968(gBgVram.cbb0 + 0x88C0 + textbox->tileCursor / 2 * 128, r3, 0x101);
  else
    sub_8020968(gBgVram.cbb0 + 0x88A0 + textbox->tileCursor / 2 * 128, r3, 0x101);
  textbox->tileCursor++;
  if (!gPlayerName[textbox->glyphOffset])
    textbox->mode = 0;
}

void RenderNextCardDescChar (struct DuelTextbox* textbox) {
  if (!textbox->glyphOffset) {
    ConvertU16ToDigitBuffer(textbox->cardId, DIGIT_FLAG_NONE);
    while (gDigitBufferU16[textbox->glyphOffset] == DIGIT_TERMINATOR)
      textbox->glyphOffset++;
  }
  if (textbox->tileCursor % 2) {
    sub_8020968(gBgVram.cbb0 + 0x88C0 + textbox->tileCursor / 2 * 128,
                gFontTileGlyphs[gDigitBufferU16[textbox->glyphOffset] * 2 + 1] << 8 | gFontTileGlyphs[gDigitBufferU16[textbox->glyphOffset] * 2],
                0x101);
  }
  else {
    sub_8020968(gBgVram.cbb0 + 0x88A0 + textbox->tileCursor / 2 * 128,
                gFontTileGlyphs[gDigitBufferU16[textbox->glyphOffset] * 2 + 1] << 8 | gFontTileGlyphs[gDigitBufferU16[textbox->glyphOffset] * 2],
                0x101);
  }
  textbox->tileCursor++;
  if (++textbox->glyphOffset == 5)
    textbox->mode = 0;
}

//TODO: rename sub_8041B38 to be the same
static inline void InitTextboxDisplay_inline (void) {
  unsigned char i;
  // copying 4 bytes past source buffer g80F2C30?
  for (i = 0; i < 18; i++)
    CpuCopy32(g80F2C30[i], gBgVram.cbb0 + 0xE800 + i * 64, 64);

  /*This is tile data for duel textbox border; it's all spaces so nothing appears*/
  /*It appears that they considered having such a border at one point*/
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x87A0, gE0D14C, 0x801);

  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x88A0, gText_Spaces, 0x101); //empty text box
  WaitForVBlank();
  sub_8041014();
  REG_WINOUT = 30;
  REG_WIN1H = 0x3ED;
  REG_WIN1V = 0x438D;
  WaitForVBlank();
  *(vu8*)(0x4000049) = 54;
  REG_BLDY = 7;
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
}

static inline void RunTextRenderTask_inline (struct DuelTextbox* textbox) {
  while (textbox->textBuffer[textbox->textCursor]) {
    switch (textbox->mode) {
      case MODE_TEXT:
        RenderNextTextToken(textbox);
        break;
      case MODE_WAIT_INPUT:
        WaitForTextboxAdvanceInput(textbox);
        break;
      case MODE_CLEAR_TEXTBOX_AND_ADVANCE:
        ClearTextboxAndAdvance(textbox);
        break;
      case MODE_CARD_NAME:
        RenderNextCardNameChar(textbox);
        break;
      case MODE_PLAYER_NAME:
        RenderNextPlayerNameChar(textbox);
        break;
      case MODE_CARD_DESCRIPTION:
        RenderNextCardDescChar(textbox);
        break;
    }
    WaitForVBlank();
    sub_8041014();
  }
}

void sub_80419EC (unsigned char* arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
  struct DuelTextbox textbox;
  textbox.textCursor = 0;
  textbox.tileCursor = 0;
  textbox.mode = 0;
  textbox.textBuffer = arg0;
  textbox.blinkFrameCounter = 0;
  textbox.glyphOffset = 0;
  textbox.unk14 = arg1;
  textbox.unk16 = arg2;
  textbox.unk18 = arg3;
  textbox.unk1A = arg4;
  InitTextboxDisplay_inline();
  RunTextRenderTask_inline(&textbox);
}

void sub_8041B38 (void) {
  unsigned char i;
  // copying 4 bytes past source buffer g80F2C30?
  for (i = 0; i < 18; i++)
    CpuCopy32(g80F2C30[i], gBgVram.cbb0 + 0xE800 + i * 64, 64);

  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x87A0, gE0D14C, 0x801);
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x88A0, gText_Spaces, 0x101); //empty text box
  WaitForVBlank();
  sub_8041014();
  REG_WINOUT = 30;
  REG_WIN1H = 0x3ED;
  REG_WIN1V = 0x438D;
  WaitForVBlank();
  *(vu8*)(0x4000049) = 54;
  REG_BLDY = 7;
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
}

void RunTextRenderTask (struct DuelTextbox* textbox) {
  RunTextRenderTask_inline(textbox);
}

static void ClearTextboxAndAdvance (struct DuelTextbox* textbox) {
  textbox->textCursor++;
  textbox->tileCursor = 0;
  textbox->blinkFrameCounter = 0;
  textbox->mode = 0;
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x88A0, gText_Spaces, 0x101);
}
