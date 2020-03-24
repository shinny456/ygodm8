#ifndef GUARD_CARD_H
#define GUARD_CARD_H

struct CardInfo
{
    u8* name;                   /*0x0*/
    u8* unk4;                   /*0x4*/
    u8* unk8;                   /*0x8*/
    u32 cost;                   /*0xC*/
    u16 id;                     /*0x10*/
    u16 atk;                    /*0x12*/
    u16 def;                    /*0x14*/
    u8 type;                    /*0x16*/
    u8 attribute;               /*0x17*/
    u8 level;                   /*0x18*/
    u8 color;                   /*0x19*/
    u8 spellEffect;             /*0x1A*/
    u8 monsterEffect;           /*0x1B*/
    u8 trapEffect;              /*0x1C*/
    u8 ritualEffect;            /*0x1D*/
    u8 unk1E;                   /*0x1E*/
};
extern struct CardInfo gCardInfo;
void SetCardInfo(u16 id);

enum CardType
{
    TYPE_NONE,
    TYPE_DRAGON,
    TYPE_MAGICIAN,
    TYPE_ZOMBIE,
    TYPE_WARRIOR,
    TYPE_BEAST_WAR, //?
    TYPE_BEAST,
    TYPE_WNG_BEAST,
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

enum CardAttribute
{
    ATTRIBUTE_NONE,
    ATTRIBUTE_SHADOW,
    ATTRIBUTE_LIGHT,
    ATTRIBUTE_FIEND,
    ATTRIBUTE_DREAMS,
    ATTRIBUTE_PYRO,
    ATTRIBUTE_FOREST,
    ATTRIBUTE_WIND,
    ATTRIBUTE_EARTH,
    ATTRIBUTE_THUNDER,
    ATTRIBUTE_AQUA,
    ATTRIBUTE_DIVINE,
    NUM_ATTRIBUTES
};

enum CardColor
{
    COLOR_NORMAL,
    COLOR_EFFECT,
    COLOR_FUSION,
    COLOR_SPELL,
    COLOR_TRAP,
    COLOR_RITUAL,
    COLOR_OBELISK,
    COLOR_SLIFER,
    COLOR_RA,
    NUM_COLORS
};

bool32 IsGodCard(u16); //802607C

bool32 IsWingedDragonOfRa(u16 id); //80260BC

/*NOTES:
Card details:
sub_80267E0 - Draw card border;  08938384 - 0x214; 089361F8 - 0x2000
sub_80262B0 - Draw card art (and description?)
sub_802634C - Draw card type
sub_80263DC - Draw card attribute
sub_8026864 - Draw card stars
sub_802648C - Draw card atk
sub_8026564 - Draw card def
sub_802663C - Draw card name
sub_80267B8 - Call all functions above


2018400 - OAM buffer
overworld sprite palettes: 0x82AD06C
overworld sprite tiles RAM?: 0x2010400
bg palette buffer: 0x02000000
object palette buffer: 0x02000200

08E11790 - sprite pointers

each row is composed of 4 tiles == 0x80 bytes
player front: (each row is 0x200 bytes apart)
152E4C -first row 
15304C -second row
15324C -third row
15344C -fourth row


(code4.s overworld code)
*/




#endif // GUARD_CARD_H