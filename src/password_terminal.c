#include "global.h"

#define BUTTON_OK 10
#define LAST_DISPLAY_DIGIT 7

struct PasswordTerminal {
  unsigned char currentDisplayDigit; // index of selected password digit; 0-7 from left to right
  unsigned char currentNumpadButton; // 0-10, where 0-9 are digits and 10 is "OK"
  unsigned char filler2[2];
  unsigned char displayDigitAnimationCounter; // selected display digit pulses constantly -- counts up from 0->30 then loops
  unsigned char numpadDigitAnimationCounter; // depress/highlight numpad digit on press -- counts down from 8->0
};
extern struct PasswordTerminal *sTerminal;

static unsigned short ProcessInput (void);
static void FadeToBlack (void);
static void InitPasswordTerminal (void);
static void HandleInputUp (void);
static void HandleInputDown (void);
static void HandleInputLeft (void);
static void HandleInputRight (void);
static void InitPasswordTerminalData (void);
static void MoveCurrentDisplayDigitLeft (void);
static void MoveCurrentDisplayDigitRight (void);
static void SetButtonToOK (void);
static void InputPasswordDigit (void);
static void UpdateNumpadDigitAnimationCounter (void);
static void ResetCurrentNumpadDigit (void);
static void ActivateDisplayDigitAnimation (void);
static unsigned char GetCurrentDisplayDigit (void);
static unsigned char GetCurrentNumpadButton (void);
static void UpdateNumpadAnimationCounter (void);
static unsigned GetNumpadDigitAnimationState (void);
static void StartNumpadDigitAnimation (void);
static void ResetNumpadDigitAnimation (void);
static void UpdateNumpadCursorSprite (void);
static void UpdatePasswordDigitSprites (void);
static void UpdateDisplayDigitSprite (void);
static void InitOAMBuffer (void);
static void LoadTerminalGraphics (void);
static void EnableTerminalDisplay (void);
static void EmptyFunc_8026014 (void);
static void InitializeTerminalDisplay (void);
static void RefreshGraphicsAndSprites (void);
static void RefreshSprites (void);

void SetVBlankCallback (void (*)(void));
void WaitForVBlank (void);
void UpdateFilteredInput_WithRepeat (void);
extern unsigned char gCardPasswordDigits[];
extern unsigned short gBLDCNT;
extern unsigned short gBLDY;
extern unsigned short gNewButtons;
extern unsigned short gFilteredInput;
extern unsigned short gOamBuffer[];

struct Oam {
  unsigned short unk0;
  unsigned short *oam;
};

extern struct Oam *gCursorSpritesStaticFrames[];
extern struct Oam *gCursorSpritesAnimatedFrames[];
extern struct Oam *gCardPasswordDigitSprites[];

extern unsigned char g80C1DD4[]; // ptr to compressed graphics data?
extern unsigned short g80C5840[]; // palette chunk?
extern unsigned g80C61B8[]; // ptr to compressed graphics data?
extern unsigned short g80C58C0[][30]; // tilemap/layers?
extern unsigned short g80C5EF0[]; // palette data?
extern unsigned short g80C5D70[]; // palette data?


unsigned PasswordTerminalMain (void) {
  unsigned ret = 0;
  unsigned keepProcessing = 1;
  FadeToBlack();
  InitPasswordTerminal();
  while (keepProcessing) {
    switch (ProcessInput()) {
      case REPEAT_DPAD_UP:
        ResetNumpadDigitAnimation();
        HandleInputUp();
        UpdateNumpadCursorSprite();
        UpdateDisplayDigitSprite();
        PlayMusic(SFX_MOVE_CURSOR);
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
      case REPEAT_DPAD_DOWN:
        ResetNumpadDigitAnimation();
        HandleInputDown();
        UpdateNumpadCursorSprite();
        UpdateDisplayDigitSprite();
        PlayMusic(SFX_MOVE_CURSOR);
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
      case REPEAT_DPAD_LEFT:
        ResetNumpadDigitAnimation();
        HandleInputLeft();
        UpdateNumpadCursorSprite();
        UpdateDisplayDigitSprite();
        PlayMusic(SFX_MOVE_CURSOR);
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
      case REPEAT_DPAD_RIGHT:
        ResetNumpadDigitAnimation();
        HandleInputRight();
        UpdateNumpadCursorSprite();
        UpdateDisplayDigitSprite();
        PlayMusic(SFX_MOVE_CURSOR);
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
      case NEW_L_BUTTON:
        ResetCurrentNumpadDigit();
        UpdateDisplayDigitSprite();
        MoveCurrentDisplayDigitLeft();
        ActivateDisplayDigitAnimation();
        UpdateDisplayDigitSprite();
        UpdateNumpadCursorSprite();
        PlayMusic(SFX_MOVE_CURSOR);
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
      case NEW_R_BUTTON:
        ResetCurrentNumpadDigit();
        UpdateDisplayDigitSprite();
        MoveCurrentDisplayDigitRight();
        ActivateDisplayDigitAnimation();
        UpdateDisplayDigitSprite();
        UpdateNumpadCursorSprite();
        PlayMusic(SFX_MOVE_CURSOR);
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
      case NEW_A_BUTTON:
        if (GetCurrentNumpadButton() == BUTTON_OK) {
          keepProcessing = 0;
          ret = 1;
          StartNumpadDigitAnimation();
          ResetCurrentNumpadDigit();
          goto label;
        }
        else {
          InputPasswordDigit();
          StartNumpadDigitAnimation();
          ResetCurrentNumpadDigit();
          UpdateDisplayDigitSprite();
          UpdateNumpadCursorSprite();
          if (GetCurrentDisplayDigit() == LAST_DISPLAY_DIGIT) {
            ResetNumpadDigitAnimation();
            SetButtonToOK();
            label:
            UpdateDisplayDigitSprite();
            UpdateNumpadCursorSprite();
          }
          else {
            MoveCurrentDisplayDigitRight();
            ActivateDisplayDigitAnimation();
            UpdateDisplayDigitSprite();
          }
          PlayMusic(SFX_SELECT);
          SetVBlankCallback(EmptyFunc_8026014);
          WaitForVBlank();
          RefreshSprites();
          break;
        }
        break;
      case NEW_B_BUTTON:
        ResetCurrentNumpadDigit();
        UpdateDisplayDigitSprite();
        MoveCurrentDisplayDigitLeft();
        ActivateDisplayDigitAnimation();
        UpdateDisplayDigitSprite();
        UpdateNumpadCursorSprite();
        PlayMusic(SFX_MOVE_CURSOR);
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
      case NEW_SELECT_BUTTON:
      case NEW_START_BUTTON:
        ResetNumpadDigitAnimation();
        SetButtonToOK();
        UpdateDisplayDigitSprite();
        UpdateNumpadCursorSprite();
        PlayMusic(SFX_MOVE_CURSOR);
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
      default:
        UpdateDisplayDigitSprite();
        UpdateNumpadCursorSprite();
        SetVBlankCallback(EmptyFunc_8026014);
        WaitForVBlank();
        RefreshSprites();
        break;
    }
    UpdateNumpadDigitAnimationCounter();
    UpdateNumpadAnimationCounter();
  }
  while (TRUE) {
    UpdateDisplayDigitSprite();
    UpdateNumpadCursorSprite();
    SetVBlankCallback(EmptyFunc_8026014);
    WaitForVBlank();
    if (!GetNumpadDigitAnimationState())
      break;
    UpdateNumpadDigitAnimationCounter();
    UpdateNumpadAnimationCounter();
  }
  return ret;
}

static unsigned short ProcessInput (void) {
  unsigned char i;
  unsigned short ret = 0;
  unsigned short mask;
  UpdateFilteredInput_WithRepeat();
  mask = 0x1;
  if (gNewButtons & ANY_BUTTON) {
    for (i = 0; i < NUM_BUTTONS; i++) {
      if (mask & gNewButtons)
        ret = mask;
      mask <<= 1;
    }
  }
  mask = 0x10;
  if (gFilteredInput & (L_BUTTON | R_BUTTON | DPAD_ANY)) {
    for (i = 0; i < 6; i++) {
      if (mask & gFilteredInput)
        ret = mask;
      mask <<= 1;
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

static void InitPasswordTerminal (void) {
  InitPasswordTerminalData();
  InitOAMBuffer();
  LoadTerminalGraphics();
  UpdatePasswordDigitSprites();
  UpdateNumpadCursorSprite();
  SetVBlankCallback(InitializeTerminalDisplay);
  WaitForVBlank();
  RefreshGraphicsAndSprites();
  SetVBlankCallback(EnableTerminalDisplay);
  WaitForVBlank();
}

void FadeInBlendEffect (void) {
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
      sTerminal->currentNumpadButton = BUTTON_OK;
      break;
    case 9:
      sTerminal->currentNumpadButton = BUTTON_OK;
      break;
    case BUTTON_OK:
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
      sTerminal->currentNumpadButton = BUTTON_OK;
      break;
    case 3:
      sTerminal->currentNumpadButton = BUTTON_OK;
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
    case BUTTON_OK:
      sTerminal->currentNumpadButton = 8;
      break;
  }
}

static void HandleInputLeft (void) {
  switch (sTerminal->currentNumpadButton) {
    case 0:
      sTerminal->currentNumpadButton = BUTTON_OK;
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
    case BUTTON_OK:
      sTerminal->currentNumpadButton = 0;
      break;
  }
}

static void HandleInputRight (void) {
  switch (sTerminal->currentNumpadButton) {
    case 0:
      sTerminal->currentNumpadButton = BUTTON_OK;
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
    case BUTTON_OK:
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
  sTerminal->displayDigitAnimationCounter = 0;
  sTerminal->numpadDigitAnimationCounter = 0;
}

static void sub_8025BA0 (void) {
}

static void MoveCurrentDisplayDigitLeft (void) {
  if (sTerminal->currentDisplayDigit == 0)
    sTerminal->currentDisplayDigit = LAST_DISPLAY_DIGIT;
  else
    sTerminal->currentDisplayDigit--;
}

static void MoveCurrentDisplayDigitRight (void) {
  if (sTerminal->currentDisplayDigit >= LAST_DISPLAY_DIGIT)
    sTerminal->currentDisplayDigit = 0;
  else
    sTerminal->currentDisplayDigit++;
}

static void SetButtonToOK (void) {
  sTerminal->currentNumpadButton = BUTTON_OK;
}

static void InputPasswordDigit (void) {
  if (sTerminal->currentNumpadButton < 10)
    gCardPasswordDigits[sTerminal->currentDisplayDigit] = sTerminal->currentNumpadButton;
}

static void UpdateNumpadDigitAnimationCounter (void) {
  if (sTerminal->displayDigitAnimationCounter >= 30)
    sTerminal->displayDigitAnimationCounter = 0;
  else
    sTerminal->displayDigitAnimationCounter++;
}

// no highlight for 15 frames (0-14)
static void ResetCurrentNumpadDigit (void) {
  sTerminal->displayDigitAnimationCounter = 0;
}

// highlight for 15 frames (15-29)
static void ActivateDisplayDigitAnimation (void) {
  sTerminal->displayDigitAnimationCounter = 15;
}

static unsigned char GetCurrentDisplayDigit (void) {
  return sTerminal->currentDisplayDigit;
}

static unsigned char GetCurrentNumpadButton (void) {
  return sTerminal->currentNumpadButton;
}

// 15-29 = highlighted
// 0-14 = normal
static unsigned char GetDisplayDigitAnimationPhase (void) {
  return sTerminal->displayDigitAnimationCounter > 15;
}

static void UpdateNumpadAnimationCounter (void) {
  if (sTerminal->numpadDigitAnimationCounter)
    sTerminal->numpadDigitAnimationCounter--;
}

// 0 = no animation (unpressed, no highlight)
// 1 = early frames of animation (pressed, weak highlight)
// 2 = final frames of animation (pressed, strong highlight)
static unsigned GetNumpadDigitAnimationState (void) {
  unsigned char ret = 0;
  unsigned char temp = sTerminal->numpadDigitAnimationCounter;
  if (temp) {
    ret = 1;
    temp -= 4;
    if (temp < 2)
      ret = 2;
  }
  return ret;
}

static void StartNumpadDigitAnimation (void) {
  sTerminal->numpadDigitAnimationCounter = 8;
}

static void ResetNumpadDigitAnimation (void) {
  sTerminal->numpadDigitAnimationCounter = 0;
}

static void UpdateNumpadCursorSprite (void) {
  unsigned char cursorPos = GetCurrentNumpadButton();
  unsigned char numpadDigitAnimationState = GetNumpadDigitAnimationState();
  unsigned short pos;
  if (numpadDigitAnimationState == 0) {
    pos = gCursorSpritesStaticFrames[cursorPos]->oam[0] & 0xFF;
    pos += 48;
    gOamBuffer[8 * 4] = gCursorSpritesStaticFrames[cursorPos]->oam[0] & 0xFF00 | pos & 0xFF;
    pos = (gCursorSpritesStaticFrames[cursorPos]->oam[1] & 0x1FF);
    pos += 72;
    gOamBuffer[8 * 4 + 1] = gCursorSpritesStaticFrames[cursorPos]->oam[1] & 0xFE00 | pos & 0x1FF;
    gOamBuffer[8 * 4 + 2] = gCursorSpritesStaticFrames[cursorPos]->oam[2];
    gOamBuffer[8 * 4 + 3] = 0;
  }
  else {
    struct Oam *oam;
    numpadDigitAnimationState -= 1;
    oam = gCursorSpritesAnimatedFrames[cursorPos];
    pos = oam[numpadDigitAnimationState].oam[0] & 0xFF;
    pos += 48;
    gOamBuffer[8 * 4] = oam[numpadDigitAnimationState].oam[0] & 0xFF00 | pos & 0xFF;
    pos = oam[numpadDigitAnimationState].oam[1] & 0x1FF;
    pos += 72;
    gOamBuffer[8 * 4 + 1] = oam[numpadDigitAnimationState].oam[1] & 0xFE00 | pos & 0x1FF;
    gOamBuffer[8 * 4 + 2] = oam[numpadDigitAnimationState].oam[2];
    gOamBuffer[8 * 4 + 3] = 0;
  }
}

static void UpdatePasswordDigitSprites (void) {
  unsigned char i;
  for (i = 0; i < 8; i++) {
    unsigned char digit = gCardPasswordDigits[i];
    unsigned short var = (gCardPasswordDigitSprites[digit]->oam[0] & 0xFF) + 18;
    gOamBuffer[i * 4] = gCardPasswordDigitSprites[digit]->oam[0] & 0xFF00 | var & 0xFF;
    var = gCardPasswordDigitSprites[digit]->oam[1] & 0xFF;
    var += i * 16 + 56;
    gOamBuffer[i * 4 + 1] = gCardPasswordDigitSprites[digit]->oam[1] & 0xFE00 | var & 0x1FF;
    var = gCardPasswordDigitSprites[digit]->oam[2] & 0xF000;
    var = ((var << 16) + 0x30000000) >> 16;
    gOamBuffer[i * 4 + 2] = gCardPasswordDigitSprites[digit]->oam[2] & 0xFFF | var & 0xF000;
    gOamBuffer[i * 4 + 3] = 0;
  }
}

/*
static void UpdateDisplayDigitSprite (void) {
  unsigned char temp = GetCurrentDisplayDigit();
  unsigned char temp2 = gCardPasswordDigits[temp];
  unsigned short var;
  temp2 += GetDisplayDigitAnimationPhase() * 10;
  var = (gCardPasswordDigitSprites[temp2]->oam[0] & 0xFF) + 18;
  gOamBuffer[temp * 4] = gCardPasswordDigitSprites[temp2]->oam[0] & 0xFF00 | var & 0xFF;
  var = gCardPasswordDigitSprites[temp2]->oam[1] & 0xFF;
  var += temp * 16 + 56;
  gOamBuffer[temp * 4 + 1] = gCardPasswordDigitSprites[temp2]->oam[1] & 0xFE00 | var & 0x1FF;
  //var = ?;
  gOamBuffer[temp * 4 + 2] = gCardPasswordDigitSprites[temp2]->oam[2] & 0xFFF | var;
  gOamBuffer[temp * 4 + 3] = 0;
}*/

NAKED
static void UpdateDisplayDigitSprite (void) {
  asm_unified("push {r4, r5, r6, lr}\n\
	mov r6, r8\n\
	push {r6}\n\
	bl GetCurrentDisplayDigit\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r0, _08025F24\n\
	adds r0, r4, r0\n\
	ldrb r5, [r0]\n\
	bl GetDisplayDigitAnimationPhase\n\
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

static void LoadTerminalGraphics (void) {
  unsigned i;
  HuffUnCompAndDeltaDecode(g80C1DD4, gBgVram.cbb0, 0x4000);
  CpuCopy32(g80C5840, gPaletteBuffer, 0x80);
  for (i = 0; i < 20; i++)
    CpuCopy32(g80C58C0[i], gBgVram.sbb1F[i], 60);
  LZ77UnCompWram(g80C61B8, gBgVram.cbb4);
  CpuCopy32(g80C5EF0, gPaletteBuffer + 256, 96);
  CpuCopy32(g80C5D70, gPaletteBuffer + 256 + 48, 64);
}

static void EnableTerminalDisplay (void) {
  LoadPalettes();
  REG_DISPCNT = DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
}

static void EmptyFunc_8026014 (void) {
}

static void sub_8026018 (void) {
}

static void InitializeTerminalDisplay (void) {
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

static void RefreshGraphicsAndSprites (void) {
  LoadVRAM();
  LoadOam();
}

static void RefreshSprites (void) {
  LoadOam();
}
