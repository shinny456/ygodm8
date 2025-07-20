#include "global.h"

unsigned char g2020DC8; //where the player came from
unsigned char g2020DCC; //where the player is going
unsigned char g2020DD0; //world map state (how many places are unlocked)

static void LoadWorldMapGfx (unsigned char, unsigned char);
extern unsigned char gWorldMapTiles[];
extern unsigned short gWorldMapPalette[];


extern struct Unk8DF76F8 {
  unsigned char unk0;
  struct {u16 a, b, c;}* unk4; // (cursor sprites)
} * gUnk_8DF76F8[];

extern struct OamData gOamBuffer[];
void sub_80055D8 (void);


extern u16 gPressedButtons;
extern u16 gNewButtons;

extern u16 gUnk_8DF79F8[];
extern unsigned char gUnk_8DF7A18[];

extern struct Unk_8DF7A28 {
  u16 unk0;
  unsigned char filler2[0x21];
  unsigned char unk23;
  unsigned char unk24;
} * gUnk_8DF7A28;

extern unsigned char gSharedMem[];

extern u32 gUnk_80746F8[];
extern u16 gWorldMapTilemap[][30];
extern u16 gUnk_8073BA0[][30];
extern u16 gUnk_8066BA0[][320];
extern unsigned char sText_ClockTowerSquare[];
extern unsigned char sText_DominoStation[];
extern unsigned char sText_EgyptExhibition[];
extern unsigned char sText_DominoPier[];
extern unsigned char sText_Italy[];
extern unsigned char sText_China[];
extern unsigned char sText_Canada[];
extern unsigned char sText_Galapagos[];
extern unsigned char sText_PegasusIsland[];
extern unsigned char sText_Dungeon[];
extern unsigned char sText_PegasusCastle[];
extern unsigned char sText_HallOfEternity[];

extern u16 gUnk_80741B8[];
extern u16 gUnk_8072EA0[];
extern u16 gUnk_80741D8[];
extern u16 gUnk_8074400[];

unsigned char sub_80056CC(unsigned char);
void sub_80054C4(unsigned char);
void sub_80056AC (void);
void sub_80052E4 (unsigned char);
void sub_800521C (unsigned char);
void sub_80056F8 (void);
void sub_8005590 (void);
void ClearGraphicsBuffers (void);


/*
void WorldMapMain (void) {
  unsigned char r4 = sub_80056CC(g2020DC8);
  unsigned char r7 = g2020DD0 & 0xF;
  LoadWorldMapGfx(r4, r7);
  PlayMusic(MUSIC_WORLD_MAP);
  while (!(gNewButtons & 3)) {
    if (gPressedButtons & 0xF0) {
      if (gUnk_8DF7A28->unk0 & 0x60)
        do {
          if (r4)
            r4--;
          else
            r4 = 12;
          PlayMusic(SFX_MOVE_CURSOR);
        } while (!(gUnk_8DF79F8[r7] >> gUnk_8DF7A18[r4] & 1));
      else if (gUnk_8DF7A28->unk0 & 0x90)
        do {
          if (r4 < 12)
            r4++;
          else
            r4 = 0;
          PlayMusic(SFX_MOVE_CURSOR);
        } while (!(gUnk_8DF79F8[r7] >> gUnk_8DF7A18[r4] & 1));
      sub_80054C4(gUnk_8DF7A18[r4]);
    }
    sub_80056AC();
    sub_800521C(gUnk_8DF7A18[r4]);
    sub_80052E4(r7);
    LoadOam();
    LoadPalettes();
    WaitForVBlank();
    sub_8005590();
  }
  PlayMusic(SFX_SELECT);
  sub_80056F8();
  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();
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
	bl LoadWorldMapGfx\n\
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
_08004ECC: .4byte gPressedButtons\n\
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
	bl WaitForVBlank\n\
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
	bl ClearGraphicsBuffers\n\
	bl LoadOam\n\
	bl LoadPalettes\n\
	bl LoadVRAM\n\
	bl DisableDisplay\n\
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
_08004F88: .4byte gNewButtons\n\
_08004F8C: .4byte 0x02020DCC");
}

static void LoadWorldMapGfx (unsigned char arg0, unsigned char arg1) {
  unsigned short i;
  for (i = 0; i < 0x4314; i++)
    gSharedMem[i] = 0;
  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  DisableDisplay();
  LZ77UnCompWram(gWorldMapTiles, gVramBuffer);
  for (i = 0; i < 20; i++)
    DmaCopy16(3, gWorldMapTilemap[i], gVramBuffer + 0x9800 + i * 64, 60);
  for (i = 0; i < 2; i++)
    DmaCopy16(3, gUnk_8073BA0[i], gVramBuffer + 0xA014 + i * 64, 60);
  for (i = 0; i < 6; i++)
    CpuCopy16(gUnk_8066BA0[i], gVramBuffer + 0x10000 + i * 0x400, 640);
  LZ77UnCompWram(gUnk_80746F8, gVramBuffer + 0x14000);

  // Location names
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xC020, sText_ClockTowerSquare, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xC520, sText_DominoStation, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xCA20, sText_EgyptExhibition, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xCF20, sText_DominoPier, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xD420, sText_Italy, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xD920, sText_China, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xDE20, sText_Canada, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xE320, sText_Galapagos, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xE820, sText_PegasusIsland, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xED20, sText_Dungeon, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xF220, sText_PegasusCastle, 0x901);
  CopyStringTilesToVRAMBuffer(gVramBuffer + 0xF720, sText_HallOfEternity, 0x901);

  CpuCopy16(gWorldMapPalette, gPaletteBuffer, 0x180);
  CpuCopy16(gUnk_80741B8, gPaletteBuffer + 0xF0, 0x20);
  CpuCopy16(gUnk_8072EA0, gPaletteBuffer + 0x100, 0x100);
  CpuCopy16(gUnk_80741D8, gPaletteBuffer + 0x180, 0x20);
  CpuCopy16(gUnk_8074400, gPaletteBuffer + 0x190, 0x20);

  SetVBlankCallback(sub_80055D8);
  sub_80054C4(gUnk_8DF7A18[arg0]);
  sub_80056AC();
  sub_800521C(gUnk_8DF7A18[arg0]);
  sub_80052E4(arg1);
  LoadOam();
  LoadVRAM();
  LoadPalettes();
  WaitForVBlank();
}

/*
//cursor sprites
void sub_800521C (unsigned char arg0) {
  u32* oam;
  if (gUnk_8DF7A28->unk23 == gUnk_8DF76F8[arg0][gUnk_8DF7A28->unk24].unk0) {
    gUnk_8DF7A28->unk23 = 0;
    gUnk_8DF7A28->unk24++;
    if (gUnk_8DF7A28->unk24 > 3)
      gUnk_8DF7A28->unk24 = 0;
  }
  else
    gUnk_8DF7A28->unk23++;

  //TODO: macro?
  //visible sprite
  oam = (u32*)(gOamBuffer + 2);
  oam[0] = ((gUnk_8DF76F8[arg0][gUnk_8DF7A28->unk24].unk4->b & 0x1FF) << 16) |
           (gUnk_8DF76F8[arg0][gUnk_8DF7A28->unk24].unk4->a & 0xFF) |
           0x80000000;
  oam[1] = gUnk_8DF76F8[arg0][gUnk_8DF7A28->unk24].unk4->c | 0x208;

  //window sprite
  oam[2] = ((gUnk_8DF76F8[arg0][gUnk_8DF7A28->unk24].unk4->b & 0x1FF) << 16) |
           (gUnk_8DF76F8[arg0][gUnk_8DF7A28->unk24].unk4->a & 0xFF) |
           0x80000800;
  oam[3] = gUnk_8DF76F8[arg0][gUnk_8DF7A28->unk24].unk4->c | 0x208;
}*/
