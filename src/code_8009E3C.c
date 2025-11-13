#include "global.h"

void sub_800A5F0 (unsigned char);
void sub_8009228 (void);
void sub_8009784 (void);
void sub_8009860 (void);
void sub_8009A94 (void);
void sub_800A478 (void);
void sub_800A8D8 (void);
void sub_800A948 (void);
void sub_8009448 (void);
int TrunkSubmenuProcessInput (void);
void sub_800A778 (void);
void sub_800A7C8 (void);
void sub_800A818 (void);
void sub_800A868 (void);
void sub_800A8B8 (void);
void sub_800ABA8 (void);
void sub_800A934 (void);


unsigned char GetTrunkMenuDisplayMode (void);
void sub_8009F58(void);
void sub_800A054(void);
void sub_8009E3C(void);
void sub_800A260(void);

void sub_800A634 (void);
void sub_800A658 (void);
void sub_0800A6C8 (void);
void sub_0800A6CC (void);

unsigned char sub_801F098 (unsigned short);
unsigned char GetPlayerDeckSize (void);
unsigned GetDeckCapacity(void);
unsigned GetPlayerDeckCost(void);

extern struct {unsigned short unk0, unk2, unk4;} g8DFB5FC;

extern unsigned short gVr[];
extern unsigned short g8091C68[]; //scroll-thumb palette (or palette for the entire scrollbar?)
extern unsigned short g8091D28[]; //sub menu cursor palette
extern unsigned char g8090C68[]; //scroll-bar tiles? there seem to be some unused scrollbar tiles (specifically scrolltrack)
extern unsigned char g8091CA8[];

/*
void sub_8009E3C (void) {
  //r8 = 0x5000
  unsigned char i, j;
  unsigned r1;
  for (i = 0; i < 5; i++) {
    r1 = 0;
    if (i > 1) {
      r1 = 2;
      if (i == 2)
        r1 = 1;
    }
    //r3 = 0x7C10 + (i * 3 + r1 + 3) * 32
    //r1 = 0x7C10 + (i * 3 + r1 + 4) * 32
    for (j = 0; j < 6; j++) {
      gVr[0x7C10 + j + (i * 96 + (r1 + 3) * 32)] = 0x5000;
      gVr[0x7C10 + j + (i * 96 + (r1 + 4) * 32)] = 0x5000;
    }
  }
  for (i = 0; i < 5; i++) {
    r1 = 0;
    if (i > 1) {
      r1 = 2;
      if (i == 2)
        r1 = 1;
    }
    for (j = 0; j < 3; j++) {
      //r8 = (i * 3 + r1 + 3) * 32
      //sb = 7c10
      //sp = 7c11 + (i * 3 + r1 + 3) * 32
      //ip = i * 40
      //sl = i * 40 + 0x5114
      //sp8 = (i * 3 + r1 + 4) * 32
      //r4 =
      gVr[0x7C10 + j * 2 + (i * 96 + (r1 + 3) * 32)] = 0x5114 + j * 4 + i * 40;
      gVr[0x7C11 + j * 2 + (i * 96 + (r1 + 3) * 32)] = 0x5114 + j * 4 + i * 40 + 1;
      gVr[0x7C10 + j * 2 + (i * 96 + (r1 + 4) * 32)] = 0x5114 + j * 4 + i * 40 + 2;
      gVr[0x7C11 + j * 2 + (i * 96 + (r1 + 4) * 32)] = 0x5114 + j * 4 + i * 40 + 3;
    }
  }
}*/

void sub_800A380 (unsigned char arg0) {
  gVr[0xB838 / 2] = 0x5002 + arg0 * 4;
  gVr[0xB83A / 2] = 0x5003 + arg0 * 4;
  gVr[0xB878 / 2] = 0x5004 + arg0 * 4;
  gVr[0xB87A / 2] = 0x5005 + arg0 * 4;
}

void sub_800A3D8 (unsigned char arg0) {
  switch (arg0) {
    case 0:
      sub_800A5F0(0);
      break;
    case 2:
      sub_8009228();
      sub_8009784();
      sub_8009860();
      sub_8009A94();
      sub_800A478();
      sub_800A380(gTrunkMenu.sortMode);
      sub_800A5F0(1);
      break;
    case 3:
      sub_8009A94();
      sub_800A478();
      sub_800A5F0(3);
      break;
    case 7:
      sub_8009A94();
      sub_800A478();
      sub_800A380(gTrunkMenu.sortMode);
      sub_800A5F0(3);
      sub_800A478();
      sub_800A5F0(3);
      break;
    case 4:
      sub_800A478();
      sub_800A5F0(3);
      break;
    case 5:
      sub_800A5F0(3);
      break;
  }
}

void sub_800A478 (void) {
  switch (GetTrunkMenuDisplayMode()) {
    case 1:
      sub_8009F58();
      break;
    case 2:
      sub_800A054();
      break;
    case 3:
      sub_800A260();
      break;
    case 0:
    default:
      sub_8009E3C();
      break;
  }
}

unsigned short sub_800A4B0 (unsigned short id) {
  if (!gTrunkCardQty[id] || sub_801F098(id) != TRUE || GetPlayerDeckSize() == 40)
    return 0x4000;
  SetCardInfo(id);
  if (GetDuelistLevel() < gCardInfo.cost)
    return 0x4000;
  return 0x5000;
}

unsigned short sub_800A508 (void) {
  if (GetPlayerDeckCost() > GetDeckCapacity())
    return 0x4000;
  return 0x5000;
}

unsigned short sub_800A528 (void) {
  if (GetPlayerDeckSize() < 40)
    return 0x4000;
  return 0x5000;
}

extern union OamUnion {
  unsigned short oamU16[4];
  unsigned long oamU32[2];
  struct OamData oamStruct;
} gOamBuffer[];

void sub_800A544 (void) {
  //TODO: is the type punning here ok?
  union OamUnion* oamUnion;
  unsigned short r3;
  if (gUnk2021AB4.currentPos <= gUnk2021AB4.lastValidIndex && gUnk2021AB4.lastValidIndex) {
    r3 = gUnk2021AB4.currentPos * 124 / gUnk2021AB4.lastValidIndex;
  }
  else
    r3 = 0;
  gOamBuffer[5].oamU16[0] = g8DFB5FC.unk0;
  gOamBuffer[5].oamU16[1] = g8DFB5FC.unk2;
  gOamBuffer[5].oamU16[2] = g8DFB5FC.unk4;
  oamUnion = gOamBuffer + 5;
  oamUnion->oamStruct.y += 25 + r3;
  oamUnion->oamStruct.bpp = 1;
  oamUnion->oamStruct.objMode = 1;
  oamUnion->oamStruct.x += 511;
  oamUnion->oamStruct.tileNum += 544;
  oamUnion->oamStruct.priority = 1;
}

void sub_800A5F0 (unsigned char arg0) {
  switch (arg0) {
    case 0:
      sub_800A634();
      break;
    case 1:
      sub_800A658();
      sub_0800A6C8();
      sub_0800A6CC();
      break;
    case 2:
      sub_0800A6C8();
      break;
    case 3:
      sub_0800A6C8();
      break;
  }
}

void sub_800A634 (void) {
  CpuFill16(0, gOamBuffer, 0x400);
}

void sub_800A658 (void) {
  CpuCopy16(g8091C68, gPaletteBuffer + 0x1B1, 32);
  CpuCopy32(g8090C68, gVr + 0x14400 / 2, 0x1000);
  CpuCopy16(g8091D28, gPaletteBuffer + 0x1C0, 32);
  CpuCopy16(g8091CA8, gVr + 0x12400 / 2, 64);
  CpuCopy16(g8091CA8 + 0x40, gVr + 0x12800 / 2, 64);
}

void sub_0800A6C8 (void) {
}

void sub_0800A6CC (void) {
}

//almost the same as sub_800DAA4 in duel trunk
//the functions below are also repeated (the data is duplicated too, so the arrays are different)
void SortingMenuMain (void) {
  unsigned keepProcessing;
  gTrunkMenu.cursorState = gTrunkMenu.sortMode;
  sub_8009448();
  sub_800A8D8();
  LoadCharblock1();
  PlayMusic(0x37);
  SetVBlankCallback(sub_800A948);
  WaitForVBlank();
  keepProcessing = 1;
  while (keepProcessing == 1) {
    switch (TrunkSubmenuProcessInput()) {
      case 0x40:
        sub_800A778();
        break;
      case 0x80:
        sub_800A7C8();
        break;
      case 0x20:
        sub_800A818();
        break;
      case 0x10:
        sub_800A868();
        break;
      case 1:
        sub_800A8B8();
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
  sub_800A3D8(7);
  sub_800ABA8();
  sub_800A934();
}

extern unsigned char g8DFB610[];
extern unsigned char g8DFB61B[];
extern unsigned char g8DFB626[];
extern unsigned char g8DFB631[];
void ApplyNewSortMode (unsigned char);


void sub_800A778 (void) {
  gTrunkMenu.cursorState = g8DFB610[gTrunkMenu.cursorState];
  if (gTrunkMenu.cursorState < 10)
    sub_800A380(gTrunkMenu.cursorState);
  else
    sub_800A380(gTrunkMenu.sortMode);
  sub_800A8D8();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_800A7C8 (void) {
  gTrunkMenu.cursorState = g8DFB61B[gTrunkMenu.cursorState];
  if (gTrunkMenu.cursorState < 10)
    sub_800A380(gTrunkMenu.cursorState);
  else
    sub_800A380(gTrunkMenu.sortMode);
  sub_800A8D8();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_800A818 (void) {
  gTrunkMenu.cursorState = g8DFB626[gTrunkMenu.cursorState];
  if (gTrunkMenu.cursorState < 10)
    sub_800A380(gTrunkMenu.cursorState);
  else
    sub_800A380(gTrunkMenu.sortMode);
  sub_800A8D8();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_800A868 (void) {
  gTrunkMenu.cursorState = g8DFB631[gTrunkMenu.cursorState];
  if (gTrunkMenu.cursorState < 10)
    sub_800A380(gTrunkMenu.cursorState);
  else
    sub_800A380(gTrunkMenu.sortMode);
  sub_800A8D8();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_800A8B8 (void) {
  PlayMusic(0x37);
  if (gTrunkMenu.cursorState < 10) {
    gTrunkMenu.sortMode = gTrunkMenu.cursorState;
    ApplyNewSortMode(gTrunkMenu.sortMode);
  }
}

extern unsigned char g8DFB63C[];
extern unsigned char g8DFB647[];

void sub_800A8D8 (void) {
  union OamUnion* oamUnion = gOamBuffer + 6;
  oamUnion[0].oamU32[0] = g8DFB63C[gTrunkMenu.cursorState] |
                        (g8DFB647[gTrunkMenu.cursorState] << 16) |
                        0x40000000;
  oamUnion[0].oamU32[1] = 0xC120;
  oamUnion[1].oamU32[0] = g8DFB63C[gTrunkMenu.cursorState] |
                        (g8DFB647[gTrunkMenu.cursorState] << 16) |
                        0x40000800;
  oamUnion[1].oamU32[1] = 0x120;
}

void sub_800A934 (void) {
  union OamUnion* oamUnion = gOamBuffer + 6;
  oamUnion[0].oamU32[0] = 0;
  oamUnion[0].oamU32[1] = 0;
  oamUnion[1].oamU32[0] = 0;
  oamUnion[1].oamU32[1] = 0;
}

void sub_800A948 (void) {
  LoadOam();
  REG_DISPCNT = 0xBF00;
  REG_BLDALPHA = 6;
  REG_BLDY = 10;
  REG_BLDCNT |= 8;
}

void sub_800A978 (void) {
  DisableDisplay();
  REG_WIN0H = 240;
  REG_WIN0V = 24;
  REG_WIN1H = 980;
  REG_WIN1V = 0x486F;
  REG_WININ = 0x1E0E;
  REG_WINOUT = 0x103F;
  REG_BLDCNT = 0x28D2;
  REG_BLDALPHA = 16;
  REG_BLDY = 4;
  REG_BG0CNT = 0xF04;
  REG_BG1CNT = 0x1F0D;
  REG_BG2CNT = 0x170A;
  REG_BG3CNT = 0x703;
  gBG0VOFS = 0;
  gBG0HOFS = 0;
  gBG1VOFS = 248;
  gBG1HOFS = 0;
  gBG2VOFS = 253;
  gBG2HOFS = 4;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
}

void sub_800AB0C (void);
void sub_800AB10 (void);
void sub_800AB2C (void);
void sub_800AB30 (void);
void sub_800AB34 (void);
void sub_800AB38 (void);
void sub_800AB64 (void);
void sub_800AB74 (void);
void sub_800ABF8 (void);


void sub_800AA58 (unsigned char arg0) {
  switch (arg0) {
    case 1:
      SetVBlankCallback(sub_800A978);
      break;
    case 2:
      SetVBlankCallback(sub_800AB0C);
      break;
    case 3:
      SetVBlankCallback(sub_800AB10);
      break;
    case 4:
      SetVBlankCallback(sub_800AB2C);
      break;
    case 6:
      SetVBlankCallback(sub_800AB30);
      break;
    case 5:
      SetVBlankCallback(sub_800AB34);
      break;
    case 7:
      SetVBlankCallback(sub_800AB38);
      break;
    case 8:
      SetVBlankCallback(sub_800AB74);
      break;
    case 9:
      SetVBlankCallback(sub_800AB64);
      break;
  }
  WaitForVBlank();
}

void sub_800AB0C (void) {
}

void sub_800AB10 (void) {
  LoadOam();
  LoadPalettes();
  REG_DISPCNT = 0xFC << 7;
}

void sub_800AB2C (void) {
}

void sub_800AB30 (void) {
}

void sub_800AB34 (void) {
}

void sub_800AB38 (void) {
  LoadOam();
  sub_800ABF8();
  REG_DISPCNT |= 0x80 << 7;
  REG_DISPCNT &= 0xFEFF;
}

void sub_800AB64 (void) {
  LoadOam();
  LoadPalettes();
}

void sub_800AB74 (void) {
  LoadOam();
  LoadPalettes();
  sub_800ABF8();
  REG_DISPCNT |= 0x80 << 7;
  REG_DISPCNT &= 0xFEFF;
}

void sub_0800ABA4 (void) {
}

void sub_800ABA8 (void) {
  LoadVRAM();
}

void sub_800ABB4 (void) {
  LoadPalettes();
  LoadCharblock2();
  LoadCharblock3();
  LoadCharblock4();
  LoadOam();
}

void sub_800ABD0 (void) {
  LoadCharblock2();
  LoadCharblock3();
}

void sub_0800ABE0 (void) {
}

void sub_800ABE4 (void) {
  LoadCharblock2();
  LoadCharblock3();
  LoadCharblock4();
}

void sub_800ABF8 (void) {
  REG_WIN0H = 240;
  REG_WIN0V = 24;
  REG_WIN1H = 980;
  REG_WIN1V = 0x486F;
  REG_WININ = 0x1E0E;
  REG_WINOUT = 0x103F;
  REG_BLDCNT = 0x28D2;
  REG_BLDALPHA = 16;
  REG_BLDY = 4;
}

void sub_800AC50 (void) {
  LoadCharblock2();
  LoadCharblock3();
  LoadCharblock4();
}
