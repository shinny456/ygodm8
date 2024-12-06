#include "global.h"
#include "duel.h"
#include "text.h"
#include "gba/syscall.h"
#include "gba/io_reg.h"
#include "gba/macro.h"

static void LoadStartMenuGraphics (void);
static void sub_8005BE0 (void);
static void sub_8005C38 (void);
static void sub_8005C54 (void);
static void UpdateCursorPosition (u8);
static void DisplayCostMessage (void);
static void DisplayIncompleteDeckMessage (void);
static void sub_8005CB8 (void);
static void InitStartMenuData (void);

extern u16 gBG2HOFS;
extern u16 gBG2VOFS;
extern u16 gBG3HOFS;
extern u16 gBG3VOFS;
extern u16 gBG0HOFS;
extern u16 gBG0VOFS;
extern u16 gBG1HOFS;
extern u16 gBG1VOFS;
extern u16 gBLDCNT;
extern u16 gBLDY;
void LoadBgOffsets (void);
void LoadBlendingRegs (void);
void sub_8035020 (u16);

extern u32 gStartMenuCursorTiles[];
extern u32 gStartMenuBgTiles[];
extern u16 gUnk_80798F4[][30];
extern u16 gUnk_8079CB4[][30];
extern u16 gUnk_807A164[][30];

extern u16 gStartMenuBgPalette[];
extern u16 gStartMenuCursorPalette[];

extern u8 gText_DeckMustHave40Cards[];
extern u8 gText_CardCostTotal[];
extern u8 gUnk_807A910[];
extern u8 gUnk_807A95C[];
extern u8 gUnk_807A9A4[];

extern u16 gOamBuffer[];

void InitTrunkData (void);
void InitDeckData (void);
void StatusMenu (void);
void TrunkMenu (void);
bool8 IsDeckFull (void);
bool32 IsCostWithinCapacity (void);
u32 sub_801D3FC (void);
void DeckMenuMain (void);

void LoadOam (void);
void sub_8008220 (void);
void sub_8045718 (void);

extern u16 gUnk2020DFC;

extern u16 gStartMenuBgPalette[];
extern u16 gStartMenuCursorPalette[];
extern u16 gUnk_8079444[][30];
extern u16 gUnk_8079424[];
void ClearGraphicsBuffers (void);
void sub_8045718 (void);

static void StartMenuMain (void) {
  u8 cursorState = 0;
  while (1) {
    if (gUnk2020DFC & 2) {
      if (!IsDeckFull()) {
        PlayMusic(0x39);
        DisplayIncompleteDeckMessage();
        sub_8005BE0();
      }
      else if (IsCostWithinCapacity()) {
        if (IsDeckFull() != TRUE || IsCostWithinCapacity() != TRUE)
          goto here;
        else
          break;
      }
      else {
        PlayMusic(0x39);
        DisplayCostMessage();
        sub_8005BE0();
      }
    }
    here:
    if (gUnk2020DFC & 0x40 && cursorState != 0) {
      PlayMusic(0x36);
      cursorState--;
    }
    if (gUnk2020DFC & 0x80 && cursorState < 2) {
      PlayMusic(0x36);
      cursorState++;
    }
    switch (cursorState) {
      case 0:
        if (gUnk2020DFC & 1) {
          PlayMusic(0x37);
          StatusMenu();
          sub_8005BE0();
        }
        break;
      case 1:
        if (gUnk2020DFC & 1) {
          PlayMusic(0x37);
          TrunkMenu();
          LoadStartMenuGraphics();
        }
        break;
      case 2:
        if (gUnk2020DFC & 1) {
          if (sub_801D3FC() == 1) {
            PlayMusic(0x37);
            DeckMenuMain();
            LoadStartMenuGraphics();
          }
          else
            PlayMusic(0x39);
        }
        break;
    }
    UpdateCursorPosition(cursorState);
    LoadOam();
    sub_8008220();
  }
  PlayMusic(0x38);
  sub_8045718();
}

static void sub_8005894 (void) {
  u8 i;
  LZ77UnCompWram(gStartMenuCursorTiles, gBgVram.cbb4);
  for (i = 0; i < 20; i++)
    DmaCopy16(3, gUnk_80798F4[i], gBgVram.sbb1F[i], 60);
  for (i = 0; i < 20; i++)
    DmaCopy16(3, gUnk_8079CB4[i], gBgVram.sbb1D[i], 60);
  for (i = 0; i < 20; i++)
    DmaCopy16(3, gUnk_807A164[i], gBgVram.sbb1C[i], 60);
  CpuCopy16(gStartMenuBgPalette, g02000000.bg, 32);
  CpuCopy16(gStartMenuCursorPalette, g02000000.obj, 32);
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb2[32], gText_DeckMustHave40Cards, 0x901);
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb2[0x1020], gText_CardCostTotal, 0x901);
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb2[0x5020], gUnk_807A910, 0x901);
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb2[0x52A0], gUnk_807A95C, 0x901);
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb2[0x5520], gUnk_807A9A4, 0x901);
}

/*
static void sub_80059D4 (void) {
  u16 i;
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  REG_BG0CNT = 0x1C09;
  REG_BG1CNT = 0x1D09;
  REG_BG2CNT = 0x1F0E;
  REG_BG3CNT = 0x1E03;
  REG_IME = 1;
  REG_IE = 1;
  REG_DISPSTAT = 8;
  REG_DISPCNT = 0x3C00;
  gBG2HOFS = 0xFFB0;
  gBG2VOFS = 0xFFC8;
  gBG3HOFS = 0;
  gBG3VOFS = 0;
  gBG0VOFS = 0;
  gBG0HOFS = 0;
  gBG0VOFS = 0;
  gBG1HOFS = 0;
  gBG1VOFS = 0;
  LoadBgOffsets();
  REG_WIN0H = 0x38B8;
  REG_WIN0V = 0x2878;
  gBLDCNT = 0xE8;
  gBLDY = 8;
  LoadBlendingRegs();
}*/

NAKED
static void sub_80059D4 (void) {
  asm_unified("\n\
  push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	movs r4, #0\n\
	ldr r7, _08005ABC\n\
	ldr r0, _08005AC0\n\
	mov ip, r0\n\
	ldr r1, _08005AC4\n\
	mov r8, r1\n\
	ldr r2, _08005AC8\n\
	mov sb, r2\n\
	ldr r0, _08005ACC\n\
	mov sl, r0\n\
	ldr r3, _08005AD0\n\
	movs r6, #0\n\
	movs r5, #0xa0\n\
_080059F8:\n\
	lsls r0, r4, #3\n\
	adds r0, r0, r3\n\
	strh r5, [r0]\n\
	lsls r2, r4, #2\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r3\n\
	movs r1, #0xf0\n\
	strh r1, [r0]\n\
	adds r0, r2, #2\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r3\n\
	movs r1, #0xc0\n\
	lsls r1, r1, #4\n\
	strh r1, [r0]\n\
	adds r2, #3\n\
	lsls r2, r2, #1\n\
	adds r2, r2, r3\n\
	strh r6, [r2]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	cmp r4, #0x7f\n\
	bls _080059F8\n\
	ldr r1, _08005AD4\n\
	ldr r2, _08005AD8\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	adds r1, #2\n\
	ldr r2, _08005ADC\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	adds r1, #2\n\
	ldr r2, _08005AE0\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	adds r1, #2\n\
	ldr r2, _08005AE4\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	ldr r0, _08005AE8\n\
	movs r1, #1\n\
	strh r1, [r0]\n\
	subs r0, #8\n\
	strh r1, [r0]\n\
	ldr r0, _08005AEC\n\
	movs r4, #8\n\
	strh r4, [r0]\n\
	movs r1, #0x80\n\
	lsls r1, r1, #0x13\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #6\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	ldr r1, _08005AF0\n\
	adds r0, r1, #0\n\
	strh r0, [r7]\n\
	ldr r2, _08005AF4\n\
	adds r0, r2, #0\n\
	mov r1, ip\n\
	strh r0, [r1]\n\
	movs r0, #0\n\
	ldr r2, _08005AF8\n\
	strh r0, [r2]\n\
	mov r1, r8\n\
	strh r0, [r1]\n\
	mov r2, sb\n\
	strh r0, [r2]\n\
	mov r1, sl\n\
	strh r0, [r1]\n\
	ldr r2, _08005AFC\n\
	strh r0, [r2]\n\
	ldr r1, _08005B00\n\
	strh r0, [r1]\n\
	bl LoadBgOffsets\n\
	ldr r1, _08005B04\n\
	ldr r2, _08005B08\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	adds r1, #4\n\
	ldr r2, _08005B0C\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	ldr r1, _08005B10\n\
	movs r0, #0xe8\n\
	strh r0, [r1]\n\
	ldr r0, _08005B14\n\
	strh r4, [r0]\n\
	bl LoadBlendingRegs\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08005ABC: .4byte gBG2HOFS\n\
_08005AC0: .4byte gBG2VOFS\n\
_08005AC4: .4byte gBG3VOFS\n\
_08005AC8: .4byte gBG0HOFS\n\
_08005ACC: .4byte gBG0VOFS\n\
_08005AD0: .4byte 0x02018400\n\
_08005AD4: .4byte 0x04000008\n\
_08005AD8: .4byte 0x00001C09\n\
_08005ADC: .4byte 0x00001D09\n\
_08005AE0: .4byte 0x00001F0E\n\
_08005AE4: .4byte 0x00001E03\n\
_08005AE8: .4byte 0x04000208\n\
_08005AEC: .4byte 0x04000004\n\
_08005AF0: .4byte 0x0000FFB0\n\
_08005AF4: .4byte 0x0000FFC8\n\
_08005AF8: .4byte gBG3HOFS\n\
_08005AFC: .4byte gBG1HOFS\n\
_08005B00: .4byte gBG1VOFS\n\
_08005B04: .4byte 0x04000040\n\
_08005B08: .4byte 0x000038B8\n\
_08005B0C: .4byte 0x00002878\n\
_08005B10: .4byte gBLDCNT\n\
_08005B14: .4byte gBLDY");
}

void InitStartMenu (void) {
  sub_8035020(1);
  InitStartMenuData();
  PlayMusic(0x2F);
  StartMenuMain();
  sub_8035020(1);
}

void InitStartMenuFromScript (void) {
  InitStartMenuData();
  StartMenuMain();
}

static void LoadStartMenuGraphics (void) {
  u8 i;
  ClearGraphicsBuffers();
  LoadOam();
  LoadPalettes();
  LoadVRAM();
  sub_8045718();
  LZ77UnCompWram(gStartMenuBgTiles, gBgVram.cbb0);
  sub_8005894();
  for (i = 0; i < 20; i++)
    DmaCopy16(3, gUnk_8079444[i], gBgVram.sbb1E[i], 60);
  CpuCopy16(gUnk_8079424, &g02000000.bg[0xF0], 32);
  sub_80081DC(sub_8005C38);
  LoadBgVRAM();
  LoadCharblock4();
  LoadPalettes();
  sub_8008220();
}

static void sub_8005BE0 (void) {
  CpuCopy16(gStartMenuBgPalette, g02000000.bg, 32);
  CpuCopy16(gStartMenuCursorPalette, g02000000.obj, 32);
  sub_8005894();
  sub_80081DC(sub_8005C54);
  LoadCharblock4();
  LoadCharblock3();
  LoadPalettes();
  sub_80081DC(sub_8005C38);
  sub_8008220();
}

static void sub_8005C38 (void) {
  *((vu8*)REG_ADDR_WININ) = 0x3C;
  *((vu8*)REG_ADDR_WINOUT) = 8;
  sub_80059D4();
}

static void sub_8005C54 (void) {
  sub_80059D4();
}

static void UpdateCursorPosition (u8 cursorPos) {
  u32 *oam = (u32*)&gOamBuffer;
  oam[0] = (cursorPos << 4) + 56 | 0x40400000;
  oam[1] = 0x800;
}

static void DisplayCostMessage (void) {
  REG_DISPCNT = 0x1D00;
  LoadBgOffsets();
  sub_8005CB8();
}

static void DisplayIncompleteDeckMessage (void) {
  REG_DISPCNT = 0x1E00;
  LoadBgOffsets();
  sub_8005CB8();
}

static void sub_8005CB8 (void) {
  gBLDCNT = 0xFC;
  gBLDY = 8;
  LoadBlendingRegs();
  sub_8008220();
  while (!(gUnk2020DFC & 0x3FF))
    sub_8008220();
  sub_8008220();
}

static void InitStartMenuData (void) {
  LoadStartMenuGraphics();
  InitTrunkData();
  InitDeckData();
}
