#include "global.h"
#include "duel.h"
#include "card.h"
#include "gba/io_reg.h"
#include "constants/card_ids.h"
#include "gba/syscall.h"
#include "gba/macro.h"



u8 sub_801D3FC (void);
void sub_801D414 (void);
void sub_801D420 (void);
u16 sub_801D2D4 (void);
void sub_801D444 (void);
void sub_801F5FC (void);
void sub_801F4A0 (u8);
void sub_801D490 (void);
void sub_801D458 (void);
void sub_801D46C (void);
void sub_801D4B8 (void);
void sub_801F120 (void);
void sub_801EF30 (u8);
void sub_801F644 (void);
void sub_801D4A4 (void);
void sub_801D480 (void);
void sub_801F630 (void);
void sub_0801F62C (void);
void sub_801DA7C (u8);
void sub_8008F88 (u8);
void sub_0801F5EC (void);
void sub_802612C (void);
u8 GetDeckSize (void);
void sub_801DE10 (void);
void sub_801F5F0 (void);
void sub_801D918 (void);
void sub_801DE5C (void);
void sub_801D61C (void);
void sub_801D68C (void);
void sub_801D548 (void);
void sub_801D57C (void);
void sub_801D5B0 (void);
void sub_801D600 (void);
void sub_801D678 (void);
void sub_801F614 (void);
u16 sub_801DAF8 (u8);


extern u16 gUnk2020DFC;
extern u16 gUnk2021DCC;
extern u16 gKeyState;
extern u16 g2020DF4;

void DeckMenu (void) {
  u8 r4 = 1;
  if (sub_801D3FC() != 1)
    return;
  sub_801D414();
  sub_801D420();
  while (r4) {
    switch (sub_801D2D4()) {
      case 0x40:
        sub_801D444();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 0x140:
        sub_801D490();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 0x80:
        sub_801D458();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 0x180:
        sub_801D4A4();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 0x200:
        sub_801D46C();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 1:
        sub_801D4B8();
        sub_801F4A0(7);
        break;
      case 2:
        r4 = 0;
        PlayMusic(0x38);
        break;
      case 8:
        sub_801F120();
        sub_801EF30(7);
        sub_801F4A0(9);
        sub_801F644();
        break;
      case 4:
        sub_801D480();
        sub_801EF30(6);
        PlayMusic(0x37);
        sub_801F4A0(8);
        sub_801F630();
        break;
      case 0:
      default:
        sub_801EF30(5);
        sub_0801F62C();
        sub_801F4A0(5);
        break;
    }
    if (!sub_801D3FC())
      r4 = 0;
  }
  sub_801DA7C(8);
  sub_801EF30(1);
  sub_8008F88(9);
  sub_0801F5EC();
  sub_801F4A0(2);
}

u16 sub_801D2D4 (void) { // same code as the one in trunk.c
  u8 i;
  u16 r2;
  u16 ret = 0;
  sub_802612C();
  r2 = 1;
  for (i = 0; i < 10; i++) {
    if (r2 & gUnk2020DFC)
      ret = r2 & gUnk2020DFC;
    r2 <<= 1;
  }
  r2 = 0x10;
  for (i = 0; i < 4; i++) {
    if (r2 & gUnk2021DCC)
      ret = r2 & gUnk2021DCC;
    r2 <<= 1;
  }
  if (gUnk2021DCC & 0x40 && gKeyState & 0x100)
    ret = 0x140;
  if (gUnk2021DCC & 0x80 && gKeyState & 0x100)
    ret = 0x180;
  return ret;
}

int sub_801D368 (void) {
  u8 i;
  u16 r2;
  u16 ret = 0;
  sub_802612C();
  r2 = 1;
  for (i = 0; i < 10; i++) {
    if (r2 & gUnk2020DFC)
      ret = r2 & gUnk2020DFC;
    r2 <<= 1;
  }
  r2 = 0x10;
  for (i = 0; i < 4; i++) {
    if (r2 & g2020DF4)
      ret = r2 & g2020DF4;
    r2 <<= 1;
  }
  if (g2020DF4 & 0x40 && gKeyState & 0x100)
    ret = 0x140;
  if (g2020DF4 & 0x80 && gKeyState & 0x100)
    ret = 0x180;
  return ret;
}

u8 sub_801D3FC (void) {
  return GetDeckSize() != 0;
}

void sub_801D414 (void) {
  sub_801DE10();
}

void sub_801D420 (void) {
  sub_801EF30(0);
  sub_801EF30(2);
  sub_801F4A0(1);
  sub_801F5F0();
  sub_801F4A0(3);
}

void sub_801D444 (void) {
  sub_801DA7C(3);
  sub_801EF30(3);
}

void sub_801D458 (void) {
  sub_801DA7C(2);
  sub_801EF30(3);
}

void sub_801D46C (void) {
  sub_801DA7C(6);
  sub_801EF30(4);
}

void sub_801D480 (void) {
  sub_801D918();
  sub_801EF30(6);
}

void sub_801D490 (void) {
  sub_801DA7C(5);
  sub_801EF30(3);
}

void sub_801D4A4 (void) {
  sub_801DA7C(4);
  sub_801EF30(3);
}

extern u8 g201CB50;

void sub_801D4B8 (void) {
  u8 r4;
  g201CB50 = 0;
  PlayMusic(0x37);
  sub_801DE5C();
  sub_801D61C();
  LoadCharblock1();
  sub_80081DC(sub_801D68C);
  sub_8008220();
  r4 = 1;
  while (r4) {
    switch (sub_801D368()) {
      case 0x40:
        sub_801D548();
        break;
      case 0x80:
        sub_801D57C();
        break;
      case 1:
        switch (g201CB50) {
          case 0:
            sub_801D5B0();
            break;
          case 1:
            sub_801D600();
            goto end;
        }
        break;
      case 2:
        r4 = 0;
        PlayMusic(0x38);
        break;
      default:
        sub_8008220();
    }
  }
  end:
  sub_801D678();
}

extern u8 gE00AD4[];
extern u8 gE00AD6[];

void sub_801D548 (void) {
  g201CB50 = gE00AD4[g201CB50];
  sub_801D61C();
  PlayMusic(0x36);
  sub_80081DC(LoadOam);
  sub_8008220();
}

void sub_801D57C (void) {
  g201CB50 = gE00AD6[g201CB50];
  sub_801D61C();
  PlayMusic(0x36);
  sub_80081DC(LoadOam);
  sub_8008220();
}

void sub_801D5B0 (void) {
  SetCardInfo(sub_801DAF8(2));
  PlayMusic(0x37);
  sub_801F6B0();
  sub_801EF30(0);
  sub_801EF30(2);
  sub_801F4A0(1);
  sub_801F5F0();
  sub_801DE5C();
  sub_801D61C();
  sub_80081DC(sub_801D68C);
  sub_8008220();
  LoadCharblock1();
}

void sub_801D600 (void) {
  sub_801DA7C(7);
  sub_801EF30(3);
  sub_801F614();
  sub_801F4A0(6);
}

extern u16 gOamBuffer[];
extern u8 gE00AD8[3]; //cursor y pos
extern u8 gE00ADB[3]; //cursor x pos

void sub_801D61C (void) {
  u32 *oam = (u32*)&gOamBuffer[6 * 4];
  oam[0] = gE00AD8[g201CB50] |
           gE00ADB[g201CB50] << 16 | 0x40000000;
  oam[1] = 0xC120;
  oam[2] = gE00AD8[g201CB50] |
           gE00ADB[g201CB50] << 16 | 0x40000800;
  oam[3] = 0x120;
}

void sub_801D678 (void) {
  u32 *oam = (u32*)&gOamBuffer[6 * 4];
  oam[0] = 0;
  oam[1] = 0;
  oam[2] = 0;
  oam[3] = 0;
}

void sub_801D68C (void) {
  LoadPalettes();
  LoadOam();
  REG_DISPCNT = 0xBF00;
  REG_BLDALPHA = 6;
  REG_BLDY = 10;
  REG_BLDCNT |= 8;
}





// split?*****************************
extern u32 gDeckCapacity;
extern u32 gDuelistLevel;
extern u16 g80B8974[];

void IncreaseDuelistLevel (void);
u8 sub_801D760 (void);

void InitDeckCapacity (void) {
  gDeckCapacity = 1600;
}

void IncreaseDeckCapacity (u32 increase) {
  if (increase > 65000 - gDeckCapacity)
    gDeckCapacity = 65000;
  else
    gDeckCapacity += increase;
  IncreaseDuelistLevel();
}

void DecreaseDeckCapacity (u32 decrease) {
  if (decrease > gDeckCapacity)
    gDeckCapacity = 0;
  else
    gDeckCapacity -= decrease;
}

u32 GetDeckCapacity (void) {
  return gDeckCapacity;
}

void InitDuelistLevel (void) {
  gDuelistLevel = 72;
}

u32 GetDuelistLevel (void) {
  return gDuelistLevel;
}

void IncreaseDuelistLevel (void) {
  while (sub_801D760())
    gDuelistLevel++;
}

u8 sub_801D760 (void) {
  if (gDuelistLevel < 999) {
    u16 temp = g80B8974[gDuelistLevel + 1];
    if (gDeckCapacity >= temp) {
      gDuelData.unk2c = 1;
      return 1;
    }
  }
  return 0;
}

extern u16 g2024144[];
extern u16 g80B9144[];

void sub_801D7A4 (void) {
  u8 i;
  for (i = 0; i < 40; i++)
    g2024144[i] = g80B9144[i];
}

void sub_801DD88 (u8);
void sub_801DD34 (u32);
void sub_8009098 (u16);
u8 sub_801DD50 (u16);
void sub_8034A38 (void);
void sub_801DCF0 (void);

void sub_801D7D0 (void) {
  u16 cardId = sub_801DAF8(2);
  if (!cardId) {
    PlayMusic(0x39);
    return;
  }
  SetCardInfo(cardId);
  sub_8009098(cardId);
  sub_801DD88(gDeck.unk4); // s8 to u8 conversion
  if (gDeck.unk4 >= gDeck.count) {
    u8 temp = gDeck.unk4 - gDeck.count + 1;
    if (gDeck.unk4) {
      if (temp <= gDeck.unk4)
        gDeck.unk4 -= temp;
      else
        gDeck.unk4 = 0;
      PlayMusic(0x36);
    }
    else if (GetDeckSize()) {
      PlayMusic(0x39);
      while (gKeyState & 0x40)
        sub_8008220();
    }
  }
  sub_801DD34(gCardInfo.cost);
  PlayMusic(0x37);
}

u8 sub_801D878 (u16 cardId) {
  u8 r6 = 0;
  u8 temp;
  SetCardInfo(cardId);
  temp = sub_801DD50(cardId);
  if (temp < gDeck.count) {
    sub_801DD88(temp);
    sub_801DD34(gCardInfo.cost);
    r6 = 1;
  }
  if (gDeck.unk4 >= gDeck.count) {
    u8 temp = gDeck.unk4 - gDeck.count + 1;
    if (gDeck.unk4) {
      if (temp <= gDeck.unk4)
        gDeck.unk4 -= temp;
      else
        gDeck.unk4 = 0;
      PlayMusic(0x36);
    }
    else if (GetDeckSize()) {
      PlayMusic(0x39);
      while (gKeyState & 0x40)
        sub_8008220();
    }
  }
  return r6;
}

extern u8 gE00AE0[];

void sub_801D918 (void) {
  u8 temp;
  if (++gDeck.unk5 > 9)
    gDeck.unk5 = 0;
  temp = gDeck.unk5;
  gUnk2022EB0.unk0 = gDeck.cards;
  gUnk2022EB0.unk8 = gDeck.count;
  gUnk2022EB0.unkA = gE00AE0[temp];
  sub_8034A38();
  gDeck.unk4 = 0;
}

void sub_801D960 (u16 id) {
  u32 i, j;
  for (i = 0; i < 40; i++)
    if (gDeck.cards[i] == id)
      gDeck.cards[i] = CARD_NONE;
  i = 0;
  j = 39;
  while (i < j) {
    if (gDeck.cards[i] != CARD_NONE)
      i++;
    else {
      if (gDeck.cards[j] == CARD_NONE) {
        j--;
      }
      else {
        gDeck.cards[i] = gDeck.cards[j];
        gDeck.cards[j] = CARD_NONE;
        i++;
        j--;
      }
    }
  }
}

void sub_801D9B8 (u16 id) {
  u32 i, j;
  for (i = 0; i < 40; i++)
    if (gDeck.cards[i] == id) {
      gDeck.cards[i] = CARD_NONE;
      break;
    }
  i = 0;
  j = 39;
  while (i < j) {
    if (gDeck.cards[i] != CARD_NONE)
      i++;
    else {
      if (gDeck.cards[j] == CARD_NONE) {
        j--;
      }
      else {
        gDeck.cards[i] = gDeck.cards[j];
        gDeck.cards[j] = CARD_NONE;
        i++;
        j--;
      }
    }
  }
}

void sub_801DA20 (void) {
  u32 i;
  gDeck.unk5 = 0;
  gDeck.unk4 = 0;
  gDeck.unk6 = 1;
  gDeck.count = 0;
  for (i = 0; i < 40; i++)
    if (gDeck.cards[i])
      gDeck.count++;
  sub_801DCF0();
}

extern u16 gStarterDeck[];

void InitDeck (void) {
  u32 i;
  for (i = 0; i < 40; i++)
    gDeck.cards[i] = gStarterDeck[i];
}

void sub_801DC04 (u8);
void sub_801DC64 (u8);
void sub_801DCC8 (void);
void sub_0801DCEC (void);
u8 sub_801DE3C (u8);

void sub_801DA7C (u8 arg0) {
  switch (arg0) {
    case 0:
      InitDeck();
      break;
    case 1:
      sub_801DA20();
      break;
    case 2:
      sub_801DC04(1);
      break;
    case 3:
      sub_801DC64(1);
      break;
    case 4:
      sub_801DC04(10);
      break;
    case 5:
      sub_801DC64(10);
      break;
    case 6:
      sub_801DCC8();
      break;
    case 7:
      sub_801D7D0();
      break;
    case 8:
      sub_0801DCEC();
      break;
  }
}

u16 sub_801DAF8 (u8 arg0) {
  int temp = gDeck.unk4 + arg0 - 2;
  if (temp < 0)
    return CARD_NONE;
  if (temp < 40)
    return gDeck.cards[temp];
  return CARD_NONE;
}

u8 sub_801DB24 (void) {
  return gDeck.unk6;
}

void sub_801DB30 (void) {
  gUnk2021AB4.unk0 = gDeck.unk4;
  gUnk2021AB4.unk2 = gDeck.count - 1;
}

u8 GetDeckSize (void) {
  return gDeck.count;
}

u32 GetDeckCost (void) {
  return gDeck.cost;
}

void sub_801DB64 (u16 cardId) {
  gDeck.cards[gDeck.count] = cardId;
  gDeck.count++;
  sub_801DCF0();
}

u8 GetDeckCardQty (u16 cardId) {
  u8 i, qty = 0;
  for (i = 0; i < 40; i++)
    if (gDeck.cards[i] == cardId)
      qty++;
  return qty;
}

u8 IsDeckFull (void) {
  u8 i;
  for (i = 0; i < 40; i++)
    if (gDeck.cards[i] == CARD_NONE)
      return 0;
  return 1;
}

s32 IsCostWithinCapacity (void) {
  if (GetDeckCapacity() < gDeck.cost)
    return 0;
  return 1;
}

void sub_801DC04 (u8 arg0) {
  if (gDeck.unk4 != gDeck.count - 1) {
    if (arg0 < gDeck.count - gDeck.unk4)
      gDeck.unk4 += arg0;
    else
      gDeck.unk4 = gDeck.count - 1;
    PlayMusic(0x36);
  }
  else {
    PlayMusic(0x39);
    while (gKeyState & 0x80)
      sub_8008220();
  }
}

void sub_801DC64 (u8 arg0) {
  if (gDeck.unk4) {
    if (arg0 <= gDeck.unk4)
      gDeck.unk4 -= arg0;
    else
      gDeck.unk4 = 0;
    PlayMusic(0x36);
  }
  else if (GetDeckSize()){
    PlayMusic(0x39);
    while (gKeyState & 0x40)
      sub_8008220();
  }
}

void sub_801DCC8 (void) {
  if (++gDeck.unk6 > 3)
    gDeck.unk6 = 0;
  PlayMusic(0x36);
}

void sub_0801DCEC (void) {}

void sub_801DCF0 (void) {
  u8 i;
  gDeck.cost = 0;
  for (i = 0; i < gDeck.count; i++) {
    SetCardInfo(gDeck.cards[i]);
    gDeck.cost += gCardInfo.cost;
  }
}

void sub_801DD34 (u32 subtractCost) {
  if (subtractCost > gDeck.cost)
    gDeck.cost = 0;
  else
    gDeck.cost -= subtractCost;
}

u8 sub_801DD50 (u16 cardId) {
  u8 i;
  for (i = 0; i < gDeck.count && gDeck.cards[i] != cardId; i++)
    ;
  return i;
}

void sub_801DD88 (u8 arg0) {
  for (; arg0 < gDeck.count - 1; arg0++)
    gDeck.cards[arg0] = gDeck.cards[arg0 + 1];
  gDeck.cards[gDeck.count - 1] = CARD_NONE;
  sub_801DE3C(1);
}

void sub_801DDDC (u8 arg0) {
  gUnk2022EB0.unk0 = gDeck.cards;
  gUnk2022EB0.unk8 = gDeck.count;
  gUnk2022EB0.unkA = gE00AE0[arg0];
  sub_8034A38();
  gDeck.unk4 = 0;
}

void sub_801DE10 (void) {
  gUnk2022EB0.unk0 = gDeck.cards;
  gUnk2022EB0.unk8 = gDeck.count;
  gUnk2022EB0.unkA = gE00AE0[gDeck.unk5];
  sub_8034A38();
}

u8 sub_801DE3C (u8 arg0) {
  if (gDeck.count < arg0) {
    arg0 = gDeck.count;
    gDeck.count = 0;
  }
  else
    gDeck.count -= arg0;
  return arg0;
}

extern u16 gUnk_808D9B0[][30];
extern u8 g80B9194[];
extern u8 g8DF811C[];

u16 sub_08007FEC(u8, u8, u16);
void sub_8020A3C(void *, void *, u16);
void sub_800800C(u8, u8, u16, u16);

void sub_801DE5C (void) {
  u8 i;
  u16 r7;
  for (i = 0; i < 20; i++)
    CpuCopy32(gUnk_808D9B0[i],  &(((struct Sbb*)&gBgVram)->sbbF[i]), 60);
  CpuFill16(0, gBgVram.cbb1, 32);
  r7 = sub_08007FEC(9, 9, 0x7800) & 0xFF00;
  for (i = 0; i < 20; i++) {
    sub_800800C(i + 9, 11, 0x7800, (g8DF811C[i] + 21) | r7);
    sub_800800C(i + 9, 12, 0x7800, (g8DF811C[i] + 23) | r7);
    sub_800800C(i + 9, 13, 0x7800, (g8DF811C[i] + 61) | r7);
    sub_800800C(i + 9, 14, 0x7800, (g8DF811C[i] + 63) | r7);
  }
  sub_8020A3C(&gBgVram.cbb1[32], g80B9194, 0x900);
}

extern u16 gUnk_808DE60[][30];
extern u8 g80B92D8[];
extern u8 g80B954C[];
extern u8 g80B9550[];

void sub_801DF40(void)
{
    u8 i;
    u16 r8, sb;

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808DE60[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);

    sb = sub_08007FEC(0, 2, 0x7800);
    r8 = sub_08007FEC(2, 2, 0x7800) & 0xFF00;

    for (i = 0; i < 6; i++)
    {
        sub_800800C(i + 4, 6, 0x7800, (g8DF811C[i] + 29) | r8);
        sub_800800C(i + 4, 7, 0x7800, (g8DF811C[i] + 31) | r8);
        sub_800800C(i + 4, 8, 0x7800, (g8DF811C[i] + 61) | r8);
        sub_800800C(i + 4, 9, 0x7800, (g8DF811C[i] + 63) | r8);
        sub_800800C(i + 4, 10, 0x7800, (g8DF811C[i] + 93) | r8);
        sub_800800C(i + 4, 11, 0x7800, (g8DF811C[i] + 95) | r8);
    }

    for (i = 0; i < 8; i++)
    {
        sub_800800C(i + 4, 12, 0x7800, (g8DF811C[i] + 125) | r8);
        sub_800800C(i + 4, 13, 0x7800, (g8DF811C[i] + 127) | r8);
        sub_800800C(i + 16, 12, 0x7800, (g8DF811C[i] + 141) | r8);
        sub_800800C(i + 16, 13, 0x7800, (g8DF811C[i] + 143) | r8);
        sub_800800C(i + 4, 17, 0x7800, (g8DF811C[i] + 177) | r8);
        sub_800800C(i + 4, 18, 0x7800, (g8DF811C[i] + 179) | r8);
    }

    for (i = 0; i < 4; i++)
    {
        sub_800800C(i + 10, 6, 0x7800, sb);
        sub_800800C(i + 10, 7, 0x7800, sb);
        sub_800800C(i + 10, 8, 0x7800, sb);
        sub_800800C(i + 10, 9, 0x7800, sb);
        sub_800800C(i + 10, 10, 0x7800, sb);
        sub_800800C(i + 10, 11, 0x7800, sb);
    }

    for (i = 0; i < 2; i++)
    {
        sub_800800C(i + 12, 12, 0x7800, sb);
        sub_800800C(i + 12, 13, 0x7800, sb);
    }

    for (i = 0; i < 10; i++)
    {
        sub_800800C(i + 16, 6, 0x7800, (g8DF811C[i] + 41) | r8);
        sub_800800C(i + 16, 7, 0x7800, (g8DF811C[i] + 43) | r8);
        sub_800800C(i + 16, 8, 0x7800, (g8DF811C[i] + 73) | r8);
        sub_800800C(i + 16, 9, 0x7800, (g8DF811C[i] + 75) | r8);
        sub_800800C(i + 16, 10, 0x7800, (g8DF811C[i] + 105) | r8);
        sub_800800C(i + 16, 11, 0x7800, (g8DF811C[i] + 107) | r8);
    }

    for (i = 0; i < 10; i++)
    {
        sub_800800C(i + 16, 14, 0x7800, (g8DF811C[i] + 193) | r8);
        sub_800800C(i + 16, 15, 0x7800, (g8DF811C[i] + 195) | r8);
        sub_800800C(i + 4, 14, 0x7800, (g8DF811C[i] + 157) | r8);
        sub_800800C(i + 4, 15, 0x7800, (g8DF811C[i] + 159) | r8);
    }
    sub_8020A3C(&gBgVram.cbb1[32], g80B92D8, 0x900);
}

extern u32 gUnk_808918C[];
extern u8 g8DFAA14[];
extern u8 g8DFAEB4[];
extern u8 g8DFB354[];
extern u8 g8DFB494[];
extern u16 gUnk_808C1C0[];
extern u16 gUnk_808BD10[][30];
/*
void sub_801E27C (void) {
  u8 i;
  LZ77UnCompWram(gUnk_808918C, gBgVram.cbb0);
  switch (gLanguage) {
    case FRENCH:
      CpuFastSet(g8DFAA14, &gBgVram.cbb0[320], 0x50);
      break;
    case GERMAN:
      CpuFastSet(g8DFAEB4, &gBgVram.cbb0[320], 0x50);
      break;
    case ITALIAN:
      CpuFastSet(g8DFB354, &gBgVram.cbb0[320], 0x50);
      break;
    case SPANISH:
      CpuFastSet(g8DFB494, &gBgVram.cbb0[320], 0x50);
      break;
  }
  CpuCopy32(gUnk_808C1C0, g02000000.bg, 128);
  for (i = 0; i < 20; i++)
    CpuCopy32(gUnk_808BD10[i], &((struct Sbb*)&gBgVram)->sbb7[i], 60);
  CpuFill16(0, &((struct Sbb*)&gBgVram)->sbb10[i], 32);
  CpuFill16(0, &((struct Sbb*)&gBgVram)->sbb17[i], 32);
  sub_8020A3C(&gBgVram.cbb1[32], g80B954C, 0x801);
  sub_8020A3C(&gBgVram.cbb1[64], g80B9550, 0x901);
  gBgVram.cbb1[0x385E] = 0x5001;
  sub_800DDA0(GetDeckCapacity(), 0);
  for (i = 0; i < 5; i++)
    //see sub_800CCAC
}*/

NAKED
void sub_801E27C (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x14\n\
	ldr r0, _0801E2A4\n\
	ldr r4, _0801E2A8\n\
	adds r1, r4, #0\n\
	bl LZ77UnCompWram\n\
	ldr r0, _0801E2AC\n\
	ldrb r0, [r0]\n\
	cmp r0, #2\n\
	beq _0801E2C8\n\
	cmp r0, #2\n\
	bgt _0801E2B0\n\
	cmp r0, #1\n\
	beq _0801E2BA\n\
	b _0801E2FA\n\
	.align 2, 0\n\
_0801E2A4: .4byte gUnk_808918C\n\
_0801E2A8: .4byte 0x02000400\n\
_0801E2AC: .4byte gLanguage\n\
_0801E2B0:\n\
	cmp r0, #3\n\
	beq _0801E2D8\n\
	cmp r0, #4\n\
	beq _0801E2EC\n\
	b _0801E2FA\n\
_0801E2BA:\n\
	ldr r0, _0801E2C4\n\
	movs r2, #0xa0\n\
	lsls r2, r2, #1\n\
	adds r1, r4, r2\n\
	b _0801E2E0\n\
	.align 2, 0\n\
_0801E2C4: .4byte 0x08DFAA14\n\
_0801E2C8:\n\
	ldr r0, _0801E2D4\n\
	movs r3, #0xa0\n\
	lsls r3, r3, #1\n\
	adds r1, r4, r3\n\
	b _0801E2E0\n\
	.align 2, 0\n\
_0801E2D4: .4byte 0x08DFAEB4\n\
_0801E2D8:\n\
	ldr r0, _0801E2E8\n\
	movs r5, #0xa0\n\
	lsls r5, r5, #1\n\
	adds r1, r4, r5\n\
_0801E2E0:\n\
	movs r2, #0x50\n\
	bl CpuFastSet\n\
	b _0801E2FA\n\
	.align 2, 0\n\
_0801E2E8: .4byte 0x08DFB354\n\
_0801E2EC:\n\
	ldr r0, _0801E474\n\
	movs r6, #0xa0\n\
	lsls r6, r6, #1\n\
	adds r1, r4, r6\n\
	movs r2, #0x50\n\
	bl CpuFastSet\n\
_0801E2FA:\n\
	ldr r0, _0801E478\n\
	ldr r1, _0801E47C\n\
	ldr r2, _0801E480\n\
	bl CpuSet\n\
	movs r4, #0\n\
	mov r6, sp\n\
	adds r6, #2\n\
	add r7, sp, #4\n\
	mov r8, r7\n\
_0801E30E:\n\
	lsls r0, r4, #4\n\
	subs r0, r0, r4\n\
	lsls r0, r0, #2\n\
	ldr r1, _0801E484\n\
	adds r0, r0, r1\n\
	lsls r1, r4, #6\n\
	ldr r5, _0801E488\n\
	adds r1, r1, r5\n\
	ldr r2, _0801E48C\n\
	bl CpuSet\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x13\n\
	bls _0801E30E\n\
	mov r0, sp\n\
	movs r4, #0\n\
	strh r4, [r0]\n\
	movs r0, #0x90\n\
	lsls r0, r0, #7\n\
	adds r1, r5, r0\n\
	ldr r2, _0801E490\n\
	mov r0, sp\n\
	bl CpuSet\n\
	strh r4, [r6]\n\
	movs r2, #0x80\n\
	lsls r2, r2, #8\n\
	adds r1, r5, r2\n\
	ldr r2, _0801E494\n\
	adds r0, r6, #0\n\
	bl CpuSet\n\
  \n\
	ldr r3, _0801E498\n\
	adds r0, r5, r3\n\
	ldr r1, _0801E49C\n\
	ldr r2, _0801E4A0\n\
	bl sub_8020A3C\n\
	ldr r6, _0801E4A4\n\
	adds r0, r5, r6\n\
	ldr r1, _0801E4A8\n\
	ldr r2, _0801E4AC\n\
	bl sub_8020A3C\n\
	ldr r7, _0801E4B0\n\
	adds r1, r5, r7\n\
	ldr r0, _0801E4B4\n\
	strh r0, [r1]\n\
	bl GetDeckCapacity\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
  \n\
	movs r4, #0\n\
	ldr r0, _0801E4B8\n\
	adds r2, r5, r0\n\
	ldr r7, _0801E4BC\n\
	ldr r6, _0801E4C0\n\
	ldr r1, _0801E4C4\n\
	adds r3, r1, #0\n\
	adds r5, r2, #0\n\
_0801E390:\n\
	adds r1, r4, r7\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r2\n\
	adds r0, r4, r6\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	strh r0, [r1]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #4\n\
	bls _0801E390\n\
	ldr r2, _0801E4C8\n\
	adds r1, r5, r2\n\
	movs r2, #0\n\
	ldr r0, _0801E4B4\n\
	strh r0, [r1]\n\
	ldr r3, _0801E4CC\n\
	adds r1, r5, r3\n\
	ldr r0, _0801E4D0\n\
	strh r0, [r1]\n\
	ldr r6, _0801E4D4\n\
	adds r1, r5, r6\n\
	subs r0, #4\n\
	strh r0, [r1]\n\
	mov r7, r8\n\
	strh r2, [r7]\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #8\n\
	adds r1, r5, r0\n\
	ldr r2, _0801E490\n\
	mov r0, r8\n\
	bl CpuSet\n\
	ldr r0, _0801E4D8\n\
	ldr r2, _0801E4DC\n\
	adds r1, r5, r2\n\
	ldr r4, _0801E4E0\n\
	adds r2, r4, #0\n\
	bl CpuSet\n\
	ldr r0, _0801E4E4\n\
	ldr r3, _0801E4E8\n\
	adds r1, r5, r3\n\
	adds r2, r4, #0\n\
	bl CpuSet\n\
	ldr r0, _0801E4EC\n\
	ldr r6, _0801E4F0\n\
	adds r1, r5, r6\n\
	adds r2, r4, #0\n\
	bl CpuSet\n\
	ldr r7, _0801E4F4\n\
	adds r0, r5, r7\n\
	ldr r1, _0801E4F8\n\
	ldr r2, _0801E4A0\n\
	bl sub_8020A3C\n\
	ldr r1, _0801E4FC\n\
	adds r0, r5, r1\n\
	ldr r1, _0801E500\n\
	ldr r2, _0801E504\n\
	bl sub_8020A3C\n\
	movs r4, #0\n\
	ldr r5, _0801E508\n\
_0801E416:\n\
	ldr r6, _0801E50C\n\
	lsls r1, r4, #2\n\
	adds r0, r1, r4\n\
	ldrb r2, [r6]\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r5\n\
	ldr r0, [r0]\n\
	adds r1, #0x13\n\
	lsls r1, r1, #5\n\
	ldr r2, _0801E510\n\
	adds r1, r1, r2\n\
	ldr r2, _0801E480\n\
	bl CpuSet\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0xb\n\
	bls _0801E416\n\
	movs r5, #0\n\
	movs r4, #0\n\
	ldr r7, _0801E514\n\
_0801E444:\n\
	adds r0, r4, #0\n\
	subs r0, #0x15\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #2\n\
	bhi _0801E51C\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r4\n\
	ldrb r3, [r6]\n\
	adds r0, r0, r3\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	adds r1, r5, #0\n\
	adds r1, #0x43\n\
	lsls r1, r1, #5\n\
	ldr r2, _0801E510\n\
	adds r1, r1, r2\n\
	ldr r2, _0801E518\n\
	bl CpuSet\n\
	adds r0, r5, #0\n\
	adds r0, #8\n\
	b _0801E53C\n\
	.align 2, 0\n\
_0801E474: .4byte 0x08DFB494\n\
_0801E478: .4byte gUnk_808C1C0\n\
_0801E47C: .4byte 0x02000000\n\
_0801E480: .4byte 0x04000020\n\
_0801E484: .4byte gUnk_808BD10\n\
_0801E488: .4byte 0x02003C00\n\
_0801E48C: .4byte 0x0400000F\n\
_0801E490: .4byte 0x01000010\n\
_0801E494: .4byte 0x01000400\n\
_0801E498: .4byte 0x00004820\n\
_0801E49C: .4byte 0x080B954C\n\
_0801E4A0: .4byte 0x00000801\n\
_0801E4A4: .4byte 0x00004840\n\
_0801E4A8: .4byte 0x080B9550\n\
_0801E4AC: .4byte 0x00000901\n\
_0801E4B0: .4byte 0x0000805E\n\
_0801E4B4: .4byte 0x00005001\n\
_0801E4B8: .4byte 0xFFFFC800\n\
_0801E4BC: .4byte 0x00005C30\n\
_0801E4C0: .4byte 0x02021BD0\n\
_0801E4C4: .4byte 0x00005209\n\
_0801E4C8: .4byte 0x0000B870\n\
_0801E4CC: .4byte 0x0000B872\n\
_0801E4D0: .4byte 0x0000520D\n\
_0801E4D4: .4byte 0x0000B874\n\
_0801E4D8: .4byte gStarTile\n\
_0801E4DC: .4byte 0x0000C020\n\
_0801E4E0: .4byte 0x04000008\n\
_0801E4E4: .4byte gSwordTile\n\
_0801E4E8: .4byte 0x0000C040\n\
_0801E4EC: .4byte gShieldTile\n\
_0801E4F0: .4byte 0x0000C060\n\
_0801E4F4: .4byte 0x0000C080\n\
_0801E4F8: .4byte 0x080B95D8\n\
_0801E4FC: .4byte 0x0000C120\n\
_0801E500: .4byte 0x080B9608\n\
_0801E504: .4byte 0x00001801\n\
_0801E508: .4byte gAttributeIconTiles\n\
_0801E50C: .4byte gLanguage\n\
_0801E510: .4byte 0x0200C400\n\
_0801E514: .4byte gTypeIconTiles\n\
_0801E518: .4byte 0x04000040\n\
_0801E51C:\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r4\n\
	ldrb r1, [r6]\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	adds r1, r5, #0\n\
	adds r1, #0x43\n\
	lsls r1, r1, #5\n\
	ldr r2, _0801E634\n\
	adds r1, r1, r2\n\
	ldr r2, _0801E638\n\
	bl CpuSet\n\
	adds r0, r5, #4\n\
_0801E53C:\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x17\n\
	bhi _0801E54C\n\
	b _0801E444\n\
_0801E54C:\n\
	ldr r0, _0801E63C\n\
	ldr r4, _0801E640\n\
	ldr r5, _0801E644\n\
	adds r1, r4, #0\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	ldr r0, _0801E648\n\
	subs r4, #0x20\n\
	adds r1, r4, #0\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	movs r4, #0\n\
_0801E568:\n\
	lsls r0, r4, #4\n\
	subs r0, r0, r4\n\
	lsls r0, r0, #2\n\
	ldr r1, _0801E64C\n\
	adds r0, r0, r1\n\
	lsls r1, r4, #6\n\
	ldr r2, _0801E650\n\
	adds r1, r1, r2\n\
	ldr r2, _0801E654\n\
	bl CpuSet\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x13\n\
	bls _0801E568\n\
	movs r3, #0\n\
_0801E58A:\n\
	movs r2, #0\n\
	cmp r3, #1\n\
	bls _0801E598\n\
	movs r2, #2\n\
	cmp r3, #2\n\
	bne _0801E598\n\
	movs r2, #1\n\
_0801E598:\n\
	movs r4, #0\n\
	lsls r0, r3, #1\n\
	adds r1, r2, #3\n\
	adds r2, #4\n\
	adds r5, r3, #1\n\
	str r5, [sp, #0xc]\n\
	ldr r5, _0801E658\n\
	adds r0, r0, r3\n\
	adds r1, r0, r1\n\
	lsls r1, r1, #5\n\
	mov ip, r1\n\
	ldr r6, _0801E65C\n\
	mov sb, r6\n\
	ldr r1, _0801E660\n\
	mov r7, ip\n\
	adds r7, r7, r1\n\
	str r7, [sp, #8]\n\
	lsls r3, r0, #4\n\
	str r3, [sp, #0x10]\n\
	ldr r6, _0801E664\n\
	adds r6, r6, r3\n\
	mov sl, r6\n\
	adds r0, r0, r2\n\
	lsls r6, r0, #5\n\
	adds r1, r1, r6\n\
	mov r8, r1\n\
_0801E5CC:\n\
	lsls r2, r4, #1\n\
	mov r1, ip\n\
	add r1, sb\n\
	adds r1, r2, r1\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r5\n\
	lsls r3, r4, #2\n\
	ldr r7, _0801E664\n\
	adds r0, r3, r7\n\
	ldr r7, [sp, #0x10]\n\
	adds r0, r0, r7\n\
	strh r0, [r1]\n\
	ldr r1, [sp, #8]\n\
	adds r0, r2, r1\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r5\n\
	add r3, sl\n\
	adds r1, r3, #1\n\
	strh r1, [r0]\n\
	mov r7, sb\n\
	adds r0, r6, r7\n\
	adds r0, r2, r0\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r5\n\
	adds r1, r3, #2\n\
	strh r1, [r0]\n\
	add r2, r8\n\
	lsls r2, r2, #1\n\
	adds r2, r2, r5\n\
	adds r3, #3\n\
	strh r3, [r2]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #8\n\
	bls _0801E5CC\n\
	ldr r1, [sp, #0xc]\n\
	lsls r0, r1, #0x18\n\
	lsrs r3, r0, #0x18\n\
	cmp r3, #4\n\
	bls _0801E58A\n\
	ldr r0, _0801E668\n\
	bl sub_8057418\n\
	add sp, #0x14\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0801E634: .4byte 0x0200C400\n\
_0801E638: .4byte 0x04000020\n\
_0801E63C: .4byte gUnk_808ECD0\n\
_0801E640: .4byte 0x020000A0\n\
_0801E644: .4byte 0x04000008\n\
_0801E648: .4byte gUnk_808ECF0\n\
_0801E64C: .4byte gUnk_808E820\n\
_0801E650: .4byte 0x0200FC00\n\
_0801E654: .4byte 0x0400000F\n\
_0801E658: .4byte 0x02000400\n\
_0801E65C: .4byte 0x00007C02\n\
_0801E660: .4byte 0x00007C03\n\
_0801E664: .4byte 0x000050D0\n\
_0801E668: .4byte 0x02000200");
}

void sub_801EFC0 (u16, u16*);
/*
void sub_801E66C (void) {
  u8 i;
  CpuFill32(0, &gBgVram.sbb1B[8], 0x1E00);
  CpuFill32(0, &gBgVram.cbb4[0x400], 0x2000);
  for (i = 0; i < 7; i++) {
    u32 r5;
    u32 r4;
    u16 cardId;
    SetCardInfo(sub_801DAF8(i));
    r5 = 0;
    if (i > 1) {
      r5 = 2;
      if (i == 2)
        r5 = 1;
    }

    //(3 * i + r5 + 2) * 64
    //sb = vram + F802
    //sl = vram + F820

    cardId = gCardInfo.id;
    r4 = 3 * i;
    r5 += 2;
    r5 += r4;
    sub_801EFC0(cardId, &gBgVram.sbb1F[r5][2]);
  }
}*/

NAKED
void sub_801E66C (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #8\n\
	movs r5, #0\n\
	str r5, [sp]\n\
	ldr r4, _0801E7A4\n\
	ldr r2, _0801E7A8\n\
	mov r0, sp\n\
	adds r1, r4, #0\n\
	bl CpuSet\n\
	str r5, [sp, #4]\n\
	add r0, sp, #4\n\
	movs r2, #0xa8\n\
	lsls r2, r2, #6\n\
	adds r1, r4, r2\n\
	ldr r2, _0801E7AC\n\
	bl CpuSet\n\
	movs r6, #0\n\
	ldr r7, _0801E7B0\n\
	ldr r0, _0801E7B4\n\
	adds r0, r0, r4\n\
	mov sb, r0\n\
	movs r1, #0xf1\n\
	lsls r1, r1, #5\n\
	adds r1, r1, r4\n\
	mov sl, r1\n\
_0801E6AA:\n\
	adds r0, r6, #0\n\
	bl sub_801DAF8\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	bl SetCardInfo\n\
	movs r5, #0\n\
	cmp r6, #1\n\
	bls _0801E6C6\n\
	movs r5, #2\n\
	cmp r6, #2\n\
	bne _0801E6C6\n\
	movs r5, #1\n\
_0801E6C6:\n\
	ldrh r0, [r7, #0x10]\n\
	lsls r4, r6, #1\n\
	adds r4, r4, r6\n\
	adds r5, #2\n\
	adds r5, r4, r5\n\
	lsls r5, r5, #6\n\
	mov r2, sb\n\
	adds r1, r5, r2\n\
	bl sub_801EFC0\n\
	ldrh r0, [r7, #0x10]\n\
	lsls r4, r4, #9\n\
	movs r1, #0xd0\n\
	lsls r1, r1, #5\n\
	adds r4, r4, r1\n\
	ldr r2, _0801E7B8\n\
	add r2, sb\n\
	mov r8, r2\n\
	add r4, r8\n\
	adds r1, r4, #0\n\
	bl sub_801E7D4\n\
	ldrb r0, [r7, #0x18]\n\
	add r5, sl\n\
	adds r1, r5, #0\n\
	bl sub_801F01C\n\
	ldrh r0, [r7, #0x10]\n\
	adds r1, r6, #0\n\
	bl sub_801E86C\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #4\n\
	bls _0801E6AA\n\
	bl GetDeckCost\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
	bl sub_800A508\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
	movs r6, #0\n\
	ldr r7, _0801E7BC\n\
	add r7, r8\n\
	ldr r5, _0801E7C0\n\
	ldr r4, _0801E7C4\n\
	ldr r0, _0801E7C8\n\
	adds r3, r0, #0\n\
_0801E732:\n\
	adds r1, r6, r5\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	adds r0, r6, r4\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	adds r0, r2, r0\n\
	strh r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #4\n\
	bls _0801E732\n\
	bl GetDeckSize\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
	bl sub_800A528\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
	movs r6, #0\n\
	ldr r7, _0801E7CC\n\
	ldr r5, _0801E7D0\n\
	ldr r4, _0801E7C4\n\
	ldr r1, _0801E7C8\n\
	adds r3, r1, #0\n\
_0801E76E:\n\
	adds r1, r6, r5\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	adds r0, r6, #3\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	adds r0, r2, r0\n\
	strh r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #1\n\
	bls _0801E76E\n\
	bl sub_801DB30\n\
	bl sub_800A544\n\
	add sp, #8\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0801E7A4: .4byte 0x0200DE00\n\
_0801E7A8: .4byte 0x05000780\n\
_0801E7AC: .4byte 0x05000800\n\
_0801E7B0: .4byte gCardInfo\n\
_0801E7B4: .4byte 0x00001E02\n\
_0801E7B8: .4byte 0xFFFFC7FE\n\
_0801E7BC: .4byte 0xFFFF4000\n\
_0801E7C0: .4byte 0x00005C2A\n\
_0801E7C4: .4byte 0x02021BD0\n\
_0801E7C8: .4byte 0x00000209\n\
_0801E7CC: .4byte 0x02000400\n\
_0801E7D0: .4byte 0x00005C36");
}

u8* sub_8020824 (u8*);

void sub_801E7D4 (u16 unused_CardId, u32* arg1) {
  u8 buffer[52];
  u8* name = gCardInfo.name;
  u8 r6, r5, r3;
  name = sub_8020824(name);
  r6 = 0, r5 = 0, r3 = 0;
  while (name[r5] && name[r5] != '$') {
    if ((s8)name[r5] >= 0) {
      if (r6 < 24) {
        buffer[r3] = name[r5];
        r3++;
      }
      r5++;
    }
    else {
      if (r6 < 24) {
        buffer[r3] = name[r5];
        buffer[r3 + 1] = name[r5 + 1];
        r3 += 2;
      }
      r5 += 2;
    }
    r6++;
  }
  buffer[r3] = '\0';
  sub_8020A3C(arg1, buffer, 0x901);
}
