#include "global.h"

extern const signed short sin_cos_table[]; //TODO: move to header

// unused after initialization?
signed short g2020C00[/*ARRAY_COUNT(sin_cos_table)*/228];

static void InitCredits (void);
static void sub_8000810 (void);
static void sub_80008EC (unsigned char);
static void ReshefVisionMain (void);
static void sub_8000D74 (void);
static void sub_8001068 (void);
static void sub_8001110 (void);
static void sub_80011B4 (void);
static void sub_80012B4 (void);
static void sub_8001360 (void);
static void sub_80013E0 (void);
static void sub_8001458 (unsigned char);
static void sub_80015A4 (void);
static void sub_8001788 (void);
static void sub_80018E8 (void);
static void sub_80019C4 (void);
static void sub_8001AD8 (void);
static void sub_8001B88 (void);
static void sub_8001BFC (void);
static void sub_8001C70 (void);
static void sub_8001CE4 (void);
static void sub_8001D58 (void);
static void sub_8001DD4 (void);
static void sub_8001E8C (void);
static void sub_80020D8 (void);
static void sub_80027F0 (void);
static void sub_80029D4 (void);
static void sub_8002D10 (void);
static void sub_8002E98 (void);
static void sub_8003020 (void);
static void sub_8003268 (void);
static void sub_8003444 (void);
static void sub_8003560 (void);
static void sub_800373C (void);
static void sub_80037B4 (void);
static void sub_8003820 (void);
static void sub_8003888 (unsigned char);
static void sub_8003980 (unsigned char);
static void sub_8003A78 (unsigned char);
static void sub_8003B78 (void);
static void sub_8003C10 (void);
static void sub_8003CA8 (void);
static void sub_8003D10 (void);
void sub_8004260 (void);
void sub_8004318 (void);
void sub_80043D0 (void);
void sub_80045D4 (void);
void sub_8004678 (void);
void sub_8004730 (void);
void sub_8004894 (void);
void sub_80048F8 (void);
void sub_8004A18 (void);
void sub_8004B44 (void);
void sub_8004C30 (void);
void sub_8004D34 (void);
void sub_8004D7C (void);
void sub_8004DE0 (void);
void sub_8004E54 (void);




void sub_8035038 (u16);
void sub_80082E8 (void);
extern const u16 gUnk_8AA6358[];
extern const u16 gUnk_8AA6558[];
extern const u32 gUnk_8A52618[];
extern const u32 gUnk_8A536F4[];
extern const u32 gUnk_8A5E54C[];
extern const u32 gUnk_8A5F8E8[];
extern const u32 gUnk_8A6F6F4[];
extern const u32 gUnk_8A71A60[];
extern const u32 gUnk_8A950D4[];
extern const u32 gUnk_8A72DFC[];
extern const u32 gUnk_8A75548[];
extern const u32* gUnk_8FA3A4C[];
extern const u32* gUnk_8FA3A80[];
extern const u32* gUnk_8FA3AB4[];
extern const u16 gUnk_8AA6958[][30];
extern const u16 gUnk_8AA6C64[][30];
extern const u16 gUnk_8AA8DE8[][30];
extern const u16 gUnk_8AA90F4[][30];
extern const u16 gUnk_8AAB278[][30];
extern const u16 gUnk_8AAB9F8[][30];
extern const u16 gUnk_8AABD04[][30];
extern const u16 gUnk_8AADBF4[][30];
extern const u16 gUnk_8AAC010[][30];
extern const u16 gUnk_8AAC394[][30];
extern const u16 gUnk_8A96358[];
extern const u16 gUnk_8A98358[];
extern const u16 gUnk_8AA6758[];
extern u16 (*gUnk_8FA3ADC[])[30];
extern u16 (*gUnk_8FA3B10[])[30];
extern u16 (*gUnk_8FA3B44[])[30];


struct Credits {
  u32 state;
  u16 frameCounter;
  u16 unk6;
  u16 unk8;
  u8 blendWeight;
};

extern struct Credits* gCreditsData;
struct UnkFA3630 {
  u8 unk0;
  u8 unk1[3];
  struct Oam123 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
  }* unk4;
} extern * g8FA3630;
extern u16 (*gCreditsTilemaps[])[30];
extern const u8 g8063FA0[][2];
extern u8 gSharedMem[];
void bzero (void*, unsigned);
s16 fix_inverse (s16);
s16 fix_mul (s16, s16);
extern u16 gOamBuffer[];
extern u16 gBG1VOFS;
extern u16 gBLDALPHA;
extern u16 gBG0VOFS;
extern u16 gCreditsPalette[];
void ClearGraphicsBuffers (void);
extern u32 gCreditsTileset[];
void sub_8008288 (void);




extern u32 gUnk_8A47010[];
extern u32 gUnk_8A481C8[];
extern u32 gUnk_8A492D8[];
extern u32 gUnk_8A45DE4[];
extern u16 gUnk_8A45880[][15];
extern u16 gUnk_8A45AD8[][15];
extern u16 gUnk_8A45C5E[][15];
extern u16 gUnk_8A44F5C[][45];
extern u16 gUnk_8A44F9C[][45];
extern u16 gUnk_8A453EE[][45];
extern u16 gUnk_8A4542E[][45];
extern u16 gUnk_8063FC0[][30];
extern u16 gUnk_8A4A430[];
extern u16 gUnk_8064038[];
extern const u16 gUnk_8A4A490[];
extern const u16 gUnk_8A4E490[];
extern const u16 gUnk_8A50490[];
extern const u16 gUnk_8AA4358[];
extern u16 gUnk_8A52490[];


struct Unk8DF7590 {
  u32 unk0;
  u32 unk4;
  u16 unk8;
  u8 unkA;
  u8 unkB;
  u8 fillerC[2];
  s8 unkE[16];
  s8 unk1E[16];
  s8 unk2E[16];
  u8 unk3E;
  u8 unk3F;
  u8 unk40;
  u8 unk41;
  u8 unk42;
  u8 filler43;
  u16 unk44;
  u16 unk46;
  u8 unk48[14];
  u8 unk56[14];
  u8 unk64[14];
  u8 unk72[14];
  u16 unk80;
  u16 unk82;
  u16 unk84;
} extern * g8DF7590;
struct Unk8DF7594 {
  u32 unk0;
  u32 unk4;
  u8 unk8;
  u8 filler9;
  u16 unkA;
  u16 unkC[3];
  u16 unk12;
  u8 unk14;
  u8 filler15;
  u16 unk16[16];
  s8 unk36[96];
  s8 unk96[96];
  s8 unkF6[96];
  u8 unk156;
  u8 unk157;
  u8 unk158;
  u8 filler159;
  u16 unk15A[24];
  u8 unk18A;
  u8 unk18B;
  u8 unk18C;
  u8 filler18D[3];
  u8 unk190[6];
  u8 unk196[6];
  u8 unk19C[6];
  u8 unk1A2;
  u8 unk1A3;
  u8 unk1A4;
  u8 filler1A5;
  u16 unk1A6;
  u8 unk1A8;
  u8 filler1A9;
  u16 unk1AA;
  u16 unk1AC;
  u16 unk1AE;
  u8 filler1B0[0xC];
  u16 unk1BC;
  u16 unk1BE;
  u16 unk1C0;
  u8 filler1C2[0xC];
  u16 unk1CE;
  u16 unk1D0;
  u16 unk1D2;
  u8 fillerD4[0x12];
  u8 unk1E6[3];
  u8 filler1E9;
  u16 unk1EA[3];
  u16 unk1F0;
  u16 unk1F2[3];
  u16 unk1F8;
  u8 filler1FA[2];
  u16 unk1FC;
  u8 unk1FE;
} extern * g8DF7594;


enum CutsceneIds {
  RESHEF_VISION,                      //
  BURNING_RESHEF_2_AND_SOL_CHEVALSKY, // intro segment 4
  CREDITS_CUTSCENE,                   //
  BURNING_RESHEF_1,                   // intro segment 1
  GOD_CARDS_TURN_TO_STONE,            // intro segment 2
  MILLENNIUM_ITEMS_SCATTER,           // intro segment 3
  INTRO_SEGMENTS_3_4_5,               // 3, 4, 5 consecutively?
  PEGASUS_BEFORE_CREDITS,             // no flames, just his face
  INTRO_CUTSCENE,                     // full intro: 3, 4, 5, 1 consecutively
};

void CreditsMain (void) {
  InitCredits();
  while (1) {
    switch (gCreditsData->state) {
      case 0:
        if (++gCreditsData->unk6 > 60) {
          gCreditsData->blendWeight = 0;
          gBLDALPHA = (16 - gCreditsData->blendWeight) << 8 | gCreditsData->blendWeight;
          LoadBlendingRegs();
          gCreditsData->unk6 = 0;
          gCreditsData->state = 1;
        }
        break;
      case 1:
        gBG0VOFS = 448;
        LoadBgOffsets();
        gCreditsData->state = 2;
        break;
      case 2:
        if (gCreditsData->frameCounter % 2 == 0) {
          gBG0VOFS++;
          gBG1VOFS++;
          LoadBgOffsets();
        }
        if (gCreditsData->blendWeight < 16 && gCreditsData->frameCounter % 8 == 0) {
          gCreditsData->blendWeight++;
          gBLDALPHA = (16 - gCreditsData->blendWeight) << 8 | gCreditsData->blendWeight;
          LoadBlendingRegs();
        }
        if (gBG0VOFS % 512 == 0) {
          if (gCreditsData->unk8 < 16)
            gCreditsData->unk8++;
          else
            gCreditsData->unk8 = 0;
          if (gCreditsData->unk8 < 15) {
            u8 i;
            CpuFastFill(0, gBgVram.sbb1E, 0x800);
            for (i = 0; i < g8063FA0[gCreditsData->unk8][1]; i++)
              CpuCopy16(gCreditsTilemaps[gCreditsData->unk8][i], &gBgVram.sbb1E[g8063FA0[gCreditsData->unk8][0] + i], 62);
            switch (gCreditsData->unk8) {
              case 10:
                sub_80008EC(2);
                break;
              case 12:
                sub_80008EC(0);
                break;
            }
          }
          LoadBgVRAM();
          gBG0VOFS = 0;
          gCreditsData->state = 3;
        }
        break;
      case 3:
        LoadBgOffsets();
        if (++gCreditsData->unk6 > 270) {
          if (gCreditsData->unk8 < 16) {
            gCreditsData->state = 4;
            gBG1VOFS = 448;
            LoadBgOffsets();
          }
          else
            gCreditsData->state = 9;
          gCreditsData->unk6 = 0;
        }
        break;
      case 4:
        if (gCreditsData->frameCounter % 2 == 0) {
          gBG0VOFS++;
          gBG1VOFS++;
          LoadBgOffsets();
        }
        if (gCreditsData->blendWeight != 0 && gCreditsData->frameCounter % 8 == 0) {
          gCreditsData->blendWeight--;
          gBLDALPHA = (16 - gCreditsData->blendWeight) << 8 | gCreditsData->blendWeight;
          LoadBlendingRegs();
        }
        if (gBG1VOFS % 512 == 0) {
          u8 i;
          if (gCreditsData->unk8 < 16)
            gCreditsData->unk8++;
          else
            gCreditsData->unk8 = 0;
          CpuFastFill(0, gBgVram.sbb1F, 0x800);
          for (i = 0; i < g8063FA0[gCreditsData->unk8][1]; i++)
            CpuCopy16(gCreditsTilemaps[gCreditsData->unk8][i], &gBgVram.sbb1F[g8063FA0[gCreditsData->unk8][0] + i], 62);
          switch (gCreditsData->unk8) {
            case 10:
              sub_80008EC(1);
              break;
            case 12:
              sub_80008EC(0);
              break;
          }
          LoadBgVRAM();
          gBG1VOFS = 0;
          gCreditsData->state = 7;
        }
        break;
      case 7:
        LoadBgOffsets();
        if (++gCreditsData->unk6 > 270) {
          if (gCreditsData->unk8 < 16) {
            gBG0VOFS = 448;
            LoadBgOffsets();
            gCreditsData->state = 8;
          }
          else
            gCreditsData->state = 9;
          gCreditsData->unk6 = 0;
        }
        break;
      case 8:
        if (gCreditsData->frameCounter % 2 == 0) {
          gBG0VOFS++;
          gBG1VOFS++;
          LoadBgOffsets();
        }
        if (gCreditsData->blendWeight < 16 && gCreditsData->frameCounter % 8 == 0) {
          gCreditsData->blendWeight++;
          gBLDALPHA = (16 - gCreditsData->blendWeight) << 8 | gCreditsData->blendWeight;
          LoadBlendingRegs();
        }
        if (gBG0VOFS % 512 == 0) {
          if (gCreditsData->unk8 < 16)
            gCreditsData->unk8++;
          else
            gCreditsData->unk8 = 0;
          {
            u8 i;
            CpuFastFill(0, gBgVram.sbb1E, 0x800);
            for (i = 0; i < g8063FA0[gCreditsData->unk8][1]; i++)
              CpuCopy16(gCreditsTilemaps[gCreditsData->unk8][i], &gBgVram.sbb1E[g8063FA0[gCreditsData->unk8][0] + i], 62);
            switch (gCreditsData->unk8) {
              case 10:
                sub_80008EC(2);
                break;
              case 12:
                sub_80008EC(0);
                break;
            }
            LoadBgVRAM();
            gBG0VOFS = 0;
            gCreditsData->state = 3;
          }
        }
        break;
      case 9:
        break;
      default:
        gCreditsData->state = 0;
        break;
    }
    WaitForVBlank();
    gCreditsData->frameCounter++;
  }
}

static void InitCredits (void) {
  u8 i;
  bzero(gSharedMem, 0x4314);
  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();
  PlayMusic(MUSIC_CREDITS);
  CpuCopy16(gCreditsPalette, gPaletteBuffer, 0x200);
  LZ77UnCompWram(gCreditsTileset, gBgVram.cbb0);
  CpuFastCopy(gBgVram.cbb0, gBgVram.cbb0 + 0x8000, 32);
  CpuFastFill(0, gBgVram.cbb0 + 0xF000, 0x800);
  CpuFastFill(0, gBgVram.cbb0 + 0xF800, 0x800);
  for (i = 0; i < g8063FA0[0][1]; i++)
    CpuCopy16(gCreditsTilemaps[0][i], &gBgVram.sbb1F[g8063FA0[0][0] + i], 62);
  LoadBgVRAM();
  LoadPalettes();
  SetVBlankCallback(sub_8000810);
  WaitForVBlank();
}

static void sub_8000810 (void) {
  u16 i;
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  REG_BG0CNT = 0x1F00;
  REG_BG1CNT = 0x1E01;
  REG_IME = 1;
  REG_IE = 1;
  REG_DISPSTAT = 8;
  REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG1_ON;
  gBG0HOFS = 0;
  gBG0VOFS = 0x1C0;
  gBG1HOFS = 0;
  gBG1VOFS = 0;
  LoadBgOffsets();
  gBLDCNT = 0x241;
  gBLDALPHA = 0;
  LoadBlendingRegs();
}

static void sub_80008EC (unsigned char arg0) {
  switch (arg0) {
    case 1:
      REG_BG0CNT = 0x1F08;
      REG_BG1CNT = 0x1E01;
      break;
    case 2:
      REG_BG0CNT = 0x1F00;
      REG_BG1CNT = 0x1E09;
      break;
    default:
      REG_BG0CNT = 0x1F00;
      REG_BG1CNT = 0x1E01;
      break;
  }
}

void StartCutscene (u8 cutscene) {
  switch (cutscene) {
    case RESHEF_VISION:
      ReshefVisionMain();
      break;
    case BURNING_RESHEF_2_AND_SOL_CHEVALSKY:
      sub_8001C70();
      break;
    case CREDITS_CUTSCENE:
      CreditsMain();
      break;
    case BURNING_RESHEF_1:
      sub_8001B88();
      break;
    case GOD_CARDS_TURN_TO_STONE:
      sub_8001BFC();
      break;
    case MILLENNIUM_ITEMS_SCATTER:
      sub_8001CE4();
      break;
    case INTRO_SEGMENTS_3_4_5:
      sub_8001DD4();
      break;
    case PEGASUS_BEFORE_CREDITS:
      sub_8001D58();
      break;
    case INTRO_CUTSCENE:
      sub_8001AD8();
      break;
  }
  REG_DISPCNT = 0;
}

// Yugi reshef vision
static void ReshefVisionMain (void) {
  u8 i;
  s16 r5;
  u8 r6 = 16, r7 = 16;
  PlayMusic(MUSIC_600);
  PlayMusic(MUSIC_353);
  sub_8000D74();
  while (1) {
    switch (g8DF7590->unk4) {
      case 0:
        g8DF7590->unk3E = 128;
        sub_8001110();
        LoadPalettes();
        r5 = 0;
        g8DF7590->unk4++;
        break;
      case 1:
        if (r5 % 3 == 0) {
          if (g8DF7590->unk3E)
            g8DF7590->unk3E -= 2;
          sub_8001110();
          LoadPalettes();
        }
        r5++;
        if (!g8DF7590->unk3E) {
          r5 = 0;
          g8DF7590->unk4++;
        }
        break;
      case 2:
        sub_8001360();
        if (!(r5 & 0x10)) {
          if (g8DF7590->unk3E < 128)
            g8DF7590->unk3E += 2;
          sub_8001110();
        }
        else {
          if (g8DF7590->unk3E)
            g8DF7590->unk3E -= 2;
          sub_8001110();
        }
        LoadPalettes();
        if (g8DF7590->unk82 == 256)
          g8DF7590->unk4++;
        r5++;
        break;
      case 3:
        sub_80013E0();
        if (g8DF7590->unk3E < 128)
          g8DF7590->unk3E += 2;
        if (g8DF7590->unk0 == 5) {
          g8DF7590->unk4++;
          r5 = 0;
        }
        sub_8001110();
        LoadPalettes();
        break;
      case 4:
        if (g8DF7590->unk3E < 128)
          g8DF7590->unk3E += 2;
        sub_8001110();
        LoadPalettes();
        if (r5 > 60) {
          g8DF7590->unk4++;
          r5 = 0;
        }
        r5++;
        break;
      case 5:
        if (r5 % 4 == 0) {
          g8DF7590->unk3F++;
          sub_80011B4();
          LoadPalettes();
        }
        r5++;
        if (g8DF7590->unk3F > 47) {
          sub_8035038(8);
          g8DF7590->unk4++;
          r5 = 0;
        }
        break;
      case 6:
         if (r5 % 4 == 0) {
          g8DF7590->unk40++;
          sub_80012B4();
          LoadPalettes();
        }
        r5++;
        if (g8DF7590->unk40 > 47) {
          g8DF7590->unk4++;
          r5 = 0;
        }
        break;
      case 7:
        break;
    }
    for (i = 0; i < 14; i++) {
      g8DF7590->unk48[i] -= g8DF7590->unk64[i];
      g8DF7590->unk56[i] -= g8DF7590->unk72[i];
    }
    g8DF7590->unk41++;
    sub_80018E8();
    sub_80015A4();
    LoadOam();
    if (g8DF7590->unk80 % 9 == 0 && g8DF7590->unk42)
      g8DF7590->unk42--;
    if (g8DF7590->unk80 % 8 == 0 && gBG0HOFS)
      gBG0HOFS--;
    if (g8DF7590->unk4 == 7)
      break;
    LoadBgOffsets();
    gBLDALPHA = r7 << 8 | r6;
    LoadBlendingRegs();
    sub_80082E8();
    g8DF7590->unk80++;
    SetVBlankCallback(LoadAffineRegs);
    WaitForVBlank();
  }
}

static void sub_8000CC8 (void) {
  u8 i;
  g8DF7590->unk4 = 0;
  g8DF7590->unk0 = 0;
  g8DF7590->unk80 = 0;
  g8DF7590->unkA = 0;
  g8DF7590->unkB = 0;
  g8DF7590->unk42 = 64;
  g8DF7590->unk3F = 0;
  g8DF7590->unk40 = 0;
  g8DF7590->unk44 = 0xFF4C;
  g8DF7590->unk46 = 0;
  g8DF7590->unk41 = 0;
  g8DF7590->unk82 = 128;
  g8DF7590->unk84 = 128;
  for (i = 0; i < 14; i++) {
    g8DF7590->unk48[i] = RandRangeU8(0, 240);
    g8DF7590->unk56[i] = RandRangeU8(0, 160);
    g8DF7590->unk64[i] = RandRangeU8(1, 4);
    g8DF7590->unk72[i] = RandRangeU8(1, 4);
  }
}

static void sub_8000D74 (void) {
  u8 i;
  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();
  sub_8000CC8();
  for (i = 0; i < ARRAY_COUNT(g2020C00); i++)
    g2020C00[i] = sin_cos_table[i] / 4;
  LZ77UnCompWram(gUnk_8A47010, gBgVram.cbb0);
  LZ77UnCompWram(gUnk_8A481C8, gBgVram.cbb0 + 0x4000);
  LZ77UnCompWram(gUnk_8A45DE4, gBgVram.cbb0 + 0x8000);
  for (i = 0; i < 20; i++)
    DmaCopy16(3, gUnk_8A45880[i], &gBgVram.cbb0[0x3800 + i * 32], 30);
  for (i = 0; i < 13; i++)
    DmaCopy16(3, gUnk_8A45AD8[i], &gBgVram.cbb0[0x7800 + (i + 2) * 32], 30);
  for (i = 0; i < 13; i++)
    DmaCopy16(3, gUnk_8A44F5C[i], &gBgVram.cbb0[0xE000 + (i + 2) * 64], 64);
  for (i = 0; i < 13; i++)
    DmaCopy16(3, gUnk_8A44F9C[i], &gBgVram.cbb0[0xE800 + (i + 2) * 64], 26);
  for (i = 0; i < 13; i++)
    DmaCopy16(3, gUnk_8A453EE[i], &gBgVram.cbb0[0xF000 + (i + 2) * 64], 64);
  for (i = 0; i < 13; i++)
    DmaCopy16(3, gUnk_8A4542E[i], &gBgVram.cbb0[0xF800 + (i + 2) * 64], 26);
  for (i = 0; i < 2; i++)
    DmaCopy16(3, gUnk_8063FC0[i], &gBgVram.cbb0[0xF000 + (i + 17) * 64], 60);
  CpuCopy16(gUnk_8A4A430, gPaletteBuffer, 96);
  CpuCopy16(gUnk_8064038, gPaletteBuffer + 0xF0, 32);
  sub_8001788();
  SetVBlankCallback(sub_80019C4);
  sub_8001068();
  LoadOam();
  LoadVRAM();
  LoadPalettes();
  LoadAffineRegs();
  WaitForVBlank();
}

//unused?
static void sub_8000FB0 (void) {
  u8 i = 0;
  REG_IE |= 2;
  REG_DISPSTAT |= 0x10;
  while (1) {
    u8 vcount = *(vu8 *)REG_ADDR_VCOUNT;
    u32 temp = vcount + g8DF7590->unk80 * 2;
    REG_BG1HOFS = sin_cos_table[temp % 256] * (8 - i / 25) / 256;
    sub_8008288();
    if (vcount == 200)
      break;
    i++;
  }
  REG_IE &= 0xFFFD;
  REG_DISPSTAT &= 0xFFEF;
}

static void sub_8001068 (void) {
  u8 i;
  sub_803EEFC(0, gUnk_8A4A490, 0x100);
  sub_803EEFC(2, gUnk_8A4E490, 0x100);
  sub_803EEFC(3, gUnk_8A50490, 0x100);
  CpuCopy16(gUnk_8A52490, gPaletteBuffer + 256, 96);
  for (i = 0; i < 16; i++) {
    // this goes into obj pal, make g02000000 a unified array
    // for both palettes
    g8DF7590->unkE[i] = gPaletteBuffer[272 + i] & 0x1F;
    g8DF7590->unk1E[i] = (gPaletteBuffer[272 + i] & (0x1F << 5)) >> 5;
    g8DF7590->unk2E[i] = (gPaletteBuffer[272 + i] & (0x1F << 10)) >> 10;
  }
}

static void sub_8001110 (void) {
  u8 i;
  if (g8DF7590->unk3E > 191)
    g8DF7590->unk3E = 0;
  else if (g8DF7590->unk3E > 128)
    g8DF7590->unk3E = 128;
  for (i = 0; i < 16; i++) {
    // macro?
    gPaletteBuffer[272 + i] =
      g8DF7590->unkE[i] - g8DF7590->unkE[i] * g8DF7590->unk3E / 128
    | g8DF7590->unk1E[i] - g8DF7590->unk1E[i] * g8DF7590->unk3E / 128 << 5
    | g8DF7590->unk2E[i] - g8DF7590->unk2E[i] * g8DF7590->unk3E / 128 << 10;
  }
}

static void sub_80011B4 (void) {
  u8 i;
  if (g8DF7590->unk3F > 191)
    g8DF7590->unk3F = 0;
  else if (g8DF7590->unk3F > 128)
    g8DF7590->unk3F = 128;
  for (i = 0; i < 48; i++) {
    // macro?
    int temp = gPaletteBuffer[i] & 0x1F;
    int temp2 = (gPaletteBuffer[i] & (0x1F << 5)) >> 5;
    int temp3 = (gPaletteBuffer[i] & (0x1F << 10)) >> 10;
    gPaletteBuffer[i] =
      temp - temp * g8DF7590->unk3F / 128
    | (temp2 - temp2 * g8DF7590->unk3F / 128) << 5
    | (temp3 - temp3 * g8DF7590->unk3F / 128) << 10;
  }
  for (i = 0; i < 16; i++) {
    // macro?
    int temp = gPaletteBuffer[256 + i] & 0x1F;
    int temp2 = (gPaletteBuffer[256 + i] & (0x1F << 5)) >> 5;
    int temp3 = (gPaletteBuffer[256 + i] & (0x1F << 10)) >> 10;
    gPaletteBuffer[256 + i] =
      temp - temp * g8DF7590->unk3F / 128
    | (temp2 - temp2 * g8DF7590->unk3F / 128) << 5
    | (temp3 - temp3 * g8DF7590->unk3F / 128) << 10;
  }
}

static void sub_80012B4 (void) {
  u8 i;
  if (g8DF7590->unk40 > 191)
    g8DF7590->unk40 = 0;
  else if (g8DF7590->unk40 > 128)
    g8DF7590->unk40 = 128;
  for (i = 0; i < 16; i++) {
    // macro?
    u16 temp = gPaletteBuffer[288 + i] & 0x1F;
    u16 temp2 = (gPaletteBuffer[288 + i] & (0x1F << 5)) >> 5;
    u16 temp3 = (gPaletteBuffer[288 + i] & (0x1F << 10)) >> 10;
    gPaletteBuffer[288 + i] =
      temp - temp * g8DF7590->unk40 / 128
    | (temp2 - temp2 * g8DF7590->unk40 / 128) << 5
    | (temp3 - temp3 * g8DF7590->unk40 / 128) << 10;
  }
}

static void sub_8001360 (void) {
  if (g8DF7590->unk80 % 2 == 0 && g8DF7590->unk44 < 0xFFF0)
    g8DF7590->unk44++;
  if (g8DF7590->unk44 > 0xFFE8) {
    if (g8DF7590->unk82 < 256) {
      g8DF7590->unk82 += g8DF7590->unk46;
      g8DF7590->unk84 += g8DF7590->unk46;
      g8DF7590->unk46++;
    }
    else {
      g8DF7590->unk82 = 256;
      g8DF7590->unk84 = 256;
    }
  }
  sub_8001788();
}

static void sub_80013E0 (void) {
  switch (g8DF7590->unk0) {
    case 0:
      sub_8001458(0);
      g8DF7590->unk8 = 0;
      g8DF7590->unk0++;
      break;
    case 2:
      sub_8001458(1);
      g8DF7590->unk8 = 0;
      g8DF7590->unk0++;
      break;
    case 1:
    case 3:
      g8DF7590->unk8++;
      if (g8DF7590->unk8 % 4 == 0)
        g8DF7590->unk0++;
      break;
    case 4:
      sub_8001458(2);
      g8DF7590->unk8 = 0;
      g8DF7590->unk0++;
      break;
    case 5:
      break;
  }
}

static void sub_8001458 (unsigned char arg0) {
  u8 i;
  switch (arg0) {
    case 0:
    case 2:
      REG_BG2CNT = 0x4781;
      LZ77UnCompWram(gUnk_8A481C8, gBgVram.cbb0 + 0x4000);
      for (i = 0; i < 13; i++)
        DmaCopy16(3, gUnk_8A45AD8[i], &gBgVram.cbb0[0x7800 + (i + 2) * 32], 30);
      LoadCharblock1();
      break;
    case 1:
      REG_BG2CNT = 0x4F85;
      LZ77UnCompWram(gUnk_8A492D8, gBgVram.cbb0);
      for (i = 0; i < 13; i++)
        DmaCopy16(3, gUnk_8A45C5E[i], &gBgVram.cbb0[0x3800 + (i + 2) * 32], 30);
      LoadCharblock0();
      break;
    case 3:
      REG_BG2CNT = 0x4F85;
      LZ77UnCompWram(gUnk_8A47010, gBgVram.cbb0);
      for (i = 0; i < 20; i++)
        DmaCopy16(3, gUnk_8A45880[i], &gBgVram.cbb0[0x3800 + i * 32], 30);
      LoadCharblock0();
      break;
  }
}

/*
static void sub_80015A4 (void) {
  if (g8DF7590->unkA == g8FA3630[g8DF7590->unkB].unk0) {
    g8DF7590->unkA = 0;
    g8DF7590->unkB++;
  }
  else
    g8DF7590->unkA++;
  if (g8FA3630[g8DF7590->unkB].unk0 == 0)
    g8DF7590->unkB = 0;
  {
    u8 i, j;
    for (i = 0; i < 3; i++) {
      for (j = 0; j < 4; j++) {
        *(u16*)((u8*)gOamBuffer + j * 8 + i * 32) =
          g8FA3630[g8DF7590->unkB].unk4[i].unk0 & 0xFF00
        | g8FA3630[g8DF7590->unkB].unk4[i].unk0 + 80 & 0xFF;
        *(u16*)((u8*)gOamBuffer + 2 + j * 8 + i * 32) =
          g8FA3630[g8DF7590->unkB].unk4[i].unk2 & 0xFE00
        | g8FA3630[g8DF7590->unkB].unk4[i].unk2 + j * 64 & 0x1FF;
        *(u16*)((u8*)gOamBuffer + 4 + j * 8 + i * 32) =
          g8FA3630[g8DF7590->unkB].unk4[i].unk4 | 0x800;
      }
    }
    for (j = 0; j < 39; j++) {

    }
  }
}*/

NAKED
static void sub_80015A4 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #8\n\
	ldr r3, _080015D8\n\
	ldr r5, [r3]\n\
	ldr r2, _080015DC\n\
	ldrb r0, [r5, #0xb]\n\
	ldr r1, [r2]\n\
	lsls r0, r0, #3\n\
	adds r0, r0, r1\n\
	ldrb r1, [r5, #0xa]\n\
	ldrb r0, [r0]\n\
	cmp r1, r0\n\
	bne _080015E0\n\
	movs r0, #0\n\
	strb r0, [r5, #0xa]\n\
	adds r0, r3, #0\n\
	ldr r1, [r0]\n\
	ldrb r0, [r1, #0xb]\n\
	adds r0, #1\n\
	strb r0, [r1, #0xb]\n\
	b _080015E4\n\
	.align 2, 0\n\
_080015D8: .4byte g8DF7590\n\
_080015DC: .4byte gUnk_8FA3630\n\
_080015E0:\n\
	adds r0, r1, #1\n\
	strb r0, [r5, #0xa]\n\
_080015E4:\n\
	ldr r1, _0800176C\n\
	ldr r3, [r1]\n\
	ldrb r0, [r3, #0xb]\n\
	ldr r1, [r2]\n\
	lsls r0, r0, #3\n\
	adds r0, r0, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _080015F8\n\
	strb r0, [r3, #0xb]\n\
_080015F8:\n\
	movs r0, #0\n\
	ldr r4, _08001770\n\
	mov sb, r4\n\
	ldr r2, [r2]\n\
	mov ip, r2\n\
_08001602:\n\
	movs r6, #0\n\
	lsls r5, r0, #5\n\
	mov sl, r5\n\
	adds r7, r0, #1\n\
	str r7, [sp]\n\
	lsls r7, r0, #3\n\
_0800160E:\n\
	lsls r3, r6, #3\n\
	add r3, sl @i * 32\n\
	mov r0, sb @gOamBuffer\n\
	adds r5, r3, r0\n\
	ldr r1, _0800176C\n\
	ldr r4, [r1]\n\
	ldrb r0, [r4, #0xb]\n\
	lsls r0, r0, #3\n\
	add r0, ip @gUnk_8FA3630\n\
	ldr r0, [r0, #4]\n\
	adds r0, r7, r0\n\
	ldrh r0, [r0]\n\
	movs r1, #0xff\n\
	lsls r1, r1, #8\n\
	ands r1, r0\n\
	adds r0, #0x50\n\
	movs r2, #0xff\n\
	ands r0, r2\n\
	orrs r1, r0\n\
	strh r1, [r5]\n\
	movs r2, #2\n\
	add r2, sb @gOamBuffer\n\
	mov r8, r2\n\
	adds r2, r3, r2\n\
	str r2, [sp, #4]\n\
	ldrb r0, [r4, #0xb]\n\
	lsls r0, r0, #3\n\
	add r0, ip @gUnk_8FA3630\n\
	ldr r0, [r0, #4]\n\
	adds r0, r7, r0\n\
	ldrh r0, [r0, #2]\n\
	movs r2, #0xfe\n\
	lsls r2, r2, #8\n\
	ands r2, r0\n\
	lsls r1, r6, #6\n\
	adds r0, r0, r1\n\
	ldr r5, _08001774\n\
	adds r1, r5, #0\n\
	ands r0, r1\n\
	orrs r2, r0\n\
	ldr r0, [sp, #4]\n\
	strh r2, [r0]\n\
	ldr r1, _08001778\n\
	adds r3, r3, r1\n\
	ldrb r0, [r4, #0xb]\n\
	lsls r0, r0, #3\n\
	add r0, ip @gUnk_8FA3630\n\
	ldr r0, [r0, #4]\n\
	adds r0, r7, r0\n\
	ldrh r0, [r0, #4]\n\
	movs r2, #0x80\n\
	lsls r2, r2, #4\n\
	adds r1, r2, #0\n\
	orrs r0, r1\n\
	strh r0, [r3]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #3\n\
	bls _0800160E\n\
	ldr r4, [sp]\n\
	lsls r0, r4, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #2\n\
	bls _08001602\n\
  \n\
	movs r6, #0\n\
	movs r5, #0x5e\n\
	add r5, r8 @gOamBuffer + 1\n\
	mov ip, r5\n\
	ldr r0, _0800177C\n\
	ldr r0, [r0]\n\
	ldr r0, [r0, #4]\n\
	mov sb, r0\n\
	movs r7, #0xff\n\
	lsls r7, r7, #8\n\
	mov sl, r7\n\
	movs r0, #0x62\n\
	add r8, r0\n\
_080016AA:\n\
	lsls r3, r6, #3\n\
	mov r1, ip\n\
	adds r5, r3, r1\n\
	mov r2, sb\n\
	adds r4, r3, r2\n\
	ldrh r1, [r4]\n\
	mov r2, sl\n\
	ands r2, r1\n\
	ldr r7, _0800176C\n\
	ldr r0, [r7]\n\
	adds r0, #0x42\n\
	ldrb r0, [r0]\n\
	adds r1, r1, r0\n\
	movs r0, #0xff\n\
	ands r1, r0\n\
	orrs r2, r1\n\
	strh r2, [r5]\n\
	mov r2, ip\n\
	adds r2, #2\n\
	adds r1, r3, r2\n\
	ldrh r0, [r4, #2]\n\
	strh r0, [r1]\n\
	add r3, r8\n\
	ldrh r0, [r4, #4]\n\
	movs r4, #0xc1\n\
	lsls r4, r4, #4\n\
	adds r1, r4, #0\n\
	orrs r0, r1\n\
	strh r0, [r3]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #0x26\n\
	bls _080016AA\n\
	movs r6, #0\n\
	ldr r5, _08001780\n\
	mov sl, r5\n\
	movs r7, #0xff\n\
	lsls r7, r7, #8\n\
	mov ip, r7\n\
	movs r0, #0xfe\n\
	lsls r0, r0, #8\n\
	mov sb, r0\n\
	movs r1, #0x9d\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r2\n\
	mov r8, r1\n\
_08001708:\n\
	lsls r4, r6, #3\n\
	ldr r2, _08001784\n\
	adds r3, r4, r2\n\
	lsls r0, r6, #2\n\
	add r0, sl\n\
	ldr r0, [r0]\n\
	ldr r5, [r0, #4]\n\
	ldrh r0, [r5]\n\
	mov r1, ip\n\
	ands r1, r0\n\
	ldr r7, _0800176C\n\
	ldr r2, [r7]\n\
	adds r0, r2, #0\n\
	adds r0, #0x56\n\
	adds r0, r0, r6\n\
	ldrb r0, [r0]\n\
	orrs r0, r1\n\
	movs r7, #0xc0\n\
	lsls r7, r7, #2\n\
	adds r1, r7, #0\n\
	orrs r0, r1\n\
	strh r0, [r3]\n\
	ldr r3, _08001784\n\
	adds r3, #2\n\
	adds r3, r4, r3\n\
	ldrh r0, [r5, #2]\n\
	mov r1, sb\n\
	ands r1, r0\n\
	adds r2, #0x48\n\
	adds r2, r2, r6\n\
	ldrb r0, [r2]\n\
	orrs r0, r1\n\
	strh r0, [r3]\n\
	add r4, r8\n\
	ldrh r0, [r5, #4]\n\
	strh r0, [r4]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #0xd\n\
	bls _08001708\n\
	add sp, #8\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800176C: .4byte g8DF7590\n\
_08001770: .4byte gOamBuffer\n\
_08001774: .4byte 0x000001FF\n\
_08001778: .4byte gOamBuffer+4\n\
_0800177C: .4byte gUnk_8FA3770\n\
_08001780: .4byte gUnk_8FA37E8\n\
_08001784: .4byte 0x02018598");
}
/*
static void sub_8001788 (void) {
  s16 r8 = g8DF7590->unk44;
  s16 sp = fix_mul(sin_cos_table[64], fix_inverse(g8DF7590->unk82));
  s16 sl = fix_mul(sin_cos_table[0], fix_inverse(g8DF7590->unk82));
  s16 sb = fix_mul(-sin_cos_table[0], fix_inverse(g8DF7590->unk84));
  s16 r0 = fix_mul(sin_cos_table[64], fix_inverse(g8DF7590->unk84));
  (r8 - 120) * sp - (sl * 80)

  REG_IME = 0;
  gBG2X_L =
}*/

NAKED
static void sub_8001788 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	ldr r6, _080018B8\n\
	ldr r1, [r6]\n\
	adds r0, r1, #0\n\
	adds r0, #0x44\n\
	ldrh r0, [r0]\n\
	mov r8, r0\n\
	ldr r4, _080018BC\n\
	adds r0, r4, #0\n\
	adds r0, #0x80\n\
	movs r2, #0\n\
	ldrsh r7, [r0, r2]\n\
	adds r1, #0x82\n\
	movs r3, #0\n\
	ldrsh r0, [r1, r3]\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r7, #0\n\
	bl fix_mul\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	str r0, [sp]\n\
	movs r0, #0\n\
	ldrsh r5, [r4, r0]\n\
	ldr r0, [r6]\n\
	adds r0, #0x82\n\
	movs r1, #0\n\
	ldrsh r0, [r0, r1]\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r5, #0\n\
	bl fix_mul\n\
	mov sl, r0\n\
	mov r2, sl\n\
	lsls r2, r2, #0x10\n\
	lsrs r2, r2, #0x10\n\
	mov sl, r2\n\
	ldrh r4, [r4]\n\
	rsbs r4, r4, #0\n\
	lsls r4, r4, #0x10\n\
	asrs r4, r4, #0x10\n\
	ldr r0, [r6]\n\
	adds r0, #0x84\n\
	movs r3, #0\n\
	ldrsh r0, [r0, r3]\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl fix_mul\n\
	mov sb, r0\n\
	mov r4, sb\n\
	lsls r4, r4, #0x10\n\
	lsrs r4, r4, #0x10\n\
	mov sb, r4\n\
	ldr r0, [r6]\n\
	adds r0, #0x84\n\
	movs r1, #0\n\
	ldrsh r0, [r0, r1]\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r7, #0\n\
	bl fix_mul\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
\n\
\n\
  mov r2, r8\n\
	lsls r2, r2, #0x10\n\
	asrs r2, r2, #0x10\n\
	mov r8, r2\n\
	movs r3, #0x78\n\
	rsbs r3, r3, #0\n\
	add r8, r3\n\
	ldr r4, [sp]\n\
	mov r3, r8\n\
	muls r3, r4, r3\n\
	movs r1, #0\n\
	movs r2, #0x50\n\
	subs r4, r1, r2\n\
	mov r1, sl\n\
	muls r1, r4, r1\n\
	adds r3, r3, r1\n\
	movs r1, #0xf0\n\
	lsls r1, r1, #7\n\
	adds r3, r3, r1\n\
	asrs r5, r3, #0x10\n\
	ldr r2, _080018C0\n\
	adds r6, r2, #0\n\
	ands r5, r6\n\
	mov r1, r8\n\
	mov r2, sb\n\
	muls r2, r1, r2\n\
	adds r1, r0, #0\n\
	muls r1, r4, r1\n\
	adds r2, r2, r1\n\
	movs r4, #0x50\n\
	lsls r1, r4, #8\n\
	adds r2, r2, r1\n\
	asrs r4, r2, #0x10\n\
	ands r4, r6\n\
	ldr r6, _080018C4\n\
	movs r1, #0\n\
	strh r1, [r6]\n\
	ldr r1, _080018C8\n\
	strh r3, [r1]\n\
	ldr r1, _080018CC\n\
	strh r5, [r1]\n\
	ldr r1, _080018D0\n\
	strh r2, [r1]\n\
	ldr r1, _080018D4\n\
	strh r4, [r1]\n\
	ldr r1, _080018D8\n\
	mov r2, sp\n\
	ldrh r2, [r2]\n\
	strh r2, [r1]\n\
	ldr r1, _080018DC\n\
	mov r3, sl\n\
	strh r3, [r1]\n\
	ldr r1, _080018E0\n\
	mov r4, sb\n\
	strh r4, [r1]\n\
	ldr r1, _080018E4\n\
	strh r0, [r1]\n\
	movs r0, #1\n\
	strh r0, [r6]\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080018B8: .4byte g8DF7590\n\
_080018BC: .4byte sin_cos_table\n\
_080018C0: .4byte 0x00000FFF\n\
_080018C4: .4byte 0x04000208\n\
_080018C8: .4byte gBG2X_L\n\
_080018CC: .4byte gBG2X_H\n\
_080018D0: .4byte gBG2Y_L\n\
_080018D4: .4byte gBG2Y_H\n\
_080018D8: .4byte gBG2PA\n\
_080018DC: .4byte gBG2PB\n\
_080018E0: .4byte gBG2PC\n\
_080018E4: .4byte gBG2PD");
}

NAKED
static void sub_80018E8 (void) {
  asm_unified("push {r4, r5, r6, lr}\n\
	mov r6, sl\n\
	mov r5, sb\n\
	mov r4, r8\n\
	push {r4, r5, r6}\n\
	ldr r0, _080019B8\n\
	mov sl, r0\n\
	ldr r5, _080019BC\n\
	ldr r0, [r5]\n\
	adds r0, #0x41\n\
	ldrb r0, [r0]\n\
	adds r0, #0x40\n\
	lsls r0, r0, #1\n\
	add r0, sl\n\
	movs r1, #0\n\
	ldrsh r4, [r0, r1]\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	mov sb, r2\n\
	mov r0, sb\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl fix_mul\n\
	mov r8, r0\n\
	mov r0, r8\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r8, r0\n\
	ldr r0, [r5]\n\
	adds r0, #0x41\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #1\n\
	add r0, sl\n\
	movs r1, #0\n\
	ldrsh r4, [r0, r1]\n\
	mov r0, sb\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl fix_mul\n\
	adds r6, r0, #0\n\
	lsls r6, r6, #0x10\n\
	lsrs r6, r6, #0x10\n\
	ldr r0, [r5]\n\
	adds r0, #0x41\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #1\n\
	add r0, sl\n\
	ldrh r4, [r0]\n\
	rsbs r4, r4, #0\n\
	lsls r4, r4, #0x10\n\
	asrs r4, r4, #0x10\n\
	mov r0, sb\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl fix_mul\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x10\n\
	lsrs r4, r4, #0x10\n\
	ldr r0, [r5]\n\
	adds r0, #0x41\n\
	ldrb r0, [r0]\n\
	adds r0, #0x40\n\
	lsls r0, r0, #1\n\
	add r0, sl\n\
	movs r2, #0\n\
	ldrsh r5, [r0, r2]\n\
	mov r0, sb\n\
	bl fix_inverse\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r5, #0\n\
	bl fix_mul\n\
	ldr r1, _080019C0\n\
	mov r2, r8\n\
	strh r2, [r1]\n\
	strh r6, [r1, #8]\n\
	strh r4, [r1, #0x10]\n\
	strh r0, [r1, #0x18]\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080019B8: .4byte sin_cos_table\n\
_080019BC: .4byte g8DF7590\n\
_080019C0: .4byte gOamBuffer+6");
}

static void sub_80019C4 (void) {
  u16 i;
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  REG_BG0CNT = 0x5C0A;
  REG_BG1CNT = 0x5E0B;
  REG_BG2CNT = 0x4781;
  REG_IME = 1;
  REG_IE = 1;
  REG_DISPSTAT = 8;
  REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
  REG_WIN0H = 0xF0;
  REG_WIN0V = 0x1078;
  *((vu8*)REG_ADDR_WININ) = 0x3F;
  *((vu8*)REG_ADDR_WINOUT) = 2;
  gBG0HOFS = 0x78;
  gBG0VOFS = 0;
  gBG1HOFS = 0;
  gBG1VOFS = 0;
  LoadBgOffsets();
  gBLDCNT = 0x3F50;
  gBLDALPHA = 0x1010;
  LoadBlendingRegs();
}

static void sub_8001AD8 (void) {
  sub_8002E98();
  g8DF7594->unk0 = 0;
  while (1) {
    sub_80043D0();
    switch (g8DF7594->unk0) {
      case 0:
        g8DF7594->unk0 = 1;
        break;
      case 1:
        sub_8001E8C();
        break;
      case 2:
        sub_80020D8();
        break;
      case 3:
        sub_80029D4();
        break;
      case 4:
        sub_80027F0();
        break;
      case 5:
        g8DF7594->unk1FE = 1;
        break;
      default:
        g8DF7594->unk0 = 0;
        break;
    }
    if (g8DF7594->unk1FE == 1)
      break;
    g8DF7594->unk1FC++;
    WaitForVBlank();
  }
}

static void sub_8001B88 (void) {
  sub_8002E98();
  g8DF7594->unk0 = 0;
  while (1) {
    sub_80043D0();
    switch (g8DF7594->unk0) {
      case 0:
        g8DF7594->unk0 = 1;
        break;
      case 1:
        sub_8001E8C();
        break;
      case 2:
        g8DF7594->unk0 = 5;
        break;
      case 5:
        g8DF7594->unk1FE = 1;
        break;
      default:
        g8DF7594->unk0 = 0;
        break;
    }
    if (g8DF7594->unk1FE == 1)
      break;
    g8DF7594->unk1FC++;
    WaitForVBlank();
  }
}

static void sub_8001BFC (void) {
  sub_8002E98();
  g8DF7594->unk0 = 0;
  while (1) {
    sub_80043D0();
    switch (g8DF7594->unk0) {
      case 0:
        g8DF7594->unk0 = 1;
        break;
      case 1:
        sub_80020D8();
        break;
      case 2:
        g8DF7594->unk0 = 5;
        break;
      case 5:
        g8DF7594->unk1FE = 1;
        break;
      default:
        g8DF7594->unk0 = 0;
        break;
    }
    if (g8DF7594->unk1FE == 1)
      break;
    g8DF7594->unk1FC++;
    WaitForVBlank();
  }
}

static void sub_8001C70 (void) {
  sub_8002E98();
  g8DF7594->unk0 = 0;
  while (1) {
    sub_80043D0();
    switch (g8DF7594->unk0) {
      case 0:
        g8DF7594->unk0 = 1;
        break;
      case 1:
        sub_80027F0();
        break;
      case 2:
        g8DF7594->unk0 = 5;
        break;
      case 5:
        g8DF7594->unk1FE = 1;
        break;
      default:
        g8DF7594->unk0 = 0;
        break;
    }
    if (g8DF7594->unk1FE == 1)
      break;
    g8DF7594->unk1FC++;
    WaitForVBlank();
  }
}

static void sub_8001CE4 (void) {
  sub_8002E98();
  g8DF7594->unk0 = 0;
  while (1) {
    sub_80043D0();
    switch (g8DF7594->unk0) {
      case 0:
        g8DF7594->unk0 = 1;
        break;
      case 1:
        sub_80029D4();
        break;
      case 2:
        g8DF7594->unk0 = 5;
        break;
      case 5:
        g8DF7594->unk1FE = 1;
        break;
      default:
        g8DF7594->unk0 = 0;
        break;
    }
    if (g8DF7594->unk1FE == 1)
      break;
    g8DF7594->unk1FC++;
    WaitForVBlank();
  }
}

static void sub_8001D58 (void) {
  PlayMusic(MUSIC_NONE);
  sub_8002E98();
  g8DF7594->unk0 = 0;
  while (1) {
    sub_80043D0();
    switch (g8DF7594->unk0) {
      case 0:
        g8DF7594->unk0 = 1;
        break;
      case 1:
        sub_8002D10();
        break;
      case 2:
        g8DF7594->unk0 = 5;
        break;
      case 5:
        g8DF7594->unk1FE = 1;
        break;
      default:
        g8DF7594->unk0 = 0;
        break;
    }
    if (g8DF7594->unk1FE == 1)
      break;
    g8DF7594->unk1FC++;
    WaitForVBlank();
  }
}

static void sub_8001DD4 (void) {
  sub_8002E98();
  g8DF7594->unk0 = 0;
  while (1) {
    sub_80043D0();
    switch (g8DF7594->unk0) {
      case 0:
        g8DF7594->unk0 = 1;
        break;
      case 1:
        sub_8001E8C();
        break;
      case 2:
        sub_80020D8();
        break;
      case 3:
        sub_80029D4();
        break;
      case 4:
        g8DF7594->unk0 = 5;
        break;
      case 5:
        g8DF7594->unk1FE = 1;
        break;
      default:
        g8DF7594->unk0 = 0;
        break;
    }
    if (g8DF7594->unk1FE == 1)
      break;
    g8DF7594->unk1FC++;
    WaitForVBlank();
  }
}

static void sub_8001E8C (void) {
  int r7 = 2;
  int r6 = 1;
  int r8 = 1;

  switch (g8DF7594->unk8) {
    case 0:
      PlayMusic(SFX_NEW_GAME_INTRO_CUTSCENE_1);
      sub_8002E98();
      g8DF7594->unk156 = 128;
      g8DF7594->unk158 = 0;
      sub_8003B78();
      sub_8004D7C();
      sub_80045D4();
      LoadOam();
      LoadPalettes();
      LoadVRAM();
      g8DF7594->unkA = 0;
      g8DF7594->unk8++;
      break;
    case 1:
      g8DF7594->unkA++;
      gBLDALPHA = g8DF7594->unkA / r7;
      LoadBlendingRegs();
      if (g8DF7594->unkA / r7 >= 16) {
        g8DF7594->unk8++;
        gBLDCNT = 0x3F54;
        gBLDALPHA = 0x1000;
        LoadBlendingRegs();
        REG_DISPCNT = DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_WIN0_ON;
      }
      break;
    case 2:
      if (++g8DF7594->unkA >= 60) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 3:
      g8DF7594->unkA++;
      gBLDALPHA = g8DF7594->unkA / r6 | 0x1000;
      LoadBlendingRegs();
      if (g8DF7594->unkA / r6 >= 16)
        g8DF7594->unk8++;
      break;
    case 4:
      if (++g8DF7594->unkA >= 30) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 5:
      g8DF7594->unkA++;
      gBLDALPHA = (16 - g8DF7594->unkA / r8) << 8 | 0x10;
      LoadBlendingRegs();
      if (g8DF7594->unkA / r8 >= 16) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
        REG_DISPCNT = DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
        gBLDALPHA = 0x1010;
        LoadBlendingRegs();
      }
      break;
    case 6:
      g8DF7594->unk156 -= 4;
      sub_80045D4();
      LoadPalettes();
      if (!g8DF7594->unk156) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 7:
      if (g8DF7594->unkA > 10) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      g8DF7594->unkA++;
      break;
    case 8:
      g8DF7594->unk158 += 2;
      sub_8004730();
      LoadPalettes();
      if (g8DF7594->unk158 >= 128) {
        g8DF7594->unk0++;
        g8DF7594->unk8 = 0;
        g8DF7594->unkA = 0;
      }
      break;
  }
  sub_800373C();
}

static void sub_80020D8 (void) {
  u8 i;
  u16 temp;
  switch (g8DF7594->unk8) {
    case 0:
      PlayMusic(MUSIC_355);
      sub_8003020();
      g8DF7594->unkA = 0;
      g8DF7594->unk8++;
      break;
    case 1:
      g8DF7594->unkA++;
      gBLDY = 16 - g8DF7594->unkA / 2;
      LoadBlendingRegs();
      gBG3VOFS -= 20;
      LoadBgOffsets();
      sub_8003D10();
      LoadOam();
      if (g8DF7594->unkA / 2 >= 16) {
        REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
        gBLDCNT = 0x3F40;
        gBLDALPHA = 0x808;
        LoadBlendingRegs();
        for (i = 0; i < 3; i++)
          g8DF7594->unkC[i] = 1;
        g8DF7594->unkA = 0;
        g8DF7594->unk8++;
      }
      break;
    case 2:
      if (g8DF7594->unk18A > 48) {
        gBG1VOFS += 4;
        g8DF7594->unk18A -= 4;
        g8DF7594->unk18B -= 4;
      }
      else if (g8DF7594->unk18A > 24) {
        gBG1VOFS += 2;
        g8DF7594->unk18A -= 2;
        g8DF7594->unk18B -= 2;
        gBG2VOFS += 4;
        g8DF7594->unk18C -= 4;
      }
      else if (g8DF7594->unk18A > 12) {
        gBG1VOFS++;
        g8DF7594->unk18A--;
        g8DF7594->unk18B--;
        gBG2VOFS += 2;
        g8DF7594->unk18C -= 2;
      }
      else if (g8DF7594->unk18A > 6) {
        if (g8DF7594->unkA % 2 == 0) {
          gBG1VOFS++;
          g8DF7594->unk18A--;
          g8DF7594->unk18B--;
        }
        gBG2VOFS++;
        g8DF7594->unk18C--;
      }
      else if (g8DF7594->unk18A) {
        if (g8DF7594->unkA % 4 == 0) {
          gBG1VOFS++;
          g8DF7594->unk18A--;
          g8DF7594->unk18B--;
        }
        if (g8DF7594->unkA % 2 == 0) {
          gBG2VOFS++;
          g8DF7594->unk18C--;
        }
      }
      else if (g8DF7594->unkA % 4 == 0) {
        gBG2VOFS++;
        g8DF7594->unk18C--;
      }
      //_0800232E

      gBG3VOFS += g8DF7594->unkA / 30 - 20;
      LoadBgOffsets();
      sub_8003D10();
      LoadOam();
      g8DF7594->unkA++;
      if (!g8DF7594->unk18C) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 3:
      if (++g8DF7594->unkA <= 16) {
        gBLDCNT = 0x3FC8;
        gBLDY = g8DF7594->unkA;
        LoadBlendingRegs();
      }
      else {
        REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
        gBLDCNT = 0x3FBF;
        gBLDY = 0;
        LoadBlendingRegs();
        g8DF7594->unkA = 0;
        g8DF7594->unk8++;
      }
      sub_8003D10();
      LoadOam();
      break;
    case 4:
      if (g8DF7594->unkA <= 16) {
        gBLDCNT = 0x3FBF;
        gBLDY = g8DF7594->unkA;
        LoadBlendingRegs();
        g8DF7594->unkA++;
      }
      else if (g8DF7594->unkA == 17) {
        for (i = 0; i < 96; i++) {
          //rgb macro?
          gPaletteBuffer[48 + i] = ((g8DF7594->unk36[i] * 77 +
                                g8DF7594->unk96[i] * 151 +
                                g8DF7594->unkF6[i] * 28) / 256) |
                              ((g8DF7594->unk36[i] * 77 +
                                g8DF7594->unk96[i] * 151 +
                                g8DF7594->unkF6[i] * 28) / 256) << 5 |
                              ((g8DF7594->unk36[i] * 77 +
                                g8DF7594->unk96[i] * 151 +
                                g8DF7594->unkF6[i] * 28) / 256) << 10;

        }
        g8DF7594->unk1E6[0] = 1;
        g8DF7594->unk1E6[1] = 1;
        g8DF7594->unk1E6[2] = 1;
        LoadPalettes();
        g8DF7594->unkA++;
      }
      else if (g8DF7594->unkA <= 34) {
        gBLDCNT = 0x3FBF;
        gBLDY = 34 - g8DF7594->unkA;
        LoadBlendingRegs();
        g8DF7594->unkA++;
      }
      else {
        g8DF7594->unkA = 0;
        g8DF7594->unk8++;
        gBLDCNT = 0x3F40;
        gBLDY = 16;
        LoadBlendingRegs();
        REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
      }
      sub_8003D10();
      sub_80043D0();
      LoadOam();
      break;
    case 5:
      g8DF7594->unkA++;
      g8DF7594->unk1EA[0] += 4;
      g8DF7594->unk1F2[0] += 4;
      g8DF7594->unk1EA[1] += 4;
      g8DF7594->unk1F2[1] += 4;
      g8DF7594->unk1EA[2] += 4;
      g8DF7594->unk1F2[2] += 4;
      g8DF7594->unk15A[0]--;
      g8DF7594->unk15A[1]++;
      g8DF7594->unk18C--;
      if (g8DF7594->unkA / 5 <= 16) {
        gBLDCNT = 0x3F50;
        gBLDALPHA = (16 - g8DF7594->unkA / 5) | (g8DF7594->unkA / 5 << 8);
        LoadBlendingRegs();
      }
      else {
        g8DF7594->unk1E6[0] = 3;
        g8DF7594->unk1E6[1] = 3;
        g8DF7594->unk1E6[2] = 3;
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
        gBLDCNT = 0x3FC8;
        gBLDALPHA = 0x808;
        gBLDY = 16;
        LoadBlendingRegs();
        REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_WIN0_ON;
      }
      sub_8003D10();
      sub_80043D0();
      LoadOam();
      break;
    case 6:
      if (g8DF7594->unkA <= 16) {
        gBLDCNT = 0x3FC8;
        gBLDY = 16 - g8DF7594->unkA;
        LoadBlendingRegs();
      }
      gBG3VOFS += g8DF7594->unkA / 10 + 1;
      temp = gBG1VOFS - 1;
      if (temp >= 250) {
        if (g8DF7594->unkA % 4 == 0)
          gBG1VOFS--;
      }
      else if (gBG1VOFS >= 245) {
        if (g8DF7594->unkA % 2 == 0)
          gBG1VOFS--;
        if (g8DF7594->unkA % 4 == 0)
          gBG2VOFS--;
      }
      else if (gBG1VOFS > 232) {
        gBG1VOFS--;
        if (g8DF7594->unkA % 2 == 0)
          gBG2VOFS--;
      }
      else if (gBG1VOFS > 208) {
        gBG1VOFS -= 2;
        gBG2VOFS--;
      }
      else if (gBG1VOFS > 160) {
        gBG1VOFS -= 4;
        gBG2VOFS -= 2;
      }
      else {
        gBG2VOFS -= 4;
      }
      LoadBgOffsets();
      sub_8003D10();
      sub_80043D0();
      LoadOam();
      g8DF7594->unkA++;
      if (gBG2VOFS <= 160) {
        g8DF7594->unk1AA = g8DF7594->unkA;
        g8DF7594->unkA = 0;
        g8DF7594->unk8++;
      }
      break;
    case 7:
      g8DF7594->unk1AA++;
      gBG3VOFS += g8DF7594->unk1AA / 10 + 1;
      LoadBgOffsets();
      if (g8DF7594->unkA <= 16) {
        gBLDCNT = 0x3FFF;
        gBLDY = g8DF7594->unkA;
        LoadBlendingRegs();
        g8DF7594->unkA++;
      }
      else {
        g8DF7594->unk0++;
        g8DF7594->unk8 = 0;
        g8DF7594->unkA = 0;
      }
      break;
  }
  g8DF7594->unk1A6 = 24;
  g8DF7594->unk1A8 += 10;
}

static void sub_80027F0 (void) {
  int r6 = 1;
  switch (g8DF7594->unk8) {
    case 0:
      PlayMusic(MUSIC_357);
      sub_8003268();
      g8DF7594->unk156 = 128;
      g8DF7594->unk157 = 128;
      g8DF7594->unk158 = 0;
      sub_8003C10();
      sub_8004DE0();
      sub_80045D4();
      sub_8004678();
      LoadOam();
      LoadPalettes();
      LoadVRAM();
      g8DF7594->unk8++;
      g8DF7594->unkA = 0;
      break;
    case 1:
      g8DF7594->unkA++;
      gBLDALPHA = g8DF7594->unkA / r6 | 0x1000;
      LoadBlendingRegs();
      if (g8DF7594->unkA / r6 >= 16) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 2:
      if (++g8DF7594->unkA >= 30) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
        REG_DISPCNT = DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
      }
      break;
    case 3:
      g8DF7594->unk156 -= 4;
      sub_80045D4();
      LoadPalettes();
      if (!g8DF7594->unk156) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 4:
      g8DF7594->unk156 += 4;
      sub_80045D4();
      LoadPalettes();
      if (g8DF7594->unk156 >= 128) {
        REG_DISPCNT = DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_WIN0_ON;
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 5:
      g8DF7594->unk157--;
      sub_8004678();
      LoadPalettes();
      if (!g8DF7594->unk157) {
        sub_8035038(8);
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 6:
      g8DF7594->unk158 += 2;
      sub_8004730();
      LoadPalettes();
      if (g8DF7594->unk158 >= 128) {
        g8DF7594->unk0++;
        g8DF7594->unk8 = 0;
        g8DF7594->unkA = 0;
      }
      break;
  }
  sub_80037B4();
}

static void sub_80029D4 (void) {
  switch (g8DF7594->unk8) {
    case 0:
      PlayMusic(SFX_NEW_GAME_INTRO_CUTSCENE_2);
      sub_8003444();
      g8DF7594->unk8++;
      g8DF7594->unkA = 0;
      break;
    case 1:
      g8DF7594->unkA++;
      gBLDCNT = 0x3FD8;
      gBLDY = 16 - g8DF7594->unkA;
      LoadBlendingRegs();
      if (g8DF7594->unk18A > 48) {
        g8DF7594->unk18A -= 3;
        gBG3VOFS += 3;
      }
      else if (g8DF7594->unk18A > 24) {
        g8DF7594->unk18A -= 2;
        gBG3VOFS += 2;
      }
      else if (g8DF7594->unk18A > 12) {
        g8DF7594->unk18A--;
        gBG3VOFS++;
      }
      else if (g8DF7594->unk18A > 6) {
        if (g8DF7594->unkA % 2 == 0) {
          g8DF7594->unk18A--;
          gBG3VOFS++;
        }
      }
      else if (g8DF7594->unk18A > 3) {
        if (g8DF7594->unkA % 4 == 0) {
          g8DF7594->unk18A--;
          gBG3VOFS++;
        }
      }
      else if (g8DF7594->unkA % 8 == 0) {
        g8DF7594->unk18A--;
        gBG3VOFS++;
      }
      sub_8004E54();
      LoadOam();
      LoadBgOffsets();
      if (g8DF7594->unkA == 16) {
        g8DF7594->unk8++;
        gBLDCNT = 0x3F50;
        gBLDALPHA = 0x1010;
        LoadBlendingRegs();
      }
      break;
    case 2:
      g8DF7594->unkA++;
      if (g8DF7594->unk18A > 48) {
        g8DF7594->unk18A -= 3;
        gBG3VOFS += 3;
      }
      else if (g8DF7594->unk18A > 24) {
        g8DF7594->unk18A -= 2;
        gBG3VOFS += 2;
      }
      else if (g8DF7594->unk18A > 12) {
        g8DF7594->unk18A--;
        gBG3VOFS++;
      }
      else if (g8DF7594->unk18A > 6) {
        if (g8DF7594->unkA % 2 == 0) {
          g8DF7594->unk18A--;
          gBG3VOFS++;
        }
      }
      else if (g8DF7594->unk18A > 3) {
        if (g8DF7594->unkA % 4 == 0) {
          g8DF7594->unk18A--;
          gBG3VOFS++;
        }
      }
      else if (g8DF7594->unkA % 8 == 0) {
        g8DF7594->unk18A--;
        gBG3VOFS++;
      }
      sub_8004E54();
      LoadOam();
      LoadBgOffsets();
      if (!g8DF7594->unk18A) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
        gBLDCNT = 0x3FBF;
        gBLDY = 16;
        LoadBlendingRegs();
      }
      break;
    case 3:
      g8DF7594->unkA++;
      sub_8003820();
      gBLDCNT = 0x3FBF;
      gBLDY = 16 - g8DF7594->unkA * 2;
      LoadBlendingRegs();
      if (g8DF7594->unkA >= 8) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
        sub_8004318();
        LoadOam();
      }
      break;
    case 4:
      g8DF7594->unkA++;
      sub_8003820();
      sub_8004894();
      LoadPalettes();
      if (g8DF7594->unkA >= 10) {
        g8DF7594->unk8++;
        sub_8004318();
        LoadOam();
      }
      break;
    case 5:
      g8DF7594->unkA++;
      sub_8004894();
      LoadPalettes();
      if (g8DF7594->unkA >= 32) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
        gBLDCNT = 0x3FFF;
        gBLDY = 0;
        LoadBlendingRegs();
        sub_8004260();
        LoadOam();
      }
      break;
    case 6:
      if (g8DF7594->unkA >= 30) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      g8DF7594->unkA++;
      break;
    case 7:
      g8DF7594->unkA++;
      gBLDCNT = 0x3FFF;
      gBLDY = g8DF7594->unkA / 4;
      LoadBlendingRegs();
      if (g8DF7594->unkA >= 64) {
        g8DF7594->unk0++;
        g8DF7594->unk8 = 0;
        g8DF7594->unkA = 0;
      }
      break;
  }
}

static void sub_8002D10 (void) {
  int r6 = 1;
  switch (g8DF7594->unk8) {
    case 0:
      sub_8003560();
      g8DF7594->unk156 = 128;
      g8DF7594->unk157 = 128;
      g8DF7594->unk158 = 0;
      sub_8003C10();
      sub_8004DE0();
      sub_80045D4();
      sub_8004678();
      LoadOam();
      LoadPalettes();
      LoadVRAM();
      g8DF7594->unk8++;
      g8DF7594->unkA = 0;
      break;
    case 1:
      g8DF7594->unkA++;
      gBLDALPHA = g8DF7594->unkA / r6 | 0x1000;
      LoadBlendingRegs();
      if (g8DF7594->unkA / r6 >= 16) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 2:
      if (++g8DF7594->unkA >= 30) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
        REG_DISPCNT = DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
      }
      break;
    case 3:
      g8DF7594->unk157--;
      sub_8004678();
      LoadPalettes();
      if (!g8DF7594->unk157) {
        sub_8035038(8);
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 4:
      if (++g8DF7594->unkA >= 120) {
        g8DF7594->unk8++;
        g8DF7594->unkA = 0;
      }
      break;
    case 5:
      g8DF7594->unk157++;
      sub_8004678();
      LoadPalettes();
      if (g8DF7594->unk157 >= 128) {
        g8DF7594->unk0++;
        g8DF7594->unk8 = 0;
        g8DF7594->unkA = 0;
      }
      break;
  }
}

static void sub_8002E98 (void) {
  u8 ii;
  u16 i;
  u32 temp;

  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();

  temp = g8DF7594->unk0;
  // macro for clearing gSharedMem?
  for (i = 0; i < 0x4314; i++)
    gSharedMem[i] = 0;
  g8DF7594->unk0 = temp;

  LZ77UnCompWram(gUnk_8A52618, gBgVram.cbb0);
  LZ77UnCompWram(gUnk_8A536F4, gBgVram.cbb0 + 0x4000);
  LZ77UnCompWram(gUnk_8A5E54C, gBgVram.cbb0 + 0x8000);
  LZ77UnCompWram(gUnk_8A5F8E8, gBgVram.cbb0 + 0xC000);

  for (ii = 0; ii < 13; ii++)
    DmaCopy16(3, gUnk_8AA6958[ii], &gBgVram.cbb0[0x3800 + (ii + 2) * 64], 60);
  for (ii = 0; ii < 13; ii++)
    DmaCopy16(3, gUnk_8AA6C64[ii], &gBgVram.cbb0[0x7800 + (ii + 2) * 64], 60);
  for (ii = 0; ii < 13; ii++)
    DmaCopy16(3, gUnk_8AA8DE8[ii], &gBgVram.cbb0[0xB800 + (ii + 2) * 64], 60);
  for (ii = 0; ii < 13; ii++)
    DmaCopy16(3, gUnk_8AA90F4[ii], &gBgVram.cbb0[0xF800 + (ii + 2) * 64], 60);

  SetVBlankCallback(sub_80048F8);
  LoadVRAM();
  CpuCopy16(gUnk_8AA6358, gPaletteBuffer, 512);
  LoadPalettes();
  WaitForVBlank();
}

static void sub_8003020 (void) {
  u8 ii;
  u16 i;
  u32 temp;

  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();

  temp = g8DF7594->unk0;
  // macro for clearing gSharedMem?
  for (i = 0; i < 0x4314; i++)
    gSharedMem[i] = 0;
  g8DF7594->unk0 = temp;

  g8DF7594->unk15A[0] = 0;
  g8DF7594->unk15A[1] = 0;
  g8DF7594->unk15A[2] = 0;
  g8DF7594->unk18A = 96;
  g8DF7594->unk18B = 96;
  g8DF7594->unk18C = 96;
  g8DF7594->unk1A2 = 0;
  g8DF7594->unk1A3 = 0;
  g8DF7594->unk1A4 = 0;
  g8DF7594->unk156 = 128;
  for (ii = 0; ii < 3; ii++) {
    g8DF7594->unk1EA[ii] = 256;
    g8DF7594->unk1F2[ii] = 256;
  }
  g8DF7594->unk1F0 = 256;
  g8DF7594->unk1F8 = 256;
  LZ77UnCompWram(gUnk_8A6F6F4, gBgVram.cbb0);
  LZ77UnCompWram(gUnk_8A71A60, gBgVram.cbb0 + 0x8000);

  for (ii = 0; ii < 32; ii++)
    DmaCopy16(3, gUnk_8AAB278[ii], &gBgVram.cbb0[0x6000 + ii * 64], 60);
  for (ii = 0; ii < 13; ii++)
    DmaCopy16(3, gUnk_8AAB9F8[ii], &gBgVram.cbb0[0xA000 + (ii + 2) * 64], 60);
  for (ii = 0; ii < 13; ii++)
    DmaCopy16(3, gUnk_8AABD04[ii], &gBgVram.cbb0[0xA800 + (ii + 2) * 64], 60);
  SetVBlankCallback(sub_8004A18);
  sub_8003D10();
  sub_8004D34();
  sub_80043D0();
  LoadOam();
  LoadVRAM();
  CpuCopy16(gUnk_8AA6358, gPaletteBuffer, 512);
  LoadPalettes();

  for (ii = 0; ii < 96; ii++) {
    g8DF7594->unk36[ii] = gPaletteBuffer[0x30 + ii] & 0x1F;
    g8DF7594->unk96[ii] = (gPaletteBuffer[0x30 + ii] & (0x1F << 5)) >> 5;
    g8DF7594->unkF6[ii] = (gPaletteBuffer[0x30 + ii] & (0x1F << 10)) >> 10;
  }
  WaitForVBlank();
}

static void sub_8003268 (void) {
  u8 ii;
  u16 i;
  u32 temp;

  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();

  temp = g8DF7594->unk0;
  // macro for clearing gSharedMem?
  for (i = 0; i < 0x4314; i++)
    gSharedMem[i] = 0;
  g8DF7594->unk0 = temp;

  g8DF7594->unk15A[0] = 32;
  g8DF7594->unk15A[1] = 160;
  g8DF7594->unk15A[2] = 96;
  g8DF7594->unk18A = 144;
  g8DF7594->unk18B = 144;
  g8DF7594->unk18C = 144;
  g8DF7594->unk1A2 = 48;
  g8DF7594->unk1A3 = 96;
  g8DF7594->unk1A4 = 144;
  g8DF7594->unk156 = 128;

  for (ii = 0; ii < 3; ii++) {
    g8DF7594->unk1EA[ii] = 512;
    g8DF7594->unk1F2[ii] = 256;
  }
  g8DF7594->unk1F0 = 256;
  g8DF7594->unk1F8 = 256;
  LZ77UnCompWram(gUnk_8A950D4, gBgVram.cbb0 + 0x8000);
  for (ii = 0; ii < 20; ii++)
    DmaCopy16(3, gUnk_8AADBF4[ii], &gBgVram.cbb0[0xF800 + ii * 64], 60);

  SetVBlankCallback(sub_8004B44);
  LoadVRAM();
  CpuCopy16(gUnk_8AA6358, gPaletteBuffer, 512);

  for (ii = 0; ii < 16; ii++) {
    g8DF7594->unk36[ii + 0x20] = gPaletteBuffer[0x90 + ii] & 0x1F;
    g8DF7594->unk96[ii + 0x20] = (gPaletteBuffer[0x90 + ii] & (0x1F << 5)) >> 5;
    g8DF7594->unkF6[ii + 0x20] = (gPaletteBuffer[0x90 + ii] & (0x1F << 10)) >> 10;
  }
  LoadPalettes();
  WaitForVBlank();
}

static void sub_8003444 (void) {
  u8 ii;
  u16 i;
  u32 temp;

  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();

  temp = g8DF7594->unk0;
  // macro for clearing gSharedMem?
  for (i = 0; i < 0x4314; i++)
    gSharedMem[i] = 0;
  g8DF7594->unk0 = temp;

  LZ77UnCompWram(gUnk_8A72DFC, gBgVram.cbb0);
  LZ77UnCompWram(gUnk_8A75548, gBgVram.cbb0 + 0x8000);

  for (ii = 0; ii < 15; ii++)
    DmaCopy16(3, gUnk_8AAC010[ii], &gBgVram.cbb0[0x7800 + ii * 64], 60);
  for (ii = 0; ii < 13; ii++)
    DmaCopy16(3, gUnk_8AAC394[ii], &gBgVram.cbb0[0xF800 + (ii + 2) * 64], 60);

  SetVBlankCallback(sub_8004C30);
  g8DF7594->unk18A = 96;
  sub_8003CA8();
  sub_8004E54();
  LoadOam();
  LoadVRAM();
  CpuCopy16(gUnk_8AA6558, gPaletteBuffer, 512);
  LoadPalettes();
  WaitForVBlank();
}

static void sub_8003560 (void) {
  u8 ii;
  u16 i;
  u32 temp;

  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();

  temp = g8DF7594->unk0;
  // macro for clearing gSharedMem?
  for (i = 0; i < 0x4314; i++)
    gSharedMem[i] = 0;
  g8DF7594->unk0 = temp;

  g8DF7594->unk15A[0] = 32;
  g8DF7594->unk15A[1] = 160;
  g8DF7594->unk15A[2] = 96;
  g8DF7594->unk18A = 144;
  g8DF7594->unk18B = 144;
  g8DF7594->unk18C = 144;
  g8DF7594->unk1A2 = 48;
  g8DF7594->unk1A3 = 96;
  g8DF7594->unk1A4 = 144;
  g8DF7594->unk156 = 128;

  for (ii = 0; ii < 3; ii++) {
    g8DF7594->unk1EA[ii] = 512;
    g8DF7594->unk1F2[ii] = 256;
  }
  g8DF7594->unk1F0 = 256;
  g8DF7594->unk1F8 = 256;
  LZ77UnCompWram(gUnk_8A950D4, gBgVram.cbb0 + 0x8000);
  for (ii = 0; ii < 20; ii++)
    DmaCopy16(3, gUnk_8AADBF4[ii], &gBgVram.cbb0[0xF800 + ii * 64], 60);

  SetVBlankCallback(sub_8004B44);
  LoadVRAM();
  CpuCopy16(gUnk_8AA6358, gPaletteBuffer, 512);

  for (ii = 0; ii < 16; ii++) {
    g8DF7594->unk36[ii + 0x20] = gPaletteBuffer[0xA0 + ii] & 0x1F;
    g8DF7594->unk96[ii + 0x20] = (gPaletteBuffer[0xA0 + ii] & (0x1F << 5)) >> 5;
    g8DF7594->unkF6[ii + 0x20] = (gPaletteBuffer[0xA0 + ii] & (0x1F << 10)) >> 10;
  }
  LoadPalettes();
  WaitForVBlank();
}

static void sub_800373C (void) {
  switch (g8DF7594->unk4) {
    case 0:
      g8DF7594->unk14 = 0;
      sub_8003888(g8DF7594->unk14);
      sub_8003980(g8DF7594->unk14);
      g8DF7594->unk12 = 0;
      g8DF7594->unk4++;
      break;
    case 1:
      g8DF7594->unk12++;
      g8DF7594->unk4++;
      break;
    case 2:
      if (g8DF7594->unk14 <= 10)
        g8DF7594->unk14++;
      else
        g8DF7594->unk14 = 0;
      sub_8003888(g8DF7594->unk14);
      sub_8003980(g8DF7594->unk14);
      g8DF7594->unk12 = 0;
      g8DF7594->unk4--;
      break;
  }
}

static void sub_80037B4 (void) {
  switch (g8DF7594->unk4) {
    case 0:
      g8DF7594->unk14 = 0;
      sub_8003888(g8DF7594->unk14);
      g8DF7594->unk12 = 0;
      g8DF7594->unk4++;
      break;
    case 1:
      g8DF7594->unk12++;
      g8DF7594->unk4++;
      break;
    case 2:
      if (g8DF7594->unk14 <= 10)
        g8DF7594->unk14++;
      else
        g8DF7594->unk14 = 0;
      sub_8003888(g8DF7594->unk14);
      g8DF7594->unk12 = 0;
      g8DF7594->unk4--;
      break;
  }
  WaitForVBlank();
}

static void sub_8003820 (void) {
  switch (g8DF7594->unk4) {
    case 0:
      g8DF7594->unk14 = 0;
      sub_8003A78(g8DF7594->unk14);
      g8DF7594->unk12 = 0;
      g8DF7594->unk4++;
      break;
    case 1:
      g8DF7594->unk12++;
      g8DF7594->unk4++;
      break;
    case 2:
      if (g8DF7594->unk14 <= 7)
        g8DF7594->unk14++;
      else
        g8DF7594->unk14 = 0;
      sub_8003A78(g8DF7594->unk14);
      g8DF7594->unk12 = 0;
      g8DF7594->unk4--;
      break;
  }
}

static void sub_8003888 (unsigned char arg0) {
  u8 i;
  switch (arg0 % 2) {
    case 0:
      REG_BG2CNT = 0x702;
      LZ77UnCompWram(gUnk_8FA3A4C[arg0 + 1], gBgVram.cbb0 + 0x4000);
      for (i = 0; i < 13; i++)
        DmaCopy16(3, gUnk_8FA3ADC[arg0 + 1][i], &gBgVram.cbb0[0x7800 + (i + 2) * 64], 60);
      LoadCharblock1();
      break;
    case 1:
      REG_BG2CNT = 0xF06;
      LZ77UnCompWram(gUnk_8FA3A4C[arg0 + 1], gBgVram.cbb0);
      for (i = 0; i < 13; i++)
        DmaCopy16(3, gUnk_8FA3ADC[arg0 + 1][i], &gBgVram.cbb0[0x3800 + (i + 2) * 64], 60);
      LoadCharblock0();
      break;
  }
}

static void sub_8003980 (unsigned char arg0) {
  u8 i;
  switch (arg0 % 2) {
    case 0:
      REG_BG3CNT = 0x170B;
      LZ77UnCompWram(gUnk_8FA3A80[arg0 + 1], gBgVram.cbb0 + 0xC000);
      for (i = 0; i < 13; i++)
        DmaCopy16(3, gUnk_8FA3B10[arg0 + 1][i], &gBgVram.cbb0[0xF800 + (i + 2) * 64], 60);
      LoadCharblock3();
      break;
    case 1:
      REG_BG3CNT = 0x1F0F;
      LZ77UnCompWram(gUnk_8FA3A80[arg0 + 1], gBgVram.cbb0 + 0x8000);
      for (i = 0; i < 13; i++)
        DmaCopy16(3, gUnk_8FA3B10[arg0 + 1][i], &gBgVram.cbb0[0xB800 + (i + 2) * 64], 60);
      LoadCharblock2();
      break;
  }
}

static void sub_8003A78 (unsigned char arg0) {
  u8 i;
  switch (arg0 % 2) {
    case 0:
      REG_BG3CNT = 0xF83;
      LZ77UnCompWram(gUnk_8FA3AB4[arg0 + 1], gBgVram.cbb0 + 0x8000);
      for (i = 0; i < 13; i++)
        DmaCopy16(3, gUnk_8FA3B44[arg0 + 1][i], &gBgVram.cbb0[0xF800 + (i + 2) * 64], 60);
      LoadCharblock2();
      LoadCharblock3();
      break;
    case 1:
      REG_BG3CNT = 0x1F8B;
      LZ77UnCompWram(gUnk_8FA3AB4[arg0 + 1], gBgVram.cbb0);
      for (i = 0; i < 13; i++)
        DmaCopy16(3, gUnk_8FA3B44[arg0 + 1][i], &gBgVram.cbb0[0x7800 + (i + 2) * 64], 60);
      LoadCharblock0();
      LoadCharblock1();
      break;
  }
}

static void sub_8003B78 (void) {
  u8 i;
  sub_803EEFC(0, gUnk_8A96358, 0x100);
  sub_803EEFC(1, gUnk_8A98358, 0x100);
  // UB/Bug: copying past palette buffer
  // happens to land 256 bytes into VRAM buffer
  // probably can't exploit
  CpuCopy16(gUnk_8AA6758, gPaletteBuffer + 256, 512);
  for (i = 0; i < 32; i++) {
    g8DF7594->unk36[i] = gPaletteBuffer[256 + i] & 0x1F;
    g8DF7594->unk96[i] = (gPaletteBuffer[256 + i] & (0x1F << 5)) >> 5;
    g8DF7594->unkF6[i] = (gPaletteBuffer[256 + i] & (0x1F << 10)) >> 10;
  }
}

static void sub_8003C10 (void) {
  u8 i;
  sub_803EEFC(0, gUnk_8A4E490, 0x100);
  sub_803EEFC(1, gUnk_8A50490, 0x100);
  // UB/Bug: copying past palette buffer
  // happens to land 256 bytes into VRAM buffer
  // probably can't exploit
  // (maybe not UB, since CpuCopy16 is a builtin gba function)
  CpuCopy16(gUnk_8AA6758, gPaletteBuffer + 256, 512);
  for (i = 0; i < 32; i++) {
    g8DF7594->unk36[i] = gPaletteBuffer[256 + i] & 0x1F;
    g8DF7594->unk96[i] = (gPaletteBuffer[256 + i] & (0x1F << 5)) >> 5;
    g8DF7594->unkF6[i] = (gPaletteBuffer[256 + i] & (0x1F << 10)) >> 10;
  }
}

static void sub_8003CA8 (void) {
  u8 i;
  sub_803EEFC(1, gUnk_8AA4358, 0x100);
  // UB/Bug: copying past palette buffer
  // happens to land 256 bytes into VRAM buffer
  // probably can't exploit
  CpuCopy16(gUnk_8AA6758, gPaletteBuffer + 256, 512);
  for (i = 0; i < 16; i++) {
    g8DF7594->unk16[i] = gPaletteBuffer[0x160 + i];
    gPaletteBuffer[0x160 + i] = gPaletteBuffer[0x160];
  }
}

extern struct {
  u8 filler0[4];
  struct /*Oam123*/ {
    u16 unk0;
    u16 unk2;
    u16 unk4;
  }* unk4;
}* gUnk_8FA38AC, *gUnk_8FA38BC, *gUnk_8FA38CC;

/*
static void sub_8003D10 (void) {
  u32 sp = g8DF7594->unk1FC % 48 / 8;
  u8 i, j;
  g8DF7594->unk1AA = gUnk_8FA38AC->unk4->unk0 & 0xFF00 |
                     gUnk_8FA38AC->unk4->unk0 + g8DF7594->unk18A - 16 & 0xFF |
                     0x300;
  g8DF7594->unk1AC = gUnk_8FA38AC->unk4->unk2 & 0xFE00 |
                     gUnk_8FA38AC->unk4->unk2 + g8DF7594->unk15A[0] - 32 & 0x1FF;
  g8DF7594->unk1AE = gUnk_8FA38AC->unk4->unk4;


  g8DF7594->unk1BC = gUnk_8FA38BC->unk4->unk0 & 0xFF00 |
                     gUnk_8FA38BC->unk4->unk0 + g8DF7594->unk18B - 16 & 0xFF |
                     0x300;
  g8DF7594->unk1BE = gUnk_8FA38BC->unk4->unk2 & 0xFE00 |
                     gUnk_8FA38BC->unk4->unk2 + g8DF7594->unk15A[1] - 32 & 0x1FF |
                     0x600;
  g8DF7594->unk1C0 = gUnk_8FA38BC->unk4->unk4;


  g8DF7594->unk1CE = gUnk_8FA38CC->unk4->unk0 & 0xFF00 |
                     gUnk_8FA38CC->unk4->unk0 + g8DF7594->unk18C - 16 & 0xFF |
                     0x300;
  g8DF7594->unk1D0 = gUnk_8FA38CC->unk4->unk2 & 0xFE00 |
                     gUnk_8FA38CC->unk4->unk2 + g8DF7594->unk15A[2] - 32 & 0x1FF |
                     0xC00;
  g8DF7594->unk1D2 = gUnk_8FA38CC->unk4->unk4;


  if (g8DF7594->unk1FC % 4 == 0) {
    g8DF7594->unk190[g8DF7594->unk1FC % 24 / 4] = g8DF7594->unk1AA + (u8)RandRangeU8(64, 80);
    g8DF7594->unk15A[6 + g8DF7594->unk1FC % 24 / 4] = (g8DF7594->unk1AC & 0x1FF) + (u8)RandRangeU8(40, 80);
    g8DF7594->unk196[g8DF7594->unk1FC % 24 / 4] = g8DF7594->unk1BC + (u8)RandRangeU8(64, 80);
    g8DF7594->unk15A[12 + g8DF7594->unk1FC % 24 / 4] = (g8DF7594->unk1BE & 0x1FF) + (u8)RandRangeU8(40, 80);
    g8DF7594->unk19C[g8DF7594->unk1FC % 24 / 4] = g8DF7594->unk1CE + (u8)RandRangeU8(64, 80);
    g8DF7594->unk15A[18 + g8DF7594->unk1FC % 24 / 4] = (g8DF7594->unk1D0 & 0x1FF) + (u8)RandRangeU8(40, 80);
  }

  for (i = 0; i < 3; i++) {
    if (!g8DF7594->unk1E6[i]) {
      for (j = 0; j < 6; j += 2) {
        // oam #2
        gOamBuffer[]
        r5 = (i * 6 + j) * 8
      }
    }
    else {

    }
  }
}*/

NAKED
static void sub_8003D10 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #8\n\
	ldr r0, _08004100\n\
	mov sl, r0\n\
	ldr r7, [r0]\n\
	movs r1, #0xfe\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	mov sb, r1\n\
	ldrh r0, [r1]\n\
	movs r1, #0x30\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x13\n\
	str r0, [sp]\n\
	ldr r5, _08004104\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r0, [r0]\n\
	movs r4, #0xff\n\
	lsls r4, r4, #8\n\
	adds r1, r4, #0\n\
	ands r1, r0\n\
	movs r3, #0xc5\n\
	lsls r3, r3, #1\n\
	adds r2, r7, r3\n\
	ldrb r2, [r2]\n\
	adds r0, r0, r2\n\
	subs r0, #0x10\n\
	movs r6, #0xff\n\
	ands r0, r6\n\
	orrs r1, r0\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #2\n\
	mov r8, r0\n\
	movs r2, #0xd5\n\
	lsls r2, r2, #1\n\
	adds r0, r7, r2\n\
	mov r3, r8\n\
	orrs r1, r3\n\
	strh r1, [r0]\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r0, [r0, #2]\n\
	movs r3, #0xfe\n\
	lsls r3, r3, #8\n\
	adds r2, r3, #0\n\
	ands r2, r0\n\
	adds r6, #0x5b\n\
	ldrh r1, [r6, r7]\n\
	mov ip, r1\n\
	add r0, ip\n\
	subs r0, #0x20\n\
	adds r6, #0xa5\n\
	ands r0, r6\n\
	orrs r2, r0\n\
	movs r1, #0xd6\n\
	lsls r1, r1, #1\n\
	adds r0, r7, r1\n\
	strh r2, [r0]\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r0, [r0, #4]\n\
	movs r2, #0xd7\n\
	lsls r2, r2, #1\n\
	adds r1, r7, r2\n\
	strh r0, [r1]\n\
  \n\
  \n\
  \n\
	ldr r5, _08004108\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r0, [r0]\n\
	adds r1, r4, #0\n\
	ands r1, r0\n\
	subs r6, #0x74\n\
	ldrb r2, [r6, r7]\n\
	mov ip, r2\n\
	add r0, ip\n\
	subs r0, #0x10\n\
	movs r6, #0xff\n\
	ands r0, r6\n\
	orrs r1, r0\n\
	movs r2, #0xde\n\
	lsls r2, r2, #1\n\
	adds r0, r7, r2\n\
	mov r6, r8\n\
	orrs r1, r6\n\
	strh r1, [r0]\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r0, [r0, #2]\n\
	adds r1, r3, #0\n\
	ands r1, r0\n\
	subs r2, #0x60\n\
	ldrh r6, [r2, r7]\n\
	mov ip, r6\n\
	add r0, ip\n\
	subs r0, #0x20\n\
	adds r2, #0xa3\n\
	ands r0, r2\n\
	orrs r1, r0\n\
	movs r6, #0xc0\n\
	lsls r6, r6, #3\n\
	adds r0, r6, #0\n\
	subs r2, #0x41\n\
	orrs r1, r0\n\
	strh r1, [r2, r7] @1bE\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r1, [r0, #4]\n\
	movs r5, #0xe0\n\
	lsls r5, r5, #1\n\
	adds r0, r7, r5\n\
	strh r1, [r0]\n\
  \n\
  \n\
	ldr r2, _0800410C\n\
	ldr r0, [r2]\n\
	ldr r0, [r0, #4]\n\
	ldrh r0, [r0]\n\
	ands r4, r0\n\
	movs r6, #0xc6\n\
	lsls r6, r6, #1\n\
	adds r1, r7, r6\n\
	ldrb r1, [r1]\n\
	adds r0, r0, r1\n\
	subs r0, #0x10\n\
	movs r1, #0xff\n\
	ands r0, r1\n\
	orrs r4, r0\n\
	adds r5, #0xe\n\
	adds r0, r7, r5\n\
	mov r6, r8\n\
	orrs r4, r6\n\
	strh r4, [r0]\n\
	ldr r0, [r2]\n\
	ldr r0, [r0, #4]\n\
	ldrh r0, [r0, #2]\n\
	ands r3, r0\n\
	movs r4, #0xaf\n\
	lsls r4, r4, #1\n\
	adds r1, r7, r4\n\
	ldrh r1, [r1]\n\
	adds r0, r0, r1\n\
	subs r0, #0x20\n\
	adds r5, #0x31\n\
	ands r0, r5\n\
	orrs r3, r0\n\
	movs r6, #0xc0\n\
	lsls r6, r6, #4\n\
	adds r0, r6, #0\n\
	adds r4, #0x72\n\
	adds r1, r7, r4\n\
	orrs r3, r0\n\
	strh r3, [r1]\n\
	ldr r0, [r2]\n\
	ldr r0, [r0, #4]\n\
	ldrh r0, [r0, #4]\n\
	subs r5, #0x2d\n\
	adds r1, r7, r5\n\
	strh r0, [r1]\n\
  \n\
  \n\
  \n\
  \n\
  \n\
  \n\
  \n\
  \n\
  \n\
  \n\
  \n\
	mov r6, sb\n\
	ldrh r0, [r6]\n\
	movs r1, #3\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08003E64\n\
	b _08003FC0\n\
_08003E64:\n\
	movs r0, #0x40\n\
	movs r1, #0x50\n\
	bl RandRangeU8\n\
	adds r5, r0, #0\n\
	mov r0, sl\n\
	ldr r4, [r0]\n\
	movs r1, #0xfe\n\
	lsls r1, r1, #1\n\
	adds r0, r4, r1\n\
	ldrh r0, [r0]\n\
	movs r1, #0x18\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x12\n\
	adds r0, r4, r0\n\
	movs r2, #0xc8\n\
	lsls r2, r2, #1\n\
	adds r0, r0, r2\n\
	movs r3, #0xd5\n\
	lsls r3, r3, #1\n\
	adds r1, r4, r3\n\
	ldrb r1, [r1]\n\
	adds r5, r5, r1\n\
	strb r5, [r0]\n\
  \n\
  \n\
	movs r0, #0x28\n\
	movs r1, #0x50\n\
	bl RandRangeU8\n\
	adds r4, r0, #0\n\
	mov r6, sl\n\
	ldr r5, [r6]\n\
	movs r1, #0xfe\n\
	lsls r1, r1, #1\n\
	adds r0, r5, r1\n\
	ldrh r0, [r0]\n\
	movs r1, #0x18\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x12\n\
	adds r0, #6\n\
	lsls r0, r0, #1\n\
	movs r2, #0xad\n\
	lsls r2, r2, #1\n\
	adds r1, r5, r2\n\
	adds r1, r1, r0\n\
	movs r3, #0xd6\n\
	lsls r3, r3, #1\n\
	adds r0, r5, r3\n\
	ldrh r2, [r0]\n\
	ldr r6, _08004110\n\
	adds r0, r6, #0\n\
	ands r0, r2\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	adds r4, r4, r0\n\
	strh r4, [r1]\n\
  \n\
  \n\
	movs r0, #0x40\n\
	movs r1, #0x50\n\
	bl RandRangeU8\n\
	adds r5, r0, #0\n\
	mov r0, sl\n\
	ldr r4, [r0]\n\
	movs r1, #0xfe\n\
	lsls r1, r1, #1\n\
	adds r0, r4, r1\n\
	ldrh r0, [r0]\n\
	movs r1, #0x18\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x12\n\
	adds r0, r4, r0\n\
	movs r2, #0xcb\n\
	lsls r2, r2, #1\n\
	adds r0, r0, r2\n\
	movs r3, #0xde\n\
	lsls r3, r3, #1\n\
	adds r4, r4, r3\n\
	ldrb r4, [r4]\n\
	adds r5, r5, r4\n\
	strb r5, [r0]\n\
  \n\
  \n\
	movs r0, #0x28\n\
	movs r1, #0x50\n\
	bl RandRangeU8\n\
	adds r4, r0, #0\n\
	mov r0, sl\n\
	ldr r5, [r0]\n\
	movs r1, #0xfe\n\
	lsls r1, r1, #1\n\
	adds r0, r5, r1\n\
	ldrh r0, [r0]\n\
	movs r1, #0x18\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x12\n\
	adds r0, #0xc\n\
	lsls r0, r0, #1\n\
	movs r3, #0xad\n\
	lsls r3, r3, #1\n\
	adds r2, r5, r3\n\
	adds r2, r2, r0\n\
	movs r1, #0xdf\n\
	lsls r1, r1, #1\n\
	adds r0, r5, r1\n\
	ldrh r1, [r0]\n\
	adds r0, r6, #0\n\
	ands r0, r1\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	adds r4, r4, r0\n\
	strh r4, [r2]\n\
  \n\
  \n\
	movs r0, #0x40\n\
	movs r1, #0x50\n\
	bl RandRangeU8\n\
	adds r5, r0, #0\n\
	mov r2, sl\n\
	ldr r4, [r2]\n\
	movs r3, #0xfe\n\
	lsls r3, r3, #1\n\
	adds r0, r4, r3\n\
	ldrh r0, [r0]\n\
	movs r1, #0x18\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x12\n\
	adds r0, r4, r0\n\
	movs r1, #0xce\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	movs r2, #0xe7\n\
	lsls r2, r2, #1\n\
	adds r1, r4, r2\n\
	ldrb r1, [r1]\n\
	adds r5, r5, r1\n\
	strb r5, [r0]\n\
  \n\
  \n\
	movs r0, #0x28\n\
	movs r1, #0x50\n\
	bl RandRangeU8\n\
	adds r4, r0, #0\n\
	mov r3, sl\n\
	ldr r5, [r3]\n\
	movs r1, #0xfe\n\
	lsls r1, r1, #1\n\
	adds r0, r5, r1\n\
	ldrh r0, [r0]\n\
	movs r1, #0x18\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x12\n\
	adds r0, #0x12\n\
	lsls r0, r0, #1\n\
	movs r2, #0xad\n\
	lsls r2, r2, #1\n\
	adds r1, r5, r2\n\
	adds r1, r1, r0\n\
	movs r3, #0xe8\n\
	lsls r3, r3, #1\n\
	adds r0, r5, r3\n\
	ldrh r0, [r0]\n\
	ands r6, r0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	adds r4, r4, r6\n\
	strh r4, [r1]\n\
  \n\
  \n\
  \n\
  \n\
  \n\
_08003FC0:\n\
	movs r4, #0\n\
	mov sb, r4\n\
_08003FC4:\n\
	ldr r5, _08004100\n\
	ldr r0, [r5]\n\
	movs r6, #0xf3\n\
	lsls r6, r6, #1\n\
	adds r0, r0, r6\n\
	add r0, sb\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	beq _08003FD8\n\
	b _08004144\n\
_08003FD8:\n\
	movs r7, #0\n\
	mov r0, sb\n\
	lsls r0, r0, #1\n\
	mov sl, r0\n\
	mov r1, sb\n\
	adds r1, #1\n\
	str r1, [sp, #4]\n\
_08003FE6:\n\
	mov r4, sl\n\
	add r4, sb\n\
	lsls r4, r4, #1\n\
	adds r4, r4, r7\n\
	lsls r5, r4, #3\n\
	ldr r2, _08004114\n\
	adds r2, r2, r5\n\
	mov r8, r2\n\
	ldr r3, [sp]\n\
	adds r0, r3, r4\n\
	movs r1, #6\n\
	bl __modsi3\n\
	ldr r6, _08004118\n\
	ldr r1, [r6]\n\
	lsls r0, r0, #3\n\
	adds r1, r0, r1\n\
	ldr r6, [r1, #4]\n\
	ldr r1, _08004100\n\
	ldr r2, [r1]\n\
	adds r4, #6\n\
	movs r3, #0xc5\n\
	lsls r3, r3, #1\n\
	adds r2, r2, r3\n\
	adds r2, r2, r4\n\
	ldrb r1, [r2]\n\
	adds r3, r1, #1\n\
	strb r3, [r2]\n\
	lsls r1, r1, #0x18\n\
	lsrs r1, r1, #0x18\n\
	ldrh r2, [r6]\n\
	orrs r1, r2\n\
	mov r6, r8\n\
	strh r1, [r6]\n\
	ldr r6, _08004114\n\
	adds r6, #2\n\
	adds r3, r5, r6\n\
	ldr r2, _08004118\n\
	ldr r1, [r2]\n\
	adds r0, r0, r1\n\
	ldr r2, [r0, #4]\n\
	ldr r1, _08004100\n\
	ldr r0, [r1]\n\
	lsls r4, r4, #1\n\
	movs r1, #0xad\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	adds r0, r0, r4\n\
	ldrh r0, [r0]\n\
	ldr r4, _08004110\n\
	adds r1, r4, #0\n\
	ands r0, r1\n\
	ldrh r1, [r2, #2]\n\
	orrs r0, r1\n\
	strh r0, [r3]\n\
	ldr r0, _0800411C\n\
	adds r5, r5, r0\n\
	ldrh r0, [r2, #4]\n\
	movs r2, #0xfc\n\
	lsls r2, r2, #8\n\
	adds r1, r2, #0\n\
	adds r2, r0, #0\n\
	ands r2, r1\n\
	adds r0, #0x10\n\
	ldr r3, _08004120\n\
	adds r1, r3, #0\n\
	ands r0, r1\n\
	orrs r2, r0\n\
	strh r2, [r5]\n\
	adds r0, r7, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	cmp r7, #5\n\
	bls _08003FE6\n\
	movs r7, #1\n\
_0800407C:\n\
	mov r4, sl\n\
	add r4, sb\n\
	lsls r4, r4, #1\n\
	adds r4, r4, r7\n\
	lsls r5, r4, #3\n\
	ldr r6, _08004114\n\
	adds r6, r6, r5\n\
	mov r8, r6\n\
	ldr r1, [sp]\n\
	adds r0, r1, r4\n\
	movs r1, #6\n\
	bl __modsi3\n\
	ldr r2, _08004124\n\
	ldr r1, [r2]\n\
	lsls r0, r0, #3\n\
	adds r1, r0, r1\n\
	ldr r6, [r1, #4]\n\
	ldr r3, _08004100\n\
	ldr r2, [r3]\n\
	adds r4, #6\n\
	movs r1, #0xc5\n\
	lsls r1, r1, #1\n\
	adds r2, r2, r1\n\
	adds r2, r2, r4\n\
	ldrb r1, [r2]\n\
	adds r3, r1, #1\n\
	strb r3, [r2]\n\
	lsls r1, r1, #0x18\n\
	lsrs r1, r1, #0x18\n\
	ldrh r2, [r6]\n\
	orrs r1, r2\n\
	mov r2, r8\n\
	strh r1, [r2]\n\
	ldr r2, _08004114\n\
	adds r2, #2\n\
	adds r2, r5, r2\n\
	ldr r3, _08004124\n\
	ldr r1, [r3]\n\
	adds r0, r0, r1\n\
	ldr r3, [r0, #4]\n\
	ldr r6, _08004100\n\
	ldr r0, [r6]\n\
	lsls r4, r4, #1\n\
	movs r1, #0xad\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	adds r0, r0, r4\n\
	ldrh r0, [r0]\n\
	ldr r4, _08004110\n\
	adds r1, r4, #0\n\
	ands r0, r1\n\
	ldrh r1, [r3, #2]\n\
	orrs r0, r1\n\
	strh r0, [r2]\n\
	ldr r6, _0800411C\n\
	adds r5, r5, r6\n\
	ldrh r0, [r3, #4]\n\
	movs r2, #0xfc\n\
	lsls r2, r2, #8\n\
	adds r1, r2, #0\n\
	adds r2, r0, #0\n\
	ands r2, r1\n\
	adds r0, #0x10\n\
	b _08004128\n\
	.align 2, 0\n\
_08004100: .4byte g8DF7594\n\
_08004104: .4byte gUnk_8FA38AC\n\
_08004108: .4byte gUnk_8FA38BC\n\
_0800410C: .4byte gUnk_8FA38CC\n\
_08004110: .4byte 0x000001FF\n\
_08004114: .4byte gOamBuffer+0x10\n\
_08004118: .4byte gUnk_8FA3904\n\
_0800411C: .4byte gOamBuffer+0x14\n\
_08004120: .4byte 0x000003FF\n\
_08004124: .4byte gUnk_8FA3950\n\
_08004128:\n\
	ldr r3, _08004140\n\
	adds r1, r3, #0\n\
	ands r0, r1\n\
	orrs r2, r0\n\
	strh r2, [r5]\n\
	adds r0, r7, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	cmp r7, #5\n\
	bls _0800407C\n\
	b _0800418C\n\
	.align 2, 0\n\
_08004140: .4byte 0x000003FF\n\
_08004144:\n\
	movs r7, #0\n\
	mov r4, sb\n\
	lsls r4, r4, #1\n\
	mov sl, r4\n\
	mov r5, sb\n\
	adds r5, #1\n\
	str r5, [sp, #4]\n\
	mov r0, sl\n\
	add r0, sb\n\
	lsls r4, r0, #1\n\
	ldr r2, _08004254\n\
	adds r6, r2, #4\n\
	mov sb, r6\n\
	movs r0, #0xa0\n\
	mov r8, r0\n\
	adds r1, r2, #2\n\
	mov sl, r1\n\
	movs r5, #0xf0\n\
	movs r6, #0xc0\n\
	lsls r6, r6, #4\n\
	adds r3, r6, #0\n\
_0800416E:\n\
	adds r0, r4, r7\n\
	lsls r0, r0, #3\n\
	adds r1, r0, r2\n\
	mov r6, r8\n\
	strh r6, [r1]\n\
	mov r6, sl\n\
	adds r1, r0, r6\n\
	strh r5, [r1]\n\
	add r0, sb\n\
	strh r3, [r0]\n\
	adds r0, r7, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	cmp r7, #5\n\
	bls _0800416E\n\
_0800418C:\n\
	ldr r1, [sp, #4]\n\
	lsls r0, r1, #0x18\n\
	lsrs r0, r0, #0x18\n\
	mov sb, r0\n\
	cmp r0, #2\n\
	bhi _0800419A\n\
	b _08003FC4\n\
  \n\
  \n\
  \n\
  \n\
  \n\
  \n\
_0800419A:\n\
	movs r7, #0\n\
	ldr r2, _08004258\n\
	mov r8, r2\n\
	movs r3, #0x34\n\
	add r3, r8\n\
	mov sb, r3\n\
_080041A6:\n\
	lsls r3, r7, #3\n\
	mov r4, r8\n\
	adds r1, r3, r4\n\
	ldr r5, _0800425C\n\
	ldr r4, [r5]\n\
	lsls r2, r7, #1\n\
	adds r2, r2, r7\n\
	lsls r2, r2, #1\n\
	movs r0, #0xd5\n\
	lsls r0, r0, #1\n\
	adds r6, r4, r0\n\
	adds r0, r6, r2\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	mov r1, r8\n\
	adds r1, #2\n\
	adds r1, r3, r1\n\
	movs r0, #0xd6\n\
	lsls r0, r0, #1\n\
	adds r5, r4, r0\n\
	adds r0, r5, r2\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	mov r1, r8\n\
	adds r1, #4\n\
	adds r1, r3, r1\n\
	movs r0, #0xd7\n\
	lsls r0, r0, #1\n\
	adds r4, r4, r0\n\
	adds r2, r4, r2\n\
	ldrh r0, [r2]\n\
	strh r0, [r1]\n\
	mov r1, r8\n\
	adds r1, #0x18\n\
	adds r1, r3, r1\n\
	adds r0, r7, #3\n\
	lsls r2, r0, #1\n\
	adds r2, r2, r0\n\
	lsls r2, r2, #1\n\
	adds r0, r6, r2\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	mov r1, r8\n\
	adds r1, #0x1a\n\
	adds r1, r3, r1\n\
	adds r0, r5, r2\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	mov r1, r8\n\
	adds r1, #0x1c\n\
	adds r1, r3, r1\n\
	adds r2, r4, r2\n\
	ldrh r0, [r2]\n\
	strh r0, [r1]\n\
	mov r1, r8\n\
	adds r1, #0x30\n\
	adds r1, r3, r1\n\
	adds r0, r7, #6\n\
	lsls r2, r0, #1\n\
	adds r2, r2, r0\n\
	lsls r2, r2, #1\n\
	adds r6, r6, r2\n\
	ldrh r0, [r6]\n\
	strh r0, [r1]\n\
	mov r1, r8\n\
	adds r1, #0x32\n\
	adds r1, r3, r1\n\
	adds r5, r5, r2\n\
	ldrh r0, [r5]\n\
	strh r0, [r1]\n\
	add r3, sb\n\
	adds r4, r4, r2\n\
	ldrh r0, [r4]\n\
	strh r0, [r3]\n\
	adds r0, r7, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	cmp r7, #2\n\
	bls _080041A6\n\
	add sp, #8\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08004254: .4byte gOamBuffer+0x10\n\
_08004258: .4byte gOamBuffer+0xA0\n\
_0800425C: .4byte g8DF7594");
}
/*
extern struct {
  u8 filler0[4];
  u32 unk4;
}* gUnk_8FA3A44;

void sub_8004260 (void) {
  u8 i;
  for (i = 0; i < 10; i++) {
    gUnk_8FA3A44->unk4
  }
}*/
