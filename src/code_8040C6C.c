#include "global.h"


struct Test8041240 {
  u32 unk0;
  u32 unk4;
  unsigned char unk8;
  unsigned char filler9[3];
  unsigned char* unkC;
  u16 unk10;
  u16 unk12;
  u16 unk14;
  u16 unk16;
  u16 unk18;
  u16 unk1A;
  unsigned char unk1C;
};

extern u16 gNewButtons;
extern u32* gFieldTilePtrs[];
extern u16* g8E0D130[];
extern const unsigned char gE0D15D[]; // all spaces. empty duel text box before displaying actual text.
extern u16 (*gFieldTileMapPtrs[])[31];
extern struct OamData gOamBuffer[];
extern unsigned char g201EE70[];
extern unsigned char g201EEE0[];
extern unsigned char* gNumTributesRequiredStrings[];
extern const s16 sin_cos_table[];
extern unsigned char g8E0D1D0[];
extern u16 g80F2C30[][30];
extern unsigned char gE0D14C[];

void sub_8041B38 (void);
void sub_8041BE8 (struct Test8041240*);
static void sub_8041C68 (struct Test8041240*);
void HuffUnComp (void*, void*);

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
  CpuCopy16(g8E0D130[field], gPaletteBuffer, 96);

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
  CpuCopy16(g8E0D130[field], gPaletteBuffer, 96);
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

void sub_80411EC (struct OamData* arg0) {
  arg0->y = 192;
  arg0->x = 448;
  arg0->shape = 0;
  arg0->size = 0;
  arg0->tileNum = 0;
  arg0->priority = 3;
  arg0->hflip = 0;
  arg0->vflip = 0;
  arg0->affineMode = 0;
}

void DisplayNumRequiredTributesText (unsigned char numTributes) {
  struct Test8041240 test;
  unsigned char* string = gNumTributesRequiredStrings[numTributes - 1];
  test.unk0 = 0;
  test.unk4 = 0;
  test.unk8 = 0;
  test.unkC = string;
  test.unk10 = 0;
  test.unk1C = 0;
  test.unk14 = 0;
  test.unk16 = 0;
  test.unk18 = 0;
  test.unk1A = 0;
  sub_8041B38();
  sub_8041BE8(&test);
  UpdateDuelGfxExceptField();
}

void sub_8041284 (struct Test8041240* arg0) {
  switch (arg0->unkC[arg0->unk0]) {
    case '#':
      arg0->unk0++;
      switch (arg0->unkC[arg0->unk0]) {
        case '0':
          arg0->unk0++;
          if (arg0->unk4 % 28)
            arg0->unk4 = (arg0->unk4 / 28 + 1) * 28;
          if (arg0->unk4 > 84)
            arg0->unk4 = 84;
          break;
        case '1':
          arg0->unk8 = 1;
          break;
        case '2':
          arg0->unk8 = 2;
          arg0->unk0++;
          arg0->unk1C = 0;
          arg0->unk12 = arg0->unk14;
          break;
        case '3':
          arg0->unk8 = 2;
          arg0->unk0++;
          arg0->unk1C = 0;
          arg0->unk12 = arg0->unk16;
          break;
        case '4':
          arg0->unk8 = 6;
          break;
        case '5':
          arg0->unk1C = 0;
          arg0->unk8 = 4;
          arg0->unk0++;
          break;
        case '6':
          arg0->unk1C = 0;
          arg0->unk8 = 5;
          arg0->unk12 = arg0->unk18;
          arg0->unk0++;
          break;
        case '7':
          arg0->unk1C = 0;
          arg0->unk8 = 5;
          arg0->unk12 = arg0->unk1A;
          arg0->unk0++;
          break;
        case '8':
          {
            u32 i;
            for (i = arg0->unkC[arg0->unk0 + 1]; i; i--)
              WaitForVBlank();
          }
          arg0->unk0 += 2;
          break;
      }
      break;
    case '$':
      arg0->unk0 += sub_8020698(arg0->unkC + arg0->unk0);
      break;
    default:
      //macroize this? (basically the same code is in script.c)
      {
        u16 r3;
        if (arg0->unkC[arg0->unk0] & 0x80) {
          r3 = arg0->unkC[arg0->unk0 + 1] << 8;
          r3 |= arg0->unkC[arg0->unk0];
          arg0->unk0 += 2;
        }
        else switch (arg0->unkC[arg0->unk0]) {
          case ' ': case '!': case '"': case '%': case '\'':
            case ',': case '-': case '.': case ':': case ';': case '?':
            case 'A' ... 'Z': case 'a' ... 'z':
                r3 = gUnk_8E00E30[arg0->unkC[arg0->unk0] - ' '][1];
                r3 <<= 8;
                r3 |= gUnk_8E00E30[arg0->unkC[arg0->unk0] - ' '][0];
                arg0->unk0++;
                break;
            default:
                r3 = gUnk_8E00E30[0][1];
                r3 <<= 8;
                r3 |= gUnk_8E00E30[0][0];
                arg0->unk0++;
                break;
        }
        if (arg0->unk4 % 2)
          sub_8020968(gBgVram.cbb0 + 0x88C0 + arg0->unk4 / 2 * 128, r3, 0x101);
        else
          sub_8020968(gBgVram.cbb0 + 0x88A0 + arg0->unk4 / 2 * 128, r3, 0x101);
        arg0->unk4++;
      }
      break;
  }
}

//waiting for player to press A, B, or R to close text box.
void sub_80415B8 (struct Test8041240* arg0) {
  if (gNewButtons & (A_BUTTON | B_BUTTON | R_BUTTON)) {
    PlayMusic(SFX_DIALOGUE);
    arg0->unk0++;
    arg0->unk4 = 0;
    arg0->unk10 = 0;
    arg0->unk8 = 0;
    CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x88A0, gE0D15D, 0x101);
  }
  else {
    switch (arg0->unk10++) {
      case 0:
        if (arg0->unk4 % 2)
          sub_8020968(gBgVram.cbb0 + 0x88C0 + arg0->unk4 / 2 * 128, 0xA081, 0x101);
        else
          sub_8020968(gBgVram.cbb0 + 0x88A0 + arg0->unk4 / 2 * 128, 0xA081, 0x101);
        break;
      case 15:
        if (arg0->unk4 % 2)
          sub_8020968(gBgVram.cbb0 + 0x88C0 + arg0->unk4 / 2 * 128, 0x4081, 0x101);
        else
          sub_8020968(gBgVram.cbb0 + 0x88A0 + arg0->unk4 / 2 * 128, 0x4081, 0x101);
        break;
      case 29:
        arg0->unk10 = 0;
        break;
    }
  }
}

void sub_8041690 (struct Test8041240* arg0) {
  u16 i;
  u32 r8;
  u16 r3;
  u16 r5;
  u16 r4;
  u16 r2;
  u16 sb;
  if (!arg0->unk1C) {
    SetCardInfo(arg0->unk12);
    r8 = 25;
    if (gLanguage == GERMAN) {
      if (arg0->unk12 == MACHINE_CONVERSION_FACTORY)
        r8 = 26;
      if (arg0->unk12 == MAN_EATING_TREASURE_CHEST)
        r8 = 27;
    }
    for (r3 = 0; r3 < 112; r3++)
      g201EE70[r3] = g201EEE0[r3] = 0;
    r3 = sub_8020698(gCardInfo.name);
    r5 = 0;
    r4 = 0;
    r2 = 0;
    while (gCardInfo.name[r3] && gCardInfo.name[r3] != '$') {
      if (gCardInfo.name[r3] > 127) {
        g201EE70[r4] = gCardInfo.name[r3];
        r4++;
        r3++;
      }
      else if (gCardInfo.name[r3] == ' ' && r2 < 28) {
        r5 = r4;
        sb = r2;
      }
      g201EE70[r4] = gCardInfo.name[r3];
      r4++;
      r3++;
      r2++;
    }
    if (r2 > r8) {
      g201EE70[r5] = 0;
      r4 = r5 + 1;
      strcpy(g201EEE0, g201EE70);
      for (r2 = sb; r2 < 28; r2++) {
        g201EEE0[r5] = ' ';
        r5++;
      }
      strcpy(g201EEE0 + r5, g201EE70 + r4);
    }
    else {
      strcpy(g201EEE0, g201EE70);
    }
  }
  if (g201EEE0[arg0->unk1C] <= 127) {
    r3 = gUnk_8E00E30[g201EEE0[arg0->unk1C] - ' '][1];
    r3 <<= 8;
    r3 |= gUnk_8E00E30[g201EEE0[arg0->unk1C] - ' '][0];
    arg0->unk1C++;
  }
  else {
    r3 = g201EEE0[arg0->unk1C + 1];
    r3 <<= 8;
    r3 |= g201EEE0[arg0->unk1C];
    arg0->unk1C += 2;
  }
  if (arg0->unk4 % 2)
    sub_8020968(gBgVram.cbb0 + 0x88C0 + arg0->unk4 / 2 * 128, r3, 0x101);
  else
    sub_8020968(gBgVram.cbb0 + 0x88A0 + arg0->unk4 / 2 * 128, r3, 0x101);
  arg0->unk4++;
  if (!g201EEE0[arg0->unk1C])
    arg0->unk8 = 0;
}

void sub_8041884 (struct Test8041240* arg0) {
  u16 r3;
  if (gPlayerName[arg0->unk1C] <= 127) {
    r3 = gUnk_8E00E30[gPlayerName[arg0->unk1C] - ' '][1];
    r3 <<= 8;
    r3 |= gUnk_8E00E30[gPlayerName[arg0->unk1C] - ' '][0];
    arg0->unk1C++;
  }
  else {
    r3 = gPlayerName[arg0->unk1C + 1];
    r3 <<= 8;
    r3 |= gPlayerName[arg0->unk1C];
    arg0->unk1C += 2;
  }
  if (arg0->unk4 % 2)
    sub_8020968(gBgVram.cbb0 + 0x88C0 + arg0->unk4 / 2 * 128, r3, 0x101);
  else
    sub_8020968(gBgVram.cbb0 + 0x88A0 + arg0->unk4 / 2 * 128, r3, 0x101);
  arg0->unk4++;
  if (!gPlayerName[arg0->unk1C])
    arg0->unk8 = 0;
}

void sub_8041924 (struct Test8041240* arg0) {
  u16 r3;
  unsigned char* r0;
  if (!arg0->unk1C) {
    sub_800DDA0(arg0->unk12, 0);
    while (g2021BD0[arg0->unk1C] == 10)
      arg0->unk1C++;
  }
  if (arg0->unk4 % 2) {
    sub_8020968(gBgVram.cbb0 + 0x88C0 + arg0->unk4 / 2 * 128,
                g8E0D1D0[g2021BD0[arg0->unk1C] * 2 + 1] << 8 | g8E0D1D0[g2021BD0[arg0->unk1C] * 2],
                0x101);
  }
  else {
    sub_8020968(gBgVram.cbb0 + 0x88A0 + arg0->unk4 / 2 * 128,
                g8E0D1D0[g2021BD0[arg0->unk1C] * 2 + 1] << 8 | g8E0D1D0[g2021BD0[arg0->unk1C] * 2],
                0x101);
  }
  arg0->unk4++;
  if (++arg0->unk1C == 5)
    arg0->unk8 = 0;
}

static inline void sub_8041B38_inline (void) {
  unsigned char i;
  // copying 4 bytes past source buffer g80F2C30?
  for (i = 0; i < 18; i++)
    CpuCopy32(g80F2C30[i], gBgVram.cbb0 + 0xE800 + i * 64, 64);

  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x87A0, gE0D14C, 0x801); 
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x88A0, gE0D15D, 0x101); //empty text box
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

static inline void sub_8041BE8_inline (struct Test8041240* test) {
  while (test->unkC[test->unk0]) {
    switch (test->unk8) {
      case 0:
        sub_8041284(test);
        break;
      case 1:
        sub_80415B8(test);
        break;
      case 6:
        sub_8041C68(test);
        break;
      case 2:
        sub_8041690(test);
        break;
      case 4:
        sub_8041884(test);
        break;
      case 5:
        sub_8041924(test);
        break;
    }
    WaitForVBlank();
    sub_8041014();
  }
}

void sub_80419EC (unsigned char* arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
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
  sub_8041B38_inline();
  sub_8041BE8_inline(&test);
}

void sub_8041B38 (void) {
  unsigned char i;
  // copying 4 bytes past source buffer g80F2C30?
  for (i = 0; i < 18; i++)
    CpuCopy32(g80F2C30[i], gBgVram.cbb0 + 0xE800 + i * 64, 64);

  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x87A0, gE0D14C, 0x801); 
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x88A0, gE0D15D, 0x101); //empty text box
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

void sub_8041BE8 (struct Test8041240* test) {
  while (test->unkC[test->unk0]) {
    switch (test->unk8) {
      case 0:
        sub_8041284(test);
        break;
      case 1:
        sub_80415B8(test);
        break;
      case 6:
        sub_8041C68(test);
        break;
      case 2:
        sub_8041690(test);
        break;
      case 4:
        sub_8041884(test);
        break;
      case 5:
        sub_8041924(test);
        break;
    }
    WaitForVBlank();
    sub_8041014();
  }
}

static void sub_8041C68 (struct Test8041240* arg0) {
  arg0->unk0++;
  arg0->unk4 = 0;
  arg0->unk10 = 0;
  arg0->unk8 = 0;
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x88A0, gE0D15D, 0x101);
}
