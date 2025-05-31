#include "global.h"

static unsigned GetLifePointsOutsideDuel (void);

void InitDuelLifePoints (void) {
  if (gDuelType == DUEL_TYPE_INGAME) {
    gDuelLifePoints[DUEL_PLAYER] = GetLifePointsOutsideDuel();
    gDuelLifePoints[DUEL_OPPONENT] = gDuelData.duelist.lifePoints;
  }
  else {
    gDuelLifePoints[DUEL_PLAYER] = gDuelData.duelist.playerLp;
    gDuelLifePoints[DUEL_OPPONENT] = gDuelData.duelist.lifePoints;
  }
}

void SetDuelLifePoints (unsigned char i, unsigned short lifePoints) {
  gDuelLifePoints[i] = lifePoints;
}

void InitLifePoints (void) {
  gLifePointsOutsideDuel = 8000;
}

//unused?
static void sub_8048CC8 (unsigned lifePoints) {
  if (lifePoints > 65000)
    lifePoints = 65000;
  gLifePointsOutsideDuel = lifePoints;
}

static unsigned GetLifePointsOutsideDuel (void) {
  return gLifePointsOutsideDuel;
}

void CapLifePointsAfterDuel (void) {
  gLifePointsOutsideDuel = gDuelLifePoints[DUEL_PLAYER];
  if (gLifePointsOutsideDuel > 8000)
    gLifePointsOutsideDuel = 8000;
}

void FullyRestoreLifePoints (void) {
  if (gLifePointsOutsideDuel < 8000)
    gLifePointsOutsideDuel = 8000;
}

//unused?
static void sub_8048D20 (unsigned char i, unsigned short arg1) {
  if (gDuelLifePoints[i] + arg1 >= 65000)
    gDuelLifePoints[i] = 65000;
  else
    gDuelLifePoints[i] += arg1;
}

//unused?
static void sub_8048D48 (unsigned char i, unsigned short arg1) {
  if (gDuelLifePoints[i] - arg1 <= 0)
    gDuelLifePoints[i] = 0;
  else
    gDuelLifePoints[i] -= arg1;
}
