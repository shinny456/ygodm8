#include "global.h"

static void sub_8026A94 (void);
static void sub_08026BA4 (void);
static void sub_8026BA8 (void);
static void sub_8026BE8 (void);
static void sub_08026C28 (void);
static void sub_8026C2C (void);
static void sub_8026CEC (void);
static void sub_8026D04 (void);
static void sub_8026D20 (void);
static void sub_8026D58 (void);
static void sub_8026D74 (void);
static void sub_8026E44 (void);
static void sub_8026E94 (void);

extern u8 g201EE60;
extern u8 g201EE61;

extern u32 gE01E50[];
extern u32 gE02E50[];
extern u32 gE01390[];

extern u32 gE04810[];
extern u32 gE06810[]; //continuation of gE04810. for some reason it's split
extern u32 gE08810[]; //same ^
extern u32 gE0A810[]; //same ^

extern u16 gE0B2B0[][32];
extern u16 gE0B7B0[][32];
extern u16 gE0BCB0[][32];
extern u16 gE0C1B0[][32];
extern u16 gE0ADB0[][32];
extern u16 gE02610[][32];
extern u16 gE03E10[][32];
extern u16 gE01750[][32];
extern u16 gE0A8B0[][32];

extern u16 gE01370[];
extern u16 gE01C50[];
extern u16 gE02E10[];
extern u16 gE04610[];


void CopyrightScreensMain (void) {
  u8 i;
  sub_8026A94();
  SetVBlankCallback(sub_8026D74);
  WaitForVBlank();
  for (i = 0; i < 120; i++)
    WaitForVBlank();
  sub_8026D04();
  SetVBlankCallback(sub_8026E44);
  REG_BLDCNT = 0x3FFF;
  g201EE61 = 16; //blend value
  g201EE60 = 0; //blend timer
  WaitForVBlank();
  while (g201EE61) {
    if (++g201EE60 > 3) {
      if (g201EE61 != 0)
        g201EE61--;
      g201EE60 = 0;
    }
    REG_BLDY = g201EE61;
    WaitForVBlank();
  }
  for (i = 0; i < 120; i++)
    WaitForVBlank();
  g201EE61 = 0;
  g201EE60 = 0;
  while (g201EE61 < 16) {
    if (++g201EE60 > 3) {
      if (g201EE61 < 16)
        g201EE61++;
      g201EE60 = 0;
    }
    REG_BLDY = g201EE61;
    WaitForVBlank();
  }
  sub_8026D20();
  SetVBlankCallback(sub_8026E94);
  REG_BLDCNT = 0x3FFF;
  g201EE61 = 16;
  g201EE60 = 0;
  WaitForVBlank();
  while (g201EE61) {
    if (++g201EE60 > 3) {
      if (g201EE61 != 0)
        g201EE61--;
      g201EE60 = 0;
    }
    REG_BLDY = g201EE61;
    WaitForVBlank();
  }
  for (i = 0; i < 120; i++)
    WaitForVBlank();
  g201EE61 = 0;
  g201EE60 = 0;
  while (g201EE61 < 16) {
    if (++g201EE60 > 3) {
      if (g201EE61 < 16)
        g201EE61++;
      g201EE60 = 0;
    }
    REG_BLDY = g201EE61;
    WaitForVBlank();
  }
  REG_BLDCNT = 0x3FFF;
  g201EE61 = 16;
  g201EE60 = 0;
  REG_BLDY = g201EE61;
}

static void sub_8026A94 (void) {
  sub_08026BA4();
  SetVBlankCallback(sub_8026D58);
  WaitForVBlank();
  sub_8026C2C();
  sub_8026BA8();
  sub_8026BE8();
  sub_08026C28();
  LoadVRAM();
  sub_8026CEC();
}

static void sub_8026AC4 (u8 arg0) { //country flag tilemaps
  u32 i;
  arg0--;
  switch (arg0) {
    case 1:
      for (i = 0; i < 20; i++)
        CpuCopy16(gE0B2B0[i], gBgVram.sbb1F[i], 64);
      break;
    case 2:
      for (i = 0; i < 20; i++)
        CpuCopy16(gE0B7B0[i], gBgVram.sbb1F[i], 64);
      break;
    case 3:
      for (i = 0; i < 20; i++)
        CpuCopy16(gE0BCB0[i], gBgVram.sbb1F[i], 64);
      break;
    case 4:
      for (i = 0; i < 20; i++)
        CpuCopy16(gE0C1B0[i], gBgVram.sbb1F[i], 64);
      break;
    default:
      for (i = 0; i < 20; i++)
        CpuCopy16(gE0ADB0[i], gBgVram.sbb1F[i], 64);
      break;
  }
}

static void sub_08026BA4 (void) {
}

static void sub_8026BA8 (void) {
  u32 i;
  //copying past src buffer?
  CpuCopy16(gE01E50, gBgVram.cbb0, 0x2000); //first Konami screen tiles
  for (i = 0; i < 20; i++)
    CpuCopy16(gE02610[i], gBgVram.sbb1F[i], 64); //tilemap
}

static void sub_8026BE8 (void) {
  u32 i;
  CpuCopy16(gE02E50, gBgVram.cbb1, 0xFC0); //second Konami screen tils
  for (i = 0; i < 20; i++)
    CpuCopy16(gE03E10[i], gBgVram.sbb1E[i], 64); //tilemap
}

static void sub_08026C28 (void) {
}

static void sub_8026C2C (void) {
  u32 i;
  CpuCopy16(gE01390, gBgVram.sbb18, 0x3C0); //Licensed by Nintendo tiles
  for (i = 0; i < 20; i++)
    CpuCopy16(gE01750[i], gBgVram.sbb1C[i], 64); //Licensed by Nintendo tilemap
}

static void sub_8026C6C (void) { //language selection gfx
  u32 i;
  CpuCopy16(gE04810, gBgVram.cbb0, 0x2000);
  CpuCopy16(gE06810, &gBgVram.cbb0[0x2000], 0x2000);
  CpuCopy16(gE08810, gBgVram.cbb1, 0x2000);
  CpuCopy16(gE0A810, &gBgVram.cbb1[0x2000], 160);
  for (i = 0; i < 20; i++)
    CpuCopy16(gE0A8B0[i], gBgVram.sbb1E[i], 64);
  sub_8026AC4(1);
}

static void sub_8026CEC (void) {
  CpuCopy16(gE01370, gPaletteBuffer, 32); //gPaletteBuffer + (LICENSED_BY_NINTENDO_PAL_INDEX/BANK = 0) * (COLORS_PER_PALETTE = 16)
}

static void sub_8026D04 (void) {
  CpuCopy16(gE01C50, gPaletteBuffer, 512);
}

static void sub_8026D20 (void) {
  CpuCopy16(gE02E10, gPaletteBuffer, 64);
}

static void sub_8026D38 (void) {
}

static void sub_8026D3C (void) {
  CpuCopy16(gE04610, gPaletteBuffer, 512);
}

static void sub_8026D58 (void) {
  REG_DISPCNT = DISPCNT_FORCED_BLANK;
  REG_BLDCNT = 0;
  REG_BLDALPHA = 0;
  REG_BLDY = 0;
}

static void sub_8026D74 (void) {
  LoadPalettes();
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1C00;
  REG_BG3CNT |= 0xC;
  REG_DISPCNT = DISPCNT_BG3_ON;
}

static void sub_8026DC8 (void) {
  LoadPalettes();
  gBG2VOFS = 0;
  gBG2HOFS = 0;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG2CNT &= 0xE0F3;
  REG_BG2CNT |= 0x1F00;
  REG_BG2CNT = REG_BG2CNT;
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1E00;
  REG_BG3CNT = REG_BG3CNT;
  REG_DISPCNT = DISPCNT_BG2_ON | DISPCNT_BG3_ON;
}

static void sub_8026E44 (void) {
  LoadPalettes();
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1F00;
  REG_BG3CNT = REG_BG3CNT;
  REG_DISPCNT = DISPCNT_BG3_ON;
}

static void sub_8026E94 (void) {
  LoadPalettes();
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1E00;
  REG_BG3CNT |= 4;
  REG_DISPCNT = DISPCNT_BG3_ON;
}

static void sub_8026EE8 (void) {
  LoadPalettes();
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1D00;
  REG_BG3CNT |= 8;
  REG_DISPCNT = DISPCNT_BG3_ON;
}
