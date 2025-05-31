#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/types.h"
#include "gba/io_reg.h"
#include "gba/macro.h"
#include "gba/defines.h"
#include "gba/syscall.h"


#include "cutscene.h"
#include "world_map.h"
#include "start_menu.h"
#include "naming_screen.h"
#include "card.h"
#include "digit.h"
#include "compression.h"
#include "deck_menu.h"
#include "text.h"
#include "duel_main.h"

#include "duel.h"

#include "game_menu.h"
#include "duel_status.h"
#include "ante.h"
#include "password_terminal.h"
#include "god_card.h"
#include "return_monster.h"
#include "print_card.h"
#include "copyright_screens.h"
#include "money.h"
#include "permanent_effect.h"
#include "turn_effect.h"
#include "card_shop.h"
#include "monster_effect.h"
#include "life_points.h"
#include "spell_effect.h"
#include "overworld.h"
#include "mini_card.h"

#include "FINAL_effect.h"
#include "player.h"

#include "constants/card_ids.h"
#include "constants/music_ids.h"
#include "constants/text_ids.h"

void FadeOutMusic (unsigned);
void sub_8034FEC (unsigned);
void AddCardQtyToTrunk (unsigned, unsigned);
void RemoveCardQtyFromTrunk (unsigned, unsigned);
extern const u8 *gUnk_8E00E30[];
void RemoveCardFromTrunkOrDeck(unsigned);
extern u8 g2021B10[];
extern u8 g2021B50[];
extern u8 g2021B90[];
extern u8 gDecimalDigitsU64[];
void HuffUnComp (void*, void*);

enum {
  TRUNK_CURSOR_DETAILS,
  TRUNK_CURSOR_ADD_CARD,
  TRUNK_CURSOR_REMOVE_CARD
};

enum {
  DUEL_TRUNK_CURSOR_DETAILS,
  DUEL_TRUNK_CURSOR_ANTE,
  DUEL_TRUNK_CURSOR_EXIT
};

enum {
  DUEL_TRUNK_ANTE_NO,
  DUEL_TRUNK_ANTE_YES
};

// the same numbers are used for trunk, deck, and card shop sorting
enum {
  CARD_SORT_NUMBER,
  CARD_SORT_NAME,
  CARD_SORT_ATTACK,
  CARD_SORT_DEFENSE,
  CARD_SORT_TYPE,
  CARD_SORT_SUMMON, //TODO: attribute?
  CARD_SORT_QTY,
  CARD_SORT_COST,
  CARD_SORT_STARS,
  CARD_SORT_EFFECT,
  CARD_SORT_EXIT
};

#define TRUNK_CARD_LIMIT 250
#define DECK_SIZE 40
//^TODO: change to MAX_DECK_SIZE, DECK_MAX_SIZE, or _COUNT? (or MIN? in vanilla it has to be exactly 40)

struct TrunkMenu
{
    s16 currentPos; //current card position in trunk?
    u8 sortMode;
    u8 displayMode;    //show: nothing, atk/def, attribute(summon), cost,
    u8 cursorState;
    u8 filler5[7];
    u16 cards[NUM_TRUE_CARDS]; //sortedCards
};

extern struct TrunkMenu gTrunkMenu;

struct CardSortContext
{
    u16* cards;
    u8 filler_4[4];
    u16 cardCount;
    u8 sortMode;
};

// used to determine behaviour reaching end of list?
// trunk wraps around, deck just stops further scrolling
struct UnkStruct_2021AB4
{
    u16 currentPos;
    u16 lastValidIndex;
};

extern struct CardSortContext gCardSortContext;
extern struct UnkStruct_2021AB4 gUnk2021AB4;
extern unsigned char gTrunkCardQty[];
extern unsigned char gTotalCardQty[];
extern unsigned char gShopTempCardQty[]; // local shop card qty list while shopping
extern unsigned char gPlayerTempCardQty[]; // local player card qty list while shopping
extern unsigned short g80D0444[][801];
extern const unsigned short gCardAtks[];
extern const unsigned short gCardDefs[];
int GetNumRequiredTributes (unsigned short);

void ClearCbb0Buffer (void);
void ClearCbb1Buffer (void);
void ClearCbb3Buffer (void);
void sub_800B288 (u8);


#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

#define TRUE 1
#define FALSE 0

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))
#define NUM_BUTTONS 10

#define NEW_A_BUTTON A_BUTTON     
#define NEW_B_BUTTON B_BUTTON     
#define NEW_SELECT_BUTTON SELECT_BUTTON
#define NEW_START_BUTTON START_BUTTON 
#define NEW_DPAD_RIGHT DPAD_RIGHT   
#define NEW_DPAD_LEFT DPAD_LEFT    
#define NEW_DPAD_UP DPAD_UP      
#define NEW_DPAD_DOWN DPAD_DOWN    
#define NEW_R_BUTTON R_BUTTON     
#define NEW_L_BUTTON L_BUTTON  

#define REPEAT_A_BUTTON A_BUTTON     
#define REPEAT_B_BUTTON B_BUTTON     
#define REPEAT_SELECT_BUTTON SELECT_BUTTON
#define REPEAT_START_BUTTON START_BUTTON 
#define REPEAT_DPAD_RIGHT DPAD_RIGHT   
#define REPEAT_DPAD_LEFT DPAD_LEFT    
#define REPEAT_DPAD_UP DPAD_UP      
#define REPEAT_DPAD_DOWN DPAD_DOWN    
#define REPEAT_R_BUTTON R_BUTTON     
#define REPEAT_L_BUTTON L_BUTTON     



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


overworld sprite palettes: 0x82AD06C
overworld sprite palette banks: 0x82AD20C u8 gPalBanks[];


each row is composed of 4 tiles == 0x80 bytes
player front: (each row is 0x200 bytes apart)
152E4C -first row
15304C -second row
15324C -third row
15344C -fourth row
*/

#endif // GUARD_GLOBAL_H
