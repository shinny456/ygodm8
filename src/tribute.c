#include "global.h"

unsigned char gNumTributes;

static CONST_DATA signed char sNumRequiredTributes[] = {
  [0] = 0,
  [1] = 0,
  [2] = 0,
  [3] = 0,
  [4] = 0,
  [5] = 1,
  [6] = 1,
  [7] = 2,
  [8] = 2,
  [9] = 3,
  [10] = 3,
  [11] = 3,
  [12] = 3
};

void ResetNumTributes (void) {
  gNumTributes = 0;
}

void IncrementNumTributes (void) {
  gNumTributes++;
}

int GetMonsterNumRequiredTributes (unsigned short cardId) {
  if (GetTypeGroup(cardId) == TYPE_GROUP_MONSTER) {
    int requiredTributes;
    SetCardInfo(cardId);
    requiredTributes = sNumRequiredTributes[gCardInfo.level] - gNumTributes;
    if (requiredTributes < 0)
      requiredTributes = 0;
    return (unsigned char)requiredTributes;
  }
  return 0;
}

unsigned char GetRitualNumRequiredTributes (unsigned short cardId) {
  if (GetTypeGroup(cardId) == TYPE_GROUP_RITUAL) {
    int requiredTributes = GetRitualNumTributes(cardId) - gNumTributes;
    if (requiredTributes < 0)
      requiredTributes = 0;
    return requiredTributes;
  }
  return 0;
}

int GetNumRequiredTributes (unsigned short cardId) {
  SetCardInfo(cardId);
  return sNumRequiredTributes[gCardInfo.level];
}
