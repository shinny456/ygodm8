#ifndef GUARD_DUEL_H
#define GUARD_DUEL_H

//TODO: GetTypeGroup -> GetCardTypeGroup

enum {
  DUEL_PLAYER,
  DUEL_OPPONENT
};

enum {
  ACTIVE_DUELIST,
  INACTIVE_DUELIST
};

//TODO: FIELD -> DUEL_FIELD
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

//TODO: MAX_NUM_ZONES_IN_ROW?
#define MAX_ZONES_IN_ROW 5

extern void (*const gMonEffects[])(void);
extern void (*const gSpellEffects[])(void);


extern unsigned char gWhoseTurn; // rename to gActiveTurn/gCurrentTurn? (or ActiveDuelist?)

struct DuelCard
{
    u16 id; //TODO: cardId because it can be accessed indirectly via a pointer, so it helps to clarify
    s8 permStage;
    s8 tempStage;
    u8 unk4; // something to do with special summoning? CoH/BC/Ra=2, otherwise mostly 0
    u8 isLocked : 1;
    u8 isDefending : 1;
    u8 unkTwo : 1;
    u8 unkThree : 1;
    u8 isFaceUp : 1;
    u8 willChangeSides : 1;  //give back to opponent at the end of the turn (used by brain control)
    //u8 filler6[2];
};

struct DuelistBattleState
{
    u16 graveyard;
    u8 sorlTurns : 2;
    u8 defenseBlocked : 1; // Stop Defence active this turn
    u8 summoningBlocked : 1; // Jam Breeding Machine active this turn?
};

struct Duel
{
    struct DuelCard board[4][MAX_ZONES_IN_ROW];      //0x00  |2023EC0
    struct DuelCard hands[2][MAX_ZONES_IN_ROW];      //0xA0  |2023F60
                                                     //0xC8  |2023F88
    u8 field;                                        //0xF0  |2023FB0
    u8 filler_F1[3];                                 //0xF1  |2023FB1
    struct DuelistBattleState duelistbattleState[2]; //0xF4  |2023FB4
                                                     //0xF8  |2023FB8
};

extern struct Duel gDuel;

// gTurnDuelistBattleState switches POV every turn:
// 0 = Active Duelist
// 1 = Inactive Duelist
extern struct DuelistBattleState* gTurnDuelistBattleState[2];

// gTurnZones switches POV every turn:
// [2023FD0] 0 = Inactive Duelist Backrow
// [2023FE4] 1 = Inactive Duelist Monster Row
// [2023FF8] 2 = Active   Duelist Monster Row
// [202400C] 3 = Active   Duelist Backrow
// [2024020] 4 = Active   Duelist Hand
extern struct DuelCard* gTurnZones[5][MAX_ZONES_IN_ROW];

// gFixedZones is a fixed-POV of gTurnZones from the player's side:
// 0 = Opponent Backrow
// 1 = Opponent Monster Row
// 2 = Player   Monster Row
// 3 = Player   Backrow
// 4 = Player   Hand
extern struct DuelCard* gFixedZones[5][MAX_ZONES_IN_ROW];

// gTurnHands switches POV every turn:
// 0 = Active Duelist
// 1 = Inactive Duelist
extern struct DuelCard* gTurnHands[2][MAX_ZONES_IN_ROW];

// when gDuelType is
// 0: Ingame Duel: Life points carry over from previous duels; otherwise: they get set to opponent specific value.
// 6: Link Duel
extern u8 gDuelType;

enum DuelType {
  DUEL_TYPE_INGAME = 0,
  DUEL_TYPE_LINK = 6
};


/*
// TODO: use these to specify rows for "turn" and "fixed" row args
// e.g. UnlockCardsInRow(2) becomes UnlockCardsInRow(ACTIVE_DUELIST_MONSTER)

enum TurnRows
{
    INACTIVE_DUELIST_BACKROW,
    INACTIVE_DUELIST_MONSTER,
    ACTIVE_DUELIST_MONSTER,
    ACTIVE_DUELIST_BACKROW,
    ACTIVE_DUELIST_HAND
};

enum FixedRows
{
    OPPONENT_BACKROW,
    OPPONENT_MONSTER,
    PLAYER_MONSTER,
    PLAYER_BACKROW,
    PLAYER_HAND
};
*/

enum SpellType
{
    SPELL_TYPE_NORMAL,
    SPELL_TYPE_EQUIP,
    SPELL_TYPE_INVALID,
};

//*********************
void InitDuelZonePtrs(int unused);
//*********************

void UnblockSummoning(u8);

//this seems to disable traps too. see how it's used in spell_effects.c
extern u8 gHideEffectText; // TODO: rename to gHideDuelText? gDisableDuelTextAndTraps

struct MonEffect
{
    u16 id;
    u8 row;
    u8 zone;
};

// origin/target are not consistent between direct spells and targeted spells
// For direct: origin = row1, col1
// For targeted: target = row1, col1; origin = row2, col2
struct SpellEffect
{
    u16 id;
    u8 row1; // origin (spell) row for direct spell effects; target (monster) row for targeted spell effects
    u8 col1; // origin (spell) col for direct spell effects; target (monster) col for targeted spell effects
    u8 row2; // origin (spell) row for targeted spell effects
    u8 col2; // origin (spell) col for targeted spell effects
};

struct TrapEffect
{
    u16 originCardId; // id of card that triggered the trap, NOT the trap itself
    u8 originRow; // row of card that triggered the trap, NOT the trap itself
    u8 originCol; // col of card that triggered the trap, NOT the trap itself
    u8 trapZoneCol; // zone with trap that's being checked or has been triggered
    u8 trapCardId; // id of triggered trap card
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
    u8 unkA; // card effect text type?
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


void ActivateCardEffectText(void);

void ResetCardEffectTextData(void);
void SetCardEffectTextType(u8);
void ShowCardDetailView(void);




void CheckGraveyardAndLoserFlags(void);


//TODO: change name to duel command for all these functions?
void HandleAtkAndLifePointsAction(void);
void CheckLoserFlags(void);
void SetAttackAction(s32, s32);
void SetPlayerLifePointsToAdd(u32);
void SetOpponentLifePointsToAdd(u32);
void SetPlayerLifePointsToSubtract(u32); //sub player life points
void SetOpponentLifePointsToSubtract(u32); //sub opponent life points




void ClearZone(struct DuelCard*);
void FlipCardFaceUp(struct DuelCard*); //flip card face up
u8 IsCardFaceUp(struct DuelCard*);
void ResetPermStage(struct DuelCard*); //reset num perm powerups
void IncrementPermStage(struct DuelCard*);

void DecrementPermStage(struct DuelCard*); //dec num powerups?
void SetPermStage(struct DuelCard*, int);

//change to bool32
u32 ConditionLegendarySword(u16);
u32 ConditionSwordOfDarkDestruction(u16);
u32 ConditionDarkEnergy(u16);
u32 ConditionAxeOfDespair(u16);
u32 ConditionLaserCannonArmor(u16);
u32 ConditionInsectArmorWithLaserCannon(u16);
u32 ConditionElfsLight(u16);
u32 ConditionBeastFangs(u16);
u32 ConditionSteelShell(u16);
u32 ConditionVileGerms(u16);
u32 ConditionBlackPendant(u16);
u32 ConditionSilverBowAndArrow(u16);
u32 ConditionHornOfLight(u16);
u32 ConditionHornOfTheUnicorn(u16);
u32 ConditionDragonTreasure(u16);
u32 ConditionElectroWhip(u16);
u32 ConditionCyberShield(u16);
u32 ConditionMysticalMoon(u16);
u32 ConditionMalevolentNuzzler(u16);
u32 ConditionVioletCrystal(u16);
u32 ConditionBookOfSecretArts(u16);
u32 ConditionInvigoration(u16);
u32 ConditionMachineConversionFactory(u16);
u32 ConditionRaiseBodyHeat(u16);
u32 ConditionFollowWind(u16);
u32 ConditionPowerOfKaishin(u16);
u32 ConditionMagicalLabyrinth(u16);
u32 ConditionSalamandra(u16);
u32 ConditionKunaiWithChain(u16);
u32 ConditionBrightCastle(u16);
u32 ConditionMegamorph(u16);
u32 ConditionWingedTrumpeter(u16);
u32 Condition7Completed(u16);
u32 ConditionCyclonLaser(u16);


void PlayMusic(int);
s32 GetTypeGroup(u16);
s32 GetSpellType(u16);
void FlipCardFaceDown(struct DuelCard*);
void IncreasePermStageByAmount(struct DuelCard*, u8);

void ResetTempStage(struct DuelCard*);

s32 PermStage(struct DuelCard*);
int GetFinalStage(struct DuelCard*); //getnumpowerups?

void LockCard(struct DuelCard*); //lock card
void UnlockCard(struct DuelCard*); //clear isLocked

void CopyCard(struct DuelCard* dst, struct DuelCard* src);

void SetDuelFieldGfx(u8);

int HighestAtkMonInRow(struct DuelCard** row); //get highest atk mon
int HighestAtkMonInRowExceptGodCards(struct DuelCard** row); //get highest atk mon excluding god cards?

bool32 RowHasCardMatch(struct DuelCard** row, u16 id);
int HighestAtkMonOfTypeInRow(struct DuelCard**, u8);

s32 NumCardMatchesInRow(struct DuelCard** row, u16 id); //num of card in a particular row

int FirstNonEmptyZoneInRow(struct DuelCard**);

s32 NumEmptyZonesInRow(struct DuelCard** row);
s32 NumEmptyZonesAndGodCardsInRow(struct DuelCard** row);

int HighestAtkUnlockedMonInRow(struct DuelCard**);
s32 sub_8043548(struct DuelCard**);
s32 sub_8043584(struct DuelCard**, u8);

s8 FirstEmptyZoneInRow(struct DuelCard**);  //get empty zone?

s32 GetFirstCardMatchZoneId(struct DuelCard**, u16 card); //get zone card is located at



s32 NumMatchingTypeInRow(u8, u8);

void TryDrawingCard(u32);

void ClearZoneAndSendMonToGraveyard(struct DuelCard* zone, u8 graveyard);

u16 GetGraveCardAndClearGrave(u8);


void InitSorlTurns(u8);

s32 WhoseTurn(void); //8058744

s32 RandRangeU8(u8, u8);

bool32 IsTrapTriggered(void);


u16 GetGraveCardAndClearGrave2(u8);



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
    u16 id;                     //0x0
    u8 field;                   //0x2
    u16* deck;                  //0x4
    struct CardDrop* goodDrops; //0x8
    struct CardDrop* shopCards; //0xC
    struct CardDrop* badDrops;  //0x10
    u16 playerLp;               //0x14
    u16 lifePoints;             //0x16
    u32 capacityYield;          //0x18
    u16 minDomino;              //0x1C
    u16 maxDomino;              //0x1E
    u8 unk20;                   //0x20
    u8 filler21[3];             //
    u16 duelMusic;              //0x24
    u16 winMusic;               //0x26
    u16 lossMusic;              //0x28
    u16 unk2A;                  //0x2A
};

// duel metadata, external?
struct DuelData
{
    u64 moneyReward;
    u32 capacityYield; //TODO: capacityReward
    u16 duelMusic;
    u16 winMusic;
    u16 lossMusic;
    u16 opponent;
    u16 unk14[10]; //reward cards
    u16 ante;
    u8 unk2A; //max num reward cards?
    u8 outcomeFlag; // 1=player win, 2=opponent win
    /*2C-2F bitfields?*/
    u8 unk2c : 1; // duelist level should increase?
    u8 unk2d : 1; // duel over flag?
    u8 filler2D[3];
    struct Duelist duelist; //duelistData?
};

extern u32 gLifePointsOutsideDuel;
extern struct DuelData gDuelData;


extern u16 gAnte;

extern struct {
  unsigned cost;
  s8 currentPos; // what index is selected/hovered by cursor
  u8 sortMode;
  u8 displayMode; //show: nothing, atk/def, attribute(summon), cost,
  u8 sortCursorState;
  u8 cardCount;
  u8 filler9;
  unsigned short cards[40]; //TODO: sortedCards?
} gDeckMenu;



extern u16 gRitualComponents[][4]; //ritual
//[][0] == sacrifice 1
//[][1] == target monster
//[][2] == sacrifice 2
//[][3] == sacrifice 3

void BlockTurnSummoning(u8);
void LockMonsterCardsInRow(u8);
void SetAttackActionDirectAttack(int);

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

extern struct BgVram gBgVram;
extern unsigned short gPaletteBuffer[];

extern u16 g2021BF8;

bool32 ZoneHasUnlockedMonsterCard(struct DuelCard*);

void ClearZoneAndSendMonToGraveyard2 (struct DuelCard *zone, u8 player);


void SetVBlankCallback(void (*)(void));
void WaitForVBlank (void);

void ClearPlayerName(void);
void InitTrunkCards(void);
void InitNewGameDeck(void);
void InitDeckCapacity(void);
void InitDuelistLevel(void);
void sub_8020168(void);
void sub_802712C(void);


void ResetLfsrStateBit(void);
void InitFlags(void);
void sub_8055FD0(void);
void sub_801FB44(u8*);

int GetNumCardsInRow (u8);
u32 GetTotalAtkAndDefInRow (u8);



u32 GetNumCardsUnlockedInRow (u8);
u32 sub_80438A0 (u8);
u32 GetNumCardsDefendingInRow (u8);
u32 GetTotalFaceUpAtkAndDefInRow (u8);
u32 GetNumFaceUpCardsInRow (u8);
u32 NumFaceUpMatchingTypeInRow (u8, u8);
u32 NumFaceUpMatchingAttributeInRow (u8, u8);
int HighestAtkFaceUpMonInRow (struct DuelCard**);
u8 sub_803FBCC (u8, u8);
bool32 IsCardLocked (struct DuelCard *zone);
bool32 sub_8043714 (struct DuelCard *zone);
bool32 ZoneHasTrapCard (struct DuelCard *zone);
bool32 sub_804376C (struct DuelCard *zone);
bool32 sub_8043790 (struct DuelCard *zone);
bool32 ZoneHasRitualCard (struct DuelCard *zone);



void sub_80240BC(struct DuelText*);
void sub_802405C(struct DuelText*);
void sub_802408C(struct DuelText*);
void sub_8024548 (void);
extern u8 g2021D98;
void sub_802432C(void);
void sub_8024354(void);
extern u8 g3000C6C;

void sub_803EEFC (u8, const u16*, u16);
extern u8 gDigitBufferU16[];
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

void IncrementTempStage (struct DuelCard*);
void DecrementTempStage (struct DuelCard*);
u32 GetExodiaFlag(u16);

//TODO: DuelBoardCursor?
struct DuelCursor {
  u8 currentX; //sourceRow  (boardXCoord?)
  u8 currentY; //sourceColumn
  u8 destX;    //targetRow?
  u8 destY;    //targetColumn?
  u8 state;    // 0 = default, 1 = ?, 2 = selecting equip target, 4 = ?
  u8 unk5; //seems to be unused?
  u8 filler6;
};

extern struct DuelCursor gDuelCursor;
int NumCardsInDeck(u8);



bool32 CheckFlag(u32);
void sub_8044E50 (u16*, u16, u16);
void sub_804F2DC (void);
void sub_8044EC8 (u16*, u16, u16, int);
void sub_8044F80 (u16*, u16, u16, int);
void sub_80411EC (struct OamData*);

// card with active effect? or cursor?
extern struct Unk2021DE0 {
  u16 cardId;
  u8 turnRow; // uses 6/7 as graveyard indexes
  u8 col;
  u8 turn;
} gActiveEffect;

void sub_802ACC0(void);

struct ShopSelectedCard
{
    u64 buyPrice;
    u64 sellPrice;
    u16 cardId;
    u8 shopQty;
};

extern struct ShopSelectedCard gShopSelectedCard;


#endif // GUARD_DUEL_H
