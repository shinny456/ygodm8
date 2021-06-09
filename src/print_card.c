#include "global.h"
#include "gba/macro.h"
#include "gba/syscall.h"
#include "card.h"
#include "duel.h"
#include "constants/card_ids.h"

extern u32* gCardArts[]; //card arts, TODO: fix type?
extern u16* gCardArtPalettes[]; //card palettes, TODO: fix type?
extern u16* gUnk_8E01364; //TODO: fix type?
extern u16* gUnk_8E01368; //TODO: fix type?
extern u16 gUnk_8936130[][10]; //TODO: fix type?
extern u16* gUnk_8E0136C; //TODO: fix type?
extern u32* gUnk_8E17F18[]; //TODO: fix type?
extern u32* gUnk_8E151C8[]; //TODO: fix type?
extern u32* gUnk_8E17E28[][NUM_LANGUAGES]; //TODO: fix type?
extern u32* gUnk_8E14FE8[][NUM_LANGUAGES]; //TODO: fix type?
extern u8* gUnk_8E137C0;
extern u8* gUnk_8E137C4[];
extern u8 gUnk_8938384[];
extern u8 gUnk_8938598[];

extern u32 gUnk_89385D8[]; //TODO: fix type? 2d array?
extern u32 gUnk_8938618[]; //fix type?
extern u32 gUnk_89385D8[]; //fix type?

void sub_800E08C (u32*, u16*);
void sub_800DDA0(u16, u8);
void sub_800DD4C(void);

extern u8 g2021BD0[]; // digit buffer
extern u8 g2021B50[]; //TODO: fix type?
extern u8 g2021B10[]; //TODO: fix type?
extern u8 g2021B90[]; //TODO: fix type?
void sub_80267E0 (void);
void sub_8026864 (void);

void sub_80262B0 (void) {
  u8 i;
  u8 ok = 0x48;
  sub_800E08C(gCardArts[gCardInfo.id], gUnk_8E01364 + 32);
  CpuFill16(0, gUnk_8E01364, 64); //clear first tile
  CpuCopy32(gCardArtPalettes[gCardInfo.id], gUnk_8E01368, 128);
  *gUnk_8E01368 = 0;
  for (i = 0; i < 10; i++)
    CpuCopy32(gUnk_8936130[i], gUnk_8E0136C + (10 * i + ok + i * 4), 20);
}

//Attribute icon
void sub_802634C (void) {
  if (gCardInfo.attribute == ATTRIBUTE_NONE)
    return;
  CpuCopy16(gUnk_8E17F18[gCardInfo.attribute], gUnk_8E01368 + 0x56, 14);
  CpuCopy32(gUnk_8E17E28[gCardInfo.attribute][gLanguage], gUnk_8E01364 + 0x1900, 128);
  CpuCopy32(gUnk_8E17E28[gCardInfo.attribute][gLanguage] + 32, gUnk_8E01364 + 0x1A00, 128);
}

//Type icon
void sub_80263DC (void) {
  u8 type;
  u8 sb;
  if (gCardInfo.type == TYPE_NONE)
    return;
  CpuCopy16(gUnk_8E151C8[gCardInfo.type], gUnk_8E01368 + 0x5D, 22);
  type = gCardInfo.type - 21; //create a define and set it to TYPE_SPELL?
  sb = 2;
  if (type < 3) //create a define?
    sb = 4;
  CpuCopy32(gUnk_8E14FE8[gCardInfo.type][gLanguage], gUnk_8E01364 + 0x18C0, sb * 64);
  CpuCopy32(gUnk_8E14FE8[gCardInfo.type][gLanguage] + sb * 16, gUnk_8E01364 + 0x19C0, sb * 64);
}

//Atk digits
void sub_802648C (void) {
  u8 i;
  sub_800DDA0(gCardInfo.atk, 0);
  for (i = 0; i < 5; i++) {
    if (g2021BD0[i] != 10) {
      CpuCopy32(&gUnk_89385D8[(g2021BD0[i] + 2) * 16], g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + (i + 0x72) * 32, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + (i + 0x72) * 32, 64);
    }
    else if (i == 0 && g2021BD0[4] != 10) {
      CpuCopy32(gUnk_8938618, g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + 0xE40, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + 0xE40, 64);
    }
  }
}

//Defense digits
void sub_8026564 (void) {
  u8 i;
  sub_800DDA0(gCardInfo.def, 0);
  for (i = 0; i < 5; i++) {
    if (g2021BD0[i] != 10) {
      CpuCopy32(&gUnk_89385D8[(g2021BD0[i] + 2) * 16], g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + (i + 0x77) * 32, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + (i + 0x77) * 32, 64);
    }
    else if (i == 0 && g2021BD0[4] != 10) {
      CpuCopy32(gUnk_89385D8, g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + 0xEE0, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + 0xEE0, 64);
    }
  }
}

extern const u8* gUnk_8E00E30[];
u8* sub_8020824(u8*);
void sub_8020968(u32* arg0, u16 arg1, u16 arg2);

//Card name
void sub_802663C (void) {
  u8 pos;
  bool32 abbreviate;
  u32 buffer[16];
  u8* name;
  if (gLanguage == ENGLISH && (gCardInfo.id == BLACK_LUSTER_SOLDIER || gCardInfo.id == BLACK_LUSTER_RITUAL))
    abbreviate = TRUE;
  else
    abbreviate = FALSE;
  name = gCardInfo.name;
  name = sub_8020824(name);
  pos = 0;
  while (pos < 10 && *name && *name != 0x24) {
    u16 r1;
    if (abbreviate && pos == 1) {
      r1 = gUnk_8E00E30[14][1];
      r1 <<= 8;
      r1 |= gUnk_8E00E30[14][0];
      name += 4;
    }
    else if ((s8)*name >= 0) {
      r1 = gUnk_8E00E30[*name - 32][1];
      r1 <<= 8;
      r1 |= gUnk_8E00E30[*name - 32][0];
      name++;
    }
    else {
      r1 = name[1] << 8 | name[0];
      name += 2;
    }
    sub_8020968(buffer, r1, 0x44A);
    CpuFill32(0, g2021B50, 64);
    CpuCopy32(buffer, g2021B50 + 40, 24);
    CpuCopy32(gUnk_8E01364 + (pos * 2 + 133) * 32, g2021B10, 64);
    sub_800DD4C();
    CpuCopy32(g2021B90, gUnk_8E01364 + (pos * 2 + 133) * 32, 64);

    CpuFill32(0, g2021B50, 64);
    CpuCopy32(&buffer[6], g2021B50, 40);
    CpuCopy32(gUnk_8E01364 + (pos * 2 + 134) * 32, g2021B10, 64);
    sub_800DD4C();
    CpuCopy32(g2021B90, gUnk_8E01364 + (pos * 2 + 134) * 32, 64);
    pos++;
  }
}

void PrintCard (void) {
  sub_80267E0();
  sub_80262B0();
  sub_802634C();
  sub_80263DC();
  sub_8026864();
  sub_802648C();
  sub_8026564();
  sub_802663C();
}

//Card border
void sub_80267E0 (void) {
  u16 i;
  CpuCopy16(gUnk_8938384, gUnk_8E0136C, 532);
  for (i = 0; i < 266; i++)
    gUnk_8E0136C[i] += 101;
  CpuCopy32(gUnk_8E137C0, gUnk_8E01364 + 0xCA0, 0x2000);
  CpuCopy32(gUnk_8E137C4[gCardInfo.color], gUnk_8E01368 + 0x40, 40); // Palette
}

//Card stars
void sub_8026864 (void) {
  u8 numStars = gCardInfo.level;
  if (!numStars)
    return;
  if (numStars > 12)
    numStars = 12;
  CpuCopy32(gUnk_8938598, g2021B50, 64);
  if (!numStars)
    return;
  for (; numStars; numStars--) {
    CpuCopy32(gUnk_8E01364 + (114 - numStars) * 32, g2021B10, 64);
    sub_800DD4C();
    CpuCopy32(g2021B90, gUnk_8E01364 + (114 - numStars) * 32, 64);
  }
}
