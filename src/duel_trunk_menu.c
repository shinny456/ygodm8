#include "global.h"

extern unsigned short gVr[];
extern unsigned short gUnk_808C240[][30];
extern unsigned char g80AE6D0[];
unsigned char GetTrunkMenuDisplayMode (void);
unsigned GetPlayerDeckCost (void);
unsigned GetDeckCapacity (void);
unsigned char GetPlayerDeckSize (void);
extern unsigned char g8DFF4B4[];
extern unsigned char g8DFF4BF[];
extern unsigned char g8DFF4CA[];
extern unsigned char g8DFF4D5[];
void sub_800A380 (unsigned char);
void ApplyNewSortMode (unsigned char);

void sub_800A5F0 (unsigned char);
void sub_800C834 (void);
void sub_800CCAC (void);
void sub_800CD88 (void);
void sub_800CFD0 (void);
void sub_800D368 (void);
void sub_800D484 (void);
void sub_800D580 (void);
void sub_800D78C (void);
void sub_800DA10 (void);

void sub_8009448 (void);
void sub_800DCAC (void);
void sub_800DD1C (void);
int TrunkSubmenuProcessInput (void);
void sub_800DB4C (void);
void sub_800DB9C (void);
void sub_800DBEC (void);
void sub_800DC3C (void);
void sub_800DC8C (void);
void sub_800ABA8 (void);
void sub_800DD08 (void);


void sub_800D8AC (unsigned char arg0) {
  gVr[0x5C1C] = arg0 * 4 + 0x5002;
  gVr[0x5C1D] = arg0 * 4 + 0x5003;
  gVr[0x5C3C] = arg0 * 4 + 0x5004;
  gVr[0x5C3D] = arg0 * 4 + 0x5005;
}

void sub_800D904 (unsigned char arg0) {
  switch (arg0) {
    case 0:
      sub_800A5F0(0);
      break;
    case 2:
      sub_800C834();
      sub_800CCAC();
      sub_800CD88();
      sub_800CFD0();
      sub_800DA10();
      sub_800D8AC(gTrunkMenu.sortMode);
      sub_800A5F0(1);
      break;
    case 3:
      sub_800CFD0();
      sub_800DA10();
      sub_800A5F0(3);
      break;
    case 7:
      sub_800CFD0();
      sub_800DA10();
      sub_800D8AC(gTrunkMenu.sortMode);
      sub_800A5F0(3);
    case 4:
      sub_800DA10();
      sub_800A5F0(3);
      break;
    case 5:
      sub_800A5F0(3);
      break;
  }
}

//unused? it copies the text for the A menu that allows the player to move cards
//between deck and trunk
//instead of the "Use as Ante" one
static void sub_800D9A4 (void) {
  unsigned char i;
  for (i = 0; i < 20; i++)
    CpuCopy32(gUnk_808C240[i], gVr + 0x3C00 + i * 32, 60);
  CpuFill16(0, gVr + 0x2000, 32);
  CopyStringTilesToVRAMBuffer(gVr + 0x2010, g80AE6D0, 0x900);
}

void sub_800DA10 (void) {
  switch (GetTrunkMenuDisplayMode()) {
    case 1:
      sub_800D484();
      break;
    case 2:
      sub_800D580();
      break;
    case 3:
      sub_800D78C();
      break;
    case 0:
    default:
      sub_800D368();
      break;
  }
}

unsigned short sub_800DA48 (unsigned short cardId) {
  if (!gTrunkCardQty[cardId])
    return 0x4000;
  return 0x5000;
}

unsigned short sub_800DA68 (void) {
  if (GetPlayerDeckCost() > GetDeckCapacity())
    return 0x4000;
  return 0x5000;
}

unsigned short sub_800DA88 (void) {
  if (GetPlayerDeckSize() < 40)
    return 0x4000;
  return 0x5000;
}

void sub_800DAA4 (void) {
  unsigned keepProcessing;
  gTrunkMenu.cursorState = gTrunkMenu.sortMode;
  sub_8009448();
  sub_800DCAC();
  LoadCharblock1();
  PlayMusic(0x37);
  SetVBlankCallback(sub_800DD1C);
  WaitForVBlank();
  keepProcessing = 1;
  while (keepProcessing == 1) {
    switch (TrunkSubmenuProcessInput()) {
      case 0x40:
        sub_800DB4C();
        break;
      case 0x80:
        sub_800DB9C();
        break;
      case 0x20:
        sub_800DBEC();
        break;
      case 0x10:
        sub_800DC3C();
        break;
      case 1:
        sub_800DC8C();
        keepProcessing = 0;
        break;
      case 2:
      case 8:
        PlayMusic(0x38);
        keepProcessing = 0;
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
  sub_800D904(7);
  sub_800ABA8();
  sub_800DD08();
}

void sub_800DB4C (void) {
  gTrunkMenu.cursorState = g8DFF4B4[gTrunkMenu.cursorState];
  if (gTrunkMenu.cursorState < 10)
    sub_800A380(gTrunkMenu.cursorState);
  else
    sub_800A380(gTrunkMenu.sortMode);
  sub_800DCAC();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_800DB9C (void) {
  gTrunkMenu.cursorState = g8DFF4BF[gTrunkMenu.cursorState];
  if (gTrunkMenu.cursorState < 10)
    sub_800A380(gTrunkMenu.cursorState);
  else
    sub_800A380(gTrunkMenu.sortMode);
  sub_800DCAC();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_800DBEC (void) {
  gTrunkMenu.cursorState = g8DFF4CA[gTrunkMenu.cursorState];
  if (gTrunkMenu.cursorState < 10)
    sub_800A380(gTrunkMenu.cursorState);
  else
    sub_800A380(gTrunkMenu.sortMode);
  sub_800DCAC();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_800DC3C (void) {
  gTrunkMenu.cursorState = g8DFF4D5[gTrunkMenu.cursorState];
  if (gTrunkMenu.cursorState < 10)
    sub_800A380(gTrunkMenu.cursorState);
  else
    sub_800A380(gTrunkMenu.sortMode);
  sub_800DCAC();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_800DC8C (void) {
  PlayMusic(0x37);
  if (gTrunkMenu.cursorState < 10) {
    gTrunkMenu.sortMode = gTrunkMenu.cursorState;
    ApplyNewSortMode(gTrunkMenu.sortMode);
  }
}
