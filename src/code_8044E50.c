#include "global.h"

//palette effects (palette_util.c)?
//see sub_80020D8
s16 fix_mul (s16, s16);
s16 fix_div (s16, s16);


void sub_8044E50 (unsigned short* arg0, unsigned short arg1, unsigned short arg2) {
  unsigned short b = arg2;
  unsigned short c = arg1;
  arg0 += c;
  for (; c <= b; arg0++, c++) {
    unsigned char r1 = *arg0 & 31;
    unsigned char r3 = (*arg0 & 0x3E0) >> 5;
    unsigned char r2 = (*arg0 & 0x7C00) >> 10;
    unsigned short a = (unsigned)(r1 * 77 + r3 * 151 + r2 * 28) / 256;
    *arg0 = (a * 15 >> 4) | (a * 200 >> 8) << 5 | (a * 145 >> 8) << 10;
  }
}
/*
void sub_8044EC8 (unsigned short* arg0, unsigned short arg1, unsigned short arg2, unsigned char arg3) {
  unsigned short b = arg2;
  unsigned short c = arg1;
  arg0 += c;
  for (; c <= b; arg0++, c++) {
    unsigned char r5 = *arg0 & 31;
    unsigned char r6 = (*arg0 & 0x3E0) >> 5;
    unsigned char r4 = (*arg0 & 0x7C00) >> 10;
    fix_mul(r5, fix_div(arg3, 16));
    *arg0 = ;
  }
}

/*
unsigned short sub_804505C (unsigned char arg0, unsigned char arg1, unsigned char arg2) {
  return (unsigned)(arg0 * 77 + arg1 * 151 + arg2 * 28) / 256;
}

unsigned short sub_8045080 (unsigned char arg0, unsigned char arg1, unsigned char arg2) {
  unsigned short a = (unsigned)(arg0 * 77 + arg1 * 151 + arg2 * 28) / 256;
  return a |
         a << 5 |
         a << 10;
}

unsigned short sub_80451D8 (unsigned char arg0, unsigned char arg1, unsigned char arg2) {
  unsigned short a = (unsigned)(arg0 * 77 + arg1 * 151 + arg2 * 28) / 256;
  return (a * 15 >> 4) | (a * 200 >> 8) << 5 | (a * 145 >> 8) << 10;
}

void sub_8045220 (unsigned short* arg0, unsigned short arg1, unsigned short arg2) {
  unsigned short b = arg2;
  unsigned short c = arg1;
  arg0 += c;
  for (; c <= b; arg0++, c++) {
    unsigned char r1 = *arg0 & 31;
    unsigned char r3 = (*arg0 & 0x3E0) >> 5;
    unsigned char r2 = (*arg0 & 0x7C00) >> 10;
    unsigned short a = (unsigned)(r1 * 77 + r3 * 151 + r2 * 28) / 256;
    *arg0 = a | (a << 5) | (a << 10);
  }
}
*/

