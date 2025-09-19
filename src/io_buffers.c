#include "global.h"

//TODO: rename to gfx_reg_buffers.c

extern u8 gOamBuffer[]; //TODO

unsigned short gBG0HOFS;
unsigned short gBG0VOFS;
unsigned short gBG1HOFS;
unsigned short gBG1VOFS;
unsigned short gBG2HOFS;
unsigned short gBG2VOFS;
unsigned short gBG3HOFS;
unsigned short gBG3VOFS;
unsigned short gBG2PA;
unsigned short gBG2PB;
unsigned short gBG2PC;
unsigned short gBG2PD;
unsigned short gBG2X_L;
unsigned short gBG2X_H;
unsigned short gBG2Y_L;
unsigned short gBG2Y_H;
unsigned short gBLDCNT;
unsigned short gBLDALPHA;
unsigned short gBLDY;

//TODO: LoadBgOffsetRegs
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

//TODO: OAM (
void LoadOam (void) {
  CpuFastCopy(gOamBuffer, (void*)OAM, OAM_SIZE);
}

void LoadPalettes (void) {
  CpuCopy16(gPaletteBuffer, (void*)PLTT, BG_PLTT_SIZE + OBJ_PLTT_SIZE);
}

static inline void Copy16 (void* src, void* dest, int size) {
  CpuCopy16(src, dest, size);
}

void LoadVRAM (void) {
  Copy16(gBgVram.cbb0, (void*)BG_CHAR_ADDR(0), BG_CHAR_SIZE);
  Copy16(gBgVram.cbb1, (void*)BG_CHAR_ADDR(1), BG_CHAR_SIZE);
  Copy16(gBgVram.cbb2, (void*)BG_CHAR_ADDR(2), BG_CHAR_SIZE);
  Copy16(gBgVram.sbb18, (void*)BG_CHAR_ADDR(3), BG_CHAR_SIZE);
  Copy16(gBgVram.cbb4, (void*)BG_CHAR_ADDR(4), BG_CHAR_SIZE);
  Copy16(gBgVram.cbb5, (void*)BG_CHAR_ADDR(5), BG_CHAR_SIZE);
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
  Copy16(gBgVram.cbb0, (void*)BG_CHAR_ADDR(0), BG_CHAR_SIZE);
  Copy16(gBgVram.cbb1, (void*)BG_CHAR_ADDR(1), BG_CHAR_SIZE);
  Copy16(gBgVram.cbb2, (void*)BG_CHAR_ADDR(2), BG_CHAR_SIZE);
  Copy16(gBgVram.sbb18, (void*)BG_CHAR_ADDR(3), BG_CHAR_SIZE);
}

void LoadCharblock0 (void) {
  Copy16(gBgVram.cbb0, (void*)BG_CHAR_ADDR(0), BG_CHAR_SIZE);
}

void LoadCharblock1 (void) {
  Copy16(gBgVram.cbb1, (void*)BG_CHAR_ADDR(1), BG_CHAR_SIZE);
}

void LoadCharblock2 (void) {
  Copy16(gBgVram.cbb2, (void*)BG_CHAR_ADDR(2), BG_CHAR_SIZE);
}

void LoadCharblock3 (void) {
  Copy16(gBgVram.sbb18, (void*)BG_CHAR_ADDR(3), BG_CHAR_SIZE);
}

//TODO: LoadObjectVRAM?
void LoadObjVRAM (void) {
  Copy16(gBgVram.cbb4, (void*)BG_CHAR_ADDR(4), BG_CHAR_SIZE);
  Copy16(gBgVram.cbb5, (void*)BG_CHAR_ADDR(5), BG_CHAR_SIZE);
}

void LoadCharblock4 (void) {
  Copy16(gBgVram.cbb4, (void*)BG_CHAR_ADDR(4), BG_CHAR_SIZE);
}

void LoadCharblock5 (void) {
  Copy16(gBgVram.cbb5, (void*)BG_CHAR_ADDR(5), BG_CHAR_SIZE);
}

void DisableDisplay (void) {
  *(unsigned short*)BG_PLTT = 0;
  REG_DISPCNT = 0;
}

//unused?
static void sub_8045728 (void) {
  CpuFastCopy(&gOamBuffer[0x290], (void*)(OAM + 0x290), 0x168);
}
