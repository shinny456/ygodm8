#ifndef GUARD_DUEL_STATUS_H
#define GUARD_DUEL_STATUS_H

enum DuelistStatus {
  CANNOT_ATTACK, // first turn only
  CAN_ATTACK, // game ongoing
  DEFEAT, // game has ended
};

void sub_802549C (void);
void InitDuelistStatus (void);
void EndFirstTurnAttackBan (void);
void DeclareLoser (unsigned char);
unsigned char GetDuelistStatus (unsigned char);
unsigned char IsDuelOver (void);

#endif // GUARD_DUEL_STATUS_H
