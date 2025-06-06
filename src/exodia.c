#include "global.h"
#include "exodia.h"
#include "duel.h"
#include "constants/card_ids.h"

#define FLAG_EXODIA_RIGHT_LEG (1 << 0)
#define FLAG_EXODIA_LEFT_LEG  (1 << 1)
#define FLAG_EXODIA_RIGHT_ARM (1 << 2)
#define FLAG_EXODIA_LEFT_ARM  (1 << 3)
#define FLAG_EXODIA_HEAD      (1 << 4)
#define FLAG_EXODIA_ALL \
(FLAG_EXODIA_RIGHT_LEG | FLAG_EXODIA_LEFT_LEG | FLAG_EXODIA_RIGHT_ARM | FLAG_EXODIA_LEFT_ARM | FLAG_EXODIA_HEAD)


static unsigned char GetExodiaFlags(void);
static void sub_8020664 (void);

// TODO: there is an instance of this being implicitly declared and called with an argument
void CheckWinConditionExodia (void) {
  if ((GetExodiaFlags() & FLAG_EXODIA_ALL) == FLAG_EXODIA_ALL)
    sub_8020664();
}

static unsigned char GetExodiaFlags (void) {
  unsigned char i, flags = 0;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    flags |= GetExodiaFlag(gTurnZones[4][i]->id);
  return flags;
}

unsigned GetExodiaFlag (unsigned short cardId) {
  unsigned char flag = 0;
  switch (cardId) {
  case RIGHT_LEG_OF_THE_FORBIDDEN_ONE:
      flag = FLAG_EXODIA_RIGHT_LEG;
      break;
  case LEFT_LEG_OF_THE_FORBIDDEN_ONE:
      flag = FLAG_EXODIA_LEFT_LEG;
      break;
  case RIGHT_ARM_OF_THE_FORBIDDEN_ONE:
      flag = FLAG_EXODIA_RIGHT_ARM;
      break;
  case LEFT_ARM_OF_THE_FORBIDDEN_ONE:
      flag = FLAG_EXODIA_LEFT_ARM;
      break;
  case EXODIA_THE_FORBIDDEN_ONE:
      flag = FLAG_EXODIA_HEAD;
      break;
  }
  return flag;
}

static void sub_8020664 (void) {
  unsigned char unused[12];
  unsigned char loser;
  if (WhoseTurn() == DUEL_PLAYER)
    loser = DUEL_OPPONENT;
  else
    loser = DUEL_PLAYER;
  DeclareLoser(loser);
  ResetCardEffectTextData();
  gCardEffectTextData.textId = DUEL_TEXT_ALL_EXODIA_PIECES;
  SetCardEffectTextType(5);
  ActivateCardEffectText();
}
