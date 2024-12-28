#include "global.h"

void sub_800DD4C (void) {
  unsigned char i;
  for (i = 0; i < 64; i++) {
    if (!g2021B50[i])
      g2021B90[i] = g2021B10[i];
    else
      g2021B90[i] = g2021B50[i];
  }
}

// unused?
static void sub_800DD88 (unsigned char* src, unsigned char* dest) {
  unsigned i;
  for (i = 0; i < 64; src++, dest++, i++)
    if (*src)
      *dest = *src;
}

//TODO: replace 4,5 and 18,19 with MAX_U16_DIGITS and MAX_U64_DIGITS or something similar.
//Get digits from number
//first bit of arg 1 determines whether to align left?
//second bit of arg 1 determines whether to display leading 0s
void sub_800DDA0 (unsigned short arg0, unsigned char arg1) {
  unsigned char sb = 0;
  unsigned char r4 = 0;
  unsigned short r7 = 10000;
  unsigned char r2;
  unsigned short r1;
  for (r2 = 0; r2 < 5; r2++)
    g2021BD0[r2] = 10;
  if (arg0 != 0xFFFF) {
    if (arg1 & 1)
      g2021BD0[0] = 0;
    for (; sb < 5; sb++, arg0 -= r1 * r7, r7 /= 10) {
      r1 = arg0 / r7;
      if (r1)
        g2021BD0[r4] = r1;
      else {
        if (r4)
          if (g2021BD0[r4 - 1] != 10)
            g2021BD0[r4] = r1;
          else if (r4 == 4)
            g2021BD0[4] = r1;
      }
      if (!r1) {
        if (!r4) {
          if (!(arg1 & 1))
            r4 = 1;
        }
        else if (g2021BD0[r4 - 1] != 10 || !(arg1 & 1))
          r4++;
      }
      else
        r4++;
    }
  }
  if (!(arg1 & 2))
    return;
  for (r2 = 0; r2 < 5; r2++)
    if (g2021BD0[r2] == 10)
      g2021BD0[r2] = 0;
}

//same as above but for unsigned long long?
void sub_800DEAC (unsigned long long arg0, unsigned char arg1) {
  unsigned char sb = 0;
  unsigned char r4 = 0;
  unsigned long long r56;
  unsigned char r2;
  unsigned long long r1;
  for (r2 = 0; r2 < 19; r2++)
    g2021BE0[r2] = 10;
  if (arg1 & 1)
    g2021BE0[0] = 0;
  r56 = 1000000000000000000;
  for (; sb < 19; sb++, arg0 -= r1 * r56, r56 /= 10) {
    r1 = arg0 / r56;
    if (r1)
      g2021BE0[r4] = r1;
    else {
      if (r4)
        if (g2021BE0[r4 - 1] != 10)
          g2021BE0[r4] = r1;
        else if (r4 == 18)
          g2021BE0[18] = r1;
    }
    if (!r1) {
      if (!r4) {
        if (!(arg1 & 1))
          r4 = 1;
      }
      else if (g2021BE0[r4 - 1] != 10 || !(arg1 & 1))
        r4++;
    }
    else
      r4++;
  }
  if (!(arg1 & 2))
    return;
  for (r2 = 0; r2 < 19; r2++)
    if (g2021BE0[r2] == 10)
      g2021BE0[r2] = 0;
}
