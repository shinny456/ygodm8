#include "global.h"

struct TurnVoice {
  u16 duelistId;
  u16 soundId;
};

static void InitIngameDuel (void);
static void OpponentTurnTextAndVoice (void);
static void TryPlayingMyTurnVoice (void);
static bool8 DoesDuelistHaveTurnVoice (struct TurnVoice*);
static void DuelEnd (void);
static void InitDuelMetaData (void);
static void sub_8021C98 (void);
static void sub_8021CD0 (void);
static void nullsub_8021CDC (void);
static unsigned char sub_8021CFC (void);
static void StartPlayerLinkTurn (void);
static void StartOpponentLinkTurn (void);
static void sub_8021FF8 (void);
static void InitLinkDuel (void);
static void OnLinkDuelEnd (void);
static void HandleLinkDuelResult (void);
static void sub_8022234 (void);
static void InitDuelistsAndBoard (void);
static void SetLinkDuelOutcomeFlag (void);
static void FadeToBlackAfterLinkDuel (void);



extern struct Duelist* gUnk8E00B30[];
extern struct TurnVoice gTurnVoices[];
extern u32 gOamBuffer[];
extern unsigned char g80C1824[];
void UpdateDuelGfxExceptField(void);
u32 AdjustBackgroundBeforeTurnStart(unsigned char);
void sub_804078C(void);
void WaitForVBlank(void);
void sub_8040FDC(void);

void UnblockTurnSummoning(unsigned char);
void UpdateDuelZonePtrs(unsigned char);
void CheckWinConditionExodia();    //implicit declaration shenanigans
void TryEvolveMothCards(void);
void PlayerTurnMain(void);
void AI_Main(void);
void FlipAtkPosCardsFaceUp(unsigned char);
void SwitchTurn(void);
void DecrementSorlTurns(unsigned char);
void UnlockCardsInRow(unsigned char);
void SetDuelType(unsigned char);
void ClearDuelDecks(void);
void sub_8043E14(unsigned char, u16);
void ShuffleDuelDeck(unsigned char);
void InitBoard(void);
void sub_8041090();
void SetVBlankCallback(void (*)(void));
void LoadPalettes(void);
void HandleOutcome(void);




void LoadOam(void);

void sub_804ED08(void);
void sub_8035038(u16);





void DuelMain (void) {
  struct DuelText duelText;
  MosaicEffect();
  InitIngameDuel();
  while (1) {
    unsigned char turn = WhoseTurn();
    UpdateDuelGfxExceptField();
    if (turn == DUEL_PLAYER)
      AdjustBackgroundBeforeTurnStart(gDuelCursor.currentY);
    else
      AdjustBackgroundBeforeTurnStart(1);
    sub_8057808();
    sub_804078C();
    WaitForVBlank();
    sub_8040FDC();
    ResetDuelTextData(&duelText);
    if (turn == DUEL_PLAYER) {
      duelText.textId = TEXT_PLAYER_TURN;
      DisplayDuelText(&duelText);
    }
    else
      OpponentTurnTextAndVoice();
    UnblockTurnSummoning(ACTIVE_DUELIST);
    ResetNumTributes();
    UpdateDuelZonePtrs(turn);
    if (NumEmptyZonesInRow(gTurnZones[4]) > 0) {
      TryDrawingCard(turn);
      if (IsDuelOver() == TRUE)
        break;
      PlayMusic(SFX_DRAW_CARD);
    }
    UpdateDuelGfxExceptField();
    CheckWinConditionExodia(turn);
    if (IsDuelOver() == TRUE)
      break;
    TryDisplaySorlTurnsRemainingText();
    TryEvolveMothCards();
    if (turn == DUEL_PLAYER)
      PlayerTurnMain();
    else
      AI_Main();
    if (IsDuelOver() == TRUE)
      break;
    ReturnMonstersToOwner();
    FlipAtkPosCardsFaceUp(2);
    EndFirstTurnAttackBan();
    SwitchTurn();
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->defenseBlocked)
      gTurnDuelistBattleState[ACTIVE_DUELIST]->defenseBlocked = 0;
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->sorlTurns)
      DecrementSorlTurns(ACTIVE_DUELIST);
    UnlockCardsInRow(2);
    UnlockCardsInRow(4);
  }
  DuelEnd();
}

static void InitIngameDuel (void) {
  unsigned char i;
  SetDuelType(0);
  InitDuelMetaData();
  gDuelData.duelist = *gUnk8E00B30[gDuelData.opponent];
  gDuelData.outcomeFlag = 2;
  gDuelData.unk2A = 1;
  gDuelData.duelMusic = gUnk8E00B30[gDuelData.opponent]->duelMusic;
  gDuelData.winMusic = gUnk8E00B30[gDuelData.opponent]->winMusic;
  gDuelData.lossMusic = gUnk8E00B30[gDuelData.opponent]->lossMusic;
  ClearDuelDecks();
  sub_8043E14(0, 0);
  sub_8043E14(1, gDuelData.opponent);
  for (i = 0; i < 2; i++)
    ShuffleDuelDeck(i);
  if (!sub_8056258(0, 1))
    gWhoseTurn = DUEL_PLAYER;
  else
    gWhoseTurn = DUEL_OPPONENT;
  InitBoard();
  InitDuelLifePoints();
  InitDuelistStatus();
  gHideEffectText = 0;
  sub_8041090();
  PlayMusic(gDuelData.duelMusic);
}

//FadeToBlackAfterDuel
static void FadeToBlack (void) {
  u16 i, j;
  struct PlttData* pltt;
  for (i = 0; i < 32; i++) {
    for (j = 0; j < 512; j++) {
      pltt = (struct PlttData*)&gPaletteBuffer[j];
      if (pltt->r) pltt->r--;
      if (pltt->g) pltt->g--;
      if (pltt->b) pltt->b--;
    }
    SetVBlankCallback(LoadPalettes);
    WaitForVBlank();
  }
}

// might also involve waiting for player input?
void DisplayDuelText (struct DuelText* arg0) {
  if (arg0->textId != 0xFF)
    sub_8041C94(gDuelTextStrings[arg0->textId], arg0->unk0, arg0->unk2, arg0->rewardAmount, 0);
}

void ResetDuelTextData (struct DuelText* arg0) {
  arg0->unk0 = 0;
  arg0->unk2 = 0;
  arg0->rewardAmount = 0;
  arg0->unk6 = 0;
  arg0->textId = 0xFF;
}

static void OpponentTurnTextAndVoice (void) {
  TryPlayingMyTurnVoice();
  sub_8041C94(gMyTurnStrings[gDuelData.opponent], 0, 0, 0, 0);
}

static void TryPlayingMyTurnVoice (void) {
  struct TurnVoice turnVoice;
  turnVoice.duelistId = gDuelData.duelist.id;
  if (DoesDuelistHaveTurnVoice(&turnVoice))
    PlayMusic(turnVoice.soundId);
}

static bool8 DoesDuelistHaveTurnVoice (struct TurnVoice* turnVoice) {
  unsigned char i;
  for (i = 0; gTurnVoices[i].duelistId; i++)
    if (gTurnVoices[i].duelistId == turnVoice->duelistId) {
      turnVoice->soundId = gTurnVoices[i].soundId;
      return 1;
    }
  turnVoice->soundId = 0;
  return FALSE;
}

static void DuelEnd (void) {
  if (gDuelistStatus[DUEL_OPPONENT] == DUELIST_STATUS_DEFEAT)
    gDuelData.outcomeFlag = 1;
  else
    gDuelData.outcomeFlag = 2;
  HandleOutcome();
  FadeOutMusic(2);
  FadeToBlack();
}

static void InitDuelMetaData (void) {
  unsigned char i;
  gDuelData.moneyReward = 0;
  gDuelData.duelMusic = 0;
  for (i = 0; i < 10; i++)
    gDuelData.unk14[i] = 0;
  gDuelData.capacityYield = 0;
  gDuelData.unk2A = 0;
  gDuelData.outcomeFlag = 2;
  gDuelData.unk2c = 0;
  gDuelData.unk2d = 1;
  gDuelData.duelist = *gUnk8E00B30[0]; //dummy duelist?
}

void MosaicEffect (void) {
  u16 i, j;
  struct PlttData* pltt;
  u16 mos;

  for (i = 0; i < 128; i++)
    gOamBuffer[i * 2] |= 0x1000; //oam buffer nested structs?

  SetVBlankCallback(sub_8021C98);
  WaitForVBlank();

  for (i = 0; i < 32; i++) {
    for (j = 0; j < 512; j++) {
      pltt = (struct PlttData*)&gPaletteBuffer[j];
      if (pltt->r)
        pltt->r--;
      if (pltt->g)
        pltt->g--;
      if (pltt->b)
        pltt->b--;
    }
    SetVBlankCallback(sub_8021CD0);
    WaitForVBlank();
    nullsub_8021CDC();
    mos = (i >> 1);
    REG_MOSAIC = (mos & 0xF) << 8 | (mos & 0xF);
  }
}

static void sub_8021C98 (void) {
  LoadOam();
  REG_MOSAIC = 0; //TODO
  REG_BG0CNT |= BGCNT_MOSAIC;
  REG_BG1CNT |= BGCNT_MOSAIC;
  REG_BG2CNT |= BGCNT_MOSAIC;
  REG_BG3CNT |= BGCNT_MOSAIC;
}

static void sub_8021CD0 (void) {
  LoadPalettes();
}

static void nullsub_8021CDC (void) {
}

static void sub_8021CE0 (void) { //unused
  if (sub_8021CFC() == 1) {
    DuelMain();
    sub_804ED08();
  }
}

static unsigned char sub_8021CFC (void) {
  return 0;
}

unsigned char GetRitualNumTributes (unsigned short id) {
  SetCardInfo(id);
  return g80C1824[gCardInfo.ritualEffect];
}




//file split?
struct Unk2021DA0 {
  int deckCapacity;  //TODO: long type?
  u32 unk4;
  unsigned char unk8;
  unsigned char unk9;
  unsigned char unkA;
  unsigned char unkB;
  unsigned char unkC;
  unsigned char unkD;
  unsigned char unkE;
};

extern unsigned char g2021D9C;
extern struct Unk2021DA0 gLinkDuelMenuData;
extern u32 g2021D70;
extern unsigned char g2021D80[];
extern u16 gNewButtons;


void sub_8024354(void);
void sub_8024568(void);
void sub_801B66C(void);
void UpdateAllDuelGfx(void);
void sub_8041D54(void);
void sub_803276C(void);

void sub_80240CC(void);
void sub_802417C(void);



s32 GetCardsDrawn(unsigned char);
void IncreaseDeckCapacity(u32);
void SaveGame(void);
void InitDuelDeck(unsigned char, u16*);
void SetWhoseTurnToPlayer(void);

void LinkDuelMain (void) {
  unsigned char turn;
  struct DuelText duelText;
  sub_8021FF8();
  if (g3000C38.unk34)
    return;
  sub_8035038(2);
  PlayMusic(SFX_TRANSITION_OVERWORLD_TO_ANTE);
  MosaicEffect();
  InitLinkDuel();
  while (1) {
    turn = WhoseTurn();
    UpdateDuelGfxExceptField();
    sub_80240BC(&duelText);
    if (turn == DUEL_PLAYER) {
      duelText.textId = TEXT_PLAYER_TURN;
      sub_802405C(&duelText);
    }
    else {
      duelText.textId = TEXT_OPPONENT_LINK_TURN;
      sub_802405C(&duelText);
    }
    sub_8022080();
    UnblockTurnSummoning(ACTIVE_DUELIST);
    ResetNumTributes();
    UpdateDuelZonePtrs(turn);
    if (turn == DUEL_PLAYER)
      StartPlayerLinkTurn();
    else
      StartOpponentLinkTurn();
    if (IsDuelOver() == TRUE) break;
    ReturnMonstersToOwner();
    FlipAtkPosCardsFaceUp(2);
    EndFirstTurnAttackBan();
    SwitchTurn();
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->defenseBlocked)
      gTurnDuelistBattleState[ACTIVE_DUELIST]->defenseBlocked = FALSE;
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->sorlTurns)
      DecrementSorlTurns(ACTIVE_DUELIST);
    UnlockCardsInRow(2);
    UnlockCardsInRow(4);
    if (g3000C38.unk34) break;
  }
  OnLinkDuelEnd();
}

static void StartPlayerLinkTurn (void) {
  struct DuelText duelText;
  g3000C38.unk32 = 0;
  if (NumEmptyZonesInRow(gTurnZones[4]) > 0) {
    TryDrawingCard(DUEL_PLAYER);
    if (IsDuelOver() == TRUE) {
      g2021D98 = 3;
      sub_8024548();
      sub_80240BC(&duelText);
      duelText.textId = TEXT_LINKING;
      sub_802408C(&duelText);
      do {
        sub_8024354();
      } while (g3000C38.unk34);
      return;
    }
    else
      PlayMusic(SFX_DRAW_CARD);
  }
  UpdateDuelGfxExceptField();
  CheckWinConditionExodia();
  if (IsDuelOver() == TRUE)
    return;
  TryDisplaySorlTurnsRemainingText();
  TryEvolveMothCards();
  PlayerTurnMain();
  if (IsDuelOver() == TRUE)
    return;
  g2021D98 = 3;
  sub_8024548();
  sub_80240BC(&duelText);
  duelText.textId = TEXT_LINKING;
  sub_802408C(&duelText);
  do {
    sub_8024354();
  } while (g3000C6C);
}

static void StartOpponentLinkTurn (void) {
  struct DuelText duelText; //unused
  struct DuelCursor curPos = gDuelCursor;
  bool32 r4 = 0;

  g3000C38.unk32 = 1;
  while (1) {
    do {
      sub_8024354();
    } while (g3000C38.unk34);
    sub_8024568();
    switch (g2021D9C) {
    case 3:
      r4 = 1;
      break;
    case 4:
      sub_801B66C();
      UpdateAllDuelGfx();
      sub_8022080();
      break;
    case 5:
      SetDuelFieldGfx(gDuel.field);
      sub_801CF08();
      break;
    }
    if (IsDuelOver() == TRUE)
      r4 = 1;
    if (r4 == 1)
      break;
  }
  gDuelCursor = curPos;
  AdjustBackgroundBeforeTurnStart(gDuelCursor.currentY);
}

NAKED
static void sub_8021F80 (void) { //unused

  asm_unified("\n\
  push {r4, r5, r6, lr}\n\
	sub sp, #0xc\n\
	ldr r0, _08021FA8 @ =0x020241FC\n\
	ldrb r0, [r0]\n\
	cmp r0, #6\n\
	bne _08021FEE\n\
	mov r0, sp\n\
	bl sub_80240BC\n\
	mov r1, sp\n\
	movs r0, #0x18\n\
	strb r0, [r1, #8]\n\
	mov r0, sp\n\
	bl sub_802408C\n\
	movs r4, #0x1e\n\
	ldr r6, _08021FAC @ =0x03000C6C\n\
	mov r5, sp\n\
	b _08021FD8\n\
	.align 2, 0\n\
_08021FA8: .4byte 0x020241FC\n\
_08021FAC: .4byte 0x03000C6C\n\
_08021FB0:\n\
	subs r4, #1\n\
	cmp r4, #0\n\
	bne _08021FD8\n\
	mov r0, sp\n\
	bl sub_80240BC\n\
	movs r0, #0x19\n\
	strb r0, [r5, #8]\n\
	mov r0, sp\n\
	bl sub_802405C\n\
	mov r0, sp\n\
	bl sub_80240BC\n\
	movs r0, #0x18\n\
	strb r0, [r5, #8]\n\
	mov r0, sp\n\
	bl sub_802408C\n\
	movs r4, #0x1e\n\
_08021FD8:\n\
	bl sub_802432C\n\
	ldrb r0, [r6]\n\
	cmp r0, #0\n\
	bne _08021FB0\n\
	bl WhoseTurn\n\
	cmp r0, #0\n\
	bne _08021FEE\n\
	bl sub_8041D54\n\
_08021FEE:\n\
	add sp, #0xc\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0");
}

static void sub_8021FF8 (void) {
  SetDuelType(6);
  sub_803276C();
  sub_8022234();
  sub_80240CC();
  if (!g3000C38.unk34)
    if (gLinkDuelMenuData.deckCapacity != g2021D70)
      g3000C38.unk34 = 0xFE;
    else
      sub_802417C();
}

static void InitLinkDuel (void) {
  InitDuelistsAndBoard();
  sub_8041090();
  PlayMusic(gDuelData.duelMusic);
  UpdateDuelGfxExceptField();
  gHideEffectText = 0;
}

static void OnLinkDuelEnd (void) {
  SetLinkDuelOutcomeFlag();
  HandleLinkDuelResult();
  FadeOutMusic(1);
  FadeToBlackAfterLinkDuel();
}

void sub_8022080 (void) {
  struct DuelText duelText;
  if (gDuelType != DUEL_TYPE_LINK)
    return;
  sub_80240BC(&duelText);
  duelText.textId = TEXT_LINKING;
  sub_802408C(&duelText);
  do {
    sub_802432C();
  } while (g3000C6C);
  if (WhoseTurn() == DUEL_PLAYER)
    sub_8041D54();
}

static void LinkDuelWin (void) {
  struct DuelText duelText;
  IncreaseDeckCapacity(gDuelData.capacityYield);
  SaveGame();
  FadeOutMusic(4);
  if (gDuelLifePoints[DUEL_OPPONENT] == 0) {
    ResetDuelTextData(&duelText);
    duelText.textId = TEXT_OPPONENT_OUT_OF_LP;
    DisplayDuelText(&duelText);
  }
  else if (NumCardsInDeck(1) < GetCardsDrawn(1)) {
    ResetDuelTextData(&duelText);
    duelText.textId = TEXT_OPPONENT_DECK_OUT;
    DisplayDuelText(&duelText);
  }
  if (gDuelData.unk2d) {
    PlayMusic(gDuelData.winMusic);
    ResetDuelTextData(&duelText);
    duelText.textId = TEXT_DUEL_VICTORY;
    DisplayDuelText(&duelText);
    ResetDuelTextData(&duelText);
    duelText.textId = TEXT_CAPACITY_INCREASED;
    duelText.rewardAmount = gDuelData.capacityYield;
    DisplayDuelText(&duelText);
  }
}

static void LinkDuelLoss (void) {
  struct DuelText duelText;
  IncreaseDeckCapacity(5);
  SaveGame();
  FadeOutMusic(4);
  if (gDuelLifePoints[DUEL_PLAYER] == 0) {
    ResetDuelTextData(&duelText);
    duelText.textId = TEXT_PLAYER_OUT_OF_LP;
    DisplayDuelText(&duelText);
  }
  else if (NumCardsInDeck(0) < GetCardsDrawn(0)) {
    ResetDuelTextData(&duelText);
    duelText.textId = TEXT_PLAYER_DECK_OUT;
    DisplayDuelText(&duelText);
  }
  if (gDuelData.unk2d) {
    PlayMusic(gDuelData.lossMusic);
    ResetDuelTextData(&duelText);
    duelText.textId = TEXT_DUEL_LOSS;
    DisplayDuelText(&duelText);
    ResetDuelTextData(&duelText);
    duelText.textId = TEXT_CAPACITY_INCREASED;
    duelText.rewardAmount = 5;
    DisplayDuelText(&duelText);
  }
}

static void HandleLinkDuelResult (void) {
  if (gDuelData.outcomeFlag == 1)
    LinkDuelWin();
  else
    LinkDuelLoss();
}

static void sub_8022234 (void) {
  u32 i;

  for (i = 0; i < 9; i++)
    g2021D80[i] = 0;

  for (i = 0; i < 10; i++)
    gDuelData.unk14[i] = 0;

  gDuelData.moneyReward = 0;
  gDuelData.opponent = 0;
  gDuelData.ante = gAnte;
  gDuelData.capacityYield = 10;
  gDuelData.unk2A = 0;
  gDuelData.outcomeFlag = 2;
  gDuelData.unk2c = 0;
  gDuelData.unk2d = 1;
  gDuelData.duelist = *gUnk8E00B30[0];
  gDuelData.duelMusic = 500;
  gDuelData.winMusic = 43;
  gDuelData.lossMusic = 44;
  ClearDuelDecks();
  InitDuelDeck(DUEL_PLAYER, gDeckMenu.cards);
  ShuffleDuelDeck(0);
  SetWhoseTurnToPlayer();
}

static void InitDuelistsAndBoard (void) {
  InitDuelistStatus();
  SetDuelLifePoints(DUEL_PLAYER, gDuelData.duelist.playerLp);
  SetDuelLifePoints(DUEL_OPPONENT, gDuelData.duelist.lifePoints);
  InitBoard();
}

static void SetLinkDuelOutcomeFlag (void) {
  if (gDuelistStatus[DUEL_OPPONENT] == DUELIST_STATUS_DEFEAT)
    gDuelData.outcomeFlag = 1;
  else
    gDuelData.outcomeFlag = 2;
}

static void FadeToBlackAfterLinkDuel (void) {
  u16 i, j;
  struct PlttData* pltt;

  for (i = 0; i < 32; i++) {
    for (j = 0; j < 512; j++) {
      pltt = (struct PlttData*)&gPaletteBuffer[j];
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




//split?
static unsigned short ProcessInput(void);
static void sub_80226D8 (void);
static void sub_8022764 (void);
static void sub_8022794 (void);
static void sub_80227C4 (void);
static void sub_80227F4 (void);
static void sub_8022824 (void);
static void sub_8022858 (void);
static void sub_802288C (void);
static void sub_80228CC (void);
static void sub_802293C (void);
static void sub_8022990 (void);


void InitTrunkData(void);
void InitDeckData(void);
void sub_8022A24(void);
void LinkDuelInitDeckCapacity(int);
void sub_8023998(void);
unsigned char LfsrNextByte(void);
bool8 IsDeckFull(void);
s32 IsCostWithinCapacity(void);
void sub_8022B7C(unsigned char);
void sub_8022AA0(void);
void sub_8023AE4(void);
void sub_8023A98(void);
void TrunkMenuMain(void);
void sub_8022A94(unsigned char);
u32 IsPlayerDeckNonempty(void);

u32 GetPlayerDeckCost(void);
void sub_8023B30(void);
void sub_8023C14(void);
void sub_8023B7C(void);
void sub_8023BC8(void);



void sub_80238C4(void);
void sub_8022B04(void);
extern u16 gPressedButtons;
extern u16 gRepeatedOrNewButtons;



void sub_802618C(void);
void sub_8022ABC(void);
void sub_80229C0(void);
void sub_8023A14(void);
void sub_8022AE0(void);
void sub_8022A64(void);
void sub_8022A7C(void);
void sub_8022BC8(unsigned);
void sub_8022BA0(unsigned);

void sub_8023A44(void);
void LinkDuelSetDeckCapacity(int);

//Link Duel Menu?

void LinkDuelMenu (void) {
  PlayMusic(MUSIC_DECK_ADJUSTMENT_MENU);
  InitTrunkData();
  InitDeckData();
  sub_8022A24();
  LinkDuelInitDeckCapacity(gLinkDuelMenuData.unk4);
  sub_8023998();
  while (1) {
    LfsrNextByte();
    if (gLinkDuelMenuData.unk9 == 1) { //ACTION_EXIT
      if (IsDeckFull() != 1) {
        sub_8022B7C(5);
        sub_8022AA0();
        PlayMusic(SFX_FORBIDDEN);
        sub_8023A98();
      }
      else if (IsCostWithinCapacity() != 1) {
        sub_8022B7C(7);
        sub_8022AA0();
        PlayMusic(SFX_FORBIDDEN);
        sub_8023AE4();
      }
      else
        break;
    }
    else if (gLinkDuelMenuData.unk9 == 2) { //ACTION_OPEN_TRUNK
      PlayMusic(SFX_SELECT);
      TrunkMenuMain();
      sub_8022B7C(0);
      sub_8022A24();
      sub_8022A94(0);
      sub_8023998();
    }
    else if (gLinkDuelMenuData.unk9 == 3)
      if (IsPlayerDeckNonempty() != 1) {
        sub_8022B7C(0);
        PlayMusic(SFX_FORBIDDEN);
        sub_80226D8();
      }
      else {
        PlayMusic(SFX_SELECT);
        DeckMenuMain();
        sub_8022B7C(0);
        sub_8022A24();
        sub_8022A94(1);
        sub_8023998();
      }
    else if (gLinkDuelMenuData.unk9 == 4)
      if (IsDeckFull() != 1) {
        sub_8022B7C(5);
        sub_8022AA0();
        PlayMusic(SFX_FORBIDDEN);
        sub_8023A98();
      }
      else if (IsCostWithinCapacity() != 1) {
        sub_8022B7C(7);
        sub_8022AA0();
        PlayMusic(SFX_FORBIDDEN);
        sub_8023AE4();
      }
      else if (GetPlayerDeckCost() > gLinkDuelMenuData.deckCapacity) {
        sub_8022B7C(6);
        sub_8022AA0();
        PlayMusic(SFX_FORBIDDEN);
        sub_8023B30();
      }
      else {
        sub_8023C14();
        LinkDuelMain();
        PlayMusic(MUSIC_DECK_ADJUSTMENT_MENU);
        if (g3000C38.unk34 == 0xFE) {
          sub_8022B7C(8);
          sub_8022AA0();
          PlayMusic(SFX_FORBIDDEN);
          sub_8023B7C();
        }
        else if (g3000C38.unk34) {
          sub_8022B7C(9);
          sub_8022AA0();
          PlayMusic(SFX_FORBIDDEN);
          sub_8023BC8();
        }
        else {
          sub_8022B7C(0);
          InitTrunkData();
          InitDeckData();
          sub_8022A24();
          sub_8022A94(3);
          sub_8023998();
        }
      }
    else
      switch (ProcessInput()) {
        case 0x40:
          sub_8022764();
          break;
        case 0x80:
          sub_8022794();
          break;
        case 0x20:
          sub_80227C4();
          break;
        case 0x10:
          sub_80227F4();
          break;
        case 0x120:     //R and RIGHT
          sub_8022824();
          break;
        case 0x110:
          sub_8022858();
          break;
        case 1:
          sub_802288C();
          break;
        case 2:
          sub_802293C();
          break;
        case 4:
        case 8:
          sub_8022990();
          break;
        default:
          sub_80226D8();
          break;
      }
  }
  SaveGame();
  PlayMusic(SFX_SELECT);
  sub_80238C4();
}

static unsigned short ProcessInput (void) {
  sub_802618C();
  if (gNewButtons & A_BUTTON)
    return 1;
  if (gNewButtons & B_BUTTON)
    return 2;
  if (gNewButtons & SELECT_BUTTON)
    return 4;
  if (gNewButtons & START_BUTTON)
    return 8;
  if (gRepeatedOrNewButtons & DPAD_UP)
    return 0x40;
  if (gRepeatedOrNewButtons & DPAD_DOWN)
    return 0x80;
  if ((gRepeatedOrNewButtons & DPAD_LEFT) && (gPressedButtons & 0x100))
    return 0x120;
  if ((gRepeatedOrNewButtons & DPAD_RIGHT) && (gPressedButtons & 0x100))
    return 0x110;
  if (gRepeatedOrNewButtons & DPAD_LEFT)
    return 0x20;
  if (gRepeatedOrNewButtons & DPAD_RIGHT)
    return 0x10;
  return 0;
}

static void sub_80226D8 (void) {
  switch (gLinkDuelMenuData.unk9) {
    case 0:
      sub_8022ABC();
      sub_80229C0();
      sub_8023A14();
      break;
    case 5:
      sub_8022AE0();
      sub_8023A98();
      break;
    case 6:
      sub_8022AE0();
      sub_8023B30();
      break;
    case 7:
      sub_8022AE0();
      sub_8023AE4();
      break;
    case 8:
      sub_8022AE0();
      sub_8023B7C();
      break;
    case 9:
      sub_8022AE0();
      sub_8023BC8();
      break;
    default:
      WaitForVBlank();
      break;
  }
}

static void sub_8022764 (void) {
  if (gLinkDuelMenuData.unk9 == 0) {
    sub_8022A64();
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(SFX_MOVE_CURSOR);
    sub_8023A14();
  }
  else
    WaitForVBlank();
}

static void sub_8022794 (void) {
  if (gLinkDuelMenuData.unk9 == 0) {
    sub_8022A7C();
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(SFX_MOVE_CURSOR);
    sub_8023A14();
  }
  else
    WaitForVBlank();
}

static void sub_80227C4 (void) {
  if (gLinkDuelMenuData.unk9 == 0) {
    sub_8022BC8(100);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(SFX_MOVE_CURSOR);
    sub_8023A14();
  }
  else
    WaitForVBlank();
}

static void sub_80227F4 (void) {
  if (gLinkDuelMenuData.unk9 == 0) {
    sub_8022BA0(100);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(SFX_MOVE_CURSOR);
    sub_8023A14();
  }
  else
    WaitForVBlank();
}

static void sub_8022824 (void) {
  if (gLinkDuelMenuData.unk9 == 0) {
    sub_8022BC8(1000);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(SFX_MOVE_CURSOR);
    sub_8023A14();
  }
  else
    WaitForVBlank();
}

static void sub_8022858 (void) {
  if (gLinkDuelMenuData.unk9 == 0) {
    sub_8022BA0(1000);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(SFX_MOVE_CURSOR);
    sub_8023A14();
  }
  else
    WaitForVBlank();
}

static void sub_802288C (void) {
  switch (gLinkDuelMenuData.unk9) {
    case 0:
      sub_80228CC();
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      sub_8022B7C(0);
      sub_8022AA0();
      PlayMusic(SFX_CANCEL);
      sub_8023A44();
      break;
    default:
      WaitForVBlank();
  }
}

static void sub_80228CC (void) {
  switch (gLinkDuelMenuData.unkA) {
    case 0:
      sub_8022B7C(2);
      sub_8022ABC();
      sub_8023A14();
      break;
    case 1:
      sub_8022B7C(3);
      sub_8022ABC();
      sub_8023A14();
      break;
    case 2:
      LinkDuelInitDeckCapacity(gLinkDuelMenuData.unk4);
      sub_8022ABC();
      PlayMusic(SFX_SELECT);
      sub_8023A14();
      break;
    case 3:
      sub_8022B7C(4);
      sub_8022ABC();
      sub_8023A14();
      break;
    case 4:
      sub_8022B7C(1);
      sub_8022ABC();
      sub_8023A14();
      break;
    default:
      WaitForVBlank();
  }
}

static void sub_802293C (void) {
  switch (gLinkDuelMenuData.unk9) {
    case 0:
      sub_8022A94(4);
      sub_8022ABC();
      sub_80229C0();
      PlayMusic(SFX_CANCEL);
      sub_8023A14();
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      sub_8022B7C(0);
      sub_8022AA0();
      PlayMusic(SFX_CANCEL);
      sub_8023A44();
      break;
    default:
      WaitForVBlank();
  }
}

static void sub_8022990 (void) {
  if (gLinkDuelMenuData.unk9 == 0) {
    LinkDuelSetDeckCapacity(65000);
    sub_8022ABC();
    PlayMusic(SFX_SELECT);
    sub_8023A14();
  }
  else
    WaitForVBlank();
}

struct Unk8f {
  unsigned char unk0;
  unsigned char unk1;
  unsigned char filler2[2];
  struct {u16 unk0, unk2, unk4;} * unk4;
};

extern unsigned char g80C1852[];
extern struct Unk8f (*gFC4A8C[]);

void sub_80229C0(void) {
  if (gLinkDuelMenuData.unkE == 0) {
    unsigned char temp = g80C1852[gLinkDuelMenuData.unkA];
    gLinkDuelMenuData.unkD++;
    if (gFC4A8C[temp][gLinkDuelMenuData.unkD].unk0 == 0)
      gLinkDuelMenuData.unkD = 0;
  }
  if (gLinkDuelMenuData.unkE == 0) {
    unsigned char temp = g80C1852[gLinkDuelMenuData.unkA];
    gLinkDuelMenuData.unkE = gFC4A8C[temp][gLinkDuelMenuData.unkD].unk0;
  }
  else
    gLinkDuelMenuData.unkE--;
}

unsigned char GetPlayerDeckSize(void);

void sub_8022A24(void) {
  unsigned char temp;

  gLinkDuelMenuData.unk4 = GetPlayerDeckCost();
  gLinkDuelMenuData.unk8 = GetPlayerDeckSize();
  gLinkDuelMenuData.unkA = 0;
  gLinkDuelMenuData.unk9 = 0;
  gLinkDuelMenuData.unkB = 0;
  gLinkDuelMenuData.unkC = 0;
  temp = g80C1852[0];
  gLinkDuelMenuData.unkD = 0;
  gLinkDuelMenuData.unkE = gFC4A8C[temp][0].unk0;
}

extern unsigned char g80C188C[];
extern unsigned char g80C1891[];
extern unsigned char g80C1857[];
extern unsigned char g80C1852[];
extern unsigned char g80C1872[];

void sub_8022A64(void) {
  gLinkDuelMenuData.unkA = g80C188C[gLinkDuelMenuData.unkA];
}

void sub_8022A7C(void) {
  gLinkDuelMenuData.unkA = g80C1891[gLinkDuelMenuData.unkA];
}

void sub_8022A94(unsigned char arg0) {
  gLinkDuelMenuData.unkA = arg0;
}

void sub_8022AA0(void) {
  gLinkDuelMenuData.unkB = 0;
  gLinkDuelMenuData.unkC = 0;
}

unsigned char sub_8022AB0(void) {
  return gLinkDuelMenuData.unkB;
}

void sub_8022ABC(void) {
  if (gLinkDuelMenuData.unkC == 0)
    gLinkDuelMenuData.unkB = g80C1857[gLinkDuelMenuData.unkB];
  sub_8022B04();
}

void sub_8022AE0(void) {
  if (gLinkDuelMenuData.unkC == 0)
    gLinkDuelMenuData.unkB = g80C1872[gLinkDuelMenuData.unkB];
  sub_8022B04();
}

void sub_8022B04(void) {
  if (gLinkDuelMenuData.unkC == 0)
    gLinkDuelMenuData.unkC = 3;
  else
    gLinkDuelMenuData.unkC--;
}

void sub_8022B1C(void) {
  unsigned char temp = g80C1852[gLinkDuelMenuData.unkA];
  gLinkDuelMenuData.unkD = 0;
  gLinkDuelMenuData.unkE = gFC4A8C[temp][0].unk0;
}

void sub_8022B44(void) {
  if (gLinkDuelMenuData.unkE == 0) {
    unsigned char temp = g80C1852[gLinkDuelMenuData.unkA];
    gLinkDuelMenuData.unkE = gFC4A8C[temp][gLinkDuelMenuData.unkD].unk0;
  }
  else
     gLinkDuelMenuData.unkE--;
}

void sub_8022B7C (unsigned char arg0) {
  gLinkDuelMenuData.unk9 = arg0;
}

//unused?
static unsigned char sub_8022B88 (void) {
  return gLinkDuelMenuData.unk9;
}

//unused?
static void sub_8022B94 (void) {
  gLinkDuelMenuData.deckCapacity = 100;
}

//TODO: param name: capacityToAdd?
void sub_8022BA0 (unsigned capacity) {
  if (gLinkDuelMenuData.deckCapacity == 65000)
    gLinkDuelMenuData.deckCapacity = 100;
  else {
    gLinkDuelMenuData.deckCapacity += capacity;
    if (gLinkDuelMenuData.deckCapacity > 65000)
      gLinkDuelMenuData.deckCapacity = 65000;
  }
}

//TODO: param name: capacityToRemove?
void sub_8022BC8 (unsigned capacity) {
  if (gLinkDuelMenuData.deckCapacity == 100)
    gLinkDuelMenuData.deckCapacity = 65000;
  else {
    gLinkDuelMenuData.deckCapacity -= capacity;
    if (gLinkDuelMenuData.deckCapacity < 100)
      gLinkDuelMenuData.deckCapacity = 100;
  }
}

void LinkDuelSetDeckCapacity (int capacity) {
  if (capacity > 65000)
    capacity = 65000;
  else if (capacity < 100)
    capacity = 100;
  gLinkDuelMenuData.deckCapacity = capacity;
}

//TODO: replace numbers with MAX_CAPACITY and MIN_CAPACITY?
void LinkDuelInitDeckCapacity (int deckCost) {
  if (deckCost > 65000)
    return;
  gLinkDuelMenuData.deckCapacity = 100;
  if (deckCost <= 100)
    return;
  do {
    if (gLinkDuelMenuData.deckCapacity == 65000)
      gLinkDuelMenuData.deckCapacity = 100;
    else {
      gLinkDuelMenuData.deckCapacity += 100;
      if (gLinkDuelMenuData.deckCapacity > 65000)
        gLinkDuelMenuData.deckCapacity = 65000;
    }
  } while (deckCost > gLinkDuelMenuData.deckCapacity);
}

extern u32 gDE8C1C[];
extern u16 gDEDE60[];
extern u16 gDEDF50[];
extern u16 gDEE0B8[];
extern u16 gDEE220[];
extern u16 gDEE388[];
extern u16 gDEE478[];

extern u16 gDEE568[][12];
extern u16 gDEE970[][26];
extern u16 gDEEA40[][8];

extern u16 gDEE5C8[][28];
extern u16 gDEE718[][26];
extern u16 gDEE850[][24];


extern u32 gDE9FD8[];
extern u16 gDEEA80[][12];
extern u16 gDEEE88[][26];
extern u16 gDEEF58[][8];
extern u16 gDEEAE0[][28];
extern u16 gDEEC30[][26];
extern u16 gDEED68[][24];


extern u32 gDEB77C[];
extern u16 gDEEF98[][12];
extern u16 gDEFB40[][26];
extern u16 gDEFC10[][8];
extern u16 gDEF798[][28];
extern u16 gDEF8E8[][26];
extern u16 gDEFA20[][24];

extern u32 gDECAAC[];
extern u16 gDEFC50[][12];
extern u16 gDF07F8[][26];
extern u16 gDF08C8[][8];
extern u16 gDF0450[][28];
extern u16 gDF05A0[][26];
extern u16 gDF06D8[][24];

extern u32 gDE7888[];

extern u16 gDF0908[];
extern unsigned char gC18BC[];
extern unsigned char g80C184B[];

// r5 = 0x8000
// sl = 0xF012
// sb = 0xC216

// r4 = 0xD004
// r5 = 0xD9C6
// sl = 0xE802
// r4 = 0xE9C2
// r8 = 0x1C0
/*
void sub_8022C54 (void) {
  u32 i;
  switch (gLanguage) {
    case 1:
      LZ77UnCompWram(gDE8C1C, gBgVram.cbb0 + 0x8000);
      CpuFastFill(gDEDE60[0] & 0xF000, gBgVram.cbb0 + 0xF000, 0x800);
      CpuFastFill(gDEDF50[0] & 0xF000, gBgVram.cbb0 + 0xE800, 0x800);
      CpuFastFill(gDEE0B8[0] & 0xF000, gBgVram.cbb0 + 0xE000, 0x800);
      CpuFastFill(gDEE220[0] & 0xF000, gBgVram.cbb0 + 0xD800, 0x800);
      CpuFastFill(gDEE388[0] & 0xF000, gBgVram.cbb0 + 0xD000, 0x800);
      CpuFastFill(gDEE478[0] & 0xF000, gBgVram.cbb0 + 0xC000, 0x800);
      for (i = 0; i < 4; i++) {
        CpuCopy16(gDEE568[i], gBgVram.cbb0 + 0xF212 + i * 64, 24);
        CpuCopy16(gDEE970[i], gBgVram.cbb0 + 0xD204 + i * 64, 52);
        CpuCopy16(gDEEA40[i], gBgVram.cbb0 + 0xC216 + i * 64, 16);
      }
      for (i = 0; i < 6; i++) {
        CpuCopy16(gDEE5C8[i], gBgVram.cbb0 + 0xE9C2 + i * 64, 56);
        CpuCopy16(gDEE718[i], gBgVram.cbb0 + 0xE1C4 + i * 64, 52);
        CpuCopy16(gDEE850[i], gBgVram.cbb0 + 0xD9C6 + i * 64, 48);
      }
      break;
    case 2:
      LZ77UnCompWram(gDE9FD8, gBgVram.cbb0 + 0x8000);
      CpuFastFill(gDEDE60[0] & 0xF000, gBgVram.cbb0 + 0xF000, 0x800);
      CpuFastFill(gDEDF50[0] & 0xF000, gBgVram.cbb0 + 0xE800, 0x800);
      CpuFastFill(gDEE0B8[0] & 0xF000, gBgVram.cbb0 + 0xE000, 0x800);
      CpuFastFill(gDEE220[0] & 0xF000, gBgVram.cbb0 + 0xD800, 0x800);
      CpuFastFill(gDEE388[0] & 0xF000, gBgVram.cbb0 + 0xD000, 0x800);
      CpuFastFill(gDEE478[0] & 0xF000, gBgVram.cbb0 + 0xC000, 0x800);
      for (i = 0; i < 4; i++) {
        CpuCopy16(gDEEA80[i], gBgVram.cbb0 + 0xF212 + i * 64, 24);
        CpuCopy16(gDEEE88[i], gBgVram.cbb0 + 0xD204 + i * 64, 52);
        CpuCopy16(gDEEF58[i], gBgVram.cbb0 + 0xC216 + i * 64, 16);
      }
      for (i = 0; i < 6; i++) {
        CpuCopy16(gDEEAE0[i], gBgVram.cbb0 + 0xE9C2 + i * 64, 56);
        CpuCopy16(gDEEC30[i], gBgVram.cbb0 + 0xE1C4 + i * 64, 52);
        CpuCopy16(gDEED68[i], gBgVram.cbb0 + 0xD9C6 + i * 64, 48);
      }
      break;
    case 3:
      LZ77UnCompWram(gDEB77C, gBgVram.cbb0 + 0x8000);
      CpuFastFill(gDEDE60[0] & 0xF000, gBgVram.cbb0 + 0xF000, 0x800);
      CpuFastFill(gDEDF50[0] & 0xF000, gBgVram.cbb0 + 0xE800, 0x800);
      CpuFastFill(gDEE0B8[0] & 0xF000, gBgVram.cbb0 + 0xE000, 0x800);
      CpuFastFill(gDEE220[0] & 0xF000, gBgVram.cbb0 + 0xD800, 0x800);
      CpuFastFill(gDEE388[0] & 0xF000, gBgVram.cbb0 + 0xD000, 0x800);
      CpuFastFill(gDEE478[0] & 0xF000, gBgVram.cbb0 + 0xC000, 0x800);
      for (i = 0; i < 4; i++) {
        CpuCopy16(gDEEF98[i], gBgVram.cbb0 + 0xF212 + i * 64, 24);
        CpuCopy16(gDEFB40[i], gBgVram.cbb0 + 0xD204 + i * 64, 52);
        CpuCopy16(gDEFC10[i], gBgVram.cbb0 + 0xC216 + i * 64, 16);
      }
      for (i = 0; i < 6; i++) {
        CpuCopy16(gDEF798[i], gBgVram.cbb0 + 0xE9C2 + i * 64, 56);
        CpuCopy16(gDEF8E8[i], gBgVram.cbb0 + 0xE1C4 + i * 64, 52);
        CpuCopy16(gDEFA20[i], gBgVram.cbb0 + 0xD9C6 + i * 64, 48);
      }
      break;
    case 4:
      LZ77UnCompWram(gDECAAC, gBgVram.cbb0 + 0x8000);
      CpuFastFill(gDEDE60[0] & 0xF000, gBgVram.cbb0 + 0xF000, 0x800);
      CpuFastFill(gDEDF50[0] & 0xF000, gBgVram.cbb0 + 0xE800, 0x800);
      CpuFastFill(gDEE0B8[0] & 0xF000, gBgVram.cbb0 + 0xE000, 0x800);
      CpuFastFill(gDEE220[0] & 0xF000, gBgVram.cbb0 + 0xD800, 0x800);
      CpuFastFill(gDEE388[0] & 0xF000, gBgVram.cbb0 + 0xD000, 0x800);
      CpuFastFill(gDEE478[0] & 0xF000, gBgVram.cbb0 + 0xC000, 0x800);
      for (i = 0; i < 4; i++) {
        CpuCopy16(gDEFC50[i], gBgVram.cbb0 + 0xF212 + i * 64, 24);
        CpuCopy16(gDF07F8[i], gBgVram.cbb0 + 0xD204 + i * 64, 52);
        CpuCopy16(gDF08C8[i], gBgVram.cbb0 + 0xC216 + i * 64, 16);
      }
      for (i = 0; i < 6; i++) {
        CpuCopy16(gDF0450[i], gBgVram.cbb0 + 0xE9C2 + i * 64, 56);
        CpuCopy16(gDF05A0[i], gBgVram.cbb0 + 0xE1C4 + i * 64, 52);
        CpuCopy16(gDF06D8[i], gBgVram.cbb0 + 0xD9C6 + i * 64, 48);
      }
      break;
    default:
      LZ77UnCompWram(gDE7888, gBgVram.cbb0 + 0x8000);
      CpuFastFill(gDEDE60[0], gBgVram.cbb0 + 0xF000, 0x800);
      CpuFastFill(gDEDF50[0], gBgVram.cbb0 + 0xE800, 0x800);
      CpuFastFill(gDEE0B8[0], gBgVram.cbb0 + 0xE000, 0x800);
      CpuFastFill(gDEE220[0], gBgVram.cbb0 + 0xD800, 0x800);
      CpuFastFill(gDEE388[0], gBgVram.cbb0 + 0xD000, 0x800);
      CpuFastFill(gDEE478[0], gBgVram.cbb0 + 0xC000, 0x800);
      for (i = 0; i < 4; i++) {
        CpuCopy16(gDEDE60 + i * 30, gBgVram.cbb0 + 0xF200 + i * 64, 60);
        CpuCopy16(gDEE388 + i * 30, gBgVram.cbb0 + 0xD200 + i * 64, 60);
        CpuCopy16(gDEE478 + i * 30, gBgVram.cbb0 + 0xC200 + i * 64, 60);
      }
      for (i = 0; i < 6; i++) {
        CpuCopy16(gDEDF50 + i * 30, gBgVram.cbb0 + 0xE9C0 + i * 64, 60);
        CpuCopy16(gDEE0B8 + i * 30, gBgVram.cbb0 + 0xE800 + i * 64, 60);
        CpuCopy16(gDEE220 + i * 30, gBgVram.cbb0 + 0xD9C0 + i * 64, 60);
      }
      break;
  }
  CpuCopy16(gDF0908, gPaletteBuffer + 80, 32);
}*/

// sl = 0xF000
// r8 = 0xD000

NAKED
void sub_8022C54 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x78\n\
	ldr r0, _08022C74\n\
	ldrb r0, [r0]\n\
	cmp r0, #2\n\
	bne _08022C6A\n\
	b _08022E38\n\
_08022C6A:\n\
	cmp r0, #2\n\
	bgt _08022C78\n\
	cmp r0, #1\n\
	beq _08022C86\n\
	b _08023348\n\
	.align 2, 0\n\
_08022C74: .4byte gLanguage\n\
_08022C78:\n\
	cmp r0, #3\n\
	bne _08022C7E\n\
	b _08022FE8\n\
_08022C7E:\n\
	cmp r0, #4\n\
	bne _08022C84\n\
	b _08023198\n\
_08022C84:\n\
	b _08023348\n\
_08022C86:\n\
	ldr r0, _08022DDC\n\
	ldr r5, _08022DE0\n\
	adds r1, r5, #0\n\
	bl LZ77UnCompWram\n\
	ldr r0, _08022DE4\n\
	ldrh r1, [r0]\n\
	movs r4, #0xf0\n\
	lsls r4, r4, #8\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp]\n\
	movs r0, #0xe0\n\
	lsls r0, r0, #7\n\
	adds r1, r5, r0\n\
	ldr r6, _08022DE8\n\
	mov r0, sp\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022DEC\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #4]\n\
	add r0, sp, #4\n\
	movs r2, #0xd0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022DF0\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #8]\n\
	add r0, sp, #8\n\
	movs r2, #0xc0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022DF4\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0xc]\n\
	add r0, sp, #0xc\n\
	movs r2, #0xb0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022DF8\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x10]\n\
	add r0, sp, #0x10\n\
	movs r2, #0xa0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022DFC\n\
	ldrh r0, [r0]\n\
	ands r4, r0\n\
	str r4, [sp, #0x14]\n\
	add r0, sp, #0x14\n\
	movs r2, #0x80\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	movs r7, #0\n\
	ldr r0, _08022E00\n\
	adds r0, r0, r5\n\
	mov sl, r0\n\
	ldr r1, _08022E04\n\
	adds r1, r1, r5\n\
	mov sb, r1\n\
	ldr r2, _08022E08\n\
	adds r2, r2, r5\n\
	mov r8, r2\n\
	movs r5, #0x80\n\
	lsls r5, r5, #2\n\
	movs r6, #0\n\
_08022D3E:\n\
	ldr r0, _08022E0C\n\
	adds r0, r6, r0\n\
	mov r1, r8\n\
	movs r2, #0xc\n\
	bl CpuSet\n\
	movs r0, #0x34\n\
	muls r0, r7, r0\n\
	ldr r1, _08022E10\n\
	adds r0, r0, r1\n\
	ldr r4, _08022E14\n\
	add r4, sl\n\
	adds r1, r5, r4\n\
	movs r2, #0x1a\n\
	bl CpuSet\n\
	lsls r0, r7, #4\n\
	ldr r1, _08022E18\n\
	adds r0, r0, r1\n\
	mov r1, sb\n\
	movs r2, #8\n\
	bl CpuSet\n\
	movs r0, #0x40\n\
	add sb, r0\n\
	add r8, r0\n\
	adds r5, #0x40\n\
	adds r6, #0x18\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _08022D3E\n\
	movs r7, #0\n\
	ldr r1, _08022E1C\n\
	adds r1, r1, r4\n\
	mov sl, r1\n\
	ldr r2, _08022E20\n\
	adds r5, r4, r2\n\
	movs r0, #0\n\
	mov sb, r0\n\
	ldr r1, _08022E24\n\
	adds r4, r4, r1\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #1\n\
	mov r8, r2\n\
	movs r6, #0\n\
_08022D98:\n\
	ldr r0, _08022E28\n\
	adds r0, r6, r0\n\
	adds r1, r4, #0\n\
	movs r2, #0x1c\n\
	bl CpuSet\n\
	movs r0, #0x34\n\
	muls r0, r7, r0\n\
	ldr r1, _08022E2C\n\
	adds r0, r0, r1\n\
	ldr r1, _08022E30\n\
	add r1, sl\n\
	add r1, r8\n\
	movs r2, #0x1a\n\
	bl CpuSet\n\
	ldr r0, _08022E34\n\
	add r0, sb\n\
	adds r1, r5, #0\n\
	movs r2, #0x18\n\
	bl CpuSet\n\
	adds r5, #0x40\n\
	movs r0, #0x30\n\
	add sb, r0\n\
	adds r4, #0x40\n\
	movs r1, #0x40\n\
	add r8, r1\n\
	adds r6, #0x38\n\
	adds r7, #1\n\
	cmp r7, #5\n\
	bls _08022D98\n\
	b _08023478\n\
	.align 2, 0\n\
_08022DDC: .4byte gDE8C1C\n\
_08022DE0: .4byte 0x02008400\n\
_08022DE4: .4byte gDEDE60\n\
_08022DE8: .4byte 0x01000200\n\
_08022DEC: .4byte gDEDF50\n\
_08022DF0: .4byte gDEE0B8\n\
_08022DF4: .4byte gDEE220\n\
_08022DF8: .4byte gDEE388\n\
_08022DFC: .4byte gDEE478\n\
_08022E00: .4byte 0x00007012\n\
_08022E04: .4byte 0x00004216\n\
_08022E08: .4byte 0x00007212\n\
_08022E0C: .4byte gDEE568\n\
_08022E10: .4byte gDEE970\n\
_08022E14: .4byte 0xFFFFDFF2\n\
_08022E18: .4byte gDEEA40\n\
_08022E1C: .4byte 0x000017FE\n\
_08022E20: .4byte 0x000009C2\n\
_08022E24: .4byte 0x000019BE\n\
_08022E28: .4byte gDEE5C8\n\
_08022E2C: .4byte gDEE718\n\
_08022E30: .4byte 0xFFFFF802\n\
_08022E34: .4byte gDEE850\n\
_08022E38:\n\
	ldr r0, _08022F8C\n\
	ldr r5, _08022F90\n\
	adds r1, r5, #0\n\
	bl LZ77UnCompWram\n\
	ldr r0, _08022F94\n\
	ldrh r1, [r0]\n\
	movs r4, #0xf0\n\
	lsls r4, r4, #8\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x18]\n\
	add r0, sp, #0x18\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	ldr r6, _08022F98\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022F9C\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x1c]\n\
	add r0, sp, #0x1c\n\
	movs r2, #0xd0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022FA0\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x20]\n\
	add r0, sp, #0x20\n\
	movs r2, #0xc0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022FA4\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x24]\n\
	add r0, sp, #0x24\n\
	movs r2, #0xb0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022FA8\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x28]\n\
	add r0, sp, #0x28\n\
	movs r2, #0xa0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08022FAC\n\
	ldrh r0, [r0]\n\
	ands r4, r0\n\
	str r4, [sp, #0x2c]\n\
	add r0, sp, #0x2c\n\
	movs r2, #0x80\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	movs r7, #0\n\
	ldr r0, _08022FB0\n\
	adds r0, r0, r5\n\
	mov sl, r0\n\
	ldr r1, _08022FB4\n\
	adds r1, r1, r5\n\
	mov sb, r1\n\
	ldr r2, _08022FB8\n\
	adds r2, r2, r5\n\
	mov r8, r2\n\
	movs r5, #0x80\n\
	lsls r5, r5, #2\n\
	movs r6, #0\n\
_08022EF0:\n\
	ldr r0, _08022FBC\n\
	adds r0, r6, r0\n\
	mov r1, r8\n\
	movs r2, #0xc\n\
	bl CpuSet\n\
	movs r0, #0x34\n\
	muls r0, r7, r0\n\
	ldr r1, _08022FC0\n\
	adds r0, r0, r1\n\
	ldr r4, _08022FC4\n\
	add r4, sl\n\
	adds r1, r5, r4\n\
	movs r2, #0x1a\n\
	bl CpuSet\n\
	lsls r0, r7, #4\n\
	ldr r1, _08022FC8\n\
	adds r0, r0, r1\n\
	mov r1, sb\n\
	movs r2, #8\n\
	bl CpuSet\n\
	movs r0, #0x40\n\
	add sb, r0\n\
	add r8, r0\n\
	adds r5, #0x40\n\
	adds r6, #0x18\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _08022EF0\n\
	movs r7, #0\n\
	ldr r1, _08022FCC\n\
	adds r1, r1, r4\n\
	mov sl, r1\n\
	ldr r2, _08022FD0\n\
	adds r5, r4, r2\n\
	movs r0, #0\n\
	mov sb, r0\n\
	ldr r1, _08022FD4\n\
	adds r4, r4, r1\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #1\n\
	mov r8, r2\n\
	movs r6, #0\n\
_08022F4A:\n\
	ldr r0, _08022FD8\n\
	adds r0, r6, r0\n\
	adds r1, r4, #0\n\
	movs r2, #0x1c\n\
	bl CpuSet\n\
	movs r0, #0x34\n\
	muls r0, r7, r0\n\
	ldr r1, _08022FDC\n\
	adds r0, r0, r1\n\
	ldr r1, _08022FE0\n\
	add r1, sl\n\
	add r1, r8\n\
	movs r2, #0x1a\n\
	bl CpuSet\n\
	ldr r0, _08022FE4\n\
	add r0, sb\n\
	adds r1, r5, #0\n\
	movs r2, #0x18\n\
	bl CpuSet\n\
	adds r5, #0x40\n\
	movs r0, #0x30\n\
	add sb, r0\n\
	adds r4, #0x40\n\
	movs r1, #0x40\n\
	add r8, r1\n\
	adds r6, #0x38\n\
	adds r7, #1\n\
	cmp r7, #5\n\
	bls _08022F4A\n\
	b _08023478\n\
	.align 2, 0\n\
_08022F8C: .4byte gDE9FD8\n\
_08022F90: .4byte 0x02008400\n\
_08022F94: .4byte gDEDE60\n\
_08022F98: .4byte 0x01000200\n\
_08022F9C: .4byte gDEDF50\n\
_08022FA0: .4byte gDEE0B8\n\
_08022FA4: .4byte gDEE220\n\
_08022FA8: .4byte gDEE388\n\
_08022FAC: .4byte gDEE478\n\
_08022FB0: .4byte 0x00007012\n\
_08022FB4: .4byte 0x00004216\n\
_08022FB8: .4byte 0x00007212\n\
_08022FBC: .4byte gDEEA80\n\
_08022FC0: .4byte gDEEE88\n\
_08022FC4: .4byte 0xFFFFDFF2\n\
_08022FC8: .4byte gDEEF58\n\
_08022FCC: .4byte 0x000017FE\n\
_08022FD0: .4byte 0x000009C2\n\
_08022FD4: .4byte 0x000019BE\n\
_08022FD8: .4byte gDEEAE0\n\
_08022FDC: .4byte gDEEC30\n\
_08022FE0: .4byte 0xFFFFF802\n\
_08022FE4: .4byte gDEED68\n\
_08022FE8:\n\
	ldr r0, _0802313C\n\
	ldr r5, _08023140\n\
	adds r1, r5, #0\n\
	bl LZ77UnCompWram\n\
	ldr r0, _08023144\n\
	ldrh r1, [r0]\n\
	movs r4, #0xf0\n\
	lsls r4, r4, #8\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x30]\n\
	add r0, sp, #0x30\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	ldr r6, _08023148\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _0802314C\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x34]\n\
	add r0, sp, #0x34\n\
	movs r2, #0xd0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08023150\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x38]\n\
	add r0, sp, #0x38\n\
	movs r2, #0xc0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08023154\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x3c]\n\
	add r0, sp, #0x3c\n\
	movs r2, #0xb0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08023158\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x40]\n\
	add r0, sp, #0x40\n\
	movs r2, #0xa0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _0802315C\n\
	ldrh r0, [r0]\n\
	ands r4, r0\n\
	str r4, [sp, #0x44]\n\
	add r0, sp, #0x44\n\
	movs r2, #0x80\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	movs r7, #0\n\
	ldr r0, _08023160\n\
	adds r0, r0, r5\n\
	mov sl, r0\n\
	ldr r1, _08023164\n\
	adds r1, r1, r5\n\
	mov sb, r1\n\
	ldr r2, _08023168\n\
	adds r2, r2, r5\n\
	mov r8, r2\n\
	movs r5, #0x80\n\
	lsls r5, r5, #2\n\
	movs r6, #0\n\
_080230A0:\n\
	ldr r0, _0802316C\n\
	adds r0, r6, r0\n\
	mov r1, r8\n\
	movs r2, #0xc\n\
	bl CpuSet\n\
	movs r0, #0x34\n\
	muls r0, r7, r0\n\
	ldr r1, _08023170\n\
	adds r0, r0, r1\n\
	ldr r4, _08023174\n\
	add r4, sl\n\
	adds r1, r5, r4\n\
	movs r2, #0x1a\n\
	bl CpuSet\n\
	lsls r0, r7, #4\n\
	ldr r1, _08023178\n\
	adds r0, r0, r1\n\
	mov r1, sb\n\
	movs r2, #8\n\
	bl CpuSet\n\
	movs r0, #0x40\n\
	add sb, r0\n\
	add r8, r0\n\
	adds r5, #0x40\n\
	adds r6, #0x18\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _080230A0\n\
	movs r7, #0\n\
	ldr r1, _0802317C\n\
	adds r1, r1, r4\n\
	mov sl, r1\n\
	ldr r2, _08023180\n\
	adds r5, r4, r2\n\
	movs r0, #0\n\
	mov sb, r0\n\
	ldr r1, _08023184\n\
	adds r4, r4, r1\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #1\n\
	mov r8, r2\n\
	movs r6, #0\n\
_080230FA:\n\
	ldr r0, _08023188\n\
	adds r0, r6, r0\n\
	adds r1, r4, #0\n\
	movs r2, #0x1c\n\
	bl CpuSet\n\
	movs r0, #0x34\n\
	muls r0, r7, r0\n\
	ldr r1, _0802318C\n\
	adds r0, r0, r1\n\
	ldr r1, _08023190\n\
	add r1, sl\n\
	add r1, r8\n\
	movs r2, #0x1a\n\
	bl CpuSet\n\
	ldr r0, _08023194\n\
	add r0, sb\n\
	adds r1, r5, #0\n\
	movs r2, #0x18\n\
	bl CpuSet\n\
	adds r5, #0x40\n\
	movs r0, #0x30\n\
	add sb, r0\n\
	adds r4, #0x40\n\
	movs r1, #0x40\n\
	add r8, r1\n\
	adds r6, #0x38\n\
	adds r7, #1\n\
	cmp r7, #5\n\
	bls _080230FA\n\
	b _08023478\n\
	.align 2, 0\n\
_0802313C: .4byte gDEB77C\n\
_08023140: .4byte 0x02008400\n\
_08023144: .4byte gDEDE60\n\
_08023148: .4byte 0x01000200\n\
_0802314C: .4byte gDEDF50\n\
_08023150: .4byte gDEE0B8\n\
_08023154: .4byte gDEE220\n\
_08023158: .4byte gDEE388\n\
_0802315C: .4byte gDEE478\n\
_08023160: .4byte 0x00007012\n\
_08023164: .4byte 0x00004216\n\
_08023168: .4byte 0x00007212\n\
_0802316C: .4byte gDEEF98\n\
_08023170: .4byte gDEFB40\n\
_08023174: .4byte 0xFFFFDFF2\n\
_08023178: .4byte gDEFC10\n\
_0802317C: .4byte 0x000017FE\n\
_08023180: .4byte 0x000009C2\n\
_08023184: .4byte 0x000019BE\n\
_08023188: .4byte gDEF798\n\
_0802318C: .4byte gDEF8E8\n\
_08023190: .4byte 0xFFFFF802\n\
_08023194: .4byte gDEFA20\n\
_08023198:\n\
	ldr r0, _080232EC\n\
	ldr r5, _080232F0\n\
	adds r1, r5, #0\n\
	bl LZ77UnCompWram\n\
	ldr r0, _080232F4\n\
	ldrh r1, [r0]\n\
	movs r4, #0xf0\n\
	lsls r4, r4, #8\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x48]\n\
	add r0, sp, #0x48\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	ldr r6, _080232F8\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _080232FC\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x4c]\n\
	add r0, sp, #0x4c\n\
	movs r2, #0xd0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08023300\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x50]\n\
	add r0, sp, #0x50\n\
	movs r2, #0xc0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08023304\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x54]\n\
	add r0, sp, #0x54\n\
	movs r2, #0xb0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _08023308\n\
	ldrh r1, [r0]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	str r0, [sp, #0x58]\n\
	add r0, sp, #0x58\n\
	movs r2, #0xa0\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	ldr r0, _0802330C\n\
	ldrh r0, [r0]\n\
	ands r4, r0\n\
	str r4, [sp, #0x5c]\n\
	add r0, sp, #0x5c\n\
	movs r2, #0x80\n\
	lsls r2, r2, #7\n\
	adds r1, r5, r2\n\
	adds r2, r6, #0\n\
	bl CpuFastSet\n\
	movs r7, #0\n\
	ldr r0, _08023310\n\
	adds r0, r0, r5\n\
	mov sl, r0\n\
	ldr r1, _08023314\n\
	adds r1, r1, r5\n\
	mov sb, r1\n\
	ldr r2, _08023318\n\
	adds r2, r2, r5\n\
	mov r8, r2\n\
	movs r5, #0x80\n\
	lsls r5, r5, #2\n\
	movs r6, #0\n\
_08023250:\n\
	ldr r0, _0802331C\n\
	adds r0, r6, r0\n\
	mov r1, r8\n\
	movs r2, #0xc\n\
	bl CpuSet\n\
	movs r0, #0x34\n\
	muls r0, r7, r0\n\
	ldr r1, _08023320\n\
	adds r0, r0, r1\n\
	ldr r4, _08023324\n\
	add r4, sl\n\
	adds r1, r5, r4\n\
	movs r2, #0x1a\n\
	bl CpuSet\n\
	lsls r0, r7, #4\n\
	ldr r1, _08023328\n\
	adds r0, r0, r1\n\
	mov r1, sb\n\
	movs r2, #8\n\
	bl CpuSet\n\
	movs r0, #0x40\n\
	add sb, r0\n\
	add r8, r0\n\
	adds r5, #0x40\n\
	adds r6, #0x18\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _08023250\n\
	movs r7, #0\n\
	ldr r1, _0802332C\n\
	adds r1, r1, r4\n\
	mov sl, r1\n\
	ldr r2, _08023330\n\
	adds r5, r4, r2\n\
	movs r0, #0\n\
	mov sb, r0\n\
	ldr r1, _08023334\n\
	adds r4, r4, r1\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #1\n\
	mov r8, r2\n\
	movs r6, #0\n\
_080232AA:\n\
	ldr r0, _08023338\n\
	adds r0, r6, r0\n\
	adds r1, r4, #0\n\
	movs r2, #0x1c\n\
	bl CpuSet\n\
	movs r0, #0x34\n\
	muls r0, r7, r0\n\
	ldr r1, _0802333C\n\
	adds r0, r0, r1\n\
	ldr r1, _08023340\n\
	add r1, sl\n\
	add r1, r8\n\
	movs r2, #0x1a\n\
	bl CpuSet\n\
	ldr r0, _08023344\n\
	add r0, sb\n\
	adds r1, r5, #0\n\
	movs r2, #0x18\n\
	bl CpuSet\n\
	adds r5, #0x40\n\
	movs r0, #0x30\n\
	add sb, r0\n\
	adds r4, #0x40\n\
	movs r1, #0x40\n\
	add r8, r1\n\
	adds r6, #0x38\n\
	adds r7, #1\n\
	cmp r7, #5\n\
	bls _080232AA\n\
	b _08023478\n\
	.align 2, 0\n\
_080232EC: .4byte gDECAAC\n\
_080232F0: .4byte 0x02008400\n\
_080232F4: .4byte gDEDE60\n\
_080232F8: .4byte 0x01000200\n\
_080232FC: .4byte gDEDF50\n\
_08023300: .4byte gDEE0B8\n\
_08023304: .4byte gDEE220\n\
_08023308: .4byte gDEE388\n\
_0802330C: .4byte gDEE478\n\
_08023310: .4byte 0x00007012\n\
_08023314: .4byte 0x00004216\n\
_08023318: .4byte 0x00007212\n\
_0802331C: .4byte gDEFC50\n\
_08023320: .4byte gDF07F8\n\
_08023324: .4byte 0xFFFFDFF2\n\
_08023328: .4byte gDF08C8\n\
_0802332C: .4byte 0x000017FE\n\
_08023330: .4byte 0x000009C2\n\
_08023334: .4byte 0x000019BE\n\
_08023338: .4byte gDF0450\n\
_0802333C: .4byte gDF05A0\n\
_08023340: .4byte 0xFFFFF802\n\
_08023344: .4byte gDF06D8\n\
_08023348:\n\
	ldr r0, _08023494\n\
	ldr r4, _08023498\n\
	adds r1, r4, #0\n\
	bl LZ77UnCompWram\n\
	ldr r0, _0802349C\n\
	ldrh r0, [r0]\n\
	str r0, [sp, #0x60]\n\
	add r0, sp, #0x60\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #7\n\
	adds r6, r4, r2\n\
	ldr r5, _080234A0\n\
	adds r1, r6, #0\n\
	adds r2, r5, #0\n\
	bl CpuFastSet\n\
	ldr r0, _080234A4\n\
	ldrh r0, [r0]\n\
	str r0, [sp, #0x64]\n\
	add r0, sp, #0x64\n\
	movs r2, #0xd0\n\
	lsls r2, r2, #7\n\
	adds r1, r4, r2\n\
	adds r2, r5, #0\n\
	bl CpuFastSet\n\
	ldr r0, _080234A8\n\
	ldrh r0, [r0]\n\
	str r0, [sp, #0x68]\n\
	add r0, sp, #0x68\n\
	movs r2, #0xc0\n\
	lsls r2, r2, #7\n\
	adds r1, r4, r2\n\
	adds r2, r5, #0\n\
	bl CpuFastSet\n\
	ldr r0, _080234AC\n\
	ldrh r0, [r0]\n\
	str r0, [sp, #0x6c]\n\
	add r0, sp, #0x6c\n\
	movs r2, #0xb0\n\
	lsls r2, r2, #7\n\
	adds r1, r4, r2\n\
	adds r2, r5, #0\n\
	bl CpuFastSet\n\
	ldr r0, _080234B0\n\
	ldrh r0, [r0]\n\
	str r0, [sp, #0x70]\n\
	add r0, sp, #0x70\n\
	movs r2, #0xa0\n\
	lsls r2, r2, #7\n\
	adds r1, r4, r2\n\
	adds r2, r5, #0\n\
	bl CpuFastSet\n\
	ldr r0, _080234B4\n\
	ldrh r0, [r0]\n\
	str r0, [sp, #0x74]\n\
	add r0, sp, #0x74\n\
	movs r2, #0x80\n\
	lsls r2, r2, #7\n\
	adds r1, r4, r2\n\
	adds r2, r5, #0\n\
	bl CpuFastSet\n\
	movs r7, #0\n\
	mov sl, r6\n\
	movs r0, #0x84\n\
	lsls r0, r0, #7\n\
	adds r6, r4, r0\n\
	movs r1, #0xe4\n\
	lsls r1, r1, #7\n\
	adds r4, r4, r1\n\
	movs r2, #0x80\n\
	lsls r2, r2, #2\n\
	mov sb, r2\n\
	movs r5, #0\n\
_080233E6:\n\
	ldr r0, _0802349C\n\
	adds r0, r5, r0\n\
	adds r1, r4, #0\n\
	movs r2, #0x1e\n\
	bl CpuSet\n\
	ldr r0, _080234B0\n\
	adds r0, r5, r0\n\
	ldr r1, _080234B8\n\
	add r1, sl\n\
	mov r8, r1\n\
	mov r1, sb\n\
	add r1, r8\n\
	movs r2, #0x1e\n\
	bl CpuSet\n\
	ldr r0, _080234B4\n\
	adds r0, r5, r0\n\
	adds r1, r6, #0\n\
	movs r2, #0x1e\n\
	bl CpuSet\n\
	adds r6, #0x40\n\
	adds r4, #0x40\n\
	movs r2, #0x40\n\
	add sb, r2\n\
	adds r5, #0x3c\n\
	adds r7, #1\n\
	cmp r7, #3\n\
	bls _080233E6\n\
	movs r7, #0\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #5\n\
	add r0, r8\n\
	mov sb, r0\n\
	movs r6, #0x9c\n\
	lsls r6, r6, #4\n\
	add r6, r8\n\
	movs r5, #0xce\n\
	lsls r5, r5, #5\n\
	add r5, r8\n\
	movs r1, #0xe0\n\
	lsls r1, r1, #1\n\
	mov r8, r1\n\
	movs r4, #0\n\
_08023440:\n\
	ldr r0, _080234A4\n\
	adds r0, r4, r0\n\
	adds r1, r5, #0\n\
	movs r2, #0x1e\n\
	bl CpuSet\n\
	ldr r0, _080234A8\n\
	adds r0, r4, r0\n\
	ldr r1, _080234BC\n\
	add r1, sb\n\
	add r1, r8\n\
	movs r2, #0x1e\n\
	bl CpuSet\n\
	ldr r0, _080234AC\n\
	adds r0, r4, r0\n\
	adds r1, r6, #0\n\
	movs r2, #0x1e\n\
	bl CpuSet\n\
	adds r6, #0x40\n\
	adds r5, #0x40\n\
	movs r2, #0x40\n\
	add r8, r2\n\
	adds r4, #0x3c\n\
	adds r7, #1\n\
	cmp r7, #5\n\
	bls _08023440\n\
_08023478:\n\
	ldr r0, _080234C0\n\
	ldr r1, _080234C4\n\
	movs r2, #0x10\n\
	bl CpuSet\n\
	add sp, #0x78\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08023494: .4byte gDE7888\n\
_08023498: .4byte 0x02008400\n\
_0802349C: .4byte gDEDE60\n\
_080234A0: .4byte 0x01000200\n\
_080234A4: .4byte gDEDF50\n\
_080234A8: .4byte gDEE0B8\n\
_080234AC: .4byte gDEE220\n\
_080234B0: .4byte gDEE388\n\
_080234B4: .4byte gDEE478\n\
_080234B8: .4byte 0xFFFFE000\n\
_080234BC: .4byte 0xFFFFF800\n\
_080234C0: .4byte gDF0908\n\
_080234C4: .4byte 0x020000A0");
}

void sub_80234C8 (void) {
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x6000, gC18BC, 0x1801);
  CpuFill16(0, gBgVram.cbb0 + 0xC800, 0x800);
  gPaletteBuffer[0xE0] = 0;
  gPaletteBuffer[0xE1] = 0x7FFF;
  gPaletteBuffer[0xE2] = 0;
  gPaletteBuffer[0xF0] = 0;
  gPaletteBuffer[0xF1] = 0x1F;
  gPaletteBuffer[0xF2] = 0;
}

/*
//sl = gFC4A8C
//r7 = g80C184B[i]

struct OamTemp {
  unsigned long unk0, unk4;
} gOamBufferr[128];
void sub_8023544 (void) {
  unsigned i, j;
  for (i = 0; i < 7; i++) {
    if (i == gLinkDuelMenuData.unkA) {
      for (j = 0; j < gFC4A8C[g80C184B[i]][0].unk1; j++) {

      }

    }
    else {

    }
  }
}

void sub_8023EB8 (struct Unk8f* arg0, unsigned long* arg1) {
  unsigned i;
  for (i = 0; i < arg0->unk1; i++) {
    *arg1++ = 0x200;
    *arg1++ = 0x1000000;
  }
}

void sub_8023EDC (void) {
  unsigned i;
  unsigned long* ptr = (unsigned long*)gOamBuffer;
  for (i = 0; i < 128; i++) {
    *ptr++ = 0x200;
    *ptr++ = 0x1000000;
  }
}

void sub_8023EF8 (unsigned char arg0) {
  unsigned i;
  for (i = 0; i < gFC4A8C[arg0].unk1; i++) {
    gOamBuffer[2 * 2 + 
  }
}
*/
