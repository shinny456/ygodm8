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

void ConvertU16ToDecimalDigits (u16 val, u8 flags) {
  u8 digitIndex = 0;
  u8 outputIndex = 0;
  u16 powerOf10 = 10000;
  u8 i;
  u16 digit;

  // clear buffer
  for (i = 0; i < MAX_U16_DIGITS; i++)
    gDecimalDigitsU16[i] = DIGIT_UNUSED;

  if (val != 0xFFFF) {
    if (flags & DIGIT_FLAG_ALIGN_LEFT)
      gDecimalDigitsU16[0] = 0;
    for (; digitIndex < MAX_U16_DIGITS; digitIndex++, val -= digit * powerOf10, powerOf10 /= 10) {
      digit = val / powerOf10;
      if (digit)
        gDecimalDigitsU16[outputIndex] = digit;
      else if (outputIndex) {
        if (gDecimalDigitsU16[outputIndex - 1] != DIGIT_UNUSED)
          gDecimalDigitsU16[outputIndex] = digit;
        else if (outputIndex == MAX_U16_DIGITS - 1)
          gDecimalDigitsU16[MAX_U16_DIGITS - 1] = digit;
      }
      if (!digit) {
        if (!outputIndex) {
          if (!(flags & DIGIT_FLAG_ALIGN_LEFT))
            outputIndex = 1;
        }
        else if (gDecimalDigitsU16[outputIndex - 1] != DIGIT_UNUSED || !(flags & 1))
          outputIndex++;
      }
      else
        outputIndex++;
    }
  }

  if (flags & DIGIT_FLAG_DISPLAY_LEADING_ZEROES) {
    for (i = 0; i < MAX_U16_DIGITS; i++)
      if (gDecimalDigitsU16[i] == 10)
        gDecimalDigitsU16[i] = 0;
  }
}

void ConvertU64ToDecimalDigits (u64 val, u8 flags) {
  u8 digitIndex = 0;
  u8 outputIndex = 0;
  u64 powerOf10;
  u8 i;
  u64 digit;

  // clear buffer
  for (i = 0; i < MAX_U64_DIGITS; i++)
    gDecimalDigitsU64[i] = DIGIT_UNUSED;

  if (flags & DIGIT_FLAG_ALIGN_LEFT)
    gDecimalDigitsU64[0] = 0;

  powerOf10 = 1000000000000000000;
  for (; digitIndex < MAX_U64_DIGITS; digitIndex++, val -= digit * powerOf10, powerOf10 /= 10) {
    digit = val / powerOf10;
    if (digit)
      gDecimalDigitsU64[outputIndex] = digit;
    else if (outputIndex) {
      if (gDecimalDigitsU64[outputIndex - 1] != DIGIT_UNUSED)
        gDecimalDigitsU64[outputIndex] = digit;
      else if (outputIndex == MAX_U64_DIGITS - 1)
        gDecimalDigitsU64[MAX_U64_DIGITS - 1] = digit;
    }
    if (!digit) {
      if (!outputIndex) {
        if (!(flags & DIGIT_FLAG_ALIGN_LEFT))
          outputIndex = 1;
      }
      else if (gDecimalDigitsU64[outputIndex - 1] != DIGIT_UNUSED || !(flags & 1))
        outputIndex++;
    }
    else
      outputIndex++;
  }
  if (flags & DIGIT_FLAG_DISPLAY_LEADING_ZEROES) {
    for (i = 0; i < MAX_U64_DIGITS; i++)
      if (gDecimalDigitsU64[i] == DIGIT_UNUSED)
        gDecimalDigitsU64[i] = 0;
  }
}
