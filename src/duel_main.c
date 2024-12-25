#include "global.h"

//TODO: rename file to duel_main.c

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
static void sub_8021E0C (void);
static void sub_8021ED8 (void);
static void sub_8021FF8 (void);
static void sub_8022040 (void);
static void sub_8022068 (void);
static void sub_8022214 (void);
static void sub_8022234 (void);
static void sub_80222EC (void);
static void sub_8022318 (void);
static void sub_8022340 (void);



extern struct Duelist* gUnk8E00B30[];
extern struct TurnVoice gTurnVoices[];
extern u32 gOamBuffer[];
extern unsigned char g80C1824[];
void sub_8041104(void);
u32 AdjustBackgroundBeforeTurnStart(unsigned char);
void sub_8057808(void);
void sub_804078C(void);
void sub_8008220(void);
void sub_8040FDC(void);

void sub_8040524(unsigned char);
void sub_804004C(unsigned char);
void WinConditionExodia();    //implicit declaration shenanigans
void sub_802703C(void);
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
void sub_80081DC(void (*)(void));
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
    sub_8041104(); //UpdateDuelGraphics/UpdateGraphics?
    if (turn == DUEL_PLAYER)
      AdjustBackgroundBeforeTurnStart(gDuelCursor.currentY);
    else
      AdjustBackgroundBeforeTurnStart(1);
    sub_8057808();
    sub_804078C();
    sub_8008220();
    sub_8040FDC();
    ResetDuelTextData(&duelText);
    if (turn == DUEL_PLAYER) {
      duelText.textId = 0;
      sub_80219E4(&duelText);
    }
    else
      OpponentTurnTextAndVoice();
    sub_8040524(TURN_PLAYER);
    ResetNumTributes();
    sub_804004C(turn);
    if (NumEmptyZonesInRow(gZones[4]) > 0) {
      DrawCard(turn);
      if (IsDuelOver() == TRUE)
        break;
      PlayMusic(59);
    }
    sub_8041104();
    WinConditionExodia(turn);
    if (IsDuelOver() == TRUE)
      break;
    sub_802549C();
    sub_802703C();
    if (turn == DUEL_PLAYER)
      PlayerTurnMain();
    else
      AI_Main();
    if (IsDuelOver() == TRUE)
      break;
    ReturnMonstersToOwner();
    FlipAtkPosCardsFaceUp(2);
    sub_80254F8();
    SwitchTurn();
    if (gNotSure[TURN_PLAYER]->unkTwo)
      gNotSure[TURN_PLAYER]->unkTwo = 0;
    if (gNotSure[TURN_PLAYER]->sorlTurns)
      DecrementSorlTurns(TURN_PLAYER);
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
  gDuelData.unk2B = 2;
  gDuelData.unk2A = 1;
  gDuelData.unkC = gUnk8E00B30[gDuelData.opponent]->unk24;
  gDuelData.unkE = gUnk8E00B30[gDuelData.opponent]->unk26;
  gDuelData.music = gUnk8E00B30[gDuelData.opponent]->unk28;
  ClearDuelDecks();
  sub_8043E14(0, 0);
  sub_8043E14(1, gDuelData.opponent);
  for (i = 0; i < 2; i++)
    ShuffleDuelDeck(i);
  if (!sub_8056258(0, 1))
    gWhoseTurn = 0;
  else
    gWhoseTurn = 1;
  InitBoard();
  InitDuelLifePoints();
  sub_80254DC();
  gHideEffectText = 0;
  sub_8041090();
  PlayMusic(gDuelData.unkC);
}

//FadeToBlackAfterDuel
static void FadeToBlack (void) {
  u16 i, j;
  struct PlttData* pltt;
  for (i = 0; i < 32; i++) {
    for (j = 0; j < 512; j++) {
      pltt = (struct PlttData*)&g02000000.bg[j];
      if (pltt->r) pltt->r--;
      if (pltt->g) pltt->g--;
      if (pltt->b) pltt->b--;
    }
    sub_80081DC(LoadPalettes);
    sub_8008220();
  }
}

void sub_80219E4 (struct DuelText* arg0) {
  if (arg0->textId != 0xFF)
    sub_8041C94(gDuelTextStrings[arg0->textId], arg0->unk0, arg0->unk2, arg0->unk4, 0);
}

void ResetDuelTextData (struct DuelText* arg0) {
  arg0->unk0 = 0;
  arg0->unk2 = 0;
  arg0->unk4 = 0;
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
      return TRUE;
    }
  turnVoice->soundId = 0;
  return FALSE;
}

static void DuelEnd (void) {
  if (gDuelistStatus[DUEL_OPPONENT] == 2)
    gDuelData.unk2B = 1;
  else
    gDuelData.unk2B = 2;
  HandleOutcome();
  sub_8035020(2);
  FadeToBlack();
}

static void InitDuelMetaData (void) {
  unsigned char i;
  gDuelData.unk0 = 0;
  gDuelData.unkC = 0;
  for (i = 0; i < 10; i++)
    gDuelData.unk14[i] = 0;
  gDuelData.capacityYield = 0;
  gDuelData.unk2A = 0;
  gDuelData.unk2B = 2;
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

  sub_80081DC(sub_8021C98);
  sub_8008220();

  for (i = 0; i < 32; i++) {
    for (j = 0; j < 512; j++) {
      pltt = (struct PlttData*)&g02000000.bg[j];
      if (pltt->r)
        pltt->r--;
      if (pltt->g)
        pltt->g--;
      if (pltt->b)
        pltt->b--;
    }
    sub_80081DC(sub_8021CD0);
    sub_8008220();
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
  int deckCapacity;
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
extern struct Unk2021DA0 g2021DA0;
extern u32 g2021D70;
extern unsigned char g2021D80[];
extern u16 gUnk2020DFC;


void sub_8024354(void);
void sub_8024568(void);
void sub_801B66C(void);
void sub_80410B4(void);
void sub_8041D54(void);
void sub_803276C(void);

void sub_80240CC(void);
void sub_802417C(void);



s32 sub_8043E9C(unsigned char);
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
  PlayMusic(213);
  MosaicEffect();
  sub_8022040();
  while (1) {
    turn = WhoseTurn();
    sub_8041104();
    sub_80240BC(&duelText);
    if (turn == DUEL_PLAYER) {
      duelText.textId = 0;
      sub_802405C(&duelText);
    }
    else {
      duelText.textId = 23;
      sub_802405C(&duelText);
    }
    sub_8022080();
    sub_8040524(TURN_PLAYER);
    ResetNumTributes();
    sub_804004C(turn);
    if (turn == DUEL_PLAYER)
      sub_8021E0C();
    else
      sub_8021ED8();
    if (IsDuelOver() == TRUE) break;
    ReturnMonstersToOwner();
    FlipAtkPosCardsFaceUp(2);
    sub_80254F8();
    SwitchTurn();
    if (gNotSure[0]->unkTwo)
      gNotSure[0]->unkTwo = 0;
    if (gNotSure[0]->sorlTurns)
      DecrementSorlTurns(TURN_PLAYER);
    UnlockCardsInRow(2);
    UnlockCardsInRow(4);
    if (g3000C38.unk34) break;
  }
  sub_8022068();
}

static void sub_8021E0C (void) {
  struct DuelText duelText;
  g3000C38.unk32 = 0;
  if (NumEmptyZonesInRow(gZones[4]) > 0) {
    DrawCard(DUEL_PLAYER);
    if (IsDuelOver() == TRUE) {
      g2021D98 = 3;
      sub_8024548();
      sub_80240BC(&duelText);
      duelText.textId = 24;
      sub_802408C(&duelText);
      do {
        sub_8024354();
      } while (g3000C38.unk34);
      return;
    }
    else
      PlayMusic(59);
  }
  sub_8041104();
  WinConditionExodia();
  if (IsDuelOver() == TRUE)
    return;
  sub_802549C();
  sub_802703C();
  PlayerTurnMain();
  if (IsDuelOver() == TRUE)
    return;
  g2021D98 = 3;
  sub_8024548();
  sub_80240BC(&duelText);
  duelText.textId = 24;
  sub_802408C(&duelText);
  do {
    sub_8024354();
  } while (g3000C6C);
}

static void sub_8021ED8 (void) {
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
      sub_80410B4();
      sub_8022080();
      break;
    case 5:
      sub_8041140(gDuel.field);
      sub_801CF08();
      break;
    }
    if (IsDuelOver() == 1)
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
    if (g2021DA0.deckCapacity != g2021D70)
      g3000C38.unk34 = 0xFE;
    else
      sub_802417C();
}

static void sub_8022040 (void) {
  sub_80222EC();
  sub_8041090();
  PlayMusic(gDuelData.unkC);
  sub_8041104();
  gHideEffectText = 0;
}

static void sub_8022068 (void) {
  sub_8022318();
  sub_8022214();
  sub_8035020(1);
  sub_8022340();
}

void sub_8022080 (void) {
  struct DuelText duelText;
  if (gDuelType != 6)
    return;
  sub_80240BC(&duelText);
  duelText.textId = 24;
  sub_802408C(&duelText);
  do {
    sub_802432C();
  } while (g3000C6C);
  if (WhoseTurn() == DUEL_PLAYER)
    sub_8041D54();
}

static void sub_80220C8 (void) {
  struct DuelText duelText;
  IncreaseDeckCapacity(gDuelData.capacityYield);
  SaveGame();
  sub_8035020(4);
  if (gDuelLifePoints[DUEL_OPPONENT] == 0) {
    ResetDuelTextData(&duelText);
    duelText.textId = 19;
    sub_80219E4(&duelText);
  }
  else if (sub_8043E70(1) < sub_8043E9C(1)) {
    ResetDuelTextData(&duelText);
    duelText.textId = 21;
    sub_80219E4(&duelText);
  }
  if (gDuelData.unk2d) {
    PlayMusic(gDuelData.unkE);
    ResetDuelTextData(&duelText);
    duelText.textId = 2;
    sub_80219E4(&duelText);
    ResetDuelTextData(&duelText);
    duelText.textId = 6;
    duelText.unk4 = gDuelData.capacityYield;
    sub_80219E4(&duelText);
  }
}

static void sub_8022170 (void) {
  struct DuelText duelText;
  IncreaseDeckCapacity(5);
  SaveGame();
  sub_8035020(4);
  if (gDuelLifePoints[DUEL_PLAYER] == 0) {
    ResetDuelTextData(&duelText);
    duelText.textId = 20;
    sub_80219E4(&duelText);
  }
  else if (sub_8043E70(0) < sub_8043E9C(0)) {
    ResetDuelTextData(&duelText);
    duelText.textId = 22;
    sub_80219E4(&duelText);
  }
  if (gDuelData.unk2d) {
    PlayMusic(gDuelData.music);
    ResetDuelTextData(&duelText);
    duelText.textId = 3;
    sub_80219E4(&duelText);
    ResetDuelTextData(&duelText);
    duelText.textId = 6;
    duelText.unk4 = 5;
    sub_80219E4(&duelText);
  }
}

static void sub_8022214 (void) {
  if (gDuelData.unk2B == 1)
    sub_80220C8();
  else
    sub_8022170();
}

static void sub_8022234 (void) {
  u32 i;

  for (i = 0; i < 9; i++)
    g2021D80[i] = 0;

  for (i = 0; i < 10; i++)
    gDuelData.unk14[i] = 0;

  gDuelData.unk0 = 0;
  gDuelData.opponent = 0;
  gDuelData.ante = gAnte;
  gDuelData.capacityYield = 10;
  gDuelData.unk2A = 0;
  gDuelData.unk2B = 2;
  gDuelData.unk2c = 0;
  gDuelData.unk2d = 1;
  gDuelData.duelist = *gUnk8E00B30[0];
  gDuelData.unkC = 500;
  gDuelData.unkE = 43;
  gDuelData.music = 44;
  ClearDuelDecks();
  InitDuelDeck(DUEL_PLAYER, gPlayerDeck.cards);
  ShuffleDuelDeck(0);
  SetWhoseTurnToPlayer();
}

static void sub_80222EC (void) {
  sub_80254DC();
  SetDuelLifePoints(DUEL_PLAYER, gDuelData.duelist.playerLp);
  SetDuelLifePoints(DUEL_OPPONENT, gDuelData.duelist.lifePoints);
  InitBoard();
}

static void sub_8022318(void) {
  if (gDuelistStatus[DUEL_OPPONENT] == 2)
    gDuelData.unk2B = 1;
  else
    gDuelData.unk2B = 2;
}

static void sub_8022340 (void) {  //fade to black after Link duel
  u16 i, j;
  struct PlttData* pltt;

  for (i = 0; i < 32; i++) {
    for (j = 0; j < 512; j++) {
      pltt = (struct PlttData*)&g02000000.bg[j];
      if (pltt->r)
        pltt->r--;
      if (pltt->g)
        pltt->g--;
      if (pltt->b)
        pltt->b--;
    }
    sub_80081DC(LoadPalettes);
    sub_8008220();
  }
}




//split?

void InitTrunkData(void);
void InitDeckData(void);
void sub_8022A24(void);
void sub_8022C10(int);
void sub_8023998(void);
unsigned char sub_8056208(void);
bool8 IsDeckFull(void);
s32 IsCostWithinCapacity(void);
void sub_8022B7C(unsigned char);
void sub_8022AA0(void);
void sub_8023AE4(void);
void sub_8023A98(void);
void TrunkMenu(void);
void sub_8022A94(unsigned char);
u32 sub_801D3FC(void);
void sub_80226D8(void);
void DeckMenuMain(void);
u32 GetDeckCost(void);
void sub_8023B30(void);
void sub_8023C14(void);
void sub_8023B7C(void);
void sub_8023BC8(void);
u16 sub_8022610(void);
void sub_8022764(void);
void sub_8022794(void);
void sub_80227C4(void);
void sub_80227F4(void);
void sub_8022824(void);
void sub_8022858(void);
void sub_802288C(void);
void sub_802293C(void);
void sub_8022990(void);
void sub_80238C4(void);
void sub_8022B04(void);

//Link Duel Menu?

void LinkDuelMenu (void) {
  PlayMusic(47);
  InitTrunkData();
  InitDeckData();
  sub_8022A24();
  sub_8022C10(g2021DA0.unk4);
  sub_8023998();
  while (1) {
    sub_8056208();
    if (g2021DA0.unk9 == 1) {
      if (IsDeckFull() != 1) {
        sub_8022B7C(5);
        sub_8022AA0();
        PlayMusic(57);
        sub_8023A98();
      }
      else if (IsCostWithinCapacity() != 1) {
        sub_8022B7C(7);
        sub_8022AA0();
        PlayMusic(57);
        sub_8023AE4();
      }
      else
        break;
    }
    else if (g2021DA0.unk9 == 2) { //TRUNK
      PlayMusic(55);
      TrunkMenu();
      sub_8022B7C(0);
      sub_8022A24();
      sub_8022A94(0);
      sub_8023998();
    }
    else if (g2021DA0.unk9 == 3)
      if (sub_801D3FC() != 1) {
        sub_8022B7C(0);
        PlayMusic(57);
        sub_80226D8();
      }
      else {
        PlayMusic(55);
        DeckMenuMain();
        sub_8022B7C(0);
        sub_8022A24();
        sub_8022A94(1);
        sub_8023998();
      }
    else if (g2021DA0.unk9 == 4)
      if (IsDeckFull() != 1) {
        sub_8022B7C(5);
        sub_8022AA0();
        PlayMusic(57);
        sub_8023A98();
      }
      else if (IsCostWithinCapacity() != 1) {
        sub_8022B7C(7);
        sub_8022AA0();
        PlayMusic(57);
        sub_8023AE4();
      }
      else if (GetDeckCost() > g2021DA0.deckCapacity) {
        sub_8022B7C(6);
        sub_8022AA0();
        PlayMusic(57);
        sub_8023B30();
      }
      else {
        sub_8023C14();
        LinkDuelMain();
        PlayMusic(47);
        if (g3000C38.unk34 == 0xFE) {
          sub_8022B7C(8);
          sub_8022AA0();
          PlayMusic(57);
          sub_8023B7C();
        }
        else if (g3000C38.unk34) {
          sub_8022B7C(9);
          sub_8022AA0();
          PlayMusic(57);
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
      switch (sub_8022610()) {
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
        case 0x120:
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
  PlayMusic(55);
  sub_80238C4();
}

extern u16 gKeyState;
extern u16 g2020DF4;



void sub_802618C(void);
void sub_8022ABC(void);
void sub_80229C0(void);
void sub_8023A14(void);
void sub_8022AE0(void);
void sub_8022A64(void);
void sub_8022A7C(void);
void sub_8022BC8(u32);
void sub_8022BA0(u32);
void sub_80228CC(void);
void sub_8023A44(void);
void sub_8022BF0(int);

u16 sub_8022610(void) { //GetKeyMask?

  sub_802618C();
  if (gUnk2020DFC & 1)
    return 1;
  if (gUnk2020DFC & 2)
    return 2;
  if (gUnk2020DFC & 4)
    return 4;
  if (gUnk2020DFC & 8)
    return 8;
  if (g2020DF4 & 0x40)
    return 0x40;
  if (g2020DF4 & 0x80)
    return 0x80;
  if ((g2020DF4 & 0x20) && (gKeyState & 0x100))
    return 0x120;
  if ((g2020DF4 & 0x10) && (gKeyState & 0x100))
    return 0x110;
  if (g2020DF4 & 0x20)
    return 0x20;
  if (g2020DF4 & 0x10)
    return 0x10;
  return 0;
}

void sub_80226D8(void) {
  switch (g2021DA0.unk9) {
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
    sub_8008220();
    break;
  }
}

void sub_8022764(void) {
  if (g2021DA0.unk9 == 0) {
    sub_8022A64();
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_8022794(void) {
  if (g2021DA0.unk9 == 0) {
    sub_8022A7C();
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_80227C4(void) {
  if (g2021DA0.unk9 == 0) {
    sub_8022BC8(100);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_80227F4(void) {
  if (g2021DA0.unk9 == 0) {
    sub_8022BA0(100);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_8022824(void) {
  if (g2021DA0.unk9 == 0) {
    sub_8022BC8(1000);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_8022858(void) {
  if (g2021DA0.unk9 == 0) {
    sub_8022BA0(1000);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_802288C(void) {
  switch (g2021DA0.unk9) {
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
      PlayMusic(0x38);
      sub_8023A44();
      break;
    default:
      sub_8008220();
  }
}

void sub_80228CC(void) {
  switch (g2021DA0.unkA) {
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
    sub_8022C10(g2021DA0.unk4);
    sub_8022ABC();
    PlayMusic(0x37);
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
    sub_8008220();
  }
}

void sub_802293C(void) {
  switch (g2021DA0.unk9) {
  case 0:
    sub_8022A94(4);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x38);
    sub_8023A14();
    break;
  case 5:
  case 6:
  case 7:
  case 8:
  case 9:
    sub_8022B7C(0);
    sub_8022AA0();
    PlayMusic(0x38);
    sub_8023A44();
    break;
  default:
    sub_8008220();
  }
}

void sub_8022990(void) {
  if (g2021DA0.unk9 == 0) {
    sub_8022BF0(65000);
    sub_8022ABC();
    PlayMusic(0x37);
    sub_8023A14();
  }
  else
    sub_8008220();
}

struct Unk8f {
  unsigned char unk0;
  unsigned char unk1;
  unsigned char filler2[2];
  u32 unk4;
};

extern unsigned char g80C1852[];
extern struct Unk8f (*g8FC4A8C[])[1];

void sub_80229C0(void) {
  if (g2021DA0.unkE == 0) {
    unsigned char temp = g80C1852[g2021DA0.unkA];
    g2021DA0.unkD++;
    if (g8FC4A8C[temp][g2021DA0.unkD]->unk0 == 0)
      g2021DA0.unkD = 0;
  }
  if (g2021DA0.unkE == 0) {
    unsigned char temp = g80C1852[g2021DA0.unkA];
    g2021DA0.unkE = g8FC4A8C[temp][g2021DA0.unkD]->unk0;
  }
  else
    g2021DA0.unkE--;
}

unsigned char GetDeckSize(void);

void sub_8022A24(void) {
  unsigned char temp;

  g2021DA0.unk4 = GetDeckCost();
  g2021DA0.unk8 = GetDeckSize();
  g2021DA0.unkA = 0;
  g2021DA0.unk9 = 0;
  g2021DA0.unkB = 0;
  g2021DA0.unkC = 0;
  temp = g80C1852[0];
  g2021DA0.unkD = 0;
  g2021DA0.unkE = g8FC4A8C[temp][0]->unk0;
}

extern unsigned char g80C188C[];
extern unsigned char g80C1891[];
extern unsigned char g80C1857[];
extern unsigned char g80C1852[];
extern unsigned char g80C1872[];

void sub_8022A64(void) {
  g2021DA0.unkA = g80C188C[g2021DA0.unkA];
}

void sub_8022A7C(void) {
  g2021DA0.unkA = g80C1891[g2021DA0.unkA];
}

void sub_8022A94(unsigned char arg0) {
  g2021DA0.unkA = arg0;
}

void sub_8022AA0(void) {
  g2021DA0.unkB = 0;
  g2021DA0.unkC = 0;
}

unsigned char sub_8022AB0(void) {
  return g2021DA0.unkB;
}

void sub_8022ABC(void) {
  if (g2021DA0.unkC == 0)
    g2021DA0.unkB = g80C1857[g2021DA0.unkB];

  sub_8022B04();
}

void sub_8022AE0(void) {
  if (g2021DA0.unkC == 0)
    g2021DA0.unkB = g80C1872[g2021DA0.unkB];
  sub_8022B04();
}

void sub_8022B04(void) {
  if (g2021DA0.unkC == 0)
    g2021DA0.unkC = 3;
  else
    g2021DA0.unkC--;
}

void sub_8022B1C(void) {
  unsigned char temp = g80C1852[g2021DA0.unkA];
  g2021DA0.unkD = 0;
  g2021DA0.unkE = g8FC4A8C[temp][0]->unk0;
}

void sub_8022B44(void) {
  if (g2021DA0.unkE == 0) {
    unsigned char temp = g80C1852[g2021DA0.unkA];
    g2021DA0.unkE = g8FC4A8C[temp][g2021DA0.unkD]->unk0;
  }
  else
     g2021DA0.unkE--;
}

void sub_8022B7C(unsigned char arg0) {
  g2021DA0.unk9 = arg0;
}

unsigned char sub_8022B88(void) {
  return g2021DA0.unk9;
}

void sub_8022B94(void) {
  g2021DA0.deckCapacity = 100;
}

void sub_8022BA0(u32 capacity) {
  if (g2021DA0.deckCapacity == 65000)
    g2021DA0.deckCapacity = 100;
  else {
    s32 cost = g2021DA0.deckCapacity + capacity;
    g2021DA0.deckCapacity = cost;
    if (cost > 65000)
      g2021DA0.deckCapacity = 65000;
  }
}

void sub_8022BC8(u32 capacity) {
  if (g2021DA0.deckCapacity == 100)
    g2021DA0.deckCapacity = 65000;
  else {
    int cost = g2021DA0.deckCapacity - capacity;
    g2021DA0.deckCapacity = cost;
    if (cost < 100)
      g2021DA0.deckCapacity = 100;
  }
}

void sub_8022BF0 (int arg0) {
  if (arg0 > 65000)
    arg0 = 65000;
  else if (arg0 < 100)
    arg0 = 100;
  g2021DA0.deckCapacity = arg0;
}

void sub_8022C10 (int arg0) {
  if (arg0 > 65000)
    return;
  g2021DA0.deckCapacity = 100;
  if (arg0 <= 100)
    return;
  do {
    if (g2021DA0.deckCapacity == 65000)
      g2021DA0.deckCapacity = 100;
    else {
      g2021DA0.deckCapacity += 100;
      if (g2021DA0.deckCapacity > 65000)
      g2021DA0.deckCapacity = 65000;
    }
  } while (arg0 > g2021DA0.deckCapacity);
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
  CpuCopy16(gDF0908, g02000000.bg + 80, 32);
}*/

// sl = 0xF000
// r8 = 0xD000

/*

void sub_8044B90 (void) {
  const unsigned char arr[] = {0x10, 0x3C, 0x68, 0x94, 0xC0};
}*/


