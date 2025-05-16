#include "global.h"

#define MAX_MONEY 9999999999999
extern u64 gMoney;

//TODO: NewGame_InitMoney or NewGameInitMoney
void InitMoney (void) {
  gMoney = 500;
}

void SetMoney (unsigned long long amount) {
  gMoney = amount;
}

void AddMoney (unsigned long long amount) {
  if (amount > MAX_MONEY - gMoney)
    gMoney = MAX_MONEY;
  else
    gMoney += amount;
}

void RemoveMoney (unsigned long long amount) {
  if (amount > gMoney)
    gMoney = 0;
  else
    gMoney -= amount;
}

unsigned DoesNotExceedMoneyLimit (unsigned long long amount) {
  if (amount > MAX_MONEY - gMoney)
    return 0;
  return 1;
}

unsigned CanAfford (unsigned long long amount) {
  if (amount > gMoney)
    return 0;
  return 1;
}
