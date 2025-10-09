#include "global.h"

extern const unsigned char gUnk_893B290[]; //facedown card tiles
extern const unsigned char g89A77DC[]; //card lock tile (E symbol)
extern const unsigned char g89A781C[]; //mini-card palette
extern const unsigned char g89A7ADE[][64]; //numTribute tiles
extern const unsigned char g89A7BDE[]; //face down icon (R symbol)
extern const unsigned char g89A7F1E[][64];
extern const unsigned char g89A81DE[]; 
extern const unsigned char g89A849E[][64];
extern const unsigned char g89A875E[][64];
extern const unsigned char g89A8A1E[]; //stage digits?
extern const unsigned char g89A8CDE[]; //minus sign (combine with digits?)

extern unsigned char* g8E1168C[]; //attribute mini-icons
extern u16 g8E116BC[];
extern s16 g8E116EE[][5];
extern s16 g8E11720[];
extern unsigned char* gUnk_8E17F48[]; // card-border tile pointers (index is card color)
extern unsigned char* g8E17F70[];


extern struct O {unsigned long a; unsigned short b;} gOamBuffer[];

static void sub_805754C (struct O*, unsigned char, unsigned char);
static void sub_8057620 (unsigned char*);
static void sub_805763C (unsigned char*, signed char);
static void sub_8057698 (unsigned char*);
static void sub_8057718 (unsigned char*, unsigned short);

extern unsigned char gSharedMem[];


static void sub_80562F4 (void) {
  unsigned char i;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gFixedZones[0][i]->isFaceUp)
      sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i] * 32, gFixedZones[0][i]->id);
    else
      CopyFaceDownCardTiles(gBgVram.cbb0 + 0x10000 + g8E116BC[i] * 32);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gFixedZones[1][i]->isFaceUp) {
      sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gFixedZones[1][i]->id);
      sub_80576EC(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gFixedZones[1][i]->id);
      sub_80576B4(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gFixedZones[1][i]->id);
      sub_805763C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, GetFinalStage(gFixedZones[1][i]));
      sub_80572A8(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gFixedZones[1][i]);
      sub_805733C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gFixedZones[1][i]);
    }
    else
      CopyFaceDownCardTiles(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32);
    if (gFixedZones[1][i]->isLocked)
      sub_8057620(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gFixedZones[2][i]->id);
    if (gFixedZones[2][i]->isLocked)
      sub_8057620(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32);
    sub_80576B4(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gFixedZones[2][i]->id);
    sub_80576EC(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gFixedZones[2][i]->id);
    sub_805763C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, GetFinalStage(gFixedZones[2][i]));
    sub_80572A8(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gFixedZones[2][i]);
    sub_805733C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gFixedZones[2][i]);
    if (!gFixedZones[2][i]->isFaceUp)
      sub_8057698(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 15] * 32, gFixedZones[3][i]->id);
    sub_8057718(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 15] * 32, gFixedZones[3][i]->id);
    if (!gFixedZones[3][i]->isFaceUp)
      sub_8057698(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 15] * 32);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gFixedZones[4][i]->id);
    sub_80576B4(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gFixedZones[4][i]->id);
    sub_80576EC(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gFixedZones[4][i]->id);
    sub_80572A8(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gFixedZones[4][i]);
    sub_805733C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gFixedZones[4][i]);
    if (gFixedZones[4][i]->isLocked)
      sub_8057620(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32);
    if (!gFixedZones[4][i]->isFaceUp)
      sub_8057698(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32);
  }
}
//24x24 pixels
/*
static void sub_80565F0 (unsigned char* dest, unsigned char* r7, unsigned char* src) {
  unsigned i, j, r8 = 0, ip;
  unsigned char* r4;
  for (j = 0; j < 16; j++)
    *dest++ = *src++;
  for (i = 0; i < 6; i++) {
    for (j = 4; j < 8; j++)
      *dest++ = *src++;
    r4 = r7 + i * 8 + r8;
    for (j = 0; j < 4; j++) {
      *dest = *r4;
      dest++;
      src++;
      r4++;
    }
  }

  ip = 0;
  r8 = 64;
  for (j = 0; j < 16; j++)
    *dest++ = *src++;
  for (i = 0; i < 6; i++) {
    r4 = r7 + i * 8 + ip + 4;
    for (j = 4; j < 8; j++) {
      *dest = *r4;
      dest++;
      src++;
      r4++;
    }
    r4 = r7 + i * 8 + r8;
    for (j = 0; j < 4; j++) {
      *dest = *r4;
      dest++;
      src++;
      r4++;
    }
  }

  ip = 64;
  r8 = 128;
  for (j = 0; j < 16; j++)
    *dest++ = *src++;
  for (i = 0; i < 6; i++) {
    r4 = r7 + i * 8 + ip + 4;
    for (j = 4; j < 8; j++) {
      *dest = *r4;
      dest++;
      src++;
      r4++;
    }
    r4 = r7 + i * 8 + r8;
    for (j = 0; j < 4; j++) {
      *dest = *r4;
      dest++;
      src++;
      r4++;
    }
  }
}*/

NAKED
static void sub_80565F0 (unsigned char* dest, unsigned char* r7, unsigned char* src) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r3, r0, #0\n\
	adds r7, r1, #0\n\
	movs r0, #0\n\
	mov r8, r0\n\
	movs r1, #0\n\
_08056600:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0xf\n\
	bls _08056600\n\
	movs r6, #0\n\
_08056610:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
_08056616:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056616\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_0805662C:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _0805662C\n\
	cmp r6, #5\n\
	bls _08056610\n\
	movs r0, #0\n\
	mov ip, r0\n\
	movs r4, #0x40\n\
	mov r8, r4\n\
	movs r1, #0\n\
_0805664A:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0xf\n\
	bls _0805664A\n\
	movs r6, #0\n\
_0805665A:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_08056668:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056668\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_08056680:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056680\n\
	cmp r6, #5\n\
	bls _0805665A\n\
	movs r0, #0x40\n\
	mov ip, r0\n\
	movs r4, #0x80\n\
	mov r8, r4\n\
	movs r1, #0\n\
_0805669E:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0xf\n\
	bls _0805669E\n\
	movs r6, #0\n\
_080566AE:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_080566BC:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080566BC\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_080566D4:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _080566D4\n\
	cmp r6, #5\n\
	bls _080566AE\n\
	movs r0, #0x80\n\
	mov ip, r0\n\
	movs r1, #0\n\
_080566EE:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0xf\n\
	bls _080566EE\n\
	movs r6, #0\n\
	mov r4, ip\n\
	adds r5, r4, r7\n\
_08056702:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056706:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056706\n\
	movs r1, #0\n\
_08056718:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056718\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056702\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #2\n\
	adds r3, r3, r0\n\
	movs r6, #6\n\
	movs r5, #0x30\n\
_08056738:\n\
	movs r1, #4\n\
_0805673A:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _0805673A\n\
	movs r1, #0\n\
	adds r4, r5, r7\n\
_0805674C:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _0805674C\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056738\n\
	movs r6, #0\n\
	movs r5, #0xc0\n\
_08056768:\n\
	movs r1, #4\n\
_0805676A:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _0805676A\n\
	movs r1, #0\n\
	adds r4, r5, r7\n\
_0805677C:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _0805677C\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056768\n\
	movs r4, #0x40\n\
	mov r8, r4\n\
	movs r6, #6\n\
	movs r0, #0x30\n\
	mov ip, r0\n\
	adds r5, r7, #0\n\
	adds r5, #0x30\n\
_080567A2:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_080567A6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080567A6\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_080567BE:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _080567BE\n\
	adds r5, #8\n\
	movs r4, #8\n\
	add ip, r4\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _080567A2\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	mov r8, r0\n\
	movs r6, #0\n\
	mov ip, r6\n\
	adds r5, r7, #0\n\
	adds r5, #0xc0\n\
_080567E8:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_080567EC:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080567EC\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056804:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056804\n\
	adds r5, #8\n\
	movs r4, #8\n\
	add ip, r4\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _080567E8\n\
	movs r0, #0x80\n\
	mov r8, r0\n\
	movs r6, #6\n\
	movs r4, #0x30\n\
	mov ip, r4\n\
	adds r5, r7, #0\n\
	adds r5, #0x70\n\
_0805682E:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056832:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056832\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_0805684A:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _0805684A\n\
	adds r5, #8\n\
	movs r0, #8\n\
	add ip, r0\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _0805682E\n\
	movs r4, #0xa0\n\
	lsls r4, r4, #1\n\
	mov r8, r4\n\
	movs r6, #0\n\
	mov ip, r6\n\
	adds r0, #0xf8\n\
	adds r5, r7, r0\n\
_08056874:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056878:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056878\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056890:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056890\n\
	adds r5, #8\n\
	movs r4, #8\n\
	add ip, r4\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056874\n\
	movs r6, #6\n\
	adds r5, r7, #0\n\
	adds r5, #0xb0\n\
_080568B2:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_080568B6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080568B6\n\
	movs r1, #0\n\
_080568C8:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _080568C8\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _080568B2\n\
	movs r6, #0\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #1\n\
	adds r5, r7, r0\n\
_080568E6:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_080568EA:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080568EA\n\
	movs r1, #0\n\
_080568FC:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _080568FC\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _080568E6\n\
	movs r4, #0xc0\n\
	lsls r4, r4, #2\n\
	adds r3, r3, r4\n\
	movs r6, #6\n\
	movs r5, #0xf0\n\
_0805691C:\n\
	movs r1, #4\n\
_0805691E:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _0805691E\n\
	movs r1, #0\n\
	adds r4, r5, r7\n\
_08056930:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056930\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _0805691C\n\
	movs r6, #0\n\
	movs r5, #0xc0\n\
	lsls r5, r5, #1\n\
_0805694E:\n\
	movs r1, #4\n\
_08056950:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056950\n\
	movs r1, #0\n\
	adds r4, r5, r7\n\
_08056962:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056962\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _0805694E\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	mov r8, r0\n\
	movs r6, #6\n\
	movs r4, #0x30\n\
	mov ip, r4\n\
	adds r5, r7, #0\n\
	adds r5, #0xf0\n\
_0805698A:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_0805698E:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _0805698E\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_080569A6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _080569A6\n\
	adds r5, #8\n\
	movs r0, #8\n\
	add ip, r0\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _0805698A\n\
	movs r4, #0xe0\n\
	lsls r4, r4, #1\n\
	mov r8, r4\n\
	movs r6, #0\n\
	mov ip, r6\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	adds r5, r7, r0\n\
_080569D2:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_080569D6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080569D6\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_080569EE:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _080569EE\n\
	adds r5, #8\n\
	movs r4, #8\n\
	add ip, r4\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _080569D2\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #1\n\
	mov r8, r0\n\
	movs r6, #6\n\
	movs r4, #0x30\n\
	mov ip, r4\n\
	subs r0, #0x10\n\
	adds r5, r7, r0\n\
_08056A1A:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056A1E:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056A1E\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056A36:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056A36\n\
	adds r5, #8\n\
	movs r4, #8\n\
	add ip, r4\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056A1A\n\
	movs r0, #0x80\n\
	lsls r0, r0, #2\n\
	mov r8, r0\n\
	movs r6, #0\n\
	mov ip, r6\n\
	movs r4, #0xe0\n\
	lsls r4, r4, #1\n\
	adds r5, r7, r4\n\
_08056A62:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056A66:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056A66\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056A7E:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056A7E\n\
	adds r5, #8\n\
	movs r0, #8\n\
	add ip, r0\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056A62\n\
	movs r6, #6\n\
	movs r4, #0xb8\n\
	lsls r4, r4, #1\n\
	adds r5, r7, r4\n\
_08056AA2:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056AA6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056AA6\n\
	movs r1, #0\n\
_08056AB8:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056AB8\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056AA2\n\
	movs r6, #0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #2\n\
	adds r5, r7, r0\n\
_08056AD6:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056ADA:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056ADA\n\
	movs r1, #0\n\
_08056AEC:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056AEC\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056AD6\n\
	movs r4, #0xc0\n\
	lsls r4, r4, #2\n\
	adds r3, r3, r4\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	mov r8, r0\n\
	movs r6, #6\n\
_08056B10:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
_08056B16:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056B16\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_08056B2C:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056B2C\n\
	cmp r6, #7\n\
	bls _08056B10\n\
	movs r1, #0\n\
_08056B42:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0x2f\n\
	bls _08056B42\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	mov ip, r0\n\
	movs r4, #0xe0\n\
	lsls r4, r4, #1\n\
	mov r8, r4\n\
	movs r6, #6\n\
_08056B5E:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_08056B6C:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056B6C\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_08056B84:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056B84\n\
	cmp r6, #7\n\
	bls _08056B5E\n\
	movs r1, #0\n\
_08056B9A:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0x2f\n\
	bls _08056B9A\n\
	movs r0, #0xe0\n\
	lsls r0, r0, #1\n\
	mov ip, r0\n\
	movs r4, #0x80\n\
	lsls r4, r4, #2\n\
	mov r8, r4\n\
	movs r6, #6\n\
_08056BB6:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_08056BC4:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056BC4\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_08056BDC:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056BDC\n\
	cmp r6, #7\n\
	bls _08056BB6\n\
	movs r1, #0\n\
_08056BF2:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0x2f\n\
	bls _08056BF2\n\
	movs r0, #0x80\n\
	lsls r0, r0, #2\n\
	mov ip, r0\n\
	movs r6, #6\n\
_08056C08:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_08056C16:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056C16\n\
	movs r1, #0\n\
_08056C28:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056C28\n\
	cmp r6, #7\n\
	bls _08056C08\n\
	movs r1, #0\n\
_08056C3C:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0x2f\n\
	bls _08056C3C\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

NAKED
static void CopyShopCardBorderTiles (unsigned char* dest, unsigned char* r7, unsigned char* src) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r3, r0, #0\n\
	adds r7, r1, #0\n\
	movs r0, #0\n\
	mov r8, r0\n\
	movs r1, #0\n\
_08056C64:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0xf\n\
	bls _08056C64\n\
	movs r6, #0\n\
_08056C74:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
_08056C7A:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056C7A\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_08056C90:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056C90\n\
	cmp r6, #5\n\
	bls _08056C74\n\
	movs r0, #0\n\
	mov ip, r0\n\
	movs r4, #0x40\n\
	mov r8, r4\n\
	movs r1, #0\n\
_08056CAE:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0xf\n\
	bls _08056CAE\n\
	movs r6, #0\n\
_08056CBE:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_08056CCC:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056CCC\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_08056CE4:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056CE4\n\
	cmp r6, #5\n\
	bls _08056CBE\n\
	movs r0, #0x40\n\
	mov ip, r0\n\
	movs r4, #0x80\n\
	mov r8, r4\n\
	movs r1, #0\n\
_08056D02:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0xf\n\
	bls _08056D02\n\
	movs r6, #0\n\
_08056D12:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_08056D20:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056D20\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_08056D38:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056D38\n\
	cmp r6, #5\n\
	bls _08056D12\n\
	movs r0, #0x80\n\
	mov ip, r0\n\
	movs r1, #0\n\
_08056D52:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0xf\n\
	bls _08056D52\n\
	movs r6, #0\n\
	mov r4, ip\n\
	adds r5, r4, r7\n\
_08056D66:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056D6A:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056D6A\n\
	movs r1, #0\n\
_08056D7C:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056D7C\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056D66\n\
	movs r6, #6\n\
	movs r5, #0x30\n\
_08056D96:\n\
	movs r1, #4\n\
_08056D98:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056D98\n\
	movs r1, #0\n\
	adds r4, r5, r7\n\
_08056DAA:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056DAA\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056D96\n\
	movs r6, #0\n\
	movs r5, #0xc0\n\
_08056DC6:\n\
	movs r1, #4\n\
_08056DC8:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056DC8\n\
	movs r1, #0\n\
	adds r4, r5, r7\n\
_08056DDA:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056DDA\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056DC6\n\
	movs r0, #0x40\n\
	mov r8, r0\n\
	movs r6, #6\n\
	movs r4, #0x30\n\
	mov ip, r4\n\
	adds r5, r7, #0\n\
	adds r5, #0x30\n\
_08056E00:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056E04:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056E04\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056E1C:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056E1C\n\
	adds r5, #8\n\
	movs r0, #8\n\
	add ip, r0\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056E00\n\
	movs r4, #0x80\n\
	lsls r4, r4, #1\n\
	mov r8, r4\n\
	movs r6, #0\n\
	mov ip, r6\n\
	adds r5, r7, #0\n\
	adds r5, #0xc0\n\
_08056E46:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056E4A:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056E4A\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056E62:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056E62\n\
	adds r5, #8\n\
	movs r0, #8\n\
	add ip, r0\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056E46\n\
	movs r4, #0x80\n\
	mov r8, r4\n\
	movs r6, #6\n\
	movs r0, #0x30\n\
	mov ip, r0\n\
	adds r5, r7, #0\n\
	adds r5, #0x70\n\
_08056E8C:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056E90:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056E90\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056EA8:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056EA8\n\
	adds r5, #8\n\
	movs r4, #8\n\
	add ip, r4\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056E8C\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #1\n\
	mov r8, r0\n\
	movs r6, #0\n\
	mov ip, r6\n\
	adds r4, #0xf8\n\
	adds r5, r7, r4\n\
_08056ED2:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056ED6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056ED6\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056EEE:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056EEE\n\
	adds r5, #8\n\
	movs r0, #8\n\
	add ip, r0\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056ED2\n\
	movs r6, #6\n\
	adds r5, r7, #0\n\
	adds r5, #0xb0\n\
_08056F10:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056F14:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056F14\n\
	movs r1, #0\n\
_08056F26:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056F26\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056F10\n\
	movs r6, #0\n\
	movs r4, #0xa0\n\
	lsls r4, r4, #1\n\
	adds r5, r7, r4\n\
_08056F44:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056F48:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056F48\n\
	movs r1, #0\n\
_08056F5A:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056F5A\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056F44\n\
	movs r6, #6\n\
	movs r5, #0xf0\n\
_08056F74:\n\
	movs r1, #4\n\
_08056F76:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056F76\n\
	movs r1, #0\n\
	adds r4, r5, r7\n\
_08056F88:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056F88\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056F74\n\
	movs r6, #0\n\
	movs r5, #0xc0\n\
	lsls r5, r5, #1\n\
_08056FA6:\n\
	movs r1, #4\n\
_08056FA8:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056FA8\n\
	movs r1, #0\n\
	adds r4, r5, r7\n\
_08056FBA:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056FBA\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _08056FA6\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	mov r8, r0\n\
	movs r6, #6\n\
	movs r4, #0x30\n\
	mov ip, r4\n\
	adds r5, r7, #0\n\
	adds r5, #0xf0\n\
_08056FE2:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08056FE6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08056FE6\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08056FFE:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08056FFE\n\
	adds r5, #8\n\
	movs r0, #8\n\
	add ip, r0\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08056FE2\n\
	movs r4, #0xe0\n\
	lsls r4, r4, #1\n\
	mov r8, r4\n\
	movs r6, #0\n\
	mov ip, r6\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	adds r5, r7, r0\n\
_0805702A:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_0805702E:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _0805702E\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_08057046:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08057046\n\
	adds r5, #8\n\
	movs r4, #8\n\
	add ip, r4\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _0805702A\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #1\n\
	mov r8, r0\n\
	movs r6, #6\n\
	movs r4, #0x30\n\
	mov ip, r4\n\
	subs r0, #0x10\n\
	adds r5, r7, r0\n\
_08057072:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08057076:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08057076\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_0805708E:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _0805708E\n\
	adds r5, #8\n\
	movs r4, #8\n\
	add ip, r4\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _08057072\n\
	movs r0, #0x80\n\
	lsls r0, r0, #2\n\
	mov r8, r0\n\
	movs r6, #0\n\
	mov ip, r6\n\
	movs r4, #0xe0\n\
	lsls r4, r4, #1\n\
	adds r5, r7, r4\n\
_080570BA:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_080570BE:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080570BE\n\
	movs r1, #0\n\
	mov r0, ip\n\
	add r0, r8\n\
	adds r4, r0, r7\n\
_080570D6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _080570D6\n\
	adds r5, #8\n\
	movs r0, #8\n\
	add ip, r0\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _080570BA\n\
	movs r6, #6\n\
	movs r4, #0xb8\n\
	lsls r4, r4, #1\n\
	adds r5, r7, r4\n\
_080570FA:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_080570FE:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080570FE\n\
	movs r1, #0\n\
_08057110:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08057110\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #7\n\
	bls _080570FA\n\
	movs r6, #0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #2\n\
	adds r5, r7, r0\n\
_0805712E:\n\
	movs r1, #4\n\
	adds r4, r5, #4\n\
_08057132:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08057132\n\
	movs r1, #0\n\
_08057144:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _08057144\n\
	adds r5, #8\n\
	adds r6, #1\n\
	cmp r6, #5\n\
	bls _0805712E\n\
	movs r4, #0xc0\n\
	lsls r4, r4, #1\n\
	mov r8, r4\n\
	movs r6, #6\n\
_08057162:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
_08057168:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08057168\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_0805717E:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _0805717E\n\
	cmp r6, #7\n\
	bls _08057162\n\
	movs r1, #0\n\
_08057194:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0x2f\n\
	bls _08057194\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	mov ip, r0\n\
	movs r4, #0xe0\n\
	lsls r4, r4, #1\n\
	mov r8, r4\n\
	movs r6, #6\n\
_080571B0:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_080571BE:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _080571BE\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_080571D6:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _080571D6\n\
	cmp r6, #7\n\
	bls _080571B0\n\
	movs r1, #0\n\
_080571EC:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0x2f\n\
	bls _080571EC\n\
	movs r0, #0xe0\n\
	lsls r0, r0, #1\n\
	mov ip, r0\n\
	movs r4, #0x80\n\
	lsls r4, r4, #2\n\
	mov r8, r4\n\
	movs r6, #6\n\
_08057208:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_08057216:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08057216\n\
	movs r1, #0\n\
	mov r4, r8\n\
	adds r0, r5, r4\n\
	adds r4, r0, r7\n\
_0805722E:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _0805722E\n\
	cmp r6, #7\n\
	bls _08057208\n\
	movs r1, #0\n\
_08057244:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0x2f\n\
	bls _08057244\n\
	movs r0, #0x80\n\
	lsls r0, r0, #2\n\
	mov ip, r0\n\
	movs r6, #6\n\
_0805725A:\n\
	movs r1, #4\n\
	lsls r5, r6, #3\n\
	adds r6, #1\n\
	mov r4, ip\n\
	adds r0, r5, r4\n\
	adds r0, r0, r7\n\
	adds r4, r0, #4\n\
_08057268:\n\
	ldrb r0, [r4]\n\
	strb r0, [r3]\n\
	adds r3, #1\n\
	adds r2, #1\n\
	adds r4, #1\n\
	adds r1, #1\n\
	cmp r1, #7\n\
	bls _08057268\n\
	movs r1, #0\n\
_0805727A:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #3\n\
	bls _0805727A\n\
	cmp r6, #7\n\
	bls _0805725A\n\
	movs r1, #0\n\
_0805728E:\n\
	ldrb r0, [r2]\n\
	strb r0, [r3]\n\
	adds r2, #1\n\
	adds r3, #1\n\
	adds r1, #1\n\
	cmp r1, #0x2f\n\
	bls _0805728E\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}
// same as sub_802FF78 except for arg0 + 0x800, and stat mod
void sub_80572A8 (unsigned char* arg0, struct DuelCard* arg1) {
  gStatMod.card = arg1->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(arg1);
  SetFinalStat(&gStatMod);
  if (gCardInfo.spellEffect != 2 /*TODO: SPELL_EFFECT_NONE_MONSTER*/)
    return;
  if (gCardInfo.atk / 100 > 99)
    ConvertU16ToDigitBuffer(99, DIGIT_FLAG_NONE);
  else
    ConvertU16ToDigitBuffer(gCardInfo.atk / 100, DIGIT_FLAG_NONE);
  arg0 += 0x800;
  CpuCopy16(g89A81DE + gDigitBufferU16[3] * 64, arg0, 0x40);
  arg0 += 0x40;
  CpuCopy16(g89A7F1E[gDigitBufferU16[4]], arg0, 0x40);
}

void sub_805733C (unsigned char* arg0, struct DuelCard* arg1) {
  gStatMod.card = arg1->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(arg1);
  SetFinalStat(&gStatMod);
  if (gCardInfo.spellEffect != 2 /*TODO: SPELL_EFFECT_NONE_MONSTER*/)
    return;
  if (gCardInfo.def / 100 > 99)
    ConvertU16ToDigitBuffer(99, DIGIT_FLAG_NONE);
  else
    ConvertU16ToDigitBuffer(gCardInfo.def / 100, DIGIT_FLAG_NONE);
  arg0 += 0x880;
  CpuCopy16(g89A875E[gDigitBufferU16[3]], arg0, 0x40);
  arg0 += 0x40;
  CpuCopy16(g89A849E[gDigitBufferU16[4]], arg0, 0x40);
}

void sub_80573D0 (void* arg0, unsigned short cardId) {
  SetCardInfo(cardId);
  LZ77UnCompWram(g8E17F70[cardId], gSharedMem);
  sub_80565F0(arg0, gSharedMem, gUnk_8E17F48[gCardInfo.color]);
}

void CopyMiniCardPalette (unsigned short* dest) {
  CpuCopy16(g89A781C, dest, 320); //copy mini-card palette to buffer
}

void sub_805742C (unsigned char* arg0, unsigned short cardId) {
  SetCardInfo(cardId);
  LZ77UnCompWram(g8E17F70[cardId], gSharedMem);
  CopyShopCardBorderTiles(arg0, gSharedMem, gUnk_8E17F48[gCardInfo.color]);
}

//CopyFaceDownCardTiles (uses same palette as mini-card)
void CopyFaceDownCardTiles (unsigned char* arg0) {
  unsigned i, j;
  for (i = 0; i < 4; i++) {
    for (j = 0; j < 256; j++) { //copy 4 tiles in one row
      *arg0 = gUnk_893B290[i * 256 + j];
      arg0++;
    }
    arg0 += 0x300;
  }
}

/*
void sub_80574A8 (unsigned char arg0, unsigned char arg1) {
  s16 sl = sub_8057600(arg0, arg1);
  s16 r3 = sub_80575E0(arg0, arg1);
  *(unsigned long*)&gOamBuffer[102 + arg1 * 5 + arg0].a = (sl & 0xFF) | ((r3 << 16) & 0x1FF0000) | 0x80002100;
  *(unsigned short*)&gOamBuffer[102 + arg1 * 5 + arg0].b = (g8E116BC[arg1 * 5 + arg0] & 0x3FF | 0x800);
  sub_805754C(gOamBuffer + 102, arg0, arg1);
}*/

NAKED
void sub_80574A8 (unsigned char arg0, unsigned char arg1) {
  asm_unified("push {r4, r5, r6, lr}\n\
	mov r6, sl\n\
	mov r5, sb\n\
	mov r4, r8\n\
	push {r4, r5, r6}\n\
	adds r5, r0, #0\n\
	adds r4, r1, #0\n\
	lsls r5, r5, #0x18\n\
	lsrs r5, r5, #0x18\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	adds r0, r5, #0\n\
	adds r1, r4, #0\n\
	bl sub_8057600\n\
	mov sl, r0\n\
	adds r0, r5, #0\n\
	adds r1, r4, #0\n\
	bl sub_80575E0\n\
	adds r3, r0, #0\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r4\n\
	adds r0, r0, r5\n\
	lsls r1, r0, #3\n\
	mov r8, r1\n\
	ldr r6, _08057534\n\
	adds r1, r1, r6\n\
	mov sb, r1\n\
	movs r1, #0xff\n\
	mov r2, sl\n\
	ands r1, r2\n\
	lsls r3, r3, #0x10\n\
	ldr r2, _08057538\n\
	ands r3, r2\n\
	orrs r1, r3\n\
	ldr r2, _0805753C\n\
	orrs r1, r2\n\
	mov r3, sb\n\
	str r1, [r3]\n\
	adds r1, r6, #4\n\
	add r8, r1\n\
	ldr r2, _08057540\n\
	lsls r1, r0, #1\n\
	adds r1, r1, r2\n\
	ldrh r2, [r1]\n\
	ldr r1, _08057544\n\
	ands r1, r2\n\
	movs r3, #0x80\n\
	lsls r3, r3, #4\n\
	adds r2, r3, #0\n\
	orrs r1, r2\n\
	mov r2, r8\n\
	strh r1, [r2]\n\
	adds r0, #0x66\n\
	lsls r0, r0, #3\n\
	ldr r3, _08057548\n\
	adds r6, r6, r3\n\
	adds r0, r0, r6\n\
	adds r1, r5, #0\n\
	adds r2, r4, #0\n\
	bl sub_805754C\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08057534: .4byte 0x02018730\n\
_08057538: .4byte 0x01FF0000\n\
_0805753C: .4byte 0x80002100\n\
_08057540: .4byte 0x08E116BC\n\
_08057544: .4byte 0x000003FF\n\
_08057548: .4byte 0xFFFFFCD0");
}

static void sub_805754C (struct O* arg0, unsigned char arg1, unsigned char arg2) {
  switch (arg2) {
    case 0:
      arg0->a |= 0x6000000;
      break;
    case 1:
      if (!gFixedZones[1][arg1]->isDefending)
        arg0->a |= 0x6000000;
      else
        arg0->a |= 0x8000000;
      break;
    case 2:
      if (gFixedZones[2][arg1]->isDefending)
        arg0->a |= 0x4000000;
      else
        arg0->a |= 0x2000000;
      break;
    default:
      arg0->a |= 0x2000000;
  }
}

// unused?
static void sub_80575C8 (void) {
  CpuCopy16(g89A781C, gPaletteBuffer + 256, 320);
}

int sub_80575E0 (unsigned char arg0, unsigned char arg1) {
  return g8E116EE[arg1][arg0];
}

int sub_8057600 (unsigned char arg0_unused, unsigned char arg1) {
  return (signed short)(g8E11720[arg1] - gBG2VOFS);
}

static void sub_8057620 (unsigned char* arg0) {
  arg0 += 0xCC0;
  CpuCopy16(g89A77DC, arg0, 64);
}

static void sub_805763C (unsigned char* arg0, signed char arg1) {
  s16 absoluteVal = arg1;
  arg0 += 0xC00;
  if (arg1 < 0) {
    CpuCopy16(g89A8CDE, arg0, 64); //minus sign tile
    arg0 += 0x40;
  }
  absoluteVal = absoluteVal < 0 ? -absoluteVal : absoluteVal; //TODO: use stdlib abs?
  if (absoluteVal <= 0)
    return;
  if (absoluteVal > 9)
    absoluteVal = 10;
  CpuCopy16(g89A8A1E + absoluteVal * 64, arg0, 64);
}

static void sub_8057698 (unsigned char* arg0) {
  arg0 += 0xC80;
  CpuCopy16(g89A7BDE, arg0, 64);
}

//almost same as sub_802FF14
void sub_80576B4 (unsigned char* arg0, unsigned short cardId) {
  SetCardInfo(cardId);
  if (gCardInfo.attribute == ATTRIBUTE_NONE)
    return;
  arg0 += 0xC0;
  CpuCopy16(g8E1168C[gCardInfo.attribute], arg0, 64);
}

//almost same as sub_802FF4C
void sub_80576EC (unsigned char* arg0, unsigned short cardId) {
  signed char numTributes = GetNumRequiredTributes(cardId);
  if (numTributes > 0)
    CpuCopy16(g89A7ADE[numTributes], arg0, 64);
}

static void sub_8057718 (unsigned char* arg0, unsigned short cardId) {
  unsigned char numTributes = GetRitualNumTributes(cardId);
  if (numTributes)
    CpuCopy16(g89A7ADE[numTributes], arg0, 64);
}

//unused?
static void sub_8057744 (void) {
  unsigned char i, j;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    for (j = 0; j < 5; j++)
      if (gFixedZones[i][j]->id != CARD_NONE)
        sub_80574A8(j, i);
}

int sub_8057790 (unsigned char arg0_unused, unsigned char arg1) {
  return g8E11720[arg1];
}

void sub_80577A4 (void) {
  unsigned char i, j;
  sub_80562F4();
  CpuCopy16(g89A781C, gPaletteBuffer + 256, 320);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    for (j = 0; j < 5; j++)
      if (gFixedZones[i][j]->id != CARD_NONE)
        sub_80574A8(j, i);
}

void sub_8057808 (void) {
  unsigned char i, j;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    for (j = 0; j < 5; j++)
      if (gFixedZones[i][j]->id != CARD_NONE)
        sub_80574A8(j, i);
}



//new file
void InitAllRAM (void);
void InitGfxRAM (void);
void sub_8034E30 (void);
void sub_800818C (void);

void sub_8057854 (void) {
  REG_WAITCNT = 0x45B6;
  InitAllRAM();
  InitGfxRAM();
  sub_8034E30();
  sub_800818C();
}

void sub_805787C (int arg0) {
  int i;
  for (i = 0; i < arg0; i++)
    WaitForVBlank();
}
