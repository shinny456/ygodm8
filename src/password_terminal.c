#include "global.h"
#include "duel.h"
#include "gba/io_reg.h"
#include "gba/macro.h"
#include "gba/syscall.h"

static u16 sub_8025768 (void);
static void sub_80257D8 (void);
static void sub_80258AC (void);
static void sub_8025924 (void);
static void sub_80259B4 (void);
static void sub_8025A44 (void);
static void sub_8025AD4 (void);
static void sub_8025B64 (void);
static void sub_8025BA4 (void);
static void sub_8025BC0 (void);
static void sub_8025BDC (void);
static void sub_8025BEC (void);
static void sub_8025C08 (void);
static void sub_8025C24 (void);
static void sub_8025C34 (void);
static u8 sub_8025C44 (void);
static u8 GetNumpadCursorState (void);
static void sub_8025C74 (void);
static u32 sub_8025C88 (void);
static void sub_8025CAC (void);
static void sub_8025CBC (void);
static void sub_8025CCC (void);
static void sub_8025DB4 (void);
static void sub_8025E80 (void);
static void sub_8025F38 (void);
static void sub_8025F64 (void);
static void sub_8025FFC (void);
static void sub_8026014 (void);
static void sub_802601C (void);
static void sub_8026060 (void);
static void sub_8026070 (void);


struct PasswordTerminal {
  u8 unk0;
  u8 numpadCursorState;
  u8 filler2[2];
  u8 unk4; //digit frame counter
  u8 unk5; //numpad frame counter
};
extern struct PasswordTerminal *gPassTerminal;

void LoadBlendingRegs (void);
void LoadPalettes(void);
void sub_80081DC (void (*)(void));
void sub_8008220 (void);
void sub_802618C (void);
extern u8 g2021DC0[];
extern u16 gBLDCNT;
extern u16 gBLDY;
extern u16 gUnk2020DFC;
extern u16 gUnk2021DCC;
extern u16 gOamBuffer[];

struct Oam {
  u16 unk0;
  u16 *oam;
};

extern struct Oam *gE01248[];
extern struct Oam *gE01328[];
extern struct Oam *gE0119C[];

extern u8 g80C1DD4[];
void sub_800E074 (void*, void*, int);
extern u16 g80C5840[];
extern u32 g80C61B8[];
extern u16 g80C58C0[][30];
extern u16 g80C5EF0[];
extern u16 g80C5D70[];


u32 sub_80255A8 (void) {
  u32 ret = 0;
  u32 r4 = TRUE;

  sub_80257D8();
  sub_80258AC();
  while (r4) {
    switch (sub_8025768()) {
      case 0x40:
        sub_8025CBC();
        sub_8025924();
        sub_8025CCC();
        sub_8025E80();
        PlayMusic(0x36);
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
      case 0x80:
        sub_8025CBC();
        sub_80259B4();
        sub_8025CCC();
        sub_8025E80();
        PlayMusic(0x36);
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
      case 0x20:
        sub_8025CBC();
        sub_8025A44();
        sub_8025CCC();
        sub_8025E80();
        PlayMusic(0x36);
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
      case 0x10:
        sub_8025CBC();
        sub_8025AD4();
        sub_8025CCC();
        sub_8025E80();
        PlayMusic(0x36);
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
      case 0x200:
        sub_8025C24();
        sub_8025E80();
        sub_8025BA4();
        sub_8025C34();
        sub_8025E80();
        sub_8025CCC();
        PlayMusic(0x36);
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
      case 0x100:
        sub_8025C24();
        sub_8025E80();
        sub_8025BC0();
        sub_8025C34();
        sub_8025E80();
        sub_8025CCC();
        PlayMusic(0x36);
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
      case 1:
        if (GetNumpadCursorState() == 10) {
          r4 = FALSE;
          ret = 1;
          sub_8025CAC();
          sub_8025C24();
          goto label;
        }
        else {
          sub_8025BEC();
          sub_8025CAC();
          sub_8025C24();
          sub_8025E80();
          sub_8025CCC();
          if (sub_8025C44() == 7) {
            sub_8025CBC();
            sub_8025BDC();
            label:
            sub_8025E80();
            sub_8025CCC();
          }
          else {
            sub_8025BC0();
            sub_8025C34();
            sub_8025E80();
          }
          PlayMusic(0x37);
          sub_80081DC(sub_8026014);
          sub_8008220();
          sub_8026070();
          break;
        }
        break;
      case 2:
        sub_8025C24();
        sub_8025E80();
        sub_8025BA4();
        sub_8025C34();
        sub_8025E80();
        sub_8025CCC();
        PlayMusic(0x36);
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
      case 4:
      case 8:
        sub_8025CBC();
        sub_8025BDC();
        sub_8025E80();
        sub_8025CCC();
        PlayMusic(0x36);
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
      default:
        sub_8025E80();
        sub_8025CCC();
        sub_80081DC(sub_8026014);
        sub_8008220();
        sub_8026070();
        break;
    }
    sub_8025C08();
    sub_8025C74();
  }
  while (1) {
    sub_8025E80();
    sub_8025CCC();
    sub_80081DC(sub_8026014);
    sub_8008220();
    if (!sub_8025C88())
      break;
    sub_8025C08();
    sub_8025C74();
  }
  return ret;
}

static u16 sub_8025768 (void) {
  u8 i;
  u16 ret = 0;
  u16 r2;
  sub_802618C();
  r2 = 1;
  if (gUnk2020DFC & 0x3FF) {
    for (i = 0; i < 10; i++) {
      if (r2 & gUnk2020DFC)
        ret = r2;
      r2 <<= 1;
    }
  }
  r2 = 0x10;
  if (gUnk2021DCC & 0x3F0) {
    for (i = 0; i < 6; i++) {
      if (r2 & gUnk2021DCC)
        ret = r2;
      r2 <<= 1;
    }
  }
  return ret;
}

static void sub_80257D8 (void) {
  u16 i, j;
  for (i = 0; i < 16; i++) {
    for (j = 0; j < 512; j++) {
      struct PlttData *pltt = (struct PlttData*)&g02000000.bg[j];
      if (pltt->r > 1)
        pltt->r -= 2;
      else
        pltt->r = 0;
      if (pltt->g > 1)
        pltt->g -= 2;
      else
        pltt->g = 0;
      if (pltt->b > 1)
        pltt->b -= 2;
      else
        pltt->b = 0;
    }
    sub_80081DC(LoadPalettes);
    sub_8008220();
  }
}

static void sub_80258AC (void) {
  sub_8025B64();
  sub_8025F38();
  sub_8025F64();
  sub_8025DB4();
  sub_8025CCC();
  sub_80081DC(sub_802601C);
  sub_8008220();
  sub_8026060();
  sub_80081DC(sub_8025FFC);
  sub_8008220();
}

void sub_80258E8 (void) {
  u16 i;
  gBLDCNT = 0xFF;
  for (i = 0; i < 16; i++) {
    gBLDY = i & 31; //%32?
    sub_80081DC(LoadBlendingRegs);
    sub_8008220();
  }
}

//Handle pressing up
static void sub_8025924 (void) {
  switch (gPassTerminal->numpadCursorState) {
    case 0:
      gPassTerminal->numpadCursorState = 1;
      break;
    case 1:
      gPassTerminal->numpadCursorState = 4;
      break;
    case 2:
      gPassTerminal->numpadCursorState = 5;
      break;
    case 3:
      gPassTerminal->numpadCursorState = 6;
      break;
    case 4:
      gPassTerminal->numpadCursorState = 7;
      break;
    case 5:
      gPassTerminal->numpadCursorState = 8;
      break;
    case 6:
      gPassTerminal->numpadCursorState = 9;
      break;
    case 7:
      gPassTerminal->numpadCursorState = 0;
      break;
    case 8:
      gPassTerminal->numpadCursorState = 10;
      break;
    case 9:
      gPassTerminal->numpadCursorState = 10;
      break;
    case 10:
      gPassTerminal->numpadCursorState = 2;
      break;
  }
}

//Handle pressing down
static void sub_80259B4 (void) {
  switch (gPassTerminal->numpadCursorState) {
    case 0:
      gPassTerminal->numpadCursorState = 7;
      break;
    case 1:
      gPassTerminal->numpadCursorState = 0;
      break;
    case 2:
      gPassTerminal->numpadCursorState = 10;
      break;
    case 3:
      gPassTerminal->numpadCursorState = 10;
      break;
    case 4:
      gPassTerminal->numpadCursorState = 1;
      break;
    case 5:
      gPassTerminal->numpadCursorState = 2;
      break;
    case 6:
      gPassTerminal->numpadCursorState = 3;
      break;
    case 7:
      gPassTerminal->numpadCursorState = 4;
      break;
    case 8:
      gPassTerminal->numpadCursorState = 5;
      break;
    case 9:
      gPassTerminal->numpadCursorState = 6;
      break;
    case 10:
      gPassTerminal->numpadCursorState = 8;
      break;
  }
}

//Handle pressing left
static void sub_8025A44 (void) {
  switch (gPassTerminal->numpadCursorState) {
    case 0:
      gPassTerminal->numpadCursorState = 10;
      break;
    case 1:
      gPassTerminal->numpadCursorState = 3;
      break;
    case 2:
      gPassTerminal->numpadCursorState = 1;
      break;
    case 3:
      gPassTerminal->numpadCursorState = 2;
      break;
    case 4:
      gPassTerminal->numpadCursorState = 6;
      break;
    case 5:
      gPassTerminal->numpadCursorState = 4;
      break;
    case 6:
      gPassTerminal->numpadCursorState = 5;
      break;
    case 7:
      gPassTerminal->numpadCursorState = 9;
      break;
    case 8:
      gPassTerminal->numpadCursorState = 7;
      break;
    case 9:
      gPassTerminal->numpadCursorState = 8;
      break;
    case 10:
      gPassTerminal->numpadCursorState = 0;
      break;
  }
}

//Handle pressing right
static void sub_8025AD4 (void) {
  switch (gPassTerminal->numpadCursorState) {
    case 0:
      gPassTerminal->numpadCursorState = 10;
      break;
    case 1:
      gPassTerminal->numpadCursorState = 2;
      break;
    case 2:
      gPassTerminal->numpadCursorState = 3;
      break;
    case 3:
      gPassTerminal->numpadCursorState = 1;
      break;
    case 4:
      gPassTerminal->numpadCursorState = 5;
      break;
    case 5:
      gPassTerminal->numpadCursorState = 6;
      break;
    case 6:
      gPassTerminal->numpadCursorState = 4;
      break;
    case 7:
      gPassTerminal->numpadCursorState = 8;
      break;
    case 8:
      gPassTerminal->numpadCursorState = 9;
      break;
    case 9:
      gPassTerminal->numpadCursorState = 7;
      break;
    case 10:
      gPassTerminal->numpadCursorState = 0;
      break;
  }
}

static void sub_8025B64 (void) {
  u8 i;
  for (i = 0; i < 8; i++)
    g2021DC0[i] = 0;
  gPassTerminal->unk0 = 0;
  gPassTerminal->numpadCursorState = 1;
  gPassTerminal->unk4 = 0;
  gPassTerminal->unk5 = 0;
}

static void sub_8025BA0 (void) {
}

static void sub_8025BA4 (void) {
  if (gPassTerminal->unk0 == 0)
    gPassTerminal->unk0 = 7;
  else
    gPassTerminal->unk0--;
}

static void sub_8025BC0 (void) {
  if (gPassTerminal->unk0 > 6)
    gPassTerminal->unk0 = 0;
  else
    gPassTerminal->unk0++;
}

static void sub_8025BDC (void) {
  gPassTerminal->numpadCursorState = 10;
}

static void sub_8025BEC (void) {
  if (gPassTerminal->numpadCursorState < 10)
    g2021DC0[gPassTerminal->unk0] = gPassTerminal->numpadCursorState;
}

static void sub_8025C08 (void) {
  if (gPassTerminal->unk4 >= 30)
    gPassTerminal->unk4 = 0;
  else
    gPassTerminal->unk4++;
}

static void sub_8025C24 (void) {
  gPassTerminal->unk4 = 0;
}

static void sub_8025C34 (void) {
  gPassTerminal->unk4 = 15;
}

static u8 sub_8025C44 (void) {
  return gPassTerminal->unk0;
}

static u8 GetNumpadCursorState (void) {
  return gPassTerminal->numpadCursorState;
}

static u8 sub_8025C5C (void) {
  u8 ret = 0;
  if (gPassTerminal->unk4 > 15)
    ret = 1;
  return ret;
}

static void sub_8025C74 (void) {
  if (gPassTerminal->unk5)
    gPassTerminal->unk5--;
}

static u32 sub_8025C88 (void) {
  u8 ret = 0;
  u8 temp = gPassTerminal->unk5;
  if (temp) {
    ret = 1;
    temp -= 4;
    if (temp < 2)
      ret = 2;
  }
  return ret;
}

static void sub_8025CAC (void) {
  gPassTerminal->unk5 = 8;
}

static void sub_8025CBC (void) {
  gPassTerminal->unk5 = 0;
}

static void sub_8025CCC (void) {
  u8 cursorState = GetNumpadCursorState();
  u8 r6 = sub_8025C88();
  u16 pos;
  if (r6 == 0) {
    pos = gE01248[cursorState]->oam[0] & 0xFF;
    pos += 48;
    gOamBuffer[8 * 4] = gE01248[cursorState]->oam[0] & 0xFF00 | pos & 0xFF;
    pos = (gE01248[cursorState]->oam[1] & 0x1FF);
    pos += 72;
    gOamBuffer[8 * 4 + 1] = gE01248[cursorState]->oam[1] & 0xFE00 | pos & 0x1FF;
    gOamBuffer[8 * 4 + 2] = gE01248[cursorState]->oam[2];
    gOamBuffer[8 * 4 + 3] = 0;
  }
  else {
    struct Oam *oam;
    r6 -= 1;
    oam = gE01328[cursorState];
    pos = oam[r6].oam[0] & 0xFF;
    pos += 48;
    gOamBuffer[8 * 4] = oam[r6].oam[0] & 0xFF00 | pos & 0xFF;
    pos = oam[r6].oam[1] & 0x1FF;
    pos += 72;
    gOamBuffer[8 * 4 + 1] = oam[r6].oam[1] & 0xFE00 | pos & 0x1FF;
    gOamBuffer[8 * 4 + 2] = oam[r6].oam[2];
    gOamBuffer[8 * 4 + 3] = 0;
  }
}

static void sub_8025DB4 (void) {
  u8 i;
  for (i = 0; i < 8; i++) {
    u8 temp = g2021DC0[i];
    u16 var = (gE0119C[temp]->oam[0] & 0xFF) + 18;
    gOamBuffer[i * 4] = gE0119C[temp]->oam[0] & 0xFF00 | var & 0xFF;
    var = gE0119C[temp]->oam[1] & 0xFF;
    var += i * 16 + 56;
    gOamBuffer[i * 4 + 1] = gE0119C[temp]->oam[1] & 0xFE00 | var & 0x1FF;
    var = gE0119C[temp]->oam[2] & 0xF000;
    var = ((var << 16) + 0x30000000) >> 16;
    gOamBuffer[i * 4 + 2] = gE0119C[temp]->oam[2] & 0xFFF | var & 0xF000;
    gOamBuffer[i * 4 + 3] = 0;
  }
}

/*
static void sub_8025E80 (void) {
  u8 temp = sub_8025C44();
  u8 temp2 = g2021DC0[temp];
  u16 var;
  temp2 += sub_8025C5C() * 10;
  var = (gE0119C[temp2]->oam[0] & 0xFF) + 18;
  gOamBuffer[temp * 4] = gE0119C[temp2]->oam[0] & 0xFF00 | var & 0xFF;
  var = gE0119C[temp2]->oam[1] & 0xFF;
  var += temp * 16 + 56;
  gOamBuffer[temp * 4 + 1] = gE0119C[temp2]->oam[1] & 0xFE00 | var & 0x1FF;
  //var = ?;
  gOamBuffer[temp * 4 + 2] = gE0119C[temp2]->oam[2] & 0xFFF | var;
  gOamBuffer[temp * 4 + 3] = 0;
}*/

NAKED
static void sub_8025E80 (void) {
  asm_unified("push {r4, r5, r6, lr}\n\
	mov r6, r8\n\
	push {r6}\n\
	bl sub_8025C44\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r0, _08025F24\n\
	adds r0, r4, r0\n\
	ldrb r5, [r0]\n\
	bl sub_8025C5C\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	lsls r1, r0, #2\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #1\n\
	adds r5, r5, r1\n\
	lsls r5, r5, #0x18\n\
	ldr r0, _08025F28\n\
	lsrs r5, r5, #0x16\n\
	adds r5, r5, r0\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r6, [r0]\n\
	movs r3, #0xff\n\
	adds r0, r3, #0\n\
	ands r0, r6\n\
	adds r0, #0x12\n\
	ldr r1, _08025F2C\n\
	mov r8, r1\n\
	lsls r2, r4, #3\n\
	add r2, r8\n\
	movs r1, #0xff\n\
	lsls r1, r1, #8\n\
	ands r1, r6\n\
	ands r0, r3\n\
	orrs r1, r0\n\
	movs r6, #0\n\
	strh r1, [r2]\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r1, [r0, #2]\n\
	lsls r0, r4, #4\n\
	adds r0, #0x38\n\
	ands r3, r1\n\
	adds r3, r3, r0\n\
	lsls r4, r4, #2\n\
	adds r2, r4, #1\n\
	lsls r2, r2, #1\n\
	add r2, r8\n\
	movs r0, #0xfe\n\
	lsls r0, r0, #8\n\
	ands r0, r1\n\
	ldr r1, _08025F30\n\
	ands r3, r1\n\
	orrs r0, r3\n\
	strh r0, [r2]\n\
	ldr r0, [r5]\n\
	ldr r0, [r0, #4]\n\
	ldrh r3, [r0, #4]\n\
	lsrs r1, r3, #0xc\n\
	adds r1, #3\n\
	lsls r1, r1, #0x1c\n\
	adds r2, r4, #2\n\
	lsls r2, r2, #1\n\
	add r2, r8\n\
	ldr r0, _08025F34\n\
	ands r0, r3\n\
	lsrs r1, r1, #0x10\n\
	orrs r0, r1\n\
	strh r0, [r2]\n\
	adds r4, #3\n\
	lsls r4, r4, #1\n\
	add r4, r8\n\
	strh r6, [r4]\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08025F24: .4byte g2021DC0\n\
_08025F28: .4byte 0x08E0119C\n\
_08025F2C: .4byte gOamBuffer\n\
_08025F30: .4byte 0x000001FF\n\
_08025F34: .4byte 0x00000FFF");
}

static void sub_8025F38 (void) {
  u32 i;
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
}

static void sub_8025F64 (void) {
  u32 i;
  sub_800E074(g80C1DD4, gBgVram.cbb0, 0x4000);
  CpuCopy32(g80C5840, g02000000.bg, 0x80);
  for (i = 0; i < 20; i++)
    CpuCopy32(g80C58C0[i], gBgVram.sbb1F[i], 60);
  LZ77UnCompWram(g80C61B8, gBgVram.cbb4);
  CpuCopy32(g80C5EF0, g02000000.obj, 96);
  CpuCopy32(g80C5D70, g02000000.obj + 48, 64);
}

static void sub_8025FFC (void) {
  LoadPalettes();
  REG_DISPCNT = 0x1800;
}

static void sub_8026014 (void) {
}

static void sub_8026018 (void) {
}

static void sub_802601C (void) {
  sub_8045718();
  REG_BLDCNT = 0;
  REG_BLDALPHA = 0;
  REG_BLDY = 0;
  REG_BG3CNT = 0x1F03;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
}

static void sub_802605C (void) {
}

static void sub_8026060 (void) {
  LoadVRAM();
  LoadOam();
}

static void sub_8026070 (void) {
  LoadOam();
}
