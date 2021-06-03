#include "global.h"
#include "gba/macro.h"
#include "gba/syscall.h"
#include "card.h"
#include "duel.h"
#include "constants/card_ids.h"

extern u32* gCardArts[]; //card arts, TODO: fix type?
extern u16* gCardArtPalettes[]; //card palettes, TODO: fix type?
extern u16* gUnk_8E01364; //TODO: fix type?
extern u16* gUnk_8E01368; //TODO: fix type?
extern u16 gUnk_8936130[][10]; //TODO: fix type?
extern u16* gUnk_8E0136C; //TODO: fix type?
extern u32* gUnk_8E17F18[]; //TODO: fix type?
extern u32* gUnk_8E151C8[]; //TODO: fix type?
extern u32* gUnk_8E17E28[][NUM_LANGUAGES]; //TODO: fix type?
extern u32* gUnk_8E14FE8[][NUM_LANGUAGES]; //TODO: fix type?
extern u8* gUnk_8E137C0;
extern u8* gUnk_8E137C4[];
extern u8 gUnk_8938384[];
extern u8 gUnk_8938598[];

extern u32 gUnk_89385D8[]; //TODO: fix type? 2d array?
extern u32 gUnk_8938618[]; //fix type?
extern u32 gUnk_89385D8[]; //fix type?

void sub_800E08C (u32*, u16*);
void sub_800DDA0(u16, u8);
void sub_800DD4C(void);

extern u8 g2021BD0[]; // digit buffer
extern u8 g2021B50[]; //TODO: fix type?
extern u8 g2021B10[]; //TODO: fix type?
extern u8 g2021B90[]; //TODO: fix type?
void sub_80267E0 (void);
void sub_8026864 (void);

void sub_80262B0 (void) {
  u8 i;
  u8 ok = 0x48;
  sub_800E08C(gCardArts[gCardInfo.id], gUnk_8E01364 + 32);
  CpuFill16(0, gUnk_8E01364, 64); //clear first tile
  CpuCopy32(gCardArtPalettes[gCardInfo.id], gUnk_8E01368, 128);
  *gUnk_8E01368 = 0;
  for (i = 0; i < 10; i++)
    CpuCopy32(gUnk_8936130[i], gUnk_8E0136C + (10 * i + ok + i * 4), 20);
}

//Attribute icon
void sub_802634C (void) {
  if (gCardInfo.attribute == ATTRIBUTE_NONE)
    return;
  CpuCopy16(gUnk_8E17F18[gCardInfo.attribute], gUnk_8E01368 + 0x56, 14);
  CpuCopy32(gUnk_8E17E28[gCardInfo.attribute][gLanguage], gUnk_8E01364 + 0x1900, 128);
  CpuCopy32(gUnk_8E17E28[gCardInfo.attribute][gLanguage] + 32, gUnk_8E01364 + 0x1A00, 128);
}

//Type icon
void sub_80263DC (void) {
  u8 type;
  u8 sb;
  if (gCardInfo.type == TYPE_NONE)
    return;
  CpuCopy16(gUnk_8E151C8[gCardInfo.type], gUnk_8E01368 + 0x5D, 22);
  type = gCardInfo.type - 21; //create a define and set it to TYPE_SPELL?
  sb = 2;
  if (type < 3) //create a define?
    sb = 4;
  CpuCopy32(gUnk_8E14FE8[gCardInfo.type][gLanguage], gUnk_8E01364 + 0x18C0, sb * 64);
  CpuCopy32(gUnk_8E14FE8[gCardInfo.type][gLanguage] + sb * 16, gUnk_8E01364 + 0x19C0, sb * 64);
}

//Atk digits
void sub_802648C (void) {
  u8 i;
  sub_800DDA0(gCardInfo.atk, 0);
  for (i = 0; i < 5; i++) {
    if (g2021BD0[i] != 10) {
      CpuCopy32(&gUnk_89385D8[(g2021BD0[i] + 2) * 16], g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + (i + 0x72) * 32, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + (i + 0x72) * 32, 64);
    }
    else if (i == 0 && g2021BD0[4] != 10) {
      CpuCopy32(gUnk_8938618, g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + 0xE40, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + 0xE40, 64);
    }
  }
}

//Defense digits
void sub_8026564 (void) {
  u8 i;
  sub_800DDA0(gCardInfo.def, 0);
  for (i = 0; i < 5; i++) {
    if (g2021BD0[i] != 10) {
      CpuCopy32(&gUnk_89385D8[(g2021BD0[i] + 2) * 16], g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + (i + 0x77) * 32, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + (i + 0x77) * 32, 64);
    }
    else if (i == 0 && g2021BD0[4] != 10) {
      CpuCopy32(gUnk_89385D8, g2021B50, 64);
      CpuCopy32(gUnk_8E01364 + 0xEE0, g2021B10, 64);
      sub_800DD4C();
      CpuCopy32(g2021B90, gUnk_8E01364 + 0xEE0, 64);
    }
  }
}
/*
extern const u8* gUnk_8E00E30[];
u8* sub_8020824(u8*);

//Card name
void sub_802663C (void) {
  u8 pos;
  bool32 abbreviate;
  u32 buffer[16];
  u8* name;
  if (gLanguage == ENGLISH && (gCardInfo.id == BLACK_LUSTER_SOLDIER || gCardInfo.id == BLACK_LUSTER_RITUAL))
    abbreviate = TRUE;
  else
    abbreviate = FALSE;
  name = gCardInfo.name;
  name = sub_8020824(name);
  pos = 0;
  while (*name && *name != 0x24) {
    u16 r1;
    if (abbreviate && pos == 1) {
      r1 = gUnk_8E00E30[14][1] << 8 | gUnk_8E00E30[14][0];
      name += 4;
    }
    else if ((s8)*name >= 0) {

    }
    sub_8020968(buffer, r1, 0x44A);
  }
}*/

NAKED
void sub_802663C (void) {
  asm_unified("\n\
  	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x4c\n\
	ldr r0, _08026668\n\
	ldrb r0, [r0]\n\
	ldr r2, _0802666C\n\
	cmp r0, #0\n\
	bne _08026674\n\
	ldrh r1, [r2, #0x10]\n\
	movs r0, #0xb6\n\
	lsls r0, r0, #1\n\
	cmp r1, r0\n\
	beq _08026662\n\
	ldr r0, _08026670\n\
	cmp r1, r0\n\
	bne _08026674\n\
_08026662:\n\
	movs r0, #1\n\
	str r0, [sp, #0x48]\n\
	b _08026678\n\
	.align 2, 0\n\
_08026668: .4byte gLanguage\n\
_0802666C: .4byte gCardInfo\n\
_08026670: .4byte 0x0000029E\n\
_08026674:\n\
	movs r1, #0\n\
	str r1, [sp, #0x48]\n\
_08026678:\n\
	ldr r6, [r2]\n\
	adds r0, r6, #0\n\
	bl sub_8020824\n\
	adds r6, r0, #0\n\
	movs r7, #0\n\
	ldrb r0, [r6]\n\
	cmp r0, #0\n\
	bne _0802668C\n\
	b _08026790\n\
_0802668C:\n\
	cmp r0, #0x24\n\
	bne _08026692\n\
	b _08026790\n\
_08026692:\n\
	ldr r0, _080266B8\n\
	mov sl, r0\n\
	ldr r1, _080266BC\n\
	mov sb, r1\n\
	ldr r0, _080266C0\n\
	mov r8, r0\n\
_0802669E:\n\
	ldr r1, [sp, #0x48]\n\
	cmp r1, #0\n\
	beq _080266C8\n\
	cmp r7, #1\n\
	bne _080266C8\n\
	ldr r1, _080266C4\n\
	ldr r0, [r1, #0x38]\n\
	ldrb r1, [r0, #1]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0]\n\
	orrs r1, r0\n\
	adds r6, #4\n\
	b _080266F6\n\
	.align 2, 0\n\
_080266B8: .4byte 0x02021B50\n\
_080266BC: .4byte gUnk_8E01364\n\
_080266C0: .4byte 0x04000010\n\
_080266C4: .4byte gUnk_8E00E30\n\
_080266C8:\n\
	movs r0, #0\n\
	ldrsb r0, [r6, r0]\n\
	cmp r0, #0\n\
	blt _080266EC\n\
	ldrb r0, [r6]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	ldr r1, _080266E8\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0, #1]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0]\n\
	orrs r1, r0\n\
	adds r6, #1\n\
	b _080266F6\n\
	.align 2, 0\n\
_080266E8: .4byte gUnk_8E00E30\n\
_080266EC:\n\
	ldrb r0, [r6, #1]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r6]\n\
	orrs r1, r0\n\
	adds r6, #2\n\
_080266F6:\n\
	mov r0, sp\n\
	ldr r2, _080267A0\n\
	bl sub_8020968\n\
	movs r0, #0\n\
	str r0, [sp, #0x40]\n\
	add r0, sp, #0x40\n\
	mov r1, sl\n\
	ldr r2, _080267A4\n\
	bl CpuSet\n\
	mov r0, sp\n\
	mov r1, sl\n\
	adds r1, #0x28\n\
	ldr r2, _080267A8\n\
	bl CpuSet\n\
	lsls r5, r7, #1\n\
	adds r4, r5, #0\n\
	adds r4, #0x85\n\
	lsls r4, r4, #6\n\
	mov r1, sb\n\
	ldr r0, [r1]\n\
	adds r0, r0, r4\n\
	ldr r1, _080267AC\n\
	mov r2, r8\n\
	bl CpuSet\n\
	bl sub_800DD4C\n\
	mov r0, sb\n\
	ldr r1, [r0]\n\
	adds r1, r1, r4\n\
	ldr r0, _080267B0\n\
	mov r2, r8\n\
	bl CpuSet\n\
	movs r1, #0\n\
	str r1, [sp, #0x44]\n\
	add r0, sp, #0x44\n\
	mov r1, sl\n\
	ldr r2, _080267A4\n\
	bl CpuSet\n\
	add r0, sp, #0x18\n\
	mov r1, sl\n\
	ldr r2, _080267B4\n\
	bl CpuSet\n\
	adds r5, #0x86\n\
	lsls r5, r5, #6\n\
	mov r1, sb\n\
	ldr r0, [r1]\n\
	adds r0, r0, r5\n\
	ldr r1, _080267AC\n\
	mov r2, r8\n\
	bl CpuSet\n\
	bl sub_800DD4C\n\
	mov r0, sb\n\
	ldr r1, [r0]\n\
	adds r1, r1, r5\n\
	ldr r0, _080267B0\n\
	mov r2, r8\n\
	bl CpuSet\n\
	adds r0, r7, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	cmp r7, #9\n\
	bhi _08026790\n\
	ldrb r0, [r6]\n\
	cmp r0, #0\n\
	beq _08026790\n\
	cmp r0, #0x24\n\
	bne _0802669E\n\
_08026790:\n\
	add sp, #0x4c\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080267A0: .4byte 0x0000044A\n\
_080267A4: .4byte 0x05000010\n\
_080267A8: .4byte 0x04000006\n\
_080267AC: .4byte 0x02021B10\n\
_080267B0: .4byte 0x02021B90\n\
_080267B4: .4byte 0x0400000A");
}

void PrintCard (void) {
  sub_80267E0();
  sub_80262B0();
  sub_802634C();
  sub_80263DC();
  sub_8026864();
  sub_802648C();
  sub_8026564();
  sub_802663C();
}

//Card border
void sub_80267E0 (void) {
  u16 i;
  CpuCopy16(gUnk_8938384, gUnk_8E0136C, 532);
  for (i = 0; i < 266; i++)
    gUnk_8E0136C[i] += 101;
  CpuCopy32(gUnk_8E137C0, gUnk_8E01364 + 0xCA0, 0x2000);
  CpuCopy32(gUnk_8E137C4[gCardInfo.color], gUnk_8E01368 + 0x40, 40); // Palette
}

//Card stars
void sub_8026864 (void) {
  u8 numStars = gCardInfo.level;
  if (!numStars)
    return;
  if (numStars > 12)
    numStars = 12;
  CpuCopy32(gUnk_8938598, g2021B50, 64);
  if (!numStars)
    return;
  for (; numStars; numStars--) {
    CpuCopy32(gUnk_8E01364 + (114 - numStars) * 32, g2021B10, 64);
    sub_800DD4C();
    CpuCopy32(g2021B90, gUnk_8E01364 + (114 - numStars) * 32, 64);
  }
}
