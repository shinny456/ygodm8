#include "global.h"
#include "duel.h"
#include "constants/card_ids.h"

/*
extern u16 gGodCards[];

bool32 IsGodCard(u16 id)
{
    u8 i;
    
    for (i = 0; gGodCards[i]; i++)
        if (gGodCards[i] == id)
            return TRUE;
    
    return FALSE;
}

s8 sub_8043418(struct Zone** monZones, u16 id)
{
    u8 i;
    s8 c = 0;
    
    for (i = 0; i < 5; i++)
    {
        u16 monId = (*monZones++)->id;
        if (IsGodCard(monId) == TRUE)
            monId = CARD_NONE;
        
        if (monId == id)
            c++;
    }
    return c;
}

int sub_8043538(struct Zone** monZones) //NumGodCardsAndEmptyZones
{
    return sub_8043418(monZones, 0);
}*/



void sub_800B318(struct Unk2021AC0*);

void sub_801CEBC(void);

bool32 IsGodCard(u16); //802607C

bool32 IsWingedDragonOfRa(u16 id); //80260BC

void sub_803F29C(void);

void sub_803F4C0(void);

void sub_803F99C(u16); //sub player life points

void sub_803F9E4(u16); //sub opponent life points

void sub_80402BC(struct Zone*); //clear zone?

void sub_8040360(struct Zone*); //reset num perm powerups
void sub_8040368(struct Zone*); //Inc num perm powerups

void sub_804037C(struct Zone*); //dec num powerups?

void sub_80403E8(struct Zone*); //reset num temp powerups

s8 sub_804069C(struct Zone*); //getnumpowerups?

void sub_8040928(struct Zone*, struct Zone*); //copy card from one zone to another (src to dst)?

void sub_8041140(u8); //set field gfx

u8 sub_8042FC0(struct Zone**); //get highest atk mon?

int sub_80433E4(struct Zone**, u16 id); //num of card in a particular row

int sub_8043528(struct Zone**); //num of empty zones in a particular row 
int sub_8043538(struct Zone**); //num of empty zones and god card zones

int sub_80435C8(struct Zone**);

int sub_8043694(struct Zone**, u16 id); //get zone card is located at

void sub_8045338(struct Zone*, u8);


u32 GetCurrTurn(void); //8058744


void EffectRelinquished(void)
{
    if (sub_8043538(gBoard[1]) != MAX_ZONES)
    {
        u8 zone = sub_8042FC0(gBoard[1]);
        
        sub_8040928(gBoard[gMonEffect.row][gMonEffect.zone], gBoard[1][zone]);
                    
        gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
        gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = FALSE;
        gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK; 
        gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0; 
        gBoard[gMonEffect.row][gMonEffect.zone]->unk4 = 0;
        gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0; 
        
        sub_80402BC(gBoard[1][zone]);
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = RELINQUISHED;
        sub_801CEBC();
    }
}

void EffectThousandEyesRestrict(void)
{
    if (sub_8043538(gBoard[1]) != MAX_ZONES)
    {
        u8 zone = sub_8042FC0(gBoard[1]);
        
        sub_8040928(gBoard[gMonEffect.row][gMonEffect.zone], gBoard[1][zone]);
    
        gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
        gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = FALSE;
        gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK; 
        gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0; 
        gBoard[gMonEffect.row][gMonEffect.zone]->unk4 = 0;
        gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);

        sub_80402BC(gBoard[1][zone]);
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = THOUSAND_EYES_RESTRICT;
        sub_801CEBC();
    }
}

void EffectTimeWizard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[2][i]->id == BABY_DRAGON)
            gBoard[2][i]->id = THOUSAND_DRAGON;
        
        if (gBoard[2][i]->id == DARK_MAGICIAN)
            gBoard[2][i]->id = DARK_SAGE;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = TIME_WIZARD;
        sub_801CEBC();
    }
}

void EffectCastleOfDarkIllusions(void)
{
    u8 i;
    
    gDuel.field = FIELD_YAMI;
    
    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id != CARD_NONE)
            gBoard[2][i]->position = FACE_DOWN;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == CASTLE_OF_DARK_ILLUSIONS)
            gBoard[2][i]->position = FACE_UP;
    
    if (!gUnk_02021C08)
    {
        sub_8041140(gDuel.field);
        gUnk_02021C10.unk0 = CASTLE_OF_DARK_ILLUSIONS;
        sub_801CEBC();
    }
}

void EffectPumpkingTheKingOfGhosts(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[2][i]->id == ARMORED_ZOMBIE)
            sub_8040368(gBoard[2][i]);
        if (gBoard[2][i]->id == DRAGON_ZOMBIE)
            sub_8040368(gBoard[2][i]);
        if (gBoard[2][i]->id == CLOWN_ZOMBIE)
            sub_8040368(gBoard[2][i]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = PUMPKING_THE_KING_OF_GHOSTS;
        sub_801CEBC();
    }
}

void EffectCatapultTurtle(void)
{
    u8 i;
    u16 totalAtk = 0;
    
    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gMonEffect.zone != i && gBoard[2][i]->id != CARD_NONE && !gBoard[2][i]->isLocked)
        {
            gUnk2021AC0.id = gBoard[2][i]->id;
            gUnk2021AC0.field = gDuel.field;
            gUnk2021AC0.numPowerup = sub_804069C(gBoard[2][i]);
            sub_800B318(&gUnk2021AC0);
            totalAtk += gCardInfo.atk;
            sub_8045338(gBoard[2][i], 0);
        }
    }
    if (GetCurrTurn() == TURN_PLAYER)
        sub_803F9E4(totalAtk);
    else
        sub_803F99C(totalAtk);

    sub_803F29C();
    sub_803F4C0();
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = CATAPULT_TURTLE;
        sub_801CEBC();
    }
}

void EffectTrapMaster(void)
{
    if (sub_8043528(gBoard[3])) //num of empty zones
    {
        u8 zone = sub_80435C8(gBoard[3]); //return empty zone
        gBoard[3][zone]->id = ACID_TRAP_HOLE;
        gBoard[3][zone]->position = FACE_DOWN;
        gBoard[3][zone]->isLocked = FALSE;
        gBoard[3][zone]->battlePosition = POS_ATK;
        gBoard[3][zone]->unkTwo = 0;
        gBoard[3][zone]->unk4 = 0;
        sub_8040360(gBoard[3][zone]);
        sub_80403E8(gBoard[3][zone]);
        gBoard[3][zone]->unkFive = 0;
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = TRAP_MASTER;
        gUnk_02021C10.unk2 = ACID_TRAP_HOLE;
        sub_801CEBC();
    }
}

void EffectDarkMagicianGirl(void)
{
    if (gNotSure[CUR_PLAYER]->graveyard == DARK_MAGICIAN)
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    if (gNotSure[CUR_OPPONENT]->graveyard == DARK_MAGICIAN)
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = DARK_MAGICIAN_GIRL;
        gUnk_02021C10.unk2 = DARK_MAGICIAN;
        sub_801CEBC();
    }
}

void EffectGyakutennoMegami(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[2][i]->id != CARD_NONE)
        {
            gUnk2021AC0.id = gBoard[2][i]->id;
            gUnk2021AC0.field = gDuel.field;
            gUnk2021AC0.numPowerup = sub_804069C(gBoard[2][i]);
            sub_800B318(&gUnk2021AC0);
            if (gCardInfo.atk <= 500)
                sub_8040368(gBoard[2][i]);
        }
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = GYAKUTENNO_MEGAMI;
        sub_801CEBC();
    }
}

void EffectDoron(void)
{
    if (sub_8043528(gBoard[2]))
    {
        u8 zone = sub_80435C8(gBoard[2]);
        
        sub_8040928(gBoard[2][zone], gBoard[gMonEffect.row][gMonEffect.zone]);
        gBoard[2][zone]->unkFive = 0;
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = DORON;
        sub_801CEBC();
    }
}

void EffectLabyrinthTank(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == LABYRINTH_WALL)
           sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = LABYRINTH_TANK;
        gUnk_02021C10.unk2 = LABYRINTH_WALL;
        sub_801CEBC();
    }
}

void EffectSpiritOfTheBooks(void)
{
    if (sub_8043528(gBoard[2]))
    {
        u8 zone = sub_80435C8(gBoard[2]);
        
        gBoard[gMonEffect.row][zone]->id = BOO_KOO;
        gBoard[gMonEffect.row][zone]->position = FACE_UP;
        gBoard[gMonEffect.row][zone]->isLocked = FALSE;
        gBoard[gMonEffect.row][zone]->battlePosition = POS_ATK; 
        gBoard[gMonEffect.row][zone]->unkTwo = 0; 
        gBoard[gMonEffect.row][zone]->unk4 = 0;
        sub_8040360(gBoard[gMonEffect.row][zone]);
        sub_80403E8(gBoard[gMonEffect.row][zone]);
        gBoard[gMonEffect.row][zone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = SPIRIT_OF_THE_BOOKS;
        gUnk_02021C10.unk2 = BOO_KOO;
        sub_801CEBC();
    }
}

void EffectBeastKingOfTheSwamps(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
        if (IsGodCard(gBoard[1][i]->id) != TRUE)
            sub_8045338(gBoard[1][i], 1);
    
    for (i = 0; i < MAX_ZONES; i++)
        if (IsGodCard(gBoard[2][i]->id) != TRUE)
            sub_8045338(gBoard[2][i], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BEASTKING_OF_THE_SWAMPS;
        sub_801CEBC();
    }
}

void EffectNemuriko(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[1][i]->id != CARD_NONE)
            gBoard[1][i]->isLocked = TRUE;
    
    //unintended behavior? 
    //description says it locks enemy monsters
    //while this locks all monsters on the field
    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id != CARD_NONE)
            gBoard[2][i]->isLocked = TRUE;

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = NEMURIKO;
        sub_801CEBC();
    }
}

void EffectToadMaster(void)
{
    if (sub_8043528(gBoard[2]))
    {
        u8 emptyZone = sub_80435C8(gBoard[2]);
        gBoard[gMonEffect.row][emptyZone]->id = FROG_THE_JAM;
        gBoard[gMonEffect.row][emptyZone]->position = FACE_UP;
        gBoard[gMonEffect.row][emptyZone]->isLocked = FALSE;
        gBoard[gMonEffect.row][emptyZone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][emptyZone]->unkTwo = 0;
        gBoard[gMonEffect.row][emptyZone]->unk4 = 0;
        sub_8040360(gBoard[gMonEffect.row][emptyZone]);
        sub_80403E8(gBoard[gMonEffect.row][emptyZone]);
        gBoard[gMonEffect.row][emptyZone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = TOAD_MASTER;
        gUnk_02021C10.unk2 = FROG_THE_JAM;
        sub_801CEBC();
    }
}

void EffectHoshiningen(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[2][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
            sub_804037C(gBoard[2][i]);
        if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
            sub_8040368(gBoard[2][i]);
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = HOSHININGEN;
        sub_801CEBC();
    }
}

void EffectWitchsApprentice(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[2][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
            sub_804037C(gBoard[2][i]);
        if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
            sub_8040368(gBoard[2][i]);
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = WITCHS_APPRENTICE;
        sub_801CEBC();
    }
}

void EffectMysticLamp(void)
{
    gUnk2021AC0.id = gBoard[gMonEffect.row][gMonEffect.zone]->id;
    gUnk2021AC0.field = gDuel.field;
    gUnk2021AC0.numPowerup = sub_804069C(gBoard[gMonEffect.row][gMonEffect.zone]);
    sub_800B318(&gUnk2021AC0);
    
    if (GetCurrTurn() == TURN_PLAYER)
        sub_803F9E4(gCardInfo.atk);
    else
        sub_803F99C(gCardInfo.atk);
    
    sub_803F29C();
    sub_803F4C0();
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = MYSTIC_LAMP;
        sub_801CEBC();
    }
}

void EffectLeghul(void)
{
    gUnk2021AC0.id = gBoard[gMonEffect.row][gMonEffect.zone]->id;
    gUnk2021AC0.field = gDuel.field;
    gUnk2021AC0.numPowerup = sub_804069C(gBoard[gMonEffect.row][gMonEffect.zone]);
    sub_800B318(&gUnk2021AC0);
    
    if (GetCurrTurn() == TURN_PLAYER)
        sub_803F9E4(gCardInfo.atk);
    else
        sub_803F99C(gCardInfo.atk);
    
    sub_803F29C();
    sub_803F4C0();
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = LEGHUL;
        sub_801CEBC();
    }
}

void EffectInsectQueen(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[2][i]->id);
        if (gCardInfo.type == TYPE_INSECT)
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    }
    
    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[1][i]->id);
        if (gCardInfo.type == TYPE_INSECT)
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = INSECT_QUEEN;
        sub_801CEBC();
    }
}

void EffectObeliskTheTormentor(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
        if (IsWingedDragonOfRa(gBoard[1][i]->id) != TRUE)
            sub_8045338(gBoard[1][i], 1);
    
    if (GetCurrTurn() == TURN_PLAYER)
        sub_803F9E4(4000);
    else
        sub_803F99C(4000);
    
    sub_803F29C();
    sub_803F4C0();
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void EffectSliferTheSkyDragon(void)
{
    u8 i;
    
    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[4][i]->id != CARD_NONE)
        {
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
        }
    }
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void EffectDarkMagicianGirl2(void)
{
    if (gNotSure[CUR_PLAYER]->graveyard == DARK_MAGICIAN)
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    if (gNotSure[CUR_OPPONENT]->graveyard == DARK_MAGICIAN)
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    
    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = DARK_MAGICIAN;
        sub_801CEBC();
    }
}

void EffectAlphaTheMagnetWarrior(void)
{
    if (sub_80433E4(gBoard[2], BETA_THE_MAGNET_WARRIOR) > 0)
    {
        if (sub_80433E4(gBoard[2], GAMMA_THE_MAGNET_WARRIOR) > 0)
        {
           gBoard[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
           gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK; 
           gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0; 
           sub_8040360(gBoard[gMonEffect.row][gMonEffect.zone]);
           sub_80403E8(gBoard[gMonEffect.row][gMonEffect.zone]);
           gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
           sub_80402BC(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], BETA_THE_MAGNET_WARRIOR)]);
           sub_80402BC(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], GAMMA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = VALKYRION_THE_MAGNA_WARRIOR;
        sub_801CEBC();
    }
}

void EffectBetaTheMagnetWarrior(void)
{
    if (sub_80433E4(gBoard[2], ALPHA_THE_MAGNET_WARRIOR) > 0)
    {
        if (sub_80433E4(gBoard[2], GAMMA_THE_MAGNET_WARRIOR) > 0)
        {
           gBoard[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
           gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK; 
           gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0; 
           sub_8040360(gBoard[gMonEffect.row][gMonEffect.zone]);
           sub_80403E8(gBoard[gMonEffect.row][gMonEffect.zone]);
           gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
           sub_80402BC(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], ALPHA_THE_MAGNET_WARRIOR)]);
           sub_80402BC(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], GAMMA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = VALKYRION_THE_MAGNA_WARRIOR;
        sub_801CEBC();
    }
}

void EffectGammaTheMagnetWarrior(void)
{
    if (sub_80433E4(gBoard[2], ALPHA_THE_MAGNET_WARRIOR) > 0)
    {
        if (sub_80433E4(gBoard[2], BETA_THE_MAGNET_WARRIOR) > 0)
        {
           gBoard[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
           gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK; 
           gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0; 
           sub_8040360(gBoard[gMonEffect.row][gMonEffect.zone]);
           sub_80403E8(gBoard[gMonEffect.row][gMonEffect.zone]);
           gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
           sub_80402BC(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], ALPHA_THE_MAGNET_WARRIOR)]);
           sub_80402BC(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], BETA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = VALKYRION_THE_MAGNA_WARRIOR;
        sub_801CEBC();
    }
}



/*
void sub_803FEA4(void)
{
    u8 i;
    
    for (i = 0; i < 5; i++)
        gUnk2024040[0][i] = &gDuel.opBackRow[4-i];
    
    for (i = 0; i < 5; i++)
        gUnk2024040[1][i] = &gDuel.opMonRow[4-i];
    
    for (i = 0; i < 5; i++)
        gUnk2024040[2][i] = &gDuel.plMonRow[i];
    
    for (i = 0; i < 5; i++)
        gUnk2024040[3][i] = &gDuel.plBackRow[i];
    
    for (i = 0; i < 5; i++)
        gUnk2024040[4][i] = &gDuel.hands[0][i];
    
    for (i = 0; i < 5; i++)
        boardPtrs[0][i] = &gDuel.opBackRow[i];
    
    for (i = 0; i < 5; i++)
        boardPtrs[1][i] = &gDuel.opMonRow[i];
    
    for (i = 0; i < 5; i++)
        boardPtrs[2][i] = &gDuel.plMonRow[i];
    
    for (i = 0; i < 5; i++)
        boardPtrs[3][i] = &gDuel.plBackRow[i];
    
    for (i = 0; i < 5; i++)
        boardPtrs[4][i] = &gDuel.hands[0][i];
    
    gNotSure[0] = &gDuel.player;
    gNotSure[1] = &gDuel.opponent;
    
    for (i = 0; i < 5; i++)
        handCurrPlayer[i] = &gDuel.hands[0][i];
    
    for (i = 0; i < 5; i++)
        handCurrEnemy[i] = &gDuel.hands[1][i];
}

void sub_800E11C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    
    sub_8040928(boardPtrs[row3][col3], boardPtrs[row2][col2]);
    sub_80402BC(boardPtrs[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}*/
