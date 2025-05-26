#include "global.h"

static struct {
  unsigned char a : 1;
  unsigned char b : 1;
  unsigned char destroyCard : 1;
  unsigned char showAttack : 1;
  unsigned char showDefense : 1;
  unsigned char showAttribute : 1;
  unsigned char g : 1;
  unsigned char h : 1;
} sCardFlags[2];

static void ClearCardFlags (void);
static void InitCardFlags (void);
static void SetCardStats (unsigned char, unsigned char);
static void sub_801BB7C (void);
static void VBlankCbDisableDisplay (void);
static void sub_801BC58 (void);
static void sub_801C1DC (unsigned char);
static void sub_801C218 (void);
static void sub_801C2A0 (void);
static unsigned char sub_801C328 (unsigned, unsigned);
static void sub_801C334 (unsigned);
static void sub_801C368 (void);
static void sub_801C38C (void);
static void sub_801C39C (void);
static void sub_801C3AC (void);
static void sub_801C3C0 (void);
static void sub_801C3CC (void);
static void sub_801C3D8 (void);
static void sub_801C6BC (unsigned char);
static unsigned char sub_801C71C (void);
static void sub_0801C730 (void);
static void sub_801C734 (void);
static void sub_801C758 (void);
static void sub_801C768 (void);
static void sub_801C7AC (void);
static void sub_801C7B8 (unsigned char);
static void sub_801C870 (unsigned char);
static void sub_801C98C (unsigned char);
static void sub_801CA50 (void);
static void sub_801CA70 (void);
static void sub_801CA90 (void);
static void sub_801CAA0 (void);
static void sub_801CAAC (void);
static void sub_801CDEC (unsigned char);
static unsigned char sub_801CE44 (void);
static void sub_0801CE68 (void);
static void sub_801CE6C (void);
static void sub_801CE78 (void);
static void sub_801CE9C (void);
static void VBlankCbDisableObjects (void);

struct UnkB0D2 {
  unsigned char unk0;
  unsigned char filler[3];
  struct Unk4 {
    unsigned char filler0[4];
    unsigned short unk4;
  }* unk4;
} extern g80B0D20[];
extern unsigned char g80B0D50[];
extern unsigned short g80B68D4[][4];


struct UnkE008B4 {
  unsigned short unk0;
  unsigned short unk2;
  unsigned short unk4;
} extern *gE008B4;

struct Unk8E00AA0 {
  unsigned short unk0;
  unsigned short unk2;
  unsigned char unk4;
  unsigned char unk5;
  unsigned char unk6;
  unsigned char unk7;
  unsigned char unk8;
} extern *g8E00AA0;

extern unsigned char gSharedMem[];
extern unsigned short gOamBuffer[];


struct UnkE0061C {
  unsigned char filler0[0x18];
  unsigned char unk18;
  unsigned char unk19;
  unsigned char unk1A;
  unsigned char unk1B;
  unsigned char unk1C;
  unsigned char unk1D;
} extern *gE0061C;

struct UnkE0081C {
  unsigned char unk0;
  unsigned char unk1;
} extern *gE0081C;
struct Unk80B0D54 {
  unsigned char filler0[4];
  unsigned unk4; //ptr type
} extern g80B0D54[];
extern unsigned short g80B4894[];
extern unsigned short g80B1E94[];
extern unsigned short g80B3E94[];
struct OAMTemplate {
  unsigned short attr0;
  unsigned short attr1;
  unsigned short attr2;
  unsigned short filler;
};
struct Unk8E00880 {
  unsigned char filler0[4];
  struct OAMTemplate* oam;
} extern *gE00880[];
extern unsigned short g80B8954[];
extern unsigned short g80B6954[];
extern unsigned short g80B48B4[];
extern unsigned short g80B68B4[];
struct Unk80B0E44 {
  unsigned char unk0;
  unsigned char unk1;
  unsigned char filler[2];
  unsigned unk4; // ptr type
} extern g80B0E44[];

// MonsterAttackScreenMain
void sub_801B66C (void) {
  unsigned char i;
  if (!gUnk2023EA0.unk18)
    return;
  ClearCbb0Buffer();
  ClearCbb1Buffer();
  ClearCbb3Buffer();
  ClearCardFlags();
  InitCardFlags();
  SetCardStats(1, 0);
  if (sCardFlags[0].a)
    sub_800B288(1);
  SetCardStats(0, 1);
  if (sCardFlags[1].a)
    sub_800B288(0);
  SetVBlankCallback(VBlankCbDisableDisplay);
  WaitForVBlank();
  sub_801BB7C();
  SetVBlankCallback(sub_801BC58);
  WaitForVBlank();
  for (i = 0; i < 15; i++)
    WaitForVBlank();
  if (sCardFlags[1].b || sCardFlags[1].destroyCard) {
    if (sCardFlags[1].b) {
      if (sCardFlags[1].h)
        sub_801CDEC(1);
      else
        sub_801C6BC(1);
      for (i = 0; i < 6; i++)
        WaitForVBlank();
    }
    if (sCardFlags[1].destroyCard)
      sub_801C1DC(1);
    if (sCardFlags[1].g)
      sub_801C7B8(1);
    if (sCardFlags[1].b || sCardFlags[1].destroyCard) {
      if (sCardFlags[0].b || sCardFlags[0].destroyCard)
        for (i = 0; i < 30; i++)
          WaitForVBlank();
      else {
        goto a;
      }
    }
  }
  if (sCardFlags[0].b || sCardFlags[0].destroyCard) {
    if (sCardFlags[0].b) {
      if (sCardFlags[0].h)
        sub_801CDEC(0);
      else
        sub_801C6BC(0);
      for (i = 0; i < 6; i++)
        WaitForVBlank();
    }
    if (sCardFlags[0].destroyCard)
      sub_801C1DC(0);
    if (sCardFlags[0].g)
      sub_801C7B8(0);
  }
  a:
  if (gUnk2023EA0.unk18 == 5 || gUnk2023EA0.unk18 == 8)
    for (i = 0; i < 30; i++)
      WaitForVBlank();
}

static void ClearCardFlags (void) {
  unsigned char i;
  for (i = 0; i < 2; i++) {
    sCardFlags[i].a = 0;
    sCardFlags[i].b = 0;
    sCardFlags[i].destroyCard = 0;
    sCardFlags[i].showAttack = 0;
    sCardFlags[i].showDefense = 0;
    sCardFlags[i].showAttribute = 0;
    sCardFlags[i].g = 0;
    sCardFlags[i].h = 0;
  }
}

static void InitCardFlags (void) {
  switch (gUnk2023EA0.unk18) {
    case 0:
      break;
    case 1:
      sCardFlags[0].a = 1;
      sCardFlags[0].showAttack = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].b = 1;
      sCardFlags[1].destroyCard = 1;
      sCardFlags[1].showAttack = 1;
      sCardFlags[1].g = 1;
      break;
    case 2:
      sCardFlags[0].a = 1;
      sCardFlags[0].b = 1;
      sCardFlags[0].destroyCard = 1;
      sCardFlags[0].showAttack = 1;
      sCardFlags[0].g = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].b = 1;
      sCardFlags[1].destroyCard = 1;
      sCardFlags[1].showAttack = 1;
      sCardFlags[1].g = 1;
      break;
    case 3:
      sCardFlags[0].a = 1;
      sCardFlags[0].b = 1;
      sCardFlags[0].destroyCard = 1;
      sCardFlags[0].showAttack = 1;
      sCardFlags[0].g = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].showAttack = 1;
      break;
    case 4:
      sCardFlags[0].a = 1;
      sCardFlags[0].showAttack = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].b = 1;
      sCardFlags[1].destroyCard = 1;
      sCardFlags[1].showDefense = 1;
      sCardFlags[1].g = 1;
      break;
    case 5:
      sCardFlags[0].a = 1;
      sCardFlags[0].showAttack = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].showDefense = 1;
      break;
    case 6:
      sCardFlags[0].a = 1;
      sCardFlags[0].b = 1;
      sCardFlags[0].showAttack = 1;
      sCardFlags[0].g = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].showDefense = 1;
      break;
    case 7:
      sCardFlags[0].a = 1;
      sCardFlags[0].showDefense = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].b = 1;
      sCardFlags[1].showAttack = 1;
      sCardFlags[1].g = 1;
      break;
    case 8:
      sCardFlags[0].a = 1;
      sCardFlags[0].showDefense = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].showAttack = 1;
      break;
    case 9:
      sCardFlags[0].a = 1;
      sCardFlags[0].b = 1;
      sCardFlags[0].destroyCard = 1;
      sCardFlags[0].showDefense = 1;
      sCardFlags[0].g = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].showAttack = 1;
      break;
    case 10:
      sCardFlags[0].a = 1;
      sCardFlags[0].showAttack = 1;
      sCardFlags[1].b = 1;
      sCardFlags[1].g = 1;
      sCardFlags[1].h = 1;
      break;
    case 11:
      sCardFlags[0].a = 1;
      sCardFlags[0].showAttack = 1;
      break;
    case 12:
      sCardFlags[0].a = 1;
      sCardFlags[0].b = 1;
      sCardFlags[0].destroyCard = 1;
      sCardFlags[0].showAttack = 1;
      sCardFlags[0].g = 1;
      sCardFlags[0].h = 1;
      break;
    case 13:
      sCardFlags[1].a = 1;
      sCardFlags[1].b = 1;
      sCardFlags[1].destroyCard = 1;
      sCardFlags[1].showAttack = 1;
      sCardFlags[1].g = 1;
      sCardFlags[1].h = 1;
      break;
    case 14:
      sCardFlags[1].a = 1;
      sCardFlags[1].showAttack = 1;
      break;
    case 15:
      sCardFlags[0].b = 1;
      sCardFlags[0].g = 1;
      sCardFlags[0].h = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].showAttack = 1;
      break;
    case 16:
      sCardFlags[0].a = 1;
      sCardFlags[0].showAttribute = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].b = 1;
      sCardFlags[1].destroyCard = 1;
      sCardFlags[1].showAttribute = 1;
      sCardFlags[1].g = 1;
      break;
    case 17:
      sCardFlags[0].a = 1;
      sCardFlags[0].b = 1;
      sCardFlags[0].destroyCard = 1;
      sCardFlags[0].showAttribute = 1;
      sCardFlags[0].g = 1;
      sCardFlags[1].a = 1;
      sCardFlags[1].showAttribute = 1;
      break;
  }
}

//TODO: rename arg1 to something like whoseCard
static void SetCardStats (unsigned char arg0_unused, unsigned char arg1) {
  SetCardInfo(gUnk2023EA0.unk0[arg1].cardId);
  if (sCardFlags[arg1].showAttack)
    gCardInfo.atk = gUnk2023EA0.unk0[arg1].cardAttack;
  else
    gCardInfo.atk = 0xFFFF;
  if (sCardFlags[arg1].showDefense)
    gCardInfo.def = gUnk2023EA0.unk0[arg1].cardDefense;
  else
    gCardInfo.def = 0xFFFF;
  gCardInfo.type = TYPE_NONE;
  if (!sCardFlags[arg1].showAttribute)
    gCardInfo.attribute = ATTRIBUTE_NONE;
}

static void sub_801BB7C (void) {
  unsigned i;
  LoadCharblock0();
  LoadCharblock1();
  LoadCharblock3();
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  LoadOam();
  gBG2VOFS = 4;
  gBG2HOFS = 508;
  gBG3VOFS = 4;
  gBG3HOFS = 4;
  LoadBgOffsets();
  gBLDCNT = 0;
  gBLDALPHA = 0;
  gBLDY = 0;
  LoadBlendingRegs();
}

void sub_801BC00 (void) {
  struct DuelText duelText;
  if (gDuelType == DUEL_TYPE_LINK) {
    sub_80240BC(&duelText);
    duelText.textId = TEXT_LINKING;
    sub_802408C(&duelText);
    g2021D98 = 4;
    sub_8024548();
    do {
      sub_8024354();
    } while (g3000C6C);
  }
  sub_801B66C();
}

static void VBlankCbDisableDisplay (void) {
  DisableDisplay();
}

static void sub_801BC58 (void) {
  LoadPalettes();
  REG_BG2CNT = 0x1E81;
  REG_BG3CNT = 0x1F86;
  REG_DISPCNT = DISPCNT_BG2_ON | DISPCNT_BG3_ON;
}

static void sub_801BC88 (unsigned char arg0, unsigned arg1) {
  unsigned char i;
  unsigned char sl = 0;
  unsigned char temp1;
  unsigned char temp2;
  if (arg0 == 1)
    sl = 128;
  for (temp1 = 2, i = 0, temp2 = 2; i < 128; i++) {
    struct PlttData *pltt = (struct PlttData*)&gPaletteBuffer[i + sl];
    if (pltt->r > temp2)
      pltt->r -= temp1;
    else
      pltt->r = 0;
    if (pltt->g > temp2)
      pltt->g -= temp1;
    else
      pltt->g = 0;
    if (pltt->b > temp2)
      pltt->b -= temp1;
    else
      pltt->b = 0;
  }
}

static void sub_801BD50 (unsigned arg0) {
  unsigned short i;
  for (i = 0; i < 12; i++) {
    unsigned r = arg0 % 3;
    if (gE0061C[i].unk1A)
      gE0061C[i].unk1A--;
    else if (gE0061C[i].unk1C)
      if (gE0061C[i].unk1B)
        gE0061C[i].unk1B--;
      else if (!r)
        if (gE0061C[i].unk1D != 1)
          gE0061C[i].unk1D = 1;
        else
          goto a;
      else if (gE0061C[i].unk1D == 1)
        a:
          gE0061C[i].unk1C--;
  }
  for (i = 0; i < 12; i++) {
    if (!gE0061C[i].unk1C || gE0061C[i].unk1A)
      continue;
    gE0061C[i].unk19++;
    if (gE0061C[i].unk19 < g80B0D20[gE0061C[i].unk18].unk0)
      continue;
    gE0061C[i].unk19 = 0;
    if ((g80B0D20[gE0061C[i].unk18].unk4->unk4 & 0x3ff) == (g80B0D20[gE0061C[i].unk18 + 1].unk4->unk4 & 0x3ff))
      gE0061C[i].unk18 = 0;
    else
      gE0061C[i].unk18++;
  }
}
/*
//sb = gE0061C
//r8 = gOambuffer
static void sub_801BE54 (void) {
  unsigned char i, j, index;
  CpuFill16(0, gOamBuffer, 0x400);
  index = 0;
  for (i = 0; i < 12; i++)
    for (j = 0; j < 5; index++, j++) {
      if (gE0061C[i].unk1C && !gE0061C[i].unk1A) {
        if (gE0061C[i].unk1D) {

        }
        else { //_0801BEF8

        }
        //_0801BF30
      }
      else { //_0801BF58

      }
    }
}*/

NAKED
static void sub_801BE54 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	mov r1, sp\n\
	movs r0, #0\n\
	strh r0, [r1]\n\
	ldr r4, _0801BEDC\n\
	ldr r2, _0801BEE0\n\
	mov r0, sp\n\
	adds r1, r4, #0\n\
	bl CpuSet\n\
	movs r6, #0\n\
	movs r0, #0\n\
	ldr r1, _0801BEE4\n\
	mov sb, r1\n\
	mov r8, r4\n\
_0801BE7C:\n\
	movs r7, #0\n\
	adds r1, r0, #1\n\
	mov sl, r1\n\
	lsls r0, r0, #5\n\
	mov ip, r0\n\
_0801BE86:\n\
	mov r1, sb\n\
	ldr r0, [r1]\n\
	mov r1, ip\n\
	adds r5, r1, r0\n\
	ldrb r0, [r5, #0x1c]\n\
	cmp r0, #0\n\
	beq _0801BF58\n\
	ldrb r0, [r5, #0x1a]\n\
	cmp r0, #0\n\
	bne _0801BF58\n\
	ldrb r0, [r5, #0x1d]\n\
	cmp r0, #0\n\
	beq _0801BEF8\n\
	lsls r3, r6, #3\n\
	ldr r0, _0801BEE8\n\
	adds r4, r3, r0\n\
	lsls r1, r7, #2\n\
	adds r1, r5, r1\n\
	movs r2, #5\n\
	ldrsb r2, [r1, r2]\n\
	ldrh r0, [r5, #2]\n\
	adds r2, r2, r0\n\
	movs r0, #0xff\n\
	ands r2, r0\n\
	movs r0, #4\n\
	ldrsb r0, [r1, r0]\n\
	ldrh r1, [r5]\n\
	adds r0, r0, r1\n\
	ldr r1, _0801BEEC\n\
	ands r0, r1\n\
	lsls r0, r0, #0x10\n\
	ldr r1, _0801BEF0\n\
	orrs r0, r1\n\
	orrs r2, r0\n\
	ldrb r1, [r5, #0x1e]\n\
	movs r0, #1\n\
	ands r0, r1\n\
	lsls r0, r0, #0x1c\n\
	orrs r2, r0\n\
	str r2, [r4]\n\
	ldr r0, _0801BEF4\n\
	b _0801BF30\n\
	.align 2, 0\n\
_0801BEDC: .4byte gOamBuffer\n\
_0801BEE0: .4byte 0x01000200\n\
_0801BEE4: .4byte gE0061C\n\
_0801BEE8: .4byte 0x020185E0\n\
_0801BEEC: .4byte 0x000001FF\n\
_0801BEF0: .4byte 0xC0008400\n\
_0801BEF4: .4byte 0x020185E4\n\
_0801BEF8:\n\
	lsls r3, r6, #3\n\
	mov r0, r8\n\
	adds r4, r3, r0\n\
	lsls r1, r7, #2\n\
	adds r1, r5, r1\n\
	movs r2, #5\n\
	ldrsb r2, [r1, r2]\n\
	ldrh r0, [r5, #2]\n\
	adds r2, r2, r0\n\
	movs r0, #0xff\n\
	ands r2, r0\n\
	movs r0, #4\n\
	ldrsb r0, [r1, r0]\n\
	ldrh r1, [r5]\n\
	adds r0, r0, r1\n\
	ldr r1, _0801BF48\n\
	ands r0, r1\n\
	lsls r0, r0, #0x10\n\
	ldr r1, _0801BF4C\n\
	orrs r0, r1\n\
	orrs r2, r0\n\
	ldrb r1, [r5, #0x1e]\n\
	movs r0, #1\n\
	ands r0, r1\n\
	lsls r0, r0, #0x1c\n\
	orrs r2, r0\n\
	str r2, [r4]\n\
	ldr r0, _0801BF50\n\
_0801BF30:\n\
	adds r3, r3, r0\n\
	mov r1, sb\n\
	ldr r0, [r1]\n\
	add r0, ip\n\
	ldrb r0, [r0, #0x18]\n\
	lsls r0, r0, #3\n\
	ldr r1, _0801BF54\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	ldrh r0, [r0, #4]\n\
	str r0, [r3]\n\
	b _0801BF82\n\
	.align 2, 0\n\
_0801BF48: .4byte 0x000001FF\n\
_0801BF4C: .4byte 0xC0008000\n\
_0801BF50: .4byte 0x02018404\n\
_0801BF54: .4byte 0x080B0D24\n\
_0801BF58:\n\
	lsls r0, r6, #3\n\
	add r0, r8\n\
	movs r1, #0xa0\n\
	strh r1, [r0]\n\
	lsls r2, r6, #2\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	movs r1, #0xf0\n\
	strh r1, [r0]\n\
	adds r0, r2, #2\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	movs r1, #0xc0\n\
	lsls r1, r1, #4\n\
	strh r1, [r0]\n\
	adds r2, #3\n\
	lsls r2, r2, #1\n\
	add r2, r8\n\
	movs r0, #0\n\
	strh r0, [r2]\n\
_0801BF82:\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	adds r0, r7, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	cmp r7, #4\n\
	bhi _0801BF94\n\
	b _0801BE86\n\
_0801BF94:\n\
	mov r1, sl\n\
	lsls r0, r1, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #0xb\n\
	bhi _0801BFA0\n\
	b _0801BE7C\n\
_0801BFA0:\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}
NAKED
static void sub_801BFB0 (unsigned char arg0) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #8\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	movs r0, #0\n\
	movs r1, #3\n\
	bl sub_8056258\n\
	lsls r0, r0, #0x18\n\
	ldr r1, _0801BFEC\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	bl SaveLfsrState\n\
	ldr r1, _0801BFF0\n\
	ldr r2, _0801BFF4\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	cmp r4, #0\n\
	bne _0801BFF8\n\
	movs r0, #4\n\
	str r0, [sp]\n\
	b _0801BFFC\n\
	.align 2, 0\n\
_0801BFEC: .4byte 0x08E00620\n\
_0801BFF0: .4byte gBLDCNT\n\
_0801BFF4: .4byte 0x00002C10\n\
_0801BFF8:\n\
	movs r1, #0x7a\n\
	str r1, [sp]\n\
_0801BFFC:\n\
	movs r7, #0\n\
	ldr r6, _0801C098\n\
	ldr r2, _0801C09C\n\
	mov r8, r2\n\
	ldr r3, _0801C0A0\n\
	movs r5, #0\n\
	movs r4, #0xa0\n\
_0801C00A:\n\
	lsls r0, r7, #3\n\
	adds r0, r0, r3\n\
	strh r4, [r0]\n\
	lsls r2, r7, #2\n\
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
	strh r5, [r2]\n\
	adds r0, r7, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r7, r0, #0x10\n\
	cmp r7, #0x7f\n\
	bls _0801C00A\n\
	adds r0, r6, #0\n\
	mov r1, r8\n\
	movs r2, #0x10\n\
	bl CpuSet\n\
	ldr r1, _0801C0A4\n\
	movs r0, #0\n\
	movs r2, #0x80\n\
	bl sub_803EEFC\n\
	movs r7, #0\n\
	ldr r0, _0801C0A8\n\
	mov sl, r0\n\
_0801C054:\n\
	movs r6, #0\n\
	lsls r1, r7, #2\n\
	mov r8, r1\n\
	mov sb, r8\n\
	adds r0, r1, r7\n\
	lsls r0, r0, #3\n\
	ldr r2, [sp]\n\
	adds r0, r2, r0\n\
	str r0, [sp, #4]\n\
_0801C066:\n\
	mov r1, sb\n\
	adds r0, r1, r6\n\
	mov r2, sl\n\
	ldr r1, [r2]\n\
	lsls r0, r0, #5\n\
	adds r4, r0, r1\n\
	mov r0, sp\n\
	ldrh r0, [r0, #4]\n\
	strh r0, [r4]\n\
	lsls r0, r6, #3\n\
	subs r0, r0, r6\n\
	lsls r0, r0, #4\n\
	movs r1, #3\n\
	bl __divsi3\n\
	movs r2, #0x5e\n\
	subs r1, r2, r0\n\
	cmp r1, #0\n\
	bge _0801C0B0\n\
	ldr r1, _0801C0AC\n\
	adds r0, r0, r1\n\
	subs r0, r2, r0\n\
	strh r0, [r4, #2]\n\
	b _0801C0B2\n\
	.align 2, 0\n\
_0801C098: .4byte 0x080B1E74\n\
_0801C09C: .4byte 0x02000200\n\
_0801C0A0: .4byte gOamBuffer\n\
_0801C0A4: .4byte 0x080B0E74\n\
_0801C0A8: .4byte gE0061C\n\
_0801C0AC: .4byte 0xFFFFFF00\n\
_0801C0B0:\n\
	strh r1, [r4, #2]\n\
_0801C0B2:\n\
	mov r2, sb\n\
	adds r1, r2, r6\n\
	ldr r5, _0801C0F8\n\
	ldr r0, [r5]\n\
	lsls r4, r1, #5\n\
	adds r0, r4, r0\n\
	movs r1, #0\n\
	strb r1, [r0, #0x18]\n\
	ldr r0, [r5]\n\
	adds r0, r4, r0\n\
	strb r1, [r0, #0x19]\n\
	ldr r0, [r5]\n\
	adds r0, r4, r0\n\
	movs r1, #4\n\
	strb r1, [r0, #0x1b]\n\
	cmp r6, #0\n\
	bne _0801C0FC\n\
	bl LfsrNextByte\n\
	adds r3, r0, #0\n\
	ldr r1, [r5]\n\
	lsls r0, r7, #7\n\
	adds r1, r0, r1\n\
	adds r0, r3, #0\n\
	cmp r3, #0\n\
	bge _0801C0E8\n\
	adds r0, r3, #3\n\
_0801C0E8:\n\
	asrs r0, r0, #2\n\
	lsls r0, r0, #2\n\
	subs r0, r3, r0\n\
	ldrb r2, [r1, #0x1a]\n\
	adds r0, r0, r2\n\
	strb r0, [r1, #0x1a]\n\
	b _0801C11E\n\
	.align 2, 0\n\
_0801C0F8: .4byte gE0061C\n\
_0801C0FC:\n\
	bl LfsrNextByte\n\
	ldr r2, [r5]\n\
	adds r2, r4, r2\n\
	adds r3, r2, #0\n\
	subs r3, #0x20\n\
	lsrs r1, r0, #0x1f\n\
	adds r1, r0, r1\n\
	asrs r1, r1, #1\n\
	lsls r1, r1, #1\n\
	subs r0, r0, r1\n\
	ldrb r3, [r3, #0x1a]\n\
	adds r0, r0, r3\n\
	adds r0, #1\n\
	ldrb r1, [r2, #0x1a]\n\
	adds r0, r0, r1\n\
	strb r0, [r2, #0x1a]\n\
_0801C11E:\n\
	mov r2, r8\n\
	adds r4, r2, r6\n\
	mov r0, sl\n\
	ldr r1, [r0]\n\
	lsls r4, r4, #5\n\
	adds r1, r4, r1\n\
	movs r0, #3\n\
	strb r0, [r1, #0x1c]\n\
	mov r1, sl\n\
	ldr r0, [r1]\n\
	adds r0, r4, r0\n\
	movs r2, #0\n\
	strb r2, [r0, #0x1d]\n\
	bl LfsrNextByte\n\
	mov r2, sl\n\
	ldr r1, [r2]\n\
	adds r4, r4, r1\n\
	lsrs r1, r0, #0x1f\n\
	adds r1, r0, r1\n\
	asrs r1, r1, #1\n\
	lsls r1, r1, #1\n\
	subs r0, r0, r1\n\
	strb r0, [r4, #0x1e]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	cmp r6, #3\n\
	bls _0801C066\n\
	adds r0, r7, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r7, r0, #0x10\n\
	cmp r7, #2\n\
	bhi _0801C164\n\
	b _0801C054\n\
_0801C164:\n\
	movs r7, #0\n\
	ldr r0, _0801C1D8\n\
	mov sb, r0\n\
_0801C16A:\n\
	movs r6, #0\n\
	adds r1, r7, #1\n\
	mov r8, r1\n\
	lsls r7, r7, #5\n\
_0801C172:\n\
	bl LfsrNextByte\n\
	adds r1, r0, #0\n\
	mov r2, sb\n\
	ldr r0, [r2]\n\
	adds r0, r7, r0\n\
	lsls r5, r6, #2\n\
	adds r2, r0, r5\n\
	adds r0, r1, #0\n\
	cmp r1, #0\n\
	bge _0801C18A\n\
	adds r0, #0x1f\n\
_0801C18A:\n\
	asrs r0, r0, #5\n\
	lsls r0, r0, #5\n\
	subs r0, r1, r0\n\
	movs r1, #0x10\n\
	subs r1, r1, r0\n\
	strb r1, [r2, #4]\n\
	bl LfsrNextByte\n\
	mov r1, sb\n\
	ldr r4, [r1]\n\
	adds r4, r7, r4\n\
	adds r4, r4, r5\n\
	movs r1, #0x28\n\
	bl __modsi3\n\
	movs r1, #0x14\n\
	subs r1, r1, r0\n\
	strb r1, [r4, #5]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	cmp r6, #4\n\
	bls _0801C172\n\
	mov r2, r8\n\
	lsls r0, r2, #0x10\n\
	lsrs r7, r0, #0x10\n\
	cmp r7, #0xb\n\
	bls _0801C16A\n\
	bl RestoreLfsrState\n\
	add sp, #8\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0801C1D8: .4byte gE0061C");
}

static void sub_801C1DC (unsigned char arg0) {
  CpuFill16(0, gSharedMem, 0x4314);
  if (!arg0)
    sub_801C2A0();
  else if (arg0 == 1)
    sub_801C218();
}

static void sub_801C218 (void) {
  unsigned short r5 = 0, r4;
  sub_801BFB0(1);
  SetVBlankCallback(sub_801C368);
  WaitForVBlank();
  sub_801C3C0();
  r4 = 1;
  PlayMusic(SFX_ATTACK_EXPLOSION_2);
  do {
    if (!r5) {
      sub_801BD50(r4);
      sub_801BC88(1, r4);
      sub_801BE54();
      sub_801C334(r4);
    }
    SetVBlankCallback(sub_801C38C);
    WaitForVBlank();
    sub_801C3CC();
    r5++;
    if (r5 > 2) {
      r5 = 0;
      r4++;
    }
  } while (sub_801C328(r4, 1));
  SetVBlankCallback(sub_801C3AC);
  WaitForVBlank();
}

static void sub_801C2A0 (void) {
  unsigned short r5 = 0, r4;
  sub_801BFB0(0);
  SetVBlankCallback(sub_801C368);
  WaitForVBlank();
  sub_801C3C0();
  r4 = 1;
  PlayMusic(SFX_ATTACK_EXPLOSION_2);
  do {
    if (!r5) {
      sub_801BD50(r4);
      sub_801BC88(0, r4);
      sub_801BE54();
      sub_801C334(r4);
    }
    SetVBlankCallback(sub_801C39C);
    WaitForVBlank();
    sub_801C3D8();
    r5++;
    if (r5 > 2) {
      r5 = 0;
      r4++;
    }
  } while (sub_801C328(r4, 0));
  SetVBlankCallback(sub_801C3AC);
  WaitForVBlank();
}

static unsigned char sub_801C328 (unsigned arg0, unsigned arg1) {
  unsigned char ret = 0;
  if (arg0 < 18)
    ret = 1;
  return ret;
}

static void sub_801C334 (unsigned arg0) {
  unsigned char r2 = g80B0D50[arg0 % 3];
  unsigned short temp = 16 - r2;
  unsigned char temp2 = r2;
  gBLDALPHA = (temp % 32) | (temp2 % 32) << 8; //TODO: use & instead?
}

static void sub_801C368 (void) {
  LoadOam();
  LoadPalettes();
  LoadBlendingRegs();
  REG_DISPCNT |= DISPCNT_OBJ_ON;
}

static void sub_801C38C (void) {
  LoadOam();
  LoadBlendingRegs();
}

static void sub_801C39C (void) {
  LoadOam();
  LoadBlendingRegs();
}

static void sub_801C3AC (void) {
  REG_DISPCNT &= ~DISPCNT_OBJ_ON;
}

static void sub_801C3C0 (void) {
  LoadObjVRAM();
}

static void sub_801C3CC (void) {
  LoadPalettes();
}

static void sub_801C3D8 (void) {
  LoadPalettes();
}

NAKED
static void sub_801C3E4 (unsigned char arg0) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	bne _0801C3FC\n\
	movs r0, #4\n\
	mov sb, r0\n\
	mov sl, r0\n\
	b _0801C404\n\
_0801C3FC:\n\
	movs r2, #0x7c\n\
	mov sb, r2\n\
	movs r4, #4\n\
	mov sl, r4\n\
_0801C404:\n\
	movs r6, #0\n\
	ldr r7, _0801C48C\n\
	ldr r0, _0801C490\n\
	mov r8, r0\n\
	movs r2, #4\n\
	add r2, r8\n\
	mov ip, r2\n\
_0801C412:\n\
	lsls r4, r6, #3\n\
	adds r3, r4, r7\n\
	ldr r0, _0801C494\n\
	ldr r5, [r0]\n\
	ldrb r0, [r5, #1]\n\
	lsls r1, r0, #3\n\
	mov r2, r8\n\
	adds r0, r1, r2\n\
	ldrb r0, [r0, #1]\n\
	cmp r6, r0\n\
	bhs _0801C4A0\n\
	mov r2, ip\n\
	adds r0, r1, r2\n\
	ldr r0, [r0]\n\
	adds r0, r4, r0\n\
	ldrh r0, [r0]\n\
	strh r0, [r3]\n\
	lsls r2, r6, #2\n\
	adds r1, r2, #1\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	ldrb r0, [r5, #1]\n\
	lsls r0, r0, #3\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	adds r0, r4, r0\n\
	ldrh r0, [r0, #2]\n\
	strh r0, [r1]\n\
	adds r2, #2\n\
	lsls r2, r2, #1\n\
	adds r2, r2, r7\n\
	ldrb r0, [r5, #1]\n\
	lsls r0, r0, #3\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	adds r0, r4, r0\n\
	ldrh r0, [r0, #4]\n\
	strh r0, [r2]\n\
	ldrb r0, [r3]\n\
	add r0, sl\n\
	strb r0, [r3]\n\
	ldrh r2, [r3, #2]\n\
	lsls r1, r2, #0x17\n\
	lsrs r1, r1, #0x17\n\
	add r1, sb\n\
	ldr r4, _0801C498\n\
	adds r0, r4, #0\n\
	ands r1, r0\n\
	ldr r0, _0801C49C\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	strh r0, [r3, #2]\n\
	ldrb r1, [r3, #1]\n\
	movs r0, #0xd\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	movs r1, #4\n\
	orrs r0, r1\n\
	strb r0, [r3, #1]\n\
	b _0801C4C6\n\
	.align 2, 0\n\
_0801C48C: .4byte gOamBuffer\n\
_0801C490: .4byte 0x080B0D54\n\
_0801C494: .4byte 0x08E0081C\n\
_0801C498: .4byte 0x000001FF\n\
_0801C49C: .4byte 0xFFFFFE00\n\
_0801C4A0:\n\
	movs r0, #0xa0\n\
	strh r0, [r3]\n\
	lsls r2, r6, #2\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r7\n\
	movs r1, #0xf0\n\
	strh r1, [r0]\n\
	adds r0, r2, #2\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r7\n\
	movs r1, #0xc0\n\
	lsls r1, r1, #4\n\
	strh r1, [r0]\n\
	adds r2, #3\n\
	lsls r2, r2, #1\n\
	adds r2, r2, r7\n\
	movs r0, #0\n\
	strh r0, [r2]\n\
_0801C4C6:\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	cmp r6, #0x14\n\
	bls _0801C412\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
  .byte 0x0, 0x0, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x00, 0x06, 0x19, 0x49, 0x88, 0x46\n\
	.byte 0x04, 0x22, 0x0A, 0x80, 0x18, 0x4B, 0x9A, 0x46, 0xFE, 0x23, 0x5B, 0x00, 0x19, 0x1C, 0x53, 0x46\n\
	.byte 0x19, 0x80, 0x16, 0x4F, 0x3A, 0x80, 0x16, 0x49, 0x89, 0x46, 0x0A, 0x80, 0x00, 0x28, 0x2D, 0xD1\n\
	.byte 0x39, 0xF0, 0x7A, 0xFE, 0x13, 0x4E, 0x14, 0x4D, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78\n\
	.byte 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x6E, 0xFD, 0x24, 0x1A, 0x43, 0x46, 0x1B, 0x88, 0xE4, 0x18\n\
	.byte 0x40, 0x46, 0x04, 0x80, 0x39, 0xF0, 0x68, 0xFE, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78\n\
	.byte 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x5E, 0xFD, 0x24, 0x1A, 0x51, 0x46, 0x09, 0x88, 0x64, 0x18\n\
	.byte 0x53, 0x46, 0x2A, 0xE0, 0x0C, 0x42, 0x02, 0x02, 0x4C, 0x42, 0x02, 0x02, 0x18, 0x42, 0x02, 0x02\n\
	.byte 0x04, 0x42, 0x02, 0x02, 0x18, 0x08, 0xE0, 0x08, 0x1C, 0x08, 0xE0, 0x08, 0x39, 0xF0, 0x4C, 0xFE\n\
	.byte 0x12, 0x4E, 0x13, 0x4D, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78, 0x61, 0x00, 0x01, 0x31\n\
	.byte 0x3E, 0xF0, 0x40, 0xFD, 0x24, 0x1A, 0x38, 0x88, 0x24, 0x18, 0x3C, 0x80, 0x39, 0xF0, 0x3C, 0xFE\n\
	.byte 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78, 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x32, 0xFD\n\
	.byte 0x24, 0x1A, 0x49, 0x46, 0x09, 0x88, 0x64, 0x18, 0x4B, 0x46, 0x1C, 0x80, 0x38, 0xBC, 0x98, 0x46\n\
	.byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x18, 0x08, 0xE0, 0x08\n\
	.byte 0x1C, 0x08, 0xE0, 0x08");
}

static void sub_801C5C4 (void) {
  gE0081C->unk0++;
  if (gE0081C->unk0 < 2)
    return;
  gE0081C->unk0 = 0;
  gE0081C->unk1++;
  if (g80B0D54[gE0081C->unk1 - 1].unk4 == g80B0D54[gE0081C->unk1].unk4)
    gE0081C->unk1 = 0;
}

static void sub_801C610 (unsigned char arg0) {
  unsigned short i;
  CpuCopy16(g80B4894, gPaletteBuffer + 256, 32);
  sub_803EEFC(0, g80B1E94, 0x100);
  sub_803EEFC(1, g80B3E94, 0x50);
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  gBLDCNT = 0x2C10;
  gBLDALPHA = 0x80E;
  gBLDY = 0;
  gE0081C->unk0 = 0;
  gE0081C->unk1 = 0;
}

static void sub_801C6BC (unsigned char arg0) {
  sub_801C610(arg0);
  SetVBlankCallback(sub_801C734);
  WaitForVBlank();
  sub_801C7AC();
  PlayMusic(SFX_ATTACK_EXPLOSION_1);
  do {
    sub_801C3E4(arg0);
    SetVBlankCallback(sub_801C758);
    WaitForVBlank();
    sub_801C5C4();
  } while (sub_801C71C());
  sub_0801C730();
  SetVBlankCallback(sub_801C768);
  WaitForVBlank();
}

static unsigned char sub_801C71C (void) {
  return gE0081C->unk0 || gE0081C->unk1;
}

static void sub_0801C730 (void) {
}

static void sub_801C734 (void) {
  LoadOam();
  LoadPalettes();
  LoadBlendingRegs();
  REG_DISPCNT |= DISPCNT_OBJ_ON;
}

static void sub_801C758 (void) {
  LoadOam();
  LoadBgOffsets();
}

static void sub_801C768 (void) {
  REG_DISPCNT &= ~DISPCNT_OBJ_ON;
  gBG2VOFS = 4;
  gBG2HOFS = 508;
  gBG3VOFS = 4;
  gBG3HOFS = 4;
  LoadBgOffsets();
}

static void sub_801C7AC (void) {
  LoadObjVRAM();
}

static void sub_801C7B8 (unsigned char arg0) {
  unsigned short i;
  sub_801C98C(arg0);
  SetVBlankCallback(sub_801CA70);
  WaitForVBlank();
  sub_801CA90();
  sub_801C870(arg0);
  SetVBlankCallback(sub_801CAA0);
  for (i = 0; i < 15; i++)
    WaitForVBlank();
  if (gE008B4->unk2 > gE008B4->unk4) {
    for (i = 0; i < 10000 && gE008B4->unk0 > gE008B4->unk4; i++) {
      sub_801CA50(); // subtracts 72 lifepoints every frame
      sub_801C870(arg0);
      SetVBlankCallback(sub_801CAA0);
      WaitForVBlank();
      if (i % 2 == 0)
        PlayMusic(SFX_LP_DROP_BLIP); // play sfx (individual blips) every 2 frames
    }
    for (i = 0; i < 30; i++)
      WaitForVBlank();
  }
  SetVBlankCallback(sub_801CAAC);
  WaitForVBlank();
}

static void sub_801C870 (unsigned char arg0) {
  unsigned short i;
  unsigned char temp;
  if (!arg0)
    arg0 = 4;
  else
    arg0 = 124;
  temp = 0x3C;
  sub_800DDA0(gE008B4->unk0, 0);
  for (i = 0; i < 7; i++) {
    if (i < 2) {
      gOamBuffer[i * 4] = gE00880[i + 10]->oam->attr0 | temp;
      gOamBuffer[i * 4 + 1] = gE00880[i + 10]->oam->attr1 | arg0;
      gOamBuffer[i * 4 + 2] = gE00880[i + 10]->oam->attr2;
    }
    else if (g2021BD0[i - 2] != 10) {
      gOamBuffer[i * 4] = gE00880[g2021BD0[i - 2]]->oam->attr0 | temp;
      gOamBuffer[i * 4 + 1] = gE00880[g2021BD0[i - 2]]->oam->attr1 | arg0;
      gOamBuffer[i * 4 + 2] = gE00880[g2021BD0[i - 2]]->oam->attr2;
    }
    else {
      gOamBuffer[i * 4] = 0xA0;
      gOamBuffer[i * 4 + 1] = 0xF0;
      gOamBuffer[i * 4 + 2] = 0xC00;
      gOamBuffer[i * 4 + 3] = 0;
    }
    arg0 += 16;
  }
}

static void sub_801C98C (unsigned char arg0) {
  unsigned short i;
  CpuCopy32(g80B8954, gPaletteBuffer + 256, 32);
  sub_803EEFC(0, g80B6954, 256);
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  if (arg0 == 1) {
    gE008B4->unk0 = gUnk2023EA0.unk0[1].initialLifePoints; //currentLifePoints =?
    gE008B4->unk2 = gUnk2023EA0.unk0[1].initialLifePoints; //initialLifePoints =?
    gE008B4->unk4 = gUnk2023EA0.unk0[1].lifePointsAfterDamage;
  }
  else {
    gE008B4->unk0 = gUnk2023EA0.unk0[0].initialLifePoints;
    gE008B4->unk2 = gUnk2023EA0.unk0[0].initialLifePoints;
    gE008B4->unk4 = gUnk2023EA0.unk0[0].lifePointsAfterDamage;
  }
  gBLDCNT = 0;
  gBLDALPHA = 0;
  gBLDY = 0;
}

// subtracts 72 lifepoints
static void sub_801CA50 (void) {
  if (gE008B4->unk0 - gE008B4->unk4 > 72)
    gE008B4->unk0 -= 72;
  else
    gE008B4->unk0 = gE008B4->unk4;
}

static void sub_801CA70 (void) {
  LoadOam();
  LoadPalettes();
  REG_DISPCNT |= DISPCNT_OBJ_ON;
}

static void sub_801CA90 (void) {
  LoadObjVRAM();
  LoadBlendingRegs();
}

static void sub_801CAA0 (void) {
  LoadOam();
}

static void sub_801CAAC (void) {
  REG_DISPCNT &= ~DISPCNT_OBJ_ON;
}

static void sub_801CAC0 (void) {
  unsigned char i;
  if (!g8E00AA0->unk6)
    g8E00AA0->unk6++;
  else {
    g8E00AA0->unk6 = 0;
    g8E00AA0->unk7++;
  }
  g8E00AA0->unk8++;
  for (i = 0; i < 4; i++)
    gOamBuffer[i * 4 + 3] = g80B68D4[g8E00AA0->unk8][i];
}

static void sub_801CB24 (unsigned char arg0) {
  unsigned short i;
  if (!arg0) {
    g8E00AA0->unk0 = 0;
    g8E00AA0->unk4 = 4;
    g8E00AA0->unk2 = 508;
    g8E00AA0->unk5 = 12;
  }
  else {
    g8E00AA0->unk0 = 124;
    g8E00AA0->unk4 = 4;
    g8E00AA0->unk2 = 116;
    g8E00AA0->unk5 = 12;
  }
  g8E00AA0->unk6 = 0;
  g8E00AA0->unk7 = 0;
  g8E00AA0->unk8 = 0;
  CpuCopy16(g80B4894, gPaletteBuffer + 256, 32);
  CpuCopy16(g80B68B4, gPaletteBuffer + 256 + 16, 32);
  sub_803EEFC(0, g80B1E94, 256);
  sub_803EEFC(1, g80B3E94, 80);
  sub_803EEFC(2, g80B48B4, 256);
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  for (i = 0; i < 4; i++)
    gOamBuffer[i * 4 + 3] = g80B68D4[0][i];
  gBLDCNT = 0x2C10;
  gBLDALPHA = 0x80E;
  gBLDY = 0;
}

NAKED
static void sub_801CC50 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	ldr r5, _0801CD08\n\
	movs r6, #0\n\
	ldr r0, _0801CD0C\n\
	mov r8, r0\n\
	adds r7, r5, #0\n\
	ldr r1, _0801CD10\n\
	adds r1, #4\n\
	mov ip, r1\n\
	movs r2, #0x11\n\
	rsbs r2, r2, #0\n\
	mov sl, r2\n\
	movs r3, #0x21\n\
	rsbs r3, r3, #0\n\
	mov sb, r3\n\
_0801CC78:\n\
	mov r0, r8\n\
	ldr r4, [r0]\n\
	ldrb r0, [r4, #7]\n\
	lsls r2, r0, #3\n\
	ldr r1, _0801CD10\n\
	adds r0, r2, r1\n\
	ldrb r0, [r0, #1]\n\
	cmp r6, r0\n\
	bhs _0801CD1C\n\
	lsls r3, r6, #3\n\
	adds r0, r3, r7\n\
	str r0, [sp]\n\
	mov r1, ip\n\
	adds r0, r2, r1\n\
	ldr r0, [r0]\n\
	adds r0, r3, r0\n\
	ldrh r0, [r0]\n\
	ldr r2, [sp]\n\
	strh r0, [r2]\n\
	lsls r2, r6, #2\n\
	adds r1, r2, #1\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r7\n\
	ldrb r0, [r4, #7]\n\
	lsls r0, r0, #3\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	adds r0, r3, r0\n\
	ldrh r0, [r0, #2]\n\
	strh r0, [r1]\n\
	adds r2, #2\n\
	lsls r2, r2, #1\n\
	adds r2, r2, r7\n\
	ldrb r0, [r4, #7]\n\
	lsls r0, r0, #3\n\
	add r0, ip\n\
	ldr r0, [r0]\n\
	adds r3, r3, r0\n\
	ldrh r0, [r3, #4]\n\
	strh r0, [r2]\n\
	ldrb r0, [r4, #4]\n\
	ldrb r3, [r5]\n\
	adds r0, r0, r3\n\
	strb r0, [r5]\n\
	ldrh r2, [r5, #2]\n\
	lsls r1, r2, #0x17\n\
	ldr r3, _0801CD0C\n\
	ldr r0, [r3]\n\
	lsrs r1, r1, #0x17\n\
	ldrh r0, [r0]\n\
	adds r1, r1, r0\n\
	ldr r3, _0801CD14\n\
	adds r0, r3, #0\n\
	ands r1, r0\n\
	ldr r0, _0801CD18\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	strh r0, [r5, #2]\n\
	ldrb r1, [r5, #1]\n\
	movs r0, #0xd\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	movs r2, #4\n\
	orrs r0, r2\n\
	strb r0, [r5, #1]\n\
	ldrb r1, [r5, #5]\n\
	movs r0, #0xd\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	orrs r0, r2\n\
	strb r0, [r5, #5]\n\
	b _0801CDCC\n\
	.align 2, 0\n\
_0801CD08: .4byte gOamBuffer\n\
_0801CD0C: .4byte 0x08E00AA0\n\
_0801CD10: .4byte 0x080B0E44\n\
_0801CD14: .4byte 0x000001FF\n\
_0801CD18: .4byte 0xFFFFFE00\n\
_0801CD1C:\n\
	cmp r6, r0\n\
	bne _0801CDAC\n\
	ldrb r0, [r4, #5]\n\
	strb r0, [r5]\n\
	ldrb r0, [r5, #1]\n\
	movs r1, #3\n\
	orrs r0, r1\n\
	movs r3, #0xd\n\
	rsbs r3, r3, #0\n\
	ands r0, r3\n\
	movs r4, #4\n\
	orrs r0, r4\n\
	mov r1, sl\n\
	ands r0, r1\n\
	mov r2, sb\n\
	ands r0, r2\n\
	movs r1, #0x3f\n\
	ands r0, r1\n\
	strb r0, [r5, #1]\n\
	mov r1, r8\n\
	ldr r0, [r1]\n\
	ldrh r1, [r0, #2]\n\
	ldr r2, _0801CD8C\n\
	adds r0, r2, #0\n\
	ands r1, r0\n\
	ldrh r2, [r5, #2]\n\
	ldr r0, _0801CD90\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	strh r0, [r5, #2]\n\
	ldrb r1, [r5, #3]\n\
	movs r0, #0xf\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	mov r1, sl\n\
	ands r0, r1\n\
	mov r2, sb\n\
	ands r0, r2\n\
	movs r1, #0xc0\n\
	orrs r0, r1\n\
	strb r0, [r5, #3]\n\
	ldrh r1, [r5, #4]\n\
	ldr r0, _0801CD94\n\
	ands r0, r1\n\
	movs r1, #0x10\n\
	orrs r0, r1\n\
	strh r0, [r5, #4]\n\
	ldrb r1, [r5, #5]\n\
	movs r0, #0xc\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801CD98\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	orrs r0, r4\n\
	b _0801CD9C\n\
	.align 2, 0\n\
_0801CD8C: .4byte 0x000001FF\n\
_0801CD90: .4byte 0xFFFFFE00\n\
_0801CD94: .4byte 0xFFFFFC00\n\
_0801CD98:\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
_0801CD9C:\n\
	strb r0, [r5, #5]\n\
	ldrb r0, [r5, #5]\n\
	movs r1, #0xf\n\
	ands r1, r0\n\
	movs r0, #0x10\n\
	orrs r1, r0\n\
	strb r1, [r5, #5]\n\
	b _0801CDCC\n\
_0801CDAC:\n\
	lsls r0, r6, #3\n\
	adds r0, r0, r7\n\
	movs r1, #0xa0\n\
	strh r1, [r0]\n\
	lsls r2, r6, #2\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r7\n\
	movs r1, #0xf0\n\
	strh r1, [r0]\n\
	adds r2, #2\n\
	lsls r2, r2, #1\n\
	adds r2, r2, r7\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #4\n\
	strh r0, [r2]\n\
_0801CDCC:\n\
	adds r5, #8\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r0, #0\n\
	blt _0801CDDA\n\
	b _0801CC78\n\
_0801CDDA:\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

static void sub_801CDEC (unsigned char arg0) {
  sub_801CB24(arg0);
  SetVBlankCallback(sub_801CE78);
  WaitForVBlank();
  sub_801CE6C();
  PlayMusic(SFX_ATTACK_SUCCESSFUL);
  do {
    sub_801CC50();
    SetVBlankCallback(sub_801CE9C);
    WaitForVBlank();
    sub_801CAC0();
  } while (sub_801CE44());
  sub_0801CE68();
  SetVBlankCallback(VBlankCbDisableObjects);
  WaitForVBlank();
}

static unsigned char sub_801CE44 (void) {
  if (!g80B0E44[g8E00AA0->unk7].unk0)
    return 0;
  return 1;
}

static void sub_0801CE68 (void) {
}

static void sub_801CE6C (void) {
  LoadObjVRAM();
}

static void sub_801CE78 (void) {
  LoadOam();
  LoadPalettes();
  LoadBlendingRegs();
  REG_DISPCNT |= DISPCNT_OBJ_ON;
}

static void sub_801CE9C (void) {
  LoadOam();
}

static void VBlankCbDisableObjects (void) {
  REG_DISPCNT &= ~DISPCNT_OBJ_ON;
}
