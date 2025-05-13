#ifndef GUARD_MONEY_H
#define GUARD_MONEY_H

void InitMoney (void);
void SetMoney (unsigned long long);
void AddMoney (unsigned long long);
void RemoveMoney (unsigned long long);
unsigned DoesNotExceedMoneyLimit (unsigned long long);
unsigned CanAfford (unsigned long long);

#endif // GUARD_MONEY_H
