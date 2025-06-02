#include "global.h"

unsigned char g2023E7B; //cursor state: select, confirm, start, exit

static unsigned short ProcessInput (void); //TODO: there's 3 different ProcessInput funcs in this file
static void TradeSucceeded (void);
static void TradeFailed (void);
static void sub_8035E14 (void);
static void sub_8035FC0 (void);
static void sub_8036080 (void);
static unsigned short sub_8036150 (void);
static unsigned short sub_8036224 (void);
static void sub_8036B54 (void);
static void sub_8036BE8 (void);
static u32 sub_8036BFC (void);
static void sub_8036C84 (u16);
static void sub_8036CB0 (u16);
static void sub_8036CD4 (void);
static void sub_8036DBC (u16, u8);
static int sub_8036E14 (u16);
static void sub_8036E24 (void);
static void sub_8036E64 (void);
static void sub_8036ECC (void);
static void sub_8036EEC (void);
static void sub_8036F0C (void);
static void sub_8036F2C (void);
static void sub_8036F4C (void);
static void sub_8036F6C (void);
static void sub_8036F8C (void);
static void sub_8036FAC (void);
static void sub_8036FCC (void);
static void sub_803769C (void);
static u32 sub_8037754 (void);

struct Unk2022EC0 {
  u8 unk0[801];
  u8 unk321[801];
  u8 unk642[801];
  u8 filler963;
  u16 unk964[NUM_TRUE_CARDS]; // sorted trunk
  u16 unkFA4;
  u16 unkFA6;
  u8 unkFA8;
  u8 unkFA9;
  u8 unkFAA;
  u8 fillerFAB;
  u16 unkFAC;
  u16 unkFAE;
  u8 unkFB0;
  u8 unkFB1;
  u8 unkFB2;
  u8 fillerFB3;
  u16 unkFB4;
  u16 unkFB6;
  u8 unkFB8;
  u8 unkFB9;
  u8 unkFBA;
  u8 unkFBB;
  u8 unkFBC;
  u8 unkFBD;
  u8 unkFBE;
  u8 unkFBF;
} extern g2022EC0;

struct SortableEntry {
  u16 cardId;
  u64 sortKey;
};

extern struct SortableEntry *gSortableEntries;


extern u8 g2023E68;
extern void (*g8E0CDF0[])(void); // TradeMenu funcs (input: cursor state)
extern void (*g8E0CE00[])(void);
extern void (*g8E0CE18[])(void);
extern void (*g8E0CE40[])(void);
extern void (*g8E0CE68[])(void);
extern u16 gNewButtons;
extern u16 gRepeatedOrNewButtons;
extern u16 gPressedButtons;
extern u16 gFilteredInput;

void sub_8039F40 (void);
void sub_80389B4 (void);
void sub_8038BA0 (void);
void sub_803DB1C (void);

void sub_8038A84 (void);
void sub_8038AC4 (void);
void sub_8038958 (void);
void sub_803E214 (void);
void sub_8038AA4 (void);


void sub_8038AF8 (void);
void sub_803DFE8 (void);
void sub_803E254 (void);
void sub_803E3FC (void);

void sub_8038290 (void);
u32 sub_80383A0 (void);
void sub_803E094 (void);
void sub_803E880 (void);
void sub_803E35C (void);
void sub_8038860 (void);
void sub_803276C (void);
void sub_8030EF0 (void);
void sub_803E140 (void);
void IncreaseDeckCapacity (u32);
void sub_8038B50 (void);
void SaveGame (void);
void sub_803DF3C (void);


void sub_803E488 (void);
void sub_803DE90 (void);
void sub_8039B24 (void);
void sub_8039C68 (void);
void sub_8039CE8 (void);
void sub_8039BDC (void);
u32 sub_8036C3C (unsigned);
u32 sub_80384BC (u16, u8);
void sub_8038574 (u16, u8);
void sub_8039D68 (void);
void sub_80384FC (u16, u8);
void sub_8039F64 (void);
void sub_8038CE0 (void);
void sub_8039D9C (void);

void sub_8039B88 (void);
void sub_8039DDC (void);
void sub_8036D5C (u16, u8);
void sub_8039E44 (void);
void sub_8039EDC (void);

void UpdateFilteredInput_NoRepeat (void);
void UpdateFilteredInput_WithRepeat (void);
void sub_8039E60 (void);
void sub_8034E1C (void);
void sub_8034A8C (void);
u16 sub_8037798 (u8);
u16 sub_80383E4 (u8);
void SetCardInfo(); //TODO
extern u8 gCardTypes[];
extern u8 gCardAttributes[];
extern u8 gCardLevels[];
extern u8 gCardMonsterEffects[];
extern u8 gUnk8094CC3[];
extern u32 gCardCosts[];
extern u16 g80D0444[][801];
extern u8 g80DD6FE[];
extern u8 g80DD708[];
extern u8 g80DD744[];
extern u8 g80DD74A[];
extern u8 g80DD750[];
extern u8 g80DD756[];
extern u8 g80DD774[];
extern u8 g80DD77F[];
extern u8 g80DD78A[];
extern u8 g80DD795[];
extern u8 g80DD6FA[];
extern u8 g80DD92E[];
extern u8 g80DD938[];
extern u8 g80DD974[];
extern u8 g80DD976[];
extern u8 g80DD978[];
extern u8 g80DD97A[];
extern u8 g80DD984[];
extern u8 g80DD98F[];
extern u8 g80DD99A[];
extern u8 g80DD9A5[];
extern u8 g80DD92A[];
extern u8 g80DD816[];
extern u8 g80DD820[];
extern u8 g80DD85C[];
extern u8 g80DD862[];
extern u8 g80DD868[];
extern u8 g80DD86E[];
extern u8 g80DD88C[];
extern u8 g80DD897[];
extern u8 g80DD8A2[];
extern u8 g80DD8AD[];
extern u8 g80DD812[];
extern u8 g80DD670[];
extern u8 g80DD674[];
extern u8 g80DD678[];

void TradeMenuMain (void) {
  unsigned stopProcessing;
  void (**funcTable) (void);
  PlayMusic(MUSIC_DECK_ADJUSTMENT_MENU);
  sub_80389B4();
  sub_8038BA0();
  sub_803DB1C();
  stopProcessing = 0;
  funcTable = g8E0CDF0;
  while (stopProcessing != 1) {
    switch (ProcessInput()) {
      case REPEAT_DPAD_UP:
        sub_8038A84();
        sub_8038AC4();
        sub_8038958();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_803E214();
        break;
      case REPEAT_DPAD_DOWN:
        sub_8038AA4();
        sub_8038AC4();
        sub_8038958();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_803E214();
        break;
      case NEW_A_BUTTON:
        funcTable[g2023E7B]();
        if (g2023E7B == 3)
          stopProcessing = 1;
        break;
      case NEW_B_BUTTON:
        g2023E7B = 3;
        sub_8038AC4();
        sub_8038958();
        PlayMusic(SFX_CANCEL);
        sub_803E214();
        break;
      default:
        sub_8038AC4();
        sub_8038958();
        sub_803E214();
        break;
    }
  }
}

static unsigned short ProcessInput (void) {
  if (gNewButtons & A_BUTTON)
    return NEW_A_BUTTON;
  if (gNewButtons & B_BUTTON)
    return NEW_B_BUTTON;
  if (gNewButtons & L_BUTTON)
    return NEW_L_BUTTON;
  if (gRepeatedOrNewButtons & DPAD_RIGHT)
    return REPEAT_DPAD_RIGHT;
  if (gRepeatedOrNewButtons & DPAD_LEFT)
    return REPEAT_DPAD_LEFT;
  if (gRepeatedOrNewButtons & DPAD_UP)
    return REPEAT_DPAD_UP;
  if (gRepeatedOrNewButtons & DPAD_DOWN)
    return REPEAT_DPAD_DOWN;
  return 0;
}

static void SelectCardsToBeTraded (void) {
  sub_8036B54();
  if (sub_8036BFC()) {
    sub_8038AF8();
    sub_803DFE8();
    while (1) {
      unsigned short buttons = ProcessInput();
      if (buttons == NEW_A_BUTTON || buttons == NEW_B_BUTTON)
        break;
      sub_8038AC4();
      sub_803E254();
    }
    sub_803E3FC();
  }
  else {
    PlayMusic(SFX_SELECT);
    sub_8035E14();
    sub_8038AF8();
    sub_8038BA0();
    sub_803DB1C();
  }
}

static void ConfirmCardsToBeTraded (void) {
  sub_8038290();
  if (sub_80383A0()) {
    sub_8038AF8();
    PlayMusic(SFX_FORBIDDEN);
    sub_803E094();
    while (1) {
      unsigned short buttons = ProcessInput();
      if (buttons == NEW_A_BUTTON || buttons == NEW_B_BUTTON)
        break;
      sub_8038AC4();
      sub_803E254();
    }
    PlayMusic(SFX_CANCEL);
    sub_803E3FC();
  }
  else {
    PlayMusic(SFX_SELECT);
    sub_803E880();
    sub_8038AF8();
    sub_8038BA0();
    sub_803DB1C();
  }
}

// TryStartTrade
static void sub_8035D18 (void) {
  sub_8038AF8();
  PlayMusic(SFX_SELECT);
  sub_803E35C();
  sub_8038860();
  sub_803276C();
  sub_8030EF0();
  if (!g3000C38.unk34)
    TradeSucceeded();
  else
    TradeFailed();
}

static void ExitTradeMenu (void) {
  PlayMusic(SFX_SELECT);
  sub_803E214();
  sub_803E140();
}

static void TradeSucceeded (void) {
  sub_8038B50();
  IncreaseDeckCapacity(2);
  SaveGame();
  sub_8038AF8();
  PlayMusic(SFX_SELECT);
  sub_803DF3C();
  while (1) {
    unsigned short buttons = ProcessInput();
    if (buttons == NEW_A_BUTTON || buttons == NEW_B_BUTTON)
      break;
    sub_8038AC4();
    sub_803E254();
  }
  sub_803769C();
  if (!sub_8037754()) {
    PlayMusic(SFX_SELECT);
    sub_803E488();
    sub_80389B4();
    sub_803DB1C();
  }
  else {
    sub_80389B4();
    PlayMusic(SFX_CANCEL);
    sub_803E3FC();
  }
}

static void TradeFailed (void) {
  sub_8038AF8();
  PlayMusic(SFX_FORBIDDEN);
  sub_803DE90();
  while (1) {
    unsigned short buttons = ProcessInput();
    if (buttons == NEW_A_BUTTON || buttons == NEW_B_BUTTON)
      break;
    sub_8038AC4();
    sub_803E254();
  }
  sub_8038AF8();
  PlayMusic(SFX_CANCEL);
  sub_803E3FC();
}

static void sub_8035E14 (void) {
  unsigned stopProcessing;
  sub_8039B24();
  stopProcessing = 0;
  while (stopProcessing != 1) {
    unsigned short temp2;
    switch (sub_8036150()) {
      case NEW_DPAD_UP:
        sub_8036CB0(1);
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039C68();
        break;
      case NEW_DPAD_DOWN:
        sub_8036C84(1);
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039CE8();
        break;
      case NEW_DPAD_UP | REPEAT_R_BUTTON:
        sub_8036CB0(0x32);
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039BDC();
        break;
      case NEW_DPAD_DOWN | REPEAT_R_BUTTON:
        sub_8036C84(0x32);
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039BDC();
        break;
      case NEW_DPAD_LEFT:
          temp2 = sub_8036C3C(2);
          if (!sub_80384BC(temp2, 1)) {
            sub_8038574(temp2, 1);
            sub_8036D5C(temp2, 1);
            goto a;
          }
          else {
            PlayMusic(SFX_FORBIDDEN);
            sub_8039D68();
            while (gPressedButtons & DPAD_LEFT)
              WaitForVBlank();
          }
        
        break;
      case NEW_DPAD_RIGHT:
          temp2 = sub_8036C3C(2);
          if (sub_8036E14(temp2) > 1) {
            sub_8036DBC(temp2, 1);
            sub_80384FC(temp2, 1);
            a:
            PlayMusic(SFX_MOVE_CURSOR);
            sub_8039D68();
          }
          else {
            PlayMusic(SFX_FORBIDDEN);
            sub_8039F64();
            while (gPressedButtons & DPAD_RIGHT)
              WaitForVBlank();
            sub_8038CE0();
          }
        
        break;
      case NEW_A_BUTTON:
        sub_8035FC0();
        sub_8039D9C();
        break;
      case NEW_B_BUTTON:
        stopProcessing = 1;
        PlayMusic(SFX_CANCEL);
        WaitForVBlank();
        break;
      case NEW_L_BUTTON:
        sub_8036FCC();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039B88();
        break;
      case NEW_START_BUTTON:
        sub_8036080();
        sub_8038CE0();
        break;
      case NEW_SELECT_BUTTON:
        sub_8036E24();
        sub_8036E64();
        sub_8036CD4();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039BDC();
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
}

static void sub_8035FC0 (void) {
  unsigned keepProcessing;
  sub_8036BE8();
  PlayMusic(SFX_SELECT);
  sub_8039DDC();
  keepProcessing = 0;
  while (keepProcessing != 1) {
    switch (sub_8036224()) {
      case REPEAT_DPAD_UP:
        sub_8036ECC();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039E44();
        break;
      case REPEAT_DPAD_DOWN:
        sub_8036EEC();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039E44();
        break;
      case REPEAT_DPAD_LEFT:
        sub_8036F0C();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039E44();
        break;
      case REPEAT_DPAD_RIGHT:
        sub_8036F2C();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039E44();
        break;
      case NEW_A_BUTTON:
        g8E0CE00[g2023E68]();
        if (g2023E68 == 3)
          keepProcessing = 1;
        break;
      case NEW_B_BUTTON:
        keepProcessing = 1;
        PlayMusic(SFX_CANCEL);
        WaitForVBlank();
        break;
      case NEW_L_BUTTON:
        sub_8036FCC();
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039B88();
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
}

static void sub_8036080 (void) {
  u8 r6;
  unsigned stopProcessing;
  g2022EC0.unkFA8 = g2022EC0.unkFAA;
  r6 = g2022EC0.unkFAA;
  PlayMusic(SFX_SELECT);
  sub_8039EDC();
  stopProcessing = 0;
  while (stopProcessing != 1) {
    switch (sub_8036224()) {
      case REPEAT_DPAD_UP:
        sub_8036F4C();
        switch (g2022EC0.unkFA8) {
          case 10:
            g2022EC0.unkFAA = r6;
            break;
          default:
            g2022EC0.unkFAA = g2022EC0.unkFA8;
        }
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039F40();
        break;
      case REPEAT_DPAD_DOWN:
        sub_8036F6C();
        switch (g2022EC0.unkFA8) {
          case 10:
            g2022EC0.unkFAA = r6;
            break;
          default:
            g2022EC0.unkFAA = g2022EC0.unkFA8;
        }
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039F40();
        break;
      case REPEAT_DPAD_LEFT:
        sub_8036F8C();
        switch (g2022EC0.unkFA8) {
          case 10:
            g2022EC0.unkFAA = r6;
            break;
          default:
            g2022EC0.unkFAA = g2022EC0.unkFA8;
        }
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039F40();
        break;
      case REPEAT_DPAD_RIGHT:
        sub_8036FAC();
        switch (g2022EC0.unkFA8) {
          case 10:
            g2022EC0.unkFAA = r6;
            break;
          default:
            g2022EC0.unkFAA = g2022EC0.unkFA8;
        }
        PlayMusic(SFX_MOVE_CURSOR);
        sub_8039F40();
        break;
      case NEW_A_BUTTON:
       switch (g2022EC0.unkFA8) {
          case 10:
            g2022EC0.unkFAA = r6;
            break;
          default:
            g2022EC0.unkFAA = g2022EC0.unkFA8;
        }
        sub_8036E64();
        sub_8036CD4();
        PlayMusic(SFX_SELECT);
        WaitForVBlank();
        stopProcessing = 1;
        break;
      case NEW_B_BUTTON:
      case NEW_START_BUTTON:
        PlayMusic(SFX_CANCEL);
        g2022EC0.unkFAA = r6;
        WaitForVBlank();
        stopProcessing = 1;
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
}

static unsigned short sub_8036150 (void) {
  UpdateFilteredInput_NoRepeat();
  if (gNewButtons & A_BUTTON)
    return NEW_A_BUTTON;
  if (gNewButtons & B_BUTTON)
    return NEW_B_BUTTON;
  if (gNewButtons & L_BUTTON)
    return NEW_L_BUTTON;
  if (gNewButtons & START_BUTTON)
    return NEW_START_BUTTON;
  if (gNewButtons & SELECT_BUTTON)
    return NEW_SELECT_BUTTON;
  if (gFilteredInput & DPAD_UP && gPressedButtons & R_BUTTON)
    return NEW_DPAD_UP | R_BUTTON;
  if (gFilteredInput & DPAD_DOWN && gPressedButtons & R_BUTTON)
    return NEW_DPAD_DOWN | R_BUTTON;
  if (gFilteredInput & DPAD_UP)
    return NEW_DPAD_UP;
  if (gFilteredInput & DPAD_DOWN)
    return NEW_DPAD_DOWN;
  if (gFilteredInput & DPAD_LEFT)
    return NEW_DPAD_LEFT;
  if (gFilteredInput & DPAD_RIGHT)
    return NEW_DPAD_RIGHT;
  return 0;
}

static unsigned short sub_8036224 (void) {
  UpdateFilteredInput_WithRepeat();
  if (gNewButtons & A_BUTTON)
    return NEW_A_BUTTON;
  if (gNewButtons & B_BUTTON)
    return NEW_B_BUTTON;
  if (gNewButtons & L_BUTTON)
    return NEW_L_BUTTON;
  if (gNewButtons & START_BUTTON)
    return NEW_START_BUTTON;
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

static void sub_80362A8 (void) {
  PlayMusic(SFX_SELECT);
  SetCardInfo(sub_8036C3C(2));
  ShowCardDetailView();
  sub_8039E60();
}

static void sub_80362C8 (void) {
  u16 r4 = sub_8036C3C(2);
  if (sub_8036E14(r4) < 2) {
    PlayMusic(SFX_FORBIDDEN);
    sub_8039F64();
    while (!(gNewButtons & (A_BUTTON | B_BUTTON)))
      WaitForVBlank();
    PlayMusic(SFX_CANCEL);
    sub_8039DDC();
  }
  else {
    sub_8036DBC(r4, 1);
    sub_80384FC(r4, 1);
    PlayMusic(SFX_SELECT);
    sub_8039D68();
  }
}

static void sub_8036338 (void) {
  u16 r5 = sub_8036C3C(2);
  u8 temp = sub_8036E14(r5);
  if (temp < 2) {
    PlayMusic(SFX_FORBIDDEN);
    sub_8039F64();
    while (!(gNewButtons & (A_BUTTON | B_BUTTON)))
      WaitForVBlank();
    PlayMusic(SFX_CANCEL);
    sub_8039DDC();
  }
  else {
    temp--;
    sub_8036DBC(r5, temp);
    sub_80384FC(r5, temp);
    PlayMusic(SFX_SELECT);
    sub_8039D68();
  }
}

static void sub_80363B4 (void) {
  u16 r4 = sub_8036C3C(2);
  if (!sub_80384BC(r4, 1)) {
    sub_8038574(r4, 1);
    sub_8036D5C(r4, 1);
    PlayMusic(SFX_SELECT);
    sub_8039D68();
  }
  else {
    PlayMusic(SFX_FORBIDDEN);
    sub_8039D68();
  }
}

static void sub_80363F8 (void) {
  u16 r5 = sub_8036C3C(2);
  u8 temp = g2022EC0.unk321[r5];
  if (temp) {
    sub_8038574(r5, temp);
    sub_8036D5C(r5, temp);
    PlayMusic(SFX_SELECT);
    sub_8039D68();
  }
  else {
    PlayMusic(SFX_FORBIDDEN);
    sub_8039D68();
  }
}

static void sub_8036448 (void) {
  PlayMusic(SFX_CANCEL);
  WaitForVBlank();
}

static void sub_8036458 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r1 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r1;
    gSortableEntries[i].sortKey = 800 - r1;
    if (g2022EC0.unk0[r1] || g2022EC0.unk321[r1])
      gSortableEntries[i].sortKey += 800;
  }
}

static void sub_8036500 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r3 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r3;
    temp = (g2022EC0.unk0[r3] + g2022EC0.unk321[r3]) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r3;
  }
}

static void sub_803658C (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = (gCardAtks[r4] + 1 & 0xFFFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk0[r4] || g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x031FFCE0;
  }
}

static void sub_8036644 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = (gCardDefs[r4] + 1 & 0xFFFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk0[r4] || g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x031FFCE0;
  }
}

static void sub_80366FC (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = (23 - gCardTypes[r4]) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk0[r4] || g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x4B00;
  }
}

static void sub_80367B0 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = (256 - gCardAttributes[r4] & 0xFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk0[r4] || g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x32000;
  }
}

static void sub_8036868 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    gSortableEntries[i].sortKey = 800 - g80D0444[gLanguage][r4];
    if (g2022EC0.unk0[r4] || g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x320;
  }
}

static void sub_8036920 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = gCardLevels[r4] * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk0[r4] || g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x28A0;
  }
}

static void sub_80369D0 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u32 temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = gCardCosts[r4] * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk0[r4] || g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x03200000;
  }
}

static void sub_8036A80 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    gSortableEntries[i].sortKey = 800 - r4;
    if (gCardMonsterEffects[r4] || gUnk8094CC3[r4])
      gSortableEntries[i].sortKey += 0x320;
    if (g2022EC0.unk0[r4] || g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x640;
  }
}

static void sub_8036B54 (void) {
  u32 i, ii;
  g2022EC0.unkFA4 = 0;
  for (i = 0; i < 800; i++) {
    g2022EC0.unk964[i] = i + 1;
    g2022EC0.unkFA4++;
  }
  sub_8034E1C();
  gCardSortContext.cardCount = 800;
  g8E0CE18[g2022EC0.unkFAA]();
  sub_8034A8C();
  for (ii = 0; ii < gCardSortContext.cardCount; ii++)
    g2022EC0.unk964[ii] = gSortableEntries[ii].cardId;
}

static void sub_8036BE8 (void) {
  g2022EC0.unkFA8 = 0;
}

static u32 sub_8036BFC (void) {
  u32 ret = 1;
  u16 i;
  for (i = 1; i < 801; i++)
    if (g2022EC0.unk0[i] || g2022EC0.unk321[i]) {
      ret = 0;
      break;
    }
  return ret;
}

u32 sub_8036C3C (unsigned arg0) {
  unsigned char arg0_u8 = arg0;
  int temp = arg0_u8 + g2022EC0.unkFA6 - 2;
  if (temp < 0)
    temp = arg0_u8 + g2022EC0.unkFA6 + 798;
  if (temp >= 800)
    temp -= 800;
  return g2022EC0.unk964[(u16)temp];
}

static void sub_8036C84 (u16 arg0) {
  int temp = g2022EC0.unkFA6 + arg0;
  if (temp >= 800)
    temp -= 800;
  g2022EC0.unkFA6 = temp;
}

static void sub_8036CB0 (u16 arg0) {
  int temp = g2022EC0.unkFA6 - arg0;
  if (temp < 0)
    temp += 800;
  g2022EC0.unkFA6 = temp;
}

static void sub_8036CD4 (void) {
  g2022EC0.unkFA6 = 0;
}

//TODO
static inline u8 sub_8036CE8_inline (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk0[arg0] > 250 - arg1)
    return 1;
  return 0;
}

static u8 sub_8036CE8 (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk0[arg0] > 250 - arg1)
    return 1;
  return 0;
}

static inline u8 sub_8036D24_inline (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk0[arg0] < arg1)
    return 1;
  return 0;
}

static u8 sub_8036D24 (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk0[arg0] < arg1)
    return 1;
  return 0;
}

void sub_8036D5C (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (arg0 > 800)
    return;
  if (!sub_8036CE8_inline(arg0, arg1))
    g2022EC0.unk0[arg0] += arg1;
  else
    g2022EC0.unk0[arg0] = 250;
}

static void sub_8036DBC (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (arg0 > 800)
    return;
  if (!sub_8036D24_inline(arg0, arg1))
    g2022EC0.unk0[arg0] -= arg1;
  else
    g2022EC0.unk0[arg0] = 0;
}

static int sub_8036E14 (u16 arg0) {
  return g2022EC0.unk0[arg0];
}

static void sub_8036E24 (void) {
  g2022EC0.unkFAA = g80DD6FE[g2022EC0.unkFAA];
}

static void sub_8036E44 (void) {
  g2022EC0.unkFAA = g80DD708[g2022EC0.unkFAA];
}

static void sub_8036E64 (void) {
  u32 i;
  sub_8034E1C();
  gCardSortContext.cardCount = 800;
  g8E0CE18[g2022EC0.unkFAA]();
  sub_8034A8C();
  for (i = 0; i < gCardSortContext.cardCount; i++)
    g2022EC0.unk964[i] = gSortableEntries[i].cardId;
}

static void sub_8036ECC (void) {
  g2022EC0.unkFA8 = g80DD744[g2022EC0.unkFA8];
}

static void sub_8036EEC (void) {
  g2022EC0.unkFA8 = g80DD74A[g2022EC0.unkFA8];
}

static void sub_8036F0C (void) {
  g2022EC0.unkFA8 = g80DD750[g2022EC0.unkFA8];
}

static void sub_8036F2C (void) {
  g2022EC0.unkFA8 = g80DD756[g2022EC0.unkFA8];
}

static void sub_8036F4C (void) {
  g2022EC0.unkFA8 = g80DD774[g2022EC0.unkFA8];
}

static void sub_8036F6C (void) {
  g2022EC0.unkFA8 = g80DD77F[g2022EC0.unkFA8];
}

static void sub_8036F8C (void) {
  g2022EC0.unkFA8 = g80DD78A[g2022EC0.unkFA8];
}

static void sub_8036FAC (void) {
  g2022EC0.unkFA8 = g80DD795[g2022EC0.unkFA8];
}

static void sub_8036FCC (void) {
  g2022EC0.unkFA9 = g80DD6FA[g2022EC0.unkFA9];
}

void sub_8036FEC (u16 arg0) {
  int test = g2022EC0.unkFB6 + 1;
  if (test < g2022EC0.unkFB4) {
    test = g2022EC0.unkFB6 + arg0;
    if (test < g2022EC0.unkFB4)
      g2022EC0.unkFB6 = test;
    else
      g2022EC0.unkFB6 = g2022EC0.unkFB4 - 1;
  }
  else
    g2022EC0.unkFB6 = 0;
}

static inline void sub_80377D4_inline (u16 arg0) {
  if (g2022EC0.unkFB6)
    if (g2022EC0.unkFB6 < arg0)
      g2022EC0.unkFB6 = 0;
    else
      g2022EC0.unkFB6 -= arg0;
  else
    g2022EC0.unkFB6 = g2022EC0.unkFB4 - 1;
}

static void sub_803702C (void) {
  if ((u8)sub_8037754())
    return;
  while (1) {
    u16 temp = sub_8037798(2);
    if (g2022EC0.unk642[temp])
      break;
    sub_80377D4_inline(1);
  }
}

static void sub_8037088 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r1 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r1;
    gSortableEntries[i].sortKey = 800 - r1;
    if (g2022EC0.unk642[r1])
      gSortableEntries[i].sortKey += 800;
  }
}

static void sub_8037110 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r2 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r2;
    temp = (gCardAtks[r2] + 1 & 0xFFFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r2;
    if (g2022EC0.unk642[r2])
      gSortableEntries[i].sortKey += 0x031FFCE0;
  }
}

static void sub_80371C0 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r2 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r2;
    temp = (gCardDefs[r2] + 1 & 0xFFFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r2;
    if (g2022EC0.unk642[r2])
      gSortableEntries[i].sortKey += 0x031FFCE0;
  }
}

static void sub_8037270 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = (23 - gCardTypes[r4]) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk642[r4])
      gSortableEntries[i].sortKey += 0x4B00;
  }
}

static void sub_803731C (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = (256 - gCardAttributes[r4] & 0xFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk642[r4])
      gSortableEntries[i].sortKey += 0x32000;
  }
}

static void sub_80373CC (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    gSortableEntries[i].sortKey = 800 - g80D0444[gLanguage][r4];
    if (g2022EC0.unk642[r4])
      gSortableEntries[i].sortKey += 0x320;
  }
}

static void sub_803747C (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = gCardLevels[r4] * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk642[r4])
      gSortableEntries[i].sortKey += 0x28A0;
  }
}

static void sub_8037524 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u32 temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = gCardCosts[r4] * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk642[r4])
      gSortableEntries[i].sortKey += 0x03200000;
  }
}

static void sub_80375CC (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    gSortableEntries[i].sortKey = 800 - r4;
    if (gCardMonsterEffects[r4] || gUnk8094CC3[r4])
      gSortableEntries[i].sortKey += 0x320;
    if (g2022EC0.unk642[r4])
      gSortableEntries[i].sortKey += 0x640;
  }
}

static void sub_803769C (void) {
  u32 i, ii;
  g2022EC0.unkFB4 = 0;
  for (i = 0; i < 800; i++) {
    g2022EC0.unk964[i] = i + 1;
    if (g2022EC0.unk642[i + 1])
      g2022EC0.unkFB4++;
  }
  sub_8034E1C();
  gCardSortContext.cardCount = 800;
  g8E0CE40[g2022EC0.unkFBA]();
  sub_8034A8C();
  for (ii = 0; ii < gCardSortContext.cardCount; ii++)
    g2022EC0.unk964[ii] = gSortableEntries[ii].cardId;
}

void sub_8037740 (void) {
  g2022EC0.unkFB8 = 0;
}

static u32 sub_8037754 (void) {
  u32 ret = 1;
  u16 i;
  for (i = 1; i < 801; i++)
    if (g2022EC0.unk642[i]) {
      ret = 0;
      break;
    }
  return ret;
}

u16 sub_8037798 (u8 arg0) {
  int temp = arg0 + g2022EC0.unkFB6 - 2;
  if (temp < 0)
    return 0;
  if (temp >= 800)
    return 0;
  return g2022EC0.unk964[temp];
}

void sub_80377D4 (u16 arg0) {
  if (g2022EC0.unkFB6)
    if (g2022EC0.unkFB6 < arg0)
      g2022EC0.unkFB6 = 0;
    else
      g2022EC0.unkFB6 -= arg0;
  else
    g2022EC0.unkFB6 = g2022EC0.unkFB4 - 1;
}

void sub_8037814 (void) {
  g2022EC0.unkFB6 = 0;
}

u8 sub_8037828 (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk642[arg0] > 250 - arg1)
    return 1;
  return 0;
}

u8 sub_803786C (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk642[arg0] < arg1)
    return 1;
  return 0;
}

static inline u8 sub_8037828_inline (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk642[arg0] > 250 - arg1)
    return 1;
  return 0;
}

static inline u8 sub_803786C_inline (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk642[arg0] < arg1)
    return 1;
  return 0;
}

void sub_80378AC (u32 arg0, u32 arg1) {
  u16 arg0_u16 = arg0;
  u8 arg1_u16 = arg1;
  if (!arg0_u16)
    return;
  if (arg0_u16 > 800)
    return;
  if (!sub_8037828_inline(arg0_u16, arg1_u16))
    g2022EC0.unk642[arg0_u16] += arg1_u16;
  else
    g2022EC0.unk642[arg0_u16] = 250;
}

static void sub_8037924 (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (arg0 > 800)
    return;
  if (!sub_803786C_inline(arg0, arg1))
    g2022EC0.unk642[arg0] -= arg1;
  else
    g2022EC0.unk642[arg0] = 0;
}

void sub_8037998 (void) {
  g2022EC0.unkFBA = g80DD92E[g2022EC0.unkFBA];
}

void sub_80379B8 (void) {
  g2022EC0.unkFBA = g80DD938[g2022EC0.unkFBA];
}

void sub_80379D8 (void) {
  u32 i;
  sub_8034E1C();
  gCardSortContext.cardCount = 800;
  g8E0CE40[g2022EC0.unkFBA]();
  sub_8034A8C();
  for (i = 0; i < gCardSortContext.cardCount; i++)
    g2022EC0.unk964[i] = gSortableEntries[i].cardId;
}

void sub_8037A40 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r3 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r3;
    temp = g2022EC0.unk642[r3] * 800 + 800;
    gSortableEntries[i].sortKey = temp - r3;
  }
}

void sub_8037ABC (void) {
  g2022EC0.unkFB8 = g80DD974[g2022EC0.unkFB8];
}

void sub_8037ADC (void) {
  g2022EC0.unkFB8 = g80DD976[g2022EC0.unkFB8];
}

void sub_8037AFC (void) {
  g2022EC0.unkFB8 = g80DD978[g2022EC0.unkFB8];
}

void sub_8037B1C (void) {
  g2022EC0.unkFB8 = g80DD97A[g2022EC0.unkFB8];
}

void sub_8037B3C (void) {
  g2022EC0.unkFB8 = g80DD984[g2022EC0.unkFB8];
}

void sub_8037B5C (void) {
  g2022EC0.unkFB8 = g80DD98F[g2022EC0.unkFB8];
}

void sub_8037B7C (void) {
  g2022EC0.unkFB8 = g80DD99A[g2022EC0.unkFB8];
}

void sub_8037B9C (void) {
  g2022EC0.unkFB8 = g80DD9A5[g2022EC0.unkFB8];
}

void sub_8037BBC (void) {
  g2022EC0.unkFB9 = g80DD92A[g2022EC0.unkFB9];
}

void sub_8037BDC (u16 arg0) {
  int test = g2022EC0.unkFAE + 1;
  if (test < g2022EC0.unkFAC) {
    test = g2022EC0.unkFAE + arg0;
    if (test < g2022EC0.unkFAC)
      g2022EC0.unkFAE = test;
    else
      g2022EC0.unkFAE = g2022EC0.unkFAC - 1;
  }
  else
    g2022EC0.unkFAE = 0;
}

static inline void sub_8038424_inline (u16 arg0) {
  if (g2022EC0.unkFAE)
    if (g2022EC0.unkFAE < arg0)
      g2022EC0.unkFAE = 0;
    else
      g2022EC0.unkFAE -= arg0;
  else
    g2022EC0.unkFAE = g2022EC0.unkFAC - 1;
}

void sub_8037C1C (void) {
  if ((u8)sub_80383A0())
    return;
  while (1) {
    u16 temp = sub_80383E4(2);
    if (g2022EC0.unk321[temp])
      break;
    sub_8038424_inline(1);
  }
}

void sub_8037C78 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r1 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r1;
    gSortableEntries[i].sortKey = 800 - r1;
    if (g2022EC0.unk321[r1])
      gSortableEntries[i].sortKey += 800;
  }
}

void sub_8037D00 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r2 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r2;
    temp = (gCardAtks[r2] + 1 & 0xFFFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r2;
    if (g2022EC0.unk321[r2])
      gSortableEntries[i].sortKey += 0x031FFCE0;
  }
}

void sub_8037DB0 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r2 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r2;
    temp = (gCardDefs[r2] + 1 & 0xFFFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r2;
    if (g2022EC0.unk321[r2])
      gSortableEntries[i].sortKey += 0x031FFCE0;
  }
}

void sub_8037E60 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = (23 - gCardTypes[r4]) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x4B00;
  }
}

void sub_8037F0C (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = (256 - gCardAttributes[r4] & 0xFF) * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x32000;
  }
}

void sub_8037FBC (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    gSortableEntries[i].sortKey = 800 - g80D0444[gLanguage][r4];
    if (g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x320;
  }
}

void sub_8038070 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    int temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = gCardLevels[r4] * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x28A0;
  }
}

void sub_8038118 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u32 temp;
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    temp = gCardCosts[r4] * 800 + 800;
    gSortableEntries[i].sortKey = temp - r4;
    if (g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x03200000;
  }
}

void sub_80381C0 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r4 = g2022EC0.unk964[i];
    gSortableEntries[i].cardId = r4;
    gSortableEntries[i].sortKey = 800 - r4;
    if (gCardMonsterEffects[r4] || gUnk8094CC3[r4])
      gSortableEntries[i].sortKey += 0x320;
    if (g2022EC0.unk321[r4])
      gSortableEntries[i].sortKey += 0x640;
  }
}

void sub_8038290 (void) {
  u32 i, ii;
  g2022EC0.unkFAC = 0;
  for (i = 0; i < 800; i++) {
    g2022EC0.unk964[i] = i + 1;
    if (g2022EC0.unk321[i + 1])
      g2022EC0.unkFAC++;
  }
  sub_8034E1C();
  gCardSortContext.cardCount = 800;
  g8E0CE68[g2022EC0.unkFB2]();
  sub_8034A8C();
  for (ii = 0; ii < gCardSortContext.cardCount; ii++)
    g2022EC0.unk964[ii] = gSortableEntries[ii].cardId;
}

void sub_8038330 (void) {
  g2022EC0.unkFB0 = 0;
}

void sub_8038344 (void) {
  u16 unkFAE = g2022EC0.unkFAE;
  for (; unkFAE < g2022EC0.unkFAC - 1; unkFAE++)
    g2022EC0.unk964[unkFAE] = g2022EC0.unk964[unkFAE + 1];
  g2022EC0.unk964[unkFAE] = 0; // CARD_NONE
}

u32 sub_80383A0 (void) {
  u32 ret = 1;
  u16 i;
  for (i = 1; i < 801; i++)
    if (g2022EC0.unk321[i]) {
      ret = 0;
      break;
    }
  return ret;
}

u16 sub_80383E4 (u8 arg0) {
  int temp = g2022EC0.unkFAE + arg0 - 2;
  if (temp < 0)
    return 0;
  if (temp >= g2022EC0.unkFAC)
    return 0;
  return g2022EC0.unk964[temp];
}

void sub_8038424 (u16 arg0) {
  if (g2022EC0.unkFAE)
    if (g2022EC0.unkFAE < arg0)
      g2022EC0.unkFAE = 0;
    else
      g2022EC0.unkFAE -= arg0;
  else
    g2022EC0.unkFAE = g2022EC0.unkFAC - 1;
}

void sub_8038464 (void) {
  g2022EC0.unkFAE = 0;
}

u8 sub_8038478 (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk321[arg0] > 250 - arg1)
    return 1;
  return 0;
}

u32 sub_80384BC (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk321[arg0] < arg1)
    return 1;
  return 0;
}

static inline u8 sub_8038478_inline (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk321[arg0] > 250 - arg1)
    return 1;
  return 0;
}

static inline u8 sub_80384BC_inline (u16 arg0, u8 arg1) {
  if (!arg0)
    return 1;
  if (arg0 > 800)
    return 1;
  if (arg1 > 250)
    return 1;
  if (g2022EC0.unk321[arg0] < arg1)
    return 1;
  return 0;
}

void sub_80384FC (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (arg0 > 800)
    return;
  if (!sub_8038478_inline(arg0, arg1))
    g2022EC0.unk321[arg0] += arg1;
  else
    g2022EC0.unk321[arg0] = 250;
}

void sub_8038574 (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (arg0 > 800)
    return;
  if (!sub_80384BC_inline(arg0, arg1))
    g2022EC0.unk321[arg0] -= arg1;
  else
    g2022EC0.unk321[arg0] = 0;
}

void sub_80385E8 (u16 arg0) {
  if (800 - g2022EC0.unkFAC < arg0)
    g2022EC0.unkFAC = 800;
  else
    g2022EC0.unkFAC += arg0;
}

void sub_8038618 (u16 arg0) {
  if (g2022EC0.unkFAC < arg0)
    g2022EC0.unkFAC = 0;
  else
    g2022EC0.unkFAC -= arg0;
}

void sub_803863C (void) {
  g2022EC0.unkFB2 = g80DD816[g2022EC0.unkFB2];
}

void sub_803865C (void) {
  g2022EC0.unkFB2 = g80DD820[g2022EC0.unkFB2];
}

void sub_803867C (void) {
  u32 i;
  sub_8034E1C();
  gCardSortContext.cardCount = 800;
  g8E0CE68[g2022EC0.unkFB2]();
  sub_8034A8C();
  for (i = 0; i < gCardSortContext.cardCount; i++)
    g2022EC0.unk964[i] = gSortableEntries[i].cardId;
}

void sub_80386E4 (void) {
  u32 i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    u16 r3 = g2022EC0.unk964[i];
    int temp;
    gSortableEntries[i].cardId = r3;
    temp = g2022EC0.unk321[r3] * 800 + 800;
    gSortableEntries[i].sortKey = temp - r3;
  }
}

void sub_8038760 (void) {
  g2022EC0.unkFB0 = g80DD85C[g2022EC0.unkFB0];
}

void sub_803877C (void) {
  g2022EC0.unkFB0 = g80DD862[g2022EC0.unkFB0];
}

void sub_8038798 (void) {
  g2022EC0.unkFB0 = g80DD868[g2022EC0.unkFB0];
}

void sub_80387B4 (void) {
  g2022EC0.unkFB0 = g80DD86E[g2022EC0.unkFB0];
}

void sub_80387D0 (void) {
  g2022EC0.unkFB0 = g80DD88C[g2022EC0.unkFB0];
}

void sub_80387EC (void) {
  g2022EC0.unkFB0 = g80DD897[g2022EC0.unkFB0];
}

void sub_8038808 (void) {
  g2022EC0.unkFB0 = g80DD8A2[g2022EC0.unkFB0];
}

void sub_8038824 (void) {
  g2022EC0.unkFB0 = g80DD8AD[g2022EC0.unkFB0];
}

void sub_8038840 (void) {
  g2022EC0.unkFB1 = g80DD812[g2022EC0.unkFB1];
}

extern u8 g3000C78[];
extern u8 g3001078[];

extern u8 g20231E1[];
extern u8 gTrunkCardQty[];

extern u8 g80DD668[]; // {'Y', 'U', 'G', 'I', 'O', 'H'};
extern u8 g80DD6B0[];

struct Unk8FA3558 {
  u8 unk0;
  u8 filler4[4];
} extern *g8FA3558[];

u16 sub_8032644 (u8*, u32);
void sub_80325D4 (void);
void sub_8038B1C (void);
void sub_8038B3C (void);

void sub_8038860 (void) {
  u32 i;
  //TODO: use initializer
  u8 arr[6]; //sizeof g80DD668
  memcpy(arr, g80DD668, 6); //sizeof arr
  sub_80325D4();
  g3000C78[0] = 0;
  for (i = 1; i < 801; i++)
    g3000C78[i] = g20231E1[i];
  g3000C78[801 + 0] = arr[0];
  g3000C78[801 + 1] = arr[1];
  g3000C78[801 + 2] = arr[2];
  g3000C78[801 + 3] = arr[3];
  g3000C78[801 + 4] = arr[4];
  g3000C78[801 + 5] = arr[5];
  g3000C38.unkC = g3000C78;
  g3000C38.unk10 = g3001078;
  g3000C38.unk0 = 807;
  g3000C38.unk28 = sub_8032644(g3000C78, 807);
}

void sub_8038908 (void) {
  if (!g2022EC0.unkFBF) {
    u8 temp = g80DD6B0[g2022EC0.unkFBB];
    g2022EC0.unkFBF = g8FA3558[temp][g2022EC0.unkFBE].unk0;
  }
  else
    g2022EC0.unkFBF--;
}

void sub_8038958 (void) {
  if (!g2022EC0.unkFBF) {
    u8 temp = g80DD6B0[g2022EC0.unkFBB];
    g2022EC0.unkFBE++;
    if (!g8FA3558[temp][g2022EC0.unkFBE].unk0)
      g2022EC0.unkFBE = 0;
  }
  sub_8038908();
}

void sub_80389B4 (void) {
  u32 i;
  for (i = 0; i < 801; i++) {
    g2022EC0.unk0[i] = gTrunkCardQty[i];
    g2022EC0.unk321[i] = 0;
    g2022EC0.unk642[i] = 0;
  }
  g2022EC0.unk0[0] = 0;
  g2022EC0.unkFA4 = 0;
  g2022EC0.unkFA6 = 0;
  g2022EC0.unkFA8 = 0;
  g2022EC0.unkFA9 = 0;
  g2022EC0.unkFAA = 0;
  g2022EC0.unkFAC = 0;
  g2022EC0.unkFAE = 0;
  g2022EC0.unkFB0 = 0;
  g2022EC0.unkFB1 = 0;
  g2022EC0.unkFB2 = 0;
  g2022EC0.unkFB4 = 0;
  g2022EC0.unkFB6 = 0;
  g2022EC0.unkFB8 = 0;
  g2022EC0.unkFB9 = 0;
  g2022EC0.unkFBA = 0;
  g2022EC0.unkFBB = 0;
  g2022EC0.unkFBC = 0;
  g2022EC0.unkFBD = 3;
}

void sub_8038A84 (void) {
  g2022EC0.unkFBB = g80DD670[g2022EC0.unkFBB];
}

void sub_8038AA4 (void) {
  g2022EC0.unkFBB = g80DD674[g2022EC0.unkFBB];
}

void sub_8038AC4 (void) {
  if (!g2022EC0.unkFBD)
    g2022EC0.unkFBC = g80DD678[g2022EC0.unkFBC];
  sub_8038B1C();
}

void sub_8038AF8 (void) {
  g2022EC0.unkFBC = g80DD678[0];
  sub_8038B3C();
}

void sub_8038B1C (void) {
  if (g2022EC0.unkFBD)
    g2022EC0.unkFBD--;
  else
    g2022EC0.unkFBD = 3;
}

void sub_8038B3C (void) {
  g2022EC0.unkFBD = 3;
}

void sub_8038B50 (void) {
  u32 i;
  for (i = 1; i < 801; i++) {
    sub_80378AC(i, g3001078[i]);
    RemoveCardQtyFromTrunk(i, g2022EC0.unk321[i]);
    AddCardQtyToTrunk(i, g2022EC0.unk642[i]);
  }
}

void sub_8038BA0 (void) {
  u8 temp = g80DD6B0[g2022EC0.unkFBB];
  g2022EC0.unkFBE = 0;
  g2022EC0.unkFBF = g8FA3558[temp][g2022EC0.unkFBE].unk0;
}

void sub_8038BE0 (void) {
  g2022EC0.unkFBB = 3;
}

extern u16 gOamBuffer[];
void sub_8038F1C(void);
void sub_803A378(void);
void sub_803A3D4(void);
void sub_8039724(void);
void sub_8039918(void);
void sub_8039870(void);
void sub_803A568(void);

static inline void bhai (void) {
  gBG0VOFS = 0;
  gBG0HOFS = 0;
  gBG1VOFS = 0;
  gBG1HOFS = 0;
  gBG2VOFS = 0x1FD;
  gBG2HOFS = 4;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
}

void sub_8038BF4 (void) {
  u32 i;
  u16* oamBuff = gOamBuffer;
  // initializing 4 objects per iteration
  for (i = 0; i < 32; i++) {
    *oamBuff++ = 0x200;
    *oamBuff++ = 0;
    *oamBuff++ = 0;
    *oamBuff++ = 0x100;
    *oamBuff++ = 0x200;
    *oamBuff++ = 0;
    *oamBuff++ = 0;
    *oamBuff++ = 0;
    *oamBuff++ = 0x200;
    *oamBuff++ = 0;
    *oamBuff++ = 0;
    *oamBuff++ = 0;
    *oamBuff++ = 0x200;
    *oamBuff++ = 0;
    *oamBuff++ = 0;
    *oamBuff++ = 0x100;
  }
  bhai();
  sub_8038F1C();
  sub_803A378();
  sub_803A3D4();
  sub_8039724();
  sub_8039918();
  sub_8039870();
  sub_803A568();
}

u8 sub_80390B8 (u8);
u8 sub_803912C (u8);
u8 sub_803A1EC (u8);
u8 sub_803A264 (u8);
u8 sub_803A2D4 (u8);
u8 sub_803A34C (u8);

void sub_803A4B4 (void);
void sub_803A4D8 (void);
void sub_803A424 (void);
void sub_80396B0 (void);
extern u8 g2023E69;
extern void (*g8E0CE90[])(u8);
void CopyStarTile(void*);
void CopySwordTile(void*);
void CopyShieldTile(void*);


extern u16 g8A31F24[][30];
extern const u8 g80DD9DC[];
extern const u8 g80DDF34[];
u16 sub_08007FEC (u8, u8, u16);
void sub_800800C(u8, u8, u16, u16);
void sub_8008BF8 (void * dest);
extern u8 g8DF811C[];
extern u8 *gAttributeIconTiles[][NUM_LANGUAGES];
void sub_803A0AC (void);
extern u16 g80DD6C8[];
extern u8 g80DD6BE[];
extern u8 g80DD6C3[];

void sub_8038CE0 (void) {
  u32 i = 0;
  void (**funcTable)(u8) = g8E0CE90;
  u8* ptr = &g2023E69;
  for (; i < 5; i++) {
    SetCardInfo((u16)sub_8036C3C(i));
    sub_80390B8(i);
    sub_803912C(i);
    sub_803A1EC(i);
    sub_803A264(i);
    sub_803A2D4(i);
    funcTable[*ptr](i);
    sub_803A34C(i);
  }
  sub_803A4B4();
	sub_803A4D8();
	sub_8039870();
	sub_803A424();
	sub_8039918();
	sub_80396B0();
  gBLDY = 4;
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadPalettes();
	LoadCharblock3();
	LoadCharblock4();
	LoadCharblock1();
	LoadBlendingRegs();
  REG_DISPCNT &= ~DISPCNT_BG0_ON;
  REG_DISPCNT |= DISPCNT_WIN1_ON;
}

void sub_8038DA0 (void) {
  u16 r7;
  u32 i;
  CpuFill16(0, gBgVram.cbb0 + 0x8000, 32);
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x8020, g80DD9DC, 0x901);
  for (i = 0; i < 20; i++)
    CpuCopy16(g8A31F24[i], gBgVram.cbb0 + 0xB800 + i * 64, 60);
  r7 = sub_08007FEC(4, 3, 0xB800) & 0xFF00;
  for (i = 0; i < 10; i++) {
    sub_800800C(i + 4, 5, 0xB800, (g8DF811C[i] + 21) | r7);
    sub_800800C(i + 4, 6, 0xB800, (g8DF811C[i] + 23) | r7);
    sub_800800C(i + 4, 7, 0xB800, (g8DF811C[i] + 41) | r7);
    sub_800800C(i + 4, 8, 0xB800, (g8DF811C[i] + 43) | r7);
    sub_800800C(i + 4, 15, 0xB800, (g8DF811C[i] + 61) | r7);
    sub_800800C(i + 4, 16, 0xB800, (g8DF811C[i] + 63) | r7);
  }
  for (i = 0; i < 14; i++) {
    sub_800800C(i + 16, 5, 0xB800, (g8DF811C[i] + 81) | r7);
    sub_800800C(i + 16, 6, 0xB800, (g8DF811C[i] + 83) | r7);
  }
  for (i = 0; i < 12; i++) {
    sub_800800C(i + 16, 7, 0xB800, (g8DF811C[i] + 109) | r7);
    sub_800800C(i + 16, 8, 0xB800, (g8DF811C[i] + 111) | r7);
  }
}
/*
void sub_8038F1C (void) {
  u8 i, j;
  CpuFill16(0, gBgVram.cbb0 + 0xC000, 32);
  CopyStarTile(gBgVram.cbb0 + 0xC020);
  CopySwordTile(gBgVram.cbb0 + 0xC040);
  CopyShieldTile(gBgVram.cbb0 + 0xC060);
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0xC0E0, g80DDF34, 0x1801);
  for (i = 0; i < 2; i++)
    CpuCopy16(gAttributeIconTiles[i][gLanguage], gBgVram.cbb0 + 0xD2A0 + i * 256, 256);
  sub_8008BF8(gPaletteBuffer + 0xA0);
  CpuFill16(0x5000, gBgVram.cbb0 + 0xF7A6, 0x800);
  for (i = 0; i < 5; i++) {
    u16 r3 = g80DD6C8[i];
    for (j = 0; j < 7; j++) {
      
    }
    
  }
  sub_803A0AC();
}
*/
