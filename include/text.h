#ifndef GUARD_TEXT_H
#define GUARD_TEXT_H

unsigned short sub_8020698 (const unsigned char*);
const unsigned char* GetCurrentLanguageString (const unsigned char*);
void sub_8020968(void*, u16, u16); //TODO: change type
void CopyStringTilesToVRAMBuffer(void *, const u8 *, unsigned); //TODO: change type
void sub_8020DB8 (u32*, const u8*, u16);

#endif // GUARD_TEXT_H
