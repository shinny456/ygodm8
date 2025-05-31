#include "global.h"

extern unsigned char gFlags[]; // 50 * 8 flags: gFlags[NUM_FLAGS / 8 (CHAR_BIT?)]
extern u8 g8E0FD44[];

void InitFlags (void) {
  u8 i;
  for (i = 0; i < 50; i++)
    gFlags[i] = 0;
}

void SetFlag (u32 flag) {
  if (flag >= 400) // >= NUM_FLAGS
    return;
  gFlags[flag >> 3] |= g8E0FD44[flag & 7];
}

void ClearFlag (u32 flag) {
  gFlags[flag >> 3] &= ~g8E0FD44[flag & 7];
}

u32 CheckFlag (u32 flag) {
  if (gFlags[flag >> 3] & g8E0FD44[flag & 7])
    return 1;
  return 0;
}
