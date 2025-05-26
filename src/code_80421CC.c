#include "global.h"

extern unsigned char g8E0D81A[];
extern unsigned char g8E0D81D[];
extern unsigned char g8E0D820[];
extern unsigned char g8E0D823[];

extern unsigned char g8E0D934[];

extern unsigned char g8E0D922[];
extern unsigned char g8E0D926[];
extern unsigned char g8E0D92A[];
extern unsigned char g8E0D92E[];

extern u16 gRepeatedOrNewButtons;
extern u16 gPressedButtons;
extern unsigned char gIsPlayerTurnOver;

extern u16 g8E0D814[];
extern u16 g8E0D91A[];
extern u16 g80F1880[][30];
extern u16 g80F1D30[][30];
extern u16 g80F30E0[];
extern unsigned char g8E0D828[]; // "Attack | Defend | Tribute | Effect"

void InitBMenu (unsigned char);
void sub_80428EC (unsigned char);
void sub_8041014 (void);
u32 CanPlayerSeeCard (unsigned char y, unsigned char x);

extern u16 gNewButtons;
void UpdateAllDuelGfx (void);
void UpdateDuelGfxExceptField (void);


extern u16 g80F13D0[][30];
extern unsigned char g8DF811C[];
extern unsigned char g8E0D668[]; // "Deckcards"
extern unsigned char g8E0D753[]; // "Details | Turn end | Discard"

u16 sub_08007FEC(unsigned char, unsigned char, u16);
void sub_800800C(unsigned char, unsigned char, u16, u16);
s32 GetCardsDrawn(unsigned char);
void sub_8042ADC (unsigned char);
void sub_8042C64 (unsigned char);
void sub_8041050 (void);

enum {
  B_MENU_DETAILS,
  B_MENU_END_TURN,
  B_MENU_DISCARD
};

void BMenuMain (void) {
  unsigned char r4 = B_MENU_DETAILS;
  InitBMenu(0);
  while (1) {
    if (gRepeatedOrNewButtons & DPAD_UP) {
      PlayMusic(SFX_MOVE_CURSOR);
      r4 = g8E0D81A[r4];
      sub_80428EC(r4);
      WaitForVBlank();
      sub_8041014();
    }
    else if (gRepeatedOrNewButtons & DPAD_DOWN) {
      PlayMusic(SFX_MOVE_CURSOR);
      r4 = g8E0D81D[r4];
      sub_80428EC(r4);
      WaitForVBlank();
      sub_8041014();
    }
    else if (gRepeatedOrNewButtons & DPAD_RIGHT) {
      PlayMusic(SFX_MOVE_CURSOR);
      r4 = g8E0D820[r4];
      sub_80428EC(r4);
      WaitForVBlank();
      sub_8041014();
    }
    else if (gRepeatedOrNewButtons & DPAD_LEFT) {
      PlayMusic(SFX_MOVE_CURSOR);
      r4 = g8E0D823[r4];
      sub_80428EC(r4);
      WaitForVBlank();
      sub_8041014();
    }
    else if (gNewButtons & A_BUTTON) {
      switch (r4) {
        case B_MENU_DETAILS:
          if (CanPlayerSeeCard(gDuelCursor.currentY, gDuelCursor.currentX) == 1
          && GetTypeGroup(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id)) {
            PlayMusic(SFX_SELECT);
            gStatMod.card = gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = GetFinalStage(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]);
            SetFinalStat(&gStatMod);
            sub_801F6B0();
            UpdateAllDuelGfx();
          }
          else {
            PlayMusic(SFX_FORBIDDEN);
            UpdateDuelGfxExceptField();
          }
          return;
        case B_MENU_END_TURN:
          PlayMusic(SFX_SELECT);
          gIsPlayerTurnOver = 1;
          UpdateDuelGfxExceptField();
          return;
        case B_MENU_DISCARD:
          if (gDuelCursor.currentY > 1 &&
              gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id != CARD_NONE &&
              !gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->willChangeSides)
            {
              PlayMusic(SFX_DISCARD);
              ClearZoneAndSendMonToGraveyard2(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX], 0);
              UpdateDuelGfxExceptField();
              TryActivatingPermanentEffects();
            }
          else {
            PlayMusic(SFX_FORBIDDEN);
            UpdateDuelGfxExceptField();
          }
          return;
      }
      break;
    }
    else if (gNewButtons & B_BUTTON) {
      PlayMusic(SFX_CANCEL);
      break;
    }
    else
      WaitForVBlank();
  }
  UpdateDuelGfxExceptField();
}

NAKED
void InitBMenu (unsigned char arg0) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x2c\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	mov sl, r0\n\
	movs r6, #0\n\
_080423AC:\n\
	lsls r0, r6, #4\n\
	subs r0, r0, r6\n\
	lsls r0, r0, #2\n\
	ldr r1, _0804273C\n\
	adds r0, r0, r1\n\
	lsls r1, r6, #6\n\
	ldr r4, _08042740\n\
	adds r1, r1, r4\n\
	ldr r2, _08042744\n\
	bl CpuSet\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #0x11\n\
	bls _080423AC\n\
	ldr r0, _08042748\n\
	ldr r2, _0804274C\n\
	adds r1, r4, r2\n\
	movs r2, #0x40\n\
	bl CpuSet\n\
	ldr r3, _08042750\n\
	adds r0, r4, r3\n\
	ldr r1, _08042754\n\
	ldr r2, _08042758\n\
	bl CopyStringTilesToVRAMBuffer\n\
	ldr r1, _0804275C\n\
	adds r0, r4, r1\n\
	ldr r1, _08042760\n\
	ldr r2, _08042764\n\
	bl CopyStringTilesToVRAMBuffer\n\
	movs r4, #0xe8\n\
	lsls r4, r4, #8\n\
	movs r0, #0\n\
	movs r1, #0\n\
	adds r2, r4, #0\n\
	bl sub_08007FEC\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov sb, r0\n\
	movs r0, #0x14\n\
	movs r1, #1\n\
	adds r2, r4, #0\n\
	bl sub_08007FEC\n\
	movs r2, #0xff\n\
	lsls r2, r2, #8\n\
	mov r8, r2\n\
	mov r3, r8\n\
	ands r3, r0\n\
	mov r8, r3\n\
	movs r6, #0\n\
	adds r7, r4, #0\n\
_0804241E:\n\
	adds r5, r6, #4\n\
	lsls r5, r5, #0x18\n\
	lsrs r5, r5, #0x18\n\
	adds r4, r6, #0\n\
	adds r4, #0x4e\n\
	mov r0, r8\n\
	orrs r4, r0\n\
	lsls r4, r4, #0x10\n\
	lsrs r4, r4, #0x10\n\
	adds r0, r5, #0\n\
	movs r1, #6\n\
	adds r2, r7, #0\n\
	adds r3, r4, #0\n\
	bl sub_800800C\n\
	adds r0, r5, #0\n\
	movs r1, #0xc\n\
	adds r2, r7, #0\n\
	adds r3, r4, #0\n\
	bl sub_800800C\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #3\n\
	bls _0804241E\n\
	movs r4, #0xe8\n\
	lsls r4, r4, #8\n\
	movs r0, #8\n\
	movs r1, #6\n\
	adds r2, r4, #0\n\
	mov r3, sb\n\
	bl sub_800800C\n\
	movs r0, #8\n\
	movs r1, #0xc\n\
	adds r2, r4, #0\n\
	mov r3, sb\n\
	bl sub_800800C\n\
	movs r6, #0\n\
	adds r7, r4, #0\n\
_08042472:\n\
	adds r5, r6, #0\n\
	adds r5, #0xb\n\
	lsls r5, r5, #0x18\n\
	lsrs r5, r5, #0x18\n\
	adds r4, r6, #0\n\
	adds r4, #0x52\n\
	mov r1, r8\n\
	orrs r4, r1\n\
	lsls r4, r4, #0x10\n\
	lsrs r4, r4, #0x10\n\
	adds r0, r5, #0\n\
	movs r1, #6\n\
	adds r2, r7, #0\n\
	adds r3, r4, #0\n\
	bl sub_800800C\n\
	adds r0, r5, #0\n\
	movs r1, #0xc\n\
	adds r2, r7, #0\n\
	adds r3, r4, #0\n\
	bl sub_800800C\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #5\n\
	bls _08042472\n\
	movs r6, #0\n\
	movs r7, #0xe8\n\
	lsls r7, r7, #8\n\
_080424AE:\n\
	adds r4, r6, #5\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r5, _08042768\n\
	adds r5, r6, r5\n\
	ldrb r3, [r5]\n\
	adds r3, #0x58\n\
	mov r2, r8\n\
	orrs r3, r2\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	ldrb r3, [r5]\n\
	adds r3, #0x5a\n\
	mov r0, r8\n\
	orrs r3, r0\n\
	adds r0, r4, #0\n\
	movs r1, #2\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	ldrb r3, [r5]\n\
	adds r3, #0x6c\n\
	mov r1, r8\n\
	orrs r3, r1\n\
	adds r0, r4, #0\n\
	movs r1, #3\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	ldrb r3, [r5]\n\
	adds r3, #0x6e\n\
	mov r2, r8\n\
	orrs r3, r2\n\
	adds r0, r4, #0\n\
	movs r1, #4\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #9\n\
	bls _080424AE\n\
	movs r6, #0\n\
	movs r5, #0xe8\n\
	lsls r5, r5, #8\n\
_08042510:\n\
	adds r4, r6, #0\n\
	adds r4, #0xf\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	adds r0, r4, #0\n\
	movs r1, #3\n\
	adds r2, r5, #0\n\
	mov r3, sb\n\
	bl sub_800800C\n\
	adds r0, r4, #0\n\
	movs r1, #4\n\
	adds r2, r5, #0\n\
	mov r3, sb\n\
	bl sub_800800C\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #1\n\
	bls _08042510\n\
	movs r6, #0\n\
	movs r7, #0xe8\n\
	lsls r7, r7, #8\n\
_08042540:\n\
	adds r5, r6, #0\n\
	adds r5, #0x11\n\
	lsls r5, r5, #0x18\n\
	lsrs r5, r5, #0x18\n\
	ldr r4, _08042768\n\
	adds r4, r6, r4\n\
	ldrb r3, [r4]\n\
	adds r3, #0x80\n\
	mov r0, r8\n\
	orrs r3, r0\n\
	adds r0, r5, #0\n\
	movs r1, #1\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	ldrb r3, [r4]\n\
	adds r3, #0x82\n\
	mov r1, r8\n\
	orrs r3, r1\n\
	adds r0, r5, #0\n\
	movs r1, #2\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #9\n\
	bls _08042540\n\
	movs r6, #0\n\
	movs r7, #0xe8\n\
	lsls r7, r7, #8\n\
_08042580:\n\
	adds r4, r6, #5\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r5, _08042768\n\
	adds r5, r6, r5\n\
	ldrb r3, [r5]\n\
	adds r3, #0x94\n\
	mov r2, r8\n\
	orrs r3, r2\n\
	adds r0, r4, #0\n\
	movs r1, #9\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	ldrb r3, [r5]\n\
	adds r3, #0x96\n\
	mov r0, r8\n\
	orrs r3, r0\n\
	adds r0, r4, #0\n\
	movs r1, #0xa\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	ldrb r3, [r5]\n\
	adds r3, #0xbc\n\
	mov r1, r8\n\
	orrs r3, r1\n\
	adds r0, r4, #0\n\
	movs r1, #0xf\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	ldrb r3, [r5]\n\
	adds r3, #0xbe\n\
	mov r2, r8\n\
	orrs r3, r2\n\
	adds r0, r4, #0\n\
	movs r1, #0x10\n\
	adds r2, r7, #0\n\
	bl sub_800800C\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #0x13\n\
	bls _08042580\n\
  ldr r0, _0804276C\n\
	adds r0, #0xf4\n\
	ldrh r0, [r0]\n\
	bl SetCardInfo\n\
	movs r6, #0\n\
	movs r4, #0\n\
	ldr r0, _08042770\n\
	ldr r0, [r0]\n\
	bl GetCurrentLanguageString\n\
	adds r2, r0, #0\n\
	ldrb r0, [r2]\n\
	cmp r0, #0\n\
	beq _0804263C\n\
	ldr r5, _08042774\n\
	cmp r0, #0x24\n\
	beq _0804263C\n\
_08042600:\n\
	ldrb r1, [r2]\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	cmp r0, #0\n\
	bge _08042618\n\
	mov r3, sp\n\
	adds r0, r3, r6\n\
	strb r1, [r0]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	adds r2, #1\n\
_08042618:\n\
	mov r0, sp\n\
	adds r1, r0, r6\n\
	ldrb r0, [r2]\n\
	strb r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	adds r2, #1\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x13\n\
	bhi _08042662\n\
	ldrb r0, [r2]\n\
	cmp r0, #0\n\
	beq _0804263C\n\
	cmp r0, #0x24\n\
	bne _08042600\n\
_0804263C:\n\
	ldr r5, _08042774\n\
	cmp r4, #0x13\n\
	bhi _08042662\n\
	movs r2, #0x81\n\
	movs r1, #0x40\n\
_08042646:\n\
	mov r3, sp\n\
	adds r0, r3, r6\n\
	strb r2, [r0]\n\
	adds r0, r6, #1\n\
	add r0, sp\n\
	strb r1, [r0]\n\
	adds r0, r6, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x13\n\
	bls _08042646\n\
_08042662:\n\
	mov r0, sp\n\
	adds r1, r0, r6\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	ldr r2, _08042764\n\
	adds r0, r5, #0\n\
	mov r1, sp\n\
	bl CopyStringTilesToVRAMBuffer\n\
	ldr r0, _0804276C\n\
	adds r0, #0xf8\n\
	ldrh r0, [r0]\n\
	bl SetCardInfo\n\
	movs r6, #0\n\
	movs r4, #0\n\
	ldr r0, _08042770\n\
	ldr r0, [r0]\n\
	bl GetCurrentLanguageString\n\
	adds r2, r0, #0\n\
	ldrb r0, [r2]\n\
	cmp r0, #0\n\
	beq _080426D6\n\
	ldr r1, _08042778\n\
	adds r5, r5, r1\n\
	cmp r0, #0x24\n\
	beq _080426D6\n\
_0804269A:\n\
	ldrb r1, [r2]\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	cmp r0, #0\n\
	bge _080426B2\n\
	mov r3, sp\n\
	adds r0, r3, r6\n\
	strb r1, [r0]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	adds r2, #1\n\
_080426B2:\n\
	mov r0, sp\n\
	adds r1, r0, r6\n\
	ldrb r0, [r2]\n\
	strb r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	adds r2, #1\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x13\n\
	bhi _080426FC\n\
	ldrb r0, [r2]\n\
	cmp r0, #0\n\
	beq _080426D6\n\
	cmp r0, #0x24\n\
	bne _0804269A\n\
_080426D6:\n\
	ldr r5, _0804277C\n\
	cmp r4, #0x13\n\
	bhi _080426FC\n\
	movs r2, #0x81\n\
	movs r1, #0x40\n\
_080426E0:\n\
	mov r3, sp\n\
	adds r0, r3, r6\n\
	strb r2, [r0]\n\
	adds r0, r6, #1\n\
	add r0, sp\n\
	strb r1, [r0]\n\
	adds r0, r6, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x13\n\
	bls _080426E0\n\
_080426FC:\n\
	mov r0, sp\n\
	adds r1, r0, r6\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	ldr r2, _08042764\n\
	adds r0, r5, #0\n\
	mov r1, sp\n\
	bl CopyStringTilesToVRAMBuffer\n\
  \n\
  \n\
	ldr r0, _08042780\n\
	ldrh r0, [r0]\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
	movs r6, #0\n\
	ldr r1, _08042784\n\
	adds r7, r5, r1\n\
	ldr r5, _08042788\n\
	ldr r4, _0804278C\n\
	movs r3, #4\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #6\n\
	adds r2, r0, #0\n\
_0804272A:\n\
	subs r1, r5, r6\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	subs r0, r3, r6\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	adds r0, #0x41\n\
	orrs r0, r2\n\
	b _08042790\n\
	.align 2, 0\n\
_0804273C: .4byte 0x080F13D0\n\
_08042740: .4byte 0x0200EC00\n\
_08042744: .4byte 0x04000010\n\
_08042748: .4byte 0x080F30E0\n\
_0804274C: .4byte 0xFFFF9FA0\n\
_08042750: .4byte 0xFFFFA020\n\
_08042754: .4byte 0x08E0D668\n\
_08042758: .4byte 0x00000801\n\
_0804275C: .4byte 0xFFFFA300\n\
_08042760: .4byte 0x08E0D753\n\
_08042764: .4byte 0x00000901\n\
_08042768: .4byte g8DF811C\n\
_0804276C: .4byte gDuel\n\
_08042770: .4byte gCardInfo\n\
_08042774: .4byte 0x02009B80\n\
_08042778: .4byte 0xFFFFFB00\n\
_0804277C: .4byte 0x02009680\n\
_08042780: .4byte gDuelLifePoints\n\
_08042784: .4byte 0xFFFF6D80\n\
_08042788: .4byte 0x000075AC\n\
_0804278C: .4byte 0x02021BD0\n\
_08042790:\n\
	strh r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #4\n\
	bls _0804272A\n\
	ldr r0, _080427F4\n\
	ldrh r0, [r0, #2]\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
	movs r6, #0\n\
	ldr r7, _080427F8\n\
	ldr r5, _080427FC\n\
	ldr r4, _08042800\n\
	movs r3, #4\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #6\n\
	adds r2, r0, #0\n\
_080427B6:\n\
	subs r1, r5, r6\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	subs r0, r3, r6\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	adds r0, #0x41\n\
	orrs r0, r2\n\
	strh r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #4\n\
	bls _080427B6\n\
  \n\
  \n\
  \n\
  \n\
	movs r0, #0\n\
	bl GetCardsDrawn\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	movs r0, #0\n\
	bl NumCardsInDeck\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, r4\n\
	blo _08042804\n\
	subs r0, r0, r4\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	b _08042806\n\
	.align 2, 0\n\
_080427F4: .4byte gDuelLifePoints\n\
_080427F8: .4byte 0x02000400\n\
_080427FC: .4byte 0x000074EC\n\
_08042800: .4byte 0x02021BD0\n\
_08042804:\n\
	movs r0, #0\n\
_08042806:\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
  \n\
  \n\
	movs r6, #0\n\
	ldr r7, _08042858\n\
	ldr r5, _0804285C\n\
	ldr r4, _08042860\n\
	movs r3, #4\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #6\n\
	adds r2, r0, #0\n\
_0804281C:\n\
	subs r1, r5, r6\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	subs r0, r3, r6\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	adds r0, #0x41\n\
	orrs r0, r2\n\
	strh r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #1\n\
	bls _0804281C\n\
	movs r0, #1\n\
	bl GetCardsDrawn\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	movs r0, #1\n\
	bl NumCardsInDeck\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, r4\n\
	blo _08042864\n\
	subs r0, r0, r4\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	b _08042866\n\
	.align 2, 0\n\
_08042858: .4byte 0x02000400\n\
_0804285C: .4byte 0x0000758A\n\
_08042860: .4byte 0x02021BD0\n\
_08042864:\n\
	movs r0, #0\n\
_08042866:\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
	movs r6, #0\n\
	ldr r7, _080428E0\n\
	ldr r5, _080428E4\n\
	ldr r4, _080428E8\n\
	movs r3, #4\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #6\n\
	adds r2, r0, #0\n\
_0804287C:\n\
	subs r1, r5, r6\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	subs r0, r3, r6\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	adds r0, #0x41\n\
	orrs r0, r2\n\
	strh r0, [r1]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #1\n\
	bls _0804287C\n\
	mov r0, sl\n\
	bl sub_80428EC\n\
	bl WaitForVBlank\n\
	bl sub_8041014\n\
  \n\
	movs r1, #0x80\n\
	lsls r1, r1, #0x13\n\
	movs r2, #0xec\n\
	lsls r2, r2, #7\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	adds r1, #0x42\n\
	movs r0, #0xf0\n\
	strh r0, [r1]\n\
	adds r1, #4\n\
	movs r0, #0x98\n\
	strh r0, [r1]\n\
	adds r1, #3\n\
	movs r0, #0x36\n\
	strb r0, [r1]\n\
	adds r1, #0xb\n\
	movs r0, #7\n\
	strh r0, [r1]\n\
	subs r1, #0xa\n\
	movs r0, #0x1f\n\
	strh r0, [r1]\n\
	add sp, #0x2c\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080428E0: .4byte 0x02000400\n\
_080428E4: .4byte 0x000074CA\n\
_080428E8: .4byte 0x02021BD0");
}

/*
void InitBMenu (unsigned char arg0) {
  u16 r0;
  unsigned char i, r4, r4two;
  u16 sb, r8;
  unsigned char* name;
  unsigned char buffer[44];
  for (i = 0; i < 18; i++)
    CpuCopy32(g80F13D0[i], gBgVram.cbb0 + 0xE800 + i * 64, 64);
  CpuCopy16(g80F30E0, gBgVram.cbb0 + 0x87A0, 128);
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x8820, g8E0D668, 0x801);
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x8B00, g8E0D753, 0x901);

  sb = sub_08007FEC(0, 0, 0xE800);
  r8 = sub_08007FEC(20, 1, 0xE800) & 0xFF00;

  for (i = 0; i < 4; i++) {
    sub_800800C(i + 4, 6, 0xE800, i + 78 | r8);
    sub_800800C(i + 4, 12, 0xE800, i + 78 | r8);
  }
  sub_800800C(8, 6, 0xE800, sb);
  sub_800800C(8, 12, 0xE800, sb);
  for (i = 0; i < 6; i++) {
    sub_800800C(i + 11, 6, 0xE800, i + 82 | r8);
    sub_800800C(i + 11, 12, 0xE800, i + 82 | r8);
  }
  for (i = 0; i < 10; i++) {
    sub_800800C(i + 5, 1, 0xE800, g8DF811C[i] + 88 | r8);
    sub_800800C(i + 5, 2, 0xE800, g8DF811C[i] + 90 | r8);
    sub_800800C(i + 5, 3, 0xE800, g8DF811C[i] + 108 | r8);
    sub_800800C(i + 5, 4, 0xE800, g8DF811C[i] + 110 | r8);
  }
  for (i = 0; i < 2; i++) {
    sub_800800C(i + 15, 3, 0xE800, sb);
    sub_800800C(i + 15, 4, 0xE800, sb);
  }
  for (i = 0; i < 10; i++) {
    sub_800800C(i + 17, 1, 0xE800, g8DF811C[i] + 128 | r8);
    sub_800800C(i + 17, 2, 0xE800, g8DF811C[i] + 130 | r8);
  }
  for (i = 0; i < 20; i++) {
    sub_800800C(i + 5, 9, 0xE800, g8DF811C[i] + 148 | r8);
    sub_800800C(i + 5, 10, 0xE800, g8DF811C[i] + 150 | r8);
    sub_800800C(i + 5, 15, 0xE800, g8DF811C[i] + 188 | r8);
    sub_800800C(i + 5, 16, 0xE800, g8DF811C[i] + 190 | r8);
  }

  SetCardInfo(gDuel.duelistbattleState[ACTIVE_DUELIST].graveyard);
  i = 0;
  r4 = 0;
  name = GetCurrentLanguageString(gCardInfo.name);
  while (r4 < 20 && *name && *name != '$') {
    if (*name > 127) {
      buffer[i] = *name;
      i++;
      name++;
    }
    buffer[i] = *name;
    i++;
    name++;
    r4++;
  }
  for (; r4 < 20; r4++) {
    buffer[i] = 129;
    buffer[i + 1] = 64;
    i += 2;
  }
  buffer[i] = 0;
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x9780, buffer, 0x901);

  SetCardInfo(gDuel.duelistbattleState[1].graveyard);
  i = 0, r4 = 0, name = GetCurrentLanguageString(gCardInfo.name);
  while (r4 < 20 && *name && *name != '$') {
    if (*name > 127) {
      buffer[i] = *name;
      i++;
      name++;
    }
    buffer[i] = *name;
    i++;
    name++;
    r4++;
  }
  for (; r4 < 20; r4++) {
    buffer[i] = 129;
    buffer[i + 1] = 64;
    i += 2;
  }
  buffer[i] = 0;
  CopyStringTilesToVRAMBuffer(gBgVram.cbb0 + 0x9280, buffer, 0x901);

  sub_800DDA0(gDuelLifePoints[DUEL_PLAYER], 0);
  for (i = 0; i < 5; i++) {
    *(u16*)(gBgVram.cbb0 + (0x75AC - i) * 2) = g2021BD0[4 - i] + 65 | 0x3000;
  }
  sub_800DDA0(gDuelLifePoints[DUEL_OPPONENT], 0);
  for (i = 0; i < 5; i++) {
    *(u16*)(gBgVram.cbb0 + (0x74EC - i) * 2) = g2021BD0[4 - i] + 65 | 0x3000;
  }
  r4two = GetCardsDrawn(0);
  r0 = (unsigned char)NumCardsInDeck(0);
  if (r0 >= r4two)
    r0 -= r4two;
  else
    r0 = 0;
  sub_800DDA0(r0, 0);

  for (i = 0; i < 2; i++)
    *(u16*)(gBgVram.cbb0 + (0x758A - i) * 2) = g2021BD0[4 - i] + 65 | 0x3000;

  r4two = GetCardsDrawn(1);
  r0 = (unsigned char)NumCardsInDeck(1);
  if (r0 >= r4two)
    r0 -= r4two;
  else
    r0 = 0;
  sub_800DDA0(r0, 0);
  for (i = 0; i < 2; i++)
    *(u16*)(gBgVram.cbb0 + (0x74CA - i) * 2) = g2021BD0[4 - i] + 65 | 0x3000;
  sub_80428EC(arg0);
  WaitForVBlank();
  sub_8041014();
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
  REG_WIN1H = 0xF0;
  REG_WIN1V = 0x98;
  (*(vu8 *)(REG_BASE + 0x49)) = 0x36;
  REG_BLDY = 7;
  REG_WINOUT = 31;
}*/

union N {
  unsigned char a[0x4000];
  u16 b[0x2000];
}extern gVr;

void sub_80428EC (unsigned char arg0) {
  unsigned char i;
  for (i = 0; i < 3; i++) {
    if (arg0 != i) {
      gVr.b[g8E0D814[i] / 2 + 1] = 0x7000;
      gVr.b[g8E0D814[i] / 2 + 2] = 0x7000;
      gVr.b[g8E0D814[i] / 2 + 33] = 0x7000;
      gVr.b[g8E0D814[i] / 2 + 34] = 0x7000;
    }
    else {
      gVr.b[g8E0D814[i] / 2 + 1] = 0x703D;
      gVr.b[g8E0D814[i] / 2 + 2] = 0x703E;
      gVr.b[g8E0D814[i] / 2 + 33] = 0x703F;
      gVr.b[g8E0D814[i] / 2 + 34] = 0x7040;
    }
  }
}

unsigned sub_80429A0 (void) {
  return 1;
}

unsigned sub_80429A4 (void) {
  unsigned char r4 = 0;
  sub_8042ADC(0);
  while (1) {
    while (1) {
      if (gRepeatedOrNewButtons & DPAD_UP) {
        PlayMusic(SFX_MOVE_CURSOR);
        r4 = g8E0D922[r4];
      }
      else if (gRepeatedOrNewButtons & DPAD_DOWN) {
        PlayMusic(SFX_MOVE_CURSOR);
        r4 = g8E0D926[r4];
      }
      else if (gRepeatedOrNewButtons & DPAD_LEFT) {
        PlayMusic(SFX_MOVE_CURSOR);
        r4 = g8E0D92E[r4];
      }
      else if (gRepeatedOrNewButtons & DPAD_RIGHT) {
        PlayMusic(SFX_MOVE_CURSOR);
        r4 = g8E0D92A[r4];
      }
      else
        break;
      sub_8042C64(r4);
      WaitForVBlank();
      sub_8041014();
    }
    if (gNewButtons & A_BUTTON) {
      switch (r4) {
        case 0:
          return 1;
        case 1:
          return 2;
        case 2:
          return 3;
        case 3:
          return 4;
      }
    }
    if (gNewButtons & B_BUTTON) {
      PlayMusic(SFX_CANCEL);
      return 5;
    }
    if (r4 < 2) {
      if (r4 == 0)
        gTurnZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      else
        gTurnZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 1;
      sub_80574A8(gDuelCursor.currentX, gDuelCursor.currentY);
      SetVBlankCallback(LoadOam);
    }
    WaitForVBlank();
  }
}

void sub_8042ADC (unsigned char arg0) {
  unsigned char i;
  unsigned short r7;
  for (i = 0; i < 18; i++)
    CpuCopy16(g80F1880[i], gVr.a + 0xE800 + i * 64, 64);
  CpuCopy16(g80F30E0, gVr.a + 0x87A0, 128);
  r7 = sub_08007FEC(4, 3, 0xE800) & 0xFF00;
  for (i = 0; i < 8; i++) {
    sub_800800C(i + 4, 3, 0xE800, (g8DF811C[i] + 65) | r7);
    sub_800800C(i + 4, 4, 0xE800, (g8DF811C[i] + 67) | r7);
    sub_800800C(i + 4, 5, 0xE800, (g8DF811C[i] + 81) | r7);
    sub_800800C(i + 4, 6, 0xE800, (g8DF811C[i] + 83) | r7);
  }
  for (i = 0; i < 12; i++) {
    sub_800800C(i + 14, 3, 0xE800, (g8DF811C[i] + 97) | r7);
    sub_800800C(i + 14, 4, 0xE800, (g8DF811C[i] + 99) | r7);
    sub_800800C(i + 14, 5, 0xE800, (g8DF811C[i] + 121) | r7);
    sub_800800C(i + 14, 6, 0xE800, (g8DF811C[i] + 123) | r7);
  }
  CopyStringTilesToVRAMBuffer(gVr.a + 0x8820, g8E0D828, 0x901);
  sub_8042C64(arg0);
  WaitForVBlank();
  REG_WIN1H = 0xCD4;
  REG_WIN1V = 0x143C;
  *(vu8*)(0x4000049) = 54;
  sub_8041014();
  REG_BLDY = 10;
  REG_WINOUT = 31;
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
}

void sub_8042C64 (unsigned char arg0) {
  unsigned char i;
  for (i = 0; i < 4; i++) {
    if (arg0 != i) {
      gVr.b[g8E0D91A[i] / 2 ] = 0x7000;
      gVr.b[g8E0D91A[i] / 2 + 1] = 0x7000;
      gVr.b[g8E0D91A[i] / 2 + 32] = 0x7000;
      gVr.b[g8E0D91A[i] / 2 + 33] = 0x7000;
    }
    else {
      gVr.b[g8E0D91A[i] / 2] = 0x703D;
      gVr.b[g8E0D91A[i] / 2 + 1] = 0x703E;
      gVr.b[g8E0D91A[i] / 2 + 32] = 0x703F;
      gVr.b[g8E0D91A[i] / 2 + 33] = 0x7040;
    }
  }
}

void sub_8042D14 (void) {
  unsigned char i, j;
  for (i = 0; i < 64; i++)
    CpuCopy32(g80F1D30[i], gVr.a + 0xF000 + i * 64, 64);
  for (i = 0; i < 5; i++) {
    for (j = 0; j < 5; j++) {
      u16* r4 = gVr.b + ((((((sub_8057790(j, i) + 24) * 8) & 0xFC0) + sub_80575E0(j, i) / 4)) + 0xF000) / 2;
      if (CanPlayerSeeCard(i, j) == 1) {
        gStatMod.card = gFixedZones[i][j]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gFixedZones[i][j]);
        SetFinalStat(&gStatMod);
      }
      else
        SetCardInfo(CARD_NONE);
      sub_800DDA0(gCardInfo.atk, 0);
      *r4++ = g2021BD0[0] + 0x303D;
      *r4++ = g2021BD0[1] + 0x303D;
      *r4++ = g2021BD0[2] + 0x303D;
      *r4++ = g2021BD0[3] + 0x303D;
      *r4 = g2021BD0[4] + 0x303D;
      r4 += 28;
      sub_800DDA0(gCardInfo.def, 0);
      *r4++ = g2021BD0[0] + 0x303D;
      *r4++ = g2021BD0[1] + 0x303D;
      *r4++ = g2021BD0[2] + 0x303D;
      *r4++ = g2021BD0[3] + 0x303D;
      *r4 = g2021BD0[4] + 0x303D;
    }
  }
}

void sub_8042E80 (void) {
  sub_8042D14();
  CopyStringTilesToVRAMBuffer(gVr.a + 0x87A0, g8E0D934, 0x801);
  REG_BG0CNT = 0x9E08;
  gBG0HOFS = gBG2HOFS;
  gBG0VOFS = gBG2VOFS;
  WaitForVBlank();
  sub_8041050();
  REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
  REG_WIN1H = 0xF0;
  REG_WIN1V = 0x98;
  *(vu8*)(0x4000049) = 53;
  REG_BLDY = 7;
  REG_WINOUT = 0x1E;
}

void sub_8042F04 (void) {
  sub_8042E80();
  while (gPressedButtons & 0x200)
    WaitForVBlank();
  REG_DISPCNT = DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
  WaitForVBlank();
}
