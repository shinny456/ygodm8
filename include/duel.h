#ifndef GUARD_DUEL_H
#define GUARD_DUEL_H

#define MAX_ZONES 5
#define MAX_DUELISTS 2

struct Unk2021AC0
{
    u16 id;
    u8 field;
    s8 numPowerup;
};

extern struct Unk2021AC0 gUnk2021AC0;

struct CardInfo
{
    u32 unk0;                   /*0x0*/
    u32 unk4;                   /*0x4*/
    u32 unk8;                   /*0x8*/
    u32 cost;                   /*0xC*/
    u16 id;                     /*0x10*/
    u16 atk;                    /*0x12*/
    u16 def;                    /*0x14*/
    u8 type;                    /*0x16*/
    u8 attribute;               /*0x17*/
    u8 level;                   /*0x18*/
    u8 color;                   /*0x19*/
    u8 magicTrapRitualEffect;   /*0x1A*/     //TODO: rename
    u8 monsterEffect;           /*0x1B*/
    u8 trapEffect;              /*0x1C*/
    u8 ritualEffect;
    u8 unk1E;
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
    NUM_TYPES
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
    NUM_ATTRIBUTES,
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

enum Field
{
    FIELD_ARENA,
    FIELD_FOREST,
    FIELD_WASTELAND,
    FIELD_MOUNTAIN,
    FIELD_SOGEN,
    FIELD_UMI,
    FIELD_YAMI,
    NUM_FIELDS
};

enum Turn
{
    TURN_PLAYER,
    TURN_OPPONENT
};

enum
{
    CUR_PLAYER,
    CUR_OPPONENT
};

enum CardPosition
{
    FACE_DOWN,
    FACE_UP
};

enum CardBattlePosition
{
    POS_ATK,
    POS_DEF
};

struct Zone
{
    u16 id;
    s8 numPermPowerup;
    s8 numTempPowerup;
    u8 unk4;
    u8 isLocked : 1;
    u8 battlePosition : 1;  //atk/def
    u8 unkTwo : 1;
    u8 unkThree : 1;
    u8 position : 1;  //face up/down (cardPosition?)
    u8 unkFive : 1;
    u8 filler6[2];
};

struct NotSureWhatToName
{
    u16 graveyard;
    u8 sorlTurns : 2;
    u8 unkTwo : 1;
    u8 unkThree : 1;
};

struct Duel
{               
    struct Zone opponentSpellTrapZones[MAX_ZONES];  //0x0   |2023EC0
    struct Zone opponentMonZones[MAX_ZONES];        //0x28  |2023EE8
    struct Zone playerMonZones[MAX_ZONES];          //0x50  |2023F10
    struct Zone playerSpellTrapZones[MAX_ZONES];    //0x78  |2023F38
    struct Zone hands[2][MAX_ZONES];                //0xA0  |2023F60
    u8 field;                                       //0xF0  |2023FB0
    u8 filler_F1[3];                                //0xF1  |2023FB1
    struct NotSureWhatToName player;                //0xF4  |2023FB4
    struct NotSureWhatToName opponent;              //0xF8  |2023FB8
};

extern struct Duel gDuel;
extern struct NotSureWhatToName* gNotSure[MAX_DUELISTS]; //2023FC0
extern struct Zone* gBoard[5][MAX_ZONES];                //2023FD0 
extern struct Zone* gUnk2024040[5][MAX_ZONES];           //2024040
extern struct Zone* hand[2][MAX_ZONES];                  //20240B0
                                                         //20240C4
/*
gBoard[]:
0 - Current Opponent Spell/Trap Row
1 - Current Opponent Monster Row
2 - Current Player   Monster Row
3 - Current Player   Spell/Trap Row
4 - Current Player   Hand
*/

//|2023FD0  currOpBackRow
//|2023FE4  currOpMonRow
//|2023FF8  currPlMonRow
//|202400C  currPlBackRow
//|2024020  currPlHand


struct Unk_02021C00
{
    u16 unk0;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
};

extern struct Unk_02021C00 gUnk2021C00;
//*********************
//sub_803FEA4       ***
//*********************

//sub_8040508


extern u8 gUnk_02021C08;

struct MonEffect
{
    u16 id; //mon id
    u8 row; 
    u8 zone;
};

extern struct MonEffect gMonEffect;

struct Unk_02021C10
{
    u16 unk0;
    u16 unk2;
};
extern struct Unk_02021C10 gUnk_02021C10;

#endif // GUARD_DUEL_H
