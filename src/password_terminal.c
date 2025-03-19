#include "global.h"

struct PasswordTerminal {
  unsigned char currentDisplayDigit;
  unsigned char currentNumpadButton;
  unsigned char filler2[2];
  unsigned char displayAnimationCounter;
  unsigned char numpadAnimationCounter;
};
extern struct PasswordTerminal *sTerminal;

static unsigned short ProcessInput (void);
static void FadeToBlack (void);
static void sub_80258AC (void);
static void HandleInputUp (void);
static void HandleInputDown (void);
static void HandleInputLeft (void);
static void HandleInputRight (void);
static void InitPasswordTerminalData (void);
static void sub_8025BA4 (void);
static void MoveCurrentDisplayDigitRight (void);
static void SetButtonToOK (void);
static void sub_8025BEC (void);
static void UpdateDisplayCounter (void);
static void sub_8025C24 (void);
static void sub_8025C34 (void);
static unsigned char sub_8025C44 (void);
static unsigned char GetNumpadCursorState (void);
static void UpdateNumpadCounter (void);
static unsigned sub_8025C88 (void);
static void InitNumpadCounter (void);
static void sub_8025CBC (void);
static void sub_8025CCC (void);
static void sub_8025DB4 (void);
static void sub_8025E80 (void);
static void InitOAMBuffer (void);
static void sub_8025F64 (void);
static void sub_8025FFC (void);
static void sub_8026014 (void);
static void sub_802601C (void);
static void sub_8026060 (void);
static void sub_8026070 (void);





void LoadBlendingRegs (void);
void LoadPalettes(void);
void SetVBlankCallback (void (*)(void));
void WaitForVBlank (void);
void sub_802618C (void);
extern unsigned char gCardPasswordDigits[];
extern unsigned short gBLDCNT;
extern unsigned short gBLDY;
extern unsigned short gNewButtons;
extern unsigned short gUnk2021DCC;
extern unsigned short gOamBuffer[];

struct Oam {
  unsigned short unk0;
  unsigned short *oam;
};

extern struct Oam *gE01248[];
extern struct Oam *gE01328[];
extern struct Oam *gE0119C[];

extern unsigned char g80C1DD4[];
extern unsigned short g80C5840[];
extern unsigned g80C61B8[];
extern unsigned short g80C58C0[][30];
extern unsigned short g80C5EF0[];
extern unsigned short g80C5D70[];


unsigned PasswordTerminalMain (void) {
  unsigned ret = 0;
  unsigned keepProcessing = 1;
  FadeToBlack();
  sub_80258AC();
  while (keepProcessing) {
    switch (ProcessInput()) {
      case 0x40:
        sub_8025CBC();
        HandleInputUp();
        sub_8025CCC();
        sub_8025E80();
        PlayMusic(0x36);
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
      case 0x80:
        sub_8025CBC();
        HandleInputDown();
        sub_8025CCC();
        sub_8025E80();
        PlayMusic(0x36);
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
      case 0x20:
        sub_8025CBC();
        HandleInputLeft();
        sub_8025CCC();
        sub_8025E80();
        PlayMusic(0x36);
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
      case 0x10:
        sub_8025CBC();
        HandleInputRight();
        sub_8025CCC();
        sub_8025E80();
        PlayMusic(0x36);
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
      case 0x200:
        sub_8025C24();
        sub_8025E80();
        sub_8025BA4();
        sub_8025C34();
        sub_8025E80();
        sub_8025CCC();
        PlayMusic(0x36);
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
      case 0x100:
        sub_8025C24();
        sub_8025E80();
        MoveCurrentDisplayDigitRight();
        sub_8025C34();
        sub_8025E80();
        sub_8025CCC();
        PlayMusic(0x36);
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
      case 1:
        if (GetNumpadCursorState() == 10) {
          keepProcessing = 0;
          ret = 1;
          InitNumpadCounter();
          sub_8025C24();
          goto label;
        }
        else {
          sub_8025BEC();
          InitNumpadCounter();
          sub_8025C24();
          sub_8025E80();
          sub_8025CCC();
          if (sub_8025C44() == 7) {
            sub_8025CBC();
            SetButtonToOK();
            label:
            sub_8025E80();
            sub_8025CCC();
          }
          else {
            MoveCurrentDisplayDigitRight();
            sub_8025C34();
            sub_8025E80();
          }
          PlayMusic(0x37);
          SetVBlankCallback(sub_8026014);
          WaitForVBlank();
          sub_8026070();
          break;
        }
        break;
      case 2:
        sub_8025C24();
        sub_8025E80();
        sub_8025BA4();
        sub_8025C34();
        sub_8025E80();
        sub_8025CCC();
        PlayMusic(0x36);
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
      case 4:
      case 8:
        sub_8025CBC();
        SetButtonToOK();
        sub_8025E80();
        sub_8025CCC();
        PlayMusic(0x36);
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
      default:
        sub_8025E80();
        sub_8025CCC();
        SetVBlankCallback(sub_8026014);
        WaitForVBlank();
        sub_8026070();
        break;
    }
    UpdateDisplayCounter();
    UpdateNumpadCounter();
  }
  while (1) {
    sub_8025E80();
    sub_8025CCC();
    SetVBlankCallback(sub_8026014);
    WaitForVBlank();
    if (!sub_8025C88())
      break;
    UpdateDisplayCounter();
    UpdateNumpadCounter();
  }
  return ret;
}

static unsigned short ProcessInput (void) {
  unsigned char i;
  unsigned short ret = 0;
  unsigned short r2;
  sub_802618C();
  r2 = 1;
  if (gNewButtons & KEYS_MASK) {
    for (i = 0; i < 10; i++) {
      if (r2 & gNewButtons)
        ret = r2;
      r2 <<= 1;
    }
  }
  r2 = 0x10;
  if (gUnk2021DCC & 0x3F0) {
    for (i = 0; i < 6; i++) {
      if (r2 & gUnk2021DCC)
        ret = r2;
      r2 <<= 1;
    }
  }
  return ret;
}

static void FadeToBlack (void) {
  unsigned short i, j;
  for (i = 0; i < 16; i++) {
    for (j = 0; j < 512; j++) {
      struct PlttData *pltt = (struct PlttData*)&gPaletteBuffer[j];
      if (pltt->r > 1)
        pltt->r -= 2;
      else
        pltt->r = 0;
      if (pltt->g > 1)
        pltt->g -= 2;
      else
        pltt->g = 0;
      if (pltt->b > 1)
        pltt->b -= 2;
      else
        pltt->b = 0;
    }
    SetVBlankCallback(LoadPalettes);
    WaitForVBlank();
  }
}

static void sub_80258AC (void) {
  InitPasswordTerminalData();
  InitOAMBuffer();
  sub_8025F64();
  sub_8025DB4();
  sub_8025CCC();
  SetVBlankCallback(sub_802601C);
  WaitForVBlank();
  sub_8026060();
  SetVBlankCallback(sub_8025FFC);
  WaitForVBlank();
}

void sub_80258E8 (void) {
  unsigned short i;
  gBLDCNT = 0xFF;
  for (i = 0; i < 16; i++) {
    gBLDY = i & 31; //%32?
    SetVBlankCallback(LoadBlendingRegs);
    WaitForVBlank();
  }
}

static void HandleInputUp (void) {
  switch (sTerminal->currentNumpadButton) {
    case 0:
      sTerminal->currentNumpadButton = 1;
      break;
    case 1:
      sTerminal->currentNumpadButton = 4;
      break;
    case 2:
      sTerminal->currentNumpadButton = 5;
      break;
    case 3:
      sTerminal->currentNumpadButton = 6;
      break;
    case 4:
      sTerminal->currentNumpadButton = 7;
      break;
    case 5:
      sTerminal->currentNumpadButton = 8;
      break;
    case 6:
      sTerminal->currentNumpadButton = 9;
      break;
    case 7:
      sTerminal->currentNumpadButton = 0;
      break;
    case 8:
      sTerminal->currentNumpadButton = 10;
      break;
    case 9:
      sTerminal->currentNumpadButton = 10;
      break;
    case 10:
      sTerminal->currentNumpadButton = 2;
      break;
  }
}

static void HandleInputDown (void) {
  switch (sTerminal->currentNumpadButton) {
    case 0:
      sTerminal->currentNumpadButton = 7;
      break;
    case 1:
      sTerminal->currentNumpadButton = 0;
      break;
    case 2:
      sTerminal->currentNumpadButton = 10;
      break;
    case 3:
      sTerminal->currentNumpadButton = 10;
      break;
    case 4:
      sTerminal->currentNumpadButton = 1;
      break;
    case 5:
      sTerminal->currentNumpadButton = 2;
      break;
    case 6:
      sTerminal->currentNumpadButton = 3;
      break;
    case 7:
      sTerminal->currentNumpadButton = 4;
      break;
    case 8:
      sTerminal->currentNumpadButton = 5;
      break;
    case 9:
      sTerminal->currentNumpadButton = 6;
      break;
    case 10:
      sTerminal->currentNumpadButton = 8;
      break;
  }
}

static void HandleInputLeft (void) {
  switch (sTerminal->currentNumpadButton) {
    case 0:
      sTerminal->currentNumpadButton = 10;
      break;
    case 1:
      sTerminal->currentNumpadButton = 3;
      break;
    case 2:
      sTerminal->currentNumpadButton = 1;
      break;
    case 3:
      sTerminal->currentNumpadButton = 2;
      break;
    case 4:
      sTerminal->currentNumpadButton = 6;
      break;
    case 5:
      sTerminal->currentNumpadButton = 4;
      break;
    case 6:
      sTerminal->currentNumpadButton = 5;
      break;
    case 7:
      sTerminal->currentNumpadButton = 9;
      break;
    case 8:
      sTerminal->currentNumpadButton = 7;
      break;
    case 9:
      sTerminal->currentNumpadButton = 8;
      break;
    case 10:
      sTerminal->currentNumpadButton = 0;
      break;
  }
}

static void HandleInputRight (void) {
  switch (sTerminal->currentNumpadButton) {
    case 0:
      sTerminal->currentNumpadButton = 10;
      break;
    case 1:
      sTerminal->currentNumpadButton = 2;
      break;
    case 2:
      sTerminal->currentNumpadButton = 3;
      break;
    case 3:
      sTerminal->currentNumpadButton = 1;
      break;
    case 4:
      sTerminal->currentNumpadButton = 5;
      break;
    case 5:
      sTerminal->currentNumpadButton = 6;
      break;
    case 6:
      sTerminal->currentNumpadButton = 4;
      break;
    case 7:
      sTerminal->currentNumpadButton = 8;
      break;
    case 8:
      sTerminal->currentNumpadButton = 9;
      break;
    case 9:
      sTerminal->currentNumpadButton = 7;
      break;
    case 10:
      sTerminal->currentNumpadButton = 0;
      break;
  }
}

static void InitPasswordTerminalData (void) {
  unsigned char i;
  for (i = 0; i < 8; i++)
    gCardPasswordDigits[i] = 0;
  sTerminal->currentDisplayDigit = 0;
  sTerminal->currentNumpadButton = 1;
  sTerminal->displayAnimationCounter = 0;
  sTerminal->numpadAnimationCounter = 0;
}

static void sub_8025BA0 (void) {
}

static void sub_8025BA4 (void) {
  if (sTerminal->currentDisplayDigit == 0)
    sTerminal->currentDisplayDigit = 7;
  else
    sTerminal->currentDisplayDigit--;
}

static void MoveCurrentDisplayDigitRight (void) {
  if (sTerminal->currentDisplayDigit >= 7)
    sTerminal->currentDisplayDigit = 0;
  else
    sTerminal->currentDisplayDigit++;
}

static void SetButtonToOK (void) {
  sTerminal->currentNumpadButton = 10;
}

static void sub_8025BEC (void) {
  if (sTerminal->currentNumpadButton < 10)
    gCardPasswordDigits[sTerminal->currentDisplayDigit] = sTerminal->currentNumpadButton;
}

static void UpdateDisplayCounter (void) {
  if (sTerminal->displayAnimationCounter >= 30)
    sTerminal->displayAnimationCounter = 0;
  else
    sTerminal->displayAnimationCounter++;
}

static void sub_8025C24 (void) {
  sTerminal->displayAnimationCounter = 0;
}

static void sub_8025C34 (void) {
  sTerminal->displayAnimationCounter = 15;
}

static unsigned char sub_8025C44 (void) {
  return sTerminal->currentDisplayDigit;
}

static unsigned char GetNumpadCursorState (void) {
  return sTerminal->currentNumpadButton;
}

static unsigned char sub_8025C5C (void) {
  unsigned char ret = 0;
  if (sTerminal->displayAnimationCounter > 15)
    ret = 1;
  return ret;
}

static void UpdateNumpadCounter (void) {
  if (sTerminal->numpadAnimationCounter)
    sTerminal->numpadAnimationCounter--;
}

static unsigned sub_8025C88 (void) {
  unsigned char ret = 0;
  unsigned char temp = sTerminal->numpadAnimationCounter;
  if (temp) {
    ret = 1;
    temp -= 4;
    if (temp < 2)
      ret = 2;
  }
  return ret;
}

static void InitNumpadCounter (void) {
  sTerminal->numpadAnimationCounter = 8;
}

static void sub_8025CBC (void) {
  sTerminal->numpadAnimationCounter = 0;
}

static void sub_8025CCC (void) {
  unsigned char cursorState = GetNumpadCursorState();
  unsigned char r6 = sub_8025C88();
  unsigned short pos;
  if (r6 == 0) {
    pos = gE01248[cursorState]->oam[0] & 0xFF;
    pos += 48;
    gOamBuffer[8 * 4] = gE01248[cursorState]->oam[0] & 0xFF00 | pos & 0xFF;
    pos = (gE01248[cursorState]->oam[1] & 0x1FF);
    pos += 72;
    gOamBuffer[8 * 4 + 1] = gE01248[cursorState]->oam[1] & 0xFE00 | pos & 0x1FF;
    gOamBuffer[8 * 4 + 2] = gE01248[cursorState]->oam[2];
    gOamBuffer[8 * 4 + 3] = 0;
  }
  else {
    struct Oam *oam;
    r6 -= 1;
    oam = gE01328[cursorState];
    pos = oam[r6].oam[0] & 0xFF;
    pos += 48;
    gOamBuffer[8 * 4] = oam[r6].oam[0] & 0xFF00 | pos & 0xFF;
    pos = oam[r6].oam[1] & 0x1FF;
    pos += 72;
    gOamBuffer[8 * 4 + 1] = oam[r6].oam[1] & 0xFE00 | pos & 0x1FF;
    gOamBuffer[8 * 4 + 2] = oam[r6].oam[2];
    gOamBuffer[8 * 4 + 3] = 0;
  }
}

static void sub_8025DB4 (void) {
  unsigned char i;
  for (i = 0; i < 8; i++) {
    unsigned char temp = gCardPasswordDigits[i];
    unsigned short var = (gE0119C[temp]->oam[0] & 0xFF) + 18;
    gOamBuffer[i * 4] = gE0119C[temp]->oam[0] & 0xFF00 | var & 0xFF;
    var = gE0119C[temp]->oam[1] & 0xFF;
    var += i * 16 + 56;
    gOamBuffer[i * 4 + 1] = gE0119C[temp]->oam[1] & 0xFE00 | var & 0x1FF;
    var = gE0119C[temp]->oam[2] & 0xF000;
    var = ((var << 16) + 0x30000000) >> 16;
    gOamBuffer[i * 4 + 2] = gE0119C[temp]->oam[2] & 0xFFF | var & 0xF000;
    gOamBuffer[i * 4 + 3] = 0;
  }
}

/*
static void sub_8025E80 (void) {
  unsigned char temp = sub_8025C44();
  unsigned char temp2 = gCardPasswordDigits[temp];
  unsigned short var;
  temp2 += sub_8025C5C() * 10;
  var = (gE0119C[temp2]->oam[0] & 0xFF) + 18;
  gOamBuffer[temp * 4] = gE0119C[temp2]->oam[0] & 0xFF00 | var & 0xFF;
  var = gE0119C[temp2]->oam[1] & 0xFF;
  var += temp * 16 + 56;
  gOamBuffer[temp * 4 + 1] = gE0119C[temp2]->oam[1] & 0xFE00 | var & 0x1FF;
  //var = ?;
  gOamBuffer[temp * 4 + 2] = gE0119C[temp2]->oam[2] & 0xFFF | var;
  gOamBuffer[temp * 4 + 3] = 0;
}*/

NAKED
static void sub_8025E80 (void) {
  asm_unified("push {r4, r5, r6, lr}\n\
	mov r6, r8\n\
	push {r6}\n\
	bl sub_8025C44\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r0, _08025F24\n\
	adds r0, r4, r0\n\
	ldrb r5, [r0]\n\
	bl sub_8025C5C\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	lsls r1, r0, #2\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #1\n\
	adds r5, r5, r1\n\
	lsls r5, r5, #0x18\n\
	ldr r0, _08025F28\n\
	lsrs r5, r5, #0x16\n\
	adds r5, r5, r0\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r6, [r0]\n\
	movs r3, #0xff\n\
	adds r0, r3, #0\n\
	ands r0, r6\n\
	adds r0, #0x12\n\
	ldr r1, _08025F2C\n\
	mov r8, r1\n\
	lsls r2, r4, #3\n\
	add r2, r8\n\
	movs r1, #0xff\n\
	lsls r1, r1, #8\n\
	ands r1, r6\n\
	ands r0, r3\n\
	orrs r1, r0\n\
	movs r6, #0\n\
	strh r1, [r2]\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r1, [r0, #2]\n\
	lsls r0, r4, #4\n\
	adds r0, #0x38\n\
	ands r3, r1\n\
	adds r3, r3, r0\n\
	lsls r4, r4, #2\n\
	adds r2, r4, #1\n\
	lsls r2, r2, #1\n\
	add r2, r8\n\
	movs r0, #0xfe\n\
	lsls r0, r0, #8\n\
	ands r0, r1\n\
	ldr r1, _08025F30\n\
	ands r3, r1\n\
	orrs r0, r3\n\
	strh r0, [r2]\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r3, [r0, #4]\n\
	lsrs r1, r3, #0xc\n\
	adds r1, #3\n\
	lsls r1, r1, #0x1c\n\
	adds r2, r4, #2\n\
	lsls r2, r2, #1\n\
	add r2, r8\n\
	ldr r0, _08025F34\n\
	ands r0, r3\n\
	lsrs r1, r1, #0x10\n\
	orrs r0, r1\n\
	strh r0, [r2]\n\
	adds r4, #3\n\
	lsls r4, r4, #1\n\
	add r4, r8\n\
	strh r6, [r4]\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08025F24: .4byte gCardPasswordDigits\n\
_08025F28: .4byte 0x08E0119C\n\
_08025F2C: .4byte gOamBuffer\n\
_08025F30: .4byte 0x000001FF\n\
_08025F34: .4byte 0x00000FFF");
}

static void InitOAMBuffer (void) {
  unsigned i;
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
}

static void sub_8025F64 (void) {
  unsigned i;
  HuffUnCompAndDeltaDecode(g80C1DD4, gBgVram.cbb0, 0x4000);
  CpuCopy32(g80C5840, gPaletteBuffer, 0x80);
  for (i = 0; i < 20; i++)
    CpuCopy32(g80C58C0[i], gBgVram.sbb1F[i], 60);
  LZ77UnCompWram(g80C61B8, gBgVram.cbb4);
  CpuCopy32(g80C5EF0, gPaletteBuffer + 256, 96);
  CpuCopy32(g80C5D70, gPaletteBuffer + 256 + 48, 64);
}

static void sub_8025FFC (void) {
  LoadPalettes();
  REG_DISPCNT = DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
}

static void sub_8026014 (void) {
}

static void sub_8026018 (void) {
}

static void sub_802601C (void) {
  DisableDisplay();
  REG_BLDCNT = 0;
  REG_BLDALPHA = 0;
  REG_BLDY = 0;
  REG_BG3CNT = 0x1F03;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
}

static void sub_802605C (void) {
}

static void sub_8026060 (void) {
  LoadVRAM();
  LoadOam();
}

static void sub_8026070 (void) {
  LoadOam();
}
