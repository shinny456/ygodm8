#include "global.h"

static unsigned sub_8048CE0 (void);

void InitDuelLifePoints (void) {
  if (!gDuelType /*== DUEL_TYPE_INGAME_NORMAL*/) {
    gDuelLifePoints[0] = sub_8048CE0();
    gDuelLifePoints[1] = gDuelData.duelist.lifePoints;
  }
  else {
    gDuelLifePoints[0] = gDuelData.duelist.playerLp;
    gDuelLifePoints[1] = gDuelData.duelist.lifePoints;
  }
}

void SetDuelLifePoints (unsigned char i, unsigned short lifePoints) {
  gDuelLifePoints[i] = lifePoints;
}

void sub_8048CB8 (void) {
  gUnk02024254 = 8000; //outside of duel life points
}

//unused?
static void sub_8048CC8 (unsigned lifePoints) {
  if (lifePoints > 65000)
    lifePoints = 65000;
  gUnk02024254 = lifePoints;
}

static unsigned sub_8048CE0 (void) {
  return gUnk02024254;
}

void sub_8048CEC (void) {
  gUnk02024254 = gDuelLifePoints[0];
  if (gUnk02024254 > 8000)
    gUnk02024254 = 8000;
}

void sub_8048D08 (void) {
  if (gUnk02024254 < 8000)
    gUnk02024254 = 8000;
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
