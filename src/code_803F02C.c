#include "global.h"
#include "duel.h"

extern u8* g8E0CEE0[];
extern u8* g8E0CF40[];
extern u16 g8E0CFA0[];
extern u8 g8E0CFC0[];

void sub_803FD3C (void);
u8 sub_803FA94 (void);
u8 sub_803FAFC (void);
u8 sub_803FB64 (void);
void sub_803F44C (void);
void sub_803F45C (void);
void sub_0803F330 (void);
void sub_803F334 (void);
void sub_803F374 (void);
void sub_803F3B4 (void);
void sub_803F3D4 (void);
void sub_803F420 (void);
void sub_803F400 (void);
void sub_803F46C (void);

u8* sub_803F02C (u8 cardType) {
  return g8E0CEE0[cardType];
}

u8* sub_803F03C (u8 arg0) {
  return g8E0CF40[arg0];
}

u16 sub_803F04C (u8 arg0) {
  return g8E0CFA0[arg0];
}

void sub_803F05C (void) {
  sub_803FD3C();
  if (sub_803FA94() != TRUE)
    return;
  if (g2023E80.unk2 >= g2023E80.unkE) {
    if (g2023E80.unk2 > g2023E80.unkE) {
      sub_803F45C();
      if (g2023E80.unk12 <= g2023E80.unk2 - g2023E80.unkE) {
        u8 temp;
        g2023E80.unk12 = 0;
        temp = g2023E80.unk1B;
        g2023E80.unk19 |= g8E0CFC0[temp];
      }
      else
        g2023E80.unk12 -= g2023E80.unk2 - g2023E80.unkE;
      gUnk2023EA0.unk18 = 1;
    }
    else {
      sub_803F44C();
      sub_803F45C();
      gUnk2023EA0.unk18 = 2;
    }
  }
  else if (g2023E80.unk2 < g2023E80.unkE) {
    sub_803F44C();
    if (g2023E80.unk6 <= g2023E80.unkE - g2023E80.unk2) {
      u8 temp;
      g2023E80.unk6 = 0;
      temp = g2023E80.unk1A;
      g2023E80.unk19 |= g8E0CFC0[temp];
    }
    else
      g2023E80.unk6 -= g2023E80.unkE - g2023E80.unk2;
    gUnk2023EA0.unk18 = 3;
  }
}

void sub_803F108 (void) {
  sub_803FD3C();
  if (sub_803FAFC() != TRUE)
    return;
  if (g2023E80.unk2 >= g2023E80.unk10) {
    if (g2023E80.unk2 > g2023E80.unk10) {
      sub_803F45C();
      gUnk2023EA0.unk18 = 4;
    }
    else
      gUnk2023EA0.unk18 = 5;
  }
  else if (g2023E80.unk6 <= g2023E80.unk10 - g2023E80.unk2) {
    u8 temp;
    g2023E80.unk6 = 0;
    temp = g2023E80.unk1A;
    g2023E80.unk19 |= g8E0CFC0[temp];
    gUnk2023EA0.unk18 = 6;
  }
  else {
    g2023E80.unk6 -= g2023E80.unk10 - g2023E80.unk2;
    gUnk2023EA0.unk18 = 6;
  }
}

void sub_803F180 (void) {
  sub_803FD3C();
  if (sub_803FB64() != TRUE)
    return;
  if (g2023E80.unk4 >= g2023E80.unkE) {
    if (g2023E80.unk4 > g2023E80.unkE) {
      if (g2023E80.unk12 <= g2023E80.unk4 - g2023E80.unkE) {
        u8 temp;
        g2023E80.unk12 = 0;
        temp = g2023E80.unk1B;
        g2023E80.unk19 |= g8E0CFC0[temp];
      }
      else
        g2023E80.unk12 -= g2023E80.unk4 - g2023E80.unkE;
      gUnk2023EA0.unk18 = 7;
    }
    else
      gUnk2023EA0.unk18 = 8;
  }
  else {
    sub_803F44C();
    gUnk2023EA0.unk18 = 9;
  }
}

void sub_803F1F4 (void) {
  gUnk2023EA0.unk0 = g2023E80.unk0;
  gUnk2023EA0.unkA = g2023E80.unk8;
  gUnk2023EA0.unk6 = g2023E80.unk2;
  gUnk2023EA0.unk8 = g2023E80.unk4;
  gUnk2023EA0.unkC = g2023E80.unkC;
  gUnk2023EA0.unk16 = g2023E80.unk14;
  gUnk2023EA0.unk12 = g2023E80.unkE;
  gUnk2023EA0.unk14 = g2023E80.unk10;
}

void sub_803F224 (void) {
  if (g2023E80.unk19 & 1)
    sub_8045314(gUnk2024040[g2023E80.unk9][g2023E80.unkA], 0);
  if (g2023E80.unk19 & 2)
    sub_8045314(gUnk2024040[g2023E80.unk15][g2023E80.unk16], 1);
  if (g2023E80.unk19 & 4)
    DeclareLoser(0);
  if (g2023E80.unk19 & 16)
    DeclareLoser(1);
}

void sub_803F29C (void) {
  g2023E80.unk19 = 0;
  switch (g2023E80.unk18) {
    case 1:
      sub_803F05C();
      break;
    case 2:
      sub_803F108();
      break;
    case 3:
      sub_0803F330();
      break;
    case 4:
      sub_803F334();
      break;
    case 5:
      sub_803F180();
      break;
    case 6:
      sub_803F374();
      break;
    case 7:
      sub_803F3B4();
      break;
    case 8:
      sub_803F3D4();
      break;
    case 9:
      sub_803F420();
      break;
    case 10:
      sub_803F400();
      break;
  }
  sub_803F46C();
  sub_803F1F4();
}

void sub_0803F330 (void) {}

void sub_803F334 (void) {
  sub_803FD3C();
  if (g2023E80.unk12 <= g2023E80.unk2) {
    u8 temp;
    g2023E80.unk12 = 0;
    temp = g2023E80.unk1B;
    g2023E80.unk19 |= g8E0CFC0[temp];
  }
  else
    g2023E80.unk12 -= g2023E80.unk2;
  gUnk2023EA0.unk18 = 10;
}

void sub_803F374 (void) {
  sub_803FD3C();
  if (g2023E80.unk6 <= g2023E80.unkE) {
    u8 temp;
    g2023E80.unk6 = 0;
    temp = g2023E80.unk1A;
    g2023E80.unk19 |= g8E0CFC0[temp];
  }
  else
    g2023E80.unk6-= g2023E80.unkE;
  gUnk2023EA0.unk18 = 15;
}

void sub_803F3B4 (void) {
  if (g2023E80.unk6 + g2023E80.unk2 > 65000)
    g2023E80.unk6 = 65000;
  else
    g2023E80.unk6 += g2023E80.unk2;
}

