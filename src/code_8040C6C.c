#include "global.h"
#include "gba/defines.h"
#include "gba/types.h"
#include "gba/io_reg.h"
#include "gba/macro.h"
#include "gba/syscall.h"
#include "duel.h"
#include "overworld.h"
#include "card.h"
#include "constants/card_ids.h"

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

extern u16 gUnk2020DFC;
extern u32* g8E0D0F8[];
extern u16* g8E0D130[];
extern const u8 gE0D15D[];
extern u16 (*gE0D114[])[31];
extern struct OamData gOamBuffer[];
extern u8 g201EE70[];
extern u8 g201EEE0[];
extern u8* g8E0D41C[];
extern const s16 sin_cos_table[];
extern u8 gPlayerName[];
extern u8 g8E0D1D0[];
extern u16 g80F2C30[][30];
extern u8 gE0D14C[];

inline void sub_8041B38 (void);
inline void sub_8041BE8 (struct Test8041240*);
inline void sub_8041C68 (struct Test8041240*);
void HuffUnComp (void*, void*);
void sub_8020A3C(void *, const void *, u16);
s16 fix_mul (s16, s16);
s16 fix_inverse (s16);

// todo: replace with affine struct
void sub_8040C6C (void) {
  u8 i;
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



// must be declared as either int or u32 to match
// the assignments in sub_8040EF0:
// gBG2VOFS = sub_8041D60(gCursorPosition.currentY);
// gBG2VOFS = sub_8041D60(1);
// (most likely due to implicit declarations?)
u32 sub_8041D60 (u8);


void sub_8040B4C (void);
void sub_8041EC8 (void);
void sub_80577A4 (void);
void sub_80408FC (void);
void sub_8041E64 (void);
void sub_804405C (void);
void sub_80410B4 (void);
void sub_80411D4 (void);

void sub_8040EF0 (void) {
  u8 i, field;
  sub_8008220();
  sub_8045718();
  field = gDuel.field;
  REG_BG2CNT = 0x9B02;
  HuffUnComp(g8E0D0F8[field], gBgVram.cbb0);
  CpuCopy16(g8E0D130[field], g02000000.bg, 96);

  // copying 64 bytes from 62 byte array?
  for (i = 0; i < 40; i++)
    CpuCopy16(gE0D114[field][i], gBgVram.cbb0 + 0xD800 + i * 64, 64);
  gBG2HOFS = 4;
  gBG2VOFS = sub_8041D60(gCursorPosition.currentY);
  gBG2VOFS = sub_8041D60(1);
  sub_8040B4C();
  sub_8041EC8();
  sub_8040C6C();
  sub_80577A4();
  sub_80408FC();
  sub_8008220();
  LoadVRAM();
  LoadBgOffsets();
  LoadOam();
  LoadPalettes();
  REG_DISPCNT = 0x3600;
  REG_BLDCNT = 0xD4;
  REG_BLDY = 10;
}

void sub_8040FDC (void) {
  LoadOam();
  LoadBgOffsets();
  CpuCopy32(gBgVram.cbb0 + 0x8040, (u8*)BG_VRAM + 0x8040, 0x740);
  CpuCopy16(g02000000.bg + 0x50, (u16*)PLTT + 0x50, 0x40);
}

void sub_8041014 (void) {
  CpuCopy32(gBgVram.cbb0 + 0x87A0, (u8*)BG_VRAM + 0x87A0, 0x1D00);
  CpuCopy32(gBgVram.cbb0 + 0xE800, (u8*)BG_VRAM + 0xE800, 0x480);
}

void sub_8041050 (void) {
  LoadBgOffsets();
  CpuCopy32(gBgVram.cbb0 + 0x87A0, (u8*)BG_VRAM + 0x87A0, 0x160);
  CpuCopy32(gBgVram.cbb0 + 0xF000, (u8*)BG_VRAM + 0xF000, 0x1000);
}

void sub_8041090 (void) {
  sub_8041E64();
  REG_DISPCNT = 0;
  sub_804405C();
  sub_80410B4();
  sub_80081DC(LoadBgOffsets);
}

void sub_80410B4 (void) {
  sub_8008220();
  sub_8045718();
  sub_8041140(gDuel.field);
  sub_8040B4C();
  sub_8041EC8();
  sub_8040C6C();
  sub_80577A4();
  sub_80408FC();
  sub_8008220();
  sub_80411D4();
  REG_DISPCNT = 0x3600;
  REG_BLDCNT = 0xD4;
  REG_BLDY = 10;
}

void sub_8041104 (void) {
  sub_8040B4C();
  sub_8041EC8();
  sub_8040C6C();
  sub_80577A4();
  sub_80408FC();
  sub_8008220();
  sub_80411D4();
  REG_DISPCNT = 0x3600;
  REG_BLDCNT = 0xD4;
  REG_BLDY = 10;
}

void sub_8041140 (u8 field) {
  u8 i;
  REG_BG2CNT = 0x9B02;
  HuffUnComp(g8E0D0F8[field], gBgVram.cbb0);
  CpuCopy16(g8E0D130[field], g02000000.bg, 96);
  // copying 64 bytes from 62 byte array?
  for (i = 0; i < 40; i++)
    CpuCopy16(gE0D114[field][i], gBgVram.cbb0 + 0xD800 + i * 64, 64);
  gBG2HOFS = 4;
  gBG2VOFS = sub_8041D60(gCursorPosition.currentY);
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

void sub_8041240 (u8 arg0) {
  struct Test8041240 test;
  u8* temp = g8E0D41C[arg0 - 1];
  test.unk0 = 0;
  test.unk4 = 0;
  test.unk8 = 0;
  test.unkC = temp;
  test.unk10 = 0;
  test.unk1C = 0;
  test.unk14 = 0;
  test.unk16 = 0;
  test.unk18 = 0;
  test.unk1A = 0;
  sub_8041B38();
  sub_8041BE8(&test);
  sub_8041104();
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
              sub_8008220();
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

void sub_80415B8 (struct Test8041240* arg0) {
  if (gUnk2020DFC & 0x103) {
    PlayMusic(0xCA);
    arg0->unk0++;
    arg0->unk4 = 0;
    arg0->unk10 = 0;
    arg0->unk8 = 0;
    sub_8020A3C(gBgVram.cbb0 + 0x88A0, gE0D15D, 0x101);
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
  u8* r0;
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

inline void sub_8041B38 (void) {
  u8 i;
  // copying 4 bytes past source buffer g80F2C30?
  for (i = 0; i < 18; i++)
    CpuCopy32(g80F2C30[i], gBgVram.cbb0 + 0xE800 + i * 64, 64);

  sub_8020A3C(gBgVram.cbb0 + 0x87A0, gE0D14C, 0x801);
  sub_8020A3C(gBgVram.cbb0 + 0x88A0, gE0D15D, 0x101);
  sub_8008220();
  sub_8041014();
  REG_WINOUT = 30;
  REG_WIN1H = 0x3ED;
  REG_WIN1V = 0x438D;
  sub_8008220();
  *(vu8*)(0x4000049) = 54;
  REG_BLDY = 7;
  REG_DISPCNT = 0x7600;
}

inline void sub_8041BE8 (struct Test8041240* test) {
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
    sub_8008220();
    sub_8041014();
  }
}

inline void sub_8041C68 (struct Test8041240* arg0) {
  arg0->unk0++;
  arg0->unk4 = 0;
  arg0->unk10 = 0;
  arg0->unk8 = 0;
  sub_8020A3C(gBgVram.cbb0 + 0x88A0, gE0D15D, 0x101);
}

void sub_80419EC (u8* arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
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
}
