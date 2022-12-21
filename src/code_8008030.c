#include "global.h"
#include "gba/macro.h"
#include "gba/io_reg.h"
#include "gba/defines.h"

//share.c SDK 3.0

//filename: init_RAM?

static void InitWRAM (void);
void InitGfxRAM (void);
static void InitVRAM (void);
static void InitOAM (void);
static void InitPalRAM (void);

// ZeroRAM(s)?
void InitAllRAM (void) {
  InitWRAM();
  InitGfxRAM();
}

//ZeroWRAM?
static void InitWRAM (void) {
  DmaFill32(3, 0, EWRAM_START, 0x40000);
  DmaFill32(3, 0, IWRAM_START, 0x7E00);
}

void InitGfxRAM (void) {
  InitVRAM();
  InitOAM();
  InitPalRAM();
}

static void InitVRAM (void) {
  DmaFill16(3, 0, VRAM, 0x18000);
}

static void InitOAM (void) {
  u16* oam = (u16*)OAM;
  int i;
  for (i = 0; i < 32; i++) {
    *oam++ = 0x200;
    *oam++ = 0;
    *oam++ = 0;
    *oam++ = 0x100;

    *oam++ = 0x200;
    *oam++ = 0;
    *oam++ = 0;
    *oam++ = 0;

    *oam++ = 0x200;
    *oam++ = 0;
    *oam++ = 0;
    *oam++ = 0;

    *oam++ = 0x200;
    *oam++ = 0;
    *oam++ = 0;
    *oam++ = 0x100;
  }
}

static void InitPalRAM (void) {
  DmaFill16(3, 0, PLTT, 0x400);
}
