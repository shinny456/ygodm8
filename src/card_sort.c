#include "global.h"

//TODO: rename file to card_sort.c; are some of these funcs used elsewhere (not just trunk)?
//macroize these functions? they pretty much have the same structure


struct SortRange {
  u16 startIndex;
  u16 endIndex;
};

struct SortRangeStack {
  u8 raw[0x80]; // raw buffer for SortRange stack
  u32 size; // number of entries (used like a stack pointer)
} extern * gSortRangeStack;


struct SortableEntry {
  u16 cardId;
  u64 sortKey;
} extern * gSortableEntries; // temporary working array/buffer that gets sorted

void ClearSortRangeStack (void);
void PushSortRange (struct SortRange*);
void PopSortRange (struct SortRange*);

// in-place, iterative quicksort
void SortCardsDescending (void) {
  struct SortableEntry tempEntry;
  struct SortRange currentRange;
  struct SortRange newRange;
  if (gCardSortContext.cardCount < 2)
    return;
  ClearSortRangeStack();
  currentRange.startIndex = 0;
  currentRange.endIndex = gCardSortContext.cardCount - 1;
  PushSortRange(&currentRange);
  while (gSortRangeStack->size) {
    u64 pivot;
    u16 left, right;
    PopSortRange(&currentRange);
    right = currentRange.startIndex;
    left = currentRange.endIndex;
    pivot = gSortableEntries[(right + left) / 2].sortKey;
    while (1) {
      while (gSortableEntries[right].sortKey > pivot)
        right++;
      while (pivot > gSortableEntries[left].sortKey)
        left--;
      if (right >= left)
        break;
      tempEntry = gSortableEntries[right];
      gSortableEntries[right] = gSortableEntries[left];
      gSortableEntries[left] = tempEntry;
      right++;
      left--;
    }
    if (left + 1 < currentRange.endIndex) {
      newRange.startIndex = left + 1;
      newRange.endIndex = currentRange.endIndex;
      PushSortRange(&newRange);
    }
    if (currentRange.startIndex < right - 1) {
      newRange.startIndex = currentRange.startIndex;
      newRange.endIndex = right - 1;
      PushSortRange(&newRange);
    }
  }
}

void sub_80329C8 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    gSortableEntries[i].cardId = gCardSortContext.cards[i];
    gSortableEntries[i].sortKey = 800 - gCardSortContext.cards[i];
    if (gTrunkCardQty[gCardSortContext.cards[i]])
      gSortableEntries[i].sortKey += 800;
  }
}

//card shop buy sort by number
void sub_8032A50 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    gSortableEntries[i].cardId = gCardSortContext.cards[i];
    gSortableEntries[i].sortKey = 800 - gCardSortContext.cards[i];
    if (gShopTempCardQty[gCardSortContext.cards[i]])
      gSortableEntries[i].sortKey |= 0x1000000000000000;
  }
}

//card shop sell sort by number
void sub_8032AD0 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    gSortableEntries[i].cardId = gCardSortContext.cards[i];
    gSortableEntries[i].sortKey = 800 - gCardSortContext.cards[i];
    if (gPlayerTempCardQty[gCardSortContext.cards[i]])
      gSortableEntries[i].sortKey |= 0x1000000000000000;
  }
}

void sub_8032B50 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    gSortableEntries[i].cardId = gCardSortContext.cards[i];
    gSortableEntries[i].sortKey = 800 - gCardSortContext.cards[i];
    if (gTotalCardQty[gCardSortContext.cards[i]])
      gSortableEntries[i].sortKey += 800;
  }
}

void sub_8032BD8 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    gSortableEntries[i].cardId = gCardSortContext.cards[i];
    gSortableEntries[i].sortKey = 800 - g80D0444[gLanguage][gCardSortContext.cards[i]];
    if (gTrunkCardQty[gCardSortContext.cards[i]])
      gSortableEntries[i].sortKey += 800;
  }
}

void sub_8032C88 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    gSortableEntries[i].cardId = gCardSortContext.cards[i];
    gSortableEntries[i].sortKey = 800 - g80D0444[gLanguage][gCardSortContext.cards[i]];
    if (gShopTempCardQty[gCardSortContext.cards[i]])
      gSortableEntries[i].sortKey += 800;
  }
}

void sub_8032D38 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    gSortableEntries[i].cardId = gCardSortContext.cards[i];
    gSortableEntries[i].sortKey = 800 - g80D0444[gLanguage][gCardSortContext.cards[i]];
    if (gPlayerTempCardQty[gCardSortContext.cards[i]])
      gSortableEntries[i].sortKey += 800;
  }
}

void sub_8032DE8 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.cardCount; i++) {
    gSortableEntries[i].cardId = gCardSortContext.cards[i];
    gSortableEntries[i].sortKey = 800 - g80D0444[gLanguage][gCardSortContext.cards[i]];
    if (gTotalCardQty[gCardSortContext.cards[i]])
      gSortableEntries[i].sortKey += 800;
  }
}
/*
void sub_8032E98 (void) {
  unsigned i;
  for (i = 0; i < gCardSortContext.unk8; i++) {
    int temp;
    gSortableEntries[i].unk0 = gCardSortContext.unk0[i];
    temp = (gCardAtks[gSortableEntries[i].unk0] + 1 & 0xFFFF) * 800 + 800;
    gSortableEntries[i].unk4 = temp - gSortableEntries[i].unk0;
    if (gTrunkCardQty[gSortableEntries[i].unk0])
      gSortableEntries[i].unk4 |= 0x1000000000000000;
  }
}
*/

