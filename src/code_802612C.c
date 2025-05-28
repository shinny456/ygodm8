#include "global.h"

extern u16 gPressedButtons;
extern u16 gNewButtons;
extern u16 gFilteredInput;
extern u8 gInputRepeatTimer;

// suppress held-button repeats
void UpdateFilteredInput_NoRepeat (void) {
  if (gNewButtons & ANY_BUTTON) {
    // store new button presses and set a 20-frame delay
    gFilteredInput = gNewButtons;
    gInputRepeatTimer = 20;
  }
  else if (gInputRepeatTimer) {
    // no new press, but delay is still active
    gFilteredInput = 0;
    gInputRepeatTimer--;
  }
  else {
    // delay expires, fall back to held buttons
    gFilteredInput = gPressedButtons;
    gInputRepeatTimer = 0; // don't re-activate held buttons
  }
}

// allow held-button repeats (every 4 frames) after an initial 20 frame window
void UpdateFilteredInput_WithRepeat (void) {
  if (gNewButtons & ANY_BUTTON) {
    gFilteredInput = gNewButtons;
    gInputRepeatTimer = 20;
  }
  else if (gInputRepeatTimer) {
    gFilteredInput = 0;
    gInputRepeatTimer--;
  }
  else {
    gFilteredInput = gPressedButtons;
    gInputRepeatTimer = 3; // held buttons act like new input every 4 frames
  }
}
