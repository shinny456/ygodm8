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

void ConvertU16ToDigitBuffer (unsigned short val, unsigned char flags) {
  unsigned char digitIndex = 0;
  unsigned char outputIndex = 0;
  unsigned short powerOf10 = 10000;
  unsigned char i;
  unsigned short digit;

  // clear buffer
  for (i = 0; i < MAX_U16_DIGITS; i++)
    gDigitBufferU16[i] = DIGIT_TERMINATOR;

  if (val != 0xFFFF) {
    if (flags & DIGIT_FLAG_ALIGN_LEFT)
      gDigitBufferU16[0] = 0;
    for (; digitIndex < MAX_U16_DIGITS; digitIndex++, val -= digit * powerOf10, powerOf10 /= 10) {
      digit = val / powerOf10;
      if (digit)
        gDigitBufferU16[outputIndex] = digit;
      else if (outputIndex) {
        if (gDigitBufferU16[outputIndex - 1] != DIGIT_TERMINATOR)
          gDigitBufferU16[outputIndex] = digit;
        else if (outputIndex == MAX_U16_DIGITS - 1)
          gDigitBufferU16[MAX_U16_DIGITS - 1] = digit;
      }
      if (!digit) {
        if (!outputIndex) {
          if (!(flags & DIGIT_FLAG_ALIGN_LEFT))
            outputIndex = 1;
        }
        else if (gDigitBufferU16[outputIndex - 1] != DIGIT_TERMINATOR || !(flags & 1))
          outputIndex++;
      }
      else
        outputIndex++;
    }
  }

  if (flags & DIGIT_FLAG_DISPLAY_LEADING_ZEROES) {
    for (i = 0; i < MAX_U16_DIGITS; i++)
      if (gDigitBufferU16[i] == DIGIT_TERMINATOR)
        gDigitBufferU16[i] = 0;
  }
}

void ConvertU64ToDigitBuffer (unsigned long long val, unsigned char flags) {
  unsigned char digitIndex = 0;
  unsigned char outputIndex = 0;
  unsigned long long powerOf10;
  unsigned char i;
  unsigned long long digit;

  // clear buffer
  for (i = 0; i < MAX_U64_DIGITS; i++)
    gDigitBufferU64[i] = DIGIT_TERMINATOR;

  if (flags & DIGIT_FLAG_ALIGN_LEFT)
    gDigitBufferU64[0] = 0;

  powerOf10 = 1000000000000000000;
  for (; digitIndex < MAX_U64_DIGITS; digitIndex++, val -= digit * powerOf10, powerOf10 /= 10) {
    digit = val / powerOf10;
    if (digit)
      gDigitBufferU64[outputIndex] = digit;
    else if (outputIndex) {
      if (gDigitBufferU64[outputIndex - 1] != DIGIT_TERMINATOR)
        gDigitBufferU64[outputIndex] = digit;
      else if (outputIndex == MAX_U64_DIGITS - 1)
        gDigitBufferU64[MAX_U64_DIGITS - 1] = digit;
    }
    if (!digit) {
      if (!outputIndex) {
        if (!(flags & DIGIT_FLAG_ALIGN_LEFT))
          outputIndex = 1;
      }
      else if (gDigitBufferU64[outputIndex - 1] != DIGIT_TERMINATOR || !(flags & 1))
        outputIndex++;
    }
    else
      outputIndex++;
  }
  
  if (flags & DIGIT_FLAG_DISPLAY_LEADING_ZEROES) {
    for (i = 0; i < MAX_U64_DIGITS; i++)
      if (gDigitBufferU64[i] == DIGIT_TERMINATOR)
        gDigitBufferU64[i] = 0;
  }
}
