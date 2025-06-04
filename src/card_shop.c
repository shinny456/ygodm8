#include "global.h"

#define SHOP_BOARD_NUM_ROWS 5 
#define SHOP_BOARD_NUM_COLS 7

#define SHOP_MAX_CARD_QTY 250

#define SHOP_CONFIRM_MENU_OPTION_BUY 0
#define SHOP_CONFIRM_MENU_OPTION_SELL 0
#define SHOP_CONFIRM_MENU_OPTION_DETAILS 1
#define SHOP_CONFIRM_MENU_OPTION_EXIT 2
#define SHOP_SORT_MODE_MENU_OPTION_EXIT 10

struct {
  unsigned short* unk0[SHOP_BOARD_NUM_ROWS][SHOP_BOARD_NUM_COLS]; // ptr to start of visible card shop grid?
  unsigned short unk8C[SHOP_BOARD_NUM_ROWS][SHOP_BOARD_NUM_COLS]; // something shop grid?
  unsigned short unkD2[806]; //805 is divisible by 35 (7x5 which are the slot dimensions of the card shop board)
  s16 firstVisibleRow; // this is always at least one row higher than the cursor can reach
  s16 numRows; // 800/7~=114.2, hence 115 total rows to fit all 800 cards (indexed at 0-114)
  s8 cursorColumn;
  s8 cursorRow;
  u8 unk724; // usually set to 4 -- maybe the row offset that the screen moves down at or something?
  u8 currentSortMode; // 0-9?
  u8 selectedMenuOption; // 0 = buy/sell, 1 = details, 2 = exit; also used for selecting sort mode via "Start" press (10 = exit)
} extern sCardShop;

static int ProcessInput (void);
static void ToggleSortModeInBuyShop (void);
static void FadeToBlack (void);
static void GoOneRowUpInBuyShop (void);
static void GoOneRowDownInBuyShop (void);
static void GoOneColLeftInBuyShop (void);
static void GoOneColRightInBuyShop (void);
static void GoTenRowsUpInBuyShop (void);
static void GoTenRowsDownInBuyShop (void);
static unsigned char IsSelectedCardUnbuyable (void);

static void ToggleSortModeInSellShop (void);
static void GoOneRowUpInSellShop (void);
static void GoOneRowDownInSellShop (void);
static void GoOneColLeftInSellShop (void);
static void GoOneColRightInSellShop (void);
static void GoTenRowsUpInSellShop (void);
static void GoTenRowsDownInSellShop (void);
static unsigned char IsSelectedCardUnsellable (void);
static void OpenConfirmSellMenu (void);
static void TryMoveUpInConfirmSellMenu (void);
static void TryMoveDownInConfirmSellMenu (void);
static void SelectOptionInConfirmSellMenu (void);
static void MoveCursorLeftInSellShop (void);
static void MoveCursorRightInSellShop (void);
static void sub_802CEE0 (int);
static void SetNextSortModeInSellShop (void);
static void InitSellShop (void);
static void MoveCursorUpInSellShop (void);
static void MoveCursorDownInSellShop (void);
static void sub_802D174 (void);
static void RemoveCardQtyFromPlayerInShop (u16, u8);
static unsigned PlayerInShopHasSpaceForCardQty (u16, u8);
static unsigned PlayerInShopHasAtLeastCardQty (u16, u8);
static void UpdatePlayerShopSellResults (void);
static void OpenSortSelectMenuInSellShop (void);
static void SelectSortModeInSellShop (void);
static void MoveCursorUpInSortSelectSellMenu (void);
static void MoveCursorDownInSortSelectSellMenu (void);
static void MoveCursorLeftInSortSelectSellMenu (void);
static void MoveCursorRightInSortSelectSellMenu (void);
static void CancelSellShopSortModeMenu (void);

static void OpenConfirmBuyMenu (void);
static void TryMoveUpInConfirmBuyMenu (void);
static void TryMoveDownInConfirmBuyMenu (void);
static void SelectOptionInConfirmBuyMenu (void);
static unsigned char ShopHasSpaceForCardQty2 (u16, u8);
static unsigned char sub_802D9D0 (u16, u8);
static void MoveCursorLeftInBuyShop (void);
static void MoveCursorRightInBuyShop (void);
static void sub_802DAF8 (int);
static void SetNextSortModeInBuyShop (void);
static void InitBuyShop (void);
static void UpdatePlayerShopBuyResults (void);
static void MoveCursorUpInBuyShop (void);
static void MoveCursorDownInBuyShop (void);
static void sub_802DE60 (void);
static void sub_802DE74 (void);
static int sub_802DE84 (int);
static void AddAmountToFirstVisibleRow (s16);
static s16 SafeRowWrapAround (int);
static void sub_802DF1C (void);
static void sub_802DF88 (void);
static void sub_802DFA4 (void);
static void sub_802DFC4 (void);
static void sub_802DFE4 (void);
static void SetCursorToNextUpOptionInShopConfirmBuySellMenu (void);
static void SetCursorToNextDownOptionInShopConfirmBuySellMenu (void);
static void ResetSelectedShopMenuOption (void);
static void SetCursorToNextUpOptionInShopSortModeMenu (void);
static void SetCursorToNextDownOptionInShopSortModeMenu (void);
static void SetCursorToNextLeftOptionInShopSortModeMenu (void);
static void SetCursorToNextRightOptionInShopSortModeMenu (void);
static void AddCardQtyToShop (u16, u8);
static void RemoveCardQtyFromShop (u16, u8);
static unsigned char ShopHasSpaceForCardQty (u16, u8);
static unsigned ShopHasAtLeastQtyOfCard (u16, u8);
static void sub_802E1D8 (void);
static void sub_802E270 (void);
static void sub_802E868 (void);
static void sub_802EA74 (void);
static void sub_802F9E8 (void);
static void sub_802FB08 (void);
static void SetBgDimEffectLow (void);
static void SetBgDimEffectMed (void);
static void sub_802FC34 (void);
static void sub_802FC50 (void);
static void sub_802FC6C (void);
static void sub_802FC88 (void);
static void sub_802FCF0 (u8);
static void sub_802FD48 (u16);
static void sub_802FD84 (u16);
static void sub_802FDC0 (void);
static void sub_802FE00 (void);
static void sub_802FE68 (void);
static void sub_802FE84 (int);
static void CopyAttributeIconTile (u8*, u16);
static void CopyNumTributesTile (u8*, u16);
static void sub_802FF78 (u8*, u16);
static void sub_802FFF0 (u8*, u16);
static void sub_8030068 (void);
static void sub_8030090 (void);
static void sub_80300F8 (void);
static void UpdateConfirmBuyMenuCursorSpritePos (void);
static void UpdateConfirmBuyMenuCursorBgSpritePos (void);
static void UpdateConfirmBuySellMenuCursorSpritePos (void);
static void UpdateConfirmBuySellMenuCursorBgSpritePos (void);
static void sub_803028C (void);
static void sub_80302F0 (void);
static void OpenSortSelectMenuInBuyShop (void);
static void SelectSortModeInBuyShop (void);
static void MoveUpInBuyShopSortModeMenu (void);
static void MoveDownInBuyShopSortModeMenu (void);
static void MoveLeftInBuyShopSortModeMenu (void);
static void MoveRightInBuyShopSortModeMenu (void);
static void CancelBuyShopSortModeMenu (void);
static void sub_803060C (void);
static void sub_8030654 (void);
static void sub_8030660 (void);
static void sub_8030678 (void);
static void sub_8030684 (void);
static void sub_8030690 (void);
static void sub_80306C0 (void);
static void sub_80306E0 (void);
static void sub_8030710 (void);
static void sub_803071C (void);
static void sub_803073C (void);
static void sub_803075C (void);
static void sub_8030760 (void);
static void sub_8030784 (void);
static void sub_80307E4 (int);
static void sub_803083C (int);
static void sub_8030898 (void);
static void sub_8030934 (void);
static void sub_803096C (int);
static void sub_80309D8 (void);
static void sub_8030A10 (void);
static void sub_8030A48 (void);
static void sub_8030AF8 (void);


extern u8 g80C9D84[];
extern u8 gStartingShopCards[];
extern u8 g80CA0B4[][5];
extern u8 g80CA0CD[];
extern u8 g80CA0D2[];
extern u8 g80CA0D7[];
extern u8 gNextUpShopConfirmBuySellMenuOption[];
extern u8 gNextDownShopConfirmBuySellMenuOption[];
extern u8 gNextUpShopSortModeOption[];
extern u8 gNextDownShopSortModeOption[];
extern u8 gNextLeftShopSortModeOption[];
extern u8 gNextRightShopSortModeOption[];
extern u16 g80CA114[][30];
extern u16 g80CA5C4[][30];
extern u16 g80CAA74[][30];
extern u16 g80CAF24[][30];
extern u16 g80CB3D4[][30];
extern u16 g80CB884[][30];
extern u8 g80CC0F4[];
extern u32 g80CC4F4[];
extern u16 g80CCC90[];
extern u16 g80CCCF0[][30];
extern u16 g80CD1A0[][16];
extern u16 g80CD1E0[];
extern u16 g80CD200[][32];
extern u16 g80CD280[];
extern u16 g80CD2A0[][64];
extern u16 g80CD4A0[];
extern u16 g80CD4C0[][64];
extern u8 g80CD6C0[];
extern u8 g80CD778[];
extern u8 g80CD830[];
extern u8 g80CDA60[];
extern u8 g80CDC28[];
extern u8 g80CDC50[];
extern u8 g80CDCF0[];
extern u8 g80CDD78[];
extern u8 g80CDE10[];
extern u8 g80CDE28[];
extern u16 g80CDE5A[]; //cursor to sprite Y coordinate
extern u16 g80CDE64[]; //cursor to sprite X coordinate
extern u8 g80CDE72[][2]; //u16?
extern u16 g80CDE7C[];
extern u8 g80CDE8A[][2]; //u16?
extern u16 g80CDE90[];
extern u16 g80CDE96[];
extern u8 g80CDEAC[][2]; //u16?


//1d array?
extern u8 g89A7ADE[][64]; //numTribute tiles?
extern u8 g89A7F1E[][64]; //atk digits most significant
extern u8 g89A81DE[][64]; //atk digits least significant
extern u8 g89A849E[][64]; //defense digits most significant
extern u8 g89A875E[][64]; //defense digits least significant




extern u16 gOamBuffer[];
extern u16 gRepeatedOrNewButtons;
extern u16 gNewButtons;
extern u8 gShopTempCardQty[];
extern u8 gShopCardQty[];
extern u8 gPlayerTempCardQty[];


extern u8 gTrunkCardQty[];
void CopyStarTile (void*);
void CopySwordTile (void*);
void CopyShieldTile (void*);

int GetNumRequiredTributes (u16);
void sub_800800C(u8, u8, u16, u16);
u16 sub_08007FEC(u8, u8, u16);
extern u8 g8DF811C[];
void sub_8008BF8 (void * dest);
int GetDeckCardQty (u16);
void ScalePriceToQty (void);
extern void* g8E1168C[];
void SortCardsAccordingToContext (void);
void CopyAttributeIconTiles (u8 attribute, void * dest);
void CopyAttributeIconPal (u8 attribute, void * dest);
void CopyTypeIconTiles (u8 type, void * dest);
void CopyTypeIconPal (u8 type, void * dest);
extern u8 gDigitArrayU64[];
extern unsigned long long gMoney;

void CardShopBuyMain (void) {
  unsigned short cardId;
  unsigned keepProcessing;
  FadeToBlack();
  InitBuyShop();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802E1D8();
  sub_802E868();
  sub_802FD48(cardId);
  sub_802FE00();
  sub_8030090();
  sub_802F9E8();
  sub_8030068();
  SetVBlankCallback(sub_803060C);
  WaitForVBlank();
  SetBgDimEffectLow();
  SetVBlankCallback(sub_8030654);
  WaitForVBlank();
  sub_8030760();
  keepProcessing = 1;
  while (keepProcessing) {
    switch ((unsigned short)ProcessInput()) {
      case REPEAT_DPAD_UP:
        GoOneRowUpInBuyShop();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_DOWN:
        GoOneRowDownInBuyShop();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_LEFT:
        GoOneColLeftInBuyShop();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_RIGHT:
        GoOneColRightInBuyShop();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_UP | REPEAT_R_BUTTON:
        GoTenRowsUpInBuyShop();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_DOWN | REPEAT_R_BUTTON:
        GoTenRowsDownInBuyShop();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case NEW_A_BUTTON:
        if (!IsSelectedCardUnbuyable())
          OpenConfirmBuyMenu();
        else {
          PlayMusic(0x39);
          WaitForVBlank();
        }
        break;
      case NEW_B_BUTTON:
        keepProcessing = 0;
        PlayMusic(SFX_CANCEL);
        WaitForVBlank();
        break;
      case NEW_START_BUTTON:
        OpenSortSelectMenuInBuyShop();
        break;
      case NEW_SELECT_BUTTON:
        ToggleSortModeInBuyShop();
        PlayMusic(SFX_SELECT);
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
  UpdatePlayerShopBuyResults();
  FadeToBlack();
}

static int ProcessInput (void) {
  unsigned short buttons = 0;
  if (gRepeatedOrNewButtons & DPAD_LEFT)
    buttons = REPEAT_DPAD_LEFT;
  if (gRepeatedOrNewButtons & DPAD_RIGHT)
    buttons = REPEAT_DPAD_RIGHT;
  if (gRepeatedOrNewButtons & DPAD_UP) {
    unsigned rButtonPressed = gRepeatedOrNewButtons & R_BUTTON;
    buttons = REPEAT_DPAD_UP;
    if (rButtonPressed)
      buttons = REPEAT_DPAD_UP | REPEAT_R_BUTTON;
  }
  if (gRepeatedOrNewButtons & DPAD_DOWN) {
    unsigned rButtonPressed = gRepeatedOrNewButtons & R_BUTTON;
    buttons = REPEAT_DPAD_DOWN;
    if (rButtonPressed)
      buttons = REPEAT_DPAD_DOWN | REPEAT_R_BUTTON;
  }
  if (gNewButtons & A_BUTTON)
    buttons = NEW_A_BUTTON;
  if (gNewButtons & B_BUTTON)
    buttons = NEW_B_BUTTON;
  if (gNewButtons & SELECT_BUTTON)
    buttons = NEW_SELECT_BUTTON;
  if (gNewButtons & START_BUTTON)
    buttons = NEW_START_BUTTON;
  return buttons;
}

static void ToggleSortModeInBuyShop (void) {
  unsigned short cardId;
  SetNextSortModeInBuyShop();
  sub_802DF1C();
  sub_802DF88();

  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FCF0(sCardShop.currentSortMode);
  sub_802FD48(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  SetVBlankCallback(sub_8030684);
  WaitForVBlank();
  sub_8030898();
}

static void FadeToBlack (void) {
  u16 i, j;
  for (i = 0; i < 32; i++) {
    for (j = 0; j < 512; j++) {
      struct PlttData *pltt = (struct PlttData*)&gPaletteBuffer[j];
      if (pltt->r)
        pltt->r--;
      if (pltt->g)
        pltt->g--;
      if (pltt->b)
        pltt->b--;
    }
    SetVBlankCallback(LoadPalettes);
    WaitForVBlank();
  }
}

static void GoOneRowUpInBuyShop (void) {
  unsigned short cardId;
  MoveCursorUpInBuyShop();

  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD48(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  SetVBlankCallback(sub_8030678);
  WaitForVBlank();
  sub_80307E4(sub_802DE84(0));
}

static void GoOneRowDownInBuyShop (void) {
  unsigned short cardId;
  MoveCursorDownInBuyShop();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD48(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  SetVBlankCallback(sub_8030678);
  WaitForVBlank();
  sub_803083C(sub_802DE84(4));
}

static void GoOneColLeftInBuyShop (void) {
  unsigned short cardId;
  MoveCursorLeftInBuyShop();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD48(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  SetVBlankCallback(sub_8030678);
  WaitForVBlank();
  sub_80307E4(sub_802DE84(0));
}

static void GoOneColRightInBuyShop (void) {
  unsigned short cardId;
  MoveCursorRightInBuyShop();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD48(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  SetVBlankCallback(sub_8030678);
  WaitForVBlank();
  sub_80307E4(sub_802DE84(4));
}

static void GoTenRowsUpInBuyShop (void) {
  unsigned short cardId;
  sub_802DE60();
  sub_802DF1C();
  sub_802DF88();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD48(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  SetVBlankCallback(sub_8030684);
  WaitForVBlank();
  sub_8030898();
}

static void GoTenRowsDownInBuyShop (void) {
  unsigned short cardId;
  sub_802DE74();
  sub_802DF1C();
  sub_802DF88();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD48(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  SetVBlankCallback(sub_8030684);
  WaitForVBlank();
  sub_8030898();
}

static unsigned char IsSelectedCardUnbuyable (void) {
  u16 cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  if (cardId != CARD_NONE && IsGodCard(cardId) != 1)
    return 0;
  return 1;
}

/*split?
  ProcessInput returns an int here, while in the Buy function
  it returned a u16. this suggests that it might be declared implicitly,
  and therefore this would belong in a different file
*/
void CardShopSellMain (void) {
  unsigned short cardId;
  unsigned keepProcessing;
  FadeToBlack();
  InitSellShop();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802E1D8();
  sub_802E868();
  sub_802FD84(cardId);
  sub_802FE00();
  sub_8030090();
  sub_802F9E8();
  sub_8030068();
  SetVBlankCallback(sub_803060C);
  WaitForVBlank();
  SetBgDimEffectLow();
  SetVBlankCallback(sub_8030654);
  WaitForVBlank();
  sub_8030760();
  keepProcessing = 1;
  while (keepProcessing) {
    switch (ProcessInput()) {
      case REPEAT_DPAD_UP:
        GoOneRowUpInSellShop();
        break;
      case REPEAT_DPAD_DOWN:
        GoOneRowDownInSellShop();
        break;
      case REPEAT_DPAD_LEFT:
        GoOneColLeftInSellShop();
        break;
      case REPEAT_DPAD_RIGHT:
        GoOneColRightInSellShop();
        break;
      case REPEAT_DPAD_UP | REPEAT_R_BUTTON:
        GoTenRowsUpInSellShop();
        break;
      case REPEAT_DPAD_DOWN | REPEAT_R_BUTTON:
        GoTenRowsDownInSellShop();
        break;
      case L_BUTTON:
        WaitForVBlank();
        break;
      case NEW_A_BUTTON:
        if (!IsSelectedCardUnsellable())
          OpenConfirmSellMenu();
        else {
          PlayMusic(0x39);
          WaitForVBlank();
        }
        break;
      case NEW_B_BUTTON: // exit sell menu altoogether
        keepProcessing = 0;
        PlayMusic(SFX_CANCEL);
        WaitForVBlank();
        break;
      case NEW_START_BUTTON:
        OpenSortSelectMenuInSellShop();
        break;
      case NEW_SELECT_BUTTON:
        ToggleSortModeInSellShop();
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
  UpdatePlayerShopSellResults();
  FadeToBlack();
}

static void ToggleSortModeInSellShop (void) {
  unsigned short cardId;
  SetNextSortModeInSellShop();
  sub_802DF1C();
  sub_802D174();

  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FCF0(sCardShop.currentSortMode);
  sub_802FD84(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  PlayMusic(SFX_SELECT);
  SetVBlankCallback(sub_8030684);
  WaitForVBlank();
  sub_8030898();
}

static void GoOneRowUpInSellShop (void) {
  unsigned short cardId;
  MoveCursorUpInSellShop();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD84(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  SetVBlankCallback(sub_8030678);
  WaitForVBlank();
  sub_80307E4(sub_802DE84(0));
  PlayMusic(SFX_MOVE_CURSOR);
}

static void GoOneRowDownInSellShop (void) {
  unsigned short cardId;
  MoveCursorDownInSellShop();

  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD84(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  SetVBlankCallback(sub_8030678);
  WaitForVBlank();
  sub_803083C(sub_802DE84(4));
  PlayMusic(SFX_MOVE_CURSOR);
}

static void GoOneColLeftInSellShop (void) {
  unsigned short cardId;
  MoveCursorLeftInSellShop();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD84(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  SetVBlankCallback(sub_8030678);
  WaitForVBlank();
  sub_80307E4(sub_802DE84(0));
  PlayMusic(SFX_MOVE_CURSOR);
}

static void GoOneColRightInSellShop (void) {
  unsigned short cardId;
  MoveCursorRightInSellShop();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD84(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  SetVBlankCallback(sub_8030678);
  WaitForVBlank();
  sub_80307E4(sub_802DE84(4));
  PlayMusic(SFX_MOVE_CURSOR);
}

static void GoTenRowsUpInSellShop (void) {
  unsigned short cardId;
  sub_802DE60();
  sub_802DF1C();
  sub_802D174();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD84(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  PlayMusic(SFX_MOVE_CURSOR);
  SetVBlankCallback(sub_8030684);
  WaitForVBlank();
  sub_8030898();
}

static void GoTenRowsDownInSellShop (void) {
  unsigned short cardId;
  sub_802DE74();
  sub_802DF1C();
  sub_802D174();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802FD84(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  PlayMusic(SFX_MOVE_CURSOR);
  SetVBlankCallback(sub_8030684);
  WaitForVBlank();
  sub_8030898();
}

static unsigned char IsSelectedCardUnsellable (void) {
  u16 cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  if (cardId != CARD_NONE && IsGodCard(cardId) != 1)
    return 0;
  return 1;
}

static void OpenConfirmSellMenu (void) {
  unsigned keepProcessing;
  unsigned short cardId;
  ResetSelectedShopMenuOption();
  SetBgDimEffectMed();
  sub_802FC50();
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  sub_8030934();
  SetVBlankCallback(sub_8030690);
  WaitForVBlank();
  PlayMusic(SFX_SELECT);
  keepProcessing = 1;
  while (keepProcessing) {
    switch (ProcessInput()) {
      case REPEAT_DPAD_UP:
        TryMoveUpInConfirmSellMenu();
        break;
      case REPEAT_DPAD_DOWN:
        TryMoveDownInConfirmSellMenu();
        break;
      case NEW_A_BUTTON:
        SelectOptionInConfirmSellMenu();
        if (sCardShop.selectedMenuOption == SHOP_CONFIRM_MENU_OPTION_EXIT)
          keepProcessing = 0;
        if (*sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn] == CARD_NONE) // impossible? can't sell last copy of card
          keepProcessing = 0;
        break;
      case NEW_B_BUTTON: // cancel confirm menu
        PlayMusic(SFX_CANCEL);
        keepProcessing = 0;
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
  SetBgDimEffectLow();
  sub_802EA74();
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  sub_802FD84(cardId);
  sub_802FC6C();
  sub_80300F8();
  SetVBlankCallback(sub_80306C0);
  WaitForVBlank();
}

static void TrySellCard (void) {
  unsigned short cardId;
  unsigned long long money;

  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  if (PlayerInShopHasAtLeastCardQty(cardId, 2) == 1) {
    money = gShopSelectedCard.sellPrice;
    RemoveCardQtyFromPlayerInShop(cardId, 1);
    AddMoney(money);
    AddCardQtyToShop(cardId, 1);
    PlayMusic(SFX_SELECT);
  }
  else { // can't sell
    PlayMusic(0x39);
    sub_802E270();
    while (!(gNewButtons & (A_BUTTON | B_BUTTON)))
      WaitForVBlank();
    PlayMusic(SFX_CANCEL);
    sub_802FC88();
  }
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802D174();
  sub_802CEE0(sCardShop.cursorRow);
  sub_802FE84(sCardShop.cursorRow);
  sub_802EA74();
  sub_802FD84(*sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn]);
  SetVBlankCallback(sub_8030690);
  WaitForVBlank();
  sub_803096C(sub_802DE84(sCardShop.cursorRow));
}

static void SelectDetailsInConfirmSellMenu (void) {
  unsigned short cardId;
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  SetCardInfo(cardId);
  PlayMusic(SFX_SELECT);
  ShowCardDetailView();
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  SetBgDimEffectMed();
  sub_802E1D8();
  sub_802E868();
  sub_802FD84(cardId);
  sub_802FE00();
  sub_8030090();
  sub_802F9E8();
  sub_8030068();
  sub_802FB08();
  sub_802FC50();
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  SetVBlankCallback(sub_803060C);
  WaitForVBlank();
  SetVBlankCallback(sub_8030660);
  WaitForVBlank();
  sub_8030784();
}

static void TryMoveUpInConfirmSellMenu (void) {
  SetCursorToNextUpOptionInShopConfirmBuySellMenu();
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030690);
  WaitForVBlank();
  PlayMusic(SFX_MOVE_CURSOR);
}

static void TryMoveDownInConfirmSellMenu (void) {
  SetCursorToNextDownOptionInShopConfirmBuySellMenu();
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030690);
  WaitForVBlank();
  PlayMusic(SFX_MOVE_CURSOR);
}

static void SelectOptionInConfirmSellMenu (void) {
  switch (sCardShop.selectedMenuOption) {
    case SHOP_CONFIRM_MENU_OPTION_SELL:
      TrySellCard();
      break;
    case SHOP_CONFIRM_MENU_OPTION_DETAILS:
      SelectDetailsInConfirmSellMenu();
      break;
    default: // Exit Confirm Menu
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
  }
}

static void MoveCursorLeftInSellShop (void) {
  if (sCardShop.cursorColumn >= 1) {
    sCardShop.cursorColumn--;
    return;
  }
  if (sCardShop.cursorRow >= 2)
    sCardShop.cursorRow--;
  else {
    AddAmountToFirstVisibleRow(-1);
    sub_802DFA4();
    sub_802DF1C();
    sub_802CEE0(0);
    sub_802FE84(0);
    sub_8030068();
  }
  sCardShop.cursorColumn = 6;
}

static void MoveCursorRightInSellShop (void) {
  if (sCardShop.cursorColumn <= 5) {
    sCardShop.cursorColumn++;
    return;
  }
  if (sCardShop.cursorRow <= 2)
    sCardShop.cursorRow++;
  else {
    AddAmountToFirstVisibleRow(1);
    sub_802DFC4();
    sub_802DF1C();
    sub_802CEE0(4);
    sub_802FE84(4);
    sub_8030068();
  }
  sCardShop.cursorColumn = 0;
}

static void sub_802CEE0 (int row) {
  u8 col;
  u8 row_u8 = row;
  s16 temp = SafeRowWrapAround(sCardShop.firstVisibleRow + row_u8);
  for (col = 0; col < SHOP_BOARD_NUM_COLS; col++) {
    u16 cardId = sCardShop.unkD2[temp * SHOP_BOARD_NUM_COLS + col + 1];
    if (cardId != CARD_NONE)
      if (!gPlayerTempCardQty[cardId])
        *sCardShop.unk0[row_u8][col] = CARD_NONE;
      else
        *sCardShop.unk0[row_u8][col] = cardId;
    else
      *sCardShop.unk0[row_u8][col] = cardId;
  }
}

static void SetNextSortModeInSellShop (void) {
  u8 temp;
  if (++sCardShop.currentSortMode > 9)
    sCardShop.currentSortMode = 0;
  // this part could be a macro or (static) inline func
  // sub_802D190
  temp = sCardShop.currentSortMode;
  gCardSortContext.cards = sCardShop.unkD2 + 1;
  gCardSortContext.cardCount = NUM_TRUE_CARDS;
  gCardSortContext.sortMode = g80C9D84[temp];
  SortCardsAccordingToContext();
  sub_802DFE4();
  sCardShop.firstVisibleRow = 114;
}

static void InitSellShop (void) {
  u16 i;
  u8 ii;
  for (i = 0; i < 806; i++)
    sCardShop.unkD2[i] = CARD_NONE;
  for (i = 0; i < NUM_CARDS; i++) {
    gShopTempCardQty[i] = gShopCardQty[i];
    gPlayerTempCardQty[i] = gTrunkCardQty[i];
  }
  sCardShop.selectedMenuOption = 0;
  sCardShop.firstVisibleRow = 114;
  sCardShop.numRows = 115;
  sCardShop.unk724 = 4;
  sCardShop.currentSortMode = 0;
  sCardShop.cursorColumn = 0;
  sCardShop.cursorRow = 1;
  sCardShop.unkD2[0] = CARD_NONE;
  for (i = 1; i < NUM_CARDS; i++)
    sCardShop.unkD2[i] = i;

  // sub_802D190
  gCardSortContext.cards = sCardShop.unkD2 + 1;
  gCardSortContext.cardCount = NUM_TRUE_CARDS;
  gCardSortContext.sortMode = g80C9D84[0];
  SortCardsAccordingToContext();
  sub_802DFE4();
  sCardShop.firstVisibleRow = 114;
  // sub_802D190 end

  sub_802DF1C();
  //sub_802D174
  for (ii = 0; ii < 5; ii++)
    sub_802CEE0(ii);
}

// functions below inline?

static void MoveCursorUpInSellShop (void) {
  if (sCardShop.cursorRow >= 2) {
    sCardShop.cursorRow--;
    return;
  }
  AddAmountToFirstVisibleRow(-1);
  sub_802DFA4();
  sub_802DF1C();
  sub_802CEE0(0);
  sub_802FE84(0);
  sub_8030068();
}

static void MoveCursorDownInSellShop (void) {
  if (sCardShop.cursorRow <= 2) {
    sCardShop.cursorRow++;
    return;
  }
  AddAmountToFirstVisibleRow(1);
  sub_802DFC4();
  sub_802DF1C();
  sub_802CEE0(4);
  sub_802FE84(4);
  sub_8030068();
}

static void sub_802D174 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    sub_802CEE0(i);
}

static void sub_802D190 (u8 sortOption) {
  gCardSortContext.cards = sCardShop.unkD2 + 1;
  gCardSortContext.cardCount = NUM_TRUE_CARDS;
  gCardSortContext.sortMode = g80C9D84[sortOption];
  SortCardsAccordingToContext();
  sub_802DFE4();
  sCardShop.firstVisibleRow = 114;
}

static void AddCardQtyToPlayerInShop (u16 cardId, u8 qty) {
  if (!cardId)
    return;
  if (!(u8)PlayerInShopHasSpaceForCardQty(cardId, qty))
    gPlayerTempCardQty[cardId] = SHOP_MAX_CARD_QTY;
  else
    gPlayerTempCardQty[cardId] += qty;
}

static void RemoveCardQtyFromPlayerInShop (u16 cardId, u8 qty) {
  if (cardId == CARD_NONE)
    return;
  if (!(u8)PlayerInShopHasAtLeastCardQty(cardId, qty))
    gPlayerTempCardQty[cardId] = 0;
  else
    gPlayerTempCardQty[cardId] -= qty;
}

static unsigned PlayerInShopHasSpaceForCardQty (u16 cardId, u8 qty) {
  if (qty > SHOP_MAX_CARD_QTY - gPlayerTempCardQty[cardId])
    return 0;
  return 1;
}

static unsigned PlayerInShopHasAtLeastCardQty (u16 cardId, u8 qty) {
  if (qty > gPlayerTempCardQty[cardId])
    return 0;
  return 1;
}

static void UpdatePlayerShopSellResults (void) {
  unsigned short cardId;
  for (cardId = 0; cardId < NUM_CARDS; cardId++) {
    gShopCardQty[cardId] = gShopTempCardQty[cardId];
    gTrunkCardQty[cardId] = gPlayerTempCardQty[cardId];
  }
}

static void OpenSortSelectMenuInSellShop (void) {
  unsigned keepProcessing;
  sCardShop.selectedMenuOption = sCardShop.currentSortMode;
  SetBgDimEffectMed();
  sub_80302F0();
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  sub_80309D8();
  SetVBlankCallback(sub_80306E0);
  WaitForVBlank();
  PlayMusic(SFX_SELECT);
  keepProcessing = 1;
  while (keepProcessing) {
    switch (ProcessInput()) {
      case REPEAT_DPAD_UP:
        MoveCursorUpInSortSelectSellMenu();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_DOWN:
        MoveCursorDownInSortSelectSellMenu();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_LEFT:
        MoveCursorLeftInSortSelectSellMenu();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_RIGHT:
        MoveCursorRightInSortSelectSellMenu();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case NEW_A_BUTTON:
        if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT) { // cancel sort-select menu
          CancelSellShopSortModeMenu();
          PlayMusic(SFX_SELECT);
        }
        else {
          sCardShop.currentSortMode = sCardShop.selectedMenuOption;
          SelectSortModeInSellShop();
        }
        return;
      case NEW_B_BUTTON:
      case NEW_START_BUTTON:
        CancelSellShopSortModeMenu();
        PlayMusic(SFX_CANCEL);
        return;
      default:
        WaitForVBlank();
        break;
    }
  }
}

static void SelectSortModeInSellShop (void) {
  unsigned short cardId;
  sCardShop.currentSortMode = sCardShop.selectedMenuOption;
  sub_802D190(sCardShop.currentSortMode);
  sub_802DF1C();
  sub_802D174();

  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  PlayMusic(SFX_SELECT);
  SetBgDimEffectLow();
  sub_802FCF0(sCardShop.currentSortMode);
  sub_802FD84(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  sub_80300F8();
  sub_802FC6C();
  SetVBlankCallback(sub_803071C);
  WaitForVBlank();
  sub_8030A48();
}

static void MoveCursorUpInSortSelectSellMenu (void) {
  SetCursorToNextUpOptionInShopSortModeMenu();
  if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT)
    sub_802FCF0(sCardShop.currentSortMode);
  else
    sub_802FCF0(sCardShop.selectedMenuOption);
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030710);
  WaitForVBlank();
  sub_8030A10();
}

static void MoveCursorDownInSortSelectSellMenu (void) {
  SetCursorToNextDownOptionInShopSortModeMenu();
  if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT)
    sub_802FCF0(sCardShop.currentSortMode);
  else
    sub_802FCF0(sCardShop.selectedMenuOption);
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030710);
  WaitForVBlank();
  sub_8030A10();
}

static void MoveCursorLeftInSortSelectSellMenu (void) {
  SetCursorToNextLeftOptionInShopSortModeMenu();
  if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT)
    sub_802FCF0(sCardShop.currentSortMode);
  else
    sub_802FCF0(sCardShop.selectedMenuOption);
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030710);
  WaitForVBlank();
  sub_8030A10();
}

static void MoveCursorRightInSortSelectSellMenu (void) {
  SetCursorToNextRightOptionInShopSortModeMenu();
  if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT)
    sub_802FCF0(sCardShop.currentSortMode);
  else
    sub_802FCF0(sCardShop.selectedMenuOption);
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030710);
  WaitForVBlank();
  sub_8030A10();
}

static void CancelSellShopSortModeMenu (void) {
  sub_802FCF0(sCardShop.currentSortMode);
  sub_80300F8();
  SetBgDimEffectLow();
  sub_802FC6C();
  SetVBlankCallback(sub_803073C);
  WaitForVBlank();
  sub_8030AF8();
}

static void OpenConfirmBuyMenu (void) {
  unsigned keepProcessing;
  ResetSelectedShopMenuOption();
  SetBgDimEffectMed();
  sub_802FC34();
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  sub_8030934();
  SetVBlankCallback(sub_8030690);
  WaitForVBlank();
  PlayMusic(SFX_SELECT);
  keepProcessing = 1;
  while (keepProcessing) {
    switch (ProcessInput()) {
      case REPEAT_DPAD_UP:
        TryMoveUpInConfirmBuyMenu();
        break;
      case REPEAT_DPAD_DOWN:
        TryMoveDownInConfirmBuyMenu();
        break;
      case NEW_A_BUTTON:
        SelectOptionInConfirmBuyMenu();
        if (sCardShop.selectedMenuOption == SHOP_CONFIRM_MENU_OPTION_EXIT)
          keepProcessing = 0;
        if (*sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn] == CARD_NONE) // if bought last card, auto-exit confirm menu
          keepProcessing = 0;
        break;
      case NEW_B_BUTTON: // cancel confirm menu
        PlayMusic(SFX_CANCEL);
        keepProcessing = 0;
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
  SetBgDimEffectLow();
  sub_802EA74();
  sub_802FD48(*sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn]);
  sub_802FC6C();
  sub_80300F8();
  SetVBlankCallback(sub_80306C0);
  WaitForVBlank();
}

static void TryBuyCard (void) {
  unsigned short cardId;
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];

  if (ShopHasAtLeastQtyOfCard(cardId, 1) == 1) {
    if (PlayerInShopHasSpaceForCardQty(cardId, 1) == 1) {
      unsigned long long temp = gShopSelectedCard.buyPrice;
      if (CanAfford(temp) == 1) {
        RemoveCardQtyFromShop(cardId, 1);
        RemoveMoney(temp);
        AddCardQtyToPlayerInShop(cardId, 1);
        PlayMusic(SFX_SELECT);
      }
      else
        PlayMusic(0x39);
    }
    else
      PlayMusic(0x39);
  }
  else
    PlayMusic(0x39);

  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  sub_802DF88();
  sub_802DAF8(sCardShop.cursorRow);
  sub_802FE84(sCardShop.cursorRow);
  sub_802EA74();
  sub_802FD48(*sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn]);
  SetVBlankCallback(sub_8030690);
  WaitForVBlank();
  sub_803096C(sub_802DE84(sCardShop.cursorRow));
}

static void SelectDetailsInConfirmBuyMenu (void) {
  unsigned short cardId;
  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  SetCardInfo(cardId);
  PlayMusic(SFX_SELECT);
  ShowCardDetailView();
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  SetBgDimEffectMed();
  sub_802E1D8();
  sub_802E868();
  sub_802FD48(cardId);
  sub_802FE00();
  sub_8030090();
  sub_802F9E8();
  sub_8030068();
  sub_802FB08();
  sub_802FC34();
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  SetVBlankCallback(sub_803060C);
  WaitForVBlank();
  SetVBlankCallback(sub_8030660);
  WaitForVBlank();
  sub_8030784();
}

static void TryMoveUpInConfirmBuyMenu (void) {
  SetCursorToNextUpOptionInShopConfirmBuySellMenu();
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030690);
  WaitForVBlank();
  PlayMusic(SFX_MOVE_CURSOR);
}

static void TryMoveDownInConfirmBuyMenu (void) {
  SetCursorToNextDownOptionInShopConfirmBuySellMenu();
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030690);
  WaitForVBlank();
  PlayMusic(SFX_MOVE_CURSOR);
}

static void SelectOptionInConfirmBuyMenu (void) {
  switch (sCardShop.selectedMenuOption) {
    case 0: // Buy
      TryBuyCard();
      break;
    case 1: // Details
      SelectDetailsInConfirmBuyMenu();
      break;
    default: // Exit
      PlayMusic(SFX_SELECT);
      WaitForVBlank();
      break;
  }
}

void AddCardQtyToShop2 (unsigned short cardId, unsigned char qty) {
  // this could be calling an inline func
  if ((u16)(cardId - 1) >= 800)
    return;
  if (ShopHasSpaceForCardQty2(cardId, qty) == 1)
    gShopCardQty[cardId] += qty;
  else
    gShopCardQty[cardId] = SHOP_MAX_CARD_QTY;
}

// unused?
static void sub_802D95C (u16 cardId, u8 qty) {
  // this could be calling an inline func
  if ((u16)(cardId - 1) >= 800)
    return;
  if (sub_802D9D0(cardId, qty) == 1)
    gShopCardQty[cardId] -= qty;
  else
    gShopCardQty[cardId] = 0;
}

static unsigned char ShopHasSpaceForCardQty2 (u16 cardId, u8 qty) {
  if (qty > SHOP_MAX_CARD_QTY - gShopCardQty[cardId])
    return 0;
  return 1;
}

static unsigned char sub_802D9D0 (u16 cardId, u8 qty) {
  if (qty > gShopCardQty[cardId])
    return 0;
  return 1;
}

void InitNewGameShopCards (void) {
  unsigned short cardId;
  for (cardId = 0; cardId < NUM_CARDS; cardId++)
    gShopCardQty[cardId] = gStartingShopCards[cardId];
}

static void MoveCursorLeftInBuyShop (void) {
  if (sCardShop.cursorColumn >= 1) {
    sCardShop.cursorColumn--;
    return;
  }
  if (sCardShop.cursorRow >= 2)
    sCardShop.cursorRow--;
  else {
    AddAmountToFirstVisibleRow(-1);
    sub_802DFA4();
    sub_802DF1C();
    sub_802DAF8(0);
    sub_802FE84(0);
    sub_8030068();
  }
  sCardShop.cursorColumn = 6;
}

static void MoveCursorRightInBuyShop (void) {
  if (sCardShop.cursorColumn <= 5) {
    sCardShop.cursorColumn++;
    return;
  }
  if (sCardShop.cursorRow <= 2)
    sCardShop.cursorRow++;
  else {
    AddAmountToFirstVisibleRow(1);
    sub_802DFC4();
    sub_802DF1C();
    sub_802DAF8(4);
    sub_802FE84(4);
    sub_8030068();
  }
  sCardShop.cursorColumn = 0;
}

/*
static void sub_802DAF8 (int arg0) {
  u8 arg0_u8 = arg0;
  s16 temp = sCardShop.firstVisibleRow + arg0_u8;
  u8 i;

  if (temp < 0)
    temp += sCardShop.numRows;
  else if (temp >= sCardShop.numRows)
    temp -= sCardShop.numRows;

  for (i = 0; i < 7; i++) {
    u16 temp2 = sCardShop.unkD2[temp * 7 + i + 1];
    if (temp2)
      if (!gShopTempCardQty[temp2])
        *sCardShop.unk0[arg0_u8][i] = CARD_NONE;
      else
        *sCardShop.unk0[arg0_u8][i] = temp2;
    else
      *sCardShop.unk0[arg0_u8][i] = temp2;
  }
}*/

NAKED
static void sub_802DAF8 (int arg0) {
  asm_unified("  push {r4, r5, r6, r7, lr}\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	ldr r1, _0802DB20\n\
	ldr r2, _0802DB24\n\
	adds r0, r1, r2\n\
	ldrh r0, [r0]\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #0x10\n\
	asrs r3, r0, #0x10\n\
	adds r2, r3, #0\n\
	adds r7, r1, #0\n\
	cmp r2, #0\n\
	bge _0802DB28\n\
	movs r4, #0xe4\n\
	lsls r4, r4, #3\n\
	adds r0, r7, r4\n\
	ldrh r0, [r0]\n\
	adds r0, r2, r0\n\
	b _0802DB3A\n\
	.align 2, 0\n\
_0802DB20: .4byte 0x02022450\n\
_0802DB24: .4byte 0x0000071E\n\
_0802DB28:\n\
	movs r1, #0xe4\n\
	lsls r1, r1, #3\n\
	adds r0, r7, r1\n\
	ldrh r1, [r0]\n\
	movs r4, #0\n\
	ldrsh r0, [r0, r4]\n\
	cmp r2, r0\n\
	blt _0802DB3E\n\
	subs r0, r2, r1\n\
_0802DB3A:\n\
	lsls r0, r0, #0x10\n\
	lsrs r3, r0, #0x10\n\
_0802DB3E:\n\
	movs r4, #0\n\
	lsls r0, r5, #3\n\
	ldr r6, _0802DB7C\n\
	lsls r1, r3, #0x10\n\
	asrs r1, r1, #0x10\n\
	lsls r2, r1, #3\n\
	subs r2, r2, r1\n\
	mov ip, r2\n\
	subs r0, r0, r5\n\
	lsls r2, r0, #2\n\
_0802DB52:\n\
	mov r1, ip\n\
	adds r0, r1, r4\n\
	adds r0, #1\n\
	lsls r0, r0, #1\n\
	adds r1, r6, #0\n\
	adds r1, #0xd2\n\
	adds r0, r0, r1\n\
	ldrh r1, [r0]\n\
	cmp r1, #0\n\
	beq _0802DB8C\n\
	ldr r0, _0802DB80\n\
	adds r0, r1, r0\n\
	ldrb r3, [r0]\n\
	cmp r3, #0\n\
	bne _0802DB84\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r2\n\
	adds r0, r0, r6\n\
	ldr r0, [r0]\n\
	strh r3, [r0]\n\
	b _0802DB96\n\
	.align 2, 0\n\
_0802DB7C: .4byte 0x02022450\n\
_0802DB80: .4byte 0x02022120\n\
_0802DB84:\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r2\n\
	adds r0, r0, r6\n\
	b _0802DB92\n\
_0802DB8C:\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r2\n\
	adds r0, r0, r7\n\
_0802DB92:\n\
	ldr r0, [r0]\n\
	strh r1, [r0]\n\
_0802DB96:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #6\n\
	bls _0802DB52\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

static void SetNextSortModeInBuyShop (void) {
  u8 temp;
  if (++sCardShop.currentSortMode > 9)
    sCardShop.currentSortMode = 0;
  // this part could be a macro or (static) inline func
  // sub_802DFF8
  temp = sCardShop.currentSortMode;
  gCardSortContext.cards = sCardShop.unkD2 + 1;
  gCardSortContext.cardCount = NUM_TRUE_CARDS;
  gCardSortContext.sortMode = g80CA0D7[temp];
  SortCardsAccordingToContext();
  //sub_802DFE4();
  sCardShop.unk724 = 4;
  sCardShop.firstVisibleRow = 114;
}

static inline void sub_802DF1C_inline (void) {
  u8 i, j;
  for (i = 0; i < 5; i++) {
    // sub_802DE84 inline?
    u8 temp = g80CA0B4[sCardShop.unk724][i];
    for (j = 0; j < 7; j++)
      sCardShop.unk0[i][j] = &sCardShop.unk8C[temp][j];
  }
}

static void InitBuyShop (void) {
  u16 i;
  u8 ii;
  for (i = 0; i < 806; i++)
    sCardShop.unkD2[i] = 0;
  for (i = 0; i < NUM_CARDS; i++) {
    gShopTempCardQty[i] = gShopCardQty[i];
    gPlayerTempCardQty[i] = gTrunkCardQty[i];
  }
  sCardShop.selectedMenuOption = 0;
  sCardShop.firstVisibleRow = 114;
  sCardShop.numRows = 115;
  sCardShop.unk724 = 4;
  sCardShop.currentSortMode = 0;
  sCardShop.cursorColumn = 0;
  sCardShop.cursorRow = 1;
  sCardShop.unkD2[0] = 0;
  for (i = 1; i < NUM_CARDS; i++)
    sCardShop.unkD2[i] = i;

  // sub_802DFF8
  gCardSortContext.cards = sCardShop.unkD2 + 1;
  gCardSortContext.cardCount = NUM_TRUE_CARDS;
  gCardSortContext.sortMode = g80CA0D7[0];
  SortCardsAccordingToContext();
  //sub_802DFE4();
  sCardShop.unk724 = 4;
  sCardShop.firstVisibleRow = 114;
  // sub_802DFF8 end

  sub_802DF1C_inline();

  //sub_802DF88
  for (ii = 0; ii < 5; ii++)
    sub_802DAF8(ii);
}

static void UpdatePlayerShopBuyResults (void) {
  unsigned short cardId;
  for (cardId = 0; cardId < NUM_CARDS; cardId++) {
    gShopCardQty[cardId] = gShopTempCardQty[cardId];
    gTrunkCardQty[cardId] = gPlayerTempCardQty[cardId];
  }
}

static void MoveCursorUpInBuyShop (void) {
  if (sCardShop.cursorRow > 1) {
    sCardShop.cursorRow--;
    return;
  }
  else {
    AddAmountToFirstVisibleRow(-1);
    sub_802DFA4();
    sub_802DF1C();
    sub_802DAF8(0);
    sub_802FE84(0);
    sub_8030068();
  }
}

static void MoveCursorDownInBuyShop (void) {
  if (sCardShop.cursorRow <= 2) {
    sCardShop.cursorRow++;
    return;
  }
  else {
    AddAmountToFirstVisibleRow(1);
    sub_802DFC4();
    sub_802DF1C();
    sub_802DAF8(4);
    sub_802FE84(4);
    sub_8030068();
  }
}

static void sub_802DE60 (void) {
  AddAmountToFirstVisibleRow(-10);
  sub_802DFE4();
}

static void sub_802DE74 (void) {
  AddAmountToFirstVisibleRow(10);
  sub_802DFE4();
}

static int sub_802DE84 (int arg0) {
  u8 arg0_u8 = arg0;
  return g80CA0B4[sCardShop.unk724][arg0_u8];
}

static void AddAmountToFirstVisibleRow (s16 amt) {
  sCardShop.firstVisibleRow = SafeRowWrapAround((s16)(sCardShop.firstVisibleRow + amt));
}

static s16 SafeRowWrapAround (int row) {
  s16 row_s16 = row;
  if (row_s16 < 0)
    row_s16 += sCardShop.numRows;
  else if (row_s16 >= sCardShop.numRows)
    row_s16 -= sCardShop.numRows;
  return row_s16;
}

static void sub_802DF1C (void) {
  u8 i, j;
  for (i = 0; i < 5; i++) {
    // sub_802DE84 inline?
    u8 temp = g80CA0B4[sCardShop.unk724][i];
    for (j = 0; j < 7; j++)
      sCardShop.unk0[i][j] = &sCardShop.unk8C[temp][j];
  }
}

static void sub_802DF88 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    sub_802DAF8(i);
}

static void sub_802DFA4 (void) {
  sCardShop.unk724 = g80CA0CD[sCardShop.unk724];
}

static void sub_802DFC4 (void) {
  sCardShop.unk724 = g80CA0D2[sCardShop.unk724];
}

static void sub_802DFE4 (void) {
  sCardShop.unk724 = 4;
}

static void sub_802DFF8 (u8 arg0) {
  gCardSortContext.cards = sCardShop.unkD2 + 1;
  gCardSortContext.cardCount = NUM_TRUE_CARDS;
  gCardSortContext.sortMode = g80CA0D7[arg0];
  SortCardsAccordingToContext();
  //sub_802DFE4();
  sCardShop.unk724 = 4;
  sCardShop.firstVisibleRow = 114;
}

static void SetCursorToNextUpOptionInShopConfirmBuySellMenu (void) {
  sCardShop.selectedMenuOption = gNextUpShopConfirmBuySellMenuOption[sCardShop.selectedMenuOption];
}

static void SetCursorToNextDownOptionInShopConfirmBuySellMenu (void) {
  sCardShop.selectedMenuOption = gNextDownShopConfirmBuySellMenuOption[sCardShop.selectedMenuOption];
}

static void ResetSelectedShopMenuOption (void) {
  sCardShop.selectedMenuOption = 0;
}

static void SetCursorToNextUpOptionInShopSortModeMenu (void) {
  sCardShop.selectedMenuOption = gNextUpShopSortModeOption[sCardShop.selectedMenuOption];
}

static void SetCursorToNextDownOptionInShopSortModeMenu (void) {
  sCardShop.selectedMenuOption = gNextDownShopSortModeOption[sCardShop.selectedMenuOption];
}

static void SetCursorToNextLeftOptionInShopSortModeMenu (void) {
  sCardShop.selectedMenuOption = gNextLeftShopSortModeOption[sCardShop.selectedMenuOption];
}

static void SetCursorToNextRightOptionInShopSortModeMenu (void) {
  sCardShop.selectedMenuOption = gNextRightShopSortModeOption[sCardShop.selectedMenuOption];
}

static void AddCardQtyToShop (u16 cardId, u8 qty) {
  if (cardId == CARD_NONE)
    return;
  if (!ShopHasSpaceForCardQty(cardId, qty))
    gShopTempCardQty[cardId] = SHOP_MAX_CARD_QTY;
  else
    gShopTempCardQty[cardId] += qty;
}

static void RemoveCardQtyFromShop (u16 cardId, u8 qty) {
  if (cardId == CARD_NONE)
    return;
  if (!(u8)ShopHasAtLeastQtyOfCard(cardId, qty))
    gShopTempCardQty[cardId] = 0;
  else
    gShopTempCardQty[cardId] -= qty;
}

static unsigned char ShopHasSpaceForCardQty (u16 cardId, u8 qty) {
  if (qty > SHOP_MAX_CARD_QTY - gShopTempCardQty[cardId])
    return 0;
  return 1;
}

static unsigned ShopHasAtLeastQtyOfCard (u16 cardId, u8 qty) {
  if (qty > gShopTempCardQty[cardId])
    return 0;
  return 1;
}

static void sub_802E1D8 (void) {
  u8 i;
  gBG0VOFS = 0;
  gBG0HOFS = 0;
  for (i = 0; i < 20; i++)
    CpuCopy16(g80CA114[i], ((struct Sbb*)&gBgVram)->sbb14[i], 60);
  for (i = 0; i < 20; i++)
    CpuCopy16(g80CA5C4[i], ((struct Sbb*)&gBgVram)->sbb15[i], 60);
  for (i = 0; i < 20; i++)
    CpuCopy16(g80CAA74[i], ((struct Sbb*)&gBgVram)->sbb16[i], 60);
}
/*
extern struct OamData gOamBuffer[];

static void sub_802E270 (void) {
  u16* oam = (u16*)gOamBuffer;
  u32 i = 0;

  oam[4 * 4] = 0xA0;
  oam[4 * 4 + 1] = 0xF0;
  oam[4 * 4 + 2] = 0xC00;
  oam[4 * 4 + 3] = 0;

  oam[5 * 4] = 0xA0;
  oam[5 * 4 + 1] = 0xF0;
  oam[5 * 4 + 2] = 0xC00;
  oam[5 * 4 + 3] = 0;

  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CDA60, 0x901);

  for (i = 0; i < 20; i++)
    CpuCopy16(g80CAF24[i], ((struct Sbb*)&gBgVram)->sbb16[i], 60);

  REG_DISPCNT &= ~DISPCNT_BG0_ON;
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
  LoadCharblock3();
  REG_BG0CNT = 0x160C;
  REG_DISPCNT |= DISPCNT_BG0_ON;
}*/

NAKED
static void sub_802E270 (void) {
  asm_unified("push {r4, r5, lr}\n\
	ldr r0, _0802E2EC\n\
	movs r4, #0\n\
	movs r3, #0xa0\n\
	strh r3, [r0, #0x20]\n\
	movs r2, #0xf0\n\
	strh r2, [r0, #0x22]\n\
	movs r1, #0xc0\n\
	lsls r1, r1, #4\n\
	strh r1, [r0, #0x24]\n\
	strh r4, [r0, #0x26]\n\
	strh r3, [r0, #0x28]\n\
	strh r2, [r0, #0x2a]\n\
	strh r1, [r0, #0x2c]\n\
	strh r4, [r0, #0x2e]\n\
	ldr r0, _0802E2F0\n\
	ldr r1, _0802E2F4\n\
	ldr r2, _0802E2F8\n\
	bl CopyStringTilesToVRAMBuffer\n\
	movs r5, #0\n\
_0802E29A:\n\
	ldr r0, _0802E2FC\n\
	adds r0, r5, r0\n\
	lsls r1, r4, #6\n\
	ldr r2, _0802E300\n\
	adds r1, r1, r2\n\
	movs r2, #0x1e\n\
	bl CpuSet\n\
	adds r5, #0x3c\n\
	adds r4, #1\n\
	cmp r4, #0x13\n\
	bls _0802E29A\n\
	movs r4, #0x80\n\
	lsls r4, r4, #0x13\n\
	ldrh r1, [r4]\n\
	ldr r0, _0802E304\n\
	ands r0, r1\n\
	strh r0, [r4]\n\
	ldr r0, _0802E308\n\
	bl SetVBlankCallback\n\
	bl WaitForVBlank\n\
	bl LoadCharblock2\n\
	bl LoadCharblock3\n\
	ldr r1, _0802E30C\n\
	ldr r2, _0802E310\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	ldrh r0, [r4]\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	adds r1, r2, #0\n\
	orrs r0, r1\n\
	strh r0, [r4]\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802E2EC: .4byte gOamBuffer\n\
_0802E2F0: .4byte 0x0200D400\n\
_0802E2F4: .4byte 0x080CDA60\n\
_0802E2F8: .4byte 0x00000901\n\
_0802E2FC: .4byte 0x080CAF24\n\
_0802E300: .4byte 0x0200B400\n\
_0802E304: .4byte 0x0000FEFF\n\
_0802E308: .4byte LoadOam\n\
_0802E30C: .4byte 0x04000008\n\
_0802E310: .4byte 0x0000160C");
}

static void sub_802E314 (void) {
  u16* ptr;
  u8 i;
  ConvertU64ToDigitArray(gMoney, DIGIT_FLAG_NONE);

  ptr = ((struct Sbb*)&gBgVram)->sbb14[12] + 27;
  for (i = 0; i < 16 && gDigitArrayU64[18 - i] != DIGIT_UNUSED; i++) {
    *ptr &= 0xF000;
    *ptr |= gDigitArrayU64[18 - i] + 0x195;
    ptr--;
  }

  // cast to BgScData?
  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x194;
  *ptr &= 0xF000;
  *ptr-- |= 0x193;
  *ptr &= 0xF000;
  *ptr-- |= 0x192;
  *ptr &= 0xF000;
  *ptr-- |= 0x191;
  *ptr &= 0xF000;
  *ptr-- |= 0x190;
  *ptr &= 0xF000;
  *ptr-- |= 0x18F;

  for (i += 7; i < 20; i++)
    *ptr-- &= 0xF000;
}

static void sub_802E404 (void) {
  u16* ptr;
  u8 i;
  ConvertU64ToDigitArray(gShopSelectedCard.buyPrice, DIGIT_FLAG_NONE);

  ptr = ((struct Sbb*)&gBgVram)->sbb14[2] + 27;
  for (i = 0; i < 16 && gDigitArrayU64[18 - i] != DIGIT_UNUSED; i++) {
    *ptr &= 0xF000;
    *ptr |= gDigitArrayU64[18 - i] + 0x195;
    ptr--;
  }

  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x18E;
  *ptr &= 0xF000;
  *ptr-- |= 0x18D;
  *ptr &= 0xF000;
  *ptr-- |= 0x18C;
  *ptr &= 0xF000;
  *ptr-- |= 0x18B;
  *ptr &= 0xF000;
  *ptr-- |= 0x18A;
  *ptr &= 0xF000;
  *ptr-- |= 0x189;

  for (i += 7; i < 20; i++)
    *ptr-- &= 0xF000;
}

// same as above, except for gShopHoveredCard.unk8
static void sub_802E4F4 (void) {
  u16* ptr;
  u8 i;
  ConvertU64ToDigitArray(gShopSelectedCard.sellPrice, DIGIT_FLAG_NONE);

  ptr = ((struct Sbb*)&gBgVram)->sbb14[2] + 27;
  for (i = 0; i < 16 && gDigitArrayU64[18 - i] != DIGIT_UNUSED; i++) {
    *ptr &= 0xF000;
    *ptr |= gDigitArrayU64[18 - i] + 0x195;
    ptr--;
  }

  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x18E;
  *ptr &= 0xF000;
  *ptr-- |= 0x18D;
  *ptr &= 0xF000;
  *ptr-- |= 0x18C;
  *ptr &= 0xF000;
  *ptr-- |= 0x18B;
  *ptr &= 0xF000;
  *ptr-- |= 0x18A;
  *ptr &= 0xF000;
  *ptr-- |= 0x189;

  for (i += 7; i < 20; i++)
    *ptr-- &= 0xF000;
}

static void sub_802E5E4 (void) {
  u32 r8;
  unsigned long long diff;
  u16* ptr;
  u8 i;
  unsigned long long cost, money;
  money = gMoney;
  cost = gShopSelectedCard.buyPrice;

  if (cost > money) {
    r8 = 1;
    diff = cost - money;
  }
  else {
    r8 = 0;
    diff = money - cost;
  }
  ConvertU64ToDigitArray(diff, DIGIT_FLAG_NONE);

  ptr = ((struct Sbb*)&gBgVram)->sbb14[4] + 27;
  for (i = 0; i < 16 && gDigitArrayU64[18 - i] != DIGIT_UNUSED; i++) {
    *ptr &= 0xF000;
    *ptr |= gDigitArrayU64[18 - i] + 0x195;
    ptr--;
  }
  if (r8 == 1) {
    *ptr &= 0xF000;
    *ptr-- |= 0x181;
    i++;
  }

  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x188;
  *ptr &= 0xF000;
  *ptr-- |= 0x187;
  *ptr &= 0xF000;
  *ptr-- |= 0x186;
  *ptr &= 0xF000;
  *ptr-- |= 0x185;
  *ptr &= 0xF000;
  *ptr-- |= 0x184;
  *ptr &= 0xF000;
  *ptr-- |= 0x183;

  for (i += 7; i < 21; i++)
    *ptr-- &= 0xF000;
}

static void sub_802E72C (void) {
  unsigned long long temp = gShopSelectedCard.sellPrice;
  unsigned long long temp2;
  u32 r0 = 0;
  u8 i;
  u16* ptr;

  if (DoesNotExceedMoneyLimit(temp) == 1)
    temp2 = gMoney + temp;
  else
    temp2 = 9999999999999;
  ConvertU64ToDigitArray(temp2, DIGIT_FLAG_NONE);


  ptr = ((struct Sbb*)&gBgVram)->sbb14[4] + 27;
  for (i = 0; i < 16 && gDigitArrayU64[18 - i] != DIGIT_UNUSED; i++) {
    *ptr &= 0xF000;
    *ptr |= gDigitArrayU64[18 - i] + 0x195;
    ptr--;
  }
  if (r0 == 1) {
    *ptr &= 0xF000;
    *ptr-- |= 0x181;
    i++;
  }

  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x188;
  *ptr &= 0xF000;
  *ptr-- |= 0x187;
  *ptr &= 0xF000;
  *ptr-- |= 0x186;
  *ptr &= 0xF000;
  *ptr-- |= 0x185;
  *ptr &= 0xF000;
  *ptr-- |= 0x184;
  *ptr &= 0xF000;
  *ptr-- |= 0x183;

  for (i += 7; i < 21; i++)
    *ptr-- &= 0xF000;
}

static void sub_802E868 (void) {
  u8 i;
  u16 r7;

  gBG1VOFS = 3;
  gBG1HOFS = 0;
  CopyStarTile(((struct Cbb*)&gBgVram)->cbb3 + 0x3400);
  CopySwordTile(((struct Cbb*)&gBgVram)->cbb3 + 0x3420);
  CopyShieldTile(((struct Cbb*)&gBgVram)->cbb3 + 0x3440);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x2780, g80CDC28, 0x801); // Cost
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x2800, g80CDC50, 0x801);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x2B00, g80CDCF0, 0x901);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x3000, g80CDD78, 0x801);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x32A0, g80CDE10, 0x1801);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x3460, g80CDE28, 0x801);

  for (i = 0; i < 20; i++)
    CpuCopy16(g80CB3D4[i], gBgVram.sbb1F[i], 60);

  r7 = sub_08007FEC(0, 0, 0xF800);
  for (i = 0; i < 6; i++)
    sub_800800C(i + 24, 1, 0xF800, (i + 419) | r7);

  r7 = sub_08007FEC(20, 18, 0xF800) & 0xFC00;
  for (i = 0; i < 2; i++) {
    sub_800800C(i + 20, 18, 0xF800, (g8DF811C[i] + 425) | r7);
    sub_800800C(i + 20, 19, 0xF800, (g8DF811C[i] + 427) | r7);
  }

  r7 = sub_08007FEC(22, 18, 0xF800) & 0xFC00;
  for (i = 0; i < 2; i++) {
    sub_800800C(i + 22, 18, 0xF800, (g8DF811C[i] + 429) | r7);
    sub_800800C(i + 22, 19, 0xF800, (g8DF811C[i] + 431) | r7);
  }

  sub_8008BF8(&gPaletteBuffer[0xA0]);
  sub_802EA74();
  sub_802FCF0(sCardShop.currentSortMode);
}

static void sub_802EA74 (void) {
  u16* ptr;
  u8 i;
  ConvertU64ToDigitArray(gMoney, DIGIT_FLAG_NONE);

  ptr = gBgVram.sbb1F[1] + 23;
  for (i = 0; i < 16 && gDigitArrayU64[18 - i] != DIGIT_UNUSED; i++) {
    *ptr &= 0xF000;
    *ptr |= gDigitArrayU64[18 - i] + 0x195;
    ptr--;
  }

  // cast to BgScData?
  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x194;
  *ptr &= 0xF000;
  *ptr-- |= 0x193;
  *ptr &= 0xF000;
  *ptr-- |= 0x192;
  *ptr &= 0xF000;
  *ptr-- |= 0x191;
  *ptr &= 0xF000;
  *ptr-- |= 0x190;
  *ptr &= 0xF000;
  *ptr-- |= 0x18F;

  for (i += 7; i < 20; i++)
    *ptr-- &= 0xF000;
}

static void sub_802EB64 (void) {
  u16* ptr = gBgVram.sbb1F[2] + 29;
  u8 i = 0;
  u8 j;

  if (gCardInfo.id != CARD_NONE) {
    *ptr &= 0xF000;
    *ptr-- |= 0x1A8;
    *ptr-- |= 0x1A7;
    *ptr-- |= 0x1A6;
    *ptr-- |= 0x1A5;
    *ptr-- |= 0x1A4;
    *ptr-- |= 0x1A3;

    i = 6;
    ConvertU64ToDigitArray(gShopSelectedCard.buyPrice, DIGIT_FLAG_NONE);
    for (j = 0; j < 16 && gDigitArrayU64[18 - j] != DIGIT_UNUSED; j++, i++) {
      *ptr &= 0xF000;
      *ptr |= gDigitArrayU64[18 - j] + 0x195;
      ptr--;
    }

    *ptr-- &= 0xF000;
    *ptr &= 0xF000;
    *ptr-- |= 0x18E;
    *ptr &= 0xF000;
    *ptr-- |= 0x18D;
    *ptr &= 0xF000;
    *ptr-- |= 0x18C;
    *ptr &= 0xF000;
    *ptr-- |= 0x18B;
    *ptr &= 0xF000;
    *ptr-- |= 0x18A;
    *ptr &= 0xF000;
    *ptr-- |= 0x189;
    i += 7;
  }

  for (; i < 23; i++)
    *ptr-- &= 0xF000;
}

static void sub_802ECCC (void) {
  u16* ptr = gBgVram.sbb1F[2] + 29;
  u8 i = 0;
  u8 j;

  if (gCardInfo.id != CARD_NONE) {
    *ptr &= 0xF000;
    *ptr-- |= 0x1A8;
    *ptr-- |= 0x1A7;
    *ptr-- |= 0x1A6;
    *ptr-- |= 0x1A5;
    *ptr-- |= 0x1A4;
    *ptr-- |= 0x1A3;

    i = 6;
    ConvertU64ToDigitArray(gShopSelectedCard.sellPrice, DIGIT_FLAG_NONE);
    for (j = 0; j < 16 && gDigitArrayU64[18 - j] != DIGIT_UNUSED; j++, i++) {
      *ptr &= 0xF000;
      *ptr |= gDigitArrayU64[18 - j] + 0x195;
      ptr--;
    }

    *ptr-- &= 0xF000;
    *ptr &= 0xF000;
    *ptr-- |= 0x14B;
    *ptr &= 0xF000;
    *ptr-- |= 0x14A;
    *ptr &= 0xF000;
    *ptr-- |= 0x149;
    *ptr &= 0xF000;
    *ptr-- |= 0x148;
    *ptr &= 0xF000;
    *ptr-- |= 0x147;
    *ptr &= 0xF000;
    *ptr-- |= 0x146;
    i += 7;
  }

  for (; i < 23; i++)
    *ptr-- &= 0xF000;
}

// print money left if player were to buy the currently selected card
static void sub_802EE34 (void) {
  u32 r8;
  unsigned long long diff;
  u8 paletteBank;
  u16* ptr = gBgVram.sbb1F[3] + 29;
  u8 i = 0;
  u8 j;

  if (gCardInfo.id != CARD_NONE) {
    if (gShopSelectedCard.buyPrice > gMoney) {
      r8 = 1;
      paletteBank = 14; // red
      diff = gShopSelectedCard.buyPrice - gMoney;
    }
    else {
      r8 = 0;
      paletteBank = 13;
      diff = gMoney - gShopSelectedCard.buyPrice;
    }
    *ptr-- = paletteBank << 12 | 0x1A8;
    *ptr-- = paletteBank << 12 | 0x1A7;
    *ptr-- = paletteBank << 12 | 0x1A6;
    *ptr-- = paletteBank << 12 | 0x1A5;
    *ptr-- = paletteBank << 12 | 0x1A4;
    *ptr-- = paletteBank << 12 | 0x1A3;

    i += 6;
    ConvertU64ToDigitArray(diff, DIGIT_FLAG_NONE);
    for (j = 0; j < 16 && gDigitArrayU64[18 - j] != DIGIT_UNUSED; j++, i++) {
      *ptr = paletteBank << 12 | gDigitArrayU64[18 - j] + 0x195;
      ptr--;
    }

    if (r8 == 1) { // minus sign
      *ptr-- = paletteBank << 12 | 0x181;
      i++;
    }

    *ptr-- &= 0xF000;
    *ptr-- = paletteBank << 12 | 0x188;
    *ptr-- = paletteBank << 12 | 0x187;
    *ptr-- = paletteBank << 12 | 0x186;
    *ptr-- = paletteBank << 12 | 0x185;
    *ptr-- = paletteBank << 12 | 0x184;
    *ptr-- = paletteBank << 12 | 0x183;
    i += 7;
  }

  for (; i < 24; i++)
    *ptr-- &= 0xF000;
}

static void sub_802EFFC (void) {
  u32 r8 = 0;
  unsigned long long temp;
  u8 paletteBank;
  u16* ptr = gBgVram.sbb1F[3] + 29;
  u8 i = 0;
  u8 j;

  if (gCardInfo.id != CARD_NONE) {
    if (DoesNotExceedMoneyLimit(gShopSelectedCard.sellPrice) == 1)
      temp = gMoney + gShopSelectedCard.sellPrice;
    else
      temp = 9999999999999;

    *ptr = *ptr & 0xF000 | 0x1A8;
    *ptr-- |= 0x1A8;
    *ptr-- |= 0x1A7;
    *ptr-- |= 0x1A6;
    *ptr-- |= 0x1A5;
    *ptr-- |= 0x1A4;
    *ptr-- |= 0x1A3;

    i += 6;
    ConvertU64ToDigitArray(temp, DIGIT_FLAG_NONE);

    for (j = 0; j < 16 && gDigitArrayU64[18 - j] != DIGIT_UNUSED; j++, i++) {
      *ptr = *ptr & 0xF000;
      *ptr |= gDigitArrayU64[18 - j] + 0x195;
      ptr--;
    }

    // never set to 1, only initialized to 0
    if (r8 == 1) {
      *ptr = *ptr & 0xF000 | 0x181;
      ptr--;
      i++;
    }

    *ptr-- &= 0xF000;
    *ptr &= 0xF000;
    *ptr-- |= 0x188;
    *ptr &= 0xF000;
    *ptr-- |= 0x187;
    *ptr &= 0xF000;
    *ptr-- |= 0x186;
    *ptr &= 0xF000;
    *ptr-- |= 0x185;
    *ptr &= 0xF000;
    *ptr-- |= 0x184;
    *ptr &= 0xF000;
    *ptr-- |= 0x183;
    i += 7;
  }

  for (; i < 24; i++)
    *ptr-- &= 0xF000;
}

/*
static void sub_802F1B4 (void) {
  u16* ptr = gBgVram.sbb1F[19] + 1;
  u8 i = 0;

  if (gCardInfo.id != CARD_NONE) {
    ConvertU64ToDigitArray(gShopHoveredCard.unk0, DIGIT_FLAG_ALIGN_LEFT);
    for (i = 0; i < 16 && gDigitArrayU64[i] != DIGIT_UNUSED; i++) {
      *ptr = 0xFFFFD000 | gDigitArrayU64[i] + 0x195; // problematic part
      ptr++
    }
    *ptr++ = 0xD183;
    *ptr++ = 0xD184;
    i += 2;
  }
  for (; i < 18; i++)
    *ptr++ &= 0xF000;
}
*/

NAKED
static void sub_802F1B4 (void) {
  asm_unified("push {r4, r5, lr}\n\
	ldr r5, _0802F234 @ =0x020100C2\n\
	movs r4, #0\n\
	ldr r0, _0802F238 @ =0x02021AD0\n\
	ldrh r0, [r0, #0x10]\n\
	cmp r0, #0\n\
	beq _0802F212\n\
	ldr r0, _0802F23C @ =0x02021AF0\n\
	ldr r1, [r0, #4]\n\
	ldr r0, [r0]\n\
	movs r2, #1\n\
	bl ConvertU64ToDigitArray\n\
	ldr r1, _0802F240 @ =0x02021BE0\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	beq _0802F1FC\n\
	ldr r0, _0802F244 @ =0x00000195\n\
	adds r3, r0, #0\n\
	ldr r0, _0802F248 @ =0xFFFFD000\n\
	adds r2, r0, #0\n\
_0802F1DE:\n\
	adds r0, r4, r1\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	orrs r0, r2\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0xf\n\
	bhi _0802F1FC\n\
	adds r0, r4, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #0xa\n\
	bne _0802F1DE\n\
_0802F1FC:\n\
	ldr r1, _0802F24C @ =0x0000D183\n\
	adds r0, r1, #0\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
_0802F212:\n\
	cmp r4, #0x11\n\
	bhi _0802F22E\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F21A:\n\
	ldrh r0, [r5]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x11\n\
	bls _0802F21A\n\
_0802F22E:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802F234: .4byte 0x020100C2\n\
_0802F238: .4byte 0x02021AD0\n\
_0802F23C: .4byte 0x02021AF0\n\
_0802F240: .4byte 0x02021BE0\n\
_0802F244: .4byte 0x00000195\n\
_0802F248: .4byte 0xFFFFD000\n\
_0802F24C: .4byte 0x0000D183");
}

NAKED
static void sub_802F250 (void) {
  asm_unified("push {r4, r5, lr}\n\
	ldr r5, _0802F2D0 @ =0x020100C2\n\
	movs r4, #0\n\
	ldr r0, _0802F2D4 @ =0x02021AD0\n\
	ldrh r0, [r0, #0x10]\n\
	cmp r0, #0\n\
	beq _0802F2AE\n\
	ldr r0, _0802F2D8 @ =0x02021AF0\n\
	ldr r1, [r0, #0xc]\n\
	ldr r0, [r0, #8]\n\
	movs r2, #1\n\
	bl ConvertU64ToDigitArray\n\
	ldr r1, _0802F2DC @ =0x02021BE0\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	beq _0802F298\n\
	ldr r0, _0802F2E0 @ =0x00000195\n\
	adds r3, r0, #0\n\
	ldr r0, _0802F2E4 @ =0xFFFFD000\n\
	adds r2, r0, #0\n\
_0802F27A:\n\
	adds r0, r4, r1\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	orrs r0, r2\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0xf\n\
	bhi _0802F298\n\
	adds r0, r4, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #0xa\n\
	bne _0802F27A\n\
_0802F298:\n\
	ldr r1, _0802F2E8 @ =0x0000D183\n\
	adds r0, r1, #0\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
_0802F2AE:\n\
	cmp r4, #0x11\n\
	bhi _0802F2CA\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F2B6:\n\
	ldrh r0, [r5]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x11\n\
	bls _0802F2B6\n\
_0802F2CA:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802F2D0: .4byte 0x020100C2\n\
_0802F2D4: .4byte 0x02021AD0\n\
_0802F2D8: .4byte 0x02021AF0\n\
_0802F2DC: .4byte 0x02021BE0\n\
_0802F2E0: .4byte 0x00000195\n\
_0802F2E4: .4byte 0xFFFFD000\n\
_0802F2E8: .4byte 0x0000D183");
}

NAKED
static void sub_802F2EC (void) {
  asm_unified("push {r4, r5, r6, lr}\n\
	ldr r4, _0802F39C\n\
	movs r5, #0\n\
	ldr r2, _0802F3A0\n\
	ldrh r0, [r2, #0x10]\n\
	cmp r0, #0\n\
	beq _0802F378\n\
	ldr r1, _0802F3A4\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #0x2b\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	movs r5, #7\n\
	ldr r1, _0802F3A8\n\
	ldrh r0, [r2, #0x10]\n\
	adds r0, r0, r1\n\
	ldrb r0, [r0]\n\
	movs r1, #1\n\
	bl ConvertU16ToDigitArray\n\
	movs r1, #0\n\
	ldr r2, _0802F3AC\n\
	ldrb r0, [r2]\n\
	cmp r0, #0xa\n\
	beq _0802F378\n\
	ldr r0, _0802F3B0\n\
	adds r6, r0, #0\n\
	ldr r0, _0802F3B4\n\
	adds r3, r0, #0\n\
_0802F354:\n\
	adds r0, r1, r2\n\
	ldrb r0, [r0]\n\
	adds r0, r6, r0\n\
	orrs r0, r3\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r0, r1, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r1, r0, #0x18\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r1, #2\n\
	bhi _0802F378\n\
	adds r0, r1, r2\n\
	ldrb r0, [r0]\n\
	cmp r0, #0xa\n\
	bne _0802F354\n\
_0802F378:\n\
	cmp r5, #9\n\
	bhi _0802F394\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F380:\n\
	ldrh r0, [r4]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r4]\n\
	adds r4, #2\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #9\n\
	bls _0802F380\n\
_0802F394:\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802F39C: .4byte 0x02010040\n\
_0802F3A0: .4byte gCardInfo\n\
_0802F3A4: .4byte 0x0000D152\n\
_0802F3A8: .4byte 0x02022120\n\
_0802F3AC: .4byte 0x02021BD0\n\
_0802F3B0: .4byte 0x00000195\n\
_0802F3B4: .4byte 0xFFFFD000");
}

NAKED
static void sub_802F3B8 (void) {
  asm_unified("push {r4, r5, r6, lr}\n\
	ldr r4, _0802F41C\n\
	movs r5, #0\n\
	ldr r0, _0802F420\n\
	ldrh r2, [r0, #0x12]\n\
	ldr r1, _0802F424\n\
	adds r3, r0, #0\n\
	cmp r2, r1\n\
	beq _0802F452\n\
	ldrh r0, [r3, #0x12]\n\
	movs r1, #0\n\
	bl ConvertU16ToDigitArray\n\
	ldr r1, _0802F428\n\
	ldr r0, _0802F42C\n\
	adds r3, r0, #0\n\
	ldrb r2, [r1, #4]\n\
	adds r0, r3, r2\n\
	ldr r6, _0802F430\n\
	adds r2, r6, #0\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #3]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #2]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #1]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	bne _0802F438\n\
	ldr r1, _0802F434\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrh r1, [r4]\n\
	movs r0, #0xf0\n\
	lsls r0, r0, #8\n\
	ands r0, r1\n\
	b _0802F446\n\
	.align 2, 0\n\
_0802F41C: .4byte 0x020100BA\n\
_0802F420: .4byte gCardInfo\n\
_0802F424: .4byte 0x0000FFFF\n\
_0802F428: .4byte 0x02021BD0\n\
_0802F42C: .4byte 0x00000195\n\
_0802F430: .4byte 0xFFFFD000\n\
_0802F434: .4byte 0x0000A1A1\n\
_0802F438:\n\
	ldrb r1, [r1]\n\
	adds r0, r3, r1\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldr r2, _0802F4D0\n\
	adds r0, r2, #0\n\
_0802F446:\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	adds r0, r5, #6\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	ldr r3, _0802F4D4\n\
_0802F452:\n\
	ldr r6, _0802F4D8\n\
	cmp r5, #5\n\
	bhi _0802F470\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F45C:\n\
	ldrh r0, [r4]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r4]\n\
	subs r4, #2\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #5\n\
	bls _0802F45C\n\
_0802F470:\n\
	adds r4, r6, #0\n\
	movs r5, #0\n\
	ldrh r1, [r3, #0x14]\n\
	ldr r0, _0802F4DC\n\
	cmp r1, r0\n\
	beq _0802F508\n\
	adds r0, r1, #0\n\
	movs r1, #0\n\
	bl ConvertU16ToDigitArray\n\
	ldr r1, _0802F4E0\n\
	ldr r6, _0802F4E4\n\
	adds r3, r6, #0\n\
	ldrb r2, [r1, #4]\n\
	adds r0, r3, r2\n\
	ldr r6, _0802F4E8\n\
	adds r2, r6, #0\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #3]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #2]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #1]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	bne _0802F4F0\n\
	ldr r1, _0802F4EC\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrh r1, [r4]\n\
	movs r0, #0xf0\n\
	lsls r0, r0, #8\n\
	ands r0, r1\n\
	b _0802F4FE\n\
	.align 2, 0\n\
_0802F4D0: .4byte 0x0000A1A1\n\
_0802F4D4: .4byte gCardInfo\n\
_0802F4D8: .4byte 0x020100FA\n\
_0802F4DC: .4byte 0x0000FFFF\n\
_0802F4E0: .4byte 0x02021BD0\n\
_0802F4E4: .4byte 0x00000195\n\
_0802F4E8: .4byte 0xFFFFD000\n\
_0802F4EC: .4byte 0x0000A1A2\n\
_0802F4F0:\n\
	ldrb r1, [r1]\n\
	adds r0, r3, r1\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldr r2, _0802F52C\n\
	adds r0, r2, #0\n\
_0802F4FE:\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	adds r0, r5, #6\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
_0802F508:\n\
	cmp r5, #5\n\
	bhi _0802F524\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F510:\n\
	ldrh r0, [r4]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r4]\n\
	subs r4, #2\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #5\n\
	bls _0802F510\n\
_0802F524:\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802F52C: .4byte 0x0000A1A2");
}

static void sub_802F530 (void) {
  u16* ptr = gBgVram.sbb1F[17] + 20;
  if (!gCardInfo.level) {
    *ptr++ &= 0xF000;
    *ptr++ &= 0xF000;
    *ptr &= 0xF000;
  }
  else {
    ConvertU16ToDigitArray(gCardInfo.level, DIGIT_FLAG_ALIGN_LEFT);
    *ptr++ = 0xA1A0;
    *ptr &= 0xF000;
    *ptr++ |= gDigitArrayU16[0] + 0x195;
    *ptr &= 0xF000;
    *ptr |= gDigitArrayU16[1] + 0x195;
  }
}

static void sub_802F5B0 (void) {
  u8 r4;
  u16 r5;
  u16 i;
  u8 buffer[32];

  CpuFill16(0, gBgVram.sbb1E[24] + 16, 0x1E0);

  r4 = 0;
  i = GetLanguageStringOffset(gCardInfo.name);
  r5 = 0;
  while (r5 < 15 && gCardInfo.name[i] && gCardInfo.name[i] != '$') {
    if (gCardInfo.name[i] > 127) {
      buffer[r4] = gCardInfo.name[i];
      r4++;
      i++;
    }
    buffer[r4] = gCardInfo.name[i];
    r4++;
    i++;
    r5++;
  }
  for (; r5 < 16; r4++, r5++)
    buffer[r4] = 0;
  CopyStringTilesToVRAMBuffer(gBgVram.sbb1E[24] + 16, buffer, 0x801);
}

static void sub_802F66C (void) {
  u16* ptr = gBgVram.sbb1F[19] + 1;
  u8 i;

  if (!gCardInfo.id) {
    for (i = 0; i < 4; i++) {
      *ptr = *ptr & 0xF000 | 0x19F;
      ptr++;
    }
  }
  else {
    ConvertU16ToDigitArray(gCardInfo.id, DIGIT_FLAG_ALIGN_LEFT);
    for (i = 0; i < 4; i++) {
      *ptr &= 0xF000;
      *ptr++ |= gDigitArrayU16[i] + 0x195;
    }
  }
}

static void sub_802F6E8 (void) {
  u16* ptr = gBgVram.sbb1F[17] + 10;
  u8 i = 0, j;

  if (gCardInfo.id != CARD_NONE) {
    *ptr &= 0xF000;
    *ptr++ |= 0x14C;
    *ptr &= 0xF000;
    *ptr++ |= 0x14D;
    *ptr &= 0xF000;
    *ptr++ |= 0x14E;
    *ptr &= 0xF000;
    *ptr++ |= 0x14F;
    *ptr &= 0xF000;
    *ptr++ |= 0x150;
    *ptr &= 0xF000;
    *ptr++ |= 0x151;
    *ptr &= 0xF000;
    *ptr++ |= 0x182;
    i = 7;
    ConvertU16ToDigitArray(gPlayerTempCardQty[gCardInfo.id], DIGIT_FLAG_ALIGN_LEFT);
    for (j = 0; j < 3 && gDigitArrayU16[j] != DIGIT_UNUSED; j++, i++) {
      *ptr &= 0xF000;
      *ptr++ |= gDigitArrayU16[j] + 0x195;
    }
  }
  for (; i < 10; i++)
    *ptr++ &= 0xF000;
}

static void sub_802F7F0 (void) {
  u16* ptr = gBgVram.sbb1F[18] + 10;
  u8 i = 0, j;

  if (gCardInfo.id != CARD_NONE) {
    *ptr &= 0xF000;
    *ptr++ |= 0x140;
    *ptr &= 0xF000;
    *ptr++ |= 0x141;
    *ptr &= 0xF000;
    *ptr++ |= 0x142;
    *ptr &= 0xF000;
    *ptr++ |= 0x143;
    *ptr &= 0xF000;
    *ptr++ |= 0x144;
    *ptr &= 0xF000;
    *ptr++ |= 0x145;
    *ptr &= 0xF000;
    *ptr++ |= 0x182;
    i = 7;
    ConvertU16ToDigitArray(GetDeckCardQty(gCardInfo.id), DIGIT_FLAG_ALIGN_LEFT);
    for (j = 0; j < 3 && gDigitArrayU16[j] != DIGIT_UNUSED; j++, i++) {
      *ptr &= 0xF000;
      *ptr++ |= gDigitArrayU16[j] + 0x195;
    }
  }
  for (; i < 10; i++)
    *ptr++ &= 0xF000;
}

static void sub_802F8F8 (void) {
  u16* ptr = gBgVram.sbb1F[17] + 29;
  u8 i = 0;

  if (gCardInfo.id != CARD_NONE) {
    for (i = 0; i < 5 && gDigitArrayU16[5 - i] != DIGIT_UNUSED; i++) {
      ConvertU16ToDigitArray(gCardInfo.cost, DIGIT_FLAG_NONE);
      *ptr &= 0xF000;
      *ptr |= gDigitArrayU16[4 - i] + 0x195;
      ptr--;
    }
    for (; i < 4; i++)
      *ptr-- &= 0xF000;

    ptr++;
    *ptr &= 0xF000;
    *ptr-- |= 0x13F;
    *ptr &= 0xF000;
    *ptr-- |= 0x13E;
    *ptr &= 0xF000;
    *ptr-- |= 0x13D;
    *ptr &= 0xF000;
    *ptr |= 0x13C;

  }
  else
    for (; i < 7; i++)
      *ptr-- &= 0xF000;
}

static void sub_802F9E8 (void) {
  u8 i;
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  for (i = 0; i < 4; i++)
    CpuCopy16(g80CD2A0[i], gBgVram.cbb4 + i * 0x400, 0x80);

  CpuCopy16(g80CD4A0, gPaletteBuffer + 256 + 128, 0x20);
  sub_802FB08();

  for (i = 0; i < 4; i++)
    CpuCopy16(g80CD4C0[i], gBgVram.cbb4 + 0x80 + i * 0x400, 0x80);
  sub_80300F8();

  for (i = 0; i < 2; i++)
    CpuCopy16(g80CD200[i], gBgVram.cbb4 + 0x100 + i * 0x400, 0x40);
  CpuCopy16(g80CD280, gPaletteBuffer + 256 + 144, 0x20);

  for (i = 0; i < 2; i++)
    CpuCopy16(g80CD1A0[i], gBgVram.cbb4 + 0x900 + i * 0x400, 0x20);
  CpuCopy16(g80CD1E0, gPaletteBuffer + 256 + 160, 0x20);
  sub_803028C();
}

/*
static void sub_802FB08 (void) {
  u32* oam = (u32*)gOamBuffer;
  u32 r1 = g80CDE64[sCardShop.cursorColumn] << 16;
  r1 &= 0x1FF0000;
  r1 |= g80CDE5A[sCardShop.cursorRow] & 0xFF;
  r1 |= 0x80000000;
  oam[0] = r1;
  oam[1] = 0x8800;
}
*/

NAKED
static void sub_802FB08 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	ldr r3, _0802FBDC\n\
	ldr r0, _0802FBE0\n\
	mov sb, r0\n\
	ldr r2, _0802FBE4\n\
	ldr r7, _0802FBE8\n\
	adds r5, r2, r7\n\
	movs r0, #0\n\
	ldrsb r0, [r5, r0]\n\
	lsls r0, r0, #1\n\
	add r0, sb\n\
	ldrh r1, [r0]\n\
	lsls r1, r1, #0x10\n\
	ldr r6, _0802FBEC\n\
	ands r1, r6\n\
	ldr r0, _0802FBF0\n\
	mov r8, r0\n\
	adds r7, #1\n\
	adds r2, r2, r7\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	ldrb r0, [r0]\n\
	orrs r1, r0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #0x18\n\
	orrs r1, r0\n\
	str r1, [r3]\n\
	movs r4, #0x88\n\
	lsls r4, r4, #8\n\
	str r4, [r3, #4]\n\
	movs r0, #0\n\
	ldrsb r0, [r5, r0]\n\
	lsls r0, r0, #1\n\
	add r0, sb\n\
	ldrh r0, [r0]\n\
	adds r0, #0x1e\n\
	lsls r0, r0, #0x10\n\
	ands r0, r6\n\
	movs r1, #0\n\
	ldrsb r1, [r2, r1]\n\
	lsls r1, r1, #1\n\
	add r1, r8\n\
	movs r7, #0xff\n\
	mov sl, r7\n\
	ldrb r1, [r1]\n\
	orrs r0, r1\n\
	movs r1, #0x90\n\
	lsls r1, r1, #0x18\n\
	orrs r0, r1\n\
	str r0, [r3, #8]\n\
	str r4, [r3, #0xc]\n\
	movs r0, #0\n\
	ldrsb r0, [r5, r0]\n\
	lsls r0, r0, #1\n\
	add r0, sb\n\
	ldrh r1, [r0]\n\
	lsls r1, r1, #0x10\n\
	ands r1, r6\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	ldrh r0, [r0]\n\
	adds r0, #0x1e\n\
	ands r0, r7\n\
	orrs r1, r0\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #0x18\n\
	orrs r1, r0\n\
	str r1, [r3, #0x10]\n\
	str r4, [r3, #0x14]\n\
	movs r0, #0\n\
	ldrsb r0, [r5, r0]\n\
	lsls r0, r0, #1\n\
	add r0, sb\n\
	ldrh r1, [r0]\n\
	adds r1, #0x1e\n\
	lsls r1, r1, #0x10\n\
	ands r1, r6\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	ldrh r0, [r0]\n\
	adds r0, #0x1e\n\
	ands r0, r7\n\
	orrs r1, r0\n\
	movs r0, #0xb0\n\
	lsls r0, r0, #0x18\n\
	orrs r1, r0\n\
	str r1, [r3, #0x18]\n\
	str r4, [r3, #0x1c]\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802FBDC: .4byte gOamBuffer\n\
_0802FBE0: .4byte 0x080CDE64\n\
_0802FBE4: .4byte 0x02022450\n\
_0802FBE8: .4byte 0x00000722\n\
_0802FBEC: .4byte 0x01FF0000\n\
_0802FBF0: .4byte 0x080CDE5A");
}

// bg effect of all non-selected cards in shop grid
static void SetBgDimEffectLow (void) {
  gBLDCNT = 0xCC;
  gBLDALPHA = 0;
  gBLDY = 4;
}

// bg effect of comfirm/sort-mode shop menus
static void SetBgDimEffectMed (void) {
  gBLDCNT = 0xDC;
  gBLDALPHA = 0;
  gBLDY = 8;
}

static void sub_802FC34 (void) {
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CD6C0, 0x901);
}

static void sub_802FC50 (void) {
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CD778, 0x901);
}

static void sub_802FC6C (void) {
  gOamBuffer[20] = 0xA0;
  gOamBuffer[21] = 0xF0;
  gOamBuffer[22] = 0xC00;
  gOamBuffer[23] = 0;
}

static void sub_802FC88 (void) {
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CD778, 0x901);
  UpdateConfirmBuyMenuCursorSpritePos();
  UpdateConfirmBuyMenuCursorBgSpritePos();
  REG_DISPCNT &= ~DISPCNT_BG0_ON;
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
  LoadCharblock3();
  REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(20);
  REG_DISPCNT |= DISPCNT_BG0_ON;
}

/*
static void sub_802FCF0 (u8 arg0) {
  u16* ptr = gBgVram.sbb1F[1] + 2;
  *ptr = *ptr & 0xF000 | arg0 + 344;
  ptr++;

  *ptr = *ptr & 0xF000 | arg0 + 345;
  ptr = gBgVram.sbb1F[2] + 2;

  *ptr = *ptr & 0xF000 | arg0 + 346;
  ptr++;

  *ptr = *ptr & 0xF000 | arg0 + 347;
  ptr++;
}*/

NAKED
static void sub_802FCF0 (u8 arg0) {
  asm_unified("push {r4, r5, lr}\n\
	lsls r0, r0, #0x18\n\
	ldr r2, _0802FD40\n\
	ldrh r4, [r2]\n\
	movs r3, #0xf0\n\
	lsls r3, r3, #8\n\
	adds r1, r3, #0\n\
	ands r1, r4\n\
	lsrs r4, r0, #0x16\n\
	movs r5, #0xac\n\
	lsls r5, r5, #1\n\
	adds r0, r4, r5\n\
	orrs r1, r0\n\
	strh r1, [r2]\n\
	adds r2, #2\n\
	ldrh r1, [r2]\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	adds r5, #1\n\
	adds r1, r4, r5\n\
	orrs r0, r1\n\
	strh r0, [r2]\n\
	adds r2, #0x3e\n\
	ldrh r1, [r2]\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	adds r5, #1\n\
	adds r1, r4, r5\n\
	orrs r0, r1\n\
	strh r0, [r2]\n\
	adds r2, #2\n\
	ldrh r0, [r2]\n\
	ands r3, r0\n\
	ldr r1, _0802FD44\n\
	adds r0, r4, r1\n\
	orrs r3, r0\n\
	strh r3, [r2]\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802FD40: .4byte 0x0200FC44\n\
_0802FD44: .4byte 0x0000015B");
}

static void sub_802FD48 (u16 cardId) {
  SetCardInfo(cardId);
  sub_802F66C();
  sub_802F5B0();
  sub_802FDC0();
  sub_802F530();
  sub_802F3B8();
  sub_802F2EC();
  sub_802F6E8();
  sub_802EB64();
  sub_802EE34();
  sub_802F7F0();
  sub_802F8F8();
}

static void sub_802FD84 (u16 cardId) {
  SetCardInfo(cardId);
  sub_802F66C();
  sub_802F5B0();
  sub_802FDC0();
  sub_802F530();
  sub_802F3B8();
  sub_802F2EC();
  sub_802F6E8();
  sub_802ECCC();
  sub_802EFFC();
  sub_802F7F0();
  sub_802F8F8();
}

static void sub_802FDC0 (void) {
  CopyAttributeIconTiles(gCardInfo.attribute, ((struct Cbb*)&gBgVram)->cbb3 + 0x35A0);
  CopyAttributeIconPal(gCardInfo.attribute, gPaletteBuffer + 0xC0);
  CopyTypeIconTiles(gCardInfo.type, ((struct Cbb*)&gBgVram)->cbb3 + 0x3520);
  CopyTypeIconPal(gCardInfo.type, gPaletteBuffer + 0xB0);
}

static void sub_802FE00 (void) {
  u8 i;
  sub_8030068();
  CpuFill16(0, gBgVram.cbb0, 64);
  sub_802FE68();
  CopyMiniCardPalette(gPaletteBuffer);
  gPaletteBuffer[0] = 0;
  for (i = 0; i < 36; i++)
    CpuCopy16(g80CB884[i], gBgVram.cbb0 + 0x12 * 0x800 + i * 64, 60);
}

static void sub_802FE68 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    sub_802FE84(i);
}

static void sub_802FE84 (int arg0) {
  u8 i;
  u8 r7 = sub_802DE84((u8)arg0);
  u8* r5 = &gBgVram.cbb0[0x40 + r7 * 0x1C00];

  for (i = 0; i < 7; r5 += 0x400, i++) {
    u16 cardId = sCardShop.unk8C[r7][i];
    if (cardId == CARD_NONE)
      CpuCopy16(g80CC0F4, r5, 0x400);
    else {
      sub_805742C(r5, cardId);
      CopyNumTributesTile(r5, cardId);
      CopyAttributeIconTile(r5, cardId);
      sub_802FF78(r5, cardId);
      sub_802FFF0(r5, cardId);
    }
  }
}
// almost same as sub_80576B4
static void CopyAttributeIconTile (u8* arg0, u16 cardId) {
  arg0 += 0xC0;
  SetCardInfo(cardId);
  if (gCardInfo.attribute != ATTRIBUTE_NONE)
    CpuCopy16(g8E1168C[gCardInfo.attribute], arg0, 64);
}

//almost same as sub_80576EC
static void CopyNumTributesTile (u8* arg0, u16 cardId) {
  u8 numTributes = GetNumRequiredTributes(cardId);
  if (numTributes)
    CpuCopy16(g89A7ADE[numTributes], arg0, 64);
}

//same as sub_80572A8 except for arg0 + 0x200, and stat mod
static void sub_802FF78 (u8* arg0, u16 cardId) {
  SetCardInfo(cardId);
  if (gCardInfo.spellEffect != 2)
    return;
  if (gCardInfo.atk / 100 > 99)
    ConvertU16ToDigitArray(99, DIGIT_FLAG_NONE);
  else
    ConvertU16ToDigitArray(gCardInfo.atk / 100, DIGIT_FLAG_NONE);
  arg0 += 0x200;
  CpuCopy16(g89A81DE[gDigitArrayU16[3]], arg0, 0x40);
  arg0 += 0x40;
  CpuCopy16(g89A7F1E[gDigitArrayU16[4]], arg0, 0x40);
}

static void sub_802FFF0 (u8* arg0, u16 cardId) {
  SetCardInfo(cardId);
  if (gCardInfo.spellEffect != 2)
    return;
  if (gCardInfo.def / 100 > 99)
    ConvertU16ToDigitArray(99, DIGIT_FLAG_NONE);
  else
    ConvertU16ToDigitArray(gCardInfo.def / 100, DIGIT_FLAG_NONE);
  arg0 += 0x280;
  CpuCopy16(g89A875E[gDigitArrayU16[3]], arg0, 0x40);
  arg0 += 0x40;
  CpuCopy16(g89A849E[gDigitArrayU16[4]], arg0, 0x40);
}

static void sub_8030068 (void) {
  gBG2VOFS = sCardShop.unk724 * 32;
  gBG2HOFS = 0;
}

static void sub_8030090 (void) {
  u8 i;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LZ77UnCompWram(g80CC4F4, ((struct Cbb*)&gBgVram)->cbb3);
  CpuCopy16(g80CCC90, gPaletteBuffer + 0xD0, 0x60);
  for (i = 0; i < 20; i++)
    CpuCopy16(g80CCCF0[i], ((struct Sbb*)&gBgVram)->sbb17[i], 60);
}

static void sub_80300F8 (void) {
  u32* oam = (u32*)gOamBuffer + 8;
  u32 r1 = g80CDE7C[sCardShop.cursorColumn] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDE72[sCardShop.cursorRow][0];
  r1 |= 0x80000800;
  oam[0] = r1;
  oam[1] = 0x804;
}

static void UpdateConfirmBuyMenuCursorSpritePos (void) {
  u32* oam = (u32*)gOamBuffer + 10;
  u32 r1 = g80CDE90[sCardShop.selectedMenuOption] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDE8A[sCardShop.selectedMenuOption][0];
  r1 |= 0x40000000;
  oam[0] = r1;
  oam[1] = 0x9408;
}

static void UpdateConfirmBuyMenuCursorBgSpritePos (void) {
  u32* oam = (u32*)gOamBuffer + 8;
  u32 r1 = g80CDE90[sCardShop.selectedMenuOption] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDE8A[sCardShop.selectedMenuOption][0];
  r1 |= 0x40000800;
  oam[0] = r1;
  oam[1] = 0x408;
}

static void UpdateConfirmBuySellMenuCursorSpritePos (void) {
  u32* oam = (u32*)gOamBuffer + 10;
  u32 r1 = g80CDE96[sCardShop.selectedMenuOption] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDEAC[sCardShop.selectedMenuOption][0];
  r1 |= 0x40000000;
  oam[0] = r1;
  oam[1] = 0x9408;
}

static void UpdateConfirmBuySellMenuCursorBgSpritePos (void) {
  u32* oam = (u32*)gOamBuffer + 8;
  u32 r1 = g80CDE96[sCardShop.selectedMenuOption] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDEAC[sCardShop.selectedMenuOption][0];
  r1 |= 0x40000800;
  oam[0] = r1;
  oam[1] = 0x408;
}

// see this for oam access clues
static void sub_803028C (void) {
  u32* oam;
  u8 r0 = SafeRowWrapAround(sCardShop.firstVisibleRow + sCardShop.cursorRow) * 127 / sCardShop.numRows + 1;
  oam = (u32*)gOamBuffer + 12;
  oam[0] = r0 | 0x8000;
  oam[1] = 0xAC48;
}

static void sub_80302F0 (void) {
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CD830, 0x901);
}

static void OpenSortSelectMenuInBuyShop (void) {
  unsigned keepProcessing;
  sCardShop.selectedMenuOption = sCardShop.currentSortMode;
  SetBgDimEffectMed();
  sub_80302F0();
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  sub_80309D8();
  SetVBlankCallback(sub_80306E0);
  WaitForVBlank();
  PlayMusic(SFX_SELECT);
  keepProcessing = 1;
  while (keepProcessing) {
    switch (ProcessInput()) {
      case REPEAT_DPAD_UP:
        MoveUpInBuyShopSortModeMenu();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_DOWN:
        MoveDownInBuyShopSortModeMenu();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_LEFT:
        MoveLeftInBuyShopSortModeMenu();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case REPEAT_DPAD_RIGHT:
        MoveRightInBuyShopSortModeMenu();
        PlayMusic(SFX_MOVE_CURSOR);
        break;
      case NEW_A_BUTTON:
        if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT) {
          CancelBuyShopSortModeMenu();
          PlayMusic(SFX_SELECT);
        }
        else {
          sCardShop.currentSortMode = sCardShop.selectedMenuOption;
          SelectSortModeInBuyShop();
        }
        return;
      case NEW_B_BUTTON:
      case NEW_START_BUTTON:
        CancelBuyShopSortModeMenu();
        PlayMusic(SFX_CANCEL);
        return;
      default:
        WaitForVBlank();
        break;
    }
  }
}

static void SelectSortModeInBuyShop (void) {
  unsigned short cardId;
  sCardShop.currentSortMode = sCardShop.selectedMenuOption;
  sub_802DFF8(sCardShop.currentSortMode);
  sub_802DF1C();
  sub_802DF88();

  cardId = *sCardShop.unk0[sCardShop.cursorRow][sCardShop.cursorColumn];
  gShopSelectedCard.cardId = cardId;
  gShopSelectedCard.shopQty = gShopTempCardQty[cardId];
  ScalePriceToQty();
  PlayMusic(SFX_SELECT);
  SetBgDimEffectLow();
  sub_802FCF0(sCardShop.currentSortMode);
  sub_802FD48(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  sub_80300F8();
  sub_802FC6C();
  SetVBlankCallback(sub_803071C);
  WaitForVBlank();
  sub_8030A48();
}

static void MoveUpInBuyShopSortModeMenu (void) {
  SetCursorToNextUpOptionInShopSortModeMenu();
  if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT)
    sub_802FCF0(sCardShop.currentSortMode);
  else
    sub_802FCF0(sCardShop.selectedMenuOption);
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030710);
  WaitForVBlank();
  sub_8030A10();
}

static void MoveDownInBuyShopSortModeMenu (void) {
  SetCursorToNextDownOptionInShopSortModeMenu();
  if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT)
    sub_802FCF0(sCardShop.currentSortMode);
  else
    sub_802FCF0(sCardShop.selectedMenuOption);
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030710);
  WaitForVBlank();
  sub_8030A10();
}

static void MoveLeftInBuyShopSortModeMenu (void) {
  SetCursorToNextLeftOptionInShopSortModeMenu();
  if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT)
    sub_802FCF0(sCardShop.currentSortMode);
  else
    sub_802FCF0(sCardShop.selectedMenuOption);
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030710);
  WaitForVBlank();
  sub_8030A10();
}

static void MoveRightInBuyShopSortModeMenu (void) {
  SetCursorToNextRightOptionInShopSortModeMenu();
  if (sCardShop.selectedMenuOption == SHOP_SORT_MODE_MENU_OPTION_EXIT)
    sub_802FCF0(sCardShop.currentSortMode);
  else
    sub_802FCF0(sCardShop.selectedMenuOption);
  UpdateConfirmBuySellMenuCursorSpritePos();
  UpdateConfirmBuySellMenuCursorBgSpritePos();
  SetVBlankCallback(sub_8030710);
  WaitForVBlank();
  sub_8030A10();
}

static void CancelBuyShopSortModeMenu (void) {
  sub_802FCF0(sCardShop.currentSortMode);
  sub_80300F8();
  SetBgDimEffectLow();
  sub_802FC6C();
  SetVBlankCallback(sub_803073C);
  WaitForVBlank();
  sub_8030AF8();
}

static void sub_803060C (void) {
  DisableDisplay();
  REG_BG1CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(31);
  REG_BG2CNT = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_256COLOR | BGCNT_SCREENBASE(18) | BGCNT_TXT256x512;
  REG_BG3CNT = 0x170F;
  REG_WINOUT = 0x1C3F;
  LoadBgOffsets();
  LoadBlendingRegs();
}

static void sub_8030654 (void) {
  LoadOam();
}

static void sub_8030660 (void) {
  LoadOam();
}

//unused?
static void sub_803066C (void) {
  LoadOam();
}

static void sub_8030678 (void) {
  LoadOam();
}

static void sub_8030684 (void) {
  LoadOam();
}

static void sub_8030690 (void) {
  REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(20);
  REG_DISPCNT |= DISPCNT_BG0_ON;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_80306C0 (void) {
  REG_DISPCNT &= ~DISPCNT_BG0_ON;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_80306E0 (void) {
  REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(21);
  REG_DISPCNT |= DISPCNT_BG0_ON;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_8030710 (void) {
  LoadOam();
}

static void sub_803071C (void) {
  REG_DISPCNT &= ~DISPCNT_BG0_ON;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_803073C (void) {
  REG_DISPCNT &= ~DISPCNT_BG0_ON;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_803075C (void) {
}

static void sub_8030760 (void) {
  LoadVRAM();
  LoadPalettes();
  LoadBlendingRegs();
  LoadBgOffsets();
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJWIN_ON;
}

static void sub_8030784 (void) {
  REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(20);
  LoadVRAM();
  LoadPalettes();
  LoadBlendingRegs();
  LoadBgOffsets();
  REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJWIN_ON;
}

static void sub_80307B8 (void) {
  CpuCopy16(gPaletteBuffer + 0xB0, (u16*)(PLTT + 0x160), 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)(BG_VRAM + 0xF520), 0x1C00);
}

static void sub_80307E4 (int arg0) {
  u8 arg0_u8 = arg0;
  u32 r1 = arg0_u8 * 0x1C00;
  CpuCopy16(gBgVram.cbb0 + 0x40 + r1, (u8*)BG_VRAM + 0x40 + r1, 0x1C00);
  CpuCopy16(gPaletteBuffer + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
  LoadBgOffsets();
}

static void sub_803083C (int arg0) {
  u8 arg0_u8 = arg0;
  u32 r1;
  LoadBgOffsets();
  r1 = arg0_u8 * 0x1C00;
  CpuCopy16(gBgVram.cbb0 + 0x40 + r1, (u8*)BG_VRAM + 0x40 + r1, 0x1C00);
  CpuCopy16(gPaletteBuffer + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}

static void sub_8030898 (void) {
  LoadBgOffsets();
  CpuCopy16(gBgVram.cbb0 + 0x7040, (u8*)BG_VRAM + 0x7040, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x40, (u8*)BG_VRAM + 0x40, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x1C40, (u8*)BG_VRAM + 0x1C40, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x3840, (u8*)BG_VRAM + 0x3840, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x5440, (u8*)BG_VRAM + 0x5440, 0x1C00);
  CpuCopy16(gPaletteBuffer + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}

static void sub_8030934 (void) {
  CpuCopy16(gBgVram.cbb0 + 0xD000, (u8*)BG_VRAM + 0xD000, 0x1000);
  CpuCopy16(gBgVram.cbb0 + 0xA000, (u8*)BG_VRAM + 0xA000, 0x800);
}

static void sub_803096C (int arg0) {
  u8 arg0_u8 = arg0;
  u32 r1 = arg0_u8 * 0x1C00;
  CpuCopy16(gBgVram.cbb0 + 0x40 + r1, (u8*)BG_VRAM + 0x40 + r1, 0x1C00);
  CpuCopy16(gPaletteBuffer + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0xA000, (u8*)BG_VRAM + 0xA000, 0x800);
}

static void sub_80309D8 (void) {
  CpuCopy16(gBgVram.cbb0 + 0xD000, (u8*)BG_VRAM + 0xD000, 0x1800);
  CpuCopy16(gBgVram.cbb0 + 0xA800, (u8*)BG_VRAM + 0xA800, 0x800);
}

static void sub_8030A10 (void) {
  CpuCopy16(gBgVram.cbb0 + 0xA800, (u8*)BG_VRAM + 0xA800, 0x800);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}

static void sub_8030A48 (void) {
  LoadBgOffsets();
  CpuCopy16(gBgVram.cbb0 + 0x7040, (u8*)BG_VRAM + 0x7040, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x40, (u8*)BG_VRAM + 0x40, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x1C40, (u8*)BG_VRAM + 0x1C40, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x3840, (u8*)BG_VRAM + 0x3840, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x5440, (u8*)BG_VRAM + 0x5440, 0x1C00);
  CpuCopy16(gPaletteBuffer + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0xA800, (u8*)BG_VRAM + 0xA800, 0x800);
}

static void sub_8030AF8 (void) {
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}
