#ifndef GUARD_DUEL_H
#define GUARD_DUEL_H

#define MAX_ZONES_IN_ROW 5

//sub_08026BA4 bx lr

struct Unk2021AC0
{
    u16 id;
    u8 field;
    s8 stage;
};

extern struct Unk2021AC0 gUnk2021AC0;
extern void (*gMonEffects[])(void);
extern void (*gSpellEffects[])(void);

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

enum TurnDuelistId
{
    TURN_PLAYER,
    TURN_OPPONENT
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

struct DuelCard
{
    u16 id;
    s8 permStage;
    s8 tempStage;
    u8 unk4;
    u8 isLocked : 1;
    u8 battlePosition : 1;  //atk/def
    u8 unkTwo : 1;
    u8 unkThree : 1;
    u8 position : 1;  //face up/down
    u8 unkFive : 1;  //give back to opponent at the end of turn (used by brain control)
    u8 filler6[2];
};

struct NotSureWhatToName
{
    u16 graveyard;
    u8 sorlTurns : 2;
    u8 unkTwo : 1; //can defend?
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
    struct DuelCard opponentSpellTrapZones[MAX_ZONES_IN_ROW];  //0x0   |2023EC0
    struct DuelCard opponentMonZones[MAX_ZONES_IN_ROW];        //0x28  |2023EE8
    struct DuelCard playerMonZones[MAX_ZONES_IN_ROW];          //0x50  |2023F10
    struct DuelCard playerSpellTrapZones[MAX_ZONES_IN_ROW];    //0x78  |2023F38
    struct DuelCard hands[2][MAX_ZONES_IN_ROW];                //0xA0  |2023F60
    u8 field;                                       //0xF0  |2023FB0
    u8 filler_F1[3];                                //0xF1  |2023FB1
    struct NotSureWhatToName notSure[2];                //0xF4  |2023FB4
                                                    //0xF8  |2023FB8
};

extern struct Duel gDuel;
extern struct NotSureWhatToName* gNotSure[2]; //2023FC0
extern struct DuelCard* gZones[5][MAX_ZONES_IN_ROW];                //2023FD0
extern struct DuelCard* gUnk2024040[5][MAX_ZONES_IN_ROW];           //2024040
extern struct DuelCard* gHands[2][MAX_ZONES_IN_ROW];                  //20240B0
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

extern u8 gUnk20241FC;

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
    u16 id;
    u8 row;
    u8 zone;
};

struct SpellEffect
{
    u16 id;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
};

extern struct MonEffect gMonEffect;
extern struct SpellEffect gUnk020245A0;
extern struct SpellEffect gUnk2024260;



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



void sub_803F224(void);

void sub_803F29C(void);

void sub_803F4C0(void);

void sub_803F908(int, int);

void sub_803F978(u16);
void sub_803F9C0(u16);

void sub_803F99C(u32); //sub player life points

void sub_803F9E4(u32); //sub opponent life points

void ClearZone(struct DuelCard*); //clear zone?

void sub_8040340(struct DuelCard*); //card face up
u8 CardPosition(struct DuelCard*);
void sub_8040360(struct DuelCard*); //reset num perm powerups
void sub_8040368(struct DuelCard*); //Inc num perm powerups

void sub_804037C(struct DuelCard*); //dec num powerups?
void sub_8040684(struct DuelCard*, int);

//change to bool32
u32 sub_80555A4(u16);
u32 sub_80555D4(u16);
u32 sub_8055604(u16);
u32 sub_8055634(u16);
u32 sub_8055664(u16);
u32 sub_8055694(u16);
u32 sub_80556C4(u16);
u32 sub_80556F4(u16);
u32 sub_8055724(u16);
u32 sub_8055754(u16);
u32 sub_8055784(u16);
u32 sub_80557B4(u16);
u32 sub_80557E4(u16);
u32 sub_8055814(u16);
u32 sub_8055844(u16);
u32 sub_8055874(u16);
u32 sub_80558A4(u16);
u32 sub_80558D4(u16);
u32 sub_8055904(u16);
u32 sub_8055934(u16);
u32 sub_8055964(u16);
u32 sub_8055994(u16);
u32 sub_80559C4(u16);
u32 sub_80559F4(u16);
u32 sub_8055A24(u16);
u32 sub_8055A54(u16);
u32 sub_8055A84(u16);
u32 sub_8055AB4(u16);
u32 sub_8055AE4(u16);
u32 sub_8055B14(u16);
u32 sub_8055B44(u16);
u32 sub_8055B74(u16);
u32 sub_8055BA4(u16);
u32 sub_8055BD4(u16);


void sub_8034F60(u16);
int sub_803FCBC(u16);
void sub_804034C(struct DuelCard*);
void sub_8040394(struct DuelCard*, u8);

void sub_80403E8(struct DuelCard*); //reset num temp powerups

int sub_8040688(struct DuelCard*);
s8 sub_804069C(struct DuelCard*); //getnumpowerups?

void sub_80406C0(struct DuelCard*); //lock card

void CopyCard(struct DuelCard* dst, struct DuelCard* src); //copy (zone??) from one zone to another (src to dst)?

void sub_8041140(u8); //set field gfx

u8 HighestAtkMonInRow(struct DuelCard** row); //get highest atk mon
u8 HighestAtkMonInRowExceptGodCards(struct DuelCard** row); //get highest atk mon excluding god cards? excluding god cards?

bool32 sub_804366C(struct DuelCard** row, u16 id);
u8 sub_8043164(struct DuelCard**, u8);

int NumCardInRow(struct DuelCard** row, u16 id); //num of card in a particular row

u8 sub_8043468(struct DuelCard**);

int NumEmptyZonesInRow(struct DuelCard** row);
int NumEmptyZonesAndGodCardsInRow(struct DuelCard** row);

u8 sub_804304C(struct DuelCard**);
int sub_8043548(struct DuelCard**);
int sub_8043584(struct DuelCard**, u8);

int EmptyZoneInRow(struct DuelCard**);  //get empty zone?

int sub_8043694(struct DuelCard**, u16 id); //get zone card is located at

void sub_80406CC(struct DuelCard*); //clear isLocked

int sub_8043930(u8, u8);

void sub_8043CE4(u32);

void sub_8045338(struct DuelCard*, u8); //clear zone and send mon to graveyard?

u16 sub_804535C(u8);

u32 sub_8048CE0(void);

void sub_8040744(u8);
void sub_804D600(struct DuelCard*, u16 id);

void ResetNumTributes(void);
u32 WhoseTurn(void); //8058744

int sub_8056258(u8, u8);
u32 sub_80586DC(void);


void sub_80452E0(u8);

struct Unk2023E80
{
    u8 filler0[0x18];
    u8 unk18;
    u8 unk19;

};
extern struct Unk2023E80 gUnk2023E80;
//0x02023EA0 data used when cards clash
//0x02023E80 ^

struct Duelist
{
    u16 id;                //0x0
    u16 fieldId;           //0x2 u8?
    u16* deck;             //0x4
    u16* cardDrops;        //0x8
    u16* shopCards;        //0xC
    u16* badAnte;          //0x10
    u16 playerLp;          //0x14
    u16 lifePoints;        //0x16
    u32 capacityYield;     //0x18
    u16 minDomino;         //0x1C
    u16 maxDomino;         //0x1E
    u8 filler20[0xC];      //0x20
};

struct UnkStruct02021D10
{
    u32 unk0;
    u32 unk4;
    u32 unk8;     //capacityYield
    u16 unkC;     //
    u16 unkE;
    u16 unk10;
    u16 unk12;     //duelist ID?
    u16 unk14[10];
    u16 unk28;     //ante
    u8 unk2A;
    u8 unk2B;
    /*2C-2F bitfields?*/
    u8 unk2C;
    u8 filler2D[3];
    struct Duelist duelist;
};

extern u32 gUnk02024254;
extern struct UnkStruct02021D10 gUnk02021D10;

bool8 sub_804B144(u8*, u16*);


extern u16 gUnk8E00FA8[][4]; //ritual
//[][0] == sacrifice 1
//[][1] == target monster
//[][2] == sacrifice 2
//[][3] == sacrifice 3



#endif // GUARD_DUEL_H
