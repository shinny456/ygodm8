#include "global.h"
#include "duel.h"
#include "gba/syscall.h"
#include "gba/io_reg.h"
#include "gba/macro.h"

extern u8 g2020DC8;
extern u8 g2020DD0;
extern u8 g2020DCC;

extern u16 gKeyState;
extern u16 gUnk2020DFC;

extern u16 gUnk_8DF79F8[];
extern u8 gUnk_8DF7A18[];

extern struct Unk_8DF7A28 {
  u16 unk0;
  u8 filler2[0x21];
  u8 unk23;
  u8 unk24;
} * gUnk_8DF7A28;

extern u8 gUnk_2018800[];


u8 sub_80056CC(u8);
void sub_80054C4(u8);
void sub_80056AC (void);
void sub_80052E4 (u8);
void sub_800521C (u8);
void sub_80056F8 (void);
void sub_8005590 (void);
void sub_803ED78 (void);
void sub_8004F90 (u8, u8);

/*
void WorldMapMain (void) {
  u8 r4 = sub_80056CC(g2020DC8);
  u8 r7 = g2020DD0 & 0xF;
  sub_8004F90(r4, r7);
  PlayMusic(3);
  while (!(gUnk2020DFC & 3)) {
    if (gKeyState & 0xF0) {
      if (gUnk_8DF7A28->unk0 & 0x60)
        do {
          if (r4)
            r4--;
          else
            r4 = 12;
          PlayMusic(0x36);
        } while (!(gUnk_8DF79F8[r7] >> gUnk_8DF7A18[r4] & 1));
      else if (gUnk_8DF7A28->unk0 & 0x90)
        do {
          if (r4 < 12)
            r4++;
          else
            r4 = 0;
          PlayMusic(0x36);
        } while (!(gUnk_8DF79F8[r7] >> gUnk_8DF7A18[r4] & 1));
      sub_80054C4(gUnk_8DF7A18[r4]);
    }
    sub_80056AC();
    sub_800521C(gUnk_8DF7A18[r4]);
    sub_80052E4(r7);
    LoadOam();
    LoadPalettes();
    sub_8008220();
    sub_8005590();
  }
  PlayMusic(0x37);
  sub_80056F8();
  sub_803ED78();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  sub_8045718();
  g2020DCC = gUnk_8DF7A18[r4];
}*/

NAKED
void WorldMapMain (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	ldr r0, _08004E90\n\
	ldrb r0, [r0]\n\
	bl sub_80056CC\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	ldr r0, _08004E94\n\
	ldrb r0, [r0]\n\
	movs r7, #0xf\n\
	ands r7, r0\n\
	adds r0, r4, #0\n\
	adds r1, r7, #0\n\
	bl sub_8004F90\n\
	movs r0, #3\n\
	bl PlayMusic\n\
	ldr r6, _08004E98\n\
	ldr r0, _08004E9C\n\
	mov r8, r0\n\
	b _08004F4A\n\
	.align 2, 0\n\
_08004E90: .4byte 0x02020DC8\n\
_08004E94: .4byte 0x02020DD0\n\
_08004E98: .4byte gUnk_8DF7A18\n\
_08004E9C: .4byte gUnk_8DF79F8\n\
\n\
\n\
\n\
_08004EA0:\n\
	ldr r0, _08004ECC\n\
	ldrh r1, [r0]\n\
	movs r0, #0xf0\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08004F28\n\
	ldr r0, _08004ED0\n\
	ldr r0, [r0]\n\
	ldrh r1, [r0]\n\
	movs r0, #0x60\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08004EEE\n\
	lsls r0, r7, #1\n\
	mov r1, r8\n\
	adds r5, r0, r1\n\
_08004EC0:\n\
	cmp r4, #0\n\
	beq _08004ED4\n\
	subs r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	b _08004ED6\n\
	.align 2, 0\n\
_08004ECC: .4byte gKeyState\n\
_08004ED0: .4byte gUnk_8DF7A28\n\
_08004ED4:\n\
	movs r4, #0xc\n\
_08004ED6:\n\
	movs r0, #0x36\n\
	bl PlayMusic\n\
	ldrh r0, [r5]\n\
	adds r1, r4, r6\n\
	ldrb r1, [r1]\n\
	asrs r0, r1\n\
	movs r1, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08004EC0\n\
	b _08004F20\n\
_08004EEE:\n\
	movs r0, #0x90\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08004F20\n\
	lsls r0, r7, #1\n\
	mov r1, r8\n\
	adds r5, r0, r1\n\
_08004EFC:\n\
	cmp r4, #0xb\n\
	bhi _08004F08\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	b _08004F0A\n\
_08004F08:\n\
	movs r4, #0\n\
_08004F0A:\n\
	movs r0, #0x36\n\
	bl PlayMusic\n\
	ldrh r0, [r5]\n\
	adds r1, r4, r6\n\
	ldrb r1, [r1]\n\
	asrs r0, r1\n\
	movs r1, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08004EFC\n\
_08004F20:\n\
	adds r0, r4, r6\n\
	ldrb r0, [r0]\n\
	bl sub_80054C4\n\
_08004F28:\n\
	bl sub_80056AC\n\
	adds r0, r4, r6\n\
	ldrb r0, [r0]\n\
	bl sub_800521C\n\
	adds r0, r7, #0\n\
	bl sub_80052E4\n\
	bl LoadOam\n\
	bl LoadPalettes\n\
	bl sub_8008220\n\
	bl sub_8005590\n\
_08004F4A:\n\
	ldr r0, _08004F88\n\
	ldrh r1, [r0]\n\
	movs r0, #3\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08004EA0\n\
	movs r0, #0x37\n\
	bl PlayMusic\n\
	bl sub_80056F8\n\
	bl sub_803ED78\n\
	bl LoadOam\n\
	bl LoadPalettes\n\
	bl LoadVRAM\n\
	bl sub_8045718\n\
	ldr r0, _08004F8C\n\
	adds r1, r4, r6\n\
	ldrb r1, [r1]\n\
	strb r1, [r0]\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08004F88: .4byte gUnk2020DFC\n\
_08004F8C: .4byte 0x02020DCC");
}

extern u16 gWorldMapBgPalette[];
extern u32 gWorldMapBgTileset[];
extern u32 gUnk_80746F8[];
extern u16 gUnk_80666F0[][30];
extern u16 gUnk_8073BA0[][30];
extern u16 gUnk_8066BA0[][320];
extern u8 gUnk_8075330[];
extern u8 gUnk_8075398[];
extern u8 gUnk_80753BC[];
extern u8 gUnk_80753E8[];
extern u8 gUnk_807540C[];
extern u8 gUnk_8075428[];
extern u8 gUnk_8075440[];
extern u8 gUnk_807545C[];
extern u8 gUnk_807547C[];
extern u8 gUnk_80754A4[];
extern u8 gUnk_80754C4[];
extern u8 gUnk_80754EC[];

extern u16 gUnk_80741B8[];
extern u16 gUnk_8072EA0[];
extern u16 gUnk_80741D8[];
extern u16 gUnk_8074400[];

void sub_8020A3C(void *, void *, u16);
void sub_80055D8 (void);

void sub_8004F90 (u8 arg0, u8 arg1) {
  u16 i;
  for (i = 0; i < 0x4314; i++)
    gUnk_2018800[i] = 0;
  sub_803ED78();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  sub_8045718();
  LZ77UnCompWram(gWorldMapBgTileset, gBgVram.cbb0);
  for (i = 0; i < 20; i++)
    DmaCopy16(3, gUnk_80666F0[i], &(((struct Sbb*)&gBgVram)->sbb13[i]), 60);
  for (i = 0; i < 2; i++)
    DmaCopy16(3, gUnk_8073BA0[i], &(((struct Sbb*)&gBgVram)->sbb14[i][10]), 60);
  for (i = 0; i < 6; i++)
    CpuCopy16(gUnk_8066BA0[i], &gBgVram.cbb4[i * 0x400], 640);
  LZ77UnCompWram(gUnk_80746F8, gBgVram.cbb5);

  // Location text
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x20, gUnk_8075330, 0x901); // Clock Tower Square
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x520, gUnk_8075398, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0xA20, gUnk_80753BC, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0xF20, gUnk_80753E8, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x1420, gUnk_807540C, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x1920, gUnk_8075428, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x1E20, gUnk_8075440, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x2320, gUnk_807545C, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x2820, gUnk_807547C, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x2D20, gUnk_80754A4, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x3220, gUnk_80754C4, 0x901);
  sub_8020A3C(((struct Cbb*)&gBgVram)->cbb3 + 0x3720, gUnk_80754EC, 0x901);

  CpuCopy16(gWorldMapBgPalette, g02000000.bg, 0x180);
  CpuCopy16(gUnk_80741B8, g02000000.bg + 0xF0, 0x20);
  CpuCopy16(gUnk_8072EA0, g02000000.bg + 0x100, 0x100);
  CpuCopy16(gUnk_80741D8, g02000000.bg + 0x180, 0x20);
  CpuCopy16(gUnk_8074400, g02000000.bg + 0x190, 0x20);

  sub_80081DC(sub_80055D8);
  sub_80054C4(gUnk_8DF7A18[arg0]);
  sub_80056AC();
  sub_800521C(gUnk_8DF7A18[arg0]);
  sub_80052E4(arg1);
  LoadOam();
  LoadVRAM();
  LoadPalettes();
  sub_8008220();
}

extern struct Unk8DF76F8 {
  u8 unk0;
  struct OamData* unk4;
} * gUnk_8DF76F8[];

extern struct OamData gOamBuffer[];
/*
void sub_800521C (u8 arg0) {
  u32* oam;
  if (gUnk_8DF7A28->unk23 == gUnk_8DF76F8[arg0][gUnk_8DF7A28->unk24].unk0) {
    gUnk_8DF7A28->unk23 = 0;
    gUnk_8DF7A28->unk24++;
    if (gUnk_8DF7A28->unk24 > 3)
      gUnk_8DF7A28->unk24 = 0;
  }
  else
    gUnk_8DF7A28->unk23++;

  oam = (u32*)(gOamBuffer + 2);
  oam[0] =
}*/
