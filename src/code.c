#include "global.h"
#include "duel.h"
#include "gba/macro.h"
#include "gba/syscall.h"

extern u16 gBG1VOFS;
extern u16 gBLDALPHA;
extern u16 gBG0VOFS;

struct UnkStruct2018800
{
    u32 unk0;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u8 unkA;
};

extern struct UnkStruct2018800* g8DF758C;
extern u16 (*gCreditsTilemaps[])[30];
extern u8 g8063FA0[];
/*
void sub_8000224(void) {
  sub_8000724();
  while (1) {
    switch (g8DF758C->unk0) {
      case 0:
        if (++g8DF758C->unk6 > 60) {
          g8DF758C->unkA = 0;
          gBLDALPHA = (16 - g8DF758C->unkA) << 8 | g8DF758C->unkA;
          LoadBlendingRegs();
          g8DF758C->unk6 = 0;
          g8DF758C->unk0 = 1;
        }
        break;
      case 1:
        gBG0VOFS = 448;
        LoadBgOffsets();
        g8DF758C->unk0 = 2;
        break;
      case 2:
        if (g8DF758C->unk4 % 2 == 0) {
          gBG0VOFS++;
          gBG1VOFS++;
          LoadBgOffsets();
        }
        if (g8DF758C->unkA < 16 && g8DF758C->unk4 % 8 == 0) {
          g8DF758C->unkA++;
          gBLDALPHA = (16 - g8DF758C->unkA) << 8 | g8DF758C->unkA;
          LoadBlendingRegs();
        }
        if (gBG0VOFS % 512 == 0) {
          if (g8DF758C->unk8 < 16)
            g8DF758C->unk8++;
          else
            g8DF758C->unk8 = 0;
          if (g8DF758C->unk8 < 15) {
            u8 i;
            CpuFastFill(0, gBgVram.sbb1E, 0x800);
            for (i = 0; i < g8063FA0[g8DF758C->unk8 * 2 + 1]; i++)
              CpuCopy16(gCreditsTilemaps[g8DF758C->unk8][i], &gBgVram.sbb1E[g8063FA0[g8DF758C->unk8 * 2] + i], 62);
            switch (g8DF758C->unk8) {
              case 10:
                sub_80008EC(2);
                break;
              case 12:
                sub_80008EC(0);
                break;
            }
            LoadBgVRAM();
            gBG0VOFS = 0;
            g8DF758C->unk0 = 3;
          }
        }
        break;
      case 3:
        LoadBgOffsets();
        if (++g8DF758C->unk6 > 270) {
          if (g8DF758C->unk8 < 16) {
            g8DF758C->unk0 = 4;
            gBG1VOFS = 448;
            LoadBgOffsets();
          }
          else
            g8DF758C->unk0 = 9;
          g8DF758C->unk6 = 0;
        }
        break;
      case 4:
        if (g8DF758C->unk4 % 2 == 0) {
          gBG0VOFS++;
          gBG1VOFS++;
          LoadBgOffsets();
        }
        if (g8DF758C->unkA != 0 && g8DF758C->unk4 % 8 == 0) {
          g8DF758C->unkA--;
          gBLDALPHA = (16 - g8DF758C->unkA) << 8 | g8DF758C->unkA;
          LoadBlendingRegs();
        }
        if (gBG1VOFS % 512 == 0) {
          u8 i;
          if (g8DF758C->unk8 < 16)
            g8DF758C->unk8++;
          else
            g8DF758C->unk8 = 0;
          CpuFastFill(0, gBgVram.sbb1F, 0x800);
          for (i = 0; i < g8063FA0[g8DF758C->unk8 * 2 + 1]; i++)
            CpuCopy16(gCreditsTilemaps[g8DF758C->unk8][i], &gBgVram.sbb1F[g8063FA0[g8DF758C->unk8 * 2] + i], 62);
          switch (g8DF758C->unk8) {
            case 10:
              sub_80008EC(1);
              break;
            case 12:
              sub_80008EC(0);
              break;
          }
          LoadBgVRAM();
          gBG1VOFS = 0;
          g8DF758C->unk0 = 7;
        }
        break;
    }
    //_0800070E
  }
}*/


/*
_0800070C:
	str r0, [r1]
_0800070E:
	bl sub_8008220
	ldr r0, _08000720
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]*/
