#include "global.h"

//rename to gfx buffers or something similar?

extern u16 gBG0HOFS;
extern u16 gBG0VOFS;
extern u16 gBG1HOFS;
extern u16 gBG1VOFS;
extern u16 gBG2HOFS;
extern u16 gBG2VOFS;
extern u16 gBG3HOFS;
extern u16 gBG3VOFS;
extern u16 gBLDCNT;
extern u16 gBLDALPHA;
extern u16 gBLDY;
extern u16 gBG2PA;
extern u16 gBG2PB;
extern u16 gBG2PC;
extern u16 gBG2PD;
extern u16 gBG2X_L;
extern u16 gBG2X_H;
extern u16 gBG2Y_L;
extern u16 gBG2Y_H;

extern u8 gOamBuffer[];

void LoadBgOffsets (void) {
  REG_BG0HOFS = gBG0HOFS;
  REG_BG0VOFS = gBG0VOFS;
  REG_BG1HOFS = gBG1HOFS;
  REG_BG1VOFS = gBG1VOFS;
  REG_BG2HOFS = gBG2HOFS;
  REG_BG2VOFS = gBG2VOFS;
  REG_BG3HOFS = gBG3HOFS;
  REG_BG3VOFS = gBG3VOFS;
}

void LoadBlendingRegs (void) {
  REG_BLDCNT = gBLDCNT;
  REG_BLDALPHA = gBLDALPHA;
  REG_BLDY = gBLDY;
}

void LoadOam (void) {
  CpuFastCopy(gOamBuffer, (void*)OAM, OAM_SIZE);
}

void LoadPalettes (void) {
  CpuCopy16(gPaletteBuffer, (void*)PLTT, BG_PLTT_SIZE + OBJ_PLTT_SIZE);
}

static inline void Foo (void *src, void* dest, int size) {
  CpuCopy16(src, dest, size);
}

void LoadVRAM (void) {
  Foo(gBgVram.cbb0, (void*)BG_CHAR_ADDR(0), BG_CHAR_SIZE);
  Foo(gBgVram.cbb1, (void*)BG_CHAR_ADDR(1), BG_CHAR_SIZE);
  Foo(gBgVram.cbb2, (void*)BG_CHAR_ADDR(2), BG_CHAR_SIZE);
  Foo(gBgVram.sbb18, (void*)BG_CHAR_ADDR(3), BG_CHAR_SIZE);
  Foo(gBgVram.cbb4, (void*)BG_CHAR_ADDR(4), BG_CHAR_SIZE);
  Foo(gBgVram.cbb5, (void*)BG_CHAR_ADDR(5), BG_CHAR_SIZE);
}

void LoadAffineRegs (void) {
  REG_BG2PA = gBG2PA;
  REG_BG2PB = gBG2PB;
  REG_BG2PC = gBG2PC;
  REG_BG2PD = gBG2PD;
  REG_BG2X_L = gBG2X_L;
  REG_BG2X_H = gBG2X_H;
  REG_BG2Y_L = gBG2Y_L;
  REG_BG2Y_H = gBG2Y_H;
}

void LoadBgVRAM (void) {
  Foo(gBgVram.cbb0, (void*)BG_CHAR_ADDR(0), BG_CHAR_SIZE);
  Foo(gBgVram.cbb1, (void*)BG_CHAR_ADDR(1), BG_CHAR_SIZE);
  Foo(gBgVram.cbb2, (void*)BG_CHAR_ADDR(2), BG_CHAR_SIZE);
  Foo(gBgVram.sbb18, (void*)BG_CHAR_ADDR(3), BG_CHAR_SIZE);
}

void LoadCharblock0 (void) {
  Foo(gBgVram.cbb0, (void*)BG_CHAR_ADDR(0), BG_CHAR_SIZE);
}

void LoadCharblock1 (void) {
  Foo(gBgVram.cbb1, (void*)BG_CHAR_ADDR(1), BG_CHAR_SIZE);
}

void LoadCharblock2 (void) {
  Foo(gBgVram.cbb2, (void*)BG_CHAR_ADDR(2), BG_CHAR_SIZE);
}

void LoadCharblock3 (void) {
  Foo(gBgVram.sbb18, (void*)BG_CHAR_ADDR(3), BG_CHAR_SIZE);
}

void LoadObjVRAM (void) {
  Foo(gBgVram.cbb4, (void*)BG_CHAR_ADDR(4), BG_CHAR_SIZE);
  Foo(gBgVram.cbb5, (void*)BG_CHAR_ADDR(5), BG_CHAR_SIZE);
}

void LoadCharblock4 (void) {
  Foo(gBgVram.cbb4, (void*)BG_CHAR_ADDR(4), BG_CHAR_SIZE);
}

void LoadCharblock5 (void) {
  Foo(gBgVram.cbb5, (void*)BG_CHAR_ADDR(5), BG_CHAR_SIZE);
}

void DisableDisplay (void) {
  *(u16*)BG_PLTT = 0;
  REG_DISPCNT = 0;
}

//unused?
void sub_8045728 (void) {
  CpuFastCopy(&gOamBuffer[0x290], (void*)(OAM + 0x290), 0x168);
}
