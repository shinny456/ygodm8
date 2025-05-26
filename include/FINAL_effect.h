#ifndef GUARD_FINAL_EFFECT_H
#define GUARD_FINAL_EFFECT_H

#define FLAG_F (1 << 0)
#define FLAG_I (1 << 1)
#define FLAG_N (1 << 2)
#define FLAG_A (1 << 3)
#define FLAG_L (1 << 4)
#define FLAG_FINAL_ALL (FLAG_F | FLAG_I | FLAG_N | FLAG_A | FLAG_L)

void CheckWinConditionFINAL (void);
int GetFINAL_Flags (void);
int GetFINAL_Flag (unsigned short cardId);

#endif // GUARD_FINAL_EFFECT_H
