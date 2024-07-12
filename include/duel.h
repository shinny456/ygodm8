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
extern void (*g8DFFA48[])(void);
extern void (*g8DFF7F0[])(void);
extern void (*g8E00330[])(void);
extern void (*g8E00150[])(void);

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
    //u8 filler6[2];
};

struct NotSureWhatToName //rename to duelist status?
{
    u16 graveyard;
    u8 sorlTurns : 2;
    u8 unkTwo : 1; //can defend?
    u8 unkThree : 1;
};

//Zones to Cards
struct Duel
{
    struct DuelCard zones[4][MAX_ZONES_IN_ROW];   //0x00  |2023EC0
    struct DuelCard hands[2][MAX_ZONES_IN_ROW];   //0x78  |2023F38
                                                  //0xA0  |2023F60
    u8 field;                                                   //0xF0  |2023FB0
    u8 filler_F1[3];                                            //0xF1  |2023FB1
    struct NotSureWhatToName notSure[2];                        //0xF4  |2023FB4
                                                                //0xF8  |2023FB8
};

extern struct Duel gDuel;
extern struct NotSureWhatToName* gNotSure[2]; //2023FC0
extern struct DuelCard* gZones[5][MAX_ZONES_IN_ROW];                //2023FD0
extern struct DuelCard* gDuelBoard[5][MAX_ZONES_IN_ROW];           //2024040
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

// when gDuelType is
// 0: Ingame Duel: Life points carry over from previous duels; otherwise: they get set to opponent specific value.
// 6: Link Duel
extern u8 gDuelType;

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


extern u8 gHideEffectText;

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

struct TrapEffect
{
    u16 id;
    u8 unk2;
    u8 unk3;
    u8 trapZoneId;
    u8 unk5;
};

extern struct MonEffect gMonEffect;
extern struct TrapEffect gTrapEffectData;
extern struct SpellEffect gSpellEffectData;



extern u16 gLifePoints[];

struct CardEffectTextData
{
    u16 cardId;
    u16 cardId2;
    u16 unk4;
    u16 unk6;
    u16 textId;
    u8 unkA;
};
extern struct CardEffectTextData gCardEffectTextData;

enum Language
{
    ENGLISH,
    FRENCH,
    GERMAN,
    ITALIAN,
    SPANISH,
    NUM_LANGUAGES
};



extern u8 gLanguage; //move to another header

extern u8 gDuelistStatus[]; //0 - player status, 1 - opponent status: 2 == loss, 1 == can attack, 0 == can't attack
void SetFinalStat(struct StatMod*);

void sub_801CEBC(void);

void ResetCardEffectTextData(void);
void sub_801D188(u8);
void sub_801F6B0(void);
bool8 IsDuelOver(void);



void sub_803F224(void);

void sub_803F29C(void);

void sub_803F4C0(void);

void sub_803F908(s32, s32);

void SetPlayerLifePointsToAdd(u32);
void SetOpponentLifePointsToAdd(u32);

void SetPlayerLifePointsToSubtract(u32); //sub player life points

void SetOpponentLifePointsToSubtract(u32); //sub opponent life points

void ClearZone(struct DuelCard*);

void FlipCardFaceUp(struct DuelCard*); //flip card face up
u8 IsCardFaceUp(struct DuelCard*);
void ResetPermanentPowerLevel(struct DuelCard*); //reset num perm powerups
void IncrementPermanentPowerLevel(struct DuelCard*);

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


void PlayMusic(int);
s32 GetTypeGroup(u16);
s32 GetSpellType(u16);
void FlipCardFaceDown(struct DuelCard*);
void sub_8040394(struct DuelCard*, u8);

void ResetTemporaryPowerLevel(struct DuelCard*);

s32 PermStage(struct DuelCard*);
int sub_804069C(struct DuelCard*); //getnumpowerups?

void LockCard(struct DuelCard*); //lock card
void UnlockCard(struct DuelCard*); //clear isLocked

void CopyCard(struct DuelCard* dst, struct DuelCard* src);

void sub_8041140(u8); //set field gfx

int HighestAtkMonInRow(struct DuelCard** row); //get highest atk mon
int HighestAtkMonInRowExceptGodCards(struct DuelCard** row); //get highest atk mon excluding god cards?

bool32 sub_804366C(struct DuelCard** row, u16 id);
int sub_8043164(struct DuelCard**, u8);

s32 NumCardInRow(struct DuelCard** row, u16 id); //num of card in a particular row

int sub_8043468(struct DuelCard**);

s32 NumEmptyZonesInRow(struct DuelCard** row);
s32 NumEmptyZonesAndGodCardsInRow(struct DuelCard** row);

int sub_804304C(struct DuelCard**);
s32 sub_8043548(struct DuelCard**);
s32 sub_8043584(struct DuelCard**, u8);

s8 EmptyZoneInRow(struct DuelCard**);  //get empty zone?

s32 sub_8043694(struct DuelCard**, u16 card); //get zone card is located at



s32 sub_8043930(u8, u8);

void DrawCard(u32);

void ClearZoneAndSendMonToGraveyard(struct DuelCard* zone, u8 graveyard);

u16 GetGraveCardAndClearGrave(u8);

u32 sub_8048CE0(void);

void InitSorlTurns(u8);



void ResetNumTributes(void);
s32 WhoseTurn(void); //8058744

s32 sub_8056258(u8, u8);

bool32 sub_80586DC(void);


u16 GetGraveCardAndClearGrave2(u8);

struct Unk2023E80 {
  // substruct?
  u16 unk0;
  u16 unk2;
  u16 unk4;
  u16 unk6;
  u8 unk8;
  u8 unk9;
  u8 unkA;
  u8 fillerB;
  // substruct?
  u16 unkC;
  u16 unkE;
  u16 unk10;
  u16 unk12;
  u8 unk14;
  u8 unk15;
  u8 unk16;
  u8 filler17;
//--------------
  u8 action;
  u8 unk19;
  u8 unk1A;
  u8 unk1B;
};
extern struct Unk2023E80 g2023E80;

struct Unk2023EA0 {
  struct Unk2023EA0_sub {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u8 unkA;
    u8 fillerB;
  } unk0[2];
  u8 unk18;
};

extern struct Unk2023EA0 gUnk2023EA0;
//0x02023EA0 data used when cards clash
//0x02023E80 ^

struct CardDrop {
    u16 card;
    u16 chance;
};

struct Duelist
{
    u16 id;                //0x0
    u8 field;              //0x2
    u16* deck;             //0x4
    struct CardDrop* goodDrops;        //0x8
    struct CardDrop* shopCards;        //0xC
    struct CardDrop* badDrops;          //0x10
    u16 playerLp;          //0x14
    u16 lifePoints;        //0x16
    u32 capacityYield;     //0x18
    u16 minDomino;         //0x1C
    u16 maxDomino;         //0x1E
    u8 unk20;              //0x20
    u8 filler21[3];
    u16 unk24;             //0x24  music
    u16 unk26;             //0x26
    u16 unk28;             //0x28
    u16 unk2A;             //0x2A
};

// duel metadata, external?
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


extern u16 gAnte;

struct Deck
{
    u32 cost;
    s8 unk4; // current position
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 count;
    u8 filler9;
    u16 cards[40];
};

extern struct Deck gDeck;

extern u16 gRitualComponents[][4]; //ritual
//[][0] == sacrifice 1
//[][1] == target monster
//[][2] == sacrifice 2
//[][3] == sacrifice 3

void sub_80404F0(u8);
void LockMonsterCardsInRow(u8);
void sub_803F8E0(int);
void ActivateMonEffect(void);
void TryActivatingSpellEffect(void);
u8 GetRitualNumTributes(u16 id);

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
int sub_8045390(u16);
bool32 sub_80436EC(struct DuelCard*);

void ClearZoneAndSendMonToGraveyard2 (struct DuelCard *zone, u8 player);
void DeclareLoser(u8);

void LoadObjVRAM(void);
void LoadBgVRAM(void);
void LoadCharblock0(void);
void LoadCharblock1(void);
void LoadCharblock2(void);
void LoadCharblock3(void);
void LoadCharblock4(void);
void LoadPalettes(void);
void LoadVRAM(void);
void sub_80081DC(void (*)(void));
void sub_8008220 (void);
void LoadBgOffsets (void);
void LoadOam (void);
void LoadBlendingRegs (void);
void LoadAffineRegs (void);
extern u16 gBG3VOFS;
extern u16 gBG3HOFS;
extern u16 gBG2HOFS;
extern u16 gBG2VOFS;
extern u16 gBG0VOFS;
extern u16 gBG0HOFS;
extern u16 gBG1VOFS;
extern u16 gBG1HOFS;
extern u16 gBLDCNT;
extern u16 gBLDALPHA;
extern u16 gBLDY;

void ClearPlayerName(void);
void InitTrunkCards(void);
void InitNewGameDeck(void);
void InitDeckCapacity(void);
void InitDuelistLevel(void);
void sub_8020168(void);
void sub_802712C(void);
void sub_802D9F0(void);
void InitMoney(void);
void sub_80561FC(void);
void sub_80554EC(void);
void sub_8055FD0(void);
void sub_801FB44(u8*);
void sub_8048CB8(void);
int GetNumCardsInRow (u8);
u8 sub_8025534 (u8);
u32 sub_80432D0 (u8);

extern u8 g201CB3C; //padding?
extern u8 g201CB40; //^
extern u8 g201CB44;
extern u8 gCurrentTurnOpponent[];
u32 sub_8043A5C (u8);
u32 sub_80438A0 (u8);
u32 sub_80438E8 (u8);     //implicit decl? (just create a u8 return variable)
u32 sub_8043358 (u8);     //implicit decl? (just create a u8 return variable)
u32 GetNumFaceUpCardsInRow (u8);
u32 sub_804398C (u8, u8); //implicit decl? (^)
u32 sub_80439F4 (u8, u8);  //^
int sub_80430D8 (struct DuelCard**); //implicit decl? (^)
u8 sub_803FBCC (u8, u8);
bool32 IsCardLocked (struct DuelCard *zone);
bool32 sub_8043714 (struct DuelCard *zone);
bool32 sub_804374C (struct DuelCard *zone);
bool32 sub_804376C (struct DuelCard *zone);
bool32 sub_8043790 (struct DuelCard *zone);
bool32 sub_80437B4 (struct DuelCard *zone);

u8 sub_801B5BC (u8, u16*);


struct DuelText {
  u16 unk0;
  u16 unk2;
  u16 unk4;
  u16 unk6;
  u8 textId;
};

void sub_8045718 (void);
void ResetDuelTextData(struct DuelText*);
void sub_80219E4(struct DuelText*);
void sub_80240BC(struct DuelText*);
void sub_802405C(struct DuelText*);
void sub_802408C(struct DuelText*);
void sub_8024548 (void);
extern u8 g2021D98;
void sub_802432C(void);
void sub_8024354(void);
extern u8 g3000C6C;

void sub_803EEFC (u8, const u8*, u16);
void sub_800DDA0(u16, u8);
extern u8 g2021BD0[];
void sub_801CF08(void);
void sub_8022080(void);
void sub_8041CCC (u16, u16);
void sub_8041D14 (u16, u16);

void sub_8041C94(u8*, u16, u16, u16, u16);

extern u8* gDuelTextStrings[];
extern u8* gMyTurnStrings[];
extern u8* g8F9E35C[];
extern u8* g8FA0964[];

struct UnkStruct_2022EB0
{
    u16* unk0;
    u8 filler_4[4];
    u16 unk8;
    u8 unkA;
};

struct UnkStruct_2021AB4
{
    u16 unk0;
    u16 unk2;
};

extern struct UnkStruct_2022EB0 gUnk2022EB0;
extern struct UnkStruct_2021AB4 gUnk2021AB4;

struct Unk3000C38 {
  u32 unk0;
  u32 unk4;
  u8 unk8[4];
  u8* unkC;
  u8* unk10;
  u8* unk14;
  u8* unk18;
  u16 unk1C;
  u8 filler1E[6];
  u16 unk24;
  u16 unk26;
  u16 unk28;
  u8 filler2A[8];
  u8 unk32;
  u8 unk33;
  u8 unk34;
};

extern struct Unk3000C38 g3000C38;

void sub_80403F0 (struct DuelCard*);
void sub_8040404 (struct DuelCard*);
u32 sub_802061C(u16);

struct DuelCursor {
  u8 currentX;
  u8 currentY;
  u8 destX;
  u8 destY;
  u8 state;
  u8 unk5;
  u8 filler6;
};

extern struct DuelCursor gDuelCursor;
int sub_8043E70(u8);



bool32 CheckFlag(u32);
void sub_8044E50 (u16*, u16, u16);
void sub_804F2DC (void);
void sub_8044EC8 (u16*, u16, u16, int);
void sub_8044F80 (u16*, u16, u16, int);
void sub_80411EC (struct OamData*);
void sub_804EC4C (void);

struct Unk2021DE0 {
  u16 unk0;
  u8 unk2;
  u8 unk3;
  u8 unk4;
} extern g2021DE0;

void sub_802ACC0(void);
u32 sub_802BBF0(void);

void WinConditionFINAL (void);

struct Unk2021AF0
{
    u64 unk0;
    u64 unk8;
    u16 unk10;
    u8 unk12;
};

extern struct Unk2021AF0 g2021AF0;

enum DuelType {
  DUEL_TYPE_INGAME
};


#endif // GUARD_DUEL_H
