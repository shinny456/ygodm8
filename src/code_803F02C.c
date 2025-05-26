#include "global.h"

#define FLAG_GRAVEYARD_PLAYER 1
#define FLAG_GRAVEYARD_OPPONENT 2
#define FLAG_LOSER_PLAYER 4
#define FLAG_LOSER_OPPONENT 16


/*
unsigned char g8E0CFC0[] = {
  [DUEL_PLAYER] = FLAG_LOSER_PLAYER,
  [DUEL_OPPONENT] = FLAG_LOSER_OPPONENT
};
*/

static void sub_0803F330 (void);
static void sub_803F334 (void);
static void sub_803F374 (void);
static void AddPlayerLifePoints (void);
static void sub_803F3D4 (void);
static void sub_803F400 (void);
static void sub_803F420 (void);
static void SetFlagPlayerGraveyard (void);
static void SetFlagOpponentGraveyard (void);
static void UpdateLifePointsAfterAction (void);
static unsigned char sub_803FA94 (void);
static unsigned char sub_803FAFC (void);
static unsigned char sub_803FB64 (void);
static unsigned char sub_803FC10 (void);
static unsigned char sub_803FC24 (void);
static unsigned char sub_803FC64 (void);
static unsigned char sub_803FCA8 (void);


extern unsigned char* g8E0CEE0[]; // array of string literals?
extern unsigned char* g8E0CF40[];
extern u16 g8E0CFA0[];
extern unsigned char g8E0CFC0[];
void sub_803FD3C (void);





//might be non-const (.data)
static const unsigned char sAttributeAdvantages[NUM_ATTRIBUTES] = {
  [ATTRIBUTE_NONE] = ATTRIBUTE_NONE,
  [ATTRIBUTE_SHADOW] = ATTRIBUTE_LIGHT,
  [ATTRIBUTE_LIGHT] = ATTRIBUTE_FIEND,
  [ATTRIBUTE_FIEND] = ATTRIBUTE_DREAM,
  [ATTRIBUTE_DREAM] = ATTRIBUTE_SHADOW,
  [ATTRIBUTE_PYRO] = ATTRIBUTE_FOREST,
  [ATTRIBUTE_FOREST] = ATTRIBUTE_WIND,
  [ATTRIBUTE_WIND] = ATTRIBUTE_EARTH,
  [ATTRIBUTE_EARTH] = ATTRIBUTE_THUNDER,
  [ATTRIBUTE_THUNDER] = ATTRIBUTE_AQUA,
  [ATTRIBUTE_AQUA] = ATTRIBUTE_PYRO,
  [ATTRIBUTE_DIVINE] = ATTRIBUTE_NONE
};

static const unsigned char sAttributeWeaknesses[NUM_ATTRIBUTES] = {
  [ATTRIBUTE_NONE] = ATTRIBUTE_NONE,
  [ATTRIBUTE_SHADOW] = ATTRIBUTE_DREAM,
  [ATTRIBUTE_LIGHT] = ATTRIBUTE_SHADOW,
  [ATTRIBUTE_FIEND] = ATTRIBUTE_LIGHT,
  [ATTRIBUTE_DREAM] = ATTRIBUTE_FIEND,
  [ATTRIBUTE_PYRO] = ATTRIBUTE_AQUA,
  [ATTRIBUTE_FOREST] = ATTRIBUTE_PYRO,
  [ATTRIBUTE_WIND] = ATTRIBUTE_FOREST,
  [ATTRIBUTE_EARTH] = ATTRIBUTE_WIND,
  [ATTRIBUTE_THUNDER] = ATTRIBUTE_EARTH,
  [ATTRIBUTE_AQUA] = ATTRIBUTE_THUNDER,
  [ATTRIBUTE_DIVINE] = ATTRIBUTE_NONE
};

unsigned char* GetCardTypeString (unsigned char cardType) {
  return g8E0CEE0[cardType];
}

//unused?
static unsigned char* sub_803F03C (unsigned char arg0) {
  return g8E0CF40[arg0];
}

//bitmask for flags
u16 sub_803F04C (unsigned char arg0) {
  return g8E0CFA0[arg0];
}




// split?
static inline void SetLoserFlag_inline (unsigned char arg0) {
  g2023E80.flags |= g8E0CFC0[arg0];
}

static void sub_803F05C (void) {
  sub_803FD3C();
  if (sub_803FA94() != 1)
    return;
  if (g2023E80.playerCardAttack >= g2023E80.opponentCardAttack) {
    if (g2023E80.playerCardAttack > g2023E80.opponentCardAttack) {
      SetFlagOpponentGraveyard();
      if (g2023E80.opponentLifePoints <= g2023E80.playerCardAttack - g2023E80.opponentCardAttack) {
        g2023E80.opponentLifePoints = 0;
        SetLoserFlag_inline(g2023E80.unk1B);
      }
      else
        g2023E80.opponentLifePoints -= g2023E80.playerCardAttack - g2023E80.opponentCardAttack;
      gUnk2023EA0.unk18 = 1;
    }
    else {
      SetFlagPlayerGraveyard();
      SetFlagOpponentGraveyard();
      gUnk2023EA0.unk18 = 2;
    }
  }
  else {
    SetFlagPlayerGraveyard();
    if (g2023E80.playerLifePoints <= g2023E80.opponentCardAttack - g2023E80.playerCardAttack) {
      g2023E80.playerLifePoints = 0;
      SetLoserFlag_inline(g2023E80.unk1A);
    }
    else
      g2023E80.playerLifePoints -= g2023E80.opponentCardAttack - g2023E80.playerCardAttack;
    gUnk2023EA0.unk18 = 3;
  }
}

static void sub_803F108 (void) {
  sub_803FD3C();
  if (sub_803FAFC() != 1)
    return;
  if (g2023E80.playerCardAttack >= g2023E80.opponentCardDefense) {
    if (g2023E80.playerCardAttack > g2023E80.opponentCardDefense) {
      SetFlagOpponentGraveyard();
      gUnk2023EA0.unk18 = 4;
    }
    else
      gUnk2023EA0.unk18 = 5;
  }
  else {
    if (g2023E80.playerLifePoints <= g2023E80.opponentCardDefense - g2023E80.playerCardAttack) {
      g2023E80.playerLifePoints = 0;
      SetLoserFlag_inline(g2023E80.unk1A);
    }
    else
      g2023E80.playerLifePoints -= g2023E80.opponentCardDefense - g2023E80.playerCardAttack;
    gUnk2023EA0.unk18 = 6;
  }
}

static void sub_803F180 (void) {
  sub_803FD3C();
  if (sub_803FB64() != 1)
    return;
  if (g2023E80.playerCardDefense >= g2023E80.opponentCardAttack) {
    if (g2023E80.playerCardDefense > g2023E80.opponentCardAttack) {
      if (g2023E80.opponentLifePoints <= g2023E80.playerCardDefense - g2023E80.opponentCardAttack) {
        g2023E80.opponentLifePoints = 0;
        SetLoserFlag_inline(g2023E80.unk1B);
      }
      else
        g2023E80.opponentLifePoints -= g2023E80.playerCardDefense - g2023E80.opponentCardAttack;
      gUnk2023EA0.unk18 = 7;
    }
    else
      gUnk2023EA0.unk18 = 8;
  }
  else {
    SetFlagPlayerGraveyard();
    gUnk2023EA0.unk18 = 9;
  }
}

static void sub_803F1F4 (void) {
  gUnk2023EA0.unk0[0].cardId = g2023E80.playerCardId;
  gUnk2023EA0.unk0[0].cardAttribute = g2023E80.playerCardAttribute;
  gUnk2023EA0.unk0[0].cardAttack = g2023E80.playerCardAttack;
  gUnk2023EA0.unk0[0].cardDefense = g2023E80.playerCardDefense;
  gUnk2023EA0.unk0[1].cardId = g2023E80.opponentCardId;
  gUnk2023EA0.unk0[1].cardAttribute = g2023E80.opponentCardAttribute;
  gUnk2023EA0.unk0[1].cardAttack = g2023E80.opponentCardAttack;
  gUnk2023EA0.unk0[1].cardDefense = g2023E80.opponentCardDefense;
}

void CheckGraveyardAndLoserFlags (void) {
  if (g2023E80.flags & FLAG_GRAVEYARD_PLAYER)
    ClearZoneAndSendMonToGraveyard2(gFixedZones[g2023E80.playerMonsterRow][g2023E80.unkA], 0);
  if (g2023E80.flags & FLAG_GRAVEYARD_OPPONENT)
    ClearZoneAndSendMonToGraveyard2(gFixedZones[g2023E80.opponentMonsterRow][g2023E80.unk16], 1);
  if (g2023E80.flags & FLAG_LOSER_PLAYER)
    DeclareLoser(0);
  if (g2023E80.flags & FLAG_LOSER_OPPONENT)
    DeclareLoser(1);
}

//HandleDuelAction/PerformDuelAction? (BattleAction?) damage?
void HandleDuelAction (void) {
  g2023E80.flags = 0;
  switch (g2023E80.action) {
    case 1:
      sub_803F05C();
      break;
    case 2:
      sub_803F108();
      break;
    case 3:
      sub_0803F330();
      break;
    case 4:
      sub_803F334();
      break;
    case 5:
      sub_803F180();
      break;
    case 6:
      sub_803F374();
      break;
    case 7:
      AddPlayerLifePoints();
      break;
    case 8:
      sub_803F3D4();
      break;
    case 9:
      sub_803F420();
      break;
    case 10:
      sub_803F400();
      break;
  }
  UpdateLifePointsAfterAction();
  sub_803F1F4();
}

static void sub_0803F330 (void) {
}

static void sub_803F334 (void) {
  sub_803FD3C();
  if (g2023E80.opponentLifePoints <= g2023E80.playerCardAttack) {
    g2023E80.opponentLifePoints = 0;
    SetLoserFlag_inline(g2023E80.unk1B);
  }
  else
    g2023E80.opponentLifePoints -= g2023E80.playerCardAttack;
  gUnk2023EA0.unk18 = 10;
}

static void sub_803F374 (void) {
  sub_803FD3C();
  if (g2023E80.playerLifePoints <= g2023E80.opponentCardAttack) {
    g2023E80.playerLifePoints = 0;
    SetLoserFlag_inline(g2023E80.unk1A);
  }
  else
    g2023E80.playerLifePoints-= g2023E80.opponentCardAttack;
  gUnk2023EA0.unk18 = 15;
}

static void AddPlayerLifePoints (void) {
  if (g2023E80.playerLifePoints + g2023E80.playerCardAttack > 65000)
    g2023E80.playerLifePoints = 65000;
  else
    g2023E80.playerLifePoints += g2023E80.playerCardAttack;
}

static void sub_803F3D4 (void) {
  if (g2023E80.playerLifePoints - g2023E80.playerCardAttack <= 0) {
    g2023E80.playerLifePoints = 0;
    SetLoserFlag_inline(g2023E80.unk1A);
  }
  else
    g2023E80.playerLifePoints -= g2023E80.playerCardAttack;
}

static void sub_803F400 (void) {
  if (g2023E80.opponentLifePoints + g2023E80.opponentCardAttack > 65000)
    g2023E80.opponentLifePoints = 65000;
  else
    g2023E80.opponentLifePoints += g2023E80.opponentCardAttack;
}

static void sub_803F420 (void) {
  if (g2023E80.opponentLifePoints - g2023E80.opponentCardAttack <= 0) {
    g2023E80.opponentLifePoints = 0;
    SetLoserFlag_inline(g2023E80.unk1B);
  }
  else
    g2023E80.opponentLifePoints -= g2023E80.opponentCardAttack;
}

static void SetFlagPlayerGraveyard (void) {
  g2023E80.flags |= FLAG_GRAVEYARD_PLAYER;
}

static void SetFlagOpponentGraveyard (void) {
  g2023E80.flags |= FLAG_GRAVEYARD_OPPONENT;
}

static void UpdateLifePointsAfterAction (void) {
  gDuelLifePoints[g2023E80.unk1A] = g2023E80.playerLifePoints;
  gUnk2023EA0.unk0[0].lifePointsAfterDamage = g2023E80.playerLifePoints;
  gDuelLifePoints[g2023E80.unk1B] = g2023E80.opponentLifePoints;
  gUnk2023EA0.unk0[1].lifePointsAfterDamage = g2023E80.opponentLifePoints;
}

static void SetLoserFlag (unsigned char arg0) {
  g2023E80.flags |= g8E0CFC0[arg0];
}

void CheckLoserFlags (void) {
  if (g2023E80.flags & FLAG_LOSER_PLAYER)
    DeclareLoser(DUEL_PLAYER);
  if (g2023E80.flags & FLAG_LOSER_OPPONENT)
    DeclareLoser(DUEL_OPPONENT);
}

// SetActionDirectAttackFromPlayer
// direct attack from player
static void sub_803F4F0 (unsigned char arg0) {
  g2023E80.action = 4;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.playerCardId = gFixedZones[2][arg0]->id;
  gStatMod.card = gFixedZones[2][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gFixedZones[2][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.playerCardAttack = gCardInfo.atk;
  g2023E80.playerCardDefense = gCardInfo.def;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  gUnk2023EA0.unk0[0].initialLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  gUnk2023EA0.unk0[1].initialLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  g2023E80.unkA = arg0;
  g2023E80.playerMonsterRow = 2;
}

// direct attack from opponent
static void sub_803F574 (unsigned char arg0) {
  g2023E80.action = 6;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.opponentCardId = gFixedZones[1][arg0]->id;
  gStatMod.card = gFixedZones[1][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gFixedZones[1][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.opponentCardAttack = gCardInfo.atk;
  g2023E80.opponentCardDefense = gCardInfo.def;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  gUnk2023EA0.unk0[0].initialLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  gUnk2023EA0.unk0[1].initialLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  g2023E80.unk16 = arg0;
  g2023E80.opponentMonsterRow = 1;
}

// attack atk position monster
static void sub_803F604 (unsigned char arg0, unsigned char arg1) {
  g2023E80.action = 1;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.playerCardId = gFixedZones[2][arg0]->id;
  gStatMod.card = gFixedZones[2][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gFixedZones[2][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.playerCardAttack = gCardInfo.atk;
  g2023E80.playerCardDefense = gCardInfo.def;
  g2023E80.playerCardAttribute = gCardInfo.attribute;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  gUnk2023EA0.unk0[0].initialLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.unkA = arg0;
  g2023E80.playerMonsterRow = 2;
  g2023E80.opponentCardId = gFixedZones[1][arg1]->id;
  gStatMod.card = gFixedZones[1][arg1]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gFixedZones[1][arg1]);
  SetFinalStat(&gStatMod);
  g2023E80.opponentCardAttack = gCardInfo.atk;
  g2023E80.opponentCardDefense = gCardInfo.def;
  g2023E80.opponentCardAttribute = gCardInfo.attribute;
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  gUnk2023EA0.unk0[1].initialLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  g2023E80.unk16 = arg1;
  g2023E80.opponentMonsterRow = 1;
}

// player attacks defending monster
static void sub_803F6F8 (unsigned char arg0, unsigned char arg1) {
  g2023E80.action = 2;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.playerCardId = gFixedZones[2][arg0]->id;
  gStatMod.card = gFixedZones[2][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gFixedZones[2][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.playerCardAttack = gCardInfo.atk;
  g2023E80.playerCardDefense = gCardInfo.def;
  g2023E80.playerCardAttribute = gCardInfo.attribute;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  gUnk2023EA0.unk0[0].initialLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.unkA = arg0;
  g2023E80.playerMonsterRow = 2;
  g2023E80.opponentCardId = gFixedZones[1][arg1]->id;
  gStatMod.card = gFixedZones[1][arg1]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gFixedZones[1][arg1]);
  SetFinalStat(&gStatMod);
  g2023E80.opponentCardAttack = gCardInfo.atk;
  g2023E80.opponentCardDefense = gCardInfo.def;
  g2023E80.opponentCardAttribute = gCardInfo.attribute;
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  gUnk2023EA0.unk0[1].initialLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  g2023E80.unk16 = arg1;
  g2023E80.opponentMonsterRow = 1;
}

//Opponent attacks defending monster
static void sub_803F7EC (unsigned char arg0, unsigned char arg1) {
  g2023E80.action = 5;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.playerCardId = gFixedZones[2][arg0]->id;
  gStatMod.card = gFixedZones[2][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gFixedZones[2][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.playerCardAttack = gCardInfo.atk;
  g2023E80.playerCardDefense = gCardInfo.def;
  g2023E80.playerCardAttribute = gCardInfo.attribute;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  gUnk2023EA0.unk0[0].initialLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.unkA = arg0;
  g2023E80.playerMonsterRow = 2;
  g2023E80.opponentCardId = gFixedZones[1][arg1]->id;
  gStatMod.card = gFixedZones[1][arg1]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gFixedZones[1][arg1]);
  SetFinalStat(&gStatMod);
  g2023E80.opponentCardAttack = gCardInfo.atk;
  g2023E80.opponentCardDefense = gCardInfo.def;
  g2023E80.opponentCardAttribute = gCardInfo.attribute;
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  gUnk2023EA0.unk0[1].initialLifePoints = gDuelLifePoints[DUEL_OPPONENT];
  g2023E80.unk16 = arg1;
  g2023E80.opponentMonsterRow = 1;
}

// SetDuelActionDirectAttack
void sub_803F8E0 (int arg0) {
  unsigned char arg0_u8 = arg0; //TODO: implicit decl somewhere else?
  switch (WhoseTurn()) {
    case 0:
      sub_803F4F0(arg0);
      break;
    case 1:
      sub_803F574(arg0);
      break;
  }
}

void SetDuelActionAttack (int arg0, int arg1) {
  unsigned char arg0_u8 = arg0;
  unsigned char arg1_u8 = arg1;
  switch (WhoseTurn()) {
    case DUEL_PLAYER:
      if (gFixedZones[1][arg1_u8]->isDefending)
        sub_803F6F8(arg0_u8, arg1_u8);
      else
        sub_803F604(arg0_u8, arg1_u8);
      break;
    case DUEL_OPPONENT:
      if (!gFixedZones[2][arg0_u8]->isDefending)
        sub_803F604(arg0_u8, arg1_u8);
      else
        sub_803F7EC(arg0_u8, arg1_u8);
      break;
  }
}

void SetPlayerLifePointsToAdd (u32 lifePoints) {
  g2023E80.action = 7;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.playerCardAttack = lifePoints;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
}

void SetPlayerLifePointsToSubtract (u32 lifePoints) {
  g2023E80.action = 8;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.playerCardAttack = lifePoints;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
}

void SetOpponentLifePointsToAdd (u32 lifePoints) {
  g2023E80.action = 10;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.opponentCardAttack = lifePoints;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
}

void SetOpponentLifePointsToSubtract (u32 lifePoints) {
  g2023E80.action = 9;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.opponentCardAttack = lifePoints;
  g2023E80.playerLifePoints = gDuelLifePoints[DUEL_PLAYER];
  g2023E80.opponentLifePoints = gDuelLifePoints[DUEL_OPPONENT];
}

// TODO: function doesn't return anything
static unsigned char sub_803FA08 (void) {
  gUnk2023EA0.unk18 = 16;
  SetFlagOpponentGraveyard();
  if (g2023E80.playerCardAttack < g2023E80.opponentCardAttack)
    return;
  if (g2023E80.playerCardAttack <= g2023E80.opponentCardAttack)
    return;
  if (g2023E80.opponentLifePoints <= g2023E80.playerCardAttack - g2023E80.opponentCardAttack) {
    g2023E80.opponentLifePoints = 0;
    SetLoserFlag(g2023E80.unk1B);
  }
  else
    g2023E80.opponentLifePoints -= g2023E80.playerCardAttack - g2023E80.opponentCardAttack;
}

// TODO: function doesn't return anything
//(is it UB only if return val of the function is used?)
static unsigned char sub_803FA4C (void) {
  gUnk2023EA0.unk18 = 17;
  SetFlagPlayerGraveyard();
  if (g2023E80.playerCardAttack > g2023E80.opponentCardAttack)
    return;
  if (g2023E80.playerCardAttack >= g2023E80.opponentCardAttack)
    return;
  if (g2023E80.playerLifePoints <= g2023E80.opponentCardAttack - g2023E80.playerCardAttack) {
    g2023E80.playerLifePoints = 0;
    SetLoserFlag(g2023E80.unk1A);
  }
  else
    g2023E80.playerLifePoints -= g2023E80.opponentCardAttack - g2023E80.playerCardAttack;
}

//TODO: create constants: e.g. ATTACKER_ATTR_BEATS_DEFENDER
static inline unsigned char sub_803FBCC_inline (unsigned char a, unsigned char b) {
  if (a == ATTRIBUTE_DIVINE || b == ATTRIBUTE_DIVINE)
    return 1;
  if (sAttributeAdvantages[a] == b) //if a beats b
    return 0;
  else if (sAttributeWeaknesses[a] == b) //if b beats a
    return 2;
  return 1;
}

static unsigned char sub_803FA94 (void) {
  unsigned char r4 = sub_803FBCC_inline(g2023E80.playerCardAttribute, g2023E80.opponentCardAttribute);
  switch (r4) {
    case 0:
      sub_803FA08();
      break;
    case 1:
      break;
    case 2:
      sub_803FA4C();
      break;
  }
  return r4;
}

static unsigned char sub_803FAFC (void) {
  unsigned char r4 = sub_803FBCC_inline(g2023E80.playerCardAttribute, g2023E80.opponentCardAttribute);
  switch (r4) {
    case 0:
      sub_803FC10();
      break;
    case 1:
      break;
    case 2:
      sub_803FC24();
      break;
  }
  return r4;
}

static unsigned char sub_803FB64 (void) {
  unsigned char r4 = sub_803FBCC_inline(g2023E80.playerCardAttribute, g2023E80.opponentCardAttribute);
  switch (r4) {
    case 0:
      sub_803FC64();
      break;
    case 1:
      break;
    case 2:
      sub_803FCA8();
      break;
  }
  return r4;
}

unsigned char sub_803FBCC (unsigned char a, unsigned char b) {
  if (a == ATTRIBUTE_DIVINE)
    return 1;
  if (b == ATTRIBUTE_DIVINE)
    return 1;
  if (sAttributeAdvantages[a] == b)
    return 0;
  else if (sAttributeWeaknesses[a] == b)
    return 2;
  return 1;
}

// TODO: function returns nothing
static unsigned char sub_803FC10 (void) {
  gUnk2023EA0.unk18 = 16;
  SetFlagOpponentGraveyard();
}
/*
static unsigned char sub_803FC24 (void) {
  gUnk2023EA0.unk18 = 17;
  SetFlagPlayerGraveyard();
  if (g2023E80.playerCardAttack >= g2023E80.opponentCardDefense)
    return;
  if (g2023E80.playerLifePoints <= g2023E80.opponentCardDefense - g2023E80.playerCardAttack) {
    g2023E80.playerLifePoints = 0;
    SetLoserFlag(g2023E80.unk1A);
  }
  else
    g2023E80.playerLifePoints -= g2023E80.opponentCardDefense - g2023E80.playerCardAttack;
}

static unsigned char sub_803FC64 (void) {
  gUnk2023EA0.unk18 = 16;
  SetFlagOpponentGraveyard();
  if (g2023E80.playerCardDefense <= g2023E80.opponentCardAttack)
    return;
  if (g2023E80.opponentLifePoints <= g2023E80.playerCardDefense - g2023E80.opponentCardAttack) {
    g2023E80.opponentLifePoints = 0;
    SetLoserFlag(g2023E80.unk1B);
  }
  else
    g2023E80.opponentLifePoints -= g2023E80.opponentCardDefense - g2023E80.playerCardAttack;
}*/

NAKED
unsigned char sub_803FC24 (void) {
  asm_unified("push {r4, lr}\n\
	ldr r0, _0803FC50\n\
	movs r1, #0x11\n\
	strb r1, [r0, #0x18]\n\
	bl SetFlagPlayerGraveyard\n\
	ldr r3, _0803FC54\n\
	ldrh r1, [r3, #2]\n\
	ldrh r2, [r3, #0x10]\n\
	cmp r1, r2\n\
	bhs _0803FC5C\n\
	ldrh r4, [r3, #6]\n\
	ldrh r2, [r3, #0x10]\n\
	subs r1, r2, r1\n\
	cmp r4, r1\n\
	bgt _0803FC58\n\
	movs r0, #0\n\
	strh r0, [r3, #6]\n\
	ldrb r0, [r3, #0x1a]\n\
	bl SetLoserFlag\n\
	b _0803FC5C\n\
	.align 2, 0\n\
_0803FC50: .4byte 0x02023EA0\n\
_0803FC54: .4byte g2023E80\n\
_0803FC58:\n\
	subs r1, r4, r1\n\
	strh r1, [r3, #6]\n\
_0803FC5C:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1");
}

NAKED
unsigned char sub_803FC64 (void) {
  asm_unified("push {r4, lr}\n\
	ldr r0, _0803FC94\n\
	movs r1, #0x10\n\
	strb r1, [r0, #0x18]\n\
	bl SetFlagOpponentGraveyard\n\
	ldr r3, _0803FC98\n\
	ldrh r1, [r3, #4]\n\
	ldrh r2, [r3, #0xe]\n\
	cmp r1, r2\n\
	bls _0803FCA0\n\
	ldrh r4, [r3, #0x12]\n\
	adds r2, r1, #0\n\
	ldrh r1, [r3, #0xe]\n\
	subs r1, r2, r1\n\
	cmp r4, r1\n\
	bgt _0803FC9C\n\
	movs r0, #0\n\
	strh r0, [r3, #0x12]\n\
	ldrb r0, [r3, #0x1b]\n\
	bl SetLoserFlag\n\
	b _0803FCA0\n\
	.align 2, 0\n\
_0803FC94: .4byte 0x02023EA0\n\
_0803FC98: .4byte g2023E80\n\
_0803FC9C:\n\
	subs r1, r4, r1\n\
	strh r1, [r3, #0x12]\n\
_0803FCA0:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1");
}

static unsigned char sub_803FCA8 (void) {
  gUnk2023EA0.unk18 = 17;
  SetFlagPlayerGraveyard();
}



// new file?
extern s8 gE0CFDC[];
extern s8 gE0CFF4[];
extern s8 g80DF790[];

int GetTypeGroup (u16 cardId) {
  if (cardId == CARD_NONE)
    return 0;
  SetCardInfo(cardId);
  return gE0CFDC[gCardInfo.type];
}

int GetSpellType (u16 cardId) {
  SetCardInfo(cardId);
  return gE0CFF4[gCardInfo.spellEffect];
}

static void sub_803FD10 (void) {
}

void sub_803FD14 (void) {
  gUnk2023EA0.unk0[0].cardId = 0;
  gUnk2023EA0.unk0[0].initialLifePoints = 0;
  gUnk2023EA0.unk0[0].lifePointsAfterDamage = 0;
  gUnk2023EA0.unk0[0].cardAttack = 0;
  gUnk2023EA0.unk0[0].cardDefense = 0;
  gUnk2023EA0.unk0[0].cardAttribute = 0;
  gUnk2023EA0.unk0[1].cardId = 0;
  gUnk2023EA0.unk0[1].initialLifePoints = 0;
  gUnk2023EA0.unk0[1].lifePointsAfterDamage = 0;
  gUnk2023EA0.unk0[1].cardAttack = 0;
  gUnk2023EA0.unk0[1].cardDefense = 0;
  gUnk2023EA0.unk0[1].cardAttribute = 0;
  gUnk2023EA0.unk18 = 0;
}

void sub_803FD3C (void) {
  gUnk2023EA0.unk18 = 0;
}

void sub_803FD48 (void) {
  gUnk2023EA0.unk18 = g80DF790[gUnk2023EA0.unk18];
}

extern u16 g8E0D08C[][5];
extern unsigned char g8E0D0BE[][5];
extern unsigned char g8E0D0D7[][5];

void InitBoard (void) {
  unsigned char i, j;
  InitDuelZonePtrs(2);
  for (i = 0; i < 4; i++)
    for (j = 0; j < 5; j++)
      ClearZone(&gDuel.board[i][j]);
  for (i = 0; i < 4; i++)
    for (j = 0; j < 5; j++) {
      gDuel.board[i][j].id = g8E0D08C[i][j];
      gDuel.board[i][j].isFaceUp = g8E0D0BE[i][j];
      gDuel.board[i][j].isDefending = g8E0D0D7[i][j];
    }
  for (i = 0; i < 2; i++)
    for (j = 0; j < 5; j++) {
      ClearZone(&gDuel.hands[i][j]);
      TryDrawingCard(i);
    }
  gDuel.field = gDuelData.duelist.field;
  for (i = 0; i < 2; i++) {
    gDuel.duelistbattleState[i].sorlTurns = 0;
    gDuel.duelistbattleState[i].defenseBlocked = 0;
    gDuel.duelistbattleState[i].graveyard = CARD_NONE;
    UnblockSummoning(i);
  }
}

void InitDuelZonePtrs (int unused) {
  unsigned char i;
  for (i = 0; i < 5; i++)
    gFixedZones[0][i] = &gDuel.board[0][4-i];
  for (i = 0; i < 5; i++)
    gFixedZones[1][i] = &gDuel.board[1][4-i];
  for (i = 0; i < 5; i++)
    gFixedZones[2][i] = &gDuel.board[2][i];
  for (i = 0; i < 5; i++)
    gFixedZones[3][i] = &gDuel.board[3][i];
  for (i = 0; i < 5; i++)
    gFixedZones[4][i] = &gDuel.hands[DUEL_PLAYER][i];
  for (i = 0; i < 5; i++)
    gTurnZones[0][i] = &gDuel.board[0][i];
  for (i = 0; i < 5; i++)
    gTurnZones[1][i] = &gDuel.board[1][i];
  for (i = 0; i < 5; i++)
    gTurnZones[2][i] = &gDuel.board[2][i];
  for (i = 0; i < 5; i++)
    gTurnZones[3][i] = &gDuel.board[3][i];
  for (i = 0; i < 5; i++)
    gTurnZones[4][i] = &gDuel.hands[DUEL_PLAYER][i];
  gTurnDuelistBattleState[ACTIVE_DUELIST] = &gDuel.duelistbattleState[DUEL_PLAYER];
  gTurnDuelistBattleState[INACTIVE_DUELIST] = &gDuel.duelistbattleState[DUEL_OPPONENT];
  for (i = 0; i < 5; i++)
    gTurnHands[ACTIVE_DUELIST][i] = &gDuel.hands[DUEL_PLAYER][i];
  for (i = 0; i < 5; i++)
    gTurnHands[INACTIVE_DUELIST][i] = &gDuel.hands[DUEL_OPPONENT][i];
}

void UpdateDuelZonePtrs (unsigned char turn) {
  unsigned char i;
  if (turn == ACTIVE_DUELIST) {
    for (i = 0; i < 5; i++)
      gTurnZones[0][i] = &gDuel.board[0][i];
    for (i = 0; i < 5; i++)
      gTurnZones[1][i] = &gDuel.board[1][i];
    for (i = 0; i < 5; i++)
      gTurnZones[2][i] = &gDuel.board[2][i];
    for (i = 0; i < 5; i++)
      gTurnZones[3][i] = &gDuel.board[3][i];
    for (i = 0; i < 5; i++)
      gTurnZones[4][i] = &gDuel.hands[DUEL_PLAYER][i];
    gTurnDuelistBattleState[ACTIVE_DUELIST] = &gDuel.duelistbattleState[DUEL_PLAYER];
    gTurnDuelistBattleState[INACTIVE_DUELIST] = &gDuel.duelistbattleState[DUEL_OPPONENT];
    for (i = 0; i < 5; i++)
      gTurnHands[ACTIVE_DUELIST][i] = &gDuel.hands[DUEL_PLAYER][i];
    for (i = 0; i < 5; i++)
      gTurnHands[INACTIVE_DUELIST][i] = &gDuel.hands[DUEL_OPPONENT][i];
  }
  else {
    for (i = 0; i < 5; i++)
      gTurnZones[0][i] = &gDuel.board[3][i];
    for (i = 0; i < 5; i++)
      gTurnZones[1][i] = &gDuel.board[2][i];
    for (i = 0; i < 5; i++)
      gTurnZones[2][i] = &gDuel.board[1][i];
    for (i = 0; i < 5; i++)
      gTurnZones[3][i] = &gDuel.board[0][i];
    for (i = 0; i < 5; i++)
      gTurnZones[4][i] = &gDuel.hands[DUEL_OPPONENT][i];
    gTurnDuelistBattleState[ACTIVE_DUELIST] = &gDuel.duelistbattleState[DUEL_OPPONENT];
    gTurnDuelistBattleState[INACTIVE_DUELIST] = &gDuel.duelistbattleState[DUEL_PLAYER];
    for (i = 0; i < 5; i++)
      gTurnHands[ACTIVE_DUELIST][i] = &gDuel.hands[DUEL_OPPONENT][i];
    for (i = 0; i < 5; i++)
      gTurnHands[INACTIVE_DUELIST][i] = &gDuel.hands[DUEL_PLAYER][i];
  }
}

//this could be a non-static inline (ResetTempStage a few functions below)
static inline void ResetTempStage_inline (struct DuelCard *zone) {
    zone->tempStage = 0;
}

void ResetTempStagesForAllCards (void) {
  unsigned char i, j;
  for (i = 0; i < 4; i++)
    for (j = 0; j < 5; j++)
      ResetTempStage_inline(&gDuel.board[i][j]);
  for (i = 0; i < 2; i++)
    for (j = 0; j < 5; j++)
      ResetTempStage_inline(&gDuel.hands[i][j]);
}

void ClearZone (struct DuelCard *zone) {
  zone->id = CARD_NONE;
  zone->isFaceUp = 0;
  zone->isLocked = 0;
  zone->isDefending = 0;
  zone->unkTwo = 0;
  zone->unkThree = 0;
  ResetPermStage(zone);
  ResetTempStage(zone);
  zone->unk4 = 0;
  zone->willChangeSides = 0;
}

void sub_8040300 (unsigned char col, unsigned char fixedRow, u16 cardId) {
  gDuel.board[fixedRow][col].id = cardId;
}

u16 sub_8040324 (unsigned char col, unsigned char fixedRow) {
  return gDuel.board[fixedRow][col].id;
}

void FlipCardFaceUp (struct DuelCard *zone) {
  zone->isFaceUp = 1;
}

void FlipCardFaceDown (struct DuelCard *zone) {
  zone->isFaceUp = 0;
}

bool8 IsCardFaceUp (struct DuelCard *zone) {
  return zone->isFaceUp;
}

void ResetPermStage (struct DuelCard *zone) {
  zone->permStage = 0;
}

void IncrementPermStage (struct DuelCard *zone) {
  if (zone->permStage < 127)
    zone->permStage++;
}

void DecrementPermStage (struct DuelCard *zone) {
  if (zone->permStage > -128)
    zone->permStage--;
}

void IncreasePermStageByAmount (struct DuelCard *zone, unsigned char amt) {
  for (; amt; amt--)
    if (zone->permStage < 127)
      zone->permStage++;
}

//unused?
void DecreasePermStageByAmount (struct DuelCard *zone, unsigned char amt) {
  for (; amt; amt--)
    if (zone->permStage > -128)
      zone->permStage--;
}

void ResetTempStage (struct DuelCard *zone) {
  zone->tempStage = 0;
}

void IncrementTempStage (struct DuelCard *zone) {
  if (zone->tempStage < 127)
    zone->tempStage++;
}

void DecrementTempStage (struct DuelCard *zone) {
  if (zone->tempStage > -128)
    zone->tempStage--;
}

// unused?
void IncreaseTempStageByAmount (struct DuelCard *zone, unsigned char amt) {
  for (; amt; amt--)
    if (zone->tempStage < 127)
      zone->tempStage++;
}

// unused?
void DecreaseTempStageByAmount (struct DuelCard *zone, unsigned char amt) {
  for (; amt; amt--)
    if (zone->tempStage > -128)
      zone->tempStage--;
}

// unused?
void sub_8040470 (unsigned char col, unsigned char row, unsigned char arg2) {
  gDuel.board[row][col].unk4 |= sub_803F04C(arg2);
}

// unused?
void sub_80404A4 (unsigned char col, unsigned char row, unsigned char arg2) {
  gDuel.board[row][col].unk4 &= ~sub_803F04C(arg2);
}

// unused?
void BlockSummoning (unsigned char player) {
  gDuel.duelistbattleState[player].summoningBlocked = 1;
}

void BlockTurnSummoning (unsigned char currPlayer) {
  gTurnDuelistBattleState[currPlayer]->summoningBlocked = 1;
}

void UnblockSummoning (unsigned char player) {
  gDuel.duelistbattleState[player].summoningBlocked = 0;
}

void UnblockTurnSummoning (unsigned char currPlayer) {
  gTurnDuelistBattleState[currPlayer]->summoningBlocked = 0;
}

void LockMonsterCardsInRow (unsigned char turnRow) {
  unsigned char i;
  for (i = 0; i < 5; i++)
    if (gTurnZones[turnRow][i]->id != CARD_NONE && GetTypeGroup(gTurnZones[turnRow][i]->id) == TYPE_GROUP_MONSTER)
      gTurnZones[turnRow][i]->isLocked = 1;
}

void UnlockCardsInRow (unsigned char turnRow) {
  unsigned char i;
  for (i = 0; i < 5; i++)
    if (gTurnZones[turnRow][i]->id != CARD_NONE)
      gTurnZones[turnRow][i]->isLocked = 0;
}

// unused?
void sub_80405C4 (void) {
  unsigned char i, j;
  for (i = 0; i < 5; i++)
    for (j = 0; j < 5; j++)
      if (gTurnZones[i][j]->id != CARD_NONE)
        gTurnZones[i][j]->isLocked = 0;
}

void FlipAtkPosCardsFaceUp (unsigned char turnRow) {
  unsigned char i;
  for (i = 0; i < 5; i++)
    if (gTurnZones[turnRow][i]->id != CARD_NONE && !gTurnZones[turnRow][i]->isDefending)
      gTurnZones[turnRow][i]->isFaceUp = 1;
}

// unused?
void ToggleDefenseModeAtCoords (unsigned char col, unsigned char fixedRow) {
  if (!gDuel.board[fixedRow][col].isDefending)
    gDuel.board[fixedRow][col].isDefending = TRUE;
  else
    gDuel.board[fixedRow][col].isDefending = FALSE;
}

void SetPermStage (struct DuelCard *zone, int permStage) {
  zone->permStage = permStage;
}

int PermStage (struct DuelCard *zone) {
  return zone->permStage;
}

// unused?
void SetTempStage (struct DuelCard *zone, unsigned char tempStage) {
  zone->tempStage = tempStage;
}

// unused?
s8 GetTempStage (struct DuelCard *zone) {
  return zone->tempStage;
}

int GetFinalStage (struct DuelCard *zone) {
  int stage = zone->permStage + zone->tempStage;
  if (stage > 127)
    stage = 127;
  if (stage < -128)
    stage = -128;
  return (s8)stage;
}

//DuelLockCard, LockDuelCard?
void LockCard (struct DuelCard *zone) {
  zone->isLocked = 1;
}

void UnlockCard (struct DuelCard *zone) {
  zone->isLocked = 0;
}

bool32 IsCardLocked (struct DuelCard *zone) {
  return zone->isLocked;
}

// unused?
void sub_80406E0 (unsigned char col, unsigned char row) {
  gDuel.board[row][col].unk4 = 0;
}

// unused?
void sub_8040700 (unsigned char arg0) {
  gDuel.duelistbattleState[arg0].sorlTurns = 3;
}

// unused?
void sub_8040718 (unsigned char arg0) {
  if (gDuel.duelistbattleState[arg0].sorlTurns)
    gDuel.duelistbattleState[arg0].sorlTurns--;
}

void InitSorlTurns (unsigned char currOpponent) {
  gTurnDuelistBattleState[currOpponent]->sorlTurns = 3;
}

void DecrementSorlTurns (unsigned char currPlayer) {
  if (gTurnDuelistBattleState[currPlayer]->sorlTurns)
    gTurnDuelistBattleState[currPlayer]->sorlTurns--;
}

struct {
  u32 a;
  u16 b;
} extern gOamBuffer[];

extern u16 gE0D0F0[];
extern u16 g80DFDA4[];


u32 sub_804402C (unsigned char);
u16 sub_8043FFC (unsigned char);


// cursor oam data (same tile is used for all 4 corners, with HV flips)
void sub_804078C (void) {
  u16 ight;
  //top left
  gOamBuffer[0].a = ((sub_804402C(0) & 0xFF) | ((sub_8043FFC(0) << 16 & 0x01FF0000))) | 0x80000000;
  gOamBuffer[0].b = gE0D0F0[3] | 0xA800;

  // top right
  gOamBuffer[1].a = ((sub_804402C(1) & 0xFF) | ((sub_8043FFC(1) << 16 & 0x01FF0000))) | 0x90000000;
  gOamBuffer[1].b = gE0D0F0[3] | 0xA800;

  // bottom left
  gOamBuffer[2].a = ((sub_804402C(2) & 0xFF) | ((sub_8043FFC(2) << 16 & 0x01FF0000))) | 0xA0000000;
  gOamBuffer[2].b = gE0D0F0[3] | 0xA800;

  // bottom right
  gOamBuffer[3].a = ((sub_804402C(3) & 0xFF) | ((sub_8043FFC(3) << 16 & 0x01FF0000))) | 0xB0000000;
  ight = gE0D0F0[3];
  gOamBuffer[3].b = ight | 0xA800;
}

void sub_8040868 (void) {
  CpuCopy16(g80DFDA4, gPaletteBuffer + 256 + 160, 32);
}

//copy tiles to obj vram in 2D mode, 4bpp
void sub_8040880 (unsigned char* dest, unsigned char* src) {
  unsigned char i, j, k;
  for (i = 0; i < 4; i++) {
    for (j = 0; j < 4; j++)
      for (k = 0; k < 32; k++)
        *dest++ = *src++;
    dest += 0x380;
  }
}

void sub_80408BC (void) {
  u16* oam = (u16*)&gOamBuffer;
  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
}

extern unsigned char gDFBA4[];

// copy sprite data (tiles, oam, and palette) to buffers.
void sub_80408FC (void) {
  sub_8040880(&gBgVram.cbb4[gE0D0F0[3] * 32], gDFBA4);
  sub_8040868();
  sub_804078C();
}

// CopyDuelCard?
void CopyCard (struct DuelCard *dst, struct DuelCard *src) {
  dst->id = src->id;
  SetPermStage(dst, PermStage(src));
  ResetTempStage(dst);
  dst->unk4 = src->unk4;
  dst->isFaceUp = src->isFaceUp;
  dst->isLocked = src->isLocked;
  dst->isDefending = src->isDefending;
  dst->unkTwo = src->unkTwo;
  dst->unkThree = src->unkThree;
  dst->willChangeSides = src->willChangeSides;
}

extern struct DuelCard gSelectedCard;

void SelectZone (struct DuelCard *zone) {
  CopyCard(&gSelectedCard, zone);
}

void CopySelectedCardToZone (struct DuelCard *zone) {
  CopyCard(zone, &gSelectedCard);
}

extern u16 gRepeatedOrNewButtons;
extern u16 gNewButtons;

static unsigned char ProcessInput (void) {
  if (gRepeatedOrNewButtons & DPAD_UP)
    return 1;
  if (gRepeatedOrNewButtons & DPAD_DOWN)
    return 2;
  if (gRepeatedOrNewButtons & DPAD_LEFT)
    return 3;
  if (gRepeatedOrNewButtons & DPAD_RIGHT)
    return 4;
  if (gNewButtons & A_BUTTON)
    return 5;
  if (gNewButtons & L_BUTTON)
    return 6;
  if (gNewButtons & R_BUTTON)
    return 7;
  if (gNewButtons & B_BUTTON)
    return 8;
  if (gRepeatedOrNewButtons & START_BUTTON)
    return 0;
  if (gRepeatedOrNewButtons & SELECT_BUTTON)
    return 0;
  return 0;
}


void UpdateDuelGfxExceptField (void);
void sub_80082C0 (void);
void DisplayCardInfoBar (void);
void sub_8041E70 (unsigned char, unsigned char);
void MoveCursorUp (void);
void MoveCursorDown (void);
void MoveCursorLeft (void);
void MoveCursorRight (void);
void HandleAButtonAction (void);
void sub_8042F04 (void);
void sub_8041014 (void);
void sub_8044B2C (void);
void UpdateAllDuelGfx (void);
void HandleBButtonAction (void);

extern unsigned char gIsPlayerTurnOver;

void PlayerTurnMain (void) {
  gIsPlayerTurnOver = 0;
  UpdateDuelGfxExceptField();
  TryActivatingTurnEffects();
  if (IsDuelOver() == TRUE)
    return;
  TryActivatingPermanentEffects();
  if (IsDuelOver() == TRUE)
    return;
  sub_80082C0();
  while (IsDuelOver() != TRUE && gIsPlayerTurnOver != TRUE) {
    unsigned char y = gDuelCursor.currentY;
    switch (ProcessInput()) {
      case 1:
        MoveCursorUp();
        DisplayCardInfoBar();
        sub_8041E70(y, gDuelCursor.currentY);
        break;
      case 2:
        MoveCursorDown();
        DisplayCardInfoBar();
        sub_8041E70(y, gDuelCursor.currentY);
        break;
      case 3:
        MoveCursorLeft();
        DisplayCardInfoBar();
        sub_8041E70(y, gDuelCursor.currentY);
        break;
      case 4:
        MoveCursorRight();
        DisplayCardInfoBar();
        sub_8041E70(y, gDuelCursor.currentY);
        break;
      case 5:
        HandleAButtonAction();
        break;
      case 6:
        sub_8042F04();
        WaitForVBlank();
        sub_8041014();
        break;
      case 7:
        sub_8044B2C();
        UpdateAllDuelGfx();
        break;
      case 8:
        HandleBButtonAction();
        WaitForVBlank();
        break;
      case 9:
        DeclareLoser(0);
        break;
      case 10:
        DeclareLoser(1);
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
}

extern u16 g80F09D0[]; // black tile
extern u16 g80F0F00[];
extern u16 g80F3160[];
extern u16 g80F0A50[][30];

void sub_800800C(unsigned char, unsigned char, u16, u16);
u16 sub_08007FEC(unsigned char, unsigned char, u16);
void sub_8008BF8 (void * dest);
extern u16 gBG1HOFS;
extern u16 gBG1VOFS;


// init bg1 (bg1 is used for B button menu and card stats at the bottom, alpha blended)
// also used for duel text
void sub_8040B4C (void) {
  u16 i;
  u16 r6, r5;
  REG_BG1CNT = 0x5D09;
  gBG1HOFS = 0;
  gBG1VOFS = 0;
  CpuCopy16(g80F09D0, gBgVram.cbb2, 64);
  CpuCopy16(g80F0F00, &gPaletteBuffer[0x30], 32);
  sub_8008BF8(&gPaletteBuffer[0x40]);
  CpuCopy16(g80F3160, &gPaletteBuffer[0x70], 32);
  for (i = 0; i < 20; i++)
    CpuCopy16(g80F0A50[i], gBgVram.sbb1D[i], 64);
  r6 = sub_08007FEC(17, 19, 0xE800);
  r5 = sub_08007FEC(18, 19, 0xE800) & 0xFF00;
  for (i = 0; i < 2; i++)
    sub_800800C(i + 18, 19, 0xE800, r6);
  for (i = 0; i < 12; i++)
    sub_800800C(i + 8, 18, 0xE800, r5 | (i + 48));
  REG_WIN0H = 0xF0;
  REG_WIN0V = 0x8EA0;
  *((vu8*)REG_ADDR_WININ) = 0x36;
  REG_WINOUT = 0x1F;
}


