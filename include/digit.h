#ifndef GUARD_DIGIT_H
#define GUARD_DIGIT_H

#define MAX_U16_DIGITS 5
#define MAX_U64_DIGITS 19

#define DIGIT_TERMINATOR 10

enum DigitFlags {
  DIGIT_FLAG_NONE = 0x0,
  DIGIT_FLAG_ALIGN_LEFT = 0x1,
  DIGIT_FLAG_DISPLAY_LEADING_ZEROES = 0x2,
};


void sub_800DD4C (void);
void ConvertU16ToDigitBuffer (unsigned short, unsigned char);
void ConvertU64ToDigitBuffer (unsigned long long, unsigned char);

#endif // GUARD_DIGIT_H
