#include "global.h"


void sub_800A5F0 (u8);
void sub_801E27C (void);
void sub_801E66C (void);
void sub_801F060 (void);
void sub_801EED8 (u8);
u8 sub_801DB24 (void);
void sub_801E9EC (void);
void sub_801EB4C (void);
void sub_801ED58 (void);
void sub_801E928 (void);
void sub_801F390 (void);
int sub_801D368 (void);
u8 sub_801F0F0 (u16, u16*);
int GetDeckCardQty (u16);
void sub_801DF40 (void);
void sub_801F320 (void);
void sub_801F1C0 (void);
void sub_801F210 (void);
void sub_801F260 (void);
void sub_801F2B0 (void);
void sub_801F300 (void);
void sub_801F37C (void);
void sub_801F554 (void);
void sub_801F558 (void);
void sub_801F574 (void);
void sub_801F578 (void);
void sub_801F57C (void);
void sub_801F580 (void);
void sub_801F5AC (void);
void sub_801F5BC (void);
void sub_801F658 (void);
void sub_801FADC (void);
void sub_801FB2C (void);
void ClearBackgroundCbbs (void);
void sub_800B618 (void*);
void sub_800BCB0 (void*);
void sub_801FA84 (void);
void sub_801FB38 (void);
void sub_801FB14 (void);
void sub_801FB50 (u8*, u8);

void DeckMenuSortBy (u8);


extern u16 g80B9620[];
extern u16 g80B96AA[];
extern u8 g8E00AEC[];
extern u8 g8E00AF7[];
extern u8 g8E00B02[];
extern u8 g8E00B0D[];
extern u8 g8E00B18[];
extern u8 g8E00B23[];
extern u8 g80B96B8[];
extern u8 g80B96BC[];

extern struct OamData gOamBuffer[];
extern u8 g201CB58;
extern u8 g201CB59;
extern u16 g201CB60[2][2240];
extern u16 gNewButtons;

void sub_801EF30 (u8 arg0) {
  switch (arg0) {
    case 0:
      sub_800A5F0(0);
      break;
    case 2:
      sub_801E27C();
      sub_801E66C();
      sub_801F060();
      sub_801EED8(gPlayerDeck.sortingMethod);
      sub_800A5F0(1);
      break;
    case 3:
      sub_801E66C();
    case 4:
      sub_801F060();
    case 5:
      sub_800A5F0(3);
      break;
    case 6:
    case 7:
      sub_801E66C();
      sub_801F060();
      sub_801EED8(gPlayerDeck.sortingMethod);
      sub_800A5F0(3);
      break;
  }
}

void sub_801EFC0 (u16 cardId, u16* arg1) {
  u8 i;
  if (cardId != CARD_NONE) {
    for (i = 0; i < 4; i++) {
      sub_800DDA0(cardId, 1);
      *arg1++ = g2021BD0[i] + 0x5009;
    }
  }
  else {
    for (i = 0; i < 4; i++)
      *arg1++ = 0x5013;
  }
}

void sub_801F01C (u8 arg0, u16* arg1) {
  u8 i;
  for (i = 0; i < 12; i++)
    arg1[-i] = 0x5000;
  for (i = 0; i < arg0; i++)
    arg1[-i] = 0x5001;
}

void sub_801F060 (void) {
  switch (sub_801DB24()) {
    case 1:
      sub_801E9EC();
      break;
    case 2:
      sub_801EB4C();
      break;
    case 3:
      sub_801ED58();
      break;
    case 0:
    default:
      sub_801E928();
      break;
  }
}

u8 sub_801F098 (u16 cardId) {
  u8 qty = GetDeckCardQty(cardId);
  if (sub_801F0F0(cardId, g80B9620) == 1) {
    if (qty)
      return 0;
    return 1;
  }
  if (sub_801F0F0(cardId, g80B96AA) == 1) {
    if (qty > 1)
      return 0;
    return 1;
  }
  if (qty > 2)
    return 0;
  return 1;
}

u8 sub_801F0F0 (u16 cardId, u16* arg1) {
  u16 i;
  for (i = 0; arg1[i]; i++)
    if (arg1[i] == cardId)
      return 1;
  return 0;
}

void sub_801F120 (void) {
  unsigned keepProcessing;
  gPlayerDeck.sortingCursorState = gPlayerDeck.sortingMethod;
  sub_801DF40();
  sub_801F320();
  LoadCharblock1();
  PlayMusic(0x37);
  SetVBlankCallback(sub_801F390);
  WaitForVBlank();
  keepProcessing = 1;
  while (keepProcessing == 1) {
    switch (sub_801D368()) {
      case 0x40:
        sub_801F1C0();
        break;
      case 0x80:
        sub_801F210();
        break;
      case 0x20:
        sub_801F260();
        break;
      case 0x10:
        sub_801F2B0();
        break;
      case 1:
        sub_801F300();
        keepProcessing = 0;
        break;
      case 2:
      case 8:
        PlayMusic(0x38);
        keepProcessing = 0;
        break;
      default:
        WaitForVBlank();
        break;
    }
  }
  sub_801F37C();
}

void sub_801F1C0 (void) {
  gPlayerDeck.sortingCursorState = g8E00AEC[gPlayerDeck.sortingCursorState];
  if (gPlayerDeck.sortingCursorState < 10)
    sub_801EED8(gPlayerDeck.sortingCursorState);
  else
    sub_801EED8(gPlayerDeck.sortingMethod);
  sub_801F320();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_801F210 (void) {
  gPlayerDeck.sortingCursorState = g8E00AF7[gPlayerDeck.sortingCursorState];
  if (gPlayerDeck.sortingCursorState < 10)
    sub_801EED8(gPlayerDeck.sortingCursorState);
  else
    sub_801EED8(gPlayerDeck.sortingMethod);
  sub_801F320();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_801F260 (void) {
  gPlayerDeck.sortingCursorState = g8E00B02[gPlayerDeck.sortingCursorState];
  if (gPlayerDeck.sortingCursorState < 10)
    sub_801EED8(gPlayerDeck.sortingCursorState);
  else
    sub_801EED8(gPlayerDeck.sortingMethod);
  sub_801F320();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_801F2B0 (void) {
  gPlayerDeck.sortingCursorState = g8E00B0D[gPlayerDeck.sortingCursorState];
  if (gPlayerDeck.sortingCursorState < 10)
    sub_801EED8(gPlayerDeck.sortingCursorState);
  else
    sub_801EED8(gPlayerDeck.sortingMethod);
  sub_801F320();
  PlayMusic(0x36);
  SetVBlankCallback(LoadOam);
  WaitForVBlank();
  LoadCharblock2();
}

void sub_801F300 (void) {
  PlayMusic(0x37);
  if (gPlayerDeck.sortingCursorState < 10) {
    gPlayerDeck.sortingMethod = gPlayerDeck.sortingCursorState;
    DeckMenuSortBy(gPlayerDeck.sortingMethod);
  }
}

void sub_801F320 (void) {
  u32* oam = (u32*)&gOamBuffer[6];
  oam[0] = g8E00B18[gPlayerDeck.sortingCursorState] | g8E00B23[gPlayerDeck.sortingCursorState] << 16 | 0x40000000;
  oam[1] = 0xC120;
  oam[2] = g8E00B18[gPlayerDeck.sortingCursorState] | g8E00B23[gPlayerDeck.sortingCursorState] << 16 | 0x40000800;
  oam[3] = 0x120;
}

void sub_801F37C (void) {
  u32* oam = (u32*)&gOamBuffer[6];
  oam[0] = 0;
  oam[1] = 0;
  oam[2] = 0;
  oam[3] = 0;
}

void sub_801F390 (void) {
  LoadOam();
  REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_OBJWIN_ON;
  REG_BLDALPHA = 6;
  REG_BLDY = 10;
  REG_BLDCNT |= 8;
}

void sub_801F3C0 (void) {
  sub_8045718();
  // sub_801F658 inline?
  REG_WIN0H = 0xF0;
  REG_WIN0V = 0x18;
  REG_WIN1H = 0x3D4;
  REG_WIN1V = 0x486F;
  REG_WININ = 0x1E0E;
  REG_WINOUT = 0x103F;
  REG_BLDCNT = 0x28D2;
  REG_BLDALPHA = 0x10;
  REG_BLDY = 4;
  REG_BG0CNT = 0xF04;
  REG_BG1CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(31);
  REG_BG2CNT = 0x170A;
  REG_BG3CNT = 0x703;
  gBG0VOFS = 0;
  gBG0HOFS = 0;
  gBG1VOFS = 0xF8;
  gBG1HOFS = 0;
  gBG2VOFS = 0xFD;
  gBG2HOFS = 4;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LoadBgOffsets();
}

void sub_801F4A0 (u8 arg0) {
  switch (arg0) {
    case 0:
      break;
    case 1:
      SetVBlankCallback(sub_801F3C0);
      break;
    case 2:
      SetVBlankCallback(sub_801F554);
      break;
    case 3:
      SetVBlankCallback(sub_801F558);
      break;
    case 4:
      SetVBlankCallback(sub_801F574);
      break;
    case 6:
      SetVBlankCallback(sub_801F578);
      break;
    case 5:
      SetVBlankCallback(sub_801F57C);
      break;
    case 7:
      SetVBlankCallback(sub_801F580);
      break;
    case 8:
      SetVBlankCallback(sub_801F5AC);
      break;
    case 9:
      SetVBlankCallback(sub_801F5BC);
      break;

  }
  WaitForVBlank();
}

void sub_801F554 (void) {
}

void sub_801F558 (void) {
  LoadOam();
  LoadPalettes();
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
}

void sub_801F574 (void) {
}

void sub_801F578 (void) {
}

void sub_801F57C (void) {
}

void sub_801F580 (void) {
  sub_801F658();
  REG_DISPCNT |= DISPCNT_WIN1_ON;
  REG_DISPCNT &= ~DISPCNT_BG0_ON;
  LoadOam();
}

void sub_801F5AC (void) {
  LoadOam();
  LoadPalettes();
}

void sub_801F5BC (void) {
  LoadOam();
  LoadPalettes();
  sub_801F658();
  REG_DISPCNT |= DISPCNT_WIN1_ON;
  REG_DISPCNT &= ~DISPCNT_BG0_ON;
}

void sub_0801F5EC (void) {
}

void sub_801F5F0 (void) {
  LoadVRAM();
}

void sub_801F5FC (void) {
  LoadCharblock3();
  LoadCharblock4();
  LoadPalettes();
  LoadOam();
}

void sub_801F614 (void) {
  LoadCharblock3();
  LoadCharblock4();
  LoadPalettes();
  LoadCharblock2();
}

void sub_0801F62C (void) {
}

void sub_801F630 (void) {
  LoadCharblock2();
  LoadCharblock3();
  LoadCharblock4();
}

void sub_801F644 (void) {
  LoadCharblock2();
  LoadCharblock3();
  LoadCharblock4();
}

void sub_801F658 (void) {
  REG_WIN0H = 0xF0;
  REG_WIN0V = 0x18;
  REG_WIN1H = 0x3D4;
  REG_WIN1V = 0x486F;
  REG_WININ = 0x1E0E;
  REG_WINOUT = 0x103F;
  REG_BLDCNT = 0x28D2;
  REG_BLDALPHA = 0x10;
  REG_BLDY = 4;
}
/*
void sub_801F6B0 (void) {
  u8 i;
  u8* text;
  u8 buffer[144];
  for (i = 0; i < 2; i++)
    CpuFastFill16(0, g201CB60[i], 4480);
  text = gCardInfo.unk8;
  text += 2;
  text = GetCurrentLanguageString(text);
  if (*text == '^') {
    text++;
    switch (*text) {
      case '2':
        g201CB59 = 2;
        break;
      case '3':
        g201CB59 = 3;
        break;
      case '4':
        g201CB59 = 4;
        break;
      case '5':
        g201CB59 = 5;
        break;
      case '6':
        g201CB59 = 6;
        break;
      case '7':
        g201CB59 = 7;
        break;
      case '8':
        g201CB59 = 8;
        break;
      case '9':
        g201CB59 = 9;
        break;
      default:
        g201CB59 = 1;
        break;
    }
    text++;
    for (g201CB58 = 0; g201CB58 < g201CB59; g201CB58++) {
      // j is the number of characters, as opposed to number of bytes
      // since special characters are 2 bytes.
      for (i = 0, j = 0; *text != '^';) {
        buffer[i] = *text;
        if (*text > 127) {
          i++;
          text++;
          buffer[i] = *text;
        }
        i++;
        text++;
        j++;
        if (j == 12) {
          buffer[i] = ' ';
          i++;
          if (g201CB58) {
            buffer[i] = g80B96B8[0];
            i++;
            buffer[i] = g80B96B8[1];
          }
          else {
            buffer[i] = ' ';
          }
          i++;
          j += 2;
        }
      }
      if (g201CB58 >= g201CB59 - 1) {
        while (j < 70) {
          buffer[i] = ' ';
          i++;
          j++;
        }
      }
      else {
        while (j < 69) {
          buffer[i] = ' ';
          i++;
          j++;
        }
        buffer[i] = g80B96BC[0];
        i++;
        buffer[i] = g80B96BC[1];
        i++;
      }
      buffer[i] = 0;
      CopyStringTilesToVRAMBuffer(g201CB60[g201CB58], buffer, 0x901);
      text++;
    }
  }
  else {
    for (i = 0, j = 0; *text && *text != '$';) {
      buffer[i] = *text;
      if (*text > 127) {
        i++;
        text++;
        buffer[i] = *text;
      }
      i++;
      text++;
      j++;
      if (j == 12) {
        buffer[i] = ' ';
        i++;
        buffer[i] = ' ';
        i++;
      }
    }
    buffer[i] = 0;
    CopyStringTilesToVRAMBuffer(g201CB60[0], buffer, 0x901);
    g201CB59 = 0;
  }
  // _0801F97C
  g201CB58 = 0;
  sub_801FB2C();
  sub_800B618(g201CB60[g201CB58]);
  sub_801FA84();
  SetVBlankCallback(sub_801FADC);
  WaitForVBlank();
  sub_801FB38();
  SetVBlankCallback(sub_801FB14);
  WaitForVBlank();
  while (1) {
    if (gNewButtons & DPAD_UP && g201CB59 > 1 && g201CB58) {
      g201CB58--;
      PlayMusic(0x36);
      sub_800BCB0(g201CB60[g201CB58]);
      LoadCharblock1();
    }
    if (gNewButtons & DPAD_DOWN && g201CB59 > 1 && g201CB59 < g201CB58 - 1) {
      g201CB58++;
      PlayMusic(0x36);
      sub_800BCB0(g201CB60[g201CB58]);
      LoadCharblock1();
    }
    if (gNewButtons & B_BUTTON || gNewButtons & A_BUTTON)
      break;
    WaitForVBlank();
  }
  PlayMusic(0x38);
  sub_801FB2C();
}*/

NAKED
void sub_801F6B0 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x94\n\
	movs r4, #0\n\
	add r5, sp, #0x90\n\
_0801F6C0:\n\
	movs r0, #0\n\
	str r0, [r5]\n\
	lsls r1, r4, #3\n\
	adds r1, r1, r4\n\
	lsls r1, r1, #2\n\
	subs r1, r1, r4\n\
	lsls r1, r1, #7\n\
	ldr r6, _0801F710\n\
	adds r1, r1, r6\n\
	adds r0, r5, #0\n\
	ldr r2, _0801F714\n\
	bl CpuFastSet\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #1\n\
	bls _0801F6C0\n\
	ldr r0, _0801F718\n\
	ldr r2, [r0, #8]\n\
	adds r2, #2\n\
	adds r0, r2, #0\n\
	bl GetCurrentLanguageString\n\
	adds r2, r0, #0\n\
	ldrb r0, [r2]\n\
	cmp r0, #0x5e\n\
	beq _0801F6FA\n\
	b _0801F904\n\
_0801F6FA:\n\
	adds r2, #1\n\
	ldrb r0, [r2]\n\
	subs r0, #0x32\n\
	cmp r0, #7\n\
	bhi _0801F7A0\n\
	lsls r0, r0, #2\n\
	ldr r1, _0801F71C\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	mov pc, r0\n\
	.align 2, 0\n\
_0801F710: .4byte 0x0201CB60\n\
_0801F714: .4byte 0x01000460\n\
_0801F718: .4byte gCardInfo\n\
_0801F71C: .4byte 0x0801F720\n\
_0801F720: @ jump table\n\
	.4byte _0801F740 @ case 0\n\
	.4byte _0801F74C @ case 1\n\
	.4byte _0801F758 @ case 2\n\
	.4byte _0801F764 @ case 3\n\
	.4byte _0801F770 @ case 4\n\
	.4byte _0801F77C @ case 5\n\
	.4byte _0801F788 @ case 6\n\
	.4byte _0801F794 @ case 7\n\
_0801F740:\n\
	ldr r1, _0801F748\n\
	movs r0, #2\n\
	b _0801F7A4\n\
	.align 2, 0\n\
_0801F748: .4byte 0x0201CB59\n\
_0801F74C:\n\
	ldr r1, _0801F754\n\
	movs r0, #3\n\
	b _0801F7A4\n\
	.align 2, 0\n\
_0801F754: .4byte 0x0201CB59\n\
_0801F758:\n\
	ldr r1, _0801F760\n\
	movs r0, #4\n\
	b _0801F7A4\n\
	.align 2, 0\n\
_0801F760: .4byte 0x0201CB59\n\
_0801F764:\n\
	ldr r1, _0801F76C\n\
	movs r0, #5\n\
	b _0801F7A4\n\
	.align 2, 0\n\
_0801F76C: .4byte 0x0201CB59\n\
_0801F770:\n\
	ldr r1, _0801F778\n\
	movs r0, #6\n\
	b _0801F7A4\n\
	.align 2, 0\n\
_0801F778: .4byte 0x0201CB59\n\
_0801F77C:\n\
	ldr r1, _0801F784\n\
	movs r0, #7\n\
	b _0801F7A4\n\
	.align 2, 0\n\
_0801F784: .4byte 0x0201CB59\n\
_0801F788:\n\
	ldr r1, _0801F790\n\
	movs r0, #8\n\
	b _0801F7A4\n\
	.align 2, 0\n\
_0801F790: .4byte 0x0201CB59\n\
_0801F794:\n\
	ldr r1, _0801F79C\n\
	movs r0, #9\n\
	b _0801F7A4\n\
	.align 2, 0\n\
_0801F79C: .4byte 0x0201CB59\n\
_0801F7A0:\n\
	ldr r1, _0801F82C\n\
	movs r0, #1\n\
_0801F7A4:\n\
	strb r0, [r1]\n\
	mov sl, r1\n\
	adds r2, #1\n\
	ldr r1, _0801F830\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	mov r3, sl\n\
	ldrb r0, [r3]\n\
	cmp r0, #0\n\
	bne _0801F7BA\n\
	b _0801F97C\n\
_0801F7BA:\n\
	ldr r0, _0801F834\n\
	mov sb, r0\n\
	adds r7, r1, #0\n\
	mov r8, r7\n\
_0801F7C2:\n\
	movs r4, #0\n\
	movs r5, #0\n\
	ldrb r1, [r2]\n\
	cmp r1, #0x5e\n\
	beq _0801F854\n\
	ldr r6, _0801F838\n\
_0801F7CE:\n\
	mov r3, sp\n\
	adds r0, r3, r4\n\
	strb r1, [r0]\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	cmp r0, #0\n\
	bge _0801F7EA\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r2, #1\n\
	adds r1, r3, r4\n\
	ldrb r0, [r2]\n\
	strb r0, [r1]\n\
_0801F7EA:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r2, #1\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #0xc\n\
	bne _0801F84E\n\
	mov r1, sp\n\
	adds r0, r1, r4\n\
	movs r1, #0x20\n\
	strb r1, [r0]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	mov r3, r8\n\
	ldrb r0, [r3]\n\
	cmp r0, #0\n\
	beq _0801F83C\n\
	adds r3, r6, #0\n\
	mov r0, sp\n\
	adds r1, r0, r4\n\
	ldrb r0, [r3]\n\
	strb r0, [r1]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	mov r0, sp\n\
	adds r1, r0, r4\n\
	ldrb r0, [r3, #1]\n\
	strb r0, [r1]\n\
	b _0801F842\n\
	.align 2, 0\n\
_0801F82C: .4byte 0x0201CB59\n\
_0801F830: .4byte 0x0201CB58\n\
_0801F834: .4byte 0x0201CB60\n\
_0801F838: .4byte 0x080B96B8\n\
_0801F83C:\n\
	mov r3, sp\n\
	adds r0, r3, r4\n\
	strb r1, [r0]\n\
_0801F842:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r0, r5, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
_0801F84E:\n\
	ldrb r1, [r2]\n\
	cmp r1, #0x5e\n\
	bne _0801F7CE\n\
_0801F854:\n\
	mov r0, r8\n\
	ldrb r1, [r0]\n\
	mov r3, sl\n\
	ldrb r0, [r3]\n\
	subs r0, #1\n\
	cmp r1, r0\n\
	blt _0801F882\n\
	adds r6, r2, #1\n\
	cmp r5, #0x45\n\
	bhi _0801F8C0\n\
	movs r1, #0x20\n\
_0801F86A:\n\
	mov r2, sp\n\
	adds r0, r2, r4\n\
	strb r1, [r0]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #0x45\n\
	bls _0801F86A\n\
	b _0801F8C0\n\
_0801F882:\n\
	adds r6, r2, #1\n\
	ldr r2, _0801F8F8\n\
	cmp r5, #0x44\n\
	bhi _0801F8A2\n\
	movs r1, #0x20\n\
_0801F88C:\n\
	mov r3, sp\n\
	adds r0, r3, r4\n\
	strb r1, [r0]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #0x44\n\
	bls _0801F88C\n\
_0801F8A2:\n\
	adds r3, r2, #0\n\
	mov r0, sp\n\
	adds r1, r0, r4\n\
	ldrb r0, [r3]\n\
	strb r0, [r1]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	mov r2, sp\n\
	adds r1, r2, r4\n\
	ldrb r0, [r3, #1]\n\
	strb r0, [r1]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
_0801F8C0:\n\
	mov r3, sp\n\
	adds r1, r3, r4\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	ldrb r1, [r7]\n\
	lsls r0, r1, #3\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #7\n\
	add r0, sb\n\
	mov r1, sp\n\
	ldr r2, _0801F8FC\n\
	bl CopyStringTilesToVRAMBuffer\n\
	adds r2, r6, #0\n\
	ldrb r0, [r7]\n\
	adds r0, #1\n\
	strb r0, [r7]\n\
	ldr r1, _0801F900\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	ldrb r1, [r1]\n\
	cmp r0, r1\n\
	bhs _0801F8F4\n\
	b _0801F7C2\n\
_0801F8F4:\n\
	b _0801F97C\n\
	.align 2, 0\n\
_0801F8F8: .4byte 0x080B96BC\n\
_0801F8FC: .4byte 0x00000901\n\
_0801F900: .4byte 0x0201CB59\n\
_0801F904:\n\
	movs r4, #0\n\
	movs r5, #0\n\
	mov sb, r6\n\
	cmp r0, #0\n\
	beq _0801F966\n\
	cmp r0, #0x24\n\
	beq _0801F966\n\
	movs r3, #0x20\n\
_0801F914:\n\
	mov r1, sp\n\
	adds r0, r1, r4\n\
	ldrb r1, [r2]\n\
	strb r1, [r0]\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	cmp r0, #0\n\
	bge _0801F934\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r2, #1\n\
	mov r0, sp\n\
	adds r1, r0, r4\n\
	ldrb r0, [r2]\n\
	strb r0, [r1]\n\
_0801F934:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r2, #1\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #0xc\n\
	bne _0801F95C\n\
	mov r1, sp\n\
	adds r0, r1, r4\n\
	strb r3, [r0]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r0, r1, r4\n\
	strb r3, [r0]\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
_0801F95C:\n\
	ldrb r0, [r2]\n\
	cmp r0, #0\n\
	beq _0801F966\n\
	cmp r0, #0x24\n\
	bne _0801F914\n\
_0801F966:\n\
	mov r2, sp\n\
	adds r0, r2, r4\n\
	movs r4, #0\n\
	strb r4, [r0]\n\
	ldr r2, _0801FA4C\n\
	mov r0, sb\n\
	mov r1, sp\n\
	bl CopyStringTilesToVRAMBuffer\n\
	ldr r0, _0801FA50\n\
	strb r4, [r0]\n\
_0801F97C:\n\
	ldr r4, _0801FA54\n\
	movs r0, #0\n\
	strb r0, [r4]\n\
	bl sub_801FB2C\n\
	ldrb r1, [r4]\n\
	lsls r0, r1, #3\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #7\n\
	ldr r1, _0801FA58\n\
	adds r0, r0, r1\n\
	bl sub_800B618\n\
	bl sub_801FA84\n\
	ldr r0, _0801FA5C\n\
	bl SetVBlankCallback\n\
	bl WaitForVBlank\n\
	bl sub_801FB38\n\
	ldr r0, _0801FA60\n\
	bl SetVBlankCallback\n\
	bl WaitForVBlank\n\
	ldr r5, _0801FA64\n\
_0801F9B8:\n\
	ldrh r1, [r5]\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0801F9F4\n\
	ldr r0, _0801FA50\n\
	ldrb r0, [r0]\n\
	cmp r0, #1\n\
	bls _0801F9F4\n\
	ldr r4, _0801FA54\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	beq _0801F9F4\n\
	subs r0, #1\n\
	strb r0, [r4]\n\
	movs r0, #0x36\n\
	bl PlayMusic\n\
	ldrb r1, [r4]\n\
	lsls r0, r1, #3\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #7\n\
	ldr r1, _0801FA58\n\
	adds r0, r0, r1\n\
	bl sub_800BCB0\n\
	bl LoadCharblock1\n\
_0801F9F4:\n\
	ldrh r1, [r5]\n\
	movs r0, #0x80\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0801FA32\n\
	ldr r2, _0801FA50\n\
	ldrb r0, [r2]\n\
	cmp r0, #1\n\
	bls _0801FA32\n\
	ldr r4, _0801FA54\n\
	ldrb r1, [r4]\n\
	subs r0, #1\n\
	cmp r1, r0\n\
	bge _0801FA32\n\
	adds r0, r1, #1\n\
	strb r0, [r4]\n\
	movs r0, #0x36\n\
	bl PlayMusic\n\
	ldrb r1, [r4]\n\
	lsls r0, r1, #3\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #7\n\
	ldr r1, _0801FA58\n\
	adds r0, r0, r1\n\
	bl sub_800BCB0\n\
	bl LoadCharblock1\n\
_0801FA32:\n\
	ldrh r1, [r5]\n\
	movs r0, #2\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801FA68\n\
	movs r0, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801FA68\n\
	bl WaitForVBlank\n\
	b _0801F9B8\n\
	.align 2, 0\n\
_0801FA4C: .4byte 0x00000901\n\
_0801FA50: .4byte 0x0201CB59\n\
_0801FA54: .4byte 0x0201CB58\n\
_0801FA58: .4byte 0x0201CB60\n\
_0801FA5C: .4byte 0x0801FADD\n\
_0801FA60: .4byte 0x0801FB15\n\
_0801FA64: .4byte gNewButtons\n\
_0801FA68:\n\
	movs r0, #0x38\n\
	bl PlayMusic\n\
	bl sub_801FB2C\n\
	add sp, #0x94\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

void sub_801FA84 (void) {
  gBLDCNT = 0;
  gBLDALPHA = 0;
  gBLDY = 0;
  gBG1VOFS = 506;
  gBG1HOFS = 0;
  gBG2VOFS = 511;
  gBG2HOFS = 0;
  gBG3VOFS = 0;
  gBG3HOFS = 4;
}

void sub_801FADC (void) {
  sub_8045718();
  REG_BG1CNT = 0x1D81;
  REG_BG2CNT = 0x1E06;
  REG_BG3CNT = 0x1F0B;
  LoadBlendingRegs();
  LoadBgOffsets();
}

void sub_801FB14 (void) {
  LoadPalettes();
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON;
}

void sub_801FB2C (void) {
  ClearBackgroundCbbs();
}

void sub_801FB38 (void) {
  LoadBgVRAM();
}

void sub_801FB44 (u8* arg0) {
  sub_801FB50(arg0, 0);
}

void sub_801FB50 (u8* arg0, u8 arg1) {
  *arg0 = arg1;
}

u8 sub_801FB54 (u8* arg0) {
  return *arg0;
}



//split?

extern struct Duelist* gUnk8E00B30[];
void IncreaseDeckCapacity(u32);
void sub_801FF90 (void);
void sub_8020030 (void);
void sub_801FD14 (void);
void sub_801FE98 (void);
int sub_8043E9C (u8 arg0);
u16 sub_805629C (u16, u16);
u16 sub_801FFE0 (void);
void sub_802D90C (u16, u8);
u16 sub_8020050 (void);
void sub_80201AC (u8);
void sub_802018C (u8);
void sub_80201CC (void);
void sub_80201E4 (void);



void HandleWin (void) {
  struct DuelText duelText;
  gDuelData.capacityYield = gUnk8E00B30[gDuelData.opponent]->capacityYield;
  IncreaseDeckCapacity(gDuelData.capacityYield);
  sub_801FF90();
  sub_8020030();
  sub_801FD14();
  if (!gDuelLifePoints[1]) {
    sub_8035020(4);
    ResetDuelTextData(&duelText);
    duelText.textId = 19;
    sub_80219E4(&duelText);
  }
  else if (sub_8043E70(1) < sub_8043E9C(1)) {
    sub_8035020(4);
    ResetDuelTextData(&duelText);
    duelText.textId = 21;
    sub_80219E4(&duelText);
  }
  if (gDuelData.unk2d) {
    u8 i;
    PlayMusic(gDuelData.unkE);
    ResetDuelTextData(&duelText);
    duelText.textId = 2;
    sub_80219E4(&duelText);
    ResetDuelTextData(&duelText);
    duelText.textId = 6;
    duelText.unk4 = gDuelData.capacityYield;
    sub_80219E4(&duelText);
    sub_801FE98();
    for (i = 0; i < 10; i++) {
      if (!gDuelData.unk14[i])
        break;
      ResetDuelTextData(&duelText);
      duelText.textId = 5;
      duelText.unk0 = gDuelData.unk14[i];
      sub_80219E4(&duelText);
      SetCardInfo(gDuelData.unk14[i]);
      sub_801F6B0();
    }
  }
  if (!gDuelType /*== DUEL_TYPE_INGAME*/)
    sub_8048CEC();
}

void HandleLoss (void) {
  struct DuelText duelText;
  if (gAnte != CARD_NONE)
    RemoveCardQtyFromTrunk(gAnte, 1);
  if (!gDuelLifePoints[0]) {
    sub_8035020(4);
    ResetDuelTextData(&duelText);
    duelText.textId = 20;
    sub_80219E4(&duelText);
  }
  else if (sub_8043E70(0) < sub_8043E9C(0)) {
    sub_8035020(4);
    ResetDuelTextData(&duelText);
    duelText.textId = 22;
    sub_80219E4(&duelText);
  }
  if (gDuelData.unk2d) {
    PlayMusic(gDuelData.music);
    ResetDuelTextData(&duelText);
    duelText.textId = 3;
    sub_80219E4(&duelText);
  }
}

void sub_801FD14 (void) {
  u64 temp;
  switch (gUnk8E00B30[gDuelData.opponent]->unk20) {
    case 1:
      temp = 10;
      break;
    case 2:
      temp = 100;
      break;
    case 3:
      temp = 1000;
      break;
    case 4:
      temp = 10000;
      break;
    case 5:
      temp = 100000;
      break;
    case 6:
      temp = 1000000;
      break;
    case 7:
      temp = 10000000;
      break;
    case 8:
      temp = 100000000;
      break;
    case 9:
      temp = 1000000000;
      break;
    case 10:
      temp = 10000000000;
      break;
    case 11:
      temp = 100000000000;
      break;
    case 12:
      temp = 1000000000000;
      break;
    case 13:
      temp = 10000000000000;
      break;
    case 14:
      temp = 100000000000000;
      break;
    case 15:
      temp = 1000000000000000;
      break;
    case 0:
    default:
      temp = 1;
      break;
  }
  gDuelData.unk0 = sub_805629C(gUnk8E00B30[gDuelData.opponent]->minDomino, gUnk8E00B30[gDuelData.opponent]->maxDomino) * temp;
  AddMoney(gDuelData.unk0);
}

void sub_801FE98 (void) {
  struct DuelText duelText;
  ResetDuelTextData(&duelText);
  if (!gDuelData.unk0) {
    duelText.textId = 12;
    duelText.unk4 = gDuelData.unk0;
  }
  else if (gDuelData.unk0 <= 9999) {
    duelText.textId = 8;
    duelText.unk4 = gDuelData.unk0;
  }
  else if (gDuelData.unk0 <= 99999999) {
    duelText.textId = 9;
    duelText.unk4 = gDuelData.unk0 / 10000;
  }
  else if (gDuelData.unk0 <= 999999999999) {
    duelText.textId = 10;
    duelText.unk4 = gDuelData.unk0 / 100000000;
  }
  else {
    duelText.textId = 11;
    duelText.unk4 = gDuelData.unk0 / 1000000000000;
  }
  sub_80219E4(&duelText);
}

void HandleOutcome (void) {
  if (gDuelData.unk2B == 1)
    HandleWin();
  else
    HandleLoss();
}

void sub_801FF90 (void) {
  u8 i;
  if (gAnte == CARD_NONE)
    return;
  for (i = 0; i < 10 && i < gDuelData.unk2A; i++) {
    gDuelData.unk14[i] = sub_801FFE0();
    AddCardQtyToTrunk(gDuelData.unk14[i], 1);
  }
}

u16 sub_801FFE0 (void) {
  u16 random;
  struct CardDrop* cardDrops;
  if (IsGoodAnte(gAnte) == 1)
    cardDrops = gDuelData.duelist.goodDrops;
  else
    cardDrops = gDuelData.duelist.badDrops;
  random = sub_805629C(0, 2047);
  while (cardDrops->card != CARD_NONE && random > cardDrops->chance)
    cardDrops++;
  return cardDrops->card;
}

void sub_8020030 (void) {
  u32 i;
  for (i = 0; i < 3; i++)
    sub_802D90C(sub_8020050(), 1);
}

// TODO: is >= problematic here?
u16 sub_8020050 (void) {
  struct CardDrop* cardDrops = gDuelData.duelist.shopCards;
  u16 random = sub_805629C(0, 29999);
  while (cardDrops->card != CARD_NONE && random >= cardDrops->chance)
    cardDrops++;
  return cardDrops->card;
}



// nonsensical 2d array?
// these funcs seem to be unused.
// UB: these funcs access g80BE630 out of bounds.
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
  if (g2021C90[1][arg0].unk0 <= 999)
    g2021C90[1][arg0].unk0++;
}
