#include "global.h"



static void sub_800876C (void);
static void sub_8008780 (void);
static void sub_8008794 (void);
static void sub_80087A8 (void);
static void sub_80087BC (void);
static void sub_80087D0 (void);
static void sub_80087E4 (void);
static void sub_8008804 (void);
static void sub_8008818 (void);
static void sub_800882C (void);
static void Trunk_A_Submenu (void);
static void sub_80088F0 (void);
static void sub_8008924 (void);
static void sub_8008958 (void);
static void sub_80089B4 (void);
static void sub_80089D0 (void);
static void sub_80089EC (void);
void sub_8008A48 (void);
static void sub_8008A5C (void);


void TrunkMenuDefaultSort (void);
void sub_800ABB4 (void);


void WaitForVBlank(void);
unsigned short sub_800901C(unsigned char);
void sub_80090E8(void);
void sub_8009110(void);
void sub_8009140(void);
void sub_800916C(void);
void sub_800919C(void);
void sub_80091C0(void);
void sub_80091EC(unsigned char);
void sub_08009224(void);
void sub_800B3E4(unsigned short);

u32 GetDuelistLevel(void);
void SetCardInfo(unsigned short id);
unsigned char GetPlayerDeckSize(void);
unsigned char TryRemoveCardFromDeck(unsigned short id);
void sub_801D960(unsigned short id);
void sub_801D9B8(unsigned short);
void AddCardToDeck(unsigned short);
unsigned char GetDeckCardQty(unsigned short);


unsigned char sub_801F098(unsigned short id);

void sub_8034A38(void);

extern unsigned short gPressedButtons; //0x02020DF8
extern unsigned char gTotalCardQty[];
extern unsigned char gTrunkCardQty[]; //2021790

extern struct CardInfo gCardInfo; //2021AD0


extern const unsigned char gStarterTrunk[];

extern unsigned char gUnk_8DFA6A8[];  //change these to struct?
extern unsigned char gUnk_8DFA6B4[];
extern unsigned char gUnk_8DFAB54[];
extern unsigned char gUnk_8DFAFF4[];

extern unsigned short gUnk_8090470[];
extern u64 gMoney;



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
extern unsigned char gUnk_8DF813C[]; //cursor state change when pressing up
extern unsigned char gUnk_8DF813F[]; //cursor state change when pressing down

extern unsigned char *g201CB30;
extern unsigned short *g201CB34;

void LoadPalettes(void);
void LoadOam(void);

extern unsigned short gOamBuffer[];
void RunTrunkTask (unsigned char);
void sub_800A3D8 (unsigned char);
void sub_800AA58 (unsigned char);
void sub_800ABD0 (void);

void sub_800B538 (unsigned short* id);
void sub_800ABA8 (void);
void sub_8009364 (void);

void SetVBlankCallback (void (*)(void));
void LoadCharblock1 (void);

void RunPlayerDeckTask (unsigned char);


extern unsigned short gRepeatedOrNewButtons;
extern unsigned short gNewButtons;
extern unsigned short gUnk2021DCC;

void sub_802612C (void);
int TrunkProcessInput (void);




void sub_0800ABA4 (void);
void SortingMenuMain (void);

void sub_800ABE4 (void);
void sub_0800ABE0 (void);

//TODO: rename to TrunkMenuMain?
void TrunkMenu (void) {
  unsigned keepProcessing = 1;
  sub_800882C();
  while (keepProcessing) {
    switch ((unsigned short)TrunkProcessInput()) {
      case 0x40:
        sub_800876C();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 0x140:
        sub_8008780();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 0x80:
        sub_8008794();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 0x180:
        sub_80087A8();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 0x10:
        sub_80087BC();
        sub_800ABD0();
        sub_800AA58(6);
        break;
      case 0x20:
        sub_80087D0();
        sub_800ABD0();
        sub_800AA58(6);
        break;
      case 0x200:
        sub_8008804();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 1:
        Trunk_A_Submenu();
        sub_800AA58(7);
        break;
      case 2:
        sub_80087E4();
        keepProcessing = 0;
        sub_0800ABA4();
        sub_800AA58(2);
        break;
      case 8:
        SortingMenuMain();
        sub_800A3D8(8);
        sub_800AA58(8);
        break;
      case 4:
        sub_8008818();
        sub_800AA58(9);
        sub_800ABE4();
        break;
      case 0:
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
  unsigned short r2;
  unsigned short ret = 0;
  sub_802612C();
  r2 = 1;
  for (i = 0; i < 10; i++) {
    if (r2 & gNewButtons)
      ret = r2 & gNewButtons;
    r2 <<= 1;
  }
  r2 = 0x10;
  for (i = 0; i < 4; i++) {
    if (r2 & gUnk2021DCC)
      ret = r2 & gUnk2021DCC;
    r2 <<= 1;
  }
  if (gUnk2021DCC & 0x40 && gPressedButtons & 0x100)
    ret = 0x140;
  if (gUnk2021DCC & 0x80 && gPressedButtons & 0x100)
    ret = 0x180;
  return ret;
}

int TrunkSubmenuProcessInput (void) {
  unsigned char i;
  unsigned short ret = 0;
  unsigned short buttonMask = 1;
  for (i = 0; i < 10; i++) {
    if (buttonMask & gNewButtons)
      ret = buttonMask & gNewButtons;
    buttonMask <<= 1;
  }
  buttonMask = 0x10;
  for (i = 0; i < 4; i++) {
    if (buttonMask & gRepeatedOrNewButtons)
      ret = buttonMask & gRepeatedOrNewButtons;
    buttonMask <<= 1;
  }
  if (gRepeatedOrNewButtons & DPAD_UP && gPressedButtons & 0x100)
    ret = 0x140;
  if (gRepeatedOrNewButtons & DPAD_DOWN && gPressedButtons & 0x100)
    ret = 0x180;
  return ret;
}

static void sub_800876C (void) {
  RunTrunkTask(3);
  sub_800A3D8(3);
}

static void sub_8008780 (void) {
  RunTrunkTask(5);
  sub_800A3D8(3);
}

static void sub_8008794 (void) {
  RunTrunkTask(2);
  sub_800A3D8(3);
}

static void sub_80087A8 (void) {
  RunTrunkTask(4);
  sub_800A3D8(3);
}

static void sub_80087BC (void) {
  RunTrunkTask(7);
  sub_800A3D8(3);
}

static void sub_80087D0 (void) {
  RunTrunkTask(8);
  sub_800A3D8(3);
}

static void sub_80087E4 (void) {
  RunTrunkTask(9);
  sub_800A3D8(1);
  RunPlayerDeckTask(8);
  PlayMusic(SFX_CANCEL);
}

static void sub_8008804 (void) {
  RunTrunkTask(6);
  sub_800A3D8(4);
}

static void sub_8008818 (void) {
  RunTrunkTask(10);
  sub_800A3D8(7);
}

static void sub_800882C (void) {
  TrunkMenuDefaultSort();
  sub_800A3D8(0);
  sub_800A3D8(2);
  sub_800AA58(1);
  sub_800ABA8();
  sub_800AA58(3);
}

static void Trunk_A_Submenu (void) {
  unsigned keepProcessing;
  gTrunkData.cursorState = TRUNK_CURSOR_DETAILS;
  sub_8009364();
  sub_80089EC();
  LoadCharblock1();
  SetVBlankCallback(sub_8008A5C);
  WaitForVBlank();
  PlayMusic(SFX_SELECT);
  keepProcessing = 1;
  while (keepProcessing) {
    switch (TrunkSubmenuProcessInput()) {
      case 2:
        keepProcessing = 0;
        break;
      case 0x40:
        sub_80088F0();
        break;
      case 0x80:
        sub_8008924();
        break;
      case 1:
        switch (gTrunkData.cursorState) {
          case TRUNK_CURSOR_DETAILS:
            sub_8008958();
            break;
          case TRUNK_CURSOR_ADD_CARD:
            sub_80089B4();
            break;
          case TRUNK_CURSOR_REMOVE_CARD:
            sub_80089D0();
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

static void sub_80088F0 (void) { //pressing up
  gTrunkData.cursorState = gUnk_8DF813C[gTrunkData.cursorState];
  sub_80089EC();
  PlayMusic(SFX_MOVE_CURSOR);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
}

static void sub_8008924 (void) { //pressing down
  gTrunkData.cursorState = gUnk_8DF813F[gTrunkData.cursorState];
  sub_80089EC();
  PlayMusic(SFX_MOVE_CURSOR);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
}

static void sub_8008958 (void) { //trunk menu card details
  gStatMod.card = sub_800901C(2);
  gStatMod.field = 0;
  gStatMod.stage = 0;
  sub_800B538(&gStatMod.card);
  PlayMusic(SFX_SELECT);
  sub_801F6B0();
  sub_800A3D8(0);
  sub_800A3D8(2);
  sub_800AA58(1);
  sub_800ABA8();
  sub_8009364();
  sub_80089EC();
  SetVBlankCallback(sub_8008A5C);
  WaitForVBlank();
  LoadCharblock1();
}

static void sub_80089B4 (void) {
  RunTrunkTask(7);
  sub_800A3D8(3);
  sub_800ABD0();
  sub_800AA58(6);
}

static void sub_80089D0 (void) {
  RunTrunkTask(8);
  sub_800A3D8(3);
  sub_800ABD0();
  sub_800AA58(6);
}

static void sub_80089EC (void) { //SetCursorOam
  u32 *oam = (u32*)&gOamBuffer[6 * 4]; //todo
  oam[0] = gUnk_8DF8142[gTrunkData.cursorState] |
           gUnk_8DF8145[gTrunkData.cursorState] << 16 |
           0x40000000; //sprite size bits
  oam[1] = 0xC120;
  oam[2] = gUnk_8DF8142[gTrunkData.cursorState] |
           gUnk_8DF8145[gTrunkData.cursorState] << 16 |
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
/*
void sub_8008C34 (void) {
  int i;
  SetMoney(gMoney / 2);
  for (i = 0; gUnk_8090470[i]; i++) {
    int r7 = 1;
    if (gUnk_8090470[i] < 801)
      if (r7 > 250 - gTrunkCardQty[gUnk_8090470[i]])
        gTrunkCardQty[gUnk_8090470[i]] = 250;
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
    sub_801D9B8(id);
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
	bl sub_801D9B8\n\
_08008DC4:\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	");
}

void RemoveCardFromDeckAndTrunk (unsigned short id) {
  gTrunkCardQty[id] = 0;
  sub_801D960(id);
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
  unsigned short cardId = sub_800901C(2);
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

void sub_8008EA8 (void) {
  unsigned removalFailed = 0;
  unsigned short id = sub_800901C(2);
  if (!GetDeckCardQty(id) || TryRemoveCardFromDeck(id) != 1)
    removalFailed = 1;
  if (removalFailed == 1) {
    PlayMusic(SFX_FORBIDDEN);
    while (gPressedButtons & DPAD_LEFT)
      WaitForVBlank();
  }
  else {
    if (gTrunkCardQty[id] < 250)
      gTrunkCardQty[id]++;
    else
      gTrunkCardQty[id] = 250;
    PlayMusic(SFX_SELECT);
  }
}

void InitTrunkData (void) {
  unsigned short cardId;
  gTrunkData.unk0 = 0;
  gTrunkData.unk3 = 1;
  gTrunkData.sortMode = TRUNK_SORT_NUMBER;
  for (cardId = 0; cardId < NUM_CARDS; cardId++)
    gTotalCardQty[cardId] = gTrunkCardQty[cardId] + GetDeckCardQty(cardId);
  for (cardId = 0; cardId < NUM_TRUE_CARDS; cardId++)
    gTrunkData.unkC[cardId] = cardId + 1;
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
        sub_80090E8();
        break;
    case 2:
        sub_8009110();
        break;
    case 4:
        sub_800916C();
        break;
    case 5:
        sub_8009140();
        break;
    case 6:
        sub_800919C();
        break;
    case 7:
        TryAddSelectedCardToDeck();
        break;
    case 8:
        sub_8008EA8();
        break;
    case 10:
        sub_80091C0();
        break;
    case 9:
        sub_08009224();
        break;
    }
}

unsigned char sub_8009010 (void) {
  return gTrunkData.unk3;
}

// get nth card on screen?
unsigned short sub_800901C (unsigned char n) {
  signed short r2 = gTrunkData.unk0 + n - 2;
  if (r2 >= NUM_TRUE_CARDS)
    r2 -= NUM_TRUE_CARDS;
  else if (r2 < 0)
    r2 += NUM_TRUE_CARDS;
  return gTrunkData.unkC[r2];
}

unsigned char GetTrunkCardQuantity (unsigned short cardId) {
  return gTrunkCardQty[cardId];
}

//unused?
static unsigned char GetCurrentSortMode (void) {
  return gTrunkData.sortMode;
}

void sub_800907C (void) {
  gUnk2021AB4.unk0 = gTrunkData.unk0;
  gUnk2021AB4.unk2 = NUM_TRUE_CARDS - 1;
}

void AddCardToTrunk (unsigned short cardId) {
  if (gTrunkCardQty[cardId] < 250)
    gTrunkCardQty[cardId]++;
  else
    gTrunkCardQty[cardId] = 250;
}

void TrunkMenuDefaultSort (void)
{
  gUnk2022EB0.cards = gTrunkData.unkC;
  gUnk2022EB0.cardCount = NUM_TRUE_CARDS;
  gUnk2022EB0.sortMode = gUnk_8DFA6A8[gTrunkData.sortMode];
  sub_8034A38(); //one of sorting funcs?
}

void sub_80090E8 (void) {
  if (--gTrunkData.unk0 < 0)
    gTrunkData.unk0 += NUM_TRUE_CARDS;
  PlayMusic(SFX_MOVE_CURSOR);
}

void sub_8009110 (void) {
  if (++gTrunkData.unk0 > NUM_TRUE_CARDS - 1)
    gTrunkData.unk0 -= NUM_TRUE_CARDS;
  PlayMusic(SFX_MOVE_CURSOR);
}

void sub_8009140 (void) {
  gTrunkData.unk0 -= 50;
  if (gTrunkData.unk0 < 0)
    gTrunkData.unk0 += NUM_TRUE_CARDS;
  PlayMusic(SFX_MOVE_CURSOR);
}

void sub_800916C (void) {
  gTrunkData.unk0 += 50;
  if (gTrunkData.unk0 > NUM_TRUE_CARDS - 1)
    gTrunkData.unk0 -= NUM_TRUE_CARDS;
  PlayMusic(SFX_MOVE_CURSOR);
}

void sub_800919C (void) {
  if (++gTrunkData.unk3 > 3)
    gTrunkData.unk3 = 0;
  PlayMusic(SFX_MOVE_CURSOR);
}

void sub_80091C0(void)
{
    if (++gTrunkData.sortMode >= TRUNK_SORT_EXIT)
      gTrunkData.sortMode = TRUNK_SORT_NUMBER;
    sub_80091EC(gTrunkData.sortMode);
    PlayMusic(SFX_MOVE_CURSOR);
}

void sub_80091EC(unsigned char val)
{
    gUnk2022EB0.cards = gTrunkData.unkC;
    gUnk2022EB0.cardCount = NUM_TRUE_CARDS;
    gUnk2022EB0.sortMode = gUnk_8DFA6A8[val];
    sub_8034A38();
    gTrunkData.unk0 = 0;
}

void sub_08009224(void){}

extern u32 gUnk_808918C[];
extern unsigned char gUnk_808C1C0[];
extern unsigned char g8DFA6B4[];
extern unsigned char g8DFAB54[];
extern unsigned char g8DFAFF4[];
extern unsigned short gUnk_808B860[][30];

// Same exact function as sub_800C834
void sub_8009228 (void)
{
    unsigned char i;

    LZ77UnCompWram(gUnk_808918C, gBgVram.cbb0);

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
        CpuCopy32(gUnk_808B860[i], &((struct Sbb*)&gBgVram)->sbb7[i], 60);

    CpuCopy32(gUnk_808C1C0, gPaletteBuffer, 0x80);
    CpuFill16(0, gBgVram.sbb18, 32);
}

extern unsigned short gUnk_808C240[][30];
extern unsigned char g8DF811C[];
extern unsigned char g80907E4[];

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


extern unsigned short gUnk_808C6F0[][30];
extern unsigned char g8090920[];
extern unsigned char g8090B94[];
extern unsigned char g8090B98[];

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
  sub_800DDA0(GetDeckCapacity(), 0);
  for (i = 0; i < 5; i++)
    gVr.b[0x5C30 + i] = g2021BD0[i] + 0x5209;
  gVr.b[0x5C38] = 0x5001;
  gVr.b[0x5C39] = 0x520D;
  gVr.b[0x5C3A] = 0x5209;
}

// same as sub_800CD88
/*
void sub_8009860 (void) {

}*/
