#include "global.h"

// RNG module uses LFSR (Linear Feedback Shift Register)

extern u32 gLfsrState; // main rng state/seed
extern u32 gLfsrStateBackup;
u8 LfsrNextBit (void);

// consumes 16 bits (0-65536)
u16 LfsrNextWord (void) {
  u8 r4 = 0, i;
  u16 r6;
  for (i = 0; i < 8; i++) {
    r4 <<= 1;
    r4 |= LfsrNextBit();
  }
  r6 = r4;
  r4 = 0;
  for (i = 0; i < 8; i++) {
    r4 <<= 1;
    r4 |= LfsrNextBit();
  }
  r6 <<= 8;
  return r6 | r4;
}

// reset bit stream for reproducability
void ResetLfsrStateBit (void) {
  gLfsrState = 1;
}

// consumes 8 bits (0–255)
u8 LfsrNextByte (void) {
  u8 r4 = 0, i;
  for (i = 0; i < 8; i++) {
    r4 <<= 1;
    r4 |= LfsrNextBit();
  }
  return r4;
}

// core bit generator: returns a single pseudorandom bit
u8 LfsrNextBit (void) {
  if (gLfsrState & 0x80000000) {
    gLfsrState = (gLfsrState ^ 0x10000) << 1 | 1;
    return 1;
  }
  gLfsrState <<= 1;
  return 0;
}

/*
int RandRangeU8 (u8 min, u8 max) {
  u8 r4, i;
  int temp;
  if (min == max)
    return min;
  r4 = 0;
  i = 0;
  temp = max - min;
  for (; i < 8; i++) {
    r4 <<= 1;
    r4 |= LfsrNextBit();
  }
  return (u8)(r4 % (temp + 1) + min);
}*/

// generates u8 in range
NAKED
int RandRangeU8 (u8 min, u8 max) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	lsls r1, r1, #0x18\n\
	lsrs r1, r1, #0x18\n\
	cmp r6, r1\n\
	bne _0805626A\n\
	adds r0, r6, #0\n\
	b _08056296\n\
_0805626A:\n\
	movs r4, #0\n\
	movs r5, #0\n\
	subs r7, r1, r6\n\
_08056270:\n\
	lsls r0, r4, #0x19\n\
	lsrs r4, r0, #0x18\n\
	bl LfsrNextBit\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #7\n\
	bls _08056270\n\
	adds r0, r4, #0\n\
	adds r1, r7, #1\n\
	bl __modsi3\n\
	adds r0, r6, r0\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
_08056296:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

// generates u16 in range
u16 RandRangeU16 (u16 min, u16 max) {
  min += LfsrNextWord() % (max - min + 1);
  return min;
}

// backup current state and use a new seed
void SaveLfsrState (u32 seed) {
  gLfsrStateBackup = gLfsrState;
  gLfsrState = seed;
}

// restore state from backup
void RestoreLfsrState (void) {
  gLfsrState = gLfsrStateBackup;
}
