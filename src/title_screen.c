#include "global.h"

#define OPTION_NEW_GAME 0
#define OPTION_CONTINUE 1

// TODO: this struct is likely used elsewhere too, or at least the substruct.
const struct Unk8E0CD80{
  unsigned char unk0;
  unsigned char unk1; // number of hardware sprites (subsprites) that make up meta-sprite?
  unsigned char filler2[2];
  struct {unsigned short a, b, c;} * unk4;
} extern * g8E0CD80[];

static unsigned char TryStartNewGame (void);
static void sub_80353B0 (void);
static void CopyGfxAndInitGfxRegs (void);
static void sub_80354A8 (void);
static unsigned char TitleScreenNewGameOnly (void);
static unsigned char SwitchOption (unsigned char);
static unsigned char SwitchToOptionContinue (void);
static unsigned short ProcessInput (void);
static void CopyBgGfx (void);
static void sub_80357C0 (void);
static void sub_80357F8 (void);
static void sub_803584C (void);
static void sub_8035894 (void);
static void sub_80358F8 (void);
static void CopySpriteTilesAndPalette (void);
static void sub_8035988 (void);
static void sub_8035994 (unsigned char, const struct Unk8E0CD80*, unsigned short*); //TODO change oam type?
static void sub_80359D0 (void);
static void sub_80359F0 (void);
static void VBlankCbInitGfxRegs (void);
static void VBlankCbTitleScreen (void);
static void VBlankCbOptionSwitch (void);
static void VBlankCbNoInput (void);
static void sub_8035AD8 (void);
static void VBlankCbTryStartNewGame (void);
static void VBlankCbTryStartNewGameEnd (void);
static void LoadVramAndOam (void);
static void sub_8035B3C (void);

void sub_802612C (void);
unsigned char sub_800AC64 (void);
void sub_800ACE8 (unsigned char);
void sub_800AF68 (void);
void sub_800ADC4 (void);

unsigned char LfsrNextByte (void);
void ClearGraphicsBuffers (void);
extern unsigned short gNewButtons;
extern unsigned* g8E0CD9C;
extern unsigned char gText_ReplaceSaveData[];// = "〉No  Yes Saving will  replace the  saved data.               Is that okay?");
                                               
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
extern unsigned short* g8E0CDA8; // array of 1 element? only english is present? (NEW GAME sprite tiles)
extern unsigned short* g8E0CDAC; // ^ (NEW GAME sprite palette) 

static unsigned char TitleScreenChooseOption (void) {
  unsigned char option = OPTION_CONTINUE;
  unsigned keepProcessing;
  unsigned short newButton;
  CopyGfxAndInitGfxRegs();
  sub_8035894();
  LoadVramAndOam();
  SetVBlankCallback(VBlankCbTitleScreen);
  PlayMusic(1);
  WaitForVBlank();
  keepProcessing = 1;
  while (keepProcessing == 1) {
    LfsrNextByte();
    newButton = ProcessInput();
    if (newButton == A_BUTTON) {
      if (option != OPTION_NEW_GAME || !TryStartNewGame()) {
        keepProcessing = 0;
        FadeOutMusic(1);
      }
    }
    else if (newButton == B_BUTTON) {
      PlayMusic(0x36);
      option = SwitchToOptionContinue();
      sub_8035B3C();
      SetVBlankCallback(VBlankCbOptionSwitch);
      WaitForVBlank();
    }
    else if (newButton == SELECT_BUTTON) {
      PlayMusic(0x36);
      option = SwitchOption(option);
      sub_8035B3C();
      SetVBlankCallback(VBlankCbOptionSwitch);
      WaitForVBlank();
    }
    else {
      sub_80357F8();
      SetVBlankCallback(VBlankCbNoInput);
      WaitForVBlank();
    }
  }
  sub_80357F8();
  SetVBlankCallback(VBlankCbNoInput);
  WaitForVBlank();
  PlayMusic(0xD2);
  sub_80353B0();
  return option;
}

static unsigned char TryStartNewGame (void) {
  unsigned char choseNo = 1;
  unsigned keepProcessing;
  PlayMusic(0xC9);
  SetVBlankCallback(VBlankCbTryStartNewGame);
  WaitForVBlank();
  sub_80359F0(); // set arrow tilemap entry to No
  LoadCharblock3();
  keepProcessing = 1;
  while (keepProcessing == 1) {
    switch (ProcessInput()) {
      case NEW_B_BUTTON:
        choseNo = 1;
        keepProcessing = 0;
        break;
      case NEW_A_BUTTON:
        keepProcessing = 0;
        break;
      case NEW_DPAD_UP:
        choseNo = 1;
        sub_80359F0();
        PlayMusic(0x36);
        WaitForVBlank();
        LoadCharblock3();
        break;
      case NEW_DPAD_DOWN:
        choseNo = 0;
        sub_80359D0(); //set arrow tilemap entry to Yes
        PlayMusic(0x36);
        WaitForVBlank();
        LoadCharblock3();
        break;
      default:
        WaitForVBlank();
        LoadCharblock3();
        break;
    }
  }
  if (choseNo == 1)
    PlayMusic(0x38);
  SetVBlankCallback(VBlankCbTryStartNewGameEnd);
  WaitForVBlank();
  return choseNo;
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
    SetVBlankCallback(VBlankCbNoInput);
    WaitForVBlank();
  }
}

void TitleScreenMain (void) {
  unsigned char option;
  if (!sub_800AC64())
    option = TitleScreenNewGameOnly();
  else
    option = TitleScreenChooseOption();
  if (option == OPTION_NEW_GAME) {
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

static void CopyGfxAndInitGfxRegs (void) {
  CopyBgGfx();
  CopySpriteTilesAndPalette();
  sub_80357C0();
  SetVBlankCallback(VBlankCbInitGfxRegs);
  WaitForVBlank();
}

static void sub_80354A8 (void) {
  sub_8035988();
  SetVBlankCallback(sub_8035AD8);
  WaitForVBlank();
}

static unsigned char TitleScreenNewGameOnly (void) {
  CopyGfxAndInitGfxRegs();
  sub_803584C();
  LoadVramAndOam();
  SetVBlankCallback(VBlankCbTitleScreen);
  PlayMusic(1);
  WaitForVBlank();
  while (1) {
    LfsrNextByte();
    if (ProcessInput() == 1)
      break;
    sub_80357F8();
    SetVBlankCallback(VBlankCbNoInput);
    WaitForVBlank();
  }
  FadeOutMusic(1);
  sub_80357F8();
  SetVBlankCallback(VBlankCbNoInput);
  WaitForVBlank();
  PlayMusic(0xD2);
  sub_80353B0();
  return OPTION_NEW_GAME;
}

static unsigned char SwitchOption (unsigned char option) {
  if (option == OPTION_CONTINUE) {
    option = OPTION_NEW_GAME;
    sub_80358F8();
  }
  else {
    option = OPTION_CONTINUE;
    sub_8035894();
  }
  return option;
}

static unsigned char SwitchToOptionContinue (void) {
  sub_8035894();
  return OPTION_CONTINUE;
}

static unsigned short ProcessInput (void) {
  unsigned char button;
  unsigned short buttonMask;
  unsigned short newButton = 0;
  sub_802612C();
  buttonMask = 1;
  if (gNewButtons & KEYS_MASK) {
    for (button = 0; button < NUM_BUTTONS; button++) {
      if (gNewButtons & buttonMask)
        newButton = buttonMask;
      buttonMask <<= 1;
    }
  }
  return newButton;
}

static void CopyBgGfx (void) {
  unsigned i;
  unsigned char* lang = &gLanguage; //TODO: fakematch?
  LZ77UnCompWram(g8E0CD9C, gVr.b);
  CopyStringTilesToVRAMBuffer(gVr.a + 0xC000, gText_ReplaceSaveData, 0x4FF);
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
    gVr.b[0x796E + i] = i + 2; //No
    gVr.b[0x798E + i] = i + 6; //Yes
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
      CpuCopy32(g8E0CDA0, gPaletteBuffer, 512);
      break;
    case 2:
      CpuCopy32(g8E0CDA0, gPaletteBuffer, 512);
      break;
    case 3:
      CpuCopy32(g8E0CDA0, gPaletteBuffer, 512);
      break;
    case 4:
      CpuCopy32(g8E0CDA0, gPaletteBuffer, 512);
      break;
    default:
      CpuCopy32(g8E0CDA0, gPaletteBuffer, 512);
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

static void CopySpriteTilesAndPalette (void) {
  sub_803EEFC(0, g8E0CDA8, 0x100);
  CpuCopy32(g8E0CDAC, gPaletteBuffer + 256, 96);
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

static void VBlankCbInitGfxRegs (void) {
  DisableDisplay();
  gBLDCNT = 0x8D8;
  gBLDALPHA = 0x1000;
  gBLDY = 0;
  LoadBlendingRegs();
  REG_WIN0H = 0x40B8;
  REG_WIN0V = 0x2070;
  REG_WININ = 0x3F;
  REG_WINOUT = 0x1F;
  REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(3) | BGCNT_256COLOR | BGCNT_SCREENBASE(30);
  REG_BG3CNT = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_256COLOR | BGCNT_SCREENBASE(31);
  gBG0VOFS = 0;
  gBG0HOFS = 0;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
}

static void VBlankCbTitleScreen (void) {
  LoadPalettes();
  REG_DISPCNT = DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
}

static void VBlankCbOptionSwitch (void) {
  LoadBlendingRegs();
}

static void VBlankCbNoInput (void) {
  LoadBlendingRegs();
}

static void sub_8035AD8 (void) {
  LoadPalettes();
}

static void VBlankCbTryStartNewGame (void) {
  REG_DISPCNT |= DISPCNT_BG0_ON | DISPCNT_WIN0_ON;
  gBLDY = 10;
  LoadBlendingRegs();
}

static void VBlankCbTryStartNewGameEnd (void) {
  REG_DISPCNT &= ~(DISPCNT_BG0_ON | DISPCNT_WIN0_ON);
  gBLDY = 0;
  LoadBlendingRegs();
}

static void LoadVramAndOam (void) {
  LoadVRAM();
  LoadOam();
}

static void sub_8035B3C (void) {
  LoadOam();
}
