#ifndef GUARD_DUEL_H
#define GUARD_DUEL_H

enum {
  DUEL_PLAYER,
  DUEL_OPPONENT
};

enum {
  TURN_PLAYER,
  TURN_OPPONENT
};

enum {
  FIELD_ARENA,
  FIELD_FOREST,
  FIELD_WASTELAND,
  FIELD_MOUNTAIN,
  FIELD_SOGEN,
  FIELD_UMI,
  FIELD_YAMI,
  NUM_FIELDS
};

#define MAX_ZONES_IN_ROW 5


extern void (*const gMonEffects[])(void);
extern void (*const gSpellEffects[])(void);
extern void (*g8DFF55C[])(void);
extern void (*g8DFFA48[])(void);
extern void (*g8DFF7F0[])(void);
extern void (*g8E00330[])(void);
extern void (*g8E00150[])(void);

extern unsigned char gWhoseTurn;

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
    struct DuelCard hands[2][MAX_ZONES_IN_ROW];   //0xA0  |2023F60
                                                  //0xC8  |2023F88
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


//*********************
void sub_803FEA4(int unused);
//*********************

void sub_8040508(u8);

//this seems to disable traps too. see how it's used in spell_effects.c
extern u8 gHideEffectText; // TODO: rename to gHideDuelText? gDisableDuelTextAndTraps

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



extern unsigned short gDuelLifePoints[];

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


void sub_801CEBC(void);

void ResetCardEffectTextData(void);
void SetCardEffectTextType(u8);
void sub_801F6B0(void);




void CheckGraveyardAndLoserFlags(void);


//TODO: change name to duel command for all these functions?
void HandleDuelAction(void);
void CheckLoserFlags(void);
void SetDuelActionAttack(s32, s32);
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


void InitSorlTurns(u8);



void ResetNumTributes(void);
s32 WhoseTurn(void); //8058744

s32 sub_8056258(u8, u8);

bool32 sub_80586DC(void);


u16 GetGraveCardAndClearGrave2(u8);

struct Unk2023E80 {
  unsigned short playerCardId;
  unsigned short playerCardAttack;
  unsigned short playerCardDefense;
  unsigned short playerLifePoints;
  unsigned char playerCardAttribute;
  unsigned char playerMonsterRow;
  unsigned char unkA; //playerMonsterCol/Zone
  unsigned short opponentCardId;
  unsigned short opponentCardAttack;
  unsigned short opponentCardDefense;
  unsigned short opponentLifePoints;
  unsigned char opponentCardAttribute;
  unsigned char opponentMonsterRow;
  unsigned char unk16;
  unsigned char filler17;
//--------------
  unsigned char action;
  unsigned char flags;
  unsigned char unk1A;
  unsigned char unk1B;
};
extern struct Unk2023E80 g2023E80;

struct Unk2023EA0 {
  struct {
    unsigned short cardId;
    unsigned short initialLifePoints;
    unsigned short lifePointsAfterDamage;
    unsigned short cardAttack;
    unsigned short cardDefense;
    unsigned char cardAttribute;
  } unk0[2];
  u8 unk18;
};

extern struct Unk2023EA0 gUnk2023EA0;


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
    u64 unk0; //moneyReward?
    u32 capacityYield; //TODO: capacityReward
    u16 unkC;
    u16 unkE;
    u16 music;
    u16 opponent;
    u16 unk14[10]; //reward cards
    u16 ante;
    u8 unk2A; //max num reward cards?
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

struct {
  unsigned cost;
  s8 unk4; // current position
  u8 sortingMethod;
  u8 unk6; //show: nothing, atk/def, attribute(summon), cost,
  u8 sortingCursorState;
  u8 count; //TODO: cardCount?
  u8 filler9;
  unsigned short cards[40]; //TODO: sortedCards?
} extern gPlayerDeck; //TODO: rename to gDeckMenuData?



extern u16 gRitualComponents[][4]; //ritual
//[][0] == sacrifice 1
//[][1] == target monster
//[][2] == sacrifice 2
//[][3] == sacrifice 3

void sub_80404F0(u8);
void LockMonsterCardsInRow(u8);
void sub_803F8E0(int);

struct DuelDeck
{
    u16 cards[41];
    u8 cardsDrawn;
};

extern struct DuelDeck gDuelDecks[2];

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

void LoadObjVRAM(void);
void LoadBgVRAM(void);
void LoadCharblock0(void);
void LoadCharblock1(void);
void LoadCharblock2(void);
void LoadCharblock3(void);
void LoadCharblock4(void);
void LoadCharblock5(void);
void LoadPalettes(void);
void LoadVRAM(void);
void SetVBlankCallback(void (*)(void));
void WaitForVBlank (void);
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


void sub_80561FC(void);
void sub_80554EC(void);
void sub_8055FD0(void);
void sub_801FB44(u8*);

int GetNumCardsInRow (u8);
u32 GetTotalAtkAndDefInRow (u8);


extern u8 gCurrentTurnOpponent[];
u32 sub_8043A5C (u8);
u32 sub_80438A0 (u8);
u32 GetNumCardsDefendingInRow (u8);     //implicit decl? (just create a u8 return variable)
u32 GetTotalFaceUpAtkAndDefInRow (u8);     //implicit decl? (just create a u8 return variable)
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


void sub_8045718 (void);

void sub_80240BC(struct DuelText*);
void sub_802405C(struct DuelText*);
void sub_802408C(struct DuelText*);
void sub_8024548 (void);
extern u8 g2021D98;
void sub_802432C(void);
void sub_8024354(void);
extern u8 g3000C6C;

void sub_803EEFC (u8, const u16*, u16);
extern u8 g2021BD0[];
void sub_801CF08(void);
void sub_8041CCC (u16, u16);
void sub_8041D14 (u16, u16);

void sub_8041C94(u8*, u16, u16, u16, u16);

extern u8* gDuelTextStrings[];
extern u8* gMyTurnStrings[];
extern u8* g8F9E35C[];
extern u8* g8FA0964[];

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
u32 GetExodiaFlag(u16);

struct DuelCursor {
  u8 currentX; //sourceRow
  u8 currentY; //sourceColumn
  u8 destX;   //targetRow?
  u8 destY;   //targetColumn?
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

struct Unk2021DE0 {
  u16 unk0;
  u8 unk2;
  u8 unk3;
  u8 unk4;
} extern g2021DE0;

void sub_802ACC0(void);

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
