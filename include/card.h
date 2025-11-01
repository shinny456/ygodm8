#ifndef GUARD_CARD_H
#define GUARD_CARD_H

//TODO: CARD_TYPE_
enum CardType {
  TYPE_NONE,
  TYPE_DRAGON,
  TYPE_MAGICIAN,
  TYPE_ZOMBIE,
  TYPE_WARRIOR,
  TYPE_BEAST_WARRIOR,
  TYPE_BEAST,
  TYPE_WING_BEAST,
  TYPE_FIEND,
  TYPE_FAIRY,
  TYPE_INSECT,
  TYPE_DINOSAUR,
  TYPE_REPTILE,
  TYPE_FISH,
  TYPE_SEA_DRAGON,
  TYPE_MACHINE,
  TYPE_THUNDER,
  TYPE_AQUA,
  TYPE_PYRO,
  TYPE_ROCK,
  TYPE_PLANT,
  TYPE_SPELL,
  TYPE_TRAP,
  TYPE_RITUAL,
  NUM_CARD_TYPES
};

//TODO: CARD_TYPE_GROUP
enum {
  TYPE_GROUP_NONE,
  TYPE_GROUP_MONSTER,
  TYPE_GROUP_SPELL,
  TYPE_GROUP_TRAP,
  TYPE_GROUP_RITUAL
};

//CARD_ATTRIBUTE
enum CardAttribute {
  ATTRIBUTE_NONE,
  ATTRIBUTE_SHADOW,
  ATTRIBUTE_LIGHT,
  ATTRIBUTE_FIEND,
  ATTRIBUTE_DREAM,
  ATTRIBUTE_PYRO,
  ATTRIBUTE_FOREST,
  ATTRIBUTE_WIND,
  ATTRIBUTE_EARTH,
  ATTRIBUTE_THUNDER,
  ATTRIBUTE_AQUA,
  ATTRIBUTE_DIVINE,
  NUM_ATTRIBUTES
};

enum CardColor {
  COLOR_NORMAL, //TODO: NORMAL_MONSTER?
  COLOR_EFFECT, //TODO: EFFECT_MONSTER?
  COLOR_FUSION, //^
  COLOR_SPELL,
  COLOR_TRAP,
  COLOR_RITUAL,
  COLOR_OBELISK,
  COLOR_SLIFER,
  COLOR_RA,
  NUM_COLORS
};

struct StatMod {
  unsigned short card; //TODO: rename to cardId?
  u8 field;
  s8 stage;
};

struct CardInfo {
  u8* name;                   /*0x0*/
  u8* nameUnused;                   /*0x4*/
  u8* description;            /*0x8*/ // effect summary or flavor text
  u32 cost;                   /*0xC*/
  u16 id;                     /*0x10*/ /*TODO: rename to cardId/cardID?*/
  u16 atk;                    /*0x12*/
  u16 def;                    /*0x14*/
  u8 type;                    /*0x16*/
  u8 attribute;               /*0x17*/
  //TODO:level -> stars?
  u8 level;                   /*0x18*/
  u8 color;                   /*0x19*/
  //TODO: spellEffectId? monsterEffectId? etc...
  u8 spellEffect;             /*0x1A*/
  u8 monsterEffect;           /*0x1B*/
  u8 trapEffect;              /*0x1C*/
  u8 ritualEffect;            /*0x1D*/
  u8 unk1E;                   /*0x1E*/ // something to do with effects
};

extern struct StatMod gStatMod;
extern struct CardInfo gCardInfo;

void sub_800B288 (unsigned char);
void SetFinalStat (struct StatMod*);
void SetCardInfo (unsigned short);
void SetCardInfoWithWarning (unsigned short*);
void sub_800B618 (void *r6); //TODO: change type
void sub_800BCB0 (void *src); //TODO: change type

#endif // GUARD_CARD_H
