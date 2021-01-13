#include "global.h"

#define MAX_MONEY 9999999999999
extern u64 gMoney;

void InitMoney (void) {
  gMoney = 500;
}

void SetMoney (u64 amount) {
  gMoney = amount;
}

void AddMoney (u64 amount) {
  if (amount > MAX_MONEY - gMoney)
    gMoney = MAX_MONEY;
  else
    gMoney += amount;
}

void RemoveMoney (u64 amount) {
  if (amount > gMoney)
    gMoney = 0;
  else
    gMoney -= amount;
}

bool32 ExceedsMoneyLimit (u64 amount) {
  if (amount > MAX_MONEY - gMoney)
    return FALSE;
  return TRUE;
}

bool32 sub_8027018 (u64 amount) {
  if (amount > gMoney)
    return FALSE;
  return TRUE;
}
