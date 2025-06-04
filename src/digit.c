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

void ConvertU16ToDigitArray (unsigned short val, unsigned char flags) {
  unsigned char digitIndex = 0;
  unsigned char outputIndex = 0;
  unsigned short powerOf10 = 10000;
  unsigned char i;
  unsigned short digit;

  // clear buffer
  for (i = 0; i < MAX_U16_DIGITS; i++)
    gDigitArrayU16[i] = DIGIT_UNUSED;

  if (val != 0xFFFF) {
    if (flags & DIGIT_FLAG_ALIGN_LEFT)
      gDigitArrayU16[0] = 0;
    for (; digitIndex < MAX_U16_DIGITS; digitIndex++, val -= digit * powerOf10, powerOf10 /= 10) {
      digit = val / powerOf10;
      if (digit)
        gDigitArrayU16[outputIndex] = digit;
      else if (outputIndex) {
        if (gDigitArrayU16[outputIndex - 1] != DIGIT_UNUSED)
          gDigitArrayU16[outputIndex] = digit;
        else if (outputIndex == MAX_U16_DIGITS - 1)
          gDigitArrayU16[MAX_U16_DIGITS - 1] = digit;
      }
      if (!digit) {
        if (!outputIndex) {
          if (!(flags & DIGIT_FLAG_ALIGN_LEFT))
            outputIndex = 1;
        }
        else if (gDigitArrayU16[outputIndex - 1] != DIGIT_UNUSED || !(flags & 1))
          outputIndex++;
      }
      else
        outputIndex++;
    }
  }

  if (flags & DIGIT_FLAG_DISPLAY_LEADING_ZEROES) {
    for (i = 0; i < MAX_U16_DIGITS; i++)
      if (gDigitArrayU16[i] == DIGIT_UNUSED)
        gDigitArrayU16[i] = 0;
  }
}

void ConvertU64ToDigitArray (unsigned long long val, unsigned char flags) {
  unsigned char digitIndex = 0;
  unsigned char outputIndex = 0;
  unsigned long long powerOf10;
  unsigned char i;
  unsigned long long digit;

  // clear buffer
  for (i = 0; i < MAX_U64_DIGITS; i++)
    gDigitArrayU64[i] = DIGIT_UNUSED;

  if (flags & DIGIT_FLAG_ALIGN_LEFT)
    gDigitArrayU64[0] = 0;

  powerOf10 = 1000000000000000000;
  for (; digitIndex < MAX_U64_DIGITS; digitIndex++, val -= digit * powerOf10, powerOf10 /= 10) {
    digit = val / powerOf10;
    if (digit)
      gDigitArrayU64[outputIndex] = digit;
    else if (outputIndex) {
      if (gDigitArrayU64[outputIndex - 1] != DIGIT_UNUSED)
        gDigitArrayU64[outputIndex] = digit;
      else if (outputIndex == MAX_U64_DIGITS - 1)
        gDigitArrayU64[MAX_U64_DIGITS - 1] = digit;
    }
    if (!digit) {
      if (!outputIndex) {
        if (!(flags & DIGIT_FLAG_ALIGN_LEFT))
          outputIndex = 1;
      }
      else if (gDigitArrayU64[outputIndex - 1] != DIGIT_UNUSED || !(flags & 1))
        outputIndex++;
    }
    else
      outputIndex++;
  }
  
  if (flags & DIGIT_FLAG_DISPLAY_LEADING_ZEROES) {
    for (i = 0; i < MAX_U64_DIGITS; i++)
      if (gDigitArrayU64[i] == DIGIT_UNUSED)
        gDigitArrayU64[i] = 0;
  }
}
