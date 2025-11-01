#include "global.h"

// Extra spaces used so that all languages (except Japanese) use the same tilemap?
static const unsigned char g80907E4[] = _(
  "{ENG}"
    "Details   "
    "Move to Deck        "
    "Return to Trunk     "
  "{FRE}"
    "Détails   "
    "Mettre dans le Deck "
    "Remettre dans coffre"
  "{GER}"
    "Details   "
    "In das Deck         "
    "Zurück zu Stamm     "
  "{ITA}"
    "Dettagli  "
    "Vai a Deck          "
    "Torna a Tronco      "
  "{SPA}"
    "Detalles  "
    "Mover a la Deck     "
    "Devolver al tronco  "
  "{JAP}"
    "ディテール     "
    "デッキへ送る　       "
    "かばんへもどす"
);

//static const unsigned char sFiller_809091F = 0; //TODO: 4byte align other strings?

static const unsigned char g8090920[] = __(
  "{ENG}"
    "Reorder       "
    "No.   Name      "
    "ATK   DEF       "
    "Type  Summon    "
    "Qty.    Cost    "
    "Stars     "
    "Exit    Effect    "
  "{FRE}"
    "Réorganiser   "
    "N°    Nom       "
    "ATK   DEF       "
    "Type  Invoquer  "
    "Qté     Coût    "
    "Étoiles   "
    "Quitter Effect    "
  "{GER}"
    "Nachbestellen "
    "Nr.   Name      "
    "AGR   VTG       "
    "Typ   Rufen     "
    "Menge   Kosten  "
    "Sterne    "
    "Beenden Effect    "
  "{ITA}"
    "Riordina      "
    "N°    Nome      "
    "ATT   DIF       "
    "Tipo  Evoca     "
    "Quant.  Costo   "
    "Stelle    "
    "Esci    Effect    "
  "{SPA}"
    "Reorganizar   "
    "NúmeroNombre    "
    "ATAQUEDEFENDER  "
    "Tipo  Llamar    "
    "CantidadCoste   "
    "Estrellas "
    "Salir   Effect    "
  "{JAP}"
    "ならび順変こう"
    "番号" "名前"
    "攻げき力　" "守備力"
    "種族" "召喚魔族　"
    "枚数　" "コスト"
    "星"
    "もどる" "効果　"
);

static const unsigned char g8090B94[] = __("／");

//static const unsigned char sFiller_8090B97 = 0;

static const unsigned char g8090B98[] = __(
  "{ENG}"
    "No" "NM" "AT" "DF" "TY" "SU" "QT" "CS" "ST" "EF"
  "{FRE}"
    "N°" "NM" "AT" "DF" "TY" "IN" "QT" "CT" "ET" "EF"
  "{GER}"
    "Nr" "NM" "AG" "DF" "TY" "RF" "MG" "KS" "ST" "EF"
  "{ITA}"
    "N°" "NM" "AT" "DF" "TI" "EV" "QT" "CS" "ST" "EF"
  "{SPA}"
    "Nú" "NO" "AT" "DE" "TI" "LL" "CA" "CO" "ES" "EF"
  "{JAP}"
    "№" "名" "攻" "守" "族" "召" "枚" "コ" "星" "効"
);

static const unsigned char g8090C20[] = __(
  "{ENG}"
    "Cost "
  "{FRE}"
    "Coût "
  "{GER}"
    "Kost."
  "{ITA}"
    "Costo"
  "{SPA}"
    "Coste"
  "{JAP}"
    "コスト"
);

//static const unsigned char sFiller_8090C4D[3] = {0};

static const unsigned char g8090C50[] = __("0123456789");

//TODO: rename to TrunkMenuEtc... (TrunkMenuHandlePress?)
static void PressUpInTrunkMenu (void);
static void PressRUpInTrunkMenu (void);
static void PressDownInTrunkMenu (void);
static void PressRDownInTrunkMenu (void);
static void PressRightInTrunkMenu (void);
static void PressLeftInTrunkMenu (void);
static void PressBInTrunkMenu (void);
static void PressLInTrunkMenu (void);
static void PressSelectInTrunkMenu (void);
static void InitTrunkMenu (void);
static void Trunk_A_Submenu (void);
static void MoveCursorUpInTrunkSubmenu (void);
static void MoveCursorDownInTrunkSubmenu (void);
static void SelectDetailsInTrunkSubmenu (void);
static void SelectAddToDeckInTrunkSubmenu (void);
static void SelectRemoveFromDeckInTrunkSubmenu (void);
static void SetCursorOam (void);
void sub_8008A48 (void);
static void sub_8008A5C (void);


void TrunkMenuDefaultSort (void);
void sub_800ABB4 (void);


void WaitForVBlank(void);
unsigned short GetNthCardOnScreen(unsigned char);
void GoUpOnePosition(void);
void GoDownOnePosition(void);
void GoUpFiftyPositions(void);
void GoDownFiftyPositions(void);
void ToggleTrunkDisplayMode(void);
void ToggleSortMode(void);
void ApplyNewSortMode(unsigned char);
void QuitTrunkMenu(void);
void sub_800B3E4(unsigned short);

u32 GetDuelistLevel(void);
void SetCardInfo(unsigned short id);
unsigned char GetPlayerDeckSize(void);
unsigned char TryRemoveCardFromDeck(unsigned short id);
void RemoveAllCopiesOfCardFromDeck(unsigned short id);
void RemoveOneCopyOfCardFromDeck(unsigned short);
void AddCardToDeck(unsigned short);
unsigned char GetDeckCardQty(unsigned short);


unsigned char sub_801F098(unsigned short id);

void SortCardsAccordingToContext(void); // sort the cards referenced by gCardSortContext according to its sortMode

extern unsigned short gPressedButtons;
extern unsigned char gTotalCardQty[];
extern unsigned char gTrunkCardQty[];

extern struct CardInfo gCardInfo;


extern const unsigned char gStarterTrunk[];
extern unsigned char gUnk_8DFA6A8[];
extern unsigned short gUnk_8090470[];

extern unsigned char gStarTile[];
extern unsigned char gSwordTile[];
extern unsigned char gShieldTile[];
extern unsigned short gUnk_808ECD0[]; //trunk character palette?
extern unsigned short *gAttributeIconPalettes[];
extern unsigned short *gTypeIconPalettes[];
extern unsigned char *gTypeIconTiles[][NUM_LANGUAGES];
extern unsigned char *gAttributeIconTiles[][NUM_LANGUAGES];
extern unsigned char gUnk_8DF8142[]; //cursor y coords
extern unsigned char gUnk_8DF8145[]; //cursor x coords
extern unsigned char gNextUpOptionInTrunkSubmenu[];
extern unsigned char gNextDownOptionInTrunkSubmenu[];

extern unsigned char *g201CB30;
extern unsigned short *g201CB34;


extern unsigned short gOamBuffer[];
void RunTrunkTask (unsigned char);
void sub_800A3D8 (unsigned char);
void sub_800AA58 (unsigned char);
void sub_800ABD0 (void);

void SetCardInfoWithWarning (unsigned short* id);
void sub_800ABA8 (void);
void sub_8009364 (void);

void SetVBlankCallback (void (*)(void));
void LoadCharblock1 (void);

void RunPlayerDeckTask (unsigned char);


extern unsigned short gRepeatedOrNewButtons;
extern unsigned short gNewButtons;
extern unsigned short gFilteredInput;

void UpdateFilteredInput_NoRepeat (void);
int TrunkProcessInput (void);




void sub_0800ABA4 (void);
void SortingMenuMain (void);

void sub_800ABE4 (void);
void sub_0800ABE0 (void);

void TrunkMenuMain (void) {
  unsigned keepProcessing = 1;
  InitTrunkMenu();
  while (keepProcessing) {
    switch ((unsigned short)TrunkProcessInput()) {
      case REPEAT_DPAD_UP:
        PressUpInTrunkMenu();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case REPEAT_DPAD_UP | REPEAT_R_BUTTON:
        PressRUpInTrunkMenu();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case REPEAT_DPAD_DOWN:
        PressDownInTrunkMenu();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case REPEAT_DPAD_DOWN | REPEAT_R_BUTTON:
        PressRDownInTrunkMenu();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case REPEAT_DPAD_RIGHT:
        PressRightInTrunkMenu();
        sub_800ABD0();
        sub_800AA58(6);
        break;
      case REPEAT_DPAD_LEFT:
        PressLeftInTrunkMenu();
        sub_800ABD0();
        sub_800AA58(6);
        break;
      case NEW_L_BUTTON:
        PressLInTrunkMenu();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case NEW_A_BUTTON:
        Trunk_A_Submenu();
        sub_800AA58(7);
        break;
      case NEW_B_BUTTON:
        PressBInTrunkMenu();
        keepProcessing = 0;
        sub_0800ABA4();
        sub_800AA58(2);
        break;
      case NEW_START_BUTTON:
        SortingMenuMain();
        sub_800A3D8(8);
        sub_800AA58(8);
        break;
      case NEW_SELECT_BUTTON:
        PressSelectInTrunkMenu();
        sub_800AA58(9);
        sub_800ABE4();
        break;
      case 0: // no action?
      default:
        sub_800A3D8(5);
        sub_0800ABE0();
        sub_800AA58(5);
        break;
    }
  }
}

int TrunkProcessInput (void) {
  unsigned char i;
  unsigned short mask;
  unsigned short ret = 0;
  UpdateFilteredInput_NoRepeat();
  mask = 1;
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
    ret = REPEAT_DPAD_UP | REPEAT_R_BUTTON;
  if (gFilteredInput & DPAD_DOWN && gPressedButtons & R_BUTTON)
    ret = REPEAT_DPAD_DOWN | REPEAT_R_BUTTON;
  return ret;
}

int TrunkSubmenuProcessInput (void) {
  unsigned char i;
  unsigned short ret = 0;
  unsigned short mask = 1;
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
    ret = REPEAT_DPAD_UP | REPEAT_R_BUTTON;
  if (gRepeatedOrNewButtons & DPAD_DOWN && gPressedButtons & R_BUTTON)
    ret = REPEAT_DPAD_DOWN | REPEAT_R_BUTTON;
  return ret;
}

static void PressUpInTrunkMenu (void) {
  RunTrunkTask(3);
  sub_800A3D8(3);
}

static void PressRUpInTrunkMenu (void) {
  RunTrunkTask(5);
  sub_800A3D8(3);
}

static void PressDownInTrunkMenu (void) {
  RunTrunkTask(2);
  sub_800A3D8(3);
}

static void PressRDownInTrunkMenu (void) {
  RunTrunkTask(4);
  sub_800A3D8(3);
}

static void PressRightInTrunkMenu (void) {
  RunTrunkTask(7);
  sub_800A3D8(3);
}

static void PressLeftInTrunkMenu (void) {
  RunTrunkTask(8);
  sub_800A3D8(3);
}

static void PressBInTrunkMenu (void) {
  RunTrunkTask(9);
  sub_800A3D8(1);
  RunPlayerDeckTask(8);
  PlayMusic(SFX_CANCEL);
}

static void PressLInTrunkMenu (void) {
  RunTrunkTask(6);
  sub_800A3D8(4);
}

static void PressSelectInTrunkMenu (void) {
  RunTrunkTask(10);
  sub_800A3D8(7);
}

static void InitTrunkMenu (void) {
  TrunkMenuDefaultSort();
  sub_800A3D8(0);
  sub_800A3D8(2);
  sub_800AA58(1);
  sub_800ABA8();
  sub_800AA58(3);
}

static void Trunk_A_Submenu (void) {
  unsigned keepProcessing;
  gTrunkMenu.cursorState = TRUNK_CURSOR_DETAILS;
  sub_8009364();
  SetCursorOam();
  LoadCharblock1();
  SetVBlankCallback(sub_8008A5C);
  WaitForVBlank();
  PlayMusic(SFX_SELECT);
  keepProcessing = 1;
  while (keepProcessing) {
    switch (TrunkSubmenuProcessInput()) {
      case NEW_B_BUTTON:
        keepProcessing = 0;
        break;
      case REPEAT_DPAD_UP:
        MoveCursorUpInTrunkSubmenu();
        break;
      case REPEAT_DPAD_DOWN:
        MoveCursorDownInTrunkSubmenu();
        break;
      case NEW_A_BUTTON:
        switch (gTrunkMenu.cursorState) {
          case TRUNK_CURSOR_DETAILS:
            SelectDetailsInTrunkSubmenu();
            break;
          case TRUNK_CURSOR_MOVE_TO_DECK:
            SelectAddToDeckInTrunkSubmenu();
            break;
          case TRUNK_CURSOR_MOVE_TO_TRUNK:
            SelectRemoveFromDeckInTrunkSubmenu();
            break;
        }
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
  PlayMusic(SFX_CANCEL);
  sub_8008A48();
}

static void MoveCursorUpInTrunkSubmenu (void) {
  gTrunkMenu.cursorState = gNextUpOptionInTrunkSubmenu[gTrunkMenu.cursorState];
  SetCursorOam();
  PlayMusic(SFX_MOVE_CURSOR);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
}

static void MoveCursorDownInTrunkSubmenu (void) {
  gTrunkMenu.cursorState = gNextDownOptionInTrunkSubmenu[gTrunkMenu.cursorState];
  SetCursorOam();
  PlayMusic(SFX_MOVE_CURSOR);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
}

static void SelectDetailsInTrunkSubmenu (void) {
  gStatMod.card = GetNthCardOnScreen(2);
  gStatMod.field = FIELD_ARENA;
  gStatMod.stage = 0;
  SetCardInfoWithWarning(&gStatMod.card);
  PlayMusic(SFX_SELECT);
  ShowCardDetailView();
  sub_800A3D8(0);
  sub_800A3D8(2);
  sub_800AA58(1);
  sub_800ABA8();
  sub_8009364();
  SetCursorOam();
  SetVBlankCallback(sub_8008A5C);
  WaitForVBlank();
  LoadCharblock1();
}

static void SelectAddToDeckInTrunkSubmenu (void) {
  RunTrunkTask(7);
  sub_800A3D8(3);
  sub_800ABD0();
  sub_800AA58(6);
}

static void SelectRemoveFromDeckInTrunkSubmenu (void) {
  RunTrunkTask(8);
  sub_800A3D8(3);
  sub_800ABD0();
  sub_800AA58(6);
}

static void SetCursorOam (void) {
  u32 *oam = (u32*)&gOamBuffer[6 * 4]; //todo
  oam[0] = gUnk_8DF8142[gTrunkMenu.cursorState] |
           gUnk_8DF8145[gTrunkMenu.cursorState] << 16 |
           0x40000000; //sprite size bits
  oam[1] = 0xC120;
  oam[2] = gUnk_8DF8142[gTrunkMenu.cursorState] |
           gUnk_8DF8145[gTrunkMenu.cursorState] << 16 |
           0x40000800;
  oam[3] = 0x120;
}

void sub_8008A48 (void) {
  u32 *oam = (u32*)&gOamBuffer[6 * 4]; //todo
  oam[0] = 0;
  oam[1] = 0;
  oam[2] = 0;
  oam[3] = 0;
}

static void sub_8008A5C (void) {
  LoadPalettes();
  LoadOam();
  REG_DISPCNT = DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_OBJWIN_ON;
  REG_BLDALPHA = 6;
  REG_BLDY = 10;
  REG_BLDCNT |= 8;
}



//split?
void CopyTypeIconTiles (unsigned char type, void * dest) {
  //unsigned char temp = type + 235; (decomp_note)
  if (type == 21 || type == 22 || type == 23) {
    CpuCopy16(gTypeIconTiles[type][gLanguage], dest, 0x40);
    CpuCopy16(gTypeIconTiles[type][gLanguage] + 0x80, dest + 0x40, 0x40);
    CpuCopy16(gTypeIconTiles[type][gLanguage] + 0x40, g201CB30, 0x40);
    CpuCopy16(gTypeIconTiles[type][gLanguage] + 0xC0, g201CB30 + 0x40, 0x40);
  }
  else
    CpuCopy16(gTypeIconTiles[type][gLanguage], dest, 0x80);
}

void CopyTypeIconPal (unsigned char type, void * palDest) {
  //unsigned char temp = type - 21; (decomp_note)
  if (type == 21 || type == 22 || type == 23)
    CpuCopy16(gTypeIconPalettes[type], g201CB34, 32);
  CpuCopy16(gTypeIconPalettes[type], palDest, 32);
}

void CopyAttributeIconTiles (unsigned char attribute, void * dest) {
  g201CB30 = dest;
  CpuCopy16(gAttributeIconTiles[attribute][gLanguage], dest, 0x80);
}

void CopyAttributeIconPal (unsigned char attribute, void * palDest) {
  g201CB34 = palDest;
  CpuCopy16(gAttributeIconPalettes[attribute], palDest, 32);
}

void CopyStarTile (void * dest) {
  CpuCopy16(gStarTile, dest, 32);
}

void sub_8008BF8 (void * dest) {
  CpuCopy16(gUnk_808ECD0, dest, 32);
}

void CopySwordTile (void * dest) {
  CpuCopy16(gSwordTile, dest, 32);
}

void CopyShieldTile (void * dest) {
  CpuCopy16(gShieldTile, dest, 32);
}

NAKED
void sub_8008C34(void)
{
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	ldr r0, _08008C84\n\
	ldr r1, [r0, #4]\n\
	ldr r0, [r0]\n\
	lsls r3, r1, #0x1f\n\
	lsrs r2, r0, #1\n\
	adds r0, r3, #0\n\
	orrs r0, r2\n\
	lsrs r1, r1, #1\n\
	bl SetMoney\n\
	movs r4, #0\n\
	ldr r5, _08008C88\n\
	ldrh r0, [r5]\n\
	cmp r0, #0\n\
	beq _08008CA0\n\
	mov r8, r5\n\
	movs r0, #0xc8\n\
	lsls r0, r0, #2\n\
	mov ip, r0\n\
	movs r7, #1\n\
	ldr r6, _08008C8C\n\
_08008C64:\n\
	lsls r0, r4, #1\n\
	mov r2, r8\n\
	adds r1, r0, r2\n\
	ldrh r0, [r1]\n\
	cmp r0, ip\n\
	bhi _08008C94\n\
	ldrh r0, [r1]\n\
	adds r1, r0, r6\n\
	ldrb r2, [r1]\n\
	movs r3, #0xfa\n\
	subs r0, r3, r2\n\
	cmp r7, r0\n\
	ble _08008C90\n\
	strb r3, [r1]\n\
	b _08008C94\n\
	.align 2, 0\n\
_08008C84: .4byte gMoney\n\
_08008C88: .4byte gUnk_8090470\n\
_08008C8C: .4byte gTrunkCardQty\n\
_08008C90:\n\
	adds r0, r2, #1\n\
	strb r0, [r1]\n\
_08008C94:\n\
	adds r4, #1\n\
	lsls r0, r4, #1\n\
	adds r0, r0, r5\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	bne _08008C64\n\
_08008CA0:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

//unused. debug function?
/*
void sub_8008C34 (void) {
  int i;
  SetMoney(gMoney / 2);
  for (i = 0; gUnk_8090470[i] != CARD_NONE; i++) {
    int r7 = 1;
    if (gUnk_8090470[i] < 801)
      if (r7 > TRUNK_CARD_LIMIT - gTrunkCardQty[gUnk_8090470[i]])
        gTrunkCardQty[gUnk_8090470[i]] = TRUNK_CARD_LIMIT;
      else
        gTrunkCardQty[gUnk_8090470[i]]++;
  }
}*/

void InitTrunkCards(void)
{
    u32 id;

    for (id = 0; id < NUM_CARDS; id++)
        gTrunkCardQty[id] = gStarterTrunk[id];
}

void AddCardQtyToTrunk (unsigned cardId, unsigned quantity)
{
    unsigned short id = cardId;
    unsigned char qty = quantity;
    if (qty > TRUNK_CARD_LIMIT - gTrunkCardQty[id])
        gTrunkCardQty[id] = TRUNK_CARD_LIMIT;
    else
        gTrunkCardQty[id] += qty;
}

void RemoveCardQtyFromTrunk (unsigned cardId, unsigned quantity)
{
    unsigned short id = cardId;
    unsigned char qty = quantity;
    if (qty > gTrunkCardQty[id])
        gTrunkCardQty[id] = 0;
    else
        gTrunkCardQty[id] -= qty;
}

unsigned char ExceedsTrunkCardLimit (unsigned short id, unsigned char qty)
{
    if (qty > TRUNK_CARD_LIMIT - gTrunkCardQty[id])
        return 0;
    return 1;
}

unsigned char sub_8008D48 (unsigned short id, unsigned char qty) {
  if (qty > gTrunkCardQty[id])
    return 0;
  return 1;
}

void SetTrunkCardQty(unsigned short id, unsigned char qty)
{
    gTrunkCardQty[id] = qty;
}

unsigned char GetTrunkCardQty(unsigned short id)
{
    return gTrunkCardQty[id];
}

/*
static inline void sub_8008D88_inline (unsigned short id, unsigned char arg1) {
  if (gTrunkCardQty[id])
    if (gTrunkCardQty[id] < arg1)
      gTrunkCardQty[id] = 0;
    else
      gTrunkCardQty[id]--;
  else if (GetDeckCardQty(id))
    RemoveOneCopyOfCardFromDeck(id);
}

void RemoveCardFromTrunkOrDeck (unsigned short id) {
  sub_8008D88_inline(id, 1);
}*/

NAKED
void RemoveCardFromTrunkOrDeck(unsigned id)
{
    asm_unified("\n\
    push {r4, lr}\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	adds r4, r0, #0\n\
	ldr r0, _08008DA8\n\
	adds r1, r4, r0\n\
	ldrb r0, [r1]\n\
	adds r2, r0, #0\n\
	cmp r2, #0\n\
	beq _08008DB2\n\
	cmp r2, #1\n\
	bhs _08008DAC\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	b _08008DC4\n\
	.align 2, 0\n\
_08008DA8: .4byte gTrunkCardQty\n\
_08008DAC:\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	b _08008DC4\n\
_08008DB2:\n\
	adds r0, r4, #0\n\
	bl GetDeckCardQty\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _08008DC4\n\
	adds r0, r4, #0\n\
	bl RemoveOneCopyOfCardFromDeck\n\
_08008DC4:\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	");
}

void RemoveCardFromDeckAndTrunk (unsigned short id) {
  gTrunkCardQty[id] = 0;
  RemoveAllCopiesOfCardFromDeck(id);
}

//leftover debug function
static void SetTrunkCardsTo50 (void) {
  unsigned cardId;
  gTrunkCardQty[0] = 0;
  for (cardId = 1; cardId < NUM_CARDS; cardId++)
    gTrunkCardQty[cardId] = 50;
}

static void TryAddSelectedCardToDeck (void) {
  unsigned isCardRejected = 0;
  unsigned short cardId = GetNthCardOnScreen(2);
  if (gTrunkCardQty[cardId] && GetPlayerDeckSize() < DECK_SIZE && sub_801F098(cardId) == 1) {
    SetCardInfo(cardId);
    if (GetDuelistLevel() < gCardInfo.cost)
      isCardRejected = 1;
  }
  else
    isCardRejected = 1;
  if (isCardRejected == 1) {
    PlayMusic(SFX_FORBIDDEN);
    while (gPressedButtons & DPAD_RIGHT)
      WaitForVBlank();
  }
  else {
    gTrunkCardQty[cardId]--;
    AddCardToDeck(cardId);
    PlayMusic(SFX_SELECT);
  }
}

void TryRemoveSelectedCardFromDeck (void) {
  unsigned removalFailed = FALSE;
  unsigned short id = GetNthCardOnScreen(2);
  if (GetDeckCardQty(id) == 0 || TryRemoveCardFromDeck(id) != 1)
    removalFailed = TRUE;
  if (removalFailed == TRUE) {
    PlayMusic(SFX_FORBIDDEN);
    while (gPressedButtons & DPAD_LEFT)
      WaitForVBlank();
  }
  else {
    if (gTrunkCardQty[id] < TRUNK_CARD_LIMIT)
      gTrunkCardQty[id]++;
    else
      gTrunkCardQty[id] = TRUNK_CARD_LIMIT;
    PlayMusic(SFX_SELECT);
  }
}

void InitTrunkData (void) {
  unsigned short cardId;
  gTrunkMenu.currentPos = 0;
  gTrunkMenu.displayMode = 1;
  gTrunkMenu.sortMode = CARD_SORT_NUMBER;
  for (cardId = 0; cardId < NUM_CARDS; cardId++)
    gTotalCardQty[cardId] = gTrunkCardQty[cardId] + GetDeckCardQty(cardId);
  for (cardId = 0; cardId < NUM_TRUE_CARDS; cardId++)
    gTrunkMenu.cards[cardId] = cardId + 1;
}

void RunTrunkTask (unsigned char task)
{
    switch (task)
    {
    case 0:
        InitTrunkCards();
        break;
    case 1:
        InitTrunkData();
        break;
    case 3:
        GoUpOnePosition();
        break;
    case 2:
        GoDownOnePosition();
        break;
    case 4:
        GoDownFiftyPositions();
        break;
    case 5:
        GoUpFiftyPositions();
        break;
    case 6:
        ToggleTrunkDisplayMode();
        break;
    case 7:
        TryAddSelectedCardToDeck();
        break;
    case 8:
        TryRemoveSelectedCardFromDeck();
        break;
    case 10:
        ToggleSortMode();
        break;
    case 9:
        QuitTrunkMenu();
        break;
    }
}

unsigned char GetTrunkMenuDisplayMode (void) {
  return gTrunkMenu.displayMode;
}

// 5 cards are visible at a time, with the middle/selected card being at n=2
unsigned short GetNthCardOnScreen (unsigned char n) {
  signed short wrappedIndex = gTrunkMenu.currentPos + n - 2;
  if (wrappedIndex >= NUM_TRUE_CARDS)
    wrappedIndex -= NUM_TRUE_CARDS;
  else if (wrappedIndex < 0)
    wrappedIndex += NUM_TRUE_CARDS;
  return gTrunkMenu.cards[wrappedIndex];
}

unsigned char GetTrunkCardQuantity (unsigned short cardId) {
  return gTrunkCardQty[cardId];
}

//unused?
static unsigned char GetCurrentSortMode (void) {
  return gTrunkMenu.sortMode;
}

void sub_800907C (void) {
  gUnk2021AB4.currentPos = gTrunkMenu.currentPos;
  gUnk2021AB4.lastValidIndex = NUM_TRUE_CARDS - 1;
}

void AddCardToTrunk (unsigned short cardId) {
  if (gTrunkCardQty[cardId] < TRUNK_CARD_LIMIT)
    gTrunkCardQty[cardId]++;
  else
    gTrunkCardQty[cardId] = TRUNK_CARD_LIMIT;
}

void TrunkMenuDefaultSort (void)
{
  gCardSortContext.cards = gTrunkMenu.cards;
  gCardSortContext.cardCount = NUM_TRUE_CARDS;
  gCardSortContext.sortMode = gUnk_8DFA6A8[gTrunkMenu.sortMode];
  SortCardsAccordingToContext();
}

void GoUpOnePosition (void) {
  if (--gTrunkMenu.currentPos < 0)
    gTrunkMenu.currentPos += NUM_TRUE_CARDS;
  PlayMusic(SFX_MOVE_CURSOR);
}

void GoDownOnePosition (void) {
  if (++gTrunkMenu.currentPos > NUM_TRUE_CARDS - 1)
    gTrunkMenu.currentPos -= NUM_TRUE_CARDS;
  PlayMusic(SFX_MOVE_CURSOR);
}

void GoUpFiftyPositions (void) {
  gTrunkMenu.currentPos -= 50;
  if (gTrunkMenu.currentPos < 0)
    gTrunkMenu.currentPos += NUM_TRUE_CARDS;
  PlayMusic(SFX_MOVE_CURSOR);
}

void GoDownFiftyPositions (void) {
  gTrunkMenu.currentPos += 50;
  if (gTrunkMenu.currentPos > NUM_TRUE_CARDS - 1)
    gTrunkMenu.currentPos -= NUM_TRUE_CARDS;
  PlayMusic(SFX_MOVE_CURSOR);
}

void ToggleTrunkDisplayMode (void) {
  if (++gTrunkMenu.displayMode > 3)
    gTrunkMenu.displayMode = 0;
  PlayMusic(SFX_MOVE_CURSOR);
}

void ToggleSortMode(void)
{
    if (++gTrunkMenu.sortMode >= CARD_SORT_EXIT)
      gTrunkMenu.sortMode = CARD_SORT_NUMBER;
    ApplyNewSortMode(gTrunkMenu.sortMode);
    PlayMusic(SFX_MOVE_CURSOR);
}

void ApplyNewSortMode(unsigned char val)
{
    gCardSortContext.cards = gTrunkMenu.cards;
    gCardSortContext.cardCount = NUM_TRUE_CARDS;
    gCardSortContext.sortMode = gUnk_8DFA6A8[val];
    SortCardsAccordingToContext();
    gTrunkMenu.currentPos = 0;
}

void QuitTrunkMenu(void){
}

extern unsigned char gTrunkMenuTileset[]; //TODO: rename; also used in Deck menu
extern unsigned char gTrunkMenuBgPalette[]; //TODO: rename; also used in Deck menu
extern unsigned char g8DFA6B4[]; //french trunk tiles (top left corner "Trunk)
extern unsigned char g8DFAB54[]; //german
extern unsigned char g8DFAFF4[]; //italian and spanish
extern unsigned short gTrunkMenuBgTilemap[][30];

// Same exact function as sub_800C834 (in duel_trunk_menu)
// regular trunk menu copy background gfx data to vram and pal buffer
void sub_8009228 (void)
{
    unsigned char i;

    LZ77UnCompWram(gTrunkMenuTileset, gBgVram.cbb0);

    switch (gLanguage)
    {
    case FRENCH:
        CpuFastCopy(g8DFA6B4, gBgVram.cbb0, 0x120);
        CpuFastCopy(&g8DFA6B4[32*9], &gBgVram.cbb0[32*30], 0x120);
        CpuFastCopy(&g8DFA6B4[32*18], &gBgVram.cbb0[32*60], 0x120);
        CpuFastCopy(&g8DFA6B4[32*27], &gBgVram.cbb0[32*10], 0x140);
        break;
    case GERMAN:
        CpuFastCopy(g8DFAB54, gBgVram.cbb0, 0x120);
        CpuFastCopy(&g8DFAB54[32*9], &gBgVram.cbb0[32*30], 0x120);
        CpuFastCopy(&g8DFAB54[32*18], &gBgVram.cbb0[32*60], 0x120);
        CpuFastCopy(&g8DFAB54[32*27], &gBgVram.cbb0[32*10], 0x140);
        break;
    case ITALIAN:
        CpuFastCopy(g8DFAFF4, gBgVram.cbb0, 0x120);
        CpuFastCopy(&g8DFAFF4[32*9], &gBgVram.cbb0[32*30], 0x120);
        CpuFastCopy(&g8DFAFF4[32*18], &gBgVram.cbb0[32*60], 0x120);
        CpuFastCopy(&g8DFAFF4[32*27], &gBgVram.cbb0[32*10], 0x140);
        break;
    case SPANISH:
        CpuFastCopy(g8DFAFF4, gBgVram.cbb0, 0x120);
        CpuFastCopy(&g8DFAFF4[32*9], &gBgVram.cbb0[32*30], 0x120);
        CpuFastCopy(&g8DFAFF4[32*18], &gBgVram.cbb0[32*60], 0x120);
        CpuFastCopy(&g8DFAFF4[32*37], &gBgVram.cbb0[32*10], 0x140);
        break;
    }

    for (i = 0; i < 20; i++)
        CpuCopy32(gTrunkMenuBgTilemap[i], &((struct Sbb*)&gBgVram)->sbb7[i], 60);

    CpuCopy32(gTrunkMenuBgPalette, gPaletteBuffer, 0x80);
    CpuFill16(0, gBgVram.sbb18, 32);
}

extern unsigned short gUnk_808C240[][30]; //A menu tilemap (Details/Move To Deck/Return To Trunk)
extern unsigned char g8DF811C[];


unsigned short sub_08007FEC(unsigned char, unsigned char, unsigned short);
void sub_800800C(unsigned char, unsigned char, unsigned short, unsigned short);



void sub_8009364 (void) {
  unsigned char i;
  unsigned short r7;
  for (i = 0; i < 20; i++)
    CpuCopy32(gUnk_808C240[i],  &(((struct Sbb*)&gBgVram)->sbbF[i]), 60);
  CpuFill16(0, gBgVram.cbb1, 32);
  r7 = sub_08007FEC(9, 9, 0x7800) & 0xFF00;
  for (i = 0; i < 20; i++) {
    sub_800800C(i + 9, 11, 0x7800, g8DF811C[i] + 21 | r7);
    sub_800800C(i + 9, 12, 0x7800, g8DF811C[i] + 23 | r7);
    sub_800800C(i + 9, 13, 0x7800, g8DF811C[i] + 61 | r7);
    sub_800800C(i + 9, 14, 0x7800, g8DF811C[i] + 63 | r7);
  }
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb1[32], g80907E4, 0x900);
}


extern unsigned short gUnk_808C6F0[][30]; //sort menu tilemap


void sub_8009448(void)
{
    unsigned char i;
    unsigned short r8, sb;

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808C6F0[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

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
    CopyStringTilesToVRAMBuffer(&gBgVram.cbb1[32]/*fix*/, g8090920, 0x900);
}

union {
  unsigned char a[0x4000]; //2d array?
  unsigned short b[0x2000]; //3d array?
}extern gVr;
unsigned GetDeckCapacity(void);

void sub_8009784 (void) {
  unsigned char i;
  CpuFill16(0, gVr.a + 0x8000, 32);
  CpuFill16(0, gVr.b + 0x5C00, 0x800);
  CopyStringTilesToVRAMBuffer(gVr.a + 0x8020, g8090B94, 0x801);
  CopyStringTilesToVRAMBuffer(gVr.a + 0x8040, g8090B98, 0x901);
  gVr.b[0x5C2F] = 0x5001;
  ConvertU16ToDigitBuffer(GetDeckCapacity(), DIGIT_FLAG_NONE);
  for (i = 0; i < 5; i++)
    gVr.b[0x5C30 + i] = gDigitBufferU16[i] + 0x5209;
  gVr.b[0x5C38] = 0x5001;
  gVr.b[0x5C39] = 0x520D;
  gVr.b[0x5C3A] = 0x5209;
}


extern const unsigned char gUnk_80AEB00[];
extern const unsigned char gUnk_80AEB30[];
extern unsigned short gUnk_808E820[][30];
extern unsigned short gUnk_808ECF0[];

// same as sub_800CD88?
/*
void sub_8009860 (void) {
  unsigned char i, r4, r7;
  CpuCopy32(gUnk_808ECD0, gPaletteBuffer + 0x50, 32);
  CpuCopy32(gUnk_808ECF0, gPaletteBuffer + 0x40, 32);
  CpuCopy32(gStarTile, gVr.a + 0xC020, 32);
  CpuCopy32(gSwordTile, gVr.a + 0xC040, 32);
  CpuCopy32(gShieldTile, gVr.a + 0xC060, 32);
  CopyStringTilesToVRAMBuffer(gVr.a + 0xC080, gUnk_80AEB00, 0x801);
  CopyStringTilesToVRAMBuffer(gVr.a + 0xC120, gUnk_80AEB30, 0x1801);
  for (i = 0; i < 12; i++)
    CpuCopy32(gAttributeIconTiles[i][gLanguage], gVr.a + 0xC000 + (i * 4 + 19) * 32, 128);
  for (r4 = 0, i = 0; i < 24; i++) {
    if (i == 21 || i == 22 || i == 23) {
      CpuCopy32(gTypeIconTiles[i][gLanguage], gVr.a + 0xC000 + (r4 + 67) * 32, 256);
      r4 += 8;
    }
    else {
      CpuCopy32(gTypeIconTiles[i][gLanguage], gVr.a + 0xC000 + (r4 + 67) * 32, 256);
      r4 += 4;
    }
  }
  CpuFill16(0, gVr.b + 0x7C00, 0x800);
  for (i = 0; i < 20; i++)
    CpuCopy32(gUnk_808E820[i], gVr.b + 0x7C00 + i * 32, 60);
  //r8 = gVr.b
  for (r7 = 0; r7 < 5; r7++) {
    //sp4 = r7 + 1 (r7++)
    //ip = r7 * 3
    //sb = r7 * 40
    //sl = r7 * 40 + 0x50F8
    for (i = 0; i < 7; i++) {
      unsigned char r6 = 0;
      int r3;
      if (r7 > 1) {
        r6 = 2;
        if (r7 == 2)
          r6 = 1;
      }
      //r3 = i * 2
      //r2 = (r6 + 3 + ip) * 32
      //sp8 = r2 + 0x7C02 + r3
      gVr.b[0x7C02 + (r6 + 3 + r7 * 3) * 32 + i * 2] = i * 4 + 0x50F8 + r7 * 40;
      gVr.b[0x7C03 + (r6 + 3 + r7 * 3) * 32 + i * 2] = i * 4 + 0x50F8 + r7 * 40 +1;
      gVr.b[0x7C02 + (r6 + 4 + r7 * 3) * 32 + i * 2] = i * 4 + 0x50F8 + r7 * 40 +2;
      gVr.b[0x7C03 + (r6 + 4 + r7 * 3) * 32 + i * 2] = i * 4 + 0x50F8 + r7 * 40 +3;
    }
  }
}*/

NAKED
void sub_8009860 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #8\n\
	ldr r0, _08009928\n\
	ldr r4, _0800992C\n\
	ldr r5, _08009930\n\
	adds r1, r4, #0\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	ldr r0, _08009934\n\
	subs r4, #0x20\n\
	adds r1, r4, #0\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	ldr r0, _08009938\n\
	ldr r4, _0800993C\n\
	adds r1, r4, #0\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	ldr r0, _08009940\n\
	adds r1, r4, #0\n\
	adds r1, #0x20\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	ldr r0, _08009944\n\
	adds r1, r4, #0\n\
	adds r1, #0x40\n\
	adds r2, r5, #0\n\
	bl CpuSet\n\
	adds r0, r4, #0\n\
	adds r0, #0x60\n\
	ldr r1, _08009948\n\
	ldr r2, _0800994C\n\
	bl CopyStringTilesToVRAMBuffer\n\
	movs r1, #0x80\n\
	lsls r1, r1, #1\n\
	adds r0, r4, r1\n\
	ldr r1, _08009950\n\
	ldr r2, _08009954\n\
	bl CopyStringTilesToVRAMBuffer\n\
	movs r5, #0\n\
	ldr r4, _08009958\n\
_080098C8:\n\
	ldr r6, _0800995C\n\
	lsls r1, r5, #2\n\
	adds r0, r1, r5\n\
	ldrb r2, [r6]\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	adds r1, #0x13\n\
	lsls r1, r1, #5\n\
	ldr r2, _08009960\n\
	adds r1, r1, r2\n\
	ldr r2, _08009964\n\
	bl CpuSet\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #0xb\n\
	bls _080098C8\n\
	movs r4, #0\n\
	movs r5, #0\n\
	ldr r7, _08009968\n\
_080098F6:\n\
	adds r0, r5, #0\n\
	subs r0, #0x15\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #2\n\
	bhi _08009970\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r5\n\
	ldrb r1, [r6]\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	adds r1, r4, #0\n\
	adds r1, #0x43\n\
	lsls r1, r1, #5\n\
	ldr r2, _08009960\n\
	adds r1, r1, r2\n\
	ldr r2, _0800996C\n\
	bl CpuSet\n\
	adds r0, r4, #0\n\
	adds r0, #8\n\
	b _08009990\n\
	.align 2, 0\n\
_08009928: .4byte gUnk_808ECD0\n\
_0800992C: .4byte 0x020000A0\n\
_08009930: .4byte 0x04000008\n\
_08009934: .4byte gUnk_808ECF0\n\
_08009938: .4byte gStarTile\n\
_0800993C: .4byte 0x0200C420\n\
_08009940: .4byte gSwordTile\n\
_08009944: .4byte gShieldTile\n\
_08009948: .4byte 0x08090C20\n\
_0800994C: .4byte 0x00000801\n\
_08009950: .4byte 0x08090C50 @small digits\n\
_08009954: .4byte 0x00001801\n\
_08009958: .4byte 0x08DFA5B8\n\
_0800995C: .4byte gLanguage\n\
_08009960: .4byte 0x0200C400\n\
_08009964: .4byte 0x04000020\n\
_08009968: .4byte gTypeIconTiles\n\
_0800996C: .4byte 0x04000040\n\
_08009970:\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r5\n\
	ldrb r2, [r6]\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	adds r1, r4, #0\n\
	adds r1, #0x43\n\
	lsls r1, r1, #5\n\
	ldr r2, _08009A6C\n\
	adds r1, r1, r2\n\
	ldr r2, _08009A70\n\
	bl CpuSet\n\
	adds r0, r4, #4\n\
_08009990:\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #0x17\n\
	bls _080098F6\n\
	movs r5, #0\n\
_080099A0:\n\
	lsls r0, r5, #4\n\
	subs r0, r0, r5\n\
	lsls r0, r0, #2\n\
	ldr r1, _08009A74\n\
	adds r0, r0, r1\n\
	lsls r1, r5, #6\n\
	ldr r4, _08009A78\n\
	adds r1, r1, r4\n\
	ldr r2, _08009A7C\n\
	bl CpuSet\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #0x13\n\
	bls _080099A0\n\
	movs r7, #0\n\
	ldr r0, _08009A80\n\
	adds r0, r0, r4\n\
	mov r8, r0\n\
_080099C8:\n\
	movs r5, #0\n\
	lsls r1, r7, #1\n\
	lsls r0, r7, #2\n\
	adds r2, r7, #1\n\
	str r2, [sp]\n\
	adds r1, r1, r7\n\
	mov ip, r1\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #3\n\
	mov sb, r0\n\
	ldr r0, _08009A84\n\
	add r0, sb\n\
	mov sl, r0\n\
_080099E2:\n\
	movs r6, #0\n\
	cmp r7, #1\n\
	bls _080099F0\n\
	movs r6, #2\n\
	cmp r7, #2\n\
	bne _080099F0\n\
	movs r6, #1\n\
_080099F0:\n\
	lsls r3, r5, #1\n\
	adds r2, r6, #3\n\
	add r2, ip\n\
	lsls r2, r2, #5\n\
	ldr r0, _08009A88\n\
	adds r1, r2, r0\n\
	adds r1, r3, r1\n\
	lsls r1, r1, #1\n\
	add r1, r8\n\
	str r1, [sp, #4]\n\
	lsls r4, r5, #2\n\
	ldr r1, _08009A84\n\
	adds r0, r4, r1\n\
	add r0, sb\n\
	ldr r1, [sp, #4]\n\
	strh r0, [r1]\n\
	ldr r0, _08009A8C\n\
	adds r2, r2, r0\n\
	adds r2, r3, r2\n\
	lsls r2, r2, #1\n\
	add r2, r8\n\
	add r4, sl\n\
	adds r0, r4, #1\n\
	strh r0, [r2]\n\
	adds r2, r6, #4\n\
	add r2, ip\n\
	lsls r2, r2, #5\n\
	ldr r1, _08009A88\n\
	adds r0, r2, r1\n\
	adds r0, r3, r0\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	adds r1, r4, #2\n\
	strh r1, [r0]\n\
	ldr r0, _08009A8C\n\
	adds r2, r2, r0\n\
	adds r3, r3, r2\n\
	lsls r3, r3, #1\n\
	add r3, r8\n\
	adds r4, #3\n\
	strh r4, [r3]\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #6\n\
	bls _080099E2\n\
	ldr r1, [sp]\n\
	lsls r0, r1, #0x18\n\
	lsrs r7, r0, #0x18\n\
	cmp r7, #4\n\
	bls _080099C8\n\
	ldr r0, _08009A90\n\
	bl CopyMiniCardPalette\n\
	add sp, #8\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08009A6C: .4byte 0x0200C400\n\
_08009A70: .4byte 0x04000020\n\
_08009A74: .4byte gUnk_808E820\n\
_08009A78: .4byte 0x0200FC00\n\
_08009A7C: .4byte 0x0400000F\n\
_08009A80: .4byte 0xFFFF0800\n\
_08009A84: .4byte 0x000050F8\n\
_08009A88: .4byte 0x00007C02\n\
_08009A8C: .4byte 0x00007C03\n\
_08009A90: .4byte 0x02000200");
}

unsigned short sub_800DA48 (unsigned short);
unsigned short GetPlayerDeckCost (void);
void sub_800A544 (void);
unsigned short sub_800A508(void);
unsigned short sub_800A528(void);

//almost same as sub_800CFD0 (copied from that func, minor differences)
//many stack swaps
/*
void sub_8009A94 (void) {
  unsigned char sp[41]; //(20 actual characters * 2 bytes + null terminator)
  unsigned char i; //r7
  unsigned char r3;
  struct OamData* oam;
  unsigned char r6;
  unsigned r6_2;
  
  const unsigned char* cardName;
  
  unsigned short r4_3;
  unsigned char r4_2;
  unsigned char r4;

  CpuFill32(0, gVr.b + 0xDF00 / 2, 0x1900);
  for (i = 0; i < 5; i++) {
    
    SetCardInfo(GetNthCardOnScreen(i));
    r4 = 0; //above current (selected) card
    if (i > 1) {
      r4 = 2; //below current (selected) card
      if (i == 2)
        r4 = 1; //selected card
    }
    ConvertU16ToDigitBuffer(gCardInfo.id, 1);
    //r8 = i * 2
    //sb = r4 + 2
    //sl = i * 4
    //sp38 = r4 + 3
    //sp3C = r4 + 4
    //sp44 = i / 4
    //sp40 = i * 8
    //sp48 = i * 32
    //sp34 = i + 1 (i++)
    //r6 = gVr

    //r2 = (i * 3 + r4 + 2) * 32;
    for (r3 = 0; r3 < 4; r3++) //_0800D062
      gVr.b[0x7C01 + r3 + (i * 96 + (r4 + 2) * 32)] = gDigitBufferU16[r3] + 9 | 0x5000;

    //****reg swap here*******
    cardName = gCardInfo.name;
    cardName = GetCurrentLanguageString(cardName);

    r6 = 0, r3 = 0, r4_2 = 0;
    while (cardName[r3] != 0 && cardName[r3] != 0x24) {
      if (cardName[r3] <= 127) {
        if (r6 < 20) {
          sp[r4_2] = cardName[r3];
          r4_2++;
        }
        r3++;
      }
      else {
        if (r6 < 20) {
          sp[r4_2] = cardName[r3];
          sp[r4_2 + 1] = cardName[r3 + 1];
          r4_2 += 2;
        }
        r3 += 2;
      }
      r6++;
    }
    sp[r4_2] = 0;
    r6_2 = (i * 0x280 + 0xF80);
    CopyStringTilesToVRAMBuffer(gVr.b + 0x6000 + r6_2, sp, 0x901);

    //r2 = (i * 3 + r4 + 2) * 32;
    for (r3 = 0; r3 < 12; r3++) {
      if (r3 < gCardInfo.level)
        gVr.b[0x7C10 - r3 + ((r4 + 2) * 32 + i * 96)] = 0x5001;
      else
        gVr.b[0x7C10 - r3 + ((r4 + 2) * 32 + i * 96)] = 0x5000;
    }
    
    r4_3 = sub_800DA48(GetNthCardOnScreen(i));
    ConvertU16ToDigitBuffer(GetTrunkCardQuantity(gCardInfo.id), 1);
    
    //r2 = (i * 3 + r4 + 3) * 32;
    for (r3 = 0; r3 < 3; r3++)
      gVr.b[0x7C17 + r3 + ((r4 + 3) * 32 + i * 96)] = gDigitBufferU16[r3] + 9 | r4_3;
    ConvertU16ToDigitBuffer(GetDeckCardQty(gCardInfo.id), 0);

    //r2 = (i * 3 + r4 + 4) * 32;
    for (r3 = 0; r3 < 3; r3++)
      gVr.b[0x7C17 + r3 + ((r4 + 4) * 32 + i * 96)] = gDigitBufferU16[r3 + 2] + 9 | 0x5000;
    sub_80573D0(gVr.b + ((i % 4 * 256) | (i / 4 * 4096) + 0x10400) / 2, gCardInfo.id);
    oam = (struct OamData*)gOamBuffer + i;
    oam->shape = 0; //TODO: use define
    oam->size = 2; //^
    if (i == 2)
      oam->objMode = 1; //^
    else
      oam->objMode = 0; //^
    oam->bpp = 1; //^
    oam->priority = 2;
    oam->y = i * 32 + 12;
    oam->x = 210;
    oam->tileNum = i % 4 * 8 + 32 + i / 4 * 128;
  }
  //_08009D88
  r4_3 = sub_800A508();
  ConvertU16ToDigitBuffer(GetPlayerDeckCost(), 0);
  for (r3 = 0; r3 < 5; r3++) {
    gVr.b[0x5C2A + r3] = gDigitBufferU16[r3] + 0x209; 
    gVr.b[0x5C2A + r3] += r4_3;
  }
  r4_3 = sub_800A528();
  ConvertU16ToDigitBuffer(GetPlayerDeckSize(), 0);
  for (r3 = 0; r3 < 2; r3++) {
    gVr.b[0x5C36 + r3] = gDigitBufferU16[r3 + 3] + 0x209; 
    gVr.b[0x5C36 + r3] += r4_3;
  }
  sub_800907C();
  sub_800A544();
}*/
