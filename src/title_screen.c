#include "global.h"

// TODO: this struct is likely used elsewhere too, or at least the substruct.
const struct Unk8E0CD80{
  unsigned char unk0;
  unsigned char unk1; // number of hardware sprites (subsprites) that make up meta-sprite?
  unsigned char filler2[2];
  struct {unsigned short a, b, c;} * unk4;
} extern * g8E0CD80[];

static unsigned char sub_803531C (void);
static void sub_80353B0 (void);
static void sub_8035488 (void);
static void sub_80354A8 (void);
static unsigned char sub_80354C0 (void);
static unsigned char sub_803552C (unsigned char);
static unsigned char sub_803554C (void);
static unsigned short sub_8035558 (void);
static void sub_8035598 (void);
static void sub_80357C0 (void);
static void sub_80357F8 (void);
static void sub_803584C (void);
static void sub_8035894 (void);
static void sub_80358F8 (void);
static void sub_8035958 (void);
static void sub_8035988 (void);
static void sub_8035994 (unsigned char, const struct Unk8E0CD80*, unsigned short*); //TODO change oam type?
static void sub_80359D0 (void);
static void sub_80359F0 (void);
static void sub_8035A10 (void);
static void sub_8035AA8 (void);
static void sub_8035AC0 (void);
static void sub_8035ACC (void);
static void sub_8035AD8 (void);
static void sub_8035AE4 (void);
static void sub_8035B08 (void);
static void sub_8035B2C (void);
static void sub_8035B3C (void);

void sub_802612C (void);
unsigned char sub_800AC64 (void);
void sub_800ACE8 (unsigned char);
void sub_800AF68 (void);
void sub_800ADC4 (void);

unsigned char sub_8056208 (void);
void ClearGraphicsBuffers (void);
extern unsigned short gNewButtons;
extern unsigned* g8E0CD9C;
extern unsigned char g80DD498[];
extern unsigned short (*g8E0CDA4)[][30];
extern unsigned* g8E0CDA0;
union {
  u8 a[0x4000];
  u16 b[0x2000];
} extern gVr;

extern u16 gOamBuffer[];
struct {
  unsigned short unk0;
  unsigned short unk2;
}extern * g8E0CDB0;
extern unsigned short g8E0CDB4[];
extern unsigned char* g8E0CDA8;
extern unsigned short* g8E0CDAC;

static unsigned char sub_803525C (void) {
  unsigned char r4 = 1;
  unsigned r5;
  unsigned short temp;
  sub_8035488();
  sub_8035894();
  sub_8035B2C();
  sub_80081DC(sub_8035AA8);
  PlayMusic(1);
  sub_8008220();
  r5 = 1;
  while (r5 == 1) {
    sub_8056208();
    temp = sub_8035558();
    if (temp == 1) {
      if (r4 || !sub_803531C()) {
        r5 = 0;
        sub_8035020(1);
      }
    }
    else if (temp == 2) {
      PlayMusic(0x36);
      r4 = sub_803554C();
      sub_8035B3C();
      sub_80081DC(sub_8035AC0);
      sub_8008220();
    }
    else if (temp == 4) {
      PlayMusic(0x36);
      r4 = sub_803552C(r4);
      sub_8035B3C();
      sub_80081DC(sub_8035AC0);
      sub_8008220();
    }
    else {
      sub_80357F8();
      sub_80081DC(sub_8035ACC);
      sub_8008220();
    }
  }
  sub_80357F8();
  sub_80081DC(sub_8035ACC);
  sub_8008220();
  PlayMusic(0xD2);
  sub_80353B0();
  return r4;
}

static unsigned char sub_803531C (void) {
  unsigned char r5 = 1;
  unsigned r4;
  PlayMusic(0xC9);
  sub_80081DC(sub_8035AE4);
  sub_8008220();
  sub_80359F0();
  LoadCharblock3();
  r4 = 1;
  while (r4 == 1) {
    switch (sub_8035558()) {
      case 2:
        r5 = 1;
      case 1:
        r4 = 0;
        break;
      case 0x40:
        r5 = 1;
        sub_80359F0();
        PlayMusic(0x36);
        sub_8008220();
        LoadCharblock3();
        break;
      case 0x80:
        r5 = 0;
        sub_80359D0();
        PlayMusic(0x36);
        sub_8008220();
        LoadCharblock3();
        break;
      default:
        sub_8008220();
        LoadCharblock3();
        break;
    }
  }
  if (r5 == 1)
    PlayMusic(0x38);
  sub_80081DC(sub_8035B08);
  sub_8008220();
  return r5;
}

static void sub_80353B0 (void) {
  unsigned short r7 = gBLDALPHA & 0x1F;
  unsigned short r4 = (gBLDALPHA & 0x1F00) >> 8;
  unsigned short r6 = 0;
  unsigned char r5 = 0;
  while (r6 < 16) {
    if (!r5) {
      if (r7)
        r7--;
      if (r4)
        r4--;
      gBLDALPHA = ((r4 << 8) & 0x1F00) | (r7 & 0x1F);
      gBLDY = r6 & 0x1F;
      r6++;
    }
    if (r5 < 3)
      r5++;
    else
      r5 = 0;
    sub_80081DC(sub_8035ACC);
    sub_8008220();
  }
}

void TitleScreenMain (void) {
  unsigned char temp;
  if (!sub_800AC64())
    temp = sub_80354C0();
  else
    temp = sub_803525C();
  if (!temp) {
    sub_800AF68();
    sub_80354A8();
  }
  else {
    sub_800ACE8(sub_800AC64());
    sub_800ADC4();
    sub_80354A8();
    GameMenuMain();
  }
}

static void sub_8035488 (void) {
  sub_8035598();
  sub_8035958();
  sub_80357C0();
  sub_80081DC(sub_8035A10);
  sub_8008220();
}

static void sub_80354A8 (void) {
  sub_8035988();
  sub_80081DC(sub_8035AD8);
  sub_8008220();
}

static unsigned char sub_80354C0 (void) {
  sub_8035488();
  sub_803584C();
  sub_8035B2C();
  sub_80081DC(sub_8035AA8);
  PlayMusic(1);
  sub_8008220();
  while (1) {
    sub_8056208();
    if (sub_8035558() == 1)
      break;
    sub_80357F8();
    sub_80081DC(sub_8035ACC);
    sub_8008220();
  }
  sub_8035020(1);
  sub_80357F8();
  sub_80081DC(sub_8035ACC);
  sub_8008220();
  PlayMusic(0xD2);
  sub_80353B0();
  return 0;
}

static unsigned char sub_803552C (unsigned char arg0) {
  if (arg0 == 1) {
    arg0 = 0;
    sub_80358F8();
  }
  else {
    arg0 = 1;
    sub_8035894();
  }
  return arg0;
}

static unsigned char sub_803554C (void) {
  sub_8035894();
  return 1;
}

static unsigned short sub_8035558 (void) {
  unsigned char i;
  unsigned short r1;
  unsigned short r4 = 0;
  sub_802612C();
  r1 = 1;
  if (gNewButtons & 0x3FF) {
    for (i = 0; i < 10; i++) {
      if (gNewButtons & r1)
        r4 = r1;
      r1 <<= 1;
    }
  }
  return r4;
}

static void sub_8035598 (void) {
  unsigned i;
  unsigned char* lang = &gLanguage; //TODO: fakematch?
  LZ77UnCompWram(g8E0CD9C, gVr.b);
  CopyStringTilesToVRAMBuffer(gVr.a + 0xC000, g80DD498, 0x4FF);
  switch (*lang) {
    case 1:
      for (i = 0; i < 20; i++)
        CpuCopy32((*g8E0CDA4)[i], gVr.a + 0xF800 + i * 64, 60);
      break;
    case 2:
      for (i = 0; i < 20; i++)
        CpuCopy32((*g8E0CDA4)[i], gVr.a + 0xF800 + i * 64, 60);
      break;
    case 3:
      for (i = 0; i < 20; i++)
        CpuCopy32((*g8E0CDA4)[i], gVr.a + 0xF800 + i * 64, 60);
      break;
    case 4:
      for (i = 0; i < 20; i++)
        CpuCopy32((*g8E0CDA4)[i], gVr.a + 0xF800 + i * 64, 60);
      break;
    default:
      for (i = 0; i < 20; i++)
        CpuCopy32((*g8E0CDA4)[i], gVr.a + 0xF800 + i * 64, 60);
      break;
  }
  for (i = 0; i < 20; i++)
    CpuFill32(0, gVr.a + 0xF000 + i * 64, 60);
  for (i = 0; i < 4; i++) {
    gVr.b[0x796E + i] = i + 2;
    gVr.b[0x798E + i] = i + 6;
  }
  for (i = 0; i < 13; i++) {
    gVr.b[0x78A9 + i] = i + 10;
    gVr.b[0x78C9 + i] = i + 23;
    gVr.b[0x78E9 + i] = i + 36;
    gVr.b[0x7909 + i] = i + 49;
    gVr.b[0x7929 + i] = i + 62;
  }
  switch (gLanguage) {
    case 1:
      CpuCopy32(g8E0CDA0, g02000000.bg, 512);
      break;
    case 2:
      CpuCopy32(g8E0CDA0, g02000000.bg, 512);
      break;
    case 3:
      CpuCopy32(g8E0CDA0, g02000000.bg, 512);
      break;
    case 4:
      CpuCopy32(g8E0CDA0, g02000000.bg, 512);
      break;
    default:
      CpuCopy32(g8E0CDA0, g02000000.bg, 512);
      break;
  }
}

static void sub_80357C0 (void) {
  unsigned i;
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  g8E0CDB0->unk0 = 0;
  g8E0CDB0->unk2 = 0;
}

static void sub_80357F8 (void) {
  if (!g8E0CDB0->unk2) {
    if (g8E0CDB0->unk0 > 29)
      g8E0CDB0->unk0 = 0;
    gBLDALPHA = (g8E0CDB4[g8E0CDB0->unk0] & 0xF) | 0x1000;
    g8E0CDB0->unk2 = 0;
    g8E0CDB0->unk0++;
  }
  else
    g8E0CDB0->unk2++;
}

static void sub_803584C (void) {
  unsigned i;
  unsigned short* oam = gOamBuffer;
  unsigned char r4 = g8E0CD80[0]->unk1;
  sub_8035994(r4, g8E0CD80[0], oam);
  for (i = 0; i < r4; i++)
    oam += 4;
  r4 = g8E0CD80[4]->unk1;
  sub_8035994(r4, g8E0CD80[4], oam);
  *(unsigned long*)oam |= 0x400;
}

static void sub_8035894 (void) {
  unsigned i;
  unsigned short* oam = gOamBuffer;
  unsigned char r4 = g8E0CD80[2]->unk1;
  sub_8035994(r4, g8E0CD80[2], oam);
  for (i = 0; i < r4; i++)
    oam += 4;
  r4 = g8E0CD80[1]->unk1;
  sub_8035994(r4, g8E0CD80[1], oam);
  for (i = 0; i < r4; i++)
    oam += 4;
  r4 = g8E0CD80[5]->unk1;
  sub_8035994(r4, g8E0CD80[5], oam);
  *(unsigned long*)oam |= 0x400;
}

static void sub_80358F8 (void) {
  unsigned i;
  const struct Unk8E0CD80* unk8e0CD = g8E0CD80[0];
  unsigned short* oam = gOamBuffer;
  unsigned char r4 = unk8e0CD->unk1;
  sub_8035994(r4, unk8e0CD, oam);
  unk8e0CD = g8E0CD80[3];
  for (i = 0; i < r4; i++)
    oam += 4;
  r4 = unk8e0CD->unk1;
  sub_8035994(r4, unk8e0CD, oam);
  for (i = 0; i < r4; i++)
    oam += 4;
  r4 = g8E0CD80[4]->unk1;
  sub_8035994(r4, g8E0CD80[4], oam);
  *(unsigned long*)oam |= 0x400;
}

static void sub_8035958 (void) {
  sub_803EEFC(0, g8E0CDA8, 0x100);
  CpuCopy32(g8E0CDAC, g02000000.obj, 96);
}

static void sub_8035988 (void) {
  ClearGraphicsBuffers();
}

static void sub_8035994 (unsigned char arg0, const struct Unk8E0CD80* arg1, unsigned short* arg2) {
  unsigned i;
  for (i = 0; i < arg0; i++) {
    *arg2++ = arg1->unk4[i].a;
    *arg2++ = arg1->unk4[i].b;
    *arg2++ = arg1->unk4[i].c | 0x400;
    *arg2++ = 0;
  }
}

static void sub_80359D0 (void) {
  gVr.b[0x796D] = 0;
  gVr.b[0x798D] = 1;
}

static void sub_80359F0 (void) {
  gVr.b[0x796D] = 1;
  gVr.b[0x798D] = 0;
}

static void sub_8035A10 (void) {
  sub_8045718();
  gBLDCNT = 0x8D8;
  gBLDALPHA = 0x1000;
  gBLDY = 0;
  LoadBlendingRegs();
  REG_WIN0H = 0x40B8;
  REG_WIN0V = 0x2070;
  REG_WININ = 0x3F;
  REG_WINOUT = 0x1F;
  REG_BG0CNT = 0x1E8C;
  REG_BG3CNT = 0x1F83;
  gBG0VOFS = 0;
  gBG0HOFS = 0;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
}

static void sub_8035AA8 (void) {
  LoadPalettes();
  REG_DISPCNT = 0x1800;
}

static void sub_8035AC0 (void) {
  LoadBlendingRegs();
}

static void sub_8035ACC (void) {
  LoadBlendingRegs();
}

static void sub_8035AD8 (void) {
  LoadPalettes();
}

static void sub_8035AE4 (void) {
  REG_DISPCNT |= 0x2100;
  gBLDY = 10;
  LoadBlendingRegs();
}

static void sub_8035B08 (void) {
  REG_DISPCNT &= 0xDEFF;
  gBLDY = 0;
  LoadBlendingRegs();
}

static void sub_8035B2C (void) {
  LoadVRAM();
  LoadOam();
}

static void sub_8035B3C (void) {
  LoadOam();
}
