#ifndef GUARD_MINI_CARD_H
#define GUARD_MINI_CARD_H

void sub_80572A8 (unsigned char*, struct DuelCard*);
void sub_805733C (unsigned char*, struct DuelCard*);
void sub_80573D0 (void*, unsigned short); //TODO: change type of void* arg?
void CopyMiniCardPalette (unsigned short*);
void sub_805742C (unsigned char*, unsigned short);
void CopyFaceDownCardTiles (unsigned char*);
void sub_80574A8 (unsigned char, unsigned char);
int sub_80575E0 (unsigned char, unsigned char);
int sub_8057600(unsigned char, unsigned char);
void sub_80576B4 (unsigned char*, unsigned short);
void sub_80576EC (unsigned char*, unsigned short);
int sub_8057790 (unsigned char, unsigned char);
void sub_80577A4 (void);
void sub_8057808 (void);

#endif // GUARD_MINI_CARD_H
