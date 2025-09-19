#include "global.h"

static unsigned char g201CB50;

static unsigned short ProcessInput (void);
static void DeckMenuDefaultSort (void);
static void sub_801D420 (void);
static void sub_801D444 (void);
static void sub_801D458 (void);
static void sub_801D46C (void);
static void sub_801D480 (void);
static void sub_801D490 (void);
static void sub_801D4A4 (void);
static void sub_801D4B8 (void);
static void sub_801D548 (void);
static void sub_801D57C (void);
static void sub_801D5B0 (void);
static void sub_801D600 (void);
static void sub_801D61C (void);
static void sub_801D678 (void);
static void sub_801D68C (void);



unsigned IsPlayerDeckNonempty (void);
void sub_801F5FC (void);
void sub_801F4A0 (unsigned char);
void sub_801F120 (void);
void sub_801EF30 (unsigned char);
void sub_801F644 (void);
void sub_801F630 (void);
void sub_0801F62C (void);
void RunPlayerDeckTask (unsigned char);
void RunTrunkTask (unsigned char);
void sub_0801F5EC (void);
void UpdateFilteredInput_NoRepeat (void);
unsigned char GetPlayerDeckSize (void);
void DeckMenuSort (void);
void sub_801F5F0 (void);
void ToggleDeckSortMode (void);
void sub_801DE5C (void);
void TryMovePosDownByAmount (unsigned char);
void TryMovePosUpByAmount (unsigned char);
void ToggleDeckDisplayMode (void);
void sub_0801DCEC (void);
unsigned char DecreaseDeckCardCount (unsigned char);
extern unsigned short gStarterDeck[];

void sub_801F614 (void);
unsigned short GetSelectedCardWithOffset (unsigned char);

extern unsigned short gNewButtons;
extern unsigned short gFilteredInput;
extern unsigned short gPressedButtons;
extern unsigned short gRepeatedOrNewButtons;
extern unsigned char gE00AD4[];
extern unsigned char gE00AD6[];
extern unsigned short gOamBuffer[];
extern unsigned char gE00AD8[3]; //cursor y pos
extern unsigned char gE00ADB[3]; //cursor x pos



void DeckMenuMain (void) {
  unsigned keepProcessing = 1;
  if ((unsigned char)IsPlayerDeckNonempty() != 1)
    return;
  DeckMenuDefaultSort();
  sub_801D420();
  while (keepProcessing) {
    switch (ProcessInput()) {
      case 0x40:
        sub_801D444();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 0x140:
        sub_801D490();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 0x80:
        sub_801D458();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 0x180:
        sub_801D4A4();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 0x200:
        sub_801D46C();
        sub_801F5FC();
        sub_801F4A0(4);
        break;
      case 1:
        sub_801D4B8();
        sub_801F4A0(7);
        break;
      case 2:
        keepProcessing = 0;
        PlayMusic(SFX_CANCEL);
        break;
      case 8:
        sub_801F120();
        sub_801EF30(7);
        sub_801F4A0(9);
        sub_801F644();
        break;
      case 4:
        sub_801D480();
        sub_801EF30(6);
        PlayMusic(SFX_SELECT);
        sub_801F4A0(8);
        sub_801F630();
        break;
      case 0:
      default:
        sub_801EF30(5);
        sub_0801F62C();
        sub_801F4A0(5);
        break;
    }
    if (!(unsigned char)IsPlayerDeckNonempty())
      keepProcessing = 0;
  }
  RunPlayerDeckTask(8);
  sub_801EF30(1);
  RunTrunkTask(9);
  sub_0801F5EC();
  sub_801F4A0(2);
}

// used for general pause menu (selecting between Status/Deck/Trunk)
static unsigned short ProcessInput (void) { // same code as the one in trunk.c
  unsigned char i;
  unsigned short mask;
  unsigned short ret = 0;
  UpdateFilteredInput_NoRepeat();
  mask = 0x1;
  for (i = 0; i < NUM_BUTTONS; i++) {
    if (mask & gNewButtons)
      ret = mask & gNewButtons;
    mask <<= 1;
  }
  mask = 0x10;
  for (i = 0; i < 4; i++) {
    if (mask & gFilteredInput)
      ret = mask & gFilteredInput;
    mask <<= 1;
  }
  if (gFilteredInput & DPAD_UP && gPressedButtons & R_BUTTON)
    ret = NEW_DPAD_UP | R_BUTTON;
  if (gFilteredInput & DPAD_DOWN && gPressedButtons & R_BUTTON)
    ret = NEW_DPAD_DOWN | R_BUTTON;
  return ret;
}

// used for actual deck adjustment menu
int ProcessInputDeckAdjustmentMenu (void) {
  unsigned char i;
  unsigned short mask;
  unsigned short ret = 0;
  UpdateFilteredInput_NoRepeat(); // pointless since we read gRepeatedOrNewButtons below instead of gFilteredInput -- devs should have used WithRepeat version?
  mask = 0x1;
  for (i = 0; i < NUM_BUTTONS; i++) {
    if (mask & gNewButtons)
      ret = mask & gNewButtons;
    mask <<= 1;
  }
  mask = 0x10;
  for (i = 0; i < 4; i++) {
    if (mask & gRepeatedOrNewButtons)
      ret = mask & gRepeatedOrNewButtons;
    mask <<= 1;
  }
  if (gRepeatedOrNewButtons & DPAD_UP && gPressedButtons & R_BUTTON)
    ret = REPEAT_DPAD_UP | R_BUTTON;
  if (gRepeatedOrNewButtons & DPAD_DOWN && gPressedButtons & R_BUTTON)
    ret = REPEAT_DPAD_DOWN | R_BUTTON;
  return ret;
}

unsigned IsPlayerDeckNonempty (void) {
  return GetPlayerDeckSize() != 0;
}

static void DeckMenuDefaultSort (void) {
  DeckMenuSort();
}

static void sub_801D420 (void) {
  sub_801EF30(0);
  sub_801EF30(2);
  sub_801F4A0(1);
  sub_801F5F0();
  sub_801F4A0(3);
}

static void sub_801D444 (void) {
  RunPlayerDeckTask(3);
  sub_801EF30(3);
}

static void sub_801D458 (void) {
  RunPlayerDeckTask(2);
  sub_801EF30(3);
}

static void sub_801D46C (void) {
  RunPlayerDeckTask(6);
  sub_801EF30(4);
}

static void sub_801D480 (void) {
  ToggleDeckSortMode();
  sub_801EF30(6);
}

static void sub_801D490 (void) {
  RunPlayerDeckTask(5);
  sub_801EF30(3);
}

static void sub_801D4A4 (void) {
  RunPlayerDeckTask(4);
  sub_801EF30(3);
}

static void sub_801D4B8 (void) {
  unsigned char keepProcessing;
  g201CB50 = 0;
  PlayMusic(SFX_SELECT);
  sub_801DE5C();
  sub_801D61C();
  LoadCharblock1();
  SetVBlankCallback(sub_801D68C);
  WaitForVBlank();
  keepProcessing = 1;
  while (keepProcessing) {
    switch (ProcessInputDeckAdjustmentMenu()) {
      case 0x40:
        sub_801D548();
        break;
      case 0x80:
        sub_801D57C();
        break;
      case 1:
        switch (g201CB50) {
          case 0:
            sub_801D5B0();
            break;
          case 1:
            sub_801D600();
            keepProcessing = 0;
            break;
        }
        break;
      case 2:
        keepProcessing = 0;
        PlayMusic(SFX_CANCEL);
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
  sub_801D678();
}

static void sub_801D548 (void) {
  g201CB50 = gE00AD4[g201CB50];
  sub_801D61C();
  PlayMusic(SFX_MOVE_CURSOR);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
}

static void sub_801D57C (void) {
  g201CB50 = gE00AD6[g201CB50];
  sub_801D61C();
  PlayMusic(SFX_MOVE_CURSOR);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
}

static void sub_801D5B0 (void) {
  SetCardInfo(GetSelectedCardWithOffset(2));
  PlayMusic(SFX_SELECT);
  ShowCardDetailView();
  sub_801EF30(0);
  sub_801EF30(2);
  sub_801F4A0(1);
  sub_801F5F0();
  sub_801DE5C();
  sub_801D61C();
  SetVBlankCallback(sub_801D68C);
  WaitForVBlank();
  LoadCharblock1();
}

static void sub_801D600 (void) {
  RunPlayerDeckTask(7);
  sub_801EF30(3);
  sub_801F614();
  sub_801F4A0(6);
}

static void sub_801D61C (void) {
  unsigned *oam = (unsigned*)&gOamBuffer[6 * 4];
  oam[0] = gE00AD8[g201CB50] |
           gE00ADB[g201CB50] << 16 | 0x40000000;
  oam[1] = 0xC120;
  oam[2] = gE00AD8[g201CB50] |
           gE00ADB[g201CB50] << 16 | 0x40000800;
  oam[3] = 0x120;
}

static void sub_801D678 (void) {
  unsigned *oam = (unsigned*)&gOamBuffer[6 * 4];
  oam[0] = 0;
  oam[1] = 0;
  oam[2] = 0;
  oam[3] = 0;
}

static void sub_801D68C (void) {
  LoadPalettes();
  LoadOam();
  REG_DISPCNT = DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_OBJWIN_ON;
  REG_BLDALPHA = 6;
  REG_BLDY = 10;
  REG_BLDCNT |= 8;
}





// split?*****************************
extern unsigned gDeckCapacity;
extern unsigned gDuelistLevel;
extern unsigned short gDeckCapacityUpperLimitForDuelistLevel[];

void IncreaseDuelistLevel (void);
unsigned char ShouldDuelistLevelIncrease (void);

void InitDeckCapacity (void) {
  gDeckCapacity = 1600;
}

void IncreaseDeckCapacity (unsigned increase) {
  if (increase > 65000 - gDeckCapacity)
    gDeckCapacity = 65000;
  else
    gDeckCapacity += increase;
  IncreaseDuelistLevel();
}

void DecreaseDeckCapacity (unsigned decrease) {
  if (decrease > gDeckCapacity)
    gDeckCapacity = 0;
  else
    gDeckCapacity -= decrease;
}

unsigned GetDeckCapacity (void) {
  return gDeckCapacity;
}

void InitDuelistLevel (void) {
  gDuelistLevel = 72;
}

unsigned GetDuelistLevel (void) {
  return gDuelistLevel;
}

void IncreaseDuelistLevel (void) {
  while (ShouldDuelistLevelIncrease())
    gDuelistLevel++;
}

unsigned char ShouldDuelistLevelIncrease (void) {
  if (gDuelistLevel < 999) {
    unsigned short temp = gDeckCapacityUpperLimitForDuelistLevel[gDuelistLevel + 1];
    if (gDeckCapacity >= temp) {
      gDuelData.unk2c = 1;
      return 1;
    }
  }
  return 0;
}

extern unsigned short g2024144[];
extern unsigned short g80B9144[];

//unused?
void sub_801D7A4 (void) {
  unsigned char i;
  for (i = 0; i < 40; i++)
    g2024144[i] = g80B9144[i];
}

void RemoveCardFromDeckAtIndex (unsigned char);
void SubtractCostFromDeckCapacity (unsigned);
void AddCardToTrunk (unsigned short);
unsigned char GetCardIndexInDeck (unsigned short);
void SortCardsAccordingToContext (void);
void CalculateCurrentDeckCost (void);

void TryMoveSelectedCardToTrunk (void) {
  unsigned short cardId = GetSelectedCardWithOffset(2);
  if (!cardId) {
    PlayMusic(SFX_FORBIDDEN);
    return;
  }
  SetCardInfo(cardId);
  AddCardToTrunk(cardId);
  RemoveCardFromDeckAtIndex(gDeckMenu.currentPos); // s8 to unsigned char conversion
  if (gDeckMenu.currentPos >= gDeckMenu.cardCount) {
    unsigned char temp = gDeckMenu.currentPos - gDeckMenu.cardCount + 1;
    if (gDeckMenu.currentPos) {
      if (temp <= gDeckMenu.currentPos)
        gDeckMenu.currentPos -= temp;
      else
        gDeckMenu.currentPos = 0;
      PlayMusic(SFX_MOVE_CURSOR);
    }
    else if (GetPlayerDeckSize()) {
      PlayMusic(SFX_FORBIDDEN);
      while (gPressedButtons & DPAD_UP)
        WaitForVBlank();
    }
  }
  SubtractCostFromDeckCapacity(gCardInfo.cost);
  PlayMusic(SFX_SELECT);
}

unsigned char TryRemoveCardFromDeck (unsigned short cardId) {
  unsigned char removalSucceeded = 0;
  unsigned char deckIndex;
  SetCardInfo(cardId);
  deckIndex = GetCardIndexInDeck(cardId);
  if (deckIndex < gDeckMenu.cardCount) {
    RemoveCardFromDeckAtIndex(deckIndex);
    SubtractCostFromDeckCapacity(gCardInfo.cost);
    removalSucceeded = 1;
  }
  if (gDeckMenu.currentPos >= gDeckMenu.cardCount) {
    unsigned char deckIndex = gDeckMenu.currentPos - gDeckMenu.cardCount + 1;
    if (gDeckMenu.currentPos) {
      if (deckIndex <= gDeckMenu.currentPos)
        gDeckMenu.currentPos -= deckIndex;
      else
        gDeckMenu.currentPos = 0;
      PlayMusic(SFX_MOVE_CURSOR);
    }
    else if (GetPlayerDeckSize()) {
      PlayMusic(SFX_FORBIDDEN);
      while (gPressedButtons & DPAD_UP)
        WaitForVBlank();
    }
  }
  return removalSucceeded;
}

extern unsigned char gE00AE0[];

void ToggleDeckSortMode (void) {
  unsigned char temp;
  if (++gDeckMenu.sortMode > 9)
    gDeckMenu.sortMode = 0;
  temp = gDeckMenu.sortMode;
  gCardSortContext.cards = gDeckMenu.cards;
  gCardSortContext.cardCount = gDeckMenu.cardCount;
  gCardSortContext.sortMode = gE00AE0[temp];
  SortCardsAccordingToContext();
  gDeckMenu.currentPos = 0;
}

void RemoveAllCopiesOfCardFromDeck (unsigned short id) {
  unsigned i, j;
  for (i = 0; i < 40; i++)
    if (gDeckMenu.cards[i] == id)
      gDeckMenu.cards[i] = CARD_NONE;
  i = 0;
  j = 39;
  while (i < j) {
    if (gDeckMenu.cards[i] != CARD_NONE)
      i++;
    else {
      if (gDeckMenu.cards[j] == CARD_NONE) {
        j--;
      }
      else {
        gDeckMenu.cards[i] = gDeckMenu.cards[j];
        gDeckMenu.cards[j] = CARD_NONE;
        i++;
        j--;
      }
    }
  }
}

void RemoveOneCopyOfCardFromDeck (unsigned short id) {
  unsigned i, j;
  for (i = 0; i < 40; i++)
    if (gDeckMenu.cards[i] == id) {
      gDeckMenu.cards[i] = CARD_NONE;
      break;
    }
  i = 0;
  j = 39;
  while (i < j) {
    if (gDeckMenu.cards[i] != CARD_NONE)
      i++;
    else {
      if (gDeckMenu.cards[j] == CARD_NONE) {
        j--;
      }
      else {
        gDeckMenu.cards[i] = gDeckMenu.cards[j];
        gDeckMenu.cards[j] = CARD_NONE;
        i++;
        j--;
      }
    }
  }
}

void InitDeckData (void) {
  unsigned i;
  gDeckMenu.sortMode = 0;
  gDeckMenu.currentPos = 0;
  gDeckMenu.displayMode = 1;
  gDeckMenu.cardCount = 0;
  for (i = 0; i < 40; i++)
    if (gDeckMenu.cards[i])
      gDeckMenu.cardCount++;
  CalculateCurrentDeckCost();
}

void InitNewGameDeck (void) {
  unsigned i;
  for (i = 0; i < 40; i++)
    gDeckMenu.cards[i] = gStarterDeck[i];
}

enum {
  DECK_TASK_NEW_GAME,
  DECK_TASK_INIT_DATA,
  
};

void RunPlayerDeckTask (unsigned char task) {
  switch (task) {
    case DECK_TASK_NEW_GAME:
      InitNewGameDeck();
      break;
    case DECK_TASK_INIT_DATA:
      InitDeckData();
      break;
    case 2:
      TryMovePosDownByAmount(1);
      break;
    case 3:
      TryMovePosUpByAmount(1);
      break;
    case 4:
      TryMovePosDownByAmount(10);
      break;
    case 5:
      TryMovePosUpByAmount(10);
      break;
    case 6:
      ToggleDeckDisplayMode();
      break;
    case 7:
      TryMoveSelectedCardToTrunk();
      break;
    case 8:
      sub_0801DCEC();
      break;
  }
}

// pass offset=2 to get selected card; offset=0 gives first card visible in viewport?
unsigned short GetSelectedCardWithOffset (unsigned char offset) {
  int temp = gDeckMenu.currentPos + offset - 2;
  if (temp < 0)
    return CARD_NONE;
  if (temp < 40)
    return gDeckMenu.cards[temp];
  return CARD_NONE;
}

unsigned char GetDeckMenuDisplayMode (void) {
  return gDeckMenu.displayMode;
}

void sub_801DB30 (void) {
  gUnk2021AB4.currentPos = gDeckMenu.currentPos;
  gUnk2021AB4.lastValidIndex = gDeckMenu.cardCount - 1;
}

unsigned char GetPlayerDeckSize (void) {
  return gDeckMenu.cardCount;
}

unsigned GetPlayerDeckCost (void) {
  return gDeckMenu.cost;
}

void AddCardToDeck (unsigned short cardId) {
  gDeckMenu.cards[gDeckMenu.cardCount] = cardId;
  gDeckMenu.cardCount++;
  CalculateCurrentDeckCost();
}

unsigned char GetDeckCardQty (unsigned short cardId) {
  unsigned char i, qty = 0;
  for (i = 0; i < 40; i++)
    if (gDeckMenu.cards[i] == cardId)
      qty++;
  return qty;
}

unsigned char IsPlayerDeckFull (void) {
  unsigned char i;
  for (i = 0; i < 40; i++)
    if (gDeckMenu.cards[i] == CARD_NONE)
      return 0;
  return 1;
}

s32 IsCostWithinCapacity (void) {
  if (GetDeckCapacity() < gDeckMenu.cost)
    return 0;
  return 1;
}

void TryMovePosDownByAmount (unsigned char amt) {
  if (gDeckMenu.currentPos != gDeckMenu.cardCount - 1) {
    if (amt < gDeckMenu.cardCount - gDeckMenu.currentPos)
      gDeckMenu.currentPos += amt;
    else
      gDeckMenu.currentPos = gDeckMenu.cardCount - 1;
    PlayMusic(SFX_MOVE_CURSOR);
  }
  else {
    PlayMusic(SFX_FORBIDDEN);
    while (gPressedButtons & DPAD_DOWN)
      WaitForVBlank();
  }
}

void TryMovePosUpByAmount (unsigned char amt) {
  if (gDeckMenu.currentPos) {
    if (amt <= gDeckMenu.currentPos)
      gDeckMenu.currentPos -= amt;
    else
      gDeckMenu.currentPos = 0;
    PlayMusic(SFX_MOVE_CURSOR);
  }
  else if (GetPlayerDeckSize()){
    PlayMusic(SFX_FORBIDDEN);
    while (gPressedButtons & DPAD_UP)
      WaitForVBlank();
  }
}

void ToggleDeckDisplayMode (void) {
  if (++gDeckMenu.displayMode > 3)
    gDeckMenu.displayMode = 0;
  PlayMusic(SFX_MOVE_CURSOR);
}

void sub_0801DCEC (void) {
}

void CalculateCurrentDeckCost (void) {
  unsigned char i;
  gDeckMenu.cost = 0;
  for (i = 0; i < gDeckMenu.cardCount; i++) {
    SetCardInfo(gDeckMenu.cards[i]);
    gDeckMenu.cost += gCardInfo.cost;
  }
}

void SubtractCostFromDeckCapacity (unsigned subtractCost) {
  if (subtractCost > gDeckMenu.cost)
    gDeckMenu.cost = 0;
  else
    gDeckMenu.cost -= subtractCost;
}

unsigned char GetCardIndexInDeck (unsigned short cardId) {
  unsigned char i;
  for (i = 0; i < gDeckMenu.cardCount && gDeckMenu.cards[i] != cardId; i++)
    ;
  return i;
}

// shuffle all later cards "up" by one to fill the gap
void RemoveCardFromDeckAtIndex (unsigned char i) {
  for (; i < gDeckMenu.cardCount - 1; i++)
    gDeckMenu.cards[i] = gDeckMenu.cards[i + 1];
  gDeckMenu.cards[gDeckMenu.cardCount - 1] = CARD_NONE;
  DecreaseDeckCardCount(1);
}

void DeckMenuSortBy (unsigned char arg0) {
  gCardSortContext.cards = gDeckMenu.cards;
  gCardSortContext.cardCount = gDeckMenu.cardCount;
  gCardSortContext.sortMode = gE00AE0[arg0];
  SortCardsAccordingToContext();
  gDeckMenu.currentPos = 0;
}

void DeckMenuSort (void) {
  gCardSortContext.cards = gDeckMenu.cards;
  gCardSortContext.cardCount = gDeckMenu.cardCount;
  gCardSortContext.sortMode = gE00AE0[gDeckMenu.sortMode];
  SortCardsAccordingToContext();
}

unsigned char DecreaseDeckCardCount (unsigned char amt) {
  if (gDeckMenu.cardCount < amt) {
    amt = gDeckMenu.cardCount;
    gDeckMenu.cardCount = 0;
  }
  else
    gDeckMenu.cardCount -= amt;
  return amt;
}

extern unsigned short gUnk_808D9B0[][30];
extern unsigned char g80B9194[];
extern unsigned char g8DF811C[];

unsigned short sub_08007FEC(unsigned char, unsigned char, unsigned short);
void sub_800800C(unsigned char, unsigned char, unsigned short, unsigned short);

void sub_801DE5C (void) {
  unsigned char i;
  unsigned short r7;
  for (i = 0; i < 20; i++)
    CpuCopy32(gUnk_808D9B0[i],  &(((struct Sbb*)&gBgVram)->sbbF[i]), 60);
  CpuFill16(0, gBgVram.cbb1, 32);
  r7 = sub_08007FEC(9, 9, 0x7800) & 0xFF00;
  for (i = 0; i < 20; i++) {
    sub_800800C(i + 9, 11, 0x7800, (g8DF811C[i] + 21) | r7);
    sub_800800C(i + 9, 12, 0x7800, (g8DF811C[i] + 23) | r7);
    sub_800800C(i + 9, 13, 0x7800, (g8DF811C[i] + 61) | r7);
    sub_800800C(i + 9, 14, 0x7800, (g8DF811C[i] + 63) | r7);
  }
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb1[32], g80B9194, 0x900);
}

extern unsigned short gUnk_808DE60[][30];
extern unsigned char g80B92D8[];
extern unsigned char g80B954C[];
extern unsigned char g80B9550[];

void sub_801DF40(void)
{
    unsigned char i;
    unsigned short r8, sb;

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808DE60[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);

    sb = sub_08007FEC(0, 2, 0x7800);
    r8 = sub_08007FEC(2, 2, 0x7800) & 0xFF00;

    for (i = 0; i < 6; i++)
    {
        sub_800800C(i + 4, 6, 0x7800, (g8DF811C[i] + 29) | r8);
        sub_800800C(i + 4, 7, 0x7800, (g8DF811C[i] + 31) | r8);
        sub_800800C(i + 4, 8, 0x7800, (g8DF811C[i] + 61) | r8);
        sub_800800C(i + 4, 9, 0x7800, (g8DF811C[i] + 63) | r8);
        sub_800800C(i + 4, 10, 0x7800, (g8DF811C[i] + 93) | r8);
        sub_800800C(i + 4, 11, 0x7800, (g8DF811C[i] + 95) | r8);
    }

    for (i = 0; i < 8; i++)
    {
        sub_800800C(i + 4, 12, 0x7800, (g8DF811C[i] + 125) | r8);
        sub_800800C(i + 4, 13, 0x7800, (g8DF811C[i] + 127) | r8);
        sub_800800C(i + 16, 12, 0x7800, (g8DF811C[i] + 141) | r8);
        sub_800800C(i + 16, 13, 0x7800, (g8DF811C[i] + 143) | r8);
        sub_800800C(i + 4, 17, 0x7800, (g8DF811C[i] + 177) | r8);
        sub_800800C(i + 4, 18, 0x7800, (g8DF811C[i] + 179) | r8);
    }

    for (i = 0; i < 4; i++)
    {
        sub_800800C(i + 10, 6, 0x7800, sb);
        sub_800800C(i + 10, 7, 0x7800, sb);
        sub_800800C(i + 10, 8, 0x7800, sb);
        sub_800800C(i + 10, 9, 0x7800, sb);
        sub_800800C(i + 10, 10, 0x7800, sb);
        sub_800800C(i + 10, 11, 0x7800, sb);
    }

    for (i = 0; i < 2; i++)
    {
        sub_800800C(i + 12, 12, 0x7800, sb);
        sub_800800C(i + 12, 13, 0x7800, sb);
    }

    for (i = 0; i < 10; i++)
    {
        sub_800800C(i + 16, 6, 0x7800, (g8DF811C[i] + 41) | r8);
        sub_800800C(i + 16, 7, 0x7800, (g8DF811C[i] + 43) | r8);
        sub_800800C(i + 16, 8, 0x7800, (g8DF811C[i] + 73) | r8);
        sub_800800C(i + 16, 9, 0x7800, (g8DF811C[i] + 75) | r8);
        sub_800800C(i + 16, 10, 0x7800, (g8DF811C[i] + 105) | r8);
        sub_800800C(i + 16, 11, 0x7800, (g8DF811C[i] + 107) | r8);
    }

    for (i = 0; i < 10; i++)
    {
        sub_800800C(i + 16, 14, 0x7800, (g8DF811C[i] + 193) | r8);
        sub_800800C(i + 16, 15, 0x7800, (g8DF811C[i] + 195) | r8);
        sub_800800C(i + 4, 14, 0x7800, (g8DF811C[i] + 157) | r8);
        sub_800800C(i + 4, 15, 0x7800, (g8DF811C[i] + 159) | r8);
    }
    CopyStringTilesToVRAMBuffer(&gBgVram.cbb1[32], g80B92D8, 0x900);
}

extern unsigned gUnk_808918C[];
extern unsigned char g8DFAA14[];
extern unsigned char g8DFAEB4[];
extern unsigned char g8DFB354[];
extern unsigned char g8DFB494[];
extern unsigned short gUnk_808C1C0[];
extern unsigned short gUnk_808BD10[][30];
/*
void sub_801E27C (void) {
  unsigned char i;
  LZ77UnCompWram(gUnk_808918C, gBgVram.cbb0);
  switch (gLanguage) {
    case FRENCH:
      CpuFastSet(g8DFAA14, &gBgVram.cbb0[320], 0x50);
      break;
    case GERMAN:
      CpuFastSet(g8DFAEB4, &gBgVram.cbb0[320], 0x50);
      break;
    case ITALIAN:
      CpuFastSet(g8DFB354, &gBgVram.cbb0[320], 0x50);
      break;
    case SPANISH:
      CpuFastSet(g8DFB494, &gBgVram.cbb0[320], 0x50);
      break;
  }
  CpuCopy32(gUnk_808C1C0, gPaletteBuffer, 128);
  for (i = 0; i < 20; i++)
    CpuCopy32(gUnk_808BD10[i], &((struct Sbb*)&gBgVram)->sbb7[i], 60);
  CpuFill16(0, &((struct Sbb*)&gBgVram)->sbb10[i], 32);
  CpuFill16(0, &((struct Sbb*)&gBgVram)->sbb17[i], 32);
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb1[32], g80B954C, 0x801);
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb1[64], g80B9550, 0x901);
  gBgVram.cbb1[0x385E] = 0x5001;
  ConvertU16ToDigitBuffer(GetDeckCapacity(), DIGIT_FLAG_NONE);
  for (i = 0; i < 5; i++)
    //see sub_800CCAC
}*/

NAKED
void sub_801E27C (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x14\n\
	ldr r0, _0801E2A4\n\
	ldr r4, _0801E2A8\n\
	adds r1, r4, #0\n\
	bl LZ77UnCompWram\n\
	ldr r0, _0801E2AC\n\
	ldrb r0, [r0]\n\
	cmp r0, #2\n\
	beq _0801E2C8\n\
	cmp r0, #2\n\
	bgt _0801E2B0\n\
	cmp r0, #1\n\
	beq _0801E2BA\n\
	b _0801E2FA\n\
	.align 2, 0\n\
_0801E2A4: .4byte gUnk_808918C\n\
_0801E2A8: .4byte 0x02000400\n\
_0801E2AC: .4byte gLanguage\n\
_0801E2B0:\n\
	cmp r0, #3\n\
	beq _0801E2D8\n\
	cmp r0, #4\n\
	beq _0801E2EC\n\
	b _0801E2FA\n\
_0801E2BA:\n\
	ldr r0, _0801E2C4\n\
	movs r2, #0xa0\n\
	lsls r2, r2, #1\n\
	adds r1, r4, r2\n\
	b _0801E2E0\n\
	.align 2, 0\n\
_0801E2C4: .4byte 0x08DFAA14\n\
_0801E2C8:\n\
	ldr r0, _0801E2D4\n\
	movs r3, #0xa0\n\
	lsls r3, r3, #1\n\
	adds r1, r4, r3\n\
	b _0801E2E0\n\
	.align 2, 0\n\
_0801E2D4: .4byte 0x08DFAEB4\n\
_0801E2D8:\n\
	ldr r0, _0801E2E8\n\
	movs r5, #0xa0\n\
	lsls r5, r5, #1\n\
	adds r1, r4, r5\n\
_0801E2E0:\n\
	movs r2, #0x50\n\
	bl CpuFastSet\n\
	b _0801E2FA\n\
	.align 2, 0\n\
_0801E2E8: .4byte 0x08DFB354\n\
_0801E2EC:\n\
	ldr r0, _0801E474\n\
	movs r6, #0xa0\n\
	lsls r6, r6, #1\n\
	adds r1, r4, r6\n\
	movs r2, #0x50\n\
	bl CpuFastSet\n\
_0801E2FA:\n\
	ldr r0, _0801E478\n\
	ldr r1, _0801E47C\n\
	ldr r2, _0801E480\n\
	bl CpuSet\n\
	movs r4, #0\n\
	mov r6, sp\n\
	adds r6, #2\n\
	add r7, sp, #4\n\
	mov r8, r7\n\
_0801E30E:\n\
	lsls r0, r4, #4\n\
	subs r0, r0, r4\n\
	lsls r0, r0, #2\n\
	ldr r1, _0801E484\n\
	adds r0, r0, r1\n\
	lsls r1, r4, #6\n\
	ldr r5, _0801E488\n\
	adds r1, r1, r5\n\
	ldr r2, _0801E48C\n\
	bl CpuSet\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x13\n\
	bls _0801E30E\n\
	mov r0, sp\n\
	movs r4, #0\n\
	strh r4, [r0]\n\
	movs r0, #0x90\n\
	lsls r0, r0, #7\n\
	adds r1, r5, r0\n\
	ldr r2, _0801E490\n\
	mov r0, sp\n\
	bl CpuSet\n\
	strh r4, [r6]\n\
	movs r2, #0x80\n\
	lsls r2, r2, #8\n\
	adds r1, r5, r2\n\
	ldr r2, _0801E494\n\
	adds r0, r6, #0\n\
	bl CpuSet\n\
  \n\
	ldr r3, _0801E498\n\
	adds r0, r5, r3\n\
	ldr r1, _0801E49C\n\
	ldr r2, _0801E4A0\n\
	bl CopyStringTilesToVRAMBuffer\n\
	ldr r6, _0801E4A4\n\
	adds r0, r5, r6\n\
	ldr r1, _0801E4A8\n\
	ldr r2, _0801E4AC\n\
	bl CopyStringTilesToVRAMBuffer\n\
	ldr r7, _0801E4B0\n\
	adds r1, r5, r7\n\
	ldr r0, _0801E4B4\n\
	strh r0, [r1]\n\
	bl GetDeckCapacity\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	movs r1, #0\n\
	bl ConvertU16ToDigitBuffer\n\
  \n\
	movs r4, #0\n\
	ldr r0, _0801E4B8\n\
	adds r2, r5, r0\n\
	ldr r7, _0801E4BC\n\
	ldr r6, _0801E4C0\n\
	ldr r1, _0801E4C4\n\
	adds r3, r1, #0\n\
	adds r5, r2, #0\n\
_0801E390:\n\
	adds r1, r4, r7\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r2\n\
	adds r0, r4, r6\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	strh r0, [r1]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #4\n\
	bls _0801E390\n\
	ldr r2, _0801E4C8\n\
	adds r1, r5, r2\n\
	movs r2, #0\n\
	ldr r0, _0801E4B4\n\
	strh r0, [r1]\n\
	ldr r3, _0801E4CC\n\
	adds r1, r5, r3\n\
	ldr r0, _0801E4D0\n\
	strh r0, [r1]\n\
	ldr r6, _0801E4D4\n\
	adds r1, r5, r6\n\
	subs r0, #4\n\
	strh r0, [r1]\n\
	mov r7, r8\n\
	strh r2, [r7]\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #8\n\
	adds r1, r5, r0\n\
	ldr r2, _0801E490\n\
	mov r0, r8\n\
	bl CpuSet\n\
	ldr r0, _0801E4D8\n\
	ldr r2, _0801E4DC\n\
	adds r1, r5, r2\n\
	ldr r4, _0801E4E0\n\
	adds r2, r4, #0\n\
	bl CpuSet\n\
	ldr r0, _0801E4E4\n\
	ldr r3, _0801E4E8\n\
	adds r1, r5, r3\n\
	adds r2, r4, #0\n\
	bl CpuSet\n\
	ldr r0, _0801E4EC\n\
	ldr r6, _0801E4F0\n\
	adds r1, r5, r6\n\
	adds r2, r4, #0\n\
	bl CpuSet\n\
	ldr r7, _0801E4F4\n\
	adds r0, r5, r7\n\
	ldr r1, _0801E4F8\n\
	ldr r2, _0801E4A0\n\
	bl CopyStringTilesToVRAMBuffer\n\
	ldr r1, _0801E4FC\n\
	adds r0, r5, r1\n\
	ldr r1, _0801E500\n\
	ldr r2, _0801E504\n\
	bl CopyStringTilesToVRAMBuffer\n\
	movs r4, #0\n\
	ldr r5, _0801E508\n\
_0801E416:\n\
	ldr r6, _0801E50C\n\
	lsls r1, r4, #2\n\
	adds r0, r1, r4\n\
	ldrb r2, [r6]\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r5\n\
	ldr r0, [r0]\n\
	adds r1, #0x13\n\
	lsls r1, r1, #5\n\
	ldr r2, _0801E510\n\
	adds r1, r1, r2\n\
	ldr r2, _0801E480\n\
	bl CpuSet\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0xb\n\
	bls _0801E416\n\
	movs r5, #0\n\
	movs r4, #0\n\
	ldr r7, _0801E514\n\
_0801E444:\n\
	adds r0, r4, #0\n\
	subs r0, #0x15\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #2\n\
	bhi _0801E51C\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r4\n\
	ldrb r3, [r6]\n\
	adds r0, r0, r3\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	adds r1, r5, #0\n\
	adds r1, #0x43\n\
	lsls r1, r1, #5\n\
	ldr r2, _0801E510\n\
	adds r1, r1, r2\n\
	ldr r2, _0801E518\n\
	bl CpuSet\n\
	adds r0, r5, #0\n\
	adds r0, #8\n\
	b _0801E53C\n\
	.align 2, 0\n\
_0801E474: .4byte 0x08DFB494\n\
_0801E478: .4byte gUnk_808C1C0\n\
_0801E47C: .4byte 0x02000000\n\
_0801E480: .4byte 0x04000020\n\
_0801E484: .4byte gUnk_808BD10\n\
_0801E488: .4byte 0x02003C00\n\
_0801E48C: .4byte 0x0400000F\n\
_0801E490: .4byte 0x01000010\n\
_0801E494: .4byte 0x01000400\n\
_0801E498: .4byte 0x00004820\n\
_0801E49C: .4byte 0x080B954C\n\
_0801E4A0: .4byte 0x00000801\n\
_0801E4A4: .4byte 0x00004840\n\
_0801E4A8: .4byte 0x080B9550\n\
_0801E4AC: .4byte 0x00000901\n\
_0801E4B0: .4byte 0x0000805E\n\
_0801E4B4: .4byte 0x00005001\n\
_0801E4B8: .4byte 0xFFFFC800\n\
_0801E4BC: .4byte 0x00005C30\n\
_0801E4C0: .4byte 0x02021BD0\n\
_0801E4C4: .4byte 0x00005209\n\
_0801E4C8: .4byte 0x0000B870\n\
_0801E4CC: .4byte 0x0000B872\n\
_0801E4D0: .4byte 0x0000520D\n\
_0801E4D4: .4byte 0x0000B874\n\
_0801E4D8: .4byte gStarTile\n\
_0801E4DC: .4byte 0x0000C020\n\
_0801E4E0: .4byte 0x04000008\n\
_0801E4E4: .4byte gSwordTile\n\
_0801E4E8: .4byte 0x0000C040\n\
_0801E4EC: .4byte gShieldTile\n\
_0801E4F0: .4byte 0x0000C060\n\
_0801E4F4: .4byte 0x0000C080\n\
_0801E4F8: .4byte 0x080B95D8\n\
_0801E4FC: .4byte 0x0000C120\n\
_0801E500: .4byte 0x080B9608\n\
_0801E504: .4byte 0x00001801\n\
_0801E508: .4byte gAttributeIconTiles\n\
_0801E50C: .4byte gLanguage\n\
_0801E510: .4byte 0x0200C400\n\
_0801E514: .4byte gTypeIconTiles\n\
_0801E518: .4byte 0x04000040\n\
_0801E51C:\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r4\n\
	ldrb r1, [r6]\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	adds r1, r5, #0\n\
	adds r1, #0x43\n\
	lsls r1, r1, #5\n\
	ldr r2, _0801E634\n\
	adds r1, r1, r2\n\
	ldr r2, _0801E638\n\
	bl CpuSet\n\
	adds r0, r5, #4\n\
_0801E53C:\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x17\n\
	bhi _0801E54C\n\
	b _0801E444\n\
_0801E54C:\n\
	ldr r0, _0801E63C\n\
	ldr r4, _0801E640\n\
	ldr r5, _0801E644\n\
	adds r1, r4, #0\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	ldr r0, _0801E648\n\
	subs r4, #0x20\n\
	adds r1, r4, #0\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	movs r4, #0\n\
_0801E568:\n\
	lsls r0, r4, #4\n\
	subs r0, r0, r4\n\
	lsls r0, r0, #2\n\
	ldr r1, _0801E64C\n\
	adds r0, r0, r1\n\
	lsls r1, r4, #6\n\
	ldr r2, _0801E650\n\
	adds r1, r1, r2\n\
	ldr r2, _0801E654\n\
	bl CpuSet\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x13\n\
	bls _0801E568\n\
	movs r3, #0\n\
_0801E58A:\n\
	movs r2, #0\n\
	cmp r3, #1\n\
	bls _0801E598\n\
	movs r2, #2\n\
	cmp r3, #2\n\
	bne _0801E598\n\
	movs r2, #1\n\
_0801E598:\n\
	movs r4, #0\n\
	lsls r0, r3, #1\n\
	adds r1, r2, #3\n\
	adds r2, #4\n\
	adds r5, r3, #1\n\
	str r5, [sp, #0xc]\n\
	ldr r5, _0801E658\n\
	adds r0, r0, r3\n\
	adds r1, r0, r1\n\
	lsls r1, r1, #5\n\
	mov ip, r1\n\
	ldr r6, _0801E65C\n\
	mov sb, r6\n\
	ldr r1, _0801E660\n\
	mov r7, ip\n\
	adds r7, r7, r1\n\
	str r7, [sp, #8]\n\
	lsls r3, r0, #4\n\
	str r3, [sp, #0x10]\n\
	ldr r6, _0801E664\n\
	adds r6, r6, r3\n\
	mov sl, r6\n\
	adds r0, r0, r2\n\
	lsls r6, r0, #5\n\
	adds r1, r1, r6\n\
	mov r8, r1\n\
_0801E5CC:\n\
	lsls r2, r4, #1\n\
	mov r1, ip\n\
	add r1, sb\n\
	adds r1, r2, r1\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r5\n\
	lsls r3, r4, #2\n\
	ldr r7, _0801E664\n\
	adds r0, r3, r7\n\
	ldr r7, [sp, #0x10]\n\
	adds r0, r0, r7\n\
	strh r0, [r1]\n\
	ldr r1, [sp, #8]\n\
	adds r0, r2, r1\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r5\n\
	add r3, sl\n\
	adds r1, r3, #1\n\
	strh r1, [r0]\n\
	mov r7, sb\n\
	adds r0, r6, r7\n\
	adds r0, r2, r0\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r5\n\
	adds r1, r3, #2\n\
	strh r1, [r0]\n\
	add r2, r8\n\
	lsls r2, r2, #1\n\
	adds r2, r2, r5\n\
	adds r3, #3\n\
	strh r3, [r2]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #8\n\
	bls _0801E5CC\n\
	ldr r1, [sp, #0xc]\n\
	lsls r0, r1, #0x18\n\
	lsrs r3, r0, #0x18\n\
	cmp r3, #4\n\
	bls _0801E58A\n\
	ldr r0, _0801E668\n\
	bl CopyMiniCardPalette\n\
	add sp, #0x14\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0801E634: .4byte 0x0200C400\n\
_0801E638: .4byte 0x04000020\n\
_0801E63C: .4byte gUnk_808ECD0\n\
_0801E640: .4byte 0x020000A0\n\
_0801E644: .4byte 0x04000008\n\
_0801E648: .4byte gUnk_808ECF0\n\
_0801E64C: .4byte gUnk_808E820\n\
_0801E650: .4byte 0x0200FC00\n\
_0801E654: .4byte 0x0400000F\n\
_0801E658: .4byte 0x02000400\n\
_0801E65C: .4byte 0x00007C02\n\
_0801E660: .4byte 0x00007C03\n\
_0801E664: .4byte 0x000050D0\n\
_0801E668: .4byte 0x02000200");
}

void sub_801EFC0 (unsigned short, unsigned short*);
/*
void sub_801E66C (void) {
  unsigned char i;
  CpuFill32(0, &gBgVram.sbb1B[8], 0x1E00);
  CpuFill32(0, &gBgVram.cbb4[0x400], 0x2000);
  for (i = 0; i < 7; i++) {
    unsigned r5;
    unsigned r4;
    unsigned short cardId;
    SetCardInfo(GetSelectedCardWithOffset(i));
    r5 = 0;
    if (i > 1) {
      r5 = 2;
      if (i == 2)
        r5 = 1;
    }

    //(3 * i + r5 + 2) * 64
    //sb = vram + F802
    //sl = vram + F820

    cardId = gCardInfo.id;
    r4 = 3 * i;
    r5 += 2;
    r5 += r4;
    sub_801EFC0(cardId, &gBgVram.sbb1F[r5][2]);
  }
}*/

NAKED
void sub_801E66C (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #8\n\
	movs r5, #0\n\
	str r5, [sp]\n\
	ldr r4, _0801E7A4\n\
	ldr r2, _0801E7A8\n\
	mov r0, sp\n\
	adds r1, r4, #0\n\
	bl CpuSet\n\
	str r5, [sp, #4]\n\
	add r0, sp, #4\n\
	movs r2, #0xa8\n\
	lsls r2, r2, #6\n\
	adds r1, r4, r2\n\
	ldr r2, _0801E7AC\n\
	bl CpuSet\n\
	movs r6, #0\n\
	ldr r7, _0801E7B0\n\
	ldr r0, _0801E7B4\n\
	adds r0, r0, r4\n\
	mov sb, r0\n\
	movs r1, #0xf1\n\
	lsls r1, r1, #5\n\
	adds r1, r1, r4\n\
	mov sl, r1\n\
_0801E6AA:\n\
	adds r0, r6, #0\n\
	bl GetSelectedCardWithOffset\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	bl SetCardInfo\n\
	movs r5, #0\n\
	cmp r6, #1\n\
	bls _0801E6C6\n\
	movs r5, #2\n\
	cmp r6, #2\n\
	bne _0801E6C6\n\
	movs r5, #1\n\
_0801E6C6:\n\
	ldrh r0, [r7, #0x10]\n\
	lsls r4, r6, #1\n\
	adds r4, r4, r6\n\
	adds r5, #2\n\
	adds r5, r4, r5\n\
	lsls r5, r5, #6\n\
	mov r2, sb\n\
	adds r1, r5, r2\n\
	bl sub_801EFC0\n\
	ldrh r0, [r7, #0x10]\n\
	lsls r4, r4, #9\n\
	movs r1, #0xd0\n\
	lsls r1, r1, #5\n\
	adds r4, r4, r1\n\
	ldr r2, _0801E7B8\n\
	add r2, sb\n\
	mov r8, r2\n\
	add r4, r8\n\
	adds r1, r4, #0\n\
	bl sub_801E7D4\n\
	ldrb r0, [r7, #0x18]\n\
	add r5, sl\n\
	adds r1, r5, #0\n\
	bl sub_801F01C\n\
	ldrh r0, [r7, #0x10]\n\
	adds r1, r6, #0\n\
	bl sub_801E86C\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #4\n\
	bls _0801E6AA\n\
	bl GetPlayerDeckCost\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	movs r1, #0\n\
	bl ConvertU16ToDigitBuffer\n\
	bl sub_800A508\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
	movs r6, #0\n\
	ldr r7, _0801E7BC\n\
	add r7, r8\n\
	ldr r5, _0801E7C0\n\
	ldr r4, _0801E7C4\n\
	ldr r0, _0801E7C8\n\
	adds r3, r0, #0\n\
_0801E732:\n\
	adds r1, r6, r5\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	adds r0, r6, r4\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	adds r0, r2, r0\n\
	strh r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #4\n\
	bls _0801E732\n\
	bl GetPlayerDeckSize\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	movs r1, #0\n\
	bl ConvertU16ToDigitBuffer\n\
	bl sub_800A528\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
	movs r6, #0\n\
	ldr r7, _0801E7CC\n\
	ldr r5, _0801E7D0\n\
	ldr r4, _0801E7C4\n\
	ldr r1, _0801E7C8\n\
	adds r3, r1, #0\n\
_0801E76E:\n\
	adds r1, r6, r5\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	adds r0, r6, #3\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	adds r0, r2, r0\n\
	strh r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #1\n\
	bls _0801E76E\n\
	bl sub_801DB30\n\
	bl sub_800A544\n\
	add sp, #8\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0801E7A4: .4byte 0x0200DE00\n\
_0801E7A8: .4byte 0x05000780\n\
_0801E7AC: .4byte 0x05000800\n\
_0801E7B0: .4byte gCardInfo\n\
_0801E7B4: .4byte 0x00001E02\n\
_0801E7B8: .4byte 0xFFFFC7FE\n\
_0801E7BC: .4byte 0xFFFF4000\n\
_0801E7C0: .4byte 0x00005C2A\n\
_0801E7C4: .4byte 0x02021BD0\n\
_0801E7C8: .4byte 0x00000209\n\
_0801E7CC: .4byte 0x02000400\n\
_0801E7D0: .4byte 0x00005C36");
}

void sub_801E7D4 (unsigned short unused_CardId, unsigned* arg1) {
  unsigned char buffer[52];
  unsigned char r6, r5, r3;
  const unsigned char* name = gCardInfo.name;
  name = GetCurrentLanguageString(name);
  r6 = 0, r5 = 0, r3 = 0;
  while (name[r5] && name[r5] != '$') {
    if (name[r5] <= 127) {
      if (r6 < 24) {
        buffer[r3] = name[r5];
        r3++;
      }
      r5++;
    }
    else {
      if (r6 < 24) {
        buffer[r3] = name[r5];
        buffer[r3 + 1] = name[r5 + 1];
        r3 += 2;
      }
      r5 += 2;
    }
    r6++;
  }
  buffer[r3] = '\0';
  CopyStringTilesToVRAMBuffer(arg1, buffer, 0x901);
}

void sub_801E86C (unsigned short arg0, unsigned char arg1) {
  struct OamData* oam = (struct OamData*)(gOamBuffer + arg1 * 4);
  if (arg0)
    sub_80573D0(gBgVram.cbb0 + (arg1 % 4 << 8 | (arg1 / 4 << 12) + 0x10400), arg0);
  oam->shape = 0;
  oam->size = 2;
  if (arg1 == 2)
    oam->objMode = 1;
  else
    oam->objMode = 0;
  oam->bpp = 1;
  oam->priority = 2;
  oam->y = arg1 * 32 + 12;
  oam->tileNum = arg1 % 4 * 8 + 32 + arg1 / 4 * 128;
  oam->x = 210;
}

//sp4 = i++
//r4 = j
//r5 = gBgVram

union {
  unsigned char a[0x4000];
  unsigned short b[0x2000]; //3d array?
} extern gVr;
/*
void sub_801E928 (void) {
  unsigned char i, j;
  for (i = 0; i < 5; i++) {
    //switch ()?
    unsigned char r2 = 0;
    if (i > 1) {
      r2 = 2;
      if (i == 2)
        r2 = 1;
    }

    for (j = 0; j < 3; j++) {
      //ip = i * 3 + (r2 + 3) * 32
      //sp = i * 3 + (r2 + 3) * 32 + 0x7C15
      //sp8 = i * 48
      //sb = 7c14
      //r6 = (i * 3 + (r2 + 4)) * 32
      //r8 = (i * 3 + (r2 + 4)) * 32 + 0x7C15
      //sl = i * 48 + 0x50F4
      gVr.b[0x7C14+(i * 3 + (r2 + 3)) * 32 + j * 2] = j * 4+(i * 48 + 0x50F4);
      gVr.b[0x7C15+(i * 3 + (r2 + 3)) * 32 + j * 2] = j * 4+(i * 48 + 0x50F4) + 1;
      gVr.b[0x7C14+(i * 3 + (r2 + 4)) * 32 + j * 2] = j * 4+(i * 48 + 0x50F4) + 2;
      gVr.b[0x7C15+(i * 3 + (r2 + 4)) * 32 + j * 2] = j * 4+(i * 48 + 0x50F4) + 3;
    }
  }
}*/

/*
//sl = gVr
void sub_801E9EC (void) {
  unsigned char i, j;
  for (i = 0; i < 5; i++) {
    unsigned char r7;
    SetCardInfo(GetSelectedCardWithOffset(i));
    r7 = 0;
    if (i > 1) {
      r7 = 2;
      if (i == 2)
        r7 = 1;
    }
    if (gCardInfo.id != CARD_NONE) {
      //r5 = i * 2
      //r4 = (i * 3 + (r7 + 3)) * 32
      gVr.b[(i * 3 + (r7 + 3)) * 32 + 0x7C14] = 0x5002;
      ConvertU16ToDigitBuffer(gCardInfo.atk, DIGIT_FLAG_NONE);
      for (j = 0; j < 5; j++)
        gVr.b[(i * 3 + (r7 + 3)) * 32 + 0x7C15 + j] = gDigitBufferU16[j] + 0x2009;
      gVr.b[(i * 3 + (r7 + 4)) * 32 + 0x7C14] = 0x5003;
      ConvertU16ToDigitBuffer(gCardInfo.def, DIGIT_FLAG_NONE);
      for (j = 0; j < 5; j++)
        gVr.b[(i * 3 + (r7 + 4)) * 32 + 0x7C15 + j] = gDigitBufferU16[j] + 0x1009;
    }
    else {
      for (j = 0; j < 6; j++)
        gVr.b[(i * 3 + (r7 + 3)) * 32 + 0x7C14 + j] = 0x5000;
      for (j = 0; j < 6; j++)
        gVr.b[(i * 3 + (r7 + 4)) * 32 + 0x7C14 + j] = 0x5000;
    }
  }
}*/



