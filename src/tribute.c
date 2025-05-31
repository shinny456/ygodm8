#include "global.h"

extern u8 gNumTributes;
void ResetNumTributes (void) {
  gNumTributes = 0;
}

void IncNumTributes (void) {
  gNumTributes++;
}

extern s8 gNumRequiredTributes[];
int sub_8045390 (u16 card) {
  if (GetTypeGroup(card) == TYPE_GROUP_MONSTER) {
    int requiredTributes;
    SetCardInfo(card);
    requiredTributes = gNumRequiredTributes[gCardInfo.level] - gNumTributes;
    if (requiredTributes < 0)
      requiredTributes = 0;
    //TODO: the function probably returns a u8 but it's declared 
    //      as int when called elsewhere
    return (u8)requiredTributes; 
  }
  return 0;
}

u8 GetNumRequiredRitualTributes (u16 card) {
  if (GetTypeGroup(card) == TYPE_GROUP_RITUAL) {
    int requiredTributes = GetRitualNumTributes(card) - gNumTributes;
    if (requiredTributes < 0)
      requiredTributes = 0;
    return requiredTributes;
  }
  return 0;
}

int GetNumRequiredTributes (u16 card) {
  SetCardInfo(card);
  return gNumRequiredTributes[gCardInfo.level];
}
