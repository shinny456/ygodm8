#ifndef GUARD_DUEL_H
#define GUARD_DUEL_H

#define MAX_ZONES_IN_ROW 5

//sub_08026BA4 bx lr

struct StatMod
{
    u16 card;
    u8 field;
    s8 stage;
};

extern struct StatMod gStatMod;
extern void (*gMonEffects[])(void);
extern void (*gSpellEffects[])(void);
extern void (*g8DFF600[])(void);
extern void (*g8DFF55C[])(void);
extern u8 gWhoseTurn; //gWhoseTurn?

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

enum
{
    PLAYER,
    OPPONENT
};

enum
{
    TURN_PLAYER,
    TURN_OPPONENT
};


struct DuelCard
{
    u16 id;
    s8 permStage;
    s8 tempStage;
    u8 unk4;
    u8 isLocked : 1;
    u8 isDefending : 1;
    u8 unkTwo : 1;
    u8 unkThree : 1;
    u8 isFaceUp : 1;
    u8 willChangeSides : 1;  //give back to opponent at the end of the turn (used by brain control)
    u8 filler6[2];
};

struct NotSureWhatToName //rename to duelist status?
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

//Zones to Cards
struct Duel
{
    struct DuelCard zones[6][MAX_ZONES_IN_ROW];   //0x00  |2023EC0
                                                  //0x78  |2023F38
                                                  //0xA0  |2023F60
    u8 field;                                                   //0xF0  |2023FB0
    u8 filler_F1[3];                                            //0xF1  |2023FB1
    struct NotSureWhatToName notSure[2];                        //0xF4  |2023FB4
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
void sub_803FEA4(int unused);
//*********************

void sub_8040508(u8);


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
    JAPANESE
};



extern u8 gLanguage; //move to another header

extern u8 gDuelistStatus[]; //0 - player status, 1 - opponent status: 2 == loss, 1 == can attack, 0 == can't attack
void SetFinalStat(struct StatMod*);

void sub_801CEBC(void);

void sub_801D1A8(void);
void sub_801D188(u8);
void sub_801F6B0(void);
bool8 IsDuelOver(void);



void sub_803F224(void);

void sub_803F29C(void);

void sub_803F4C0(void);

void sub_803F908(s32, s32);

void sub_803F978(u16);
void sub_803F9C0(u16);

void SubtractPlayerLifePoints(u32); //sub player life points

void SubtractOpponentLifePoints(u32); //sub opponent life points

void ClearZone(struct DuelCard*);

void FlipCardFaceUp(struct DuelCard*); //flip card face up
u8 IsCardFaceUp(struct DuelCard*);
void ResetPermStage(struct DuelCard*); //reset num perm powerups
void sub_8040368(struct DuelCard*); //Inc num perm powerups

void sub_804037C(struct DuelCard*); //dec num powerups?
void SetPermStage(struct DuelCard*, int);

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


void PlayMusic(u16);
s32 sub_803FCBC(u16);
void FlipCardFaceDown(struct DuelCard*);
void sub_8040394(struct DuelCard*, u8);

void ResetTempStage(struct DuelCard*); //reset num temp powerups

s32 PermStage(struct DuelCard*);
s8 sub_804069C(struct DuelCard*); //getnumpowerups?

void LockCard(struct DuelCard*); //lock card
void UnlockCard(struct DuelCard*); //clear isLocked

void CopyCard(struct DuelCard* dst, struct DuelCard* src);

void sub_8041140(u8); //set field gfx

u8 HighestAtkMonInRow(struct DuelCard** row); //get highest atk mon
u8 HighestAtkMonInRowExceptGodCards(struct DuelCard** row); //get highest atk mon excluding god cards?

bool32 sub_804366C(struct DuelCard** row, u16 id);
u8 sub_8043164(struct DuelCard**, u8);

s32 NumCardInRow(struct DuelCard** row, u16 id); //num of card in a particular row

u8 sub_8043468(struct DuelCard**);

s32 NumEmptyZonesInRow(struct DuelCard** row);
s32 NumEmptyZonesAndGodCardsInRow(struct DuelCard** row);

u8 sub_804304C(struct DuelCard**);
s32 sub_8043548(struct DuelCard**);
s32 sub_8043584(struct DuelCard**, u8);

s32 EmptyZoneInRow(struct DuelCard**);  //get empty zone?

s32 sub_8043694(struct DuelCard**, u16 card); //get zone card is located at



s32 sub_8043930(u8, u8);

void DrawCard(u32);

void ClearZoneAndSendMonToGraveyard(struct DuelCard* zone, u8 graveyard);

u16 sub_804535C(u8);

u32 sub_8048CE0(void);

void InitSorlTurns(u8);
void sub_804D600(struct DuelCard*, u16 id);

s8 sub_8057894(u16 id);

void ResetNumTributes(void);
s32 WhoseTurn(void); //8058744

s32 sub_8056258(u8, u8);

bool32 sub_80586DC(void);


u16 sub_80452E0(u8);

struct Unk2023E80 {
  u16 unk0;
  u16 unk2;
  u8 filler4[2];
  u16 unk6;
  u8 filler8[6];
  u16 unkE;
  u8 filler10[2];
  u16 unk12;
  u8 filler14[5];
  u8 unk19;
  u8 unk1A;
};
extern struct Unk2023E80 g2023E80;
//0x02023EA0 data used when cards clash
//0x02023E80 ^

struct Duelist
{
    u16 id;                //0x0
    u8 field;              //0x2
    u16* deck;             //0x4
    u16* cardDrops;        //0x8
    u16* shopCards;        //0xC
    u16* badAnte;          //0x10
    u16 playerLp;          //0x14
    u16 lifePoints;        //0x16
    u32 capacityYield;     //0x18
    u16 minDomino;         //0x1C
    u16 maxDomino;         //0x1E
    u8 filler20[0x4];      //0x20
    u16 unk24;             //0x24  music
    u16 unk26;             //0x26
    u16 unk28;             //0x28
    u16 unk2A;             //0x2A
};

struct DuelData
{
    u64 unk0; //money?
    u32 capacityYield;
    u16 unkC;
    u16 unkE;
    u16 music;
    u16 opponent;
    u16 unk14[10];
    u16 ante;
    u8 unk2A;
    u8 unk2B;
    /*2C-2F bitfields?*/
    u8 unk2c : 1;
    u8 unk2d : 1;
    u8 filler2D[3];
    struct Duelist duelist; //duelistData?
};

extern u32 gUnk02024254;
extern struct DuelData gDuelData;

bool8 sub_804B144(u8*, u16*);
extern u16 gAnte;

struct Deck
{
    u32 cost;
    u32 unk4;
    u16 size;     //count
    u16 cards[40];
};

extern struct Deck gDeck;

extern u16 gUnk8E00FA8[][4]; //ritual
//[][0] == sacrifice 1
//[][1] == target monster
//[][2] == sacrifice 2
//[][3] == sacrifice 3

void sub_80404F0(u8);
void sub_8040540(u8);
void sub_803F8E0(int);
void ActivateMonEffect(void);
void ActivateSpellEffect(void);
u8 sub_8021D00(u16 id);

struct DuelDeck
{
    u16 cards[41];
    u8 cardsDrawn;
};

extern struct DuelDeck gUnk20240F0[2];

struct BgVram
{
    u8 cbb0[0x4000];
    u8 cbb1[0x4000];
    u8 cbb2[0x4000]; //tileset
    u16 sbb18[32][32];
    u16 sbb19[32][32];
    u16 sbb1A[32][32];
    u16 sbb1B[32][32];
    u16 sbb1C[32][32];
    u16 sbb1D[32][32];
    u16 sbb1E[32][32];
    u16 sbb1F[32][32]; //tilemap
    u8 cbb4[0x4000];
    u8 cbb5[0x4000];
};


struct Cbb
{
    u8 cbb0[0x4000];
    u8 cbb1[0x4000];
    u8 cbb2[0x4000];
    u8 cbb3[0x4000];
    u8 cbb4[0x4000];
    u8 cbb5[0x4000];
};

struct Sbb
{
    u16 sbb0[32][32];
    u16 sbb1[32][32];
    u16 sbb2[32][32];
    u16 sbb3[32][32];
    u16 sbb4[32][32];
    u16 sbb5[32][32];
    u16 sbb6[32][32];
    u16 sbb7[32][32];
    u16 sbb8[32][32];
    u16 sbb9[32][32];
    u16 sbbA[32][32];
    u16 sbbB[32][32];
    u16 sbbC[32][32];
    u16 sbbD[32][32];
    u16 sbbE[32][32];
    u16 sbbF[32][32];
    u16 sbb10[32][32];
    u16 sbb11[32][32];
    u16 sbb12[32][32];
    u16 sbb13[32][32];
    u16 sbb14[32][32];
    u16 sbb15[32][32];
    u16 sbb16[32][32];
    u16 sbb17[32][32];
    u16 sbb18[32][32];
    u16 sbb19[32][32];
    u16 sbb1A[32][32];
    u16 sbb1B[32][32];
    u16 sbb1C[32][32];
    u16 sbb1D[32][32];
    u16 sbb1E[32][32];
    u16 sbb1F[32][32];
};

struct PaletteBuffer
{
    u16 bg[256];
    u16 obj[256];
};

extern struct BgVram gBgVram;
extern struct PaletteBuffer g02000000; //palette buffer
extern u8 gObjVram[];

extern u16 g2021BF8;
u8 sub_8045390(u16);
bool32 sub_80436EC(struct DuelCard*);



#endif // GUARD_DUEL_H
