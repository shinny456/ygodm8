#include "global.h"

extern u16 gPressedButtons;
extern u16 gNewButtons;
extern u16 gUnk2021DCC;
extern u8 gUnk2021DC8;

void sub_802612C (void) {
  if (gNewButtons & KEYS_MASK) {
    gUnk2021DCC = gNewButtons;
    gUnk2021DC8 = 20;
  }
  else if (gUnk2021DC8) {
    gUnk2021DCC = 0;
    gUnk2021DC8--;
  }
  else {
    gUnk2021DCC = gPressedButtons;
    gUnk2021DC8 = 0;
  }
}

void sub_802618C (void) {
  if (gNewButtons & KEYS_MASK) {
    gUnk2021DCC = gNewButtons;
    gUnk2021DC8 = 20;
  }
  else if (gUnk2021DC8) {
    gUnk2021DCC = 0;
    gUnk2021DC8--;
  }
  else {
    gUnk2021DCC = gPressedButtons;
    gUnk2021DC8 = 3;
  }
}
