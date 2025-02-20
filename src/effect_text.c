#include "global.h"

extern unsigned short g89DC020[]; // sound effect to play after spell card is activated
extern unsigned short g89DC14C[]; // sound effect to play after monster effect is activated
extern unsigned short g89DC23C[];
extern unsigned short g89DC2DC[];
extern void (*gE00AA4[])(void);
/*
gE00AA4 = {
  sub_801CF34
  sub_801CF38
  sub_801CF73
  sub_801CFB0
  sub_801CFEC
  sub_801D008
  sub_801D044
  sub_801D080
  sub_801D0B0
  sub_801D100
  sub_801D150
  sub_801CF34
};
*/

void sub_801CEBC (void) {
  struct DuelText duelText;
  if (gDuelType == 6) {
    sub_80240BC(&duelText);
    duelText.textId = 24;
    sub_802408C(&duelText);
    g2021D98 = 5;
    sub_8024548();
    do {
      sub_8024354();
    } while (g3000C6C);
  }
  sub_801CF08();
}

void sub_801CF08 (void) {
  if (gCardEffectTextData.unkA < 11) { //TODO: replace 11 with NUM_SOMETHING
    gE00AA4[gCardEffectTextData.unkA]();
    sub_8022080();
  }
}

static void sub_801CF30 (void) {
}

static void sub_801CF34 (void) {
}

static void sub_801CF38 (void) {
  PlayMusic(0x41);
  sub_8041CCC(gCardEffectTextData.cardId, gCardEffectTextData.cardId2);
  SetCardInfo(gCardEffectTextData.cardId);
  PlayMusic(g89DC020[gCardInfo.spellEffect]);
}

static void sub_801CF74 (void) {
  PlayMusic(0x40);
  sub_8041CCC(gCardEffectTextData.cardId, gCardEffectTextData.cardId2);
  SetCardInfo(gCardEffectTextData.cardId);
  PlayMusic(g89DC14C[gCardInfo.monsterEffect]);
}

static void sub_801CFB0 (void) {
  PlayMusic(0x42);
  sub_8041CCC(gCardEffectTextData.cardId, gCardEffectTextData.cardId2);
  SetCardInfo(gCardEffectTextData.cardId);
  PlayMusic(g89DC020[gCardInfo.spellEffect]);
}

static void sub_801CFEC (void) {
  PlayMusic(0x42);
  sub_8041D14(gCardEffectTextData.cardId, gCardEffectTextData.cardId2);
}

static void sub_801D008 (void) {
  sub_8035020(4);
  PlayMusic(0x52);
  sub_8041C94(gDuelTextStrings[gCardEffectTextData.textId], gCardEffectTextData.cardId2, gCardEffectTextData.unk4, gCardEffectTextData.unk6, 0);
}

static void sub_801D044 (void) {
  sub_8035020(4);
  PlayMusic(0x52);
  sub_8041C94(gDuelTextStrings[gCardEffectTextData.textId], gCardEffectTextData.cardId2, gCardEffectTextData.unk4, gCardEffectTextData.unk6, 0);
}

static void sub_801D080 (void) {
  sub_8041C94(gDuelTextStrings[gCardEffectTextData.textId], gCardEffectTextData.cardId2, gCardEffectTextData.unk4, gCardEffectTextData.unk6, 0);
}

static void sub_801D0B0 (void) {
  PlayMusic(0x41);
  sub_8041C94(g8F9E35C[gCardEffectTextData.cardId], gCardEffectTextData.cardId, gCardEffectTextData.cardId2, 0, 0);
  SetCardInfo(gCardEffectTextData.cardId);
  PlayMusic(g89DC23C[gCardInfo.unk1E]);
}

static void sub_801D100 (void) {
  PlayMusic(0x41);
  sub_8041C94(g8FA0964[gCardEffectTextData.cardId], gCardEffectTextData.cardId, gCardEffectTextData.cardId2, 0, 0);
  SetCardInfo(gCardEffectTextData.cardId);
  PlayMusic(g89DC2DC[gCardInfo.unk1E]);
}

static void sub_801D150 (void) {
  PlayMusic(0x41);
  sub_8041C94(gDuelTextStrings[gCardEffectTextData.textId], gCardEffectTextData.cardId, gCardEffectTextData.cardId2, 0, 0);
  PlayMusic(0x5A);
}

void SetCardEffectTextType (unsigned char type) {
  if (type < 11) //TODO: replace 11 with NUM_SOMETHING (same as sub_801CF08)
    gCardEffectTextData.unkA = type;
  else
    gCardEffectTextData.unkA = 0;
}

void ResetCardEffectTextData (void) {
  gCardEffectTextData.cardId = 0;
  gCardEffectTextData.cardId2 = 0;
  gCardEffectTextData.unk4 = 0;
  gCardEffectTextData.unk6 = 0;
  gCardEffectTextData.textId = 0;
  gCardEffectTextData.unkA = 0;
}
