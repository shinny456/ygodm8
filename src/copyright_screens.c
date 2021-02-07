#include "global.h"
#include "duel.h"
#include "gba/syscall.h"
#include "gba/io_reg.h"
#include "gba/macro.h"

extern u8 g201EE60;
extern u8 g201EE61;

void sub_8026A94 (void);
void sub_8026D74 (void);
void sub_8026D04 (void);
void sub_8026D20 (void);
void sub_8026E44 (void);
void sub_8026E94 (void);
void sub_8026C2C (void);
void sub_8026BA8 (void);
void sub_8026BE8 (void);
void sub_08026C28 (void);
void sub_8026D58 (void);
void sub_8026CEC (void);
void sub_08026BA4 (void);

extern u32 gE01E50[];
extern u32 gE02E50[];
extern u32 gE01390[];
extern u32 gE04810[];
extern u32 gE06810[];
extern u32 gE08810[];
extern u32 gE0A810[];
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


void sub_80268D8 (void) {
  u8 i;
  sub_8026A94();
  sub_80081DC(sub_8026D74);
  sub_8008220();
  for (i = 0; i < 120; i++)
    sub_8008220();
  sub_8026D04();
  sub_80081DC(sub_8026E44);
  REG_BLDCNT = 0x3FFF;
  g201EE61 = 16;
  g201EE60 = 0;
  sub_8008220();
  while (g201EE61) {
    if (++g201EE60 > 3) {
      if (g201EE61 != 0)
        g201EE61--;
      g201EE60 = 0;
    }
    REG_BLDY = g201EE61;
    sub_8008220();
  }
  for (i = 0; i < 120; i++)
    sub_8008220();
  g201EE61 = 0;
  g201EE60 = 0;
  while (g201EE61 < 16) {
    if (++g201EE60 > 3) {
      if (g201EE61 < 16)
        g201EE61++;
      g201EE60 = 0;
    }
    REG_BLDY = g201EE61;
    sub_8008220();
  }
  sub_8026D20();
  sub_80081DC(sub_8026E94);
  REG_BLDCNT = 0x3FFF;
  g201EE61 = 16;
  g201EE60 = 0;
  sub_8008220();
  while (g201EE61) {
    if (++g201EE60 > 3) {
      if (g201EE61 != 0)
        g201EE61--;
      g201EE60 = 0;
    }
    REG_BLDY = g201EE61;
    sub_8008220();
  }
  for (i = 0; i < 120; i++)
    sub_8008220();
  g201EE61 = 0;
  g201EE60 = 0;
  while (g201EE61 < 16) {
    if (++g201EE60 > 3) {
      if (g201EE61 < 16)
        g201EE61++;
      g201EE60 = 0;
    }
    REG_BLDY = g201EE61;
    sub_8008220();
  }
  REG_BLDCNT = 0x3FFF;
  g201EE61 = 16;
  g201EE60 = 0;
  REG_BLDY = g201EE61;
}

void sub_8026A94 (void) {
  sub_08026BA4();
  sub_80081DC(sub_8026D58);
  sub_8008220();
  sub_8026C2C();
  sub_8026BA8();
  sub_8026BE8();
  sub_08026C28();
  LoadVRAM();
  sub_8026CEC();
}

void sub_8026AC4 (u8 arg0) {
  u32 i;
  arg0 += 255;
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

void sub_08026BA4 (void) {}

void sub_8026BA8 (void) {
  u32 i;
  CpuCopy16(gE01E50, gBgVram.cbb0, 0x2000);
  for (i = 0; i < 20; i++)
    CpuCopy16(gE02610[i], gBgVram.sbb1F[i], 64);
}

void sub_8026BE8 (void) {
  u32 i;
  CpuCopy16(gE02E50, gBgVram.cbb1, 0xFC0);
  for (i = 0; i < 20; i++)
    CpuCopy16(gE03E10[i], gBgVram.sbb1E[i], 64);
}

void sub_08026C28 (void) {}

void sub_8026C2C (void) {
  u32 i;
  CpuCopy16(gE01390, gBgVram.sbb18, 0x3C0);
  for (i = 0; i < 20; i++)
    CpuCopy16(gE01750[i], gBgVram.sbb1C[i], 64);
}

void sub_8026C6C (void) {
  u32 i;
  CpuCopy16(gE04810, gBgVram.cbb0, 0x2000);
  CpuCopy16(gE06810, &gBgVram.cbb0[0x2000], 0x2000);
  CpuCopy16(gE08810, gBgVram.cbb1, 0x2000);
  CpuCopy16(gE0A810, &gBgVram.cbb1[0x2000], 160);
  for (i = 0; i < 20; i++)
    CpuCopy16(gE0A8B0[i], gBgVram.sbb1E[i], 64);
  sub_8026AC4(1);
}

void sub_8026CEC (void) {
  CpuCopy16(gE01370, g02000000.bg, 32);
}

void sub_8026D04 (void) {
  CpuCopy16(gE01C50, g02000000.bg, 512);
}

void sub_8026D20 (void) {
  CpuCopy16(gE02E10, g02000000.bg, 64);
}

void sub_8026D38 (void) {}

void sub_8026D3C (void) {
  CpuCopy16(gE04610, g02000000.bg, 512);
}

void sub_8026D58 (void) {
  REG_DISPCNT = 0x80;
  REG_BLDCNT = 0;
  REG_BLDALPHA = 0;
  REG_BLDY = 0;
}

void sub_8026D74 (void) {
  LoadPalettes();
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1C00;
  REG_BG3CNT |= 0xC;
  REG_DISPCNT = 0x800;
}

void sub_8026DC8 (void) {
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
  REG_DISPCNT = 0xC00;
}

void sub_8026E44 (void) {
  LoadPalettes();
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1F00;
  REG_BG3CNT = REG_BG3CNT;
  REG_DISPCNT = 0x800;
}

void sub_8026E94 (void) {
  LoadPalettes();
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1E00;
  REG_BG3CNT |= 4;
  REG_DISPCNT = 0x800;
}

void sub_8026EE8 (void) {
  LoadPalettes();
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
  REG_BG3CNT &= 0xE0F3;
  REG_BG3CNT |= 0x1D00;
  REG_BG3CNT |= 8;
  REG_DISPCNT = 0x800;
}
