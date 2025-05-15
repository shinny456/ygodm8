#include "global.h"


//TODO: rename file to equip_effect.c
extern u8 gLegendarySwordTargets[];
extern u8 gSwordOfDarkDestructionTargets[];
extern u8 gDarkEnergyTargets[];
extern u8 gAxeOfDespairTargets[];
extern u8 gLaserCannonArmorTargets[];
extern u8 gInsectArmorWithLaserCannonTargets[];
extern u8 gElfsLightTargets[];
extern u8 gBeastFangsTargets[];
extern u8 gSteelShellTargets[];
extern u8 gVileGermsTargets[];
extern u8 gBlackPendantTargets[];
extern u8 gSilverBowAndArrowTargets[];
extern u8 gHornOfLightTargets[];
extern u8 gHornOfTheUnicornTargets[];
extern u8 gDragonTreasureTargets[];
extern u8 gElectroWhipTargets[];
extern u8 gCyberShieldTargets[];
extern u8 gMysticalMoonTargets[];
extern u8 gMalevolentNuzzlerTargets[];
extern u8 gVioletCrystalTargets[];
extern u8 gBookOfSecretArtsTargets[];
extern u8 gInvigorationTargets[];
extern u8 gMachineConversionFactoryTargets[];
extern u8 gRaiseBodyHeatTargets[];
extern u8 gFollowWindTargets[];
extern u8 gPowerOfKaishinTargets[];
extern u8 gMagicalLabyrinthTargets[];
extern u8 gSalamandraTargets[];
extern u8 gKunaiWithChainTargets[];
extern u8 gBrightCastleTargets[];
extern u8 gMegamorphTargets[];
extern u8 gWingedTrumpeterTargets[];
extern u8 g7CompletedTargets[];
extern u8 gCyclonLaserTargets[];
int sub_803F04C();
/*
#define SPELL_EFFECT_FLAG (CARD)
//const g81060A8[] = {
  [0] =
}*/


// it's likely all the functions in the file are marked inline,
// but it's better to just duplicate this.
u32 sub_805557C (u8 *arr, u16 cardId) {
  return arr[cardId >> 3] & sub_803F04C(cardId & 7) ? TRUE : FALSE;
}

static inline u32 IsMonsterValidEquipTarget(u8 *arr, u16 cardId)
{
    return arr[cardId >> 3] & sub_803F04C(cardId & 7) ? TRUE : FALSE;
}

// 80555A4
bool32 ConditionLegendarySword(u16 cardId)
{
    return IsMonsterValidEquipTarget(gLegendarySwordTargets, cardId);
}

// 80555D4
bool32 ConditionSwordOfDarkDestruction(u16 cardId)
{
    return IsMonsterValidEquipTarget(gSwordOfDarkDestructionTargets, cardId);
}

// 8055604
bool32 ConditionDarkEnergy(u16 cardId)
{
    return IsMonsterValidEquipTarget(gDarkEnergyTargets, cardId);
}

// 8055634
bool32 ConditionAxeOfDespair(u16 cardId)
{
    return IsMonsterValidEquipTarget(gAxeOfDespairTargets, cardId);
}

// 8055664
bool32 ConditionLaserCannonArmor(u16 cardId)
{
    return IsMonsterValidEquipTarget(gLaserCannonArmorTargets, cardId);
}

// 8055694
bool32 ConditionInsectArmorWithLaserCannon(u16 cardId)
{
    return IsMonsterValidEquipTarget(gInsectArmorWithLaserCannonTargets, cardId);
}

// 80556C4
bool32 ConditionElfsLight(u16 cardId)
{
    return IsMonsterValidEquipTarget(gElfsLightTargets, cardId);
}

// 80556F4
bool32 ConditionBeastFangs(u16 cardId)
{
    return IsMonsterValidEquipTarget(gBeastFangsTargets, cardId);
}

// 8055724
bool32 ConditionSteelShell(u16 cardId)
{
    return IsMonsterValidEquipTarget(gSteelShellTargets, cardId);
}

// 8055754
bool32 ConditionVileGerms(u16 cardId)
{
    return IsMonsterValidEquipTarget(gVileGermsTargets, cardId);
}

// 8055784
bool32 ConditionBlackPendant(u16 cardId)
{
    return IsMonsterValidEquipTarget(gBlackPendantTargets, cardId);
}

// 80557B4
bool32 ConditionSilverBowAndArrow(u16 cardId)
{
    return IsMonsterValidEquipTarget(gSilverBowAndArrowTargets, cardId);
}

// 80557E4
bool32 ConditionHornOfLight(u16 cardId)
{
    return IsMonsterValidEquipTarget(gHornOfLightTargets, cardId);
}

// 8055814
bool32 ConditionHornOfTheUnicorn(u16 cardId)
{
    return IsMonsterValidEquipTarget(gHornOfTheUnicornTargets, cardId);
}

// 8055844
bool32 ConditionDragonTreasure(u16 cardId)
{
    return IsMonsterValidEquipTarget(gDragonTreasureTargets, cardId);
}

// 8055874
bool32 ConditionElectroWhip(u16 cardId)
{
    return IsMonsterValidEquipTarget(gElectroWhipTargets, cardId);
}

// 80558A4
bool32 ConditionCyberShield(u16 cardId)
{
    return IsMonsterValidEquipTarget(gCyberShieldTargets, cardId);
}

// 80558D4
bool32 ConditionMysticalMoon(u16 cardId)
{
    return IsMonsterValidEquipTarget(gMysticalMoonTargets, cardId);
}

// 8055904
bool32 ConditionMalevolentNuzzler(u16 cardId)
{
    return IsMonsterValidEquipTarget(gMalevolentNuzzlerTargets, cardId);
}

// 8055934
bool32 ConditionVioletCrystal(u16 cardId)
{
    return IsMonsterValidEquipTarget(gVioletCrystalTargets, cardId);
}

// 8055964
bool32 ConditionBookOfSecretArts(u16 cardId)
{
    return IsMonsterValidEquipTarget(gBookOfSecretArtsTargets, cardId);
}

// 8055994
bool32 ConditionInvigoration(u16 cardId)
{
    return IsMonsterValidEquipTarget(gInvigorationTargets, cardId);
}

// 80559C4
bool32 ConditionMachineConversionFactory(u16 cardId)
{
    return IsMonsterValidEquipTarget(gMachineConversionFactoryTargets, cardId);
}

// 80559F4
bool32 ConditionRaiseBodyHeat(u16 cardId)
{
    return IsMonsterValidEquipTarget(gRaiseBodyHeatTargets, cardId);
}

// 8055A24
bool32 ConditionFollowWind(u16 cardId)
{
    return IsMonsterValidEquipTarget(gFollowWindTargets, cardId);
}

// 8055A54
bool32 ConditionPowerOfKaishin(u16 cardId)
{
    return IsMonsterValidEquipTarget(gPowerOfKaishinTargets, cardId);
}

// 8055A84
bool32 ConditionMagicalLabyrinth(u16 cardId)
{
    return IsMonsterValidEquipTarget(gMagicalLabyrinthTargets, cardId);
}

// 8055AB4
bool32 ConditionSalamandra(u16 cardId)
{
    return IsMonsterValidEquipTarget(gSalamandraTargets, cardId);
}

// 8055AE4
bool32 ConditionKunaiWithChain(u16 cardId)
{
    return IsMonsterValidEquipTarget(gKunaiWithChainTargets, cardId);
}

// 8055B14
bool32 ConditionBrightCastle(u16 cardId)
{
    return IsMonsterValidEquipTarget(gBrightCastleTargets, cardId);
}

// 8055B44
bool32 ConditionMegamorph(u16 cardId)
{
    return IsMonsterValidEquipTarget(gMegamorphTargets, cardId);
}

// 8055B74
bool32 ConditionWingedTrumpeter(u16 cardId)
{
    return IsMonsterValidEquipTarget(gWingedTrumpeterTargets, cardId);
}

// 8055BA4
bool32 Condition7Completed(u16 cardId)
{
    return IsMonsterValidEquipTarget(g7CompletedTargets, cardId);
}

// 8055BD4
bool32 ConditionCyclonLaser(u16 cardId)
{
    return IsMonsterValidEquipTarget(gCyclonLaserTargets, cardId);
}
