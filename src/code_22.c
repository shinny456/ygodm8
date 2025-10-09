#include "global.h"

//this file might be part of main.c

static void sub_8020390 (void);


void sub_80201AC (u8);
void sub_802018C (u8);
void sub_80201CC (void);
void sub_80201E4 (void);

/*
struct {unsigned long unk0; unsigned short unk4;} gOamBuffer[];
doesn't work
*/
extern unsigned long gOamBuffer[];
extern unsigned short gUnk2021D00;
extern unsigned char gUnk2021D04;
extern unsigned short g8E00DDA[];
extern unsigned short g80BE634[][30];
extern unsigned short gVr[];


extern const unsigned char* gE00DF4;
extern const unsigned char* gE00DF8;
extern const unsigned char* gE00DFC;
extern const unsigned char* gE00E00;
extern const unsigned char* gE00E04;
extern const unsigned char* gE00E08;
extern const unsigned char* gE00E0C;
extern const unsigned char* gE00E10;
extern const unsigned char* gE00E14;
extern const unsigned char* gE00E18;
extern const unsigned char* gE00E1C;
extern const unsigned char* gE00E20;
extern const unsigned char* gE00E24;
extern const unsigned char* gE00E28;
extern const unsigned char* gE00E2C;

// nonsensical 2d array?
// these funcs seem to be unused.
// UB: these funcs access g2021C90 out of bounds.
// TODO: UBFIX: expand array?
// These are probably part of the debug screen; arrays were likely shrunk
// since they are not needed in normal gameplay?
extern const u8 g80BE630[];
extern const u8 g80BE631[];
extern const u8 g80BE632[];
extern struct {u16 unk0, unk2;} g2021C90[][1];


u8 sub_8020084 (void) {
  u32 i;
  u8 r3 = 0;
  for (i = 0; g80BE630[i] != 0xFF; i++) {
    if (g2021C90[g80BE630[i]][1].unk0 < 5)
      return r3;
  }
  r3++;
  for (i = 0; g80BE631[i] != 0xFF; i++) {
    if (g2021C90[g80BE631[i]][1].unk0 < 5)
      return r3;
  }
  r3++;
  for (i = 0; g80BE632[i] != 0xFF; i++) {
   if (g2021C90[g80BE632[i]][1].unk0 < 5)
      return r3;
  }
  r3++;
  return r3;
}

void sub_802012C (u8 arg0, u8 unused, u8 arg2) {
  if (arg0 > 24)
    return;
  if (arg2 == 1)
    sub_802018C(arg0);
  else
    sub_80201AC(arg0);
}

void sub_8020150 (u8 arg0) {
  if (arg0 == 1)
    sub_80201CC();
  else
    sub_80201E4();
}

void sub_8020168 (void) {
  u32 i;
  g2021C90[0][0].unk0 = 0;
  g2021C90[0][0].unk2 = 0;
  for (i = 0; i < 25; i++) {
    g2021C90[i + 1][0].unk0 = 0;
    g2021C90[i + 1][0].unk2 = 0;
  }
}

void sub_8020188 (void) {
}

void sub_802018C (unsigned char arg0) {
  if (g2021C90[1][arg0].unk0 < 1000)
    g2021C90[1][arg0].unk0++;
}

void sub_80201AC (unsigned char arg0) {
  if (g2021C90[1][arg0].unk2 < 1000)
    g2021C90[1][arg0].unk2++;
}

void sub_80201CC (void) {
  if (g2021C90[0][0].unk0 < 1000)
    g2021C90[0][0].unk0++;
}

void sub_80201E4 (void) {
  if (g2021C90[0][0].unk2 < 1000)
    g2021C90[0][0].unk2++;
}

void sub_80201FC (void) {
  REG_BG2CNT = 0x5E02;
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x1E00, gE00E28, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x20, gE00DF4, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xC0, gE00DF8, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x1A0, gE00DFC, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x200, gE00E00, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x260, gE00E04, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x300, gE00E08, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x380, gE00E0C, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x4A0, gE00E10, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x5E0, gE00E14, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x6A0, gE00E18, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x780, gE00E1C, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x820, gE00E20, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x8E0, gE00E24, 1);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0x10000, gE00E2C, 1);
  gPaletteBuffer[0] = 0;
  gPaletteBuffer[0x30] = 0;
  gPaletteBuffer[0x31] = 0x7FFF;
  gPaletteBuffer[0x100] = 0;
  gPaletteBuffer[0x101] = 0x7FFF;
  sub_8020390();
}

static void sub_8020390 (void) {
  int i;
  //UB: copying past source buffer?
  for (i = 0; i < 20; i++)
    CpuCopy16(g80BE634[i], gVr + 0x7800 + i * 32, 64);
  //TODO: macroize?
  ConvertU16ToDigitBuffer(gUnk2021D00, 0);
  gVr[0x7840] = gDigitBufferU16[0] | 0x30F0;
  gVr[0x7841] = gDigitBufferU16[1] | 0x30F0;
  gVr[0x7842] = gDigitBufferU16[2] | 0x30F0;
  gVr[0x7843] = gDigitBufferU16[3] | 0x30F0;
  gVr[0x7844] = gDigitBufferU16[4] | 0x30F0;
}

static void sub_8020404 (void) {
  CpuCopy16(gVramBuffer, (void*)0x6000000, 0x4000);
  CpuCopy16(gVramBuffer + 0x10000, (void*)0x6010000, 0x400);
  CpuCopy16(gVramBuffer + 0xF000, (void*)0x600F000, 0x800);
  CpuCopy16(gPaletteBuffer, (void*)0x5000000, 0x400);
  LoadOam();
}

static void sub_8020460 (void) {
  CpuCopy16(gVramBuffer, (void*)0x6000000, 0x4000);
  CpuCopy16(gVramBuffer + 0xF000, (void*)0x600F000, 0x800);
}

static void sub_8020494 (void) {
  gOamBuffer[0] = g8E00DDA[gUnk2021D04] & 0xFF;
  *(unsigned short*)&gOamBuffer[1] = 0x800;
}
//debug menu stuff
static void sub_80204BC (void) {
  CpuFill16(0, gVramBuffer, 0x2000);
  CpuFill16(0, gVramBuffer + 0xF000, 0x800);
  CpuFill16(0, gOamBuffer, 0x400);
  gBLDCNT = 0;
  gBLDALPHA = 0;
  gBLDY = 0;
  LoadBlendingRegs();
  REG_DISPCNT = DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
  REG_BG2VOFS = 0;
  REG_BG2HOFS = 0;
  sub_80201FC();
  sub_8020404();
  WaitForVBlank();
}
