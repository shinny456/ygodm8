OUTPUT_ARCH(arm)

UNK2C5 = 0x2C5;
UNK12 = 0x12;

SECTIONS
{
    /* bss*/
    gPaletteBuffer = 0x02000000;
    gBgVram = 0x02000400;
    gVr = 0x02000400;
    gVramBuffer = 0x02000400;
    gOamBuffer = 0x02018400;
    gSharedMem = 0x02018800;
    /*^these are possibly defined in share.c, because the next symbol is g201CB20, which is in that file*/

    g201CB20 = 0x201CB20;
    g201CB24 = 0x201CB24;
    g201CB28 = 0x201CB28;
    g201CB2C = 0x201CB2C;


    g201CB30 = 0x0201CB30;
    g201CB34 = 0x0201CB34;

    . = 0x0201CB38;
    .bss : {
      src/card.o(.bss);
      src/code2.o(.bss);
      src/monster_attack_screen.o(.bss);
      src/deck_menu.o(.bss);
    }

    /*
    gUnk201CB38 = 0x0201CB38;
    gUnk201CB39 = 0x0201CB39;

    g201CB3C = 0x201CB3C;
    g201CB40 = 0x201CB40;
    g201CB44 = 0x201CB44;

    g201CB50 = 0x201CB50;
    */


    g201CB58 = 0x201CB58;
    g201CB59 = 0x201CB59;
    g201CB60 = 0x201CB60;
    g201EE60 = 0x0201EE60;
    g201EE61 = 0x0201EE61;
    g201EE68 = 0x201EE68;
    gCardNameWorkingBuffer = 0x201EE70;
    gCardNameRenderBuffer = 0x201EEE0;

    . = 0x02020A00;
    .ewram : {
      *libgcc.a:*o(.bss);
    }

    g2020C00 = 0x2020C00;

    g2020DC8 = 0x02020DC8;
    g2020DCC = 0x02020DCC;
    g2020DD0 = 0x02020DD0;

    gPlayerName = 0x02020DE0;


    gRepeatedOrNewButtons = 0x02020DF4;
    gPressedButtons = 0x02020DF8; /* TODO: rename to gButtons */
    gNewButtons = 0x02020DFC;
    g2020E00 = 0x2020E00;
    gRepeatedButtonsCounter = 0x2020E04;

    gTrunkMenu = 0x02020E10;
    gTotalCardQty = 0x02021460;
    gTrunkCardQty = 0x02021790;
    gUnk2021AB4 = 0x02021AB4;


    gStatMod = 0x02021AC0;
    gCardInfo = 0x02021AD0;
    gShopSelectedCard = 0x2021AF0;
    gAnte = 0x02021B04;

    g2021B10 = 0x2021B10;
    g2021B50 = 0x2021B50;
    g2021B90 = 0x2021B90;
    gDigitBufferU64 = 0x2021BE0;
    g2021BF8 = 0x02021BF8;
    sAI_Command = 0x02021C00;
    gHideEffectText = 0x02021C08;
    gCardEffectTextData = 0x02021C10;
    gDeckCapacity = 0x02021C1C;
    gDuelistLevel = 0x02021C20;
    gDeckMenu = 0x02021C30;
    g2021C8C = 0x02021C8C;
    g2021C90 = 0x2021C90;
    gLanguage = 0x02021CF8;
    gUnk2021D00 = 0x02021D00;
    gUnk2021D04 = 0x02021D04;
    gDuelData = 0x02021D10;

    g2021D6C = 0x2021D6C;

    g2021D70 = 0x02021D70;
    g2021D80 = 0x02021D80;
    g2021D98 = 0x02021D98;
    g2021D9C = 0x02021D9C;


    gLinkDuelMenuData = 0x02021DA0;

    sGameMenuData = 0x02021DB0;

    gDuelistStatus = 0x02021DB8;

    gCardPasswordDigits = 0x02021DC0;

    /*menu_input (menu_button_input?)*/
    gInputRepeatTimer = 0x02021DC8;
    gFilteredInput = 0x02021DCC;




    gMoney = 0x2021DD0;

    /*???*/
    g2021DD8 = 0x2021DD8;

    /*permanent_effect but also used in turn_effect (might be one file)*/
    gActiveEffect = 0x2021DE0;

    /*card_shop*/
    gShopCardQty = 0x2021DF0;
    gShopTempCardQty = 0x2022120;
    sCardShop = 0x2022450;
    gPlayerTempCardQty = 0x2022B80;


    /*card_sort*/
    gCardSortContext = 0x02022EB0;


    /*trade_menu*/
    g2022EC0 = 0x02022EC0;
    g20231E1 = 0x20231E1;
    g2023E68 = 0x2023E68;
    g2023E69 = 0x2023E69;
    g2023E7B = 0x2023E7B;


    sActionData = 0x02023E80;
    gUnk2023EA0 = 0x02023EA0;
    gDuel = 0x02023EC0;
    gTurnDuelistBattleState = 0x02023FC0;
    gTurnZones = 0x02023FD0;
    gFixedZones = 0x2024040;
    gTurnHands = 0x20240B0;
    gSelectedCard = 0x20240D8;
    gIsPlayerTurnOver = 0x20240E0;
    g20240E4 = 0x20240E4;
    gDuelDecks = 0x20240F0;
    g2024144 = 0x2024144;
    gDuelType = 0x020241FC;
    gDuelCursor = 0x020241F0;

    gNumTributes = 0x02024200;

    gBG3HOFS = 0x2024204;
    gBG2VOFS = 0x202420C;
    gBG0HOFS = 0x2024214;
    gBG3VOFS = 0x2024218;
    gBLDCNT = 0x2024228;
    gBLDALPHA = 0x2024238;
    gBLDY = 0x2024230;
    gBG1VOFS = 0x202422C;
    gBG0VOFS = 0x2024240;
    gBG1HOFS = 0x2024248;
    gBG2HOFS = 0x202424C;
    gBG2PA = 0x2024234;
    gBG2PB = 0x2024220;
    gBG2PC = 0x2024208;
    gBG2PD = 0x2024224;
    gBG2X_L = 0x202423C;
    gBG2X_H = 0x2024210;
    gBG2Y_L = 0x2024244;
    gBG2Y_H = 0x202421C;

    gMonEffect = 0x02024250;
    gLifePointsOutsideDuel = 0x02024254;

    gDuelLifePoints = 0x02024258;

    gSpellEffectData = 0x02024260;

    gOverworld = 0x02024270;

    g20244BC = 0x20244BC;

    gFlags = 0x20244D0;

    sPasswordData = 0x2024510;
    g2024520 = 0x2024520;
    g2024588 = 0x2024588;
    g202458C = 0x202458C;
    g2024590 = 0x2024590;

    /* rng */
    gLfsrState = 0x2024594;
    gLfsrStateBackup = 0x2024598;


    gTrapEffectData = 0x020245A0;
    gWhoseTurn = 0x020245A8;
    g20245AC = 0x20245AC;
    gDigitBufferU16 = 0x2021BD0;
    g2025840 = 0x2025840;

    g3000400 = 0x3000400;
    g3000C00 = 0x3000C00;
    g3000C38 = 0x03000C38;
    g3000C6C = 0x03000C6C;
    g3000C78 = 0x03000C78;
    g3001078 = 0x03001078;

    . = 0x08000000;
    .text :
    {
        asm/crt0.o(.text);

        src/cutscene.o(.text);
        asm/cutscenes.o(.text);
        src/world_map.o(.text);
        asm/world_map.o(.text);
        src/start_menu.o(.text);
        src/naming_screen.o(.text);
        asm/naming_screen.o(.text);
        asm/status_menu.o(.text);

        /* SDK\src\samples\functional_sample\share.c */
        src/code_8008030.o(.text);


        src/trunk.o(.text);
        asm/code_8009228.o(.text);
        src/code_800AC64.o(.text);

        asm/code_8009228.o(.text2);

        src/card.o(.text); /*second part is duel_trunk_menu?*/

        asm/code1.o(.text);
        src/digit.o(.text);
        src/compression.o(.text);
        src/code2.o(.text);
        src/monster_attack_screen.o(.text);
        src/effect_text.o(.text);

        src/deck_menu.o(.text);
        asm/code2.o(.text);
        src/code_801EF30.o(.text);
        asm/code2.o(.text2);

        src/main.o(.text);
        src/exodia.o(.text);
        src/text.o(.text);
        src/duel_main.o(.text);
        asm/code3.o(.text);
        src/main_menu.o(.text);
        asm/main_menu.o(.text);
        src/duel_status.o(.text);
        src/ante.o(.text);
        src/password_terminal.o(.text);
        src/god_cards.o(.text);


        /*menu_input*/
        src/code_802612C.o(.text);


        src/return_monster.o(.text);
        src/print_card.o(.text);
        src/copyright_screens.o(.text);


        src/money.o(.text);


        /*combine these 3 files?*/
        src/permanent_effect.o(.text);
        asm/code3.o(.text3);
        src/turn_effect.o(.text);



        src/card_shop.o(.text);

        src/code_8030B14.o(.text);
        asm/code3.o(.text4);

        src/card_sort.o(.text);
        asm/code3.o(.text5);
        src/code_8034E30.o(.text);
        src/title_screen.o(.text);
        src/trade_menu.o(.text);
        asm/code3.o(.text6);
        src/code_803ED78.o(.text); /*clear_gfx_ram_buffers.o */

        src/FINAL_effect.o(.text);
        src/code_803F02C.o(.text);
        src/duel_textbox.o(.text);
        src/code_8041C94.o(.text);
        src/code_80421CC.o(.text);
        src/duel_util.o(.text);
        src/code_8043EF4.o(.text);

        src/code_8044E50.o(.text);
        asm/code_803F02C.o(.text);

        src/code_80452A8.o(.text);
        src/tribute.o(.text);
        src/io_buffers.o(.text);
        src/monster_effects.o(.text)
        src/life_points.o(.text)
        src/spell_effects.o(.text)


        /* move to overworld directory */
        src/overworld.o(.text);
        src/overworld_gfx_effects.o(.text);
        src/code_8051958.o(.text);
        src/map_transition.o(.text);
        src/script.o(.text); /*TODO: rename to script_main?*/
        src/script_commands1.o(.text);
        src/script_commands2.o(.text);

        src/flag.o(.text);

        src/spell_effects_util.o(.text); /*equip effects*/
        src/card_passwords.o(.text); /*card_password*/
        src/rng.o(.text);
        src/mini_card.o(.text);
        src/trap_effects.o(.text);
        src/turn.o(.text);

        /*lib code*/

        asm/code_80584B4.o(.text);
        *libgcc.a:*.o(.text);
        *libc.a:bzero.o(.text);
        *libc.a:memcpy.o(.text);
        *libc.a:strcpy.o(.text);
        *libc.a:strlen.o(.text);
        *libc.a:strncpy.o(.text);
        *libc.a:realloc.o(.text);


        /*data*/

        data/data.o(.rodata);
        src/data/starter_trunk.o(.rodata);
        data/data2.o(.rodata);
        src/data/cards_data.o(.rodata);
        data/data3.o(.rodata);
        src/compression.o(.rodata);
        data/data3.o(.rodata2);
        src/data/decks.o(.rodata);
        data/data4.o(.rodata);
        src/monster_effects.o(.rodata);
        src/spell_effects.o(.rodata);
        data/data4.o(.rodata2);

        *libgcc.a:*.o(.rodata);

        data/data5.o(.rodata);
        src/code_803F02C.o(.rodata);
        data/data5.o(.rodata2);
        src/card_passwords.o(.rodata);
        data/data5.o(.rodata3);
        src/turn.o(.rodata);
        data/data6.o(.rodata);
    }


    gUnk8094C37 = 0x8094C37;
    gUnk8094CC3 = 0x8094CC3;
    gUnk8094FE4 = 0x8094FE4;
    gUnk8F985E0 = 0x8F985E0;
    gDuelistLevelTooLowText = 0x8DFB654;
    gUnk8E00B30 = 0x8E00B30;
    gDuelTextStrings = 0x8FA2BAC;
    gMyTurnStrings = 0x8FA2C14;
    gTurnVoices = 0x80C180C;
    g80C1824 = 0x80C1824;
    g80C1852 = 0x80C1852;
    g80C188C = 0x80C188C;
    g80C1891 = 0x80C1891;
    g80C1857 = 0x80C1857;
    g80C1872 = 0x80C1872;
    gUnk8DFB8A8 = 0x8DFB8A8;
    gUnk8DFBAE8 = 0x8DFBAE8;
    gUnk8DFBDE8 = 0x8DFBDE8;
    g0809553C = 0x809553C;
    gUnk8097D94 = 0x8097D94;
    g08097C94 = 0x8097C94;
    g809508C = 0x809508C;
    g8DFCF0C = 0x8DFCF0C;
    g8DFDB90 = 0x8DFDB90;
    gNextUpOptionLowLevelAnteWarningPrompt = 0x8DFF4A4;
    gNextDownOptionLowLevelAnteWarningPrompt = 0x8DFF4A6;
    g80ADEFC = 0x80ADEFC;
    g80AE02C = 0x80AE02C;
    g80AE1A8 = 0x80AE1A8;
    g80AE370 = 0x80AE370;
    g8DFF4AC = 0x8DFF4AC;
    g8DFF4AE = 0x8DFF4AE;
    g80AE544 = 0x80AE544;
    g8DFAB54 = 0x8DFAB54;
    g8DFAFF4 = 0x8DFAFF4;
    g8DFA6B4 = 0x8DFA6B4;
    g80AE800 = 0x80AE800;
    g80AEA74 = 0x80AEA74;
    g80AEA78 = 0x80AEA78;
    g8F04040 = 0x8F04040;
    g8E0D9C4 = 0x8E0D9C4;
    gMapTilesets = 0x8E119F4; /*pointers to lz compressed overworld map tileset*/
    gLowLayerTilemaps = 0x8E11AE8; /*pointers to overworld map tilemap*/
    gHighLayerTilemaps = 0x8E11BDC;
    g84C9FBC = 0x84C9FBC;
    g82AD06C = 0x82AD06C;
    g82ADC8C = 0x82ADC8C;
    g84D0CE0 = 0x84D0CE0;
    g84CFCE0 = 0x84CFCE0;
    g84D04E0 = 0x84D04E0;
    g84D0EC0 = 0x84D0EC0;
    g84D69D0 = 0x84D69D0;
    g84D59D0 = 0x84D59D0;
    g84D61D0 = 0x84D61D0;
    gCableCarTilemap = 0x841D91C;
    gUnk_8DFF74C = 0x8DFF74C;
    gLegendarySwordTargets = 0x81060A8;
    gSwordOfDarkDestructionTargets = 0x810610D;
    gDarkEnergyTargets = 0x8106172;
    gAxeOfDespairTargets = 0x81061D7;
    gLaserCannonArmorTargets = 0x810623C;
    gInsectArmorWithLaserCannonTargets = 0x81062A1;
    gElfsLightTargets = 0x8106306;
    gBeastFangsTargets = 0x810636B;
    gSteelShellTargets = 0x81063D0;
    gVileGermsTargets = 0x8106435;
    gBlackPendantTargets = 0x810649A;
    gSilverBowAndArrowTargets = 0x81064FF;
    gHornOfLightTargets = 0x8106564;
    gHornOfTheUnicornTargets = 0x81065C9;
    gDragonTreasureTargets = 0x810662E;
    gElectroWhipTargets = 0x8106693;
    gCyberShieldTargets = 0x81066F8;
    gMysticalMoonTargets = 0x810675D;
    gMalevolentNuzzlerTargets = 0x81067C2;
    gVioletCrystalTargets = 0x8106827;
    gBookOfSecretArtsTargets = 0x810688C;
    gInvigorationTargets = 0x81068F1;
    gMachineConversionFactoryTargets = 0x8106956;
    gRaiseBodyHeatTargets = 0x81069BB;
    gFollowWindTargets = 0x8106A20;
    gPowerOfKaishinTargets = 0x8106A85;
    gMagicalLabyrinthTargets = 0x8106AEA;
    gSalamandraTargets = 0x8106B4F;
    gKunaiWithChainTargets = 0x8106BB4;
    gBrightCastleTargets = 0x8106C19;
    gMegamorphTargets = 0x8106C7E;
    gWingedTrumpeterTargets = 0x8106CE3;
    g7CompletedTargets = 0x8106D48;
    gCyclonLaserTargets = 0x8106DAD;
    g82AD2D0 = 0x82AD2D0;

    g8E1165C = 0x8E1165C;
    g8E11664 = 0x8E11664;
    g8E1167C = 0x8E1167C;
    g8E11684 = 0x8E11684;
    g8E0E4CC = 0x8E0E4CC;
    g8E0E53C = 0x8E0E53C;
    g80C1D00 = 0x80C1D00;
    g80C1D09 = 0x80C1D09;
    g80C1D24 = 0x80C1D24;
    g80C1D3E = 0x80C1D3E;
    g80C1D42 = 0x80C1D42;
    g80C1D56 = 0x80C1D56;
    g80C1D58 = 0x80C1D58;
    g80C1D62 = 0x80C1D62;
    g80C1D65 = 0x80C1D65;
    g80C1D68 = 0x80C1D68;
    g80C1D6B = 0x80C1D6B;
    g80C1D6E = 0x80C1D6E;
    g80C1D71 = 0x80C1D71;
    gSorlTurnsRemainingTextIds = 0x80C1D80;
    gCursorSpritesStaticFrames = 0x8E01248;
    gCursorSpritesAnimatedFrames = 0x8E01328;
    gLowLevelAnte = 0x80C1D84;
    gNumRequiredTributes = 0x8E0D9B4;
    gE04810 = 0x8E04810;
    gE06810 = 0x8E06810;
    gE08810 = 0x8E08810;
    gE0A810 = 0x8E0A810;
    gE0A8B0 = 0x8E0A8B0;
    gE01370 = 0x8E01370;
    gE01C50 = 0x8E01C50;
    gE02E10 = 0x8E02E10;
    gE04610 = 0x8E04610;
    g8FC488C = 0x8FC488C;
    g8E0CD10 = 0x8E0CD10;
    gMapData = 0x8E19274;
    g8E0CEE0 = 0x8E0CEE0;
    g8E0CF40 = 0x8E0CF40;
    g8E0CFA0 = 0x8E0CFA0;
    g8E0CFC0 = 0x8E0CFC0;
    g8DF1C2A = 0x8DF1C2A;
    g8DF3C00 = 0x8DF3C00;
    gMapCollisions = 0x8E11DC4;
    gE0E674 = 0x8E0E674;
    gE0E754 = 0x8E0E754;
    g8DFFA48 = 0x8DFFA48;
    g8DFF7F0 = 0x8DFF7F0;
    g8E00330 = 0x8E00330;
    g8E00150 = 0x8E00150;
    gE0CFDC = 0x8E0CFDC;
    gE0CFF4 = 0x8E0CFF4;
    g80DF790 = 0x80DF790;
    g8E0D08C = 0x8E0D08C;
    g8E0D0BE = 0x8E0D0BE;
    g8E0D0D7 = 0x8E0D0D7;
    gE0D0F0 = 0x8E0D0F0;
    g80DFDA4 = 0x80DFDA4;
    gDFBA4 = 0x80DFBA4;
    g80F09D0 = 0x80F09D0;
    g80F0F00 = 0x80F0F00;
    g80F3160 = 0x80F3160;
    g80F0A50 = 0x80F0A50;
    gE00534 = 0x8E00534;
    gE00538 = 0x8E00538;
    gE0053F = 0x8E0053F;
    gE00546 = 0x8E00546;
    gAED58 = 0x80AED58;
    gB0AE8 = 0x80B0AE8;
    gB0B18 = 0x80B0B18;
    gE00550 = 0x8E00550;
    g80B0B20 = 0x80B0B20;
    g80B0C20 = 0x80B0C20;
    gE0061C = 0x8E0061C;
    g80B0D20 = 0x80B0D20;
    g80B0D50 = 0x80B0D50;
    g80B0D54 = 0x80B0D54;
    gE0081C = 0x8E0081C;
    g80B4894 = 0x80B4894;
    g80B1E94 = 0x80B1E94;
    g80B3E94 = 0x80B3E94;
    gE008B4 = 0x8E008B4;
    gE00880 = 0x8E00880;
    g80B6954 = 0x80B6954;
    g80B8954 = 0x80B8954;
    g8E00AA0 = 0x8E00AA0;
    g80B68D4 = 0x80B68D4;
    g80B48B4 = 0x80B48B4;
    g80B68B4 = 0x80B68B4;
    g80B0E44 = 0x80B0E44;
    gE00AA4 = 0x8E00AA4;
    g89DC020 = 0x89DC020;
    g89DC14C = 0x89DC14C;
    g8F9E35C = 0x8F9E35C;
    g89DC23C = 0x89DC23C;
    g8FA0964 = 0x8FA0964;
    g89DC2DC = 0x89DC2DC;
    gE00AD4 = 0x8E00AD4;
    gE00AD6 = 0x8E00AD6;
    gE00AD8 = 0x8E00AD8;
    gE00ADB = 0x8E00ADB;
    gDeckCapacityUpperLimitForDuelistLevel = 0x80B8974;
    g80B9144 = 0x80B9144;
    gE00AE0 = 0x8E00AE0;
    gStarterDeck = 0x80F3180;
    g80B9194 = 0x80B9194;
    g80B92D8 = 0x80B92D8;
    g8E0CDF0 = 0x8E0CDF0;
    g8E0CE00 = 0x8E0CE00;
    gSortableEntries = 0x8E0CC20;
    g80D0444 = 0x80D0444;
    g8E0CE18 = 0x8E0CE18;
    g80DD6FE = 0x80DD6FE;
    g80DD708 = 0x80DD708;
    g80DD744 = 0x80DD744;
    g80DD74A = 0x80DD74A;
    g80DD750 = 0x80DD750;
    g80DD756 = 0x80DD756;
    g80DD774 = 0x80DD774;
    g80DD77F = 0x80DD77F;
    g80DD78A = 0x80DD78A;
    g80DD795 = 0x80DD795;
    g80DD6FA = 0x80DD6FA;
    g8E0CE40 = 0x8E0CE40;
    g80DD92E = 0x80DD92E;
    g80DD938 = 0x80DD938;
    g80DD974 = 0x80DD974;
    g80DD976 = 0x80DD976;
    g80DD978 = 0x80DD978;
    g80DD97A = 0x80DD97A;
    g80DD984 = 0x80DD984;
    g80DD98F = 0x80DD98F;
    g80DD99A = 0x80DD99A;
    g80DD9A5 = 0x80DD9A5;
    g80DD92A = 0x80DD92A;
    g8E0CE68 = 0x8E0CE68;
    g80DD816 = 0x80DD816;
    g80DD820 = 0x80DD820;
    g80DD85C = 0x80DD85C;
    g80DD862 = 0x80DD862;
    g80DD868 = 0x80DD868;
    g80DD86E = 0x80DD86E;
    g80DD88C = 0x80DD88C;
    g80DD897 = 0x80DD897;
    g80DD8A2 = 0x80DD8A2;
    g80DD8AD = 0x80DD8AD;
    g80DD812 = 0x80DD812;
    g80DD668 = 0x80DD668;
    g80DD6B0 = 0x80DD6B0;
    g8FA3558 = 0x8FA3558;
    g80DD670 = 0x80DD670;
    g80DD674 = 0x80DD674;
    g80DD678 = 0x80DD678;
    g8E0CE90 = 0x8E0CE90;
    gMothsAbleToEvolve = 0x8E0C6B0;
    gNextMothEvolution = 0x8E0C6B8;
    g8E0C6C0 = 0x8E0C6C0;
    g8E0C800 = 0x8E0C800;
    g8E0D954 = 0x8E0D954;
    g8E0D958 = 0x8E0D958;
    g8E0D95C = 0x8E0D95C;
    g8E0D81A = 0x8E0D81A;
    g8E0D81D = 0x8E0D81D;
    g8E0D820 = 0x8E0D820;
    g8E0D823 = 0x8E0D823;

    g82A8E4C = 0x82A8E4C;
    g82A906C = 0x82A906C;
    g81032A2 = 0x81032A2;
    g8103284 = 0x8103284;
    g8E0DA9C = 0x8E0DA9C;
    g8E0DA56 = 0x8E0DA56;
    g82AD20C = 0x82AD20C;
    g82AD2B6 = 0x82AD2B6;
    gUnk08103284 = 0x8103284;
    g82AD48C = 0x82AD48C;
    g81032D2 = 0x81032D2;
    gE0DA4F = 0x8E0DA4F;
    gUnk8E0DA12 = 0x8E0DA12;
    gUnk8E0DA40 = 0x8E0DA40;
    g8E0DB04 = 0x8E0DB04;
    g8E0DB0C = 0x8E0DB0C;
    g8E11CD0 = 0x8E11CD0;
    g8E0E08C = 0x8E0E08C;
    g8FC4440 = 0x8FC4440;
    g8FC452C = 0x8FC452C;
    g80907E4 = 0x80907E4;
    g8090920 = 0x8090920;
    g8090B94 = 0x8090B94;
    g8090B98 = 0x8090B98;
    gCardPasswordDigitSprites = 0x8E0119C;
    g80C1DD4 = 0x80C1DD4;
    g80C61B8 = 0x80C61B8;
    g80C58C0 = 0x80C58C0;
    g80C5EF0 = 0x80C5EF0;
    g80C5D70 = 0x80C5D70;
    g80C5840 = 0x80C5840;
    g8E0E0D2 = 0x8E0E0D2;
    g8E0E0AC = 0x8E0E0AC;
    g8FC4618 = 0x8FC4618;
    gE0E0F8 = 0x8E0E0F8;
    gE0E146 = 0x8E0E146;
    gE0DB14 = 0x8E0DB14;
    g8E0E11C = 0x8E0E11C;
    g8E0DFC0 = 0x8E0DFC0;
    g8E0E1D2 = 0x8E0E1D2;
    g8E0E20E = 0x8E0E20E;
    g8E0E284 = 0x8E0E284;
    g8E0E091 = 0x8E0E091;
    g8E0E2A0 = 0x8E0E2A0;
    g8E0E295 = 0x8E0E295;
    g8E0E2B2 = 0x8E0E2B2;
    g8E0E2C4 = 0x8E0E2C4;
    g8E0E2FF = 0x8E0E2FF;
    g8E0E324 = 0x8E0E324;
    g8E0E36C = 0x8E0E36C;
    g8E0E33C = 0x8E0E33C;
    g8E0E354 = 0x8E0E354;
    g8E0E372 = 0x8E0E372;
    g8E0E311 = 0x8E0E311;
    g8E0E37E = 0x8E0E37E;
    g8E0E099 = 0x8E0E099;
    g8E0E0A2 = 0x8E0E0A2;
    g8E0E384 = 0x8E0E384;
    g8E0E3D4 = 0x8E0E3D4;
    g8E0E3EC = 0x8E0E3EC;
    gHorizontalDisplacements = 0x8E0E3C4;
    g8E0E3CC = 0x8E0E3CC;
    g8E0E404 = 0x8E0E404;
    g8E0E416 = 0x8E0E416;
    g8E0E494 = 0x8E0E494;
    g8E0E494 = 0x8E0E494;
    g8E0E428 = 0x8E0E428;
    g8E0E45E = 0x8E0E45E;
    g8E0E494 = 0x8E0E494;
    g8E0E428 = 0x8E0E428;
    g8E0E45E = 0x8E0E45E;
    g8E0E3C0 = 0x8E0E3C0;
    gMapStates = 0x8103314;
    g8FA31C0 = 0x8FA31C0;
    g8FA3360 = 0x8FA3360;
    g8E0E834 = 0x8E0E834;
    g8E0E838 = 0x8E0E838;
    gE0E83C = 0x8E0E83C;
    gE0E854 = 0x8E0E854;
    gE0E865 = 0x8E0E865;
    g8E0F4F4 = 0x8E0F4F4;
    g8E0F504 = 0x8E0F504;
    g8E0F528 = 0x8E0F528;
    g8E0F540 = 0x8E0F540;
    g8E0F594 = 0x8E0F594;
    g8E0F5E8 = 0x8E0F5E8;
    g8E0F600 = 0x8E0F600;
    g8E0F618 = 0x8E0F618;
    g8E0F65B = 0x8E0F65B;
    g8E0F688 = 0x8E0F688;
    g8E0F69A = 0x8E0F69A;
    g8E0F6AC = 0x8E0F6AC;
    g8E0FD04 = 0x8E0FD04;
    g8E0FD14 = 0x8E0FD14;
    g8E0FD24 = 0x8E0FD24;
    g8E0FD34 = 0x8E0FD34;
    g8E0FD44 = 0x8E0FD44;
    g8E0C940 = 0x8E0C940;
    g8E0CA80 = 0x8E0CA80;
    gCardAttributeStrings = 0x8E0CBC0;
    g8E0CBF0 = 0x8E0CBF0;
    g80C7DDC = 0x80C7DDC;
    g80C9D84 = 0x80C9D84;
    gStartingShopCards = 0x80C9D90;
    g80CA0D7 = 0x80CA0D7;
    g80CA0B4 = 0x80CA0B4;
    g80CA0CD = 0x80CA0CD;
    g80CA0D2 = 0x80CA0D2;
    gNextUpShopConfirmBuySellMenuOption = 0x80CA0E1;
    gNextDownShopConfirmBuySellMenuOption = 0x80CA0E4;
    gNextUpShopSortModeOption = 0x80CA0E7;
    gNextDownShopSortModeOption = 0x80CA0F2;
    gNextLeftShopSortModeOption = 0x80CA0FD;
    gNextRightShopSortModeOption = 0x80CA108;
    g80CA114 = 0x80CA114;
    g80CA5C4 = 0x80CA5C4;
    g80CAA74 = 0x80CAA74;
    g80CDA60 = 0x80CAA60;
    g80CAF24 = 0x80CAF24;
    g80CDC50 = 0x80CDC50;
    g80CDCF0 = 0x80CDCF0;
    g80CDD78 = 0x80CDD78;
    g80CDE10 = 0x80CDE10;
    g80CDE28 = 0x80CDE28;
    g80CB3D4 = 0x80CB3D4;
    g80CDC28 = 0x80CDC28;
    g80CD2A0 = 0x80CD2A0;
    g80CD4A0 = 0x80CD4A0;
    g80CD4C0 = 0x80CD4C0;
    g80CD200 = 0x80CD200;
    g80CD280 = 0x80CD280;
    g80CD1A0 = 0x80CD1A0;
    g80CD1E0 = 0x80CD1E0;
    g80CD6C0 = 0x80CD6C0;
    g80CD778 = 0x80CD778;
    g80CB884 = 0x80CB884;
    g80CC0F4 = 0x80CC0F4;
    g8E1168C = 0x8E1168C;
    g89A7ADE = 0x89A7ADE;
    g89A81DE = 0x89A81DE;
    g89A7F1E = 0x89A7F1E;
    g89A875E = 0x89A875E;
    g89A849E = 0x89A849E;
    g80CC4F4 = 0x80CC4F4;
    g80CCC90 = 0x80CCC90;
    g80CCCF0 = 0x80CCCF0;
    g80CDE7C = 0x80CDE7C;
    g80CDEAC = 0x80CDEAC;
    g80CDE72 = 0x80CDE72;
    g80CDE90 = 0x80CDE90;
    g80CDE96 = 0x80CDE96;
    g80CDE8A = 0x80CDE8A;
    g80CD830 = 0x80CD830;
    gFieldTilePtrs = 0x8E0D0F8;
    gFieldPalettePtrs = 0x8E0D130;
    gFieldTileMapPtrs = 0x8E0D114;
    gText_NumTributesRequired = 0x8E0D41C;
    gText_Spaces = 0x8E0D15D;
    gFontTileGlyphs = 0x8E0D1D0;
    gE0D14C = 0x8E0D14C;
    g80F2C30 = 0x80F2C30;
    g8F1B80C = 0x8F1B80C;
    gText_TrapHadNoEffect = 0x8E0D584; /* "[X] was the trap. But it had no effect on [Y] */
    g8E0D5A1 = 0x8E0D5A1;
    g8E0D5A6 = 0x8E0D5A6;
    g8E0D588 = 0x8E0D588;
    g8E0D5B0 = 0x8E0D5B0;
    gText_Facedown = 0x8E0D5C7;
    g8E0D617 = 0x8E0D617;
    g80F30E0 = 0x80F30E0;
    gText_Deckcards = 0x8E0D668;
    gText_DetailsTurnEndDiscard = 0x8E0D753;
    g80F13D0 = 0x80F13D0;
    g80B9620 = 0x80B9620;
    g80B96AA = 0x80B96AA;
    g8E00AEC = 0x8E00AEC;
    g8E00AF7 = 0x8E00AF7;
    g8E00B02 = 0x8E00B02;
    g8E00B0D = 0x8E00B0D;
    g8E00B18 = 0x8E00B18;
    g8E00B23 = 0x8E00B23;
    g80B96B8 = 0x80B96B8;
    g80B96BC = 0x80B96BC;
    g80BE630 = 0x80BE630;
    g80BE631 = 0x80BE631;
    g80BE632 = 0x80BE632;
    g8A31F24 = 0x8A31F24;
    g80DD9DC = 0x80DD9DC;
    g8E116BC = 0x8E116BC;
    g8E0D814 = 0x8E0D814;
    g8E0D922 = 0x8E0D922;
    g8E0D926 = 0x8E0D926;
    g8E0D92A = 0x8E0D92A;
    g8E0D92E = 0x8E0D92E;
    g80F1880 = 0x80F1880;
    gText_AttackDefendTributeEffect = 0x8E0D828;
    g8E0D91A = 0x8E0D91A;
    g80F1D30 = 0x80F1D30;
    g8E0D934 = 0x8E0D934;
    g8E0D960 = 0x8E0D960;
    g8E0D97C = 0x8E0D97C;
    g8E0D998 = 0x8E0D998;
    g8E17F70 = 0x8E17F70;
    g89A781C = 0x89A781C;
    g8E116EE = 0x8E116EE;
    g8E11720 = 0x8E11720;
    g89A77DC = 0x89A77DC;
    g89A8CDE = 0x89A8CDE;
    g89A8A1E = 0x89A8A1E;
    g89A7BDE = 0x89A7BDE;
    g8E0CD9C = 0x8E0CD9C;
    gText_ReplaceSaveData = 0x80DD498;
    g8E0CDA4 = 0x8E0CDA4;
    g8E0CDA4 = 0x8E0CDA4;
    g8E0CDA4 = 0x8E0CDA4;
    g8E0CDA4 = 0x8E0CDA4;
    g8E0CDA4 = 0x8E0CDA4;
    g8E0CDA0 = 0x8E0CDA0;
    g8E0CDB0 = 0x8E0CDB0;
    g8E0CDB4 = 0x8E0CDB4;
    g8E0CD80 = 0x8E0CD80;
    g8E0CDA8 = 0x8E0CDA8;
    g8E0CDAC = 0x8E0CDAC;
    gSortRangeStack = 0x8E0CC24;
    g80D29D0 = 0x80D29D0;
    g8AFBD0C = 0x8AFBD0C;
    g8AFBDE4 = 0x8AFBDE4;
    g80D2D00 = 0x80D2D00;

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
