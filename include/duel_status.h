#ifndef GUARD_DUEL_STATUS_H
#define GUARD_DUEL_STATUS_H

enum DuelistStatus {
  DUELIST_STATUS_CANNOT_ATTACK, // first turn only
  DUELIST_STATUS_CAN_ATTACK, // duel ongoing
  DUELIST_STATUS_DEFEAT, // duel has ended
};

void TryDisplaySorlTurnsRemainingText (void);
void InitDuelistStatus (void);
void EndFirstTurnAttackBan (void);
void DeclareLoser (unsigned char);
unsigned char GetDuelistStatus (unsigned char);
unsigned char IsDuelOver (void);

#endif // GUARD_DUEL_STATUS_H
