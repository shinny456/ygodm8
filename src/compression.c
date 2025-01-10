#include "global.h"

static void DeltaDecode (void* ptr2, unsigned size) {
  unsigned char r3 = 0;
  unsigned char* ptr = ptr2;
  for (; size; size--) {
    *ptr = *ptr + r3;
    r3 = *ptr;
    ptr++;
  }
}

static void sub_800DFF0 (unsigned char* arg0, unsigned char arg1, unsigned char arg2) {
  const unsigned char temp[] = {1, 1, 1, 1, 1, 1, 1, 57};
  const unsigned short temp2[] = {632, 632, 632, 632, 632, 632, 632, 56};
  unsigned i;
  for (i = 0; i < arg1 * 8; i++) {
    unsigned char r3 = 0;
    unsigned j;
    for (j = 0; j < arg2 * 8; j++) {
      *arg0 += r3;
      r3 = *arg0;
      arg0 += temp[j % 8];
    }
    arg0 -= temp2[i % 8];
  }
}

void HuffUnCompAndDeltaDecode (void* arg0, void* arg1, unsigned arg2) {
  HuffUnComp(arg0, arg1);
  DeltaDecode(arg1, arg2);
}

void sub_800E08C (void* arg0, void* arg1) {
  HuffUnComp(arg0, arg1);
  sub_800DFF0(arg1, 10, 10);
}

//unused?
static void LZ77UnCompWramAndDeltaDecode (void* arg0, void* arg1, unsigned arg2) {
  LZ77UnCompWram(arg0, arg1);
  DeltaDecode(arg1, arg2);
}

//unused?
static void sub_800E0BC (void* arg0, void* arg1) {
  LZ77UnCompWram(arg0, arg1);
  sub_800DFF0(arg1, 10, 10);
}
