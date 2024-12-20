#include "global.h"
#include "duel.h"
#include "gba/syscall.h"
#include "gba/macro.h"

extern unsigned short gVr[];
extern unsigned short gOamBuffer[];


void sub_803ED8C (void);
void ClearBackgroundCbbs (void);
void ClearCbb0Buffer (void);
void ClearCbb1Buffer (void);
void ClearCbb2Buffer (void);
void ClearCbb3Buffer (void);
void sub_803EE44 (void);
void ClearPaletteBuffers (void);
void ClearBackgroundPaletteBuffer (void);
void ClearSpritePaletteBuffer (void);
void ClearOamBuffer (void);


void ClearGraphicsBuffers (void) {
  sub_803ED8C();
  ClearPaletteBuffers();
  ClearOamBuffer();
}

void sub_803ED8C (void) {
  ClearBackgroundCbbs();
  sub_803EE44();
}

void ClearBackgroundCbbs (void) {
  ClearCbb0Buffer();
  ClearCbb1Buffer();
  ClearCbb2Buffer();
  ClearCbb3Buffer();
}

void ClearCbb0Buffer (void) {
  CpuFill16(0, gVr, 0x4000);
}

void ClearCbb1Buffer (void) {
  CpuFill16(0, gVr + 0x2000, 0x4000);
}

void ClearCbb2Buffer (void) {
  CpuFill16(0, gVr + 0x4000, 0x4000);
}

void ClearCbb3Buffer (void) {
  CpuFill16(0, gVr + 0x6000, 0x4000);
}

void sub_803EE44 (void) {
  CpuFill16(0, gVr + 0x8000, 0x4000);
  CpuFill16(0, gVr + 0xA000, 0x4000);
}

void ClearPaletteBuffers (void) {
  ClearBackgroundPaletteBuffer();
  ClearSpritePaletteBuffer();
}

void ClearBackgroundPaletteBuffer (void) {
  CpuFill16(0, g02000000.bg, 512);
}

void ClearSpritePaletteBuffer (void) {
  CpuFill16(0, g02000000.obj, 512);
}

void ClearOamBuffer (void) {
  CpuFill16(0, gOamBuffer, 1024);
}

void sub_803EEFC (unsigned char arg0, const unsigned char* arg1, unsigned short arg2) {
  unsigned char i;
  unsigned short* r5;
  switch (arg0) {
    case 0:
      r5 = gVr + 0x8000;
      break;
    case 1:
      r5 = gVr + 0xA000;
      break;
    case 2:
      r5 = gVr + 0x8100;
      break;
    case 3:
      r5 = gVr + 0xA100;
      break;
    default:
      r5 = gVr + 0x8000;
      break;
  }
  for (i = 0; i < arg2 / 16; i++)
    CpuCopy16(arg1 + i * 512, r5 + i * 512, 512);
}
