#ifndef GUARD_GFX_REG_BUFFERS_H
#define GUARD_GFX_REG_BUFFERS_H

extern unsigned short gBG0HOFS;
extern unsigned short gBG0VOFS;
extern unsigned short gBG1HOFS;
extern unsigned short gBG1VOFS;
extern unsigned short gBG2HOFS;
extern unsigned short gBG2VOFS;
extern unsigned short gBG3HOFS;
extern unsigned short gBG3VOFS;
extern unsigned short gBG2PA;
extern unsigned short gBG2PB;
extern unsigned short gBG2PC;
extern unsigned short gBG2PD;
extern unsigned short gBG2X_L;
extern unsigned short gBG2X_H;
extern unsigned short gBG2Y_L;
extern unsigned short gBG2Y_H;
extern unsigned short gBLDCNT;
extern unsigned short gBLDALPHA;
extern unsigned short gBLDY;

void LoadBgOffsets (void);
void LoadBlendingRegs (void);
void LoadOam (void);
void LoadPalettes (void);
void LoadVRAM (void);
void LoadAffineRegs (void);
void LoadBgVRAM (void);
void LoadCharblock0 (void);
void LoadCharblock1 (void);
void LoadCharblock2 (void);
void LoadCharblock3 (void);
void LoadCharblock3 (void);
void LoadObjVRAM (void);
void LoadCharblock4 (void);
void LoadCharblock5 (void);
void DisableDisplay (void);

#endif // GUARD_GFX_REG_BUFFERS_H
