#include "global.h"

//TODO: rename file to game_menu.c?

struct GameMenuData {
  unsigned char action;
  unsigned char cursorState;
  unsigned char textAnimationState;
  unsigned char textAnimationCounter;
  unsigned char cursorAnimationState;
  unsigned char cursorAnimationCounter;
};
extern struct GameMenuData sGameMenuData;

static u16 ProcessInput (void); //ProcessInput, ProcessKeyInput?
static void sub_80246D0 (struct GameMenuData* menuData);
static void HandleInputUp (struct GameMenuData* menuData);
static void HandleInputDown (struct GameMenuData* menuData);
static void HandleInputA (struct GameMenuData* menuData);
static void sub_802489C (struct GameMenuData* menuData);
static void sub_80248D0 (struct GameMenuData* menuData);
static void sub_802491C (struct GameMenuData* menuData);
static void HandleInputB (struct GameMenuData* menuData);
static void sub_80249C8 (struct GameMenuData* menuData);
static void InitActionAndCursor (struct GameMenuData* menuData);
static void UpdateCursorOnInputUp (struct GameMenuData* menuData);
static void UpdateCursorOnInputDown (struct GameMenuData* menuData);
static void sub_8024A54 (struct GameMenuData* menuData);
static void sub_8024A64 (struct GameMenuData* menuData);
static void InitTextAnimationData (struct GameMenuData* menuData);
static void sub_8024A94 (struct GameMenuData* menuData);
static void sub_8024AB8 (struct GameMenuData* menuData);
static void InitCursorAnimationData (struct GameMenuData* menuData);
static void sub_8024B54 (struct GameMenuData* menuData);
static void sub_8024B64 (struct GameMenuData* menuData);
static void sub_8024B74 (struct GameMenuData* menuData);
static void sub_8024B84 (struct GameMenuData* menuData);



void sub_8024ECC (struct GameMenuData* menuData);
void FadeToBlack (void);

void UpdateFilteredInput_WithRepeat (void);
void sub_8024F40 (struct GameMenuData* menuData);
void sub_8024F6C (struct GameMenuData* menuData);
void sub_8024FB8 (struct GameMenuData* menuData);
void sub_8025000 (struct GameMenuData* menuData);
void WaitForVBlank (void);
void sub_801FB50 (u8 *, u8);
void sub_8025048 (); //takes a u8 *?
void sub_8025108 (); //takes a u8 *?

extern u8 g2021C8C[]; //change type?
extern u16 gNewButtons;
extern u16 gFilteredInput;

struct OamStuff {
  u16 unk0;
  u16 unk2;
  u16 unk4;
};

extern struct OamStuff gOam[];
struct Unk8FC488C {
  u8 unk0;
  u8 unk1;
  struct OamStuff *unk4;
};
unsigned char LfsrNextByte (void);
void LinkDuelMenu (void);
void TradeMenuMain (void);
extern u8 g80C1CF8[];
extern u8 g80C1CFC[];
extern u8 g80C1D00[];
extern u8 g80C1D09[];
extern u8 g80C1D24[];
extern u8 g80C1D3E[];
extern u8 g80C1D42[];
extern u8 g80C1D56[];
extern u8 g80C1D58[];
extern u8 g80C1D62[];
extern u8 g80C1D65[];
extern u8 g80C1D68[];
extern u8 g80C1D6B[];
extern u8 g80C1D6E[];
extern u8 g80C1D71[];
extern struct Unk8FC488C *g8FC488C[];

void GameMenuMain (void) {
  PlayMusic(MUSIC_DECK_ADJUSTMENT_MENU);
  InitActionAndCursor(&sGameMenuData);
  InitTextAnimationData(&sGameMenuData);
  InitCursorAnimationData(&sGameMenuData);
  sub_8024ECC(&sGameMenuData);
  while (1) {
    LfsrNextByte();
    if (sGameMenuData.action == 1)
      break;
    if (sGameMenuData.action == 3) {
      FadeToBlack();
      LinkDuelMenu();
      PlayMusic(MUSIC_DECK_ADJUSTMENT_MENU);
      sGameMenuData.action = 0;
      InitTextAnimationData(&sGameMenuData);
      InitCursorAnimationData(&sGameMenuData);
      sub_8024ECC(&sGameMenuData);
    }
    if (sGameMenuData.action == 4) {
      FadeToBlack();
      TradeMenuMain();
      PlayMusic(MUSIC_DECK_ADJUSTMENT_MENU);
      sGameMenuData.action = 0;
      InitTextAnimationData(&sGameMenuData);
      InitCursorAnimationData(&sGameMenuData);
      sub_8024ECC(&sGameMenuData);
    }
    switch (ProcessInput()) {
      case 0x40:
        HandleInputUp(&sGameMenuData);
        break;
      case 0x80:
        HandleInputDown(&sGameMenuData);
        break;
      case 0x1:
        HandleInputA(&sGameMenuData);
        break;
      case 0x2:
        HandleInputB(&sGameMenuData);
        break;
      default:
        sub_80246D0(&sGameMenuData);
        break;
    }
  }
  FadeOutMusic(1);
  FadeToBlack();
}

static unsigned short ProcessInput (void) {
  UpdateFilteredInput_WithRepeat();
  if (gNewButtons & A_BUTTON)
    return REPEAT_A_BUTTON;
  if (gNewButtons & B_BUTTON)
    return REPEAT_B_BUTTON;
  if (gFilteredInput & DPAD_UP)
    return REPEAT_DPAD_UP;
  if (gFilteredInput & DPAD_DOWN)
    return REPEAT_DPAD_DOWN;
  if (gFilteredInput & DPAD_LEFT)
    return REPEAT_DPAD_LEFT;
  if (gFilteredInput & DPAD_RIGHT)
    return REPEAT_DPAD_RIGHT;
  return 0;
}

static void sub_80246D0 (struct GameMenuData* menuData) {
  switch (menuData->action) {
    case 0: //MENU_MAIN
      sub_8024A94(&sGameMenuData);
      sub_80249C8(&sGameMenuData);
      sub_8024F40(&sGameMenuData);
      break;
    case 2: //MENU_NEW_GAME_PLUS
      sub_8024AB8(&sGameMenuData);
      sub_8024F6C(menuData);
      break;
    case 6: //MENU_DIFFICULTY_MODE
      sub_8024AB8(&sGameMenuData);
      sub_8024FB8(menuData);
      break;
    case 7: //MENU_DIFFICULTY_MODE
      sub_8024AB8(&sGameMenuData);
      sub_8025000(menuData);
      break;
    default:
      WaitForVBlank();
      break;
  }
}

static void HandleInputUp (struct GameMenuData* menuData) {
  switch (menuData->action) {
    case 0:
      UpdateCursorOnInputUp(menuData);
      sub_8024A94(menuData);
      sub_80249C8(&sGameMenuData);
      PlayMusic(SFX_MOVE_CURSOR);
      sub_8024F40(menuData);
      break;
    case 2:
      sub_8024A54(menuData);
      PlayMusic(SFX_MOVE_CURSOR);
      sub_8024F6C(menuData);
      break;
    case 6:
      sub_8024B54(menuData);
      PlayMusic(SFX_MOVE_CURSOR);
      sub_8024FB8(menuData);
      break;
    case 7:
      sub_8024B74(menuData);
      PlayMusic(SFX_MOVE_CURSOR);
      sub_8025000(menuData);
      break;
    default:
      WaitForVBlank();
      break;
  }
}

static void HandleInputDown (struct GameMenuData* menuData) {
  switch (menuData->action) {
    case 0:
      UpdateCursorOnInputDown(menuData);
      sub_8024A94(menuData);
      sub_80249C8(&sGameMenuData);
      PlayMusic(SFX_MOVE_CURSOR);
      sub_8024F40(menuData);
      break;
    case 2:
      sub_8024A64(menuData);
      PlayMusic(SFX_MOVE_CURSOR);
      sub_8024F6C(menuData);
      break;
    case 6:
      sub_8024B64(menuData);
      PlayMusic(SFX_MOVE_CURSOR);
      sub_8024FB8(menuData);
      break;
    case 7:
      sub_8024B84(menuData);
      PlayMusic(SFX_MOVE_CURSOR);
      sub_8025000(menuData);
      break;
    default:
      WaitForVBlank();
    break;
  }
}

static void HandleInputA (struct GameMenuData* menuData) {
  switch (menuData->action) {
    case 0:
      sub_802489C(menuData);
      break;
    case 2:
      sub_80248D0(menuData);
      break;
    case 6:
    case 7:
      sub_802491C(menuData);
      break;
    default:
      WaitForVBlank();
      break;
  }
}

static void sub_802489C (struct GameMenuData* menuData) {
  switch (menuData->cursorState) {
    case 1:
      menuData->action = 1;
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
    case 2:
      menuData->action = 3;
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
    case 3:
      menuData->action = 4;
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
    case 0:
    default:
      WaitForVBlank();
      break;
  }
}

static void sub_80248D0 (struct GameMenuData* menuData) {
  switch (menuData->cursorState) {
    default:
      WaitForVBlank();
      break;
    case 0:
      sub_801FB50(g2021C8C, 1);
      RemoveGodCardsFromDeckAndTrunk();
      menuData->action = 1;
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
    case 1:
      menuData->action = 0;
      menuData->cursorState = 0;
      PlayMusic(SFX_CANCEL);
      sub_8025048();
      break;
  }
}

static void sub_802491C (struct GameMenuData* menuData) {
  switch (menuData->cursorState) {
    case 0:
      sub_801FB50(g2021C8C, 1);
      menuData->action = 1;
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
    case 1:
      sub_801FB50(g2021C8C, 2);
      menuData->action = 1;
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
    case 2:
      sub_801FB50(g2021C8C, 3);
      menuData->action = 1;
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
    default:
      WaitForVBlank();
      break;
  }
}

static void HandleInputB (struct GameMenuData* menuData) {
  switch (menuData->action) {
    case 6:
    case 7:
      menuData->action = 0;
      menuData->cursorState = 0;
      InitTextAnimationData(menuData);
      PlayMusic(SFX_CANCEL);
      sub_8025108();
      break;
    case 2:
      menuData->action = 0;
      menuData->cursorState = 0;
      InitTextAnimationData(menuData);
      PlayMusic(SFX_CANCEL);
      sub_8025048();
      break;
    default:
      WaitForVBlank();
      break;
  }
}

static void sub_80249C8 (struct GameMenuData* menuData) {
  if (!menuData->cursorAnimationCounter) {
    u8 temp = g80C1D00[menuData->cursorState];
    menuData->cursorAnimationState++;
    if (!g8FC488C[temp][menuData->cursorAnimationState].unk0)
      menuData->cursorAnimationState = 0;
    if (!menuData->cursorAnimationCounter) {
      menuData->cursorAnimationCounter = g8FC488C[g80C1D00[menuData->cursorState]][menuData->cursorAnimationState].unk0;
      return;
    }
  }
  menuData->cursorAnimationCounter--;
}

static void InitActionAndCursor (struct GameMenuData* menuData) {
  menuData->action = 0;
  menuData->cursorState = 1;
}

static void UpdateCursorOnInputUp (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D3E[menuData->cursorState]; //sCursorStateOnInputUp
}

static void UpdateCursorOnInputDown (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D42[menuData->cursorState];
}

static void sub_8024A54 (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D56[menuData->cursorState];
}

static void sub_8024A64 (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D58[menuData->cursorState];
}

static void InitTextAnimationData (struct GameMenuData* menuData) {
  menuData->textAnimationState = 0;
  menuData->textAnimationCounter = 3;
}

static void sub_8024A80 (struct GameMenuData* menuData) {
  if (!menuData->textAnimationCounter)
    menuData->textAnimationCounter = 3;
  else
    menuData->textAnimationCounter--;
}

static void sub_8024A94 (struct GameMenuData* menuData) {
  if (!menuData->textAnimationCounter) {
    menuData->textAnimationState = g80C1D09[menuData->textAnimationState];
    menuData->textAnimationCounter = 3;
  }
  else
    menuData->textAnimationCounter--;
}

static void sub_8024AB8 (struct GameMenuData* menuData) {
  if (!menuData->textAnimationCounter) {
    menuData->textAnimationState = g80C1D24[menuData->textAnimationState];
    menuData->textAnimationCounter = 3;
  }
  else
    menuData->textAnimationCounter--;
}

static void InitCursorAnimationData (struct GameMenuData* menuData) {
  u8 temp = g80C1D00[menuData->cursorState];
  menuData->cursorAnimationState = 0;
  menuData->cursorAnimationCounter = g8FC488C[temp]->unk0;
}

static void sub_8024B00 (struct GameMenuData* menuData) {
  if (!menuData->cursorAnimationCounter) {
    u8 temp = g80C1D00[menuData->cursorState];
    menuData->cursorAnimationCounter = g8FC488C[temp][menuData->cursorAnimationState].unk0;
  }
  else
    menuData->cursorAnimationCounter--;
}

static void sub_8024B34 (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D62[menuData->cursorState];
}

static void sub_8024B44 (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D65[menuData->cursorState];
}

static void sub_8024B54 (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D68[menuData->cursorState];
}

static void sub_8024B64 (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D6B[menuData->cursorState];
}

static void sub_8024B74 (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D6E[menuData->cursorState];
}

static void sub_8024B84 (struct GameMenuData* menuData) {
  menuData->cursorState = g80C1D71[menuData->cursorState];
}
/*
void sub_8024B94 (struct GameMenuData* menuData) {
  unsigned i, j;
  struct Unk8FC488C *temp;
  struct OamStuff *oam2 = &gOam[3];
  u32* oam;
  u8 r7;
  for (i = 0; i < 4; i++) {
    if (i == menuData->cursorState) {
      r7 = g80C1CFC[i];
      temp = g8FC488C[r7];
      oam = oam2;
      for (j = 0; j < temp->unk1; j++) {
        *oam = (temp->unk4[j].unk2 << 16) | temp->unk4[j].unk0 & 0xFFFFF3FF;
        *oam |= 0x400;
        oam++;
        *oam = temp->unk4[j].unk2 & 0xFFFFF3FF;
        *oam |= 0xC00;
        oam++;
      }
    }
    else {
      r7 = g80C1CF8[i];
      temp = g8FC488C[r7];
      oam = oam2;
      for (j = 0; j < temp->unk1; j++) {
        *oam = (temp->unk4[j].unk2 << 16) | temp->unk4[j].unk0 & 0xFFFFF3FF;
        *oam |= 0x400;
        oam++;
        *oam = temp->unk4[j].unk2 & 0xFFFFF3FF;
        *oam |= 0xC00;
        oam++;
      }
    }
    oam2 += g8FC488C[r7]->unk1;
  }
} */



