#ifndef GUARD_DUEL_TEXTBOX_H
#define GUARD_DUEL_TEXTBOX_H

struct DuelTextbox {
  u32 textCursor; // index into textBuffer
  u32 tileCursor;
  u8 mode; // player name, card desc, card name, etc
  u8 filler9[3];
  u8* textBuffer; // ptr to text data
  u16 blinkFrameCounter; // indicator blinks when dialogue can be advanced
  u16 cardId;
  u16 unk14;
  u16 unk16;
  u16 unk18;
  u16 unk1A;
  u8 glyphOffset; // used to iterate substrings?
};

#endif // GUARD_DUEL_TEXTBOX_H
