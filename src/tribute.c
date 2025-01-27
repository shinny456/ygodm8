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
  if (GetTypeGroup(card) == 1) {
    int requiredTribs;
    SetCardInfo(card);
    requiredTribs = gNumRequiredTributes[gCardInfo.level] - gNumTributes;
    if (requiredTribs < 0)
      requiredTribs = 0;
    //TODO: the function probably returns a u8 but it's declared 
    //      as int when called elsewhere
    return (u8)requiredTribs; 
  }
  return 0;
}

//ritual tributes required
u8 sub_80453D8 (u16 card) {
  if (GetTypeGroup(card) == 4) {
    int requiredTribs;
    requiredTribs = GetRitualNumTributes(card) - gNumTributes;
    if (requiredTribs < 0)
      requiredTribs = 0;
    return requiredTribs;
  }
  return 0;
}

int sub_8045410 (u16 card) {
  SetCardInfo(card);
  return gNumRequiredTributes[gCardInfo.level];
}
