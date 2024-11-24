#include "global.h"
#include "card.h"
#include "gba/syscall.h"
#include "gba/macro.h"
#include "duel.h"
#include "gba/io_reg.h"

struct UnkStruct_2020E10
{
    s16 unk0; //current card position in trunk?
    u8 unk2;
    u8 unk3;            //show: nothing, atk/def, attribute(summon), cost,
    u8 cursorState;
    u8 filler5[7];
    u16 unkC[TRUNK_SIZE - 1]; //trunk_layout?
};

void sub_8008220(void);
u16 sub_800901C(u8);
void sub_80090E8(void);
void sub_8009110(void);
void sub_8009140(void);
void sub_800916C(void);
void sub_800919C(void);
void sub_80091C0(void);
void sub_80091EC(u8);
void sub_08009224(void);
void sub_800B3E4(u16);

u32 GetDuelistLevel(void);
void SetCardInfo(u16 id);
u8 GetDeckSize(void);
bool8 sub_801D878(u16 id);
void sub_801D960(u16 id);
void sub_801D9B8(u16);
void sub_801DB64(u16);
u8 GetDeckCardQty(u16);


bool8 sub_801F098(u16 id);

void sub_8034A38(void);

extern u16 gKeyState; //0x02020DF8
extern struct UnkStruct_2020E10 gUnkStruct_2020E10; //2020E10
extern u8 gTotalCardQty[];
extern u8 gTrunkCardQty[]; //2021790

extern struct CardInfo gCardInfo; //2021AD0


extern const u8 gStarterTrunk[];

extern u8 gUnk_8DFA6A8[];  //change these to struct?
extern u8 gUnk_8DFA6B4[];
extern u8 gUnk_8DFAB54[];
extern u8 gUnk_8DFAFF4[];

extern u16 gUnk_8090470[];
extern u64 gMoney;
void SetMoney(u64);


extern u8 gStarTile[];
extern u8 gSwordTile[];
extern u8 gShieldTile[];
extern u16 gUnk_808ECD0[]; //trunk character palette?
extern u16 *gAttributeIconPalettes[];
extern u16 *gTypeIconPalettes[];
extern u8 *gTypeIconTiles[][NUM_LANGUAGES];
extern u8 *gAttributeIconTiles[][NUM_LANGUAGES];
extern u8 gUnk_8DF8142[]; //cursor y coords
extern u8 gUnk_8DF8145[]; //cursor x coords
extern u8 gUnk_8DF813C[]; //cursor state change when pressing up
extern u8 gUnk_8DF813F[]; //cursor state change when pressing down

extern u8 *g201CB30;
extern u16 *g201CB34;

void LoadPalettes(void);
void LoadOam(void);

extern u16 gOamBuffer[];
void sub_8008F88 (u8);
void sub_800A3D8 (u8);
void sub_800AA58 (u8);
void sub_800ABD0 (void);

void sub_800B538 (u16* id);
void sub_800ABA8 (void);
void sub_8009364 (void);
void sub_80089EC (void);
void sub_80081DC (void (*)(void));
void LoadCharblock1 (void);
void sub_8008A5C (void);
int  sub_80086D8 (void);
void sub_80088F0 (void);
void sub_8008924 (void);
void sub_8008958 (void);
void sub_80089B4 (void);
void sub_80089D0 (void);
void sub_8008A48 (void);
void sub_80090B8 (void);
void sub_801DA7C (u8);


extern u16 g2020DF4;
extern u16 gUnk2020DFC;
extern u16 gUnk2021DCC;

void sub_802612C (void);
u16 sub_8008644 (void);
void sub_800882C (void);
void sub_800876C (void);
void sub_800ABB4 (void);
void sub_8008780 (void);
void sub_8008794 (void);
void sub_80087A8 (void);
void sub_80087BC (void);
void sub_80087D0 (void);
void sub_8008804 (void);
void sub_8008854 (void);
void sub_80087E4 (void);
void sub_0800ABA4 (void);
void SortingMenuMain (void);
void sub_8008818 (void);
void sub_800ABE4 (void);
void sub_0800ABE0 (void);


void TrunkMenu (void) {
  bool32 r4 = TRUE;
  sub_800882C();
  while (r4) {
    switch (sub_8008644()) {
      case 0x40:
        sub_800876C();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 0x140:
        sub_8008780();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 0x80:
        sub_8008794();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 0x180:
        sub_80087A8();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 0x10:
        sub_80087BC();
        sub_800ABD0();
        sub_800AA58(6);
        break;
      case 0x20:
        sub_80087D0();
        sub_800ABD0();
        sub_800AA58(6);
        break;
      case 0x200:
        sub_8008804();
        sub_800ABB4();
        sub_800AA58(4);
        break;
      case 1:
        sub_8008854();
        sub_800AA58(7);
        break;
      case 2:
        sub_80087E4();
        r4 = FALSE;
        sub_0800ABA4();
        sub_800AA58(2);
        break;
      case 8:
        SortingMenuMain();
        sub_800A3D8(8);
        sub_800AA58(8);
        break;
      case 4:
        sub_8008818();
        sub_800AA58(9);
        sub_800ABE4();
        break;
      case 0:
      default:
        sub_800A3D8(5);
        sub_0800ABE0();
        sub_800AA58(5);
        break;
    }
  }
}

u16 sub_8008644 (void) {
  u8 i;
  u16 r2;
  u16 ret = 0;
  sub_802612C();
  r2 = 1;
  for (i = 0; i < 10; i++) {
    if (r2 & gUnk2020DFC)
      ret = r2 & gUnk2020DFC;
    r2 <<= 1;
  }
  r2 = 0x10;
  for (i = 0; i < 4; i++) {
    if (r2 & gUnk2021DCC)
      ret = r2 & gUnk2021DCC;
    r2 <<= 1;
  }
  if (gUnk2021DCC & 0x40 && gKeyState & 0x100)
    ret = 0x140;
  if (gUnk2021DCC & 0x80 && gKeyState & 0x100)
    ret = 0x180;
  return ret;
}

int sub_80086D8 (void) {
  u8 i;
  u16 ret = 0;
  u16 r2 = 1;
  for (i = 0; i < 10; i++) {
    if (r2 & gUnk2020DFC)
      ret = r2 & gUnk2020DFC;
    r2 <<= 1;
  }
  r2 = 0x10;
  for (i = 0; i < 4; i++) {
    if (r2 & g2020DF4)
      ret = r2 & g2020DF4;
    r2 <<= 1;
  }
  if (g2020DF4 & 0x40 && gKeyState & 0x100)
    ret = 0x140;
  if (g2020DF4 & 0x80 && gKeyState & 0x100)
    ret = 0x180;
  return ret;
}

void sub_800876C (void) {
  sub_8008F88(3);
  sub_800A3D8(3);
}

void sub_8008780 (void) {
  sub_8008F88(5);
  sub_800A3D8(3);
}

void sub_8008794 (void) {
  sub_8008F88(2);
  sub_800A3D8(3);
}

void sub_80087A8 (void) {
  sub_8008F88(4);
  sub_800A3D8(3);
}

void sub_80087BC (void) {
  sub_8008F88(7);
  sub_800A3D8(3);
}

void sub_80087D0 (void) {
  sub_8008F88(8);
  sub_800A3D8(3);
}

void sub_80087E4 (void) {
  sub_8008F88(9);
  sub_800A3D8(1);
  sub_801DA7C(8);
  PlayMusic(0x38);
}

void sub_8008804 (void) {
  sub_8008F88(6);
  sub_800A3D8(4);
}

void sub_8008818 (void) {
  sub_8008F88(10);
  sub_800A3D8(7);
}

void sub_800882C (void) {
  sub_80090B8();
  sub_800A3D8(0);
  sub_800A3D8(2);
  sub_800AA58(1);
  sub_800ABA8();
  sub_800AA58(3);
}

void sub_8008854 (void) {
  bool32 r4;
  gUnkStruct_2020E10.cursorState = 0; //todo: cursor state enum
  sub_8009364();
  sub_80089EC();
  LoadCharblock1();
  sub_80081DC(sub_8008A5C);
  sub_8008220();
  PlayMusic(0x37);
  r4 = TRUE;
  while (r4) {
    switch (sub_80086D8()) {
      case 2:
        goto end;
      case 0x40:
        sub_80088F0();
        break;
      case 0x80:
        sub_8008924();
        break;
      case 1:
        switch (gUnkStruct_2020E10.cursorState) {
          case 0:
            sub_8008958();
            break;
          case 1:
            sub_80089B4();
            break;
          case 2:
            sub_80089D0();
            break;
        }
        break;
      default:
        sub_8008220();
        break;
    }
  }
  end:
  PlayMusic(0x38);
  sub_8008A48();
}

void sub_80088F0 (void) { //pressing up
  gUnkStruct_2020E10.cursorState = gUnk_8DF813C[gUnkStruct_2020E10.cursorState];
  sub_80089EC();
  PlayMusic(0x36);
  sub_80081DC(LoadOam);
  sub_8008220();
}

void sub_8008924 (void) { //pressing down
  gUnkStruct_2020E10.cursorState = gUnk_8DF813F[gUnkStruct_2020E10.cursorState];
  sub_80089EC();
  PlayMusic(0x36);
  sub_80081DC(LoadOam);
  sub_8008220();
}

void sub_8008958 (void) { //trunk menu card details
  gStatMod.card = sub_800901C(2);
  gStatMod.field = 0;
  gStatMod.stage = 0;
  sub_800B538(&gStatMod.card);
  PlayMusic(0x37);
  sub_801F6B0();
  sub_800A3D8(0);
  sub_800A3D8(2);
  sub_800AA58(1);
  sub_800ABA8();
  sub_8009364();
  sub_80089EC();
  sub_80081DC(sub_8008A5C);
  sub_8008220();
  LoadCharblock1();
}

void sub_80089B4 (void) {
  sub_8008F88(7);
  sub_800A3D8(3);
  sub_800ABD0();
  sub_800AA58(6);
}

void sub_80089D0 (void) {
  sub_8008F88(8);
  sub_800A3D8(3);
  sub_800ABD0();
  sub_800AA58(6);
}

void sub_80089EC (void) { //SetCursorOam
  u32 *oam = (u32*)&gOamBuffer[6 * 4]; //todo
  oam[0] = gUnk_8DF8142[gUnkStruct_2020E10.cursorState] |
           gUnk_8DF8145[gUnkStruct_2020E10.cursorState] << 16 |
           0x40000000; //sprite size bits
  oam[1] = 0xC120;
  oam[2] = gUnk_8DF8142[gUnkStruct_2020E10.cursorState] |
           gUnk_8DF8145[gUnkStruct_2020E10.cursorState] << 16 |
           0x40000800;
  oam[3] = 0x120;
}

void sub_8008A48 (void) {
  u32 *oam = (u32*)&gOamBuffer[6 * 4]; //todo
  oam[0] = 0;
  oam[1] = 0;
  oam[2] = 0;
  oam[3] = 0;
}

void sub_8008A5C (void) {
  LoadPalettes();
  LoadOam();
  REG_DISPCNT = DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_OBJWIN_ON;
  REG_BLDALPHA = 6;
  REG_BLDY = 10;
  REG_BLDCNT |= 8;
}

void CopyTypeIconTilesToBuffer (u8 type, void * dest) {
  //u8 temp = type + 235; (decomp_note)
  if (type == 21 || type == 22 || type == 23) {
    CpuCopy16(gTypeIconTiles[type][gLanguage], dest, 0x40);
    CpuCopy16(gTypeIconTiles[type][gLanguage] + 0x80, dest + 0x40, 0x40);
    CpuCopy16(gTypeIconTiles[type][gLanguage] + 0x40, g201CB30, 0x40);
    CpuCopy16(gTypeIconTiles[type][gLanguage] + 0xC0, g201CB30 + 0x40, 0x40);
  }
  else
    CpuCopy16(gTypeIconTiles[type][gLanguage], dest, 0x80);
}

void CopyTypeIconPalToBuffer (u8 type, void * palDest) {
  //u8 temp = type - 21; (decomp_note)
  if (type == 21 || type == 22 || type == 23)
    CpuCopy16(gTypeIconPalettes[type], g201CB34, 32);
  CpuCopy16(gTypeIconPalettes[type], palDest, 32);
}

void CopyAttributeIconTilesToBuffer (u8 attribute, void * dest) {
  g201CB30 = dest;
  CpuCopy16(gAttributeIconTiles[attribute][gLanguage], dest, 0x80);
}

void CopyAttributeIconPalToBuffer (u8 attribute, void * palDest) {
  g201CB34 = palDest;
  CpuCopy16(gAttributeIconPalettes[attribute], palDest, 32);
}

void CopyStarTileToBuffer (void * dest) {
  CpuCopy16(gStarTile, dest, 32);
}

void sub_8008BF8 (void * dest) {
  CpuCopy16(gUnk_808ECD0, dest, 32);
}

void CopySwordTileToBuffer (void * dest) {
  CpuCopy16(gSwordTile, dest, 32);
}

void CopyShieldTileToBuffer (void * dest) {
  CpuCopy16(gShieldTile, dest, 32);
}

NAKED
void sub_8008C34(void)
{
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	ldr r0, _08008C84\n\
	ldr r1, [r0, #4]\n\
	ldr r0, [r0]\n\
	lsls r3, r1, #0x1f\n\
	lsrs r2, r0, #1\n\
	adds r0, r3, #0\n\
	orrs r0, r2\n\
	lsrs r1, r1, #1\n\
	bl SetMoney\n\
	movs r4, #0\n\
	ldr r5, _08008C88\n\
	ldrh r0, [r5]\n\
	cmp r0, #0\n\
	beq _08008CA0\n\
	mov r8, r5\n\
	movs r0, #0xc8\n\
	lsls r0, r0, #2\n\
	mov ip, r0\n\
	movs r7, #1\n\
	ldr r6, _08008C8C\n\
_08008C64:\n\
	lsls r0, r4, #1\n\
	mov r2, r8\n\
	adds r1, r0, r2\n\
	ldrh r0, [r1]\n\
	cmp r0, ip\n\
	bhi _08008C94\n\
	ldrh r0, [r1]\n\
	adds r1, r0, r6\n\
	ldrb r2, [r1]\n\
	movs r3, #0xfa\n\
	subs r0, r3, r2\n\
	cmp r7, r0\n\
	ble _08008C90\n\
	strb r3, [r1]\n\
	b _08008C94\n\
	.align 2, 0\n\
_08008C84: .4byte gMoney\n\
_08008C88: .4byte gUnk_8090470\n\
_08008C8C: .4byte gTrunkCardQty\n\
_08008C90:\n\
	adds r0, r2, #1\n\
	strb r0, [r1]\n\
_08008C94:\n\
	adds r4, #1\n\
	lsls r0, r4, #1\n\
	adds r0, r0, r5\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	bne _08008C64\n\
_08008CA0:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}
/*
void sub_8008C34 (void) {
  int i;
  SetMoney(gMoney / 2);
  for (i = 0; gUnk_8090470[i]; i++) {
    int r7 = 1;
    if (gUnk_8090470[i] < 801)
      if (r7 > 250 - gTrunkCardQty[gUnk_8090470[i]])
        gTrunkCardQty[gUnk_8090470[i]] = 250;
      else
        gTrunkCardQty[gUnk_8090470[i]]++;
  }

}*/

void InitTrunkCards(void)
{
    u32 id;

    for (id = 0; id < TRUNK_SIZE; id++)
        gTrunkCardQty[id] = gStarterTrunk[id];
}

void AddCardToTrunk(u16 id, u8 qty)
{
    if (qty > TRUNK_CARD_LIMIT - gTrunkCardQty[id])
        gTrunkCardQty[id] = TRUNK_CARD_LIMIT;
    else
        gTrunkCardQty[id] += qty;
}

void RemoveCardFromTrunk(u16 id, u8 qty)
{
    if (qty > gTrunkCardQty[id])
        gTrunkCardQty[id] = 0;
    else
        gTrunkCardQty[id] -= qty;
}

bool8 ExceedsTrunkCardLimit(u16 id, u8 qty)
{
    if (qty > TRUNK_CARD_LIMIT - gTrunkCardQty[id])
        return FALSE;
    return TRUE;
}

bool8 sub_8008D48(u16 id, u8 qty)
{
    if (qty > gTrunkCardQty[id])
        return FALSE;
    return TRUE;
}

void SetTrunkCardQty(u16 id, u8 qty)
{
    gTrunkCardQty[id] = qty;
}

u8 GetTrunkCardQty(u16 id)
{
    return gTrunkCardQty[id];
}

/*
static inline void sub_8008D88_inline (u16 id, u8 arg1) {
  if (gTrunkCardQty[id])
    if (gTrunkCardQty[id] < arg1)
      gTrunkCardQty[id] = 0;
    else
      gTrunkCardQty[id]--;
  else if (GetDeckCardQty(id))
    sub_801D9B8(id);
}

void sub_8008D88 (u16 id) {
  sub_8008D88_inline(id, 1);
}*/

NAKED
void sub_8008D88(u16 id)
{
    asm_unified("\n\
    push {r4, lr}\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	adds r4, r0, #0\n\
	ldr r0, _08008DA8\n\
	adds r1, r4, r0\n\
	ldrb r0, [r1]\n\
	adds r2, r0, #0\n\
	cmp r2, #0\n\
	beq _08008DB2\n\
	cmp r2, #1\n\
	bhs _08008DAC\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	b _08008DC4\n\
	.align 2, 0\n\
_08008DA8: .4byte gTrunkCardQty\n\
_08008DAC:\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	b _08008DC4\n\
_08008DB2:\n\
	adds r0, r4, #0\n\
	bl GetDeckCardQty\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _08008DC4\n\
	adds r0, r4, #0\n\
	bl sub_801D9B8\n\
_08008DC4:\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	");
}

void RemoveCardFromDeckAndTrunk(u16 id)
{
    gTrunkCardQty[id] = 0;
    sub_801D960(id);
}

//leftover debug function
void SetTrunkCardsTo50(void)
{
    u32 id;

    gTrunkCardQty[0] = 0;
    for (id = 1; id < TRUNK_SIZE; id++)
        gTrunkCardQty[id] = 50;
}

void sub_8008E0C(void)
{
    bool32 r5 = 0;
    u16 id = sub_800901C(2);

    if (gTrunkCardQty[id] && GetDeckSize() < DECK_SIZE && sub_801F098(id) == TRUE)
    {
        SetCardInfo(id);
        if (GetDuelistLevel() < gCardInfo.cost)
            r5 = 1;
    }
    else
        r5 = 1;

    if (r5 == 1)
    {
        PlayMusic(57);
        while (gKeyState & 0x10 /*right*/)
            sub_8008220();
    }
    else
    {
        gTrunkCardQty[id]--;
        sub_801DB64(id);
        PlayMusic(55);
    }
}

void sub_8008EA8(void)
{
    u32 r5 = 0;
    u16 id = sub_800901C(2);

    if (!GetDeckCardQty(id) || sub_801D878(id) != 1)
        r5 = 1;

    if (r5 == 1)
    {
        PlayMusic(57);
        while (gKeyState & 0x20 /*left*/)
            sub_8008220();
    }
    else
    {
        if (gTrunkCardQty[id] < 250)
            gTrunkCardQty[id]++;
        else
            gTrunkCardQty[id] = 250;
        PlayMusic(55);
    }
}

void InitTrunkData(void)
{
    u16 id;
    gUnkStruct_2020E10.unk0 = 0;
    gUnkStruct_2020E10.unk3 = 1;
    gUnkStruct_2020E10.unk2 = 0;

    for (id = 0; id < TRUNK_SIZE; id++)
        gTotalCardQty[id] = gTrunkCardQty[id] + GetDeckCardQty(id);

    for (id = 0; id < TRUNK_SIZE - 1; id++)
        gUnkStruct_2020E10.unkC[id] = id + 1;
}

void sub_8008F88(u8 val)
{
    switch (val)
    {
    case 0:
        InitTrunkCards();
        break;
    case 1:
        InitTrunkData();
        break;
    case 3:
        sub_80090E8();
        break;
    case 2:
        sub_8009110();
        break;
    case 4:
        sub_800916C();
        break;
    case 5:
        sub_8009140();
        break;
    case 6:
        sub_800919C();
        break;
    case 7:
        sub_8008E0C();
        break;
    case 8:
        sub_8008EA8();
        break;
    case 10:
        sub_80091C0();
        break;
    case 9:
        sub_08009224();
        break;
    }
}

u8 sub_8009010(void)
{
    return gUnkStruct_2020E10.unk3;
}

u16 sub_800901C(u8 val)
{
    s16 r2 = gUnkStruct_2020E10.unk0 + val - 2;

    if (r2 >= 800)
        r2 -= 800;
    else if (r2 < 0)
        r2 += 800;

    return gUnkStruct_2020E10.unkC[r2];
}

u8 sub_8009060(u16 id)
{
    return gTrunkCardQty[id];
}

u8 sub_8009070(void)
{
    return gUnkStruct_2020E10.unk2;
}

void sub_800907C(void)
{
    gUnk2021AB4.unk0 = gUnkStruct_2020E10.unk0;
    gUnk2021AB4.unk2 = TRUNK_SIZE - 2;
}

void sub_8009098(u16 id)
{
    if (gTrunkCardQty[id] < 250)
        gTrunkCardQty[id]++;
    else
        gTrunkCardQty[id] = 250;
}

void sub_80090B8(void)
{
    gUnk2022EB0.unk0 = gUnkStruct_2020E10.unkC;
    gUnk2022EB0.unk8 = TRUNK_SIZE - 1;
    gUnk2022EB0.unkA = gUnk_8DFA6A8[gUnkStruct_2020E10.unk2];
    sub_8034A38();
}

void sub_80090E8(void)
{
    if (--gUnkStruct_2020E10.unk0 < 0)
        gUnkStruct_2020E10.unk0 += TRUNK_SIZE - 1;
    PlayMusic(54);
}

void sub_8009110(void)
{
    if (++gUnkStruct_2020E10.unk0 > TRUNK_SIZE - 2)
        gUnkStruct_2020E10.unk0 -= TRUNK_SIZE - 1;
    PlayMusic(54);
}

void sub_8009140(void)
{
    gUnkStruct_2020E10.unk0 -= 50;
    if (gUnkStruct_2020E10.unk0 < 0)
        gUnkStruct_2020E10.unk0 += TRUNK_SIZE - 1;
    PlayMusic(54);
}

void sub_800916C(void)
{
    gUnkStruct_2020E10.unk0 += 50;
    if (gUnkStruct_2020E10.unk0 > TRUNK_SIZE - 2)
        gUnkStruct_2020E10.unk0 -= TRUNK_SIZE - 1;
    PlayMusic(54);
}

void sub_800919C(void)
{
    if (++gUnkStruct_2020E10.unk3 > 3)
        gUnkStruct_2020E10.unk3 = 0;
    PlayMusic(54);
}

void sub_80091C0(void)
{
    if (++gUnkStruct_2020E10.unk2 > 9)
        gUnkStruct_2020E10.unk2 = 0;
    sub_80091EC(gUnkStruct_2020E10.unk2);
    PlayMusic(54);
}

void sub_80091EC(u8 val)
{
    gUnk2022EB0.unk0 = gUnkStruct_2020E10.unkC;
    gUnk2022EB0.unk8 = TRUNK_SIZE - 1;
    gUnk2022EB0.unkA = gUnk_8DFA6A8[val];
    sub_8034A38();
    gUnkStruct_2020E10.unk0 = 0;
}

void sub_08009224(void){}

extern u32 gUnk_808918C[];
extern u8 gUnk_808C1C0[];
extern u8 g8DFA6B4[];
extern u8 g8DFAB54[];
extern u8 g8DFAFF4[];
extern u16 gUnk_808B860[][30];

// Same exact function as sub_800C834
void sub_8009228 (void)
{
    u8 i;

    LZ77UnCompWram(gUnk_808918C, gBgVram.cbb0);

    switch (gLanguage)
    {
    case FRENCH:
        CpuFastCopy(g8DFA6B4, gBgVram.cbb0, 0x120);
        CpuFastCopy(&g8DFA6B4[32*9], &gBgVram.cbb0[32*30], 0x120);
        CpuFastCopy(&g8DFA6B4[32*18], &gBgVram.cbb0[32*60], 0x120);
        CpuFastCopy(&g8DFA6B4[32*27], &gBgVram.cbb0[32*10], 0x140);
        break;
    case GERMAN:
        CpuFastCopy(g8DFAB54, gBgVram.cbb0, 0x120);
        CpuFastCopy(&g8DFAB54[32*9], &gBgVram.cbb0[32*30], 0x120);
        CpuFastCopy(&g8DFAB54[32*18], &gBgVram.cbb0[32*60], 0x120);
        CpuFastCopy(&g8DFAB54[32*27], &gBgVram.cbb0[32*10], 0x140);
        break;
    case ITALIAN:
        CpuFastCopy(g8DFAFF4, gBgVram.cbb0, 0x120);
        CpuFastCopy(&g8DFAFF4[32*9], &gBgVram.cbb0[32*30], 0x120);
        CpuFastCopy(&g8DFAFF4[32*18], &gBgVram.cbb0[32*60], 0x120);
        CpuFastCopy(&g8DFAFF4[32*27], &gBgVram.cbb0[32*10], 0x140);
        break;
    case SPANISH:
        CpuFastCopy(g8DFAFF4, gBgVram.cbb0, 0x120);
        CpuFastCopy(&g8DFAFF4[32*9], &gBgVram.cbb0[32*30], 0x120);
        CpuFastCopy(&g8DFAFF4[32*18], &gBgVram.cbb0[32*60], 0x120);
        CpuFastCopy(&g8DFAFF4[32*37], &gBgVram.cbb0[32*10], 0x140);
        break;
    }

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808B860[i], &((struct Sbb*)&gBgVram)->sbb7[i], 60);

    CpuCopy32(gUnk_808C1C0, g02000000.bg, 0x80);
    CpuFill16(0, gBgVram.sbb18, 32);
}

extern u16 gUnk_808C240[][30];
extern u8 g8DF811C[];
extern u8 g80907E4[];

u16 sub_08007FEC(u8, u8, u16);
void CopyStringTilesToVRAMBuffer(void *, void *, u16);
void sub_800800C(u8, u8, u16, u16);



void sub_8009364 (void) {
  u8 i;
  u16 r7;
  for (i = 0; i < 20; i++)
    CpuCopy32(gUnk_808C240[i],  &(((struct Sbb*)&gBgVram)->sbbF[i]), 60);
  CpuFill16(0, gBgVram.cbb1, 32);
  r7 = sub_08007FEC(9, 9, 0x7800) & 0xFF00;
  for (i = 0; i < 20; i++) {
    sub_800800C(i + 9, 11, 0x7800, (g8DF811C[i] + 21) | r7);
    sub_800800C(i + 9, 12, 0x7800, (g8DF811C[i] + 23) | r7);
    sub_800800C(i + 9, 13, 0x7800, (g8DF811C[i] + 61) | r7);
    sub_800800C(i + 9, 14, 0x7800, (g8DF811C[i] + 63) | r7);
  }
  CopyStringTilesToVRAMBuffer(&gBgVram.cbb1[32], g80907E4, 0x900);
}


extern u16 gUnk_808C6F0[][30];
extern u8 g8090920[];
extern u8 g8090B94[];
extern u8 g8090B98[];

void sub_8009448(void)
{
    u8 i;
    u16 r8, sb;

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808C6F0[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);

    sb = sub_08007FEC(0, 2, 0x7800);
    r8 = sub_08007FEC(2, 2, 0x7800) & 0xFF00;

    for (i = 0; i < 6; i++)
    {
        sub_800800C(i + 4, 6, 0x7800, (g8DF811C[i] + 29) | r8);
        sub_800800C(i + 4, 7, 0x7800, (g8DF811C[i] + 31) | r8);
        sub_800800C(i + 4, 8, 0x7800, (g8DF811C[i] + 61) | r8);
        sub_800800C(i + 4, 9, 0x7800, (g8DF811C[i] + 63) | r8);
        sub_800800C(i + 4, 10, 0x7800, (g8DF811C[i] + 93) | r8);
        sub_800800C(i + 4, 11, 0x7800, (g8DF811C[i] + 95) | r8);
    }

    for (i = 0; i < 8; i++)
    {
        sub_800800C(i + 4, 12, 0x7800, (g8DF811C[i] + 125) | r8);
        sub_800800C(i + 4, 13, 0x7800, (g8DF811C[i] + 127) | r8);
        sub_800800C(i + 16, 12, 0x7800, (g8DF811C[i] + 141) | r8);
        sub_800800C(i + 16, 13, 0x7800, (g8DF811C[i] + 143) | r8);
        sub_800800C(i + 4, 17, 0x7800, (g8DF811C[i] + 177) | r8);
        sub_800800C(i + 4, 18, 0x7800, (g8DF811C[i] + 179) | r8);
    }

    for (i = 0; i < 4; i++)
    {
        sub_800800C(i + 10, 6, 0x7800, sb);
        sub_800800C(i + 10, 7, 0x7800, sb);
        sub_800800C(i + 10, 8, 0x7800, sb);
        sub_800800C(i + 10, 9, 0x7800, sb);
        sub_800800C(i + 10, 10, 0x7800, sb);
        sub_800800C(i + 10, 11, 0x7800, sb);
    }

    for (i = 0; i < 2; i++)
    {
        sub_800800C(i + 12, 12, 0x7800, sb);
        sub_800800C(i + 12, 13, 0x7800, sb);
    }

    for (i = 0; i < 10; i++)
    {
        sub_800800C(i + 16, 6, 0x7800, (g8DF811C[i] + 41) | r8);
        sub_800800C(i + 16, 7, 0x7800, (g8DF811C[i] + 43) | r8);
        sub_800800C(i + 16, 8, 0x7800, (g8DF811C[i] + 73) | r8);
        sub_800800C(i + 16, 9, 0x7800, (g8DF811C[i] + 75) | r8);
        sub_800800C(i + 16, 10, 0x7800, (g8DF811C[i] + 105) | r8);
        sub_800800C(i + 16, 11, 0x7800, (g8DF811C[i] + 107) | r8);
    }

    for (i = 0; i < 10; i++)
    {
        sub_800800C(i + 16, 14, 0x7800, (g8DF811C[i] + 193) | r8);
        sub_800800C(i + 16, 15, 0x7800, (g8DF811C[i] + 195) | r8);
        sub_800800C(i + 4, 14, 0x7800, (g8DF811C[i] + 157) | r8);
        sub_800800C(i + 4, 15, 0x7800, (g8DF811C[i] + 159) | r8);
    }
    CopyStringTilesToVRAMBuffer(&gBgVram.cbb1[32]/*fix*/, g8090920, 0x900);
}

union {
  u8 a[0x4000]; //2d array?
  u16 b[0x2000]; //3d array?
}extern gVr;
unsigned GetDeckCapacity(void);

void sub_8009784 (void) {
  unsigned char i;
  CpuFill16(0, gVr.a + 0x8000, 32);
  CpuFill16(0, gVr.b + 0x5C00, 0x800);
  CopyStringTilesToVRAMBuffer(gVr.a + 0x8020, g8090B94, 0x801);
  CopyStringTilesToVRAMBuffer(gVr.a + 0x8040, g8090B98, 0x901);
  gVr.b[0x5C2F] = 0x5001;
  sub_800DDA0(GetDeckCapacity(), 0);
  for (i = 0; i < 5; i++)
    gVr.b[0x5C30 + i] = g2021BD0[i] + 0x5209;
  gVr.b[0x5C38] = 0x5001;
  gVr.b[0x5C39] = 0x520D;
  gVr.b[0x5C3A] = 0x5209;
}

// same as sub_800CD88
/*
void sub_8009860 (void) {
  
}*/
