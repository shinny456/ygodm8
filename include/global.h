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
#include "text.h"
#include "duel_main.h"
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


#include "FINAL_effect.h"
#include "player.h"
#include "duel.h"
#include "constants/card_ids.h"

void sub_8035020 (unsigned);
void sub_8034FEC (unsigned);
void AddCardToTrunk(unsigned, unsigned);
extern const u8 *gUnk_8E00E30[];
void sub_8008D88(unsigned);

#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

#define TRUE 1
#define FALSE 0

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))

#define TRUNK_CARD_LIMIT 250
#define TRUNK_SIZE 801
#define DECK_SIZE 40

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
overworld sprite tiles RAM?: 0x2010400
bg palette buffer: 0x02000000
object palette buffer: 0x02000200


each row is composed of 4 tiles == 0x80 bytes
player front: (each row is 0x200 bytes apart)
152E4C -first row
15304C -second row
15324C -third row
15344C -fourth row

*/

#endif // GUARD_GLOBAL_H
