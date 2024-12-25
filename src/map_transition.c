#include "global.h"

void sub_805236C (void);
void sub_80523EC (u16, u16, u16);
unsigned sub_80524A4 (u16);


struct MapState {
  u16 id;
  u16 state; // state selector?
  u16 flags[8]; // if all of these flags are set, we transition to map[id][alternativeState]
  u16 alternativeState;
};

extern const struct MapState gMapStates[];
void sub_804EF84 (u16, u16, u16);
u16 sub_80520E0(u8 x, u8 y);
u32 sub_8052174 (u16);
u32 sub_80521AC (u16);
extern u8 g2021D6C[]; // only used in unused function?

static inline int sub_80524A4_inline (u16 arg0) {
  arg0 &= 0x700;
  return gMapData[gOverworld.map.id][gOverworld.map.state]->unk168[arg0 >> 8].unk4;
}

static inline void sub_80524D8_inline (u16 arg0) {
  gOverworld.map.unk8 = sub_80524A4_inline(arg0);
  gOverworld.map.unk6 = 4;
}

static void sub_8052318 (u16 arg0) {
  u8 temp, temp2;
  gOverworld.map.unk6 = (arg0 & 0x700) >> 8;
  temp = sub_80524A4_inline(arg0);
  temp2 = gMapData[gOverworld.map.id][gOverworld.map.state]->unk168[gOverworld.map.unk6].unk5;
  sub_80523EC(temp, 0, temp2);
}

void sub_805236C (void) {
  u16 temp = sub_80520E0(gOverworld.objects[0].x, gOverworld.objects[0].y);
  switch (sub_80521AC(temp)) {
    case 1: // transition to other map
      gOverworld.unk240 |= 2;
      sub_8052318(temp);
      break;
    case 2: // transition to world map
      gOverworld.unk240 |= 2;
      gOverworld.unk240 |= 4;
      sub_80524D8_inline(temp);
      break;
  }
}

// Set map id and state
void sub_80523EC (u16 id, u16 state, u16 connection) {
  int i = -1;
  while (gMapStates[++i].id != 0xFFFF) {
    if (gMapStates[i].id == id && gMapStates[i].state == state) {
      int j;
      bool32 keepState = 0;
      // all flags must be set for the current state to be assigned another value
      for (j = 0; j < 8; j++)
        if (gMapStates[i].flags[j] != 0xFFFF && !CheckFlag(gMapStates[i].flags[j]))
          keepState = 1;
      if (!keepState)
        state = gMapStates[i].alternativeState;
    }
  }
  // Final set map id and state
  sub_804EF84(id, state, connection);
}

unsigned sub_80524A4 (u16 arg0) {
  arg0 &= 0x700;
  return gMapData[gOverworld.map.id][gOverworld.map.state]->unk168[arg0 >> 8].unk4;
}

// only inline version is used
static void sub_80524D8 (u16 arg0) {
  gOverworld.map.unk8 = sub_80524A4_inline(arg0);
  gOverworld.map.unk6 = 4;
}

// unused
static void sub_8052510 (void) {
  if (gOverworld.objects[0].unk18 == 1) {
    if (!sub_8052174(sub_80520E0(gOverworld.objects[0].x, gOverworld.objects[0].y))) {
      g2021D6C[0] = 0;
      g2021D6C[1] = 0;
      g2021D6C[2] = 1;
    }
  }
}
