#ifndef GUARD_DUEL_MAIN_H
#define GUARD_DUEL_MAIN_H

struct DuelText {
  unsigned short unk0;
  unsigned short unk2;
  unsigned short unk4;
  unsigned short unk6;
  unsigned char textId;
};

void DuelMain (void);
void sub_80219E4 (struct DuelText*);
void ResetDuelTextData (struct DuelText*);
void MosaicEffect (void);
unsigned char GetRitualNumTributes (unsigned short);

void LinkDuelMain (void);
void sub_8022080 (void);

#endif // GUARD_DUEL_MAIN_H
