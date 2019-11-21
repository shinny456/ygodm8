#ifndef GUARD_DUEL_H
#define GUARD_DUEL_H

#define MAX_ZONES 5
#define MAX_DUELISTS 2


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
*/


//sub_08026BA4 bx lr

struct Unk2021AC0
{
    u16 id;
    u8 field;
    s8 numPowerup;
};

extern struct Unk2021AC0 gUnk2021AC0;
extern void (*gMonEffects[])(void);


struct CardInfo
{
    u8* name;                   /*0x0*/
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

enum DuelistId
{
    PLAYER,
    OPPONENT
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

struct Unk2023EA0
{
    u8 filler0[0x18];
    u8 unk18;
};

extern struct Unk2023EA0 gUnk2023EA0;

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
extern struct Zone* gHands[2][MAX_ZONES];                  //20240B0
                                                         //20240C4

                   //gHand[]: 0 - curr player, 1- curr opponent

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

extern u16 gLifePoints[];

struct Unk_02021C10
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u8 unkA;
};
extern struct Unk_02021C10 gUnk_02021C10;

enum Language
{
    ENGLISH,
    FRENCH,
    GERMAN,
    ITALIAN,
    SPANISH,
    JAPANESE,
    DEBUG //skip dialogs
};



extern u8 gLanguage; //move to another header

//u8 g2021DB8[] 0 - player status, 1 - opponent status: 2 == loss, 1 == can attack, 0 == can't attack
void sub_800B318(struct Unk2021AC0*);

void sub_801CEBC(void);

void sub_801D1A8(void);
void sub_801D188(u8);

u8 sub_8025544(void);

bool32 IsGodCard(u16); //802607C

bool32 IsWingedDragonOfRa(u16 id); //80260BC

void sub_803F224(void);

void sub_803F29C(void);

void sub_803F4C0(void);

void sub_803F908(int, int);

void sub_803F978(u16);
void sub_803F9C0(u16);

void sub_803F99C(u32); //sub player life points

void sub_803F9E4(u32); //sub opponent life points

void ClearZone(struct Zone*); //clear zone?

void sub_8040340(struct Zone*); //card face up
u8 CardPosition(struct Zone*);
void sub_8040360(struct Zone*); //reset num perm powerups
void sub_8040368(struct Zone*); //Inc num perm powerups

void sub_804037C(struct Zone*); //dec num powerups?

void sub_8040394(struct Zone*, u8);

void sub_80403E8(struct Zone*); //reset num temp powerups

s8 sub_804069C(struct Zone*); //getnumpowerups?

void sub_80406C0(struct Zone*); //lock card

void CopyCard(struct Zone* dst, struct Zone* src); //copy (zone??) from one zone to another (src to dst)?

void sub_8041140(u8); //set field gfx

u8 HighestAtkMonInRow(struct Zone** row); //get highest atk mon
u8 HighestAtkMonInRowExceptGodCards(struct Zone** row); //get highest atk mon excluding god cards? excluding god cards?

u8 sub_8043164(struct Zone**, u8);

int NumCardInRow(struct Zone** row, u16 id); //num of card in a particular row

u8 sub_8043468(struct Zone**);

int NumEmptyZonesInRow(struct Zone** row);
int NumEmptyZonesAndGodCardsInRow(struct Zone** row);

u8 sub_804304C(struct Zone**);
int sub_8043548(struct Zone**);
int sub_8043584(struct Zone**, u8);

int EmptyZoneInRow(struct Zone**);  //get empty zone?

int sub_8043694(struct Zone**, u16 id); //get zone card is located at

void sub_80406CC(struct Zone*); //clear isLocked

int sub_8043930(u8, u8);

void sub_8043CE4(u32);

void sub_8045338(struct Zone*, u8); //clear zone and send mon to graveyard?

void sub_804535C(u8);

u32 GetCurrTurn(void); //8058744

int sub_8056258(u8, u8);

struct Unk2023E80
{
    u8 filler0[0x18];
    u8 unk18;
    u8 unk19;

};
extern struct Unk2023E80 gUnk2023E80;
//0x02023EA0 data used when cards clash
//0x02023E80 ^


#endif // GUARD_DUEL_H
