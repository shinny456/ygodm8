#include "global.h"

extern u16 gUnk_8088778[][30];
extern u8 g8DF811C[];
/*
void StatusMenu (void) {
  u8 i;
  u16 r8, r6;
  for (i = 0; i < 20; i++)
    CpuCopy16(gUnk_8088778[i], gBgVram.sbb1F, 60);
  r8 = gBgVram.sbb1F[1][1];
  r6 = gBgVram.sbb1F[2][2] & 0xFF00;
  for (i = 0; i < 7; i++) {
    u8 temp = i + 2;
    u16 temp2 = r6 | i + 25;
    void *ptr = &((u8*)&gBgVram)[(0x7C20 + temp) * 2];
    *(u16*)ptr = temp2;
  }
  for (i = 0; i < 3; i++) {
    u8 temp = i + 2;
    void *ptr = &((u8*)&gBgVram)[(0x7C40 + temp) * 2];
    *(u16*)ptr = r8;
  }
  for (i = 0; i < 8; i++) {
    u8 temp = i + 3;
    //sb = g8DF811C
    u16 temp2 = r6 | g8DF811C[i] + 0x5C;
    void *ptr;
    u16 temp3 = temp + 0x60;
    ptr = &((u8*)&gBgVram)[(0x7C00 + temp3) * 2];
    *(u16*)ptr = temp2;
  }
}*/
