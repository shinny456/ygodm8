#include "global.h"

//TODO: rename file something similar to big card gfx copy

static void sub_80267E0 (void);
static void CopyStarIcons (void);


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
extern const u8* gUnk_8E00E30[];

void ConvertU16ToDigitBuffer(u16, u8);

extern u8 gDigitBufferU16[];
extern u8 g2021B50[]; //TODO: fix type?
extern u8 g2021B10[]; //TODO: fix type?
extern u8 g2021B90[]; //TODO: fix type?


static void CopyCardArtDataToBuffers (void) {
  u8 i;
  u8 ok = 0x48;
  sub_800E08C(gCardArts[gCardInfo.id], gUnk_8E01364 + 32);
  CpuFill16(0, gUnk_8E01364, 64); //clear first tile
  CpuCopy32(gCardArtPalettes[gCardInfo.id], gUnk_8E01368, 128);
  *gUnk_8E01368 = 0;
  for (i = 0; i < 10; i++)
    CpuCopy32(gUnk_8936130[i], gUnk_8E0136C + (10 * i + ok + i * 4), 20);
}

static void CopyAttributeIcon (void) {
  if (gCardInfo.attribute == ATTRIBUTE_NONE)
    return;
  CpuCopy16(gUnk_8E17F18[gCardInfo.attribute], gUnk_8E01368 + 0x56, 14);
  CpuCopy32(gUnk_8E17E28[gCardInfo.attribute][gLanguage], gUnk_8E01364 + 0x1900, 128);
  CpuCopy32(gUnk_8E17E28[gCardInfo.attribute][gLanguage] + 32, gUnk_8E01364 + 0x1A00, 128);
}

static void CopyTypeIcon (void) {
  u8 type;
  u8 sb;
  if (gCardInfo.type == TYPE_NONE)
    return;
  CpuCopy16(gUnk_8E151C8[gCardInfo.type], gUnk_8E01368 + 0x5D, 22);
  //TODO
  /*
  sb = 2;
  if (gCardInfo.type == 21 || gCardInfo.type == 22 || gCardInfo.type == 23)
    sb = 4;
  */
  type = gCardInfo.type - 21; //create a define and set it to TYPE_SPELL?
  sb = 2;
  if (type < 3)
    sb = 4;
  CpuCopy32(gUnk_8E14FE8[gCardInfo.type][gLanguage], gUnk_8E01364 + 0x18C0, sb * 64);
  CpuCopy32(gUnk_8E14FE8[gCardInfo.type][gLanguage] + sb * 16, gUnk_8E01364 + 0x19C0, sb * 64);
}

static void CopyAtkDigits (void) {
  u8 i;
  ConvertU16ToDigitBuffer(gCardInfo.atk, DIGIT_FLAG_NONE);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gDigitBufferU16[i] != DIGIT_TERMINATOR) {
      CpuCopy32(&gUnk_89385D8[(gDigitBufferU16[i] + 2) * 16], g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + (i + 0x72) * 32, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + (i + 0x72) * 32, 64);
    }
    else if (i == 0 && gDigitBufferU16[4] != DIGIT_TERMINATOR) {
      CpuCopy32(gUnk_8938618, g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + 0xE40, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + 0xE40, 64);
    }
  }
}

static void CopyDefDigits (void) {
  u8 i;
  ConvertU16ToDigitBuffer(gCardInfo.def, DIGIT_FLAG_NONE);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gDigitBufferU16[i] != DIGIT_TERMINATOR) {
      CpuCopy32(&gUnk_89385D8[(gDigitBufferU16[i] + 2) * 16], g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + (i + 0x77) * 32, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + (i + 0x77) * 32, 64);
    }
    else if (i == 0 && gDigitBufferU16[4] != DIGIT_TERMINATOR) {
      CpuCopy32(gUnk_89385D8, g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + 0xEE0, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + 0xEE0, 64);
    }
  }
}

static void CopyCardName (void) {
  u8 pos;
  bool32 abbreviate;
  u32 buffer[16];
  const unsigned char* name;
  if (gLanguage == ENGLISH && (gCardInfo.id == BLACK_LUSTER_SOLDIER || gCardInfo.id == BLACK_LUSTER_RITUAL))
    abbreviate = TRUE;
  else
    abbreviate = FALSE;
  name = gCardInfo.name;
  name = GetCurrentLanguageString(name);
  pos = 0;
  while (pos < 10 && *name && *name != 0x24) {
    u16 r1;
    if (abbreviate && pos == 1) {
      r1 = gUnk_8E00E30[14][1];
      r1 <<= 8;
      r1 |= gUnk_8E00E30[14][0];
      name += 4;
    }
    else if (*name <= 127) {
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

//TODO: rename to CopyCardGraphics (BigCardGraphics?)
void PrintCard (void) {
  sub_80267E0();
  CopyCardArtDataToBuffers();
  CopyAttributeIcon();
  CopyTypeIcon();
  CopyStarIcons();
  CopyAtkDigits();
  CopyDefDigits();
  CopyCardName();
}

static void sub_80267E0 (void) {
  u16 i;
  CpuCopy16(gUnk_8938384, gUnk_8E0136C, 532);
  for (i = 0; i < 266; i++)
    gUnk_8E0136C[i] += 101;
  CpuCopy32(gUnk_8E137C0, gUnk_8E01364 + 0xCA0, 0x2000);
  CpuCopy32(gUnk_8E137C4[gCardInfo.color], gUnk_8E01368 + 0x40, 40); // Palette
}

static void CopyStarIcons (void) {
  u8 numStars = gCardInfo.level;
  if (!numStars)
    return;
  if (numStars > 12)
    numStars = 12;
  CpuCopy32(gUnk_8938598, g2021B50, 64);
  for (; numStars; numStars--) {
    CpuCopy32(gUnk_8E01364 + (114 - numStars) * 32, g2021B10, 64);
    sub_800DD4C();
    CpuCopy32(g2021B90, gUnk_8E01364 + (114 - numStars) * 32, 64);
  }
}
