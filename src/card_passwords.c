#include "global.h"

#define NUM_PASSWORD_DIGITS 8

enum {
  RESULT_MATCH = 10,
  RESULT_MISMATCH = 11,
};

static const unsigned char sCardPasswords[][NUM_PASSWORD_DIGITS] = {
  [CARD_NONE] = {15, 15, 15, 15, 15, 15, 15, 14},
  [BLUE_EYES_WHITE_DRAGON] = {8, 9, 6, 3, 1, 1, 3, 9},
  [MYSTICAL_ELF] = {1, 5, 0, 2, 5, 8, 4, 4},
  [HITOTSU_ME_GIANT] = {7, 6, 1, 8, 4, 6, 9, 2},
  [BABY_DRAGON] = {8, 8, 8, 1, 9, 5, 8, 7},
  [RYU_KISHIN] = {1, 5, 3, 0, 3, 2, 9, 6},
  [FERAL_IMP] = {4, 1, 3, 9, 2, 8, 9, 1},
  [WINGED_DRAGON_GUARDIAN_OF_THE_FORTRESS_1] = {8, 7, 7, 9, 6, 9, 0, 0},
  [MUSHROOM_MAN] = {1, 4, 1, 8, 1, 6, 0, 8},
  [SHADOW_SPECTER] = {4, 0, 5, 7, 5, 3, 1, 3},
  [BLACKLAND_FIRE_DRAGON] = {8, 7, 5, 6, 4, 3, 5, 2},
  [SWORD_ARM_OF_DRAGON] = {1, 3, 0, 6, 9, 0, 6, 6},
  [SWAMP_BATTLEGUARD] = {4, 0, 4, 5, 3, 7, 6, 5},
  [THE_STERN_MYSTIC] = {8, 7, 5, 5, 7, 1, 8, 8},
  [BATTLE_STEER] = {1, 8, 2, 4, 6, 4, 7, 9},
  [FLAME_SWORDSMAN] = {4, 5, 2, 3, 1, 1, 7, 7},
  [TIME_WIZARD] = {7, 1, 6, 2, 5, 2, 2, 2},
  [RIGHT_LEG_OF_THE_FORBIDDEN_ONE] = {0, 8, 1, 2, 4, 9, 2, 1},
  [LEFT_LEG_OF_THE_FORBIDDEN_ONE] = {4, 4, 5, 1, 9, 5, 3, 6},
  [RIGHT_ARM_OF_THE_FORBIDDEN_ONE] = {7, 0, 9, 0, 3, 6, 3, 4},
  [LEFT_ARM_OF_THE_FORBIDDEN_ONE] = {0, 7, 9, 0, 2, 3, 4, 9},
  [EXODIA_THE_FORBIDDEN_ONE] = {3, 3, 3, 9, 6, 9, 4, 8},
  [SUMMONED_SKULL] = {7, 0, 7, 8, 1, 0, 5, 2},
  [THE_WICKED_WORM_BEAST] = {0, 6, 2, 8, 5, 7, 9, 1},
  [SKULL_SERVANT] = {3, 2, 2, 7, 4, 4, 9, 0},
  [HORN_IMP] = {6, 9, 6, 6, 9, 4, 0, 5},
  [BATTLE_OX] = {0, 5, 0, 5, 3, 1, 0, 3},
  [BEAVER_WARRIOR] = {3, 2, 4, 5, 2, 8, 1, 8},
  [ROCK_OGRE_GROTTO_1] = {6, 8, 8, 4, 6, 9, 1, 7},
  [MOUNTAIN_WARRIOR] = {0, 4, 9, 3, 1, 5, 6, 2},
  [ZOMBIE_WARRIOR] = {3, 1, 3, 3, 9, 2, 6, 0},
  [KOUMORI_DRAGON] = {6, 7, 7, 2, 4, 3, 7, 9},
  [TWO_HEADED_KING_REX] = {9, 4, 1, 1, 9, 9, 7, 4},
  [JUDGE_MAN] = {3, 0, 1, 1, 3, 6, 8, 2},
  [SAGGI_THE_DARK_CLOWN] = {6, 6, 6, 0, 2, 7, 8, 7},
  [DARK_MAGICIAN] = {4, 6, 9, 8, 6, 4, 1, 4},
  [THE_SNAKE_HAIR] = {2, 9, 4, 9, 1, 0, 3, 1},
  [GAIA_THE_DRAGON_CHAMPION] = {6, 6, 8, 8, 9, 1, 3, 9},
  [GAIA_THE_FIERCE_KNIGHT] = {0, 6, 3, 6, 8, 0, 3, 8},
  [CURSE_OF_DRAGON] = {2, 8, 2, 7, 9, 5, 4, 3},
  [DRAGON_PIPER] = {5, 5, 7, 6, 3, 5, 5, 2},
  [CELTIC_GUARDIAN] = {9, 1, 1, 5, 2, 2, 5, 6},
  [ILLUSIONIST_FACELESS_MAGE] = {2, 8, 5, 4, 6, 9, 0, 5},
  [KARBONALA_WARRIOR] = {5, 4, 5, 4, 1, 9, 0, 0},
  [ROGUE_DOLL] = {9, 1, 9, 3, 9, 6, 0, 8},
  [OSCILLO_HERO_2] = {2, 7, 3, 2, 4, 3, 1, 3},
  [GRIFFORE] = {5, 3, 8, 2, 9, 4, 1, 2},
  [TORIKE] = {8, 0, 8, 1, 3, 0, 2, 1},
  [SANGAN] = {2, 6, 2, 0, 2, 1, 6, 5},
  [BIG_INSECT] = {5, 3, 6, 0, 6, 8, 7, 4},
  [BASIC_INSECT] = {8, 9, 0, 9, 1, 5, 7, 9},
  [ARMORED_LIZARD] = {1, 5, 4, 8, 0, 5, 8, 8},
  [HERCULES_BEETLE] = {5, 2, 5, 8, 4, 2, 8, 2},
  [KILLER_NEEDLE] = {8, 8, 9, 7, 9, 9, 9, 1},
  [GOKIBORE] = {1, 5, 3, 6, 7, 0, 3, 0},
  [GIANT_FLEA] = {4, 1, 7, 6, 2, 6, 3, 4},
  [LARVAE_MOTH] = {8, 7, 7, 5, 6, 3, 4, 3},
  [GREAT_MOTH] = {1, 4, 1, 4, 1, 4, 4, 8},
  [KURIBOH] = {4, 0, 6, 4, 0, 0, 5, 7},
  [MAMMOTH_GRAVEYARD] = {4, 0, 3, 7, 4, 9, 2, 3},
  [GREAT_WHITE] = {1, 3, 4, 2, 9, 8, 0, 0},
  [WOLF] = {4, 9, 4, 1, 7, 5, 0, 9},
  [HARPIE_LADY] = {7, 6, 8, 1, 2, 1, 1, 3},
  [HARPIE_LADY_SISTERS] = {1, 2, 2, 0, 6, 2, 1, 2},
  [TIGER_AXE] = {4, 9, 7, 9, 1, 9, 2, 7},
  [SILVER_FANG] = {9, 0, 3, 5, 7, 0, 9, 0},
  [KOJIKOCY] = {0, 1, 1, 8, 4, 6, 2, 0},
  [PERFECTLY_ULTIMATE_GREAT_MOTH] = {4, 8, 5, 7, 9, 3, 7, 9},
  [GAROOZIS] = {1, 4, 9, 7, 7, 0, 7, 4},
  [THOUSAND_DRAGON] = {4, 1, 4, 6, 2, 0, 8, 3},
  [FIEND_KRAKEN] = {7, 7, 4, 5, 6, 7, 8, 1},
  [JELLYFISH] = {1, 4, 8, 5, 1, 4, 9, 6},
  [COCOON_OF_EVOLUTION] = {4, 0, 2, 4, 0, 5, 9, 5},
  [KAIRYU_SHIN] = {7, 6, 6, 3, 4, 1, 4, 9},
  [GIANT_SOLDIER_OF_STONE] = {1, 3, 0, 3, 9, 8, 4, 8},
  [MAN_EATING_PLANT] = {4, 9, 1, 2, 7, 9, 4, 3},
  [KROKODILUS] = {7, 6, 5, 1, 2, 6, 5, 2},
  [GRAPPLER] = {0, 2, 9, 0, 6, 2, 5, 0},
  [AXE_RAIDER] = {4, 8, 3, 0, 5, 3, 6, 5},
  [MEGAZOWLER] = {7, 5, 3, 9, 0, 0, 0, 4},
  [URABY] = {0, 1, 7, 8, 4, 6, 1, 9},
  [CRAWLING_DRAGON_2] = {3, 8, 2, 8, 9, 7, 1, 7},
  [RED_EYES_B_DRAGON] = {7, 4, 6, 7, 7, 4, 2, 2},
  [CASTLE_OF_DARK_ILLUSIONS] = {0, 0, 0, 6, 2, 1, 2, 1},
  [REAPER_OF_THE_CARDS] = {3, 3, 0, 6, 6, 1, 3, 9},
  [KING_OF_YAMIMAKAI] = {6, 9, 4, 5, 5, 8, 3, 4},
  [BAROX] = {0, 6, 8, 4, 0, 5, 7, 3},
  [DARK_CHIMERA] = {3, 2, 3, 4, 4, 6, 8, 8},
  [METAL_GUARDIAN] = {6, 8, 3, 3, 9, 2, 8, 6},
  [CATAPULT_TURTLE] = {9, 5, 7, 2, 7, 9, 9, 1},
  [GYAKUTENNO_MEGAMI] = {3, 1, 1, 2, 2, 0, 9, 0},
  [MYSTIC_HORSEMAN] = {6, 8, 5, 1, 6, 7, 0, 5},
  [RABID_HORSEMAN] = {9, 4, 9, 0, 5, 3, 4, 3},
  [ZANKI] = {3, 0, 0, 9, 0, 4, 5, 2},
  [CRAWLING_DRAGON] = {6, 7, 4, 9, 4, 1, 5, 7},
  [CRASS_CLOWN] = {9, 3, 8, 8, 9, 7, 5, 5},
  [ARMORED_ZOMBIE] = {2, 0, 2, 7, 7, 8, 6, 0},
  [DRAGON_ZOMBIE] = {6, 6, 6, 7, 2, 5, 6, 9},
  [CLOWN_ZOMBIE] = {9, 2, 6, 6, 7, 2, 1, 4},
  [PUMPKING_THE_KING_OF_GHOSTS] = {2, 9, 1, 5, 5, 2, 1, 2},
  [BATTLE_WARRIOR] = {5, 5, 5, 5, 0, 9, 2, 1},
  [WINGS_OF_WICKED_FLAME] = {9, 2, 9, 4, 4, 6, 2, 6},
  [MASK_OF_DARKNESS] = {2, 8, 9, 3, 3, 7, 3, 4},
  [BARON_OF_THE_FIEND_SWORD] = {8, 6, 3, 2, 5, 5, 9, 6},
  [CURTAIN_OF_THE_DARK_ONES] = {2, 2, 0, 2, 6, 7, 0, 7},
  [TOMOZAURUS] = {4, 6, 4, 5, 7, 8, 5, 6},
  [SPIRIT_OF_THE_WINDS] = {5, 4, 6, 1, 5, 7, 8, 1},
  [SHINING_ABYSS] = {8, 7, 3, 0, 3, 3, 5, 7},
  [HEADLESS_KNIGHT] = {0, 5, 4, 3, 4, 0, 8, 0},
  [GODDESS_WITH_THE_THIRD_EYE] = {5, 3, 4, 9, 3, 2, 0, 4},
  [RUKLAMBA_THE_SPIRIT_KING] = {2, 8, 9, 1, 3, 2, 7, 9},
  [DOMA_THE_ANGEL_OF_SILENCE] = {1, 6, 9, 7, 2, 9, 5, 7},
  [KELDO] = {8, 0, 4, 4, 1, 1, 0, 6},
  [SOLDIER_ARI] = {7, 3, 0, 3, 8, 0, 6, 0},
  [WHITE_MAGICAL_HAT] = {1, 5, 1, 5, 0, 3, 6, 5},
  [GEARFRIED_THE_IRON_KNIGHT] = {0, 0, 4, 2, 3, 7, 0, 5},
  [NIGHTMARE_SCORPION] = {8, 8, 6, 4, 3, 1, 7, 3},
  [SPIRIT_OF_THE_BOOKS] = {1, 4, 0, 3, 7, 7, 1, 7},
  [XYZ_DRAGON_CANNON] = {9, 1, 9, 9, 8, 1, 1, 9},
  [HUMANOID_SLIME] = {4, 6, 8, 2, 1, 3, 1, 4},
  [DREAM_CLOWN] = {1, 3, 2, 1, 5, 2, 3, 0},
  [SLEEPING_LION] = {4, 0, 2, 0, 0, 8, 3, 4},
  [YAMATANO_DRAGON_SCROLL] = {7, 6, 7, 0, 4, 9, 4, 3},
  [DARK_PLANT] = {1, 3, 1, 9, 3, 6, 4, 2},
  [WORM_DRAKE] = {7, 3, 2, 1, 6, 4, 1, 2},
  [FAITH_BIRD] = {7, 5, 5, 8, 2, 3, 9, 5},
  [ORION_THE_BATTLE_KING] = {0, 2, 9, 7, 1, 0, 9, 0},
  [ANSATSU] = {4, 8, 3, 6, 5, 7, 0, 9},
  [LAMOON] = {7, 5, 8, 5, 0, 8, 0, 3},
  [NEMURIKO] = {9, 0, 9, 6, 3, 4, 8, 8},
  [WEATHER_CONTROL] = {3, 7, 2, 4, 3, 1, 5, 1},
  [OCTOBERSER] = {7, 4, 6, 3, 7, 2, 6, 6},
  [HUMANOID_WORM_DRAKE] = {0, 5, 6, 0, 0, 1, 2, 7},
  [CHARUBIN_THE_FIRE_KNIGHT] = {3, 7, 4, 2, 1, 5, 7, 9},
  [REVIVAL_JAM] = {3, 1, 7, 0, 9, 8, 2, 6},
  [FIENDS_HAND] = {5, 2, 8, 0, 0, 4, 2, 8},
  [WITTY_PHANTOM] = {3, 6, 3, 0, 4, 9, 2, 1},
  [BUSTER_BLADER] = {7, 8, 1, 9, 3, 8, 3, 1},
  [DARK_NECROFEAR] = {3, 1, 8, 2, 9, 1, 8, 5},
  [BLUE_EYED_SILVER_ZOMBIE] = {3, 5, 2, 8, 2, 4, 3, 3},
  [TOAD_MASTER] = {6, 2, 6, 7, 1, 4, 4, 8},
  [SPIKED_SNAIL] = {9, 8, 0, 7, 5, 1, 4, 7},
  [FLAME_MANIPULATOR] = {3, 4, 4, 6, 0, 8, 5, 1},
  [NECROLANCER_THE_TIMELORD] = {6, 1, 4, 5, 4, 8, 9, 0},
  [DJINN_THE_WATCHER_OF_THE_WIND] = {9, 7, 8, 4, 3, 5, 0, 5},
  [THE_BEWITCHING_PHANTOM_THIEF] = {2, 4, 3, 4, 8, 2, 0, 4},
  [TEMPLE_OF_SKULLS] = {0, 0, 7, 3, 2, 3, 0, 2},
  [MONSTER_EGG] = {3, 6, 1, 2, 1, 9, 1, 7},
  [THE_SHADOW_WHO_CONTROLS_THE_DARK] = {6, 3, 1, 2, 5, 6, 1, 6},
  [X_HEAD_CANNON] = {6, 2, 6, 5, 1, 9, 5, 7},
  [AKIHIRON] = {3, 6, 9, 0, 4, 4, 6, 9},
  [ORGOTH_THE_RELENTLESS] = {5, 5, 9, 0, 8, 8, 8, 7},
  [THE_MELTING_RED_SHADOW] = {9, 8, 8, 9, 8, 1, 7, 3},
  [DOKUROIZO_THE_GRIM_REAPER] = {2, 5, 8, 8, 2, 8, 8, 1},
  [FIRE_REAPER] = {5, 3, 5, 8, 1, 2, 1, 4},
  [LARVAS] = {9, 4, 6, 7, 5, 5, 3, 5},
  [HARD_ARMOR] = {2, 0, 0, 6, 0, 2, 3, 0},
  [FIREGRASS] = {5, 3, 2, 9, 3, 5, 4, 5},
  [CYBER_JAR] = {3, 4, 1, 2, 4, 3, 1, 6},
  [DIG_BEAK] = {2, 9, 9, 4, 8, 6, 4, 2},
  [M_WARRIOR_1] = {5, 6, 3, 4, 2, 3, 5, 1},
  [M_WARRIOR_2] = {9, 2, 7, 3, 1, 4, 5, 5},
  [BANISHER_OF_THE_LIGHT] = {6, 1, 5, 2, 8, 0, 2, 5},
  [LISARK] = {5, 5, 2, 1, 0, 7, 0, 9},
  [DES_FERAL_IMP] = {8, 1, 9, 8, 5, 7, 8, 4},
  [THE_JUDGEMENT_HAND] = {2, 8, 0, 0, 3, 5, 1, 2},
  [MYSTERIOUS_PUPPETEER] = {5, 4, 0, 9, 8, 1, 2, 1},
  [ANCIENT_JAR] = {8, 1, 4, 9, 2, 2, 2, 6},
  [DARKFIRE_DRAGON] = {1, 7, 8, 8, 1, 9, 6, 4},
  [DARK_KING_OF_THE_ABYSS] = {5, 3, 3, 7, 5, 5, 7, 3},
  [SPIRIT_OF_THE_HARP] = {8, 0, 7, 7, 0, 6, 7, 8},
  [BIG_EYE] = {1, 6, 7, 6, 8, 3, 8, 7},
  [ARMAILL] = {5, 3, 1, 5, 3, 4, 8, 1},
  [GIANT_RAT] = {9, 7, 0, 1, 7, 1, 2, 0},
  [SENJU_OF_THE_THOUSAND_HANDS] = {2, 3, 4, 0, 1, 8, 3, 9},
  [UFO_TURTLE] = {6, 0, 8, 0, 6, 4, 3, 7},
  [FIRE_EYE] = {8, 8, 4, 3, 5, 5, 4, 2},
  [MONSTURTLE] = {1, 5, 8, 2, 0, 1, 4, 7},
  [CLAW_REACHER] = {4, 1, 2, 1, 8, 2, 5, 6},
  [PHANTOM_DEWAN] = {7, 7, 6, 0, 3, 9, 5, 0},
  [ARLOWNAY] = {1, 4, 7, 0, 8, 5, 6, 9},
  [FLASH_ASSAILANT] = {9, 6, 8, 9, 0, 5, 8, 2},
  [KARATE_MAN] = {2, 3, 2, 8, 9, 2, 8, 1},
  [LUCKY_TRINKET] = {0, 3, 9, 8, 5, 0, 1, 1},
  [GENIN] = {4, 9, 3, 7, 0, 0, 2, 6},
  [DARK_ZEBRA] = {5, 9, 7, 8, 4, 8, 9, 6},
  [FIEND_REFLECTION_2] = {0, 2, 8, 6, 3, 4, 3, 9},
  [GATE_DEEG] = {4, 9, 2, 5, 8, 5, 7, 8},
  [GIANT_GERM] = {9, 5, 1, 7, 8, 9, 9, 4},
  [FUSIONIST] = {0, 1, 6, 4, 1, 8, 8, 2},
  [NIMBLE_MOMONGA] = {2, 2, 5, 6, 7, 6, 0, 9},
  [LALA_LI_OON] = {0, 9, 4, 3, 0, 3, 8, 7},
  [KEY_MACE] = {0, 1, 9, 2, 9, 2, 9, 4},
  [FINAL_DESTINY] = {1, 8, 5, 9, 1, 9, 0, 4},
  [HEAVY_STORM] = {1, 9, 6, 1, 3, 5, 5, 6},
  [DORON] = {0, 0, 7, 5, 6, 6, 5, 2},
  [CYCLON_LASER] = {0, 5, 4, 9, 4, 8, 2, 0},
  [BOAR_SOLDIER] = {2, 1, 3, 4, 0, 0, 5, 1},
  [HAPPY_LOVER] = {9, 9, 0, 3, 0, 1, 6, 4},
  [PENGUIN_KNIGHT] = {3, 6, 0, 3, 9, 1, 6, 3},
  [PETIT_DRAGON] = {7, 5, 3, 5, 6, 5, 6, 4},
  [FRENZIED_PANDA] = {9, 8, 8, 1, 8, 5, 1, 6},
  [AIR_MARMOT_OF_NEFARIOUSNESS] = {7, 5, 8, 8, 9, 5, 2, 3},
  [PHANTOM_GHOST] = {6, 1, 2, 0, 1, 2, 2, 0},
  [MOTHER_GRIZZLY] = {5, 7, 8, 3, 9, 7, 5, 0},
  [FLYING_KAMAKIRI_1] = {8, 4, 8, 3, 4, 8, 6, 5},
  [TWIN_LONG_RODS_1] = {6, 0, 5, 8, 9, 6, 8, 2},
  [DROLL_BIRD] = {9, 7, 9, 7, 3, 3, 8, 7},
  [PETIT_ANGEL] = {3, 8, 1, 4, 2, 7, 3, 9},
  [WINGED_CLEAVER] = {3, 9, 1, 7, 5, 9, 8, 2},
  [HINOTAMA_SOUL] = {9, 6, 8, 5, 1, 7, 9, 9},
  [KAMINARIKOZOU] = {1, 5, 5, 1, 0, 9, 8, 8},
  [MEOTOKO] = {5, 3, 8, 3, 2, 6, 5, 0},
  [AQUA_MADOOR] = {8, 5, 6, 3, 9, 2, 5, 7},
  [KAGEMUSHA_OF_THE_BLUE_FLAME] = {1, 5, 4, 0, 1, 6, 3, 3},
  [FLAME_GHOST] = {5, 8, 5, 2, 8, 9, 6, 4},
  [NIGHTMARE_PENGUIN] = {8, 1, 3, 0, 6, 5, 8, 6},
  [B_SKULL_DRAGON] = {1, 1, 9, 0, 1, 6, 7, 8},
  [TWO_MOUTH_DARKRULER] = {5, 7, 3, 0, 5, 3, 7, 3},
  [SOLITUDE] = {8, 4, 7, 9, 4, 0, 1, 1},
  [MASKED_SORCERER] = {1, 0, 1, 8, 9, 1, 2, 6},
  [KUMOOTOKO] = {5, 6, 2, 8, 3, 7, 2, 5},
  [CEREMONIAL_BELL] = {2, 0, 2, 2, 8, 4, 6, 3},
  [ROARING_OCEAN_SNAKE] = {1, 9, 0, 6, 6, 5, 3, 8},
  [TRAP_MASTER] = {4, 6, 4, 6, 1, 2, 4, 7},
  [FIEND_SWORD] = {2, 2, 8, 5, 5, 8, 8, 2},
  [SONIC_BIRD] = {5, 7, 6, 1, 7, 1, 7, 8},
  [MYSTIC_TOMATO] = {8, 3, 0, 1, 1, 2, 7, 7},
  [WOOD_REMAINS] = {1, 7, 7, 3, 3, 3, 9, 4},
  [HOURGLASS_OF_LIFE] = {0, 8, 7, 8, 3, 6, 8, 5},
  [RARE_FISH] = {8, 0, 5, 1, 6, 0, 0, 7},
  [WOOD_CLOWN] = {1, 7, 5, 1, 1, 1, 5, 6},
  [KOTODAMA] = {1, 9, 4, 0, 6, 8, 2, 2},
  [JAM_BREEDING_MACHINE] = {2, 1, 7, 7, 0, 2, 6, 0},
  [OBELISK_THE_TORMENTOR] = {15, 15, 15, 15, 15, 15, 15, 14},
  [WODAN_THE_RESIDENT_OF_THE_FOREST] = {4, 2, 8, 8, 3, 2, 7, 3},
  [PERFECT_MACHINE_KING] = {1, 8, 8, 9, 1, 6, 9, 1},
  [HANIWA] = {8, 4, 2, 8, 5, 6, 2, 3},
  [SLIFER_THE_SKY_DRAGON] = {15, 15, 15, 15, 15, 15, 15, 14},
  [VISHWAR_RANDI] = {7, 8, 5, 5, 6, 3, 2, 0},
  [THE_WINGED_DRAGON_OF_RA_BATTLE_MODE] = {15, 15, 15, 15, 15, 15, 15, 14},
  [DARK_ASSAILANT] = {4, 1, 9, 4, 9, 0, 3, 3},
  [CANDLE_OF_FATE] = {4, 7, 6, 9, 5, 4, 1, 6},
  [WATER_ELEMENT] = {0, 3, 7, 3, 2, 7, 4, 7},
  [DISSOLVEROCK] = {4, 0, 8, 2, 6, 4, 9, 5},
  [FLYING_FISH] = {3, 1, 9, 8, 7, 2, 7, 4},
  [ONE_WHO_HUNTS_SOULS] = {0, 3, 6, 0, 6, 2, 0, 9},
  [ROOT_WATER] = {3, 9, 0, 0, 4, 8, 0, 8},
  [AMPHIBIAN_BEAST] = {6, 7, 3, 7, 1, 3, 8, 3},
  [WATER_OMOTICS] = {0, 2, 4, 8, 3, 6, 1, 1},
  [ALLIGATORS_SWORD_DRAGON] = {0, 3, 3, 6, 6, 9, 8, 2},
  [ENCHANTING_MERMAID] = {7, 5, 3, 7, 6, 9, 6, 5},
  [NEKOGAL_1] = {0, 1, 7, 6, 1, 0, 6, 3},
  [ROCKET_WARRIOR] = {3, 0, 8, 6, 0, 6, 9, 6},
  [AQUA_SERPENT] = {6, 6, 2, 5, 9, 7, 9, 5},
  [PREVENT_RAT] = {0, 0, 5, 4, 9, 4, 8, 1},
  [DIMENSIONAL_WARRIOR] = {3, 7, 0, 4, 3, 1, 8, 0},
  [THE_LEGENDARY_FISHERMAN] = {0, 3, 6, 4, 3, 3, 0, 0},
  [BEASTKING_OF_THE_SWAMPS] = {9, 9, 4, 2, 6, 8, 3, 4},
  [SATELLITE_CANNON] = {5, 0, 4, 0, 0, 2, 3, 1},
  [LUNAR_QUEEN_ELZAIM] = {6, 2, 2, 1, 0, 2, 4, 7},
  [WICKED_MIRROR] = {1, 5, 1, 5, 0, 3, 7, 1},
  [THE_LITTLE_SWORDSMAN_OF_AILE] = {2, 5, 1, 0, 9, 9, 5, 0},
  [ROCK_OGRE_GROTTO_2] = {6, 2, 1, 9, 3, 6, 9, 9},
  [WING_EGG_ELF] = {9, 8, 5, 8, 2, 7, 0, 4},
  [THE_FURIOUS_SEA_KING] = {1, 8, 7, 1, 0, 7, 0, 7},
  [PRINCESS_OF_TSURUGI] = {5, 1, 3, 7, 1, 0, 1, 7},
  [MORPHING_JAR_2] = {7, 9, 1, 0, 6, 3, 6, 0},
  [VORSE_RAIDER] = {1, 4, 8, 9, 8, 0, 6, 6},
  [VERSAGO_THE_DESTROYER] = {5, 0, 2, 5, 9, 4, 6, 0},
  [WETHA] = {9, 6, 6, 4, 3, 5, 6, 8},
  [MEGIRUS_LIGHT] = {2, 3, 0, 3, 2, 2, 7, 3},
  [MAVELUS] = {5, 9, 0, 3, 6, 9, 7, 2},
  [ANCIENT_TREE_OF_ENLIGHTENMENT] = {8, 6, 4, 2, 1, 9, 8, 6},
  [GREEN_PHANTOM_KING] = {2, 2, 9, 1, 0, 6, 8, 5},
  [GROUND_ATTACKER_BUGROTH] = {5, 8, 3, 1, 4, 3, 9, 4},
  [RAY_TEMPERATURE] = {8, 5, 3, 0, 9, 4, 3, 9},
  [FLAME_CHAMPION] = {4, 2, 5, 9, 9, 6, 7, 7},
  [PETIT_MOTH] = {5, 8, 1, 9, 2, 7, 4, 2},
  [TWIN_HEADED_FIRE_DRAGON] = {7, 8, 9, 8, 4, 7, 7, 2},
  [DARKFIRE_SOLDIER_1] = {0, 5, 3, 8, 8, 4, 8, 1},
  [MYSTIC_CLOWN] = {4, 7, 0, 6, 0, 1, 5, 4},
  [MYSTICAL_SHEEP_2] = {8, 3, 4, 6, 4, 2, 0, 9},
  [HOLOGRAH] = {1, 0, 8, 5, 9, 9, 0, 8},
  [TAO_THE_CHANTER] = {4, 6, 2, 4, 7, 5, 1, 6},
  [SERPENT_MARAUDER] = {8, 2, 7, 4, 2, 6, 1, 1},
  [MR_VOLCANO] = {3, 1, 4, 7, 7, 0, 2, 5},
  [OGRE_OF_THE_BLACK_SHADOW] = {4, 5, 1, 2, 1, 0, 2, 5},
  [DARKFIRE_SOLDIER_2] = {7, 8, 8, 6, 1, 1, 3, 4},
  [CHANGE_SLIME] = {1, 8, 9, 1, 4, 7, 7, 8},
  [MOON_ENVOY] = {4, 5, 9, 0, 9, 4, 7, 7},
  [FIREYAROU] = {7, 1, 4, 0, 7, 4, 8, 6},
  [KISEITAI] = {0, 4, 2, 6, 6, 8, 3, 9},
  [MASAKI_THE_LEGENDARY_SWORDSMAN] = {4, 4, 2, 8, 7, 2, 9, 9},
  [DRAGONESS_THE_WICKED_KNIGHT] = {7, 0, 6, 8, 1, 9, 9, 4},
  [CYBER_FALCON] = {3, 0, 6, 5, 5, 5, 3, 7},
  [ONE_EYED_SHIELD_DRAGON] = {3, 3, 0, 6, 4, 6, 4, 7},
  [THE_WINGED_DRAGON_OF_RA_SPHERE_MODE] = {15, 15, 15, 15, 15, 15, 15, 14},
  [WICKED_DRAGON_WITH_THE_ERSATZ_HEAD] = {0, 2, 9, 5, 7, 0, 5, 5},
  [SONIC_MAID] = {3, 8, 9, 4, 2, 0, 5, 9},
  [KURAMA] = {8, 5, 7, 0, 5, 8, 0, 4},
  [LEGENDARY_SWORD] = {6, 1, 8, 5, 4, 1, 1, 1},
  [SWORD_OF_DARK_DESTRUCTION] = {3, 7, 1, 2, 0, 5, 1, 2},
  [DARK_ENERGY] = {0, 4, 6, 1, 4, 1, 1, 6},
  [AXE_OF_DESPAIR] = {4, 0, 6, 1, 9, 8, 2, 5},
  [LASER_CANNON_ARMOR] = {7, 7, 0, 0, 7, 9, 2, 0},
  [INSECT_ARMOR_WITH_LASER_CANNON] = {0, 3, 4, 9, 2, 5, 3, 8},
  [ELFS_LIGHT] = {3, 9, 8, 9, 7, 2, 7, 7},
  [BEAST_FANGS] = {4, 6, 0, 0, 9, 9, 0, 6},
  [STEEL_SHELL] = {0, 2, 3, 7, 0, 0, 8, 1},
  [VILE_GERMS] = {3, 9, 7, 7, 4, 6, 8, 5},
  [BLACK_PENDANT] = {6, 5, 1, 6, 9, 7, 9, 4},
  [SILVER_BOW_AND_ARROW] = {0, 1, 5, 5, 7, 4, 9, 9},
  [HORN_OF_LIGHT] = {3, 8, 5, 5, 2, 1, 0, 7},
  [HORN_OF_THE_UNICORN] = {6, 4, 0, 4, 7, 1, 4, 6},
  [DRAGON_TREASURE] = {0, 1, 4, 3, 5, 8, 5, 1},
  [ELECTRO_WHIP] = {3, 7, 8, 2, 0, 5, 5, 0},
  [CYBER_SHIELD] = {6, 3, 2, 2, 4, 5, 6, 4},
  [ELEGANT_EGOTIST] = {9, 0, 2, 1, 9, 2, 6, 3},
  [MYSTICAL_MOON] = {3, 6, 6, 0, 7, 9, 7, 8},
  [STOP_DEFENSE] = {6, 3, 1, 0, 2, 0, 1, 7},
  [MALEVOLENT_NUZZLER] = {9, 9, 5, 9, 7, 6, 1, 5},
  [VIOLET_CRYSTAL] = {1, 5, 0, 5, 2, 4, 6, 2},
  [BOOK_OF_SECRET_ARTS] = {9, 1, 5, 9, 5, 7, 1, 8},
  [INVIGORATION] = {9, 8, 3, 7, 4, 1, 3, 3},
  [MACHINE_CONVERSION_FACTORY] = {2, 5, 7, 6, 9, 7, 3, 2},
  [RAISE_BODY_HEAT] = {5, 1, 2, 6, 7, 8, 8, 7},
  [FOLLOW_WIND] = {9, 8, 2, 5, 2, 5, 8, 6},
  [POWER_OF_KAISHIN] = {7, 7, 0, 2, 7, 4, 4, 5},
  [DRAGON_CAPTURE_JAR] = {5, 0, 0, 4, 5, 2, 9, 9},
  [FOREST] = {8, 7, 4, 3, 0, 9, 9, 8},
  [WASTELAND] = {2, 3, 4, 2, 4, 6, 0, 3},
  [MOUNTAIN] = {5, 0, 9, 1, 3, 6, 0, 1},
  [SOGEN] = {8, 6, 3, 1, 8, 3, 5, 6},
  [UMI] = {2, 2, 7, 0, 2, 0, 5, 5},
  [YAMI] = {5, 9, 1, 9, 7, 1, 6, 9},
  [DARK_HOLE] = {5, 3, 1, 2, 9, 4, 4, 3},
  [RAIGEKI] = {1, 2, 5, 8, 0, 4, 7, 7},
  [MOOYAN_CURRY] = {5, 8, 0, 7, 4, 5, 7, 2},
  [RED_MEDICINE] = {3, 8, 1, 9, 9, 6, 9, 6},
  [GOBLINS_SECRET_REMEDY] = {1, 1, 8, 6, 8, 8, 2, 5},
  [SOUL_OF_THE_PURE] = {4, 7, 8, 5, 2, 9, 2, 4},
  [DIAN_KETO_THE_CURE_MASTER] = {8, 4, 2, 5, 7, 6, 3, 9},
  [SPARKS] = {7, 6, 1, 0, 3, 6, 7, 5},
  [HINOTAMA] = {4, 6, 1, 3, 0, 3, 4, 6},
  [FINAL_FLAME] = {7, 3, 1, 3, 4, 0, 8, 1},
  [OOKAZI] = {1, 9, 5, 2, 3, 7, 9, 9},
  [TREMENDOUS_FIRE] = {4, 6, 9, 1, 8, 7, 9, 4},
  [SWORDS_OF_REVEALING_LIGHT] = {7, 2, 3, 0, 2, 4, 0, 3},
  [SPELLBINDING_CIRCLE] = {1, 8, 8, 0, 7, 1, 0, 8},
  [DARK_PIERCING_LIGHT] = {4, 5, 8, 9, 5, 2, 0, 6},
  [YARANZO] = {7, 1, 2, 8, 0, 8, 1, 1},
  [KANAN_THE_SWORDMISTRESS] = {1, 2, 8, 2, 9, 1, 5, 1},
  [TAKRIMINOS] = {4, 4, 0, 7, 3, 6, 6, 8},
  [STUFFED_ANIMAL] = {7, 1, 0, 6, 8, 2, 6, 3},
  [MEGASONIC_EYE] = {0, 7, 5, 6, 2, 3, 7, 2},
  [SUPER_WAR_LION] = {3, 3, 9, 5, 1, 0, 7, 7},
  [YAMADRON] = {7, 0, 3, 4, 5, 7, 8, 5},
  [SEIYARYU] = {0, 6, 7, 4, 0, 7, 2, 0},
  [THREE_LEGGED_ZOMBIES] = {3, 3, 7, 3, 4, 4, 3, 9},
  [ZERA_THE_MANT] = {6, 9, 1, 2, 3, 1, 3, 8},
  [FLYING_PENGUIN] = {0, 5, 6, 2, 8, 2, 3, 2},
  [MILLENNIUM_SHIELD] = {3, 2, 0, 1, 2, 8, 4, 1},
  [FAIRYS_GIFT] = {6, 8, 4, 0, 1, 5, 4, 6},
  [BLACK_LUSTER_SOLDIER] = {0, 5, 4, 0, 5, 6, 9, 4},
  [FIENDS_MIRROR] = {3, 1, 8, 9, 0, 3, 9, 9},
  [LABYRINTH_WALL] = {6, 7, 2, 8, 4, 9, 0, 8},
  [JIRAI_GUMO] = {9, 4, 7, 7, 3, 0, 0, 7},
  [SHADOW_GHOUL] = {3, 0, 7, 7, 8, 7, 1, 1},
  [WALL_SHADOW] = {6, 3, 1, 6, 2, 3, 1, 0},
  [LABYRINTH_TANK] = {9, 9, 5, 5, 1, 4, 2, 5},
  [SANGA_OF_THE_THUNDER] = {2, 5, 9, 5, 5, 1, 6, 4},
  [KAZEJIN] = {6, 2, 3, 4, 0, 8, 6, 8},
  [SUIJIN] = {9, 8, 4, 3, 4, 8, 7, 7},
  [GATE_GUARDIAN] = {2, 5, 8, 3, 3, 5, 7, 2},
  [DUNGEON_WORM] = {5, 1, 2, 2, 8, 2, 8, 0},
  [MONSTER_TAMER] = {9, 7, 6, 1, 2, 3, 8, 9},
  [RYU_KISHIN_POWERED] = {2, 4, 6, 1, 1, 9, 3, 4},
  [SWORDSTALKER] = {5, 0, 0, 0, 5, 6, 3, 3},
  [LA_JINN_THE_MYSTICAL_GENIE_OF_THE_LAMP] = {9, 7, 5, 9, 0, 7, 4, 7},
  [BLUE_EYES_ULTIMATE_DRAGON] = {2, 3, 9, 9, 5, 3, 4, 6},
  [TOON_ALLIGATOR] = {5, 9, 3, 8, 3, 0, 4, 1},
  [RUDE_KAISER] = {2, 6, 3, 7, 8, 1, 5, 0},
  [PARROT_DRAGON] = {6, 2, 7, 6, 2, 8, 9, 8},
  [DARK_RABBIT] = {9, 9, 2, 6, 1, 4, 0, 3},
  [BICKURIBOX] = {2, 5, 6, 5, 5, 5, 0, 2},
  [HARPIES_PET_DRAGON] = {5, 2, 0, 4, 0, 2, 1, 6},
  [MYSTIC_LAMP] = {9, 8, 0, 4, 9, 9, 1, 5},
  [PENDULUM_MACHINE] = {2, 4, 4, 3, 3, 9, 2, 0},
  [GILTIA_THE_D_KNIGHT] = {5, 1, 8, 2, 8, 6, 2, 9},
  [LAUNCHER_SPIDER] = {8, 7, 3, 2, 2, 3, 7, 7},
  [ZOA] = {2, 4, 3, 1, 1, 3, 7, 2},
  [METALZOA] = {5, 0, 7, 0, 5, 0, 7, 1},
  [ZONE_EATER] = {8, 6, 1, 0, 0, 7, 8, 5},
  [STEEL_SCORPION] = {1, 3, 5, 9, 9, 8, 8, 4},
  [DANCING_ELF] = {5, 9, 9, 8, 3, 4, 9, 9},
  [OCUBEAM] = {8, 6, 0, 8, 8, 1, 3, 8},
  [LEGHUL] = {1, 2, 4, 7, 2, 2, 4, 2},
  [OOGUCHI] = {5, 8, 8, 6, 1, 9, 4, 1},
  [GAMMA_THE_MAGNET_WARRIOR] = {1, 1, 5, 4, 9, 3, 5, 7},
  [EMPEROR_OF_THE_LAND_AND_SEA] = {1, 1, 2, 5, 0, 6, 5, 5},
  [USHI_ONI] = {4, 8, 6, 4, 9, 3, 5, 3},
  [MONSTER_EYE] = {8, 4, 1, 3, 3, 0, 0, 8},
  [LEOGUN] = {1, 0, 5, 3, 8, 0, 0, 7},
  [TATSUNOOTOSHIGO] = {4, 7, 9, 2, 2, 7, 1, 1},
  [SABER_SLASHER] = {7, 3, 9, 1, 1, 4, 1, 0},
  [KAISER_SEA_HORSE] = {1, 7, 4, 4, 4, 1, 3, 3},
  [MACHINE_KING] = {4, 6, 7, 0, 0, 1, 2, 4},
  [GIANT_MECH_SOLDIER] = {7, 2, 2, 9, 9, 8, 3, 2},
  [METAL_DRAGON] = {0, 9, 2, 9, 3, 9, 7, 7},
  [MECHANICAL_SPIDER] = {4, 5, 6, 8, 8, 5, 8, 6},
  [BAT] = {7, 2, 0, 7, 6, 2, 8, 1},
  [THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE] = {15, 15, 15, 15, 15, 15, 15, 14},
  [CYBER_SOLDIER] = {4, 4, 8, 6, 5, 0, 9, 8},
  [SHOVEL_CRUSHER] = {7, 1, 9, 5, 0, 0, 9, 3},
  [MECHANICALCHASER] = {0, 7, 3, 5, 9, 7, 4, 1},
  [BLOCKER] = {3, 4, 7, 4, 3, 4, 4, 6},
  [BLAST_JUGGLER] = {7, 0, 1, 3, 8, 4, 5, 5},
  [GOLGOIL] = {0, 7, 5, 2, 6, 1, 5, 0},
  [FLYING_KAMAKIRI_2] = {0, 3, 1, 3, 4, 2, 4, 1},
  [CYBER_STEIN] = {6, 9, 0, 1, 5, 9, 6, 3},
  [CYBER_COMMANDER] = {0, 6, 4, 0, 0, 5, 1, 2},
  [JINZO_7] = {3, 2, 8, 0, 9, 2, 1, 1},
  [DICE_ARMADILLO] = {6, 9, 8, 9, 3, 3, 1, 5},
  [SKY_DRAGON] = {9, 5, 2, 8, 8, 0, 2, 4},
  [THUNDER_DRAGON] = {3, 1, 7, 8, 6, 6, 2, 9},
  [STONE_D_] = {6, 8, 1, 7, 1, 7, 3, 7},
  [KAISER_DRAGON] = {9, 4, 5, 6, 6, 4, 3, 2},
  [MAGICIAN_OF_FAITH] = {3, 1, 5, 6, 0, 0, 8, 1},
  [GODDESS_OF_WHIM] = {6, 7, 9, 5, 9, 1, 8, 0},
  [GRADIUS] = {1, 0, 9, 9, 2, 2, 5, 1},
  [ICE_WATER] = {2, 0, 8, 4, 8, 5, 9, 3},
  [WATERDRAGON_FAIRY] = {6, 6, 8, 3, 6, 5, 9, 8},
  [ANCIENT_ELF] = {9, 3, 2, 2, 1, 2, 0, 6},
  [HARPIES_BROTHER] = {3, 0, 5, 3, 2, 3, 9, 0},
  [AERIS] = {5, 4, 2, 8, 5, 2, 3, 0},
  [WHITE_DOLPHIN] = {9, 2, 4, 0, 9, 6, 5, 9},
  [DEEPSEA_SHARK] = {2, 8, 5, 9, 3, 3, 6, 3},
  [METAL_FISH] = {5, 5, 9, 9, 8, 4, 6, 2},
  [GRAND_TIKI_ELDER] = {1, 3, 6, 7, 6, 4, 7, 4},
  [SEVEN_COLORED_FISH] = {2, 3, 7, 7, 1, 7, 1, 6},
  [MECH_BASS] = {5, 0, 1, 7, 6, 8, 2, 0},
  [AQUA_DRAGON] = {8, 6, 1, 6, 4, 5, 2, 9},
  [SEA_KING_DRAGON] = {2, 3, 6, 5, 9, 1, 2, 4},
  [TURU_PURUN] = {5, 9, 0, 5, 3, 2, 3, 2},
  [GIANT_REX] = {8, 0, 2, 8, 0, 9, 4, 4},
  [AQUA_SNAKE] = {1, 2, 4, 3, 6, 6, 4, 6},
  [GIANT_RED_SEASNAKE] = {5, 8, 8, 3, 1, 6, 8, 5},
  [SPIKE_SEADRA] = {8, 5, 3, 2, 6, 3, 9, 9},
  [THIRTY_THOUSAND_YEAR_WHITE_TURTLE] = {1, 1, 7, 1, 4, 0, 9, 8},
  [KAPPA_AVENGER] = {4, 8, 1, 0, 9, 1, 0, 3},
  [KANIKABUTO] = {8, 4, 1, 0, 3, 7, 0, 2},
  [ZARIGUN] = {1, 0, 5, 9, 8, 4, 0, 0},
  [MILLENNIUM_GOLEM] = {4, 7, 9, 8, 6, 5, 5, 5},
  [DESTROYER_GOLEM] = {7, 3, 4, 8, 1, 1, 5, 4},
  [BARREL_ROCK] = {1, 0, 4, 7, 6, 8, 6, 8},
  [MINOMUSHI_WARRIOR] = {4, 6, 8, 6, 4, 9, 6, 7},
  [THE_MASKED_BEAST] = {4, 9, 0, 6, 4, 4, 1, 3},
  [KAMINARI_ATTACK] = {0, 9, 6, 5, 3, 2, 7, 1},
  [TRIPWIRE_BEAST] = {4, 5, 0, 4, 2, 3, 2, 9},
  [BOLT_ESCARGOT] = {1, 2, 1, 4, 6, 0, 2, 4},
  [BOLT_PENGUIN] = {4, 8, 5, 3, 1, 7, 3, 3},
  [THE_IMMORTAL_OF_THUNDER] = {8, 4, 9, 2, 6, 7, 3, 8},
  [ELECTRIC_SNAKE] = {1, 1, 3, 2, 4, 4, 3, 6},
  [WING_EAGLE] = {4, 7, 3, 1, 9, 1, 4, 1},
  [PUNISHED_EAGLE] = {7, 4, 7, 0, 3, 1, 4, 0},
  [SKULL_RED_BIRD] = {1, 0, 2, 0, 2, 8, 9, 4},
  [CRIMSON_SUNBIRD] = {4, 6, 6, 9, 6, 5, 9, 3},
  [QUEEN_BIRD] = {7, 3, 0, 8, 1, 6, 0, 2},
  [ARMED_NINJA] = {0, 9, 0, 7, 6, 2, 0, 7},
  [MAGICAL_GHOST] = {4, 6, 4, 7, 4, 9, 1, 5},
  [SOUL_HUNTER] = {7, 2, 8, 6, 9, 0, 1, 0},
  [THE_EARL_OF_DEMISE] = {6, 6, 9, 8, 9, 6, 9, 4},
  [VERMILLION_SPARROW] = {3, 5, 7, 5, 2, 3, 6, 3},
  [SEA_KAMEN] = {7, 1, 7, 4, 6, 4, 6, 2},
  [SINISTER_SERPENT] = {0, 8, 1, 3, 1, 1, 7, 1},
  [GANIGUMO] = {3, 4, 5, 3, 6, 2, 7, 6},
  [ALINSECTION] = {7, 0, 9, 2, 4, 8, 8, 4},
  [INSECT_SOLDIERS_OF_THE_SKY] = {0, 7, 0, 1, 9, 5, 2, 9},
  [COCKROACH_KNIGHT] = {3, 3, 4, 1, 3, 6, 3, 8},
  [KUWAGATA_A] = {6, 0, 8, 0, 2, 2, 3, 3},
  [BURGLAR] = {0, 6, 2, 9, 7, 9, 4, 1},
  [PRAGTICAL] = {3, 3, 6, 9, 1, 0, 4, 0},
  [GARVAS] = {6, 9, 7, 8, 0, 7, 4, 5},
  [AMEBA] = {9, 5, 1, 7, 4, 3, 5, 3},
  [KOROGASHI] = {3, 2, 5, 6, 9, 4, 9, 8},
  [BOO_KOO] = {6, 8, 9, 6, 3, 1, 0, 7},
  [FLOWER_WOLF] = {9, 5, 9, 5, 2, 8, 0, 2},
  [RAINBOW_FLOWER] = {2, 1, 3, 4, 7, 8, 1, 0},
  [BARREL_LILY] = {6, 7, 8, 4, 1, 5, 1, 5},
  [NEEDLE_BALL] = {9, 4, 2, 3, 0, 2, 2, 4},
  [PEACOCK] = {2, 0, 6, 2, 4, 2, 6, 3},
  [HOSHININGEN] = {6, 7, 6, 2, 9, 9, 7, 7},
  [MAHA_VAILO] = {9, 3, 0, 1, 3, 6, 7, 6},
  [RAINBOW_MARINE_MERMAID] = {2, 9, 4, 0, 2, 7, 7, 1},
  [MUSICIAN_KING] = {5, 6, 9, 0, 7, 3, 8, 9},
  [WILMEE] = {9, 2, 3, 9, 1, 0, 8, 4},
  [YADO_KARU] = {2, 9, 3, 8, 0, 1, 3, 3},
  [MORINPHEN] = {5, 5, 7, 8, 4, 8, 3, 2},
  [BONEHEIMER] = {9, 8, 4, 5, 6, 1, 1, 7},
  [DRAGON_SEEKER] = {2, 8, 5, 6, 3, 5, 4, 5},
  [MAN_EATER_BUG] = {5, 4, 6, 5, 2, 2, 5, 0},
  [PENGUIN_TORPEDO] = {1, 7, 6, 7, 9, 0, 4, 3},
  [TURTLE_RACCOON] = {1, 7, 4, 4, 1, 9, 5, 3},
  [FLAME_DANCER] = {1, 2, 8, 8, 3, 0, 4, 4},
  [PRISMAN] = {8, 0, 2, 3, 4, 3, 0, 1},
  [GALE_DOGRA] = {1, 6, 2, 2, 9, 3, 1, 5},
  [CRAZY_FISH] = {5, 3, 7, 1, 3, 0, 1, 4},
  [CYBER_SAURUS] = {8, 9, 1, 1, 2, 7, 2, 9},
  [BRACCHIO_RAIDUS] = {1, 6, 5, 0, 7, 8, 2, 8},
  [LAUGHING_FLOWER] = {4, 2, 5, 9, 1, 4, 7, 2},
  [BEAN_SOLDIER] = {8, 4, 9, 9, 0, 1, 7, 1},
  [CANNON_SOLDIER] = {1, 1, 3, 8, 4, 2, 8, 0},
  [GUARDIAN_OF_THE_THRONE_ROOM] = {4, 7, 8, 7, 9, 9, 8, 5},
  [ASURA_PRIEST] = {0, 2, 1, 3, 4, 3, 4, 6},
  [THE_STATUE_OF_EASTER_ISLAND] = {1, 0, 2, 6, 2, 6, 9, 8},
  [MUKA_MUKA] = {4, 6, 6, 5, 7, 3, 3, 7},
  [ZOMBYRA_THE_DARK] = {8, 8, 4, 7, 2, 4, 5, 6},
  [BOULDER_TORTOISE] = {0, 9, 5, 4, 0, 0, 4, 0},
  [FIRE_KRAKEN] = {4, 6, 5, 3, 4, 7, 5, 5},
  [TURTLE_BIRD] = {7, 2, 9, 2, 9, 4, 5, 4},
  [SKULLBIRD] = {0, 8, 3, 2, 7, 4, 6, 2},
  [MONSTROUS_BIRD] = {3, 5, 7, 1, 2, 1, 0, 7},
  [THE_BISTRO_BUTCHER] = {7, 1, 1, 0, 7, 8, 1, 6},
  [STAR_BOY] = {0, 8, 2, 0, 1, 9, 1, 0},
  [SPIRIT_OF_THE_MOUNTAIN] = {3, 4, 6, 9, 0, 5, 1, 9},
  [EARTHBOUND_SPIRIT] = {6, 7, 1, 0, 5, 2, 4, 2},
  [MILUS_RADIANT] = {0, 7, 4, 8, 9, 3, 2, 3},
  [TOGEX] = {3, 3, 8, 7, 8, 9, 3, 1},
  [FLAME_CEREBRUS] = {6, 0, 8, 6, 2, 6, 7, 6},
  [EMBODIMENT_OF_APOPHIS] = {2, 8, 6, 4, 9, 8, 2, 0},
  [MYSTICAL_SAND] = {3, 2, 7, 5, 1, 4, 8, 0},
  [GEMINI_ELF] = {6, 9, 1, 4, 0, 0, 9, 8},
  [KWAGAR_HERCULES] = {9, 5, 1, 4, 4, 1, 9, 3},
  [MINAR] = {3, 2, 5, 3, 9, 8, 9, 2},
  [ANCIENT_LAMP] = {5, 4, 9, 1, 2, 9, 7, 7},
  [MECHALEON] = {9, 4, 4, 1, 2, 5, 4, 5},
  [MEGA_THUNDERBALL] = {2, 1, 8, 1, 7, 2, 5, 4},
  [NIWATORI] = {0, 7, 8, 0, 5, 3, 5, 9},
  [AMAZON_CHAIN_MASTER] = {2, 9, 6, 5, 4, 7, 3, 7},
  [SKELENGEL] = {6, 0, 6, 9, 4, 6, 6, 2},
  [HANE_HANE] = {0, 7, 0, 8, 9, 7, 1, 1},
  [MISAIRUZAME] = {3, 3, 1, 7, 8, 4, 1, 6},
  [THUNDER_NYAN_NYAN] = {7, 0, 7, 9, 7, 1, 1, 8},
  [DHARMA_CANNON] = {9, 6, 9, 6, 7, 1, 2, 3},
  [SKELGON] = {3, 2, 3, 5, 5, 8, 2, 8},
  [WOW_WARRIOR] = {6, 9, 7, 5, 0, 5, 3, 6},
  [GRIGGLE] = {9, 5, 7, 4, 4, 5, 3, 1},
  [BONE_MOUSE] = {2, 1, 2, 3, 9, 2, 8, 0},
  [FROG_THE_JAM] = {6, 8, 6, 3, 8, 9, 8, 5},
  [LAST_TUSK_MAMMOTH] = {4, 3, 0, 6, 3, 7, 5, 8},
  [DARK_ELF] = {2, 1, 4, 1, 7, 6, 9, 2},
  [WINGED_DRAGON_GUARDIAN_OF_THE_FORTRESS_2] = {5, 7, 4, 0, 5, 3, 0, 7},
  [MUSHROOM_MAN_2] = {9, 3, 9, 0, 0, 4, 0, 6},
  [LAVA_BATTLEGUARD] = {2, 0, 3, 9, 4, 0, 4, 0},
  [QUEENS_KNIGHT] = {2, 5, 6, 5, 2, 2, 5, 9},
  [INJECTION_FAIRY_LILY] = {7, 9, 5, 7, 5, 6, 2, 0},
  [JACKS_KNIGHT] = {9, 0, 8, 7, 6, 5, 6, 1},
  [POT_THE_TRICK] = {5, 5, 5, 6, 7, 1, 6, 1},
  [OSCILLO_HERO] = {8, 2, 0, 6, 5, 2, 7, 6},
  [INVADER_FROM_ANOTHER_DIMENSION] = {2, 8, 4, 5, 0, 9, 1, 5},
  [LESSER_DRAGON] = {5, 5, 4, 4, 4, 6, 2, 9},
  [NEEDLE_WORM] = {8, 1, 8, 4, 3, 6, 2, 8},
  [KINGS_KNIGHT] = {6, 4, 7, 8, 8, 4, 6, 3},
  [GREAT_MAMMOTH_OF_GOLDFINE] = {5, 4, 6, 2, 2, 0, 3, 1},
  [GIL_GARTH] = {3, 8, 4, 4, 5, 5, 2, 4},
  [YORMUNGARDE] = {1, 7, 1, 1, 5, 7, 4, 5},
  [DARKWORLD_THORNS] = {4, 3, 5, 0, 0, 4, 8, 4},
  [BLADE_KNIGHT] = {3, 9, 5, 0, 7, 1, 6, 2},
  [GERNIA] = {7, 7, 9, 3, 6, 9, 4, 0},
  [TRAKADON] = {4, 2, 3, 4, 8, 8, 0, 2},
  [B_DRAGON_JUNGLE_KING] = {8, 9, 8, 3, 2, 9, 0, 1},
  [EMPRESS_JUDGE] = {1, 5, 2, 3, 7, 6, 1, 5},
  [LITTLE_D] = {4, 2, 6, 2, 5, 2, 5, 4},
  [WITCH_OF_THE_BLACK_FOREST] = {7, 8, 0, 1, 0, 3, 6, 3},
  [Y_DRAGON_HEAD] = {6, 5, 6, 2, 2, 6, 9, 2},
  [GIANT_SCORPION_OF_THE_TUNDRA] = {4, 1, 4, 0, 3, 7, 6, 6},
  [CROW_GOBLIN] = {7, 7, 9, 9, 8, 7, 7, 1},
  [DARK_MAGICIAN_KNIGHT] = {5, 0, 7, 2, 5, 9, 9, 6},
  [ABYSS_FLOWER] = {4, 0, 3, 8, 7, 1, 2, 4},
  [PATROL_ROBO] = {7, 6, 7, 7, 5, 1, 2, 3},
  [TAKUHEE] = {0, 3, 1, 7, 0, 8, 3, 2},
  [DARK_WITCH] = {3, 5, 5, 6, 5, 5, 3, 7},
  [DESTINY_BOARD] = {9, 4, 2, 1, 2, 4, 3, 8},
  [SPIRIT_MESSAGE_I] = {3, 1, 8, 9, 3, 5, 2, 8},
  [SPIRIT_MESSAGE_N] = {6, 7, 2, 8, 7, 5, 3, 3},
  [SPIRIT_MESSAGE_A] = {9, 4, 7, 7, 2, 2, 3, 2},
  [SPIRIT_MESSAGE_L] = {3, 0, 1, 7, 0, 9, 8, 1},
  [LIVING_VASE] = {3, 4, 3, 2, 0, 3, 0, 7},
  [TENTACLE_PLANT] = {6, 0, 7, 1, 5, 4, 0, 6},
  [Z_METAL_TANK] = {6, 4, 5, 0, 0, 0, 0, 0},
  [MORPHING_JAR] = {3, 3, 5, 0, 8, 7, 1, 9},
  [MUSE_A] = {6, 9, 9, 9, 2, 8, 6, 8},
  [XY_DRAGON_CANNON] = {0, 2, 1, 1, 1, 7, 0, 7},
  [ROSE_SPECTRE_OF_DUNN] = {3, 2, 4, 8, 5, 2, 7, 1},
  [FIEND_REFLECTION_1] = {6, 8, 8, 7, 0, 2, 7, 6},
  [XZ_TANK_CANNON] = {9, 9, 7, 2, 4, 7, 6, 1},
  [YZ_TANK_DRAGON] = {2, 5, 1, 1, 9, 4, 6, 0},
  [LITTLE_CHIMERA] = {6, 8, 6, 5, 8, 7, 2, 8},
  [VIOLENT_RAIN] = {9, 4, 0, 4, 2, 3, 3, 7},
  [EXODIA_NECROSS] = {1, 2, 6, 0, 0, 3, 8, 2},
  [MONSTER_REBORN] = {8, 3, 7, 6, 4, 7, 1, 8},
  [PENGUIN_SOLDIER] = {9, 3, 9, 2, 0, 7, 4, 5},
  [FAIRY_DRAGON] = {2, 0, 3, 1, 5, 8, 5, 4},
  [HELPOEMER] = {7, 6, 0, 5, 2, 8, 1, 1},
  [LAVA_GOLEM] = {0, 0, 1, 0, 2, 3, 8, 0},
  [NEWDORIA] = {0, 4, 3, 3, 5, 6, 4, 5},
  [DARK_JEROID] = {9, 0, 9, 8, 0, 7, 9, 2},
  [SHINING_FRIENDSHIP] = {8, 2, 0, 8, 5, 6, 1, 9},
  [GRAVEDIGGER_GHOUL] = {8, 2, 5, 4, 2, 2, 6, 7},
  [ELECTRIC_LIZARD] = {5, 5, 8, 7, 5, 3, 2, 3},
  [HIROS_SHADOW_SCOUT] = {8, 1, 8, 6, 3, 0, 6, 8},
  [LADY_OF_FAITH] = {1, 7, 3, 5, 8, 1, 7, 6},
  [TWIN_HEADED_THUNDER_DRAGON] = {5, 4, 7, 5, 2, 8, 7, 5},
  [HUNTER_SPIDER] = {8, 0, 1, 4, 1, 4, 8, 0},
  [ARMORED_STARFISH] = {1, 7, 5, 3, 5, 5, 8, 8},
  [EXECUTOR_MAKYURA] = {2, 1, 5, 9, 3, 9, 7, 7},
  [MARINE_BEAST] = {2, 9, 9, 2, 9, 8, 3, 2},
  [WARRIOR_OF_TRADITION] = {5, 6, 4, 1, 3, 9, 3, 7},
  [BYSER_SHOCK] = {1, 7, 5, 9, 7, 0, 5, 9},
  [SNAKEYASHI] = {2, 9, 8, 0, 2, 3, 4, 4},
  [SUCCUBUS_KNIGHT] = {5, 5, 2, 9, 1, 3, 5, 9},
  [ILL_WITCH] = {8, 1, 6, 8, 6, 0, 5, 8},
  [VISER_DES] = {5, 6, 0, 4, 3, 4, 4, 6},
  [HIGH_TIDE_GYOJIN] = {5, 4, 5, 7, 9, 8, 0, 1},
  [FAIRY_OF_THE_FOUNTAIN] = {8, 1, 5, 6, 3, 4, 1, 6},
  [AMAZON_OF_THE_SEAS] = {1, 7, 9, 6, 8, 1, 1, 4},
  [NEKOGAL_2] = {4, 3, 3, 5, 2, 2, 1, 3},
  [WITCHS_APPRENTICE] = {8, 0, 7, 4, 1, 8, 2, 8},
  [PUPPET_MASTER] = {4, 1, 4, 4, 2, 3, 4, 1},
  [AMAZON_FIGHTER] = {5, 5, 8, 2, 1, 8, 9, 4},
  [MAIDEN_OF_THE_MOONLIGHT] = {7, 9, 6, 2, 9, 3, 7, 0},
  [STONE_OGRE_GROTTO] = {1, 5, 0, 2, 3, 9, 8, 5},
  [AMAZON_SWORD_WOMAN] = {9, 4, 0, 0, 4, 2, 6, 8},
  [VAMPIRE_LORD] = {5, 3, 8, 3, 9, 8, 3, 7},
  [QUEENS_DOUBLE] = {0, 5, 9, 0, 1, 4, 9, 7},
  [DARK_PALADIN] = {9, 8, 5, 0, 2, 1, 1, 3},
  [TRENT] = {7, 8, 7, 8, 0, 1, 4, 0},
  [QUEEN_OF_AUTUMN_LEAVES] = {0, 4, 1, 7, 9, 8, 4, 9},
  [AMPHIBIOUS_BUGROTH] = {4, 0, 1, 7, 3, 8, 5, 4},
  [DIFFERENT_DIMENSION_DRAGON] = {5, 0, 9, 3, 9, 1, 2, 7},
  [AMAZON_ARCHERS] = {6, 7, 9, 8, 7, 6, 1, 1},
  [MYSTICAL_SHEEP_1] = {3, 0, 4, 5, 1, 3, 6, 6},
  [YAMATA_DRAGON] = {7, 6, 8, 6, 2, 2, 8, 9},
  [SHINATO_KING_OF_A_HIGHER_PLANE] = {8, 6, 3, 2, 7, 2, 2, 5},
  [DARK_FLARE_KNIGHT] = {1, 3, 7, 2, 2, 8, 7, 0},
  [MIRAGE_KNIGHT] = {4, 9, 2, 1, 7, 5, 7, 9},
  [BERSERK_DRAGON] = {8, 5, 6, 0, 5, 6, 8, 4},
  [MACHINE_ATTACKER] = {3, 8, 1, 1, 6, 1, 3, 6},
  [COMMAND_ANGEL] = {8, 0, 5, 5, 8, 3, 5, 7},
  [WHIPTAIL_CROW] = {9, 1, 9, 9, 6, 5, 8, 4},
  [KUNAI_WITH_CHAIN] = {3, 7, 3, 9, 0, 5, 8, 9},
  [MAGICAL_LABYRINTH] = {6, 4, 3, 8, 9, 2, 9, 7},
  [WARRIOR_ELIMINATION] = {9, 0, 8, 7, 3, 9, 9, 2},
  [SALAMANDRA] = {3, 2, 2, 6, 8, 9, 0, 1},
  [CURSEBREAKER] = {6, 9, 6, 6, 6, 6, 4, 5},
  [ETERNAL_REST] = {9, 5, 0, 5, 1, 3, 4, 4},
  [MEGAMORPH] = {2, 2, 0, 4, 6, 4, 5, 9},
  [METALMORPH] = {6, 8, 5, 4, 0, 0, 5, 8},
  [WINGED_TRUMPETER] = {9, 4, 9, 3, 9, 1, 6, 6},
  [STAIN_STORM] = {2, 1, 3, 2, 3, 8, 6, 1},
  [CRUSH_CARD] = {5, 7, 7, 2, 8, 5, 7, 0},
  [ERADICATING_AEROSOL] = {9, 4, 7, 1, 6, 5, 1, 5},
  [BREATH_OF_LIGHT] = {2, 0, 1, 0, 1, 2, 2, 3},
  [ETERNAL_DROUGHT] = {5, 6, 6, 0, 6, 9, 2, 8},
  [DES_VOLSTGALPH] = {8, 1, 0, 5, 9, 5, 2, 4},
  [TOON_DARK_MAGICIAN_GIRL] = {9, 0, 9, 6, 0, 3, 5, 8},
  [GILFORD_THE_LIGHTNING] = {3, 6, 3, 5, 4, 0, 0, 7},
  [BRIGHT_CASTLE] = {8, 2, 8, 7, 8, 4, 8, 9},
  [SHADOW_SPELL] = {2, 9, 2, 6, 7, 0, 8, 4},
  [BLACK_LUSTER_RITUAL] = {5, 5, 7, 6, 1, 7, 9, 2},
  [MYSTICAL_BEAST_SERKET] = {8, 9, 1, 9, 4, 0, 3, 3},
  [HARPIES_FEATHER_DUSTER] = {1, 8, 1, 4, 4, 5, 0, 6},
  [CYBER_HARPIE] = {8, 0, 3, 1, 6, 5, 8, 5},
  [LIGHTNING_CONGER] = {2, 7, 6, 7, 1, 3, 2, 1},
  [EXARION_UNIVERSE] = {6, 3, 7, 4, 9, 1, 0, 2},
  [LEGENDARY_FIEND] = {9, 9, 7, 4, 7, 8, 0, 0},
  [GADGET_SOLDIER] = {8, 6, 2, 8, 1, 7, 7, 9},
  [MELCHID_THE_FOUR_FACE_BEAST] = {8, 6, 5, 6, 9, 1, 2, 1},
  [NUVIA_THE_WICKED] = {1, 2, 9, 5, 3, 2, 2, 6},
  [MASKED_BEAST_DES_GARDIUS] = {4, 8, 9, 4, 8, 9, 3, 5},
  [HOUSE_OF_ADHESIVE_TAPE] = {1, 5, 0, 8, 3, 7, 2, 8},
  [EATGABOON] = {4, 2, 5, 7, 8, 4, 2, 7},
  [BEAR_TRAP] = {7, 8, 9, 7, 7, 5, 3, 2},
  [INVISIBLE_WIRE] = {1, 5, 3, 6, 1, 1, 3, 0},
  [ACID_TRAP_HOLE] = {4, 1, 3, 5, 6, 8, 4, 5},
  [WIDESPREAD_RUIN] = {7, 7, 7, 5, 4, 9, 4, 4},
  [GOBLIN_FAN] = {0, 4, 1, 4, 9, 6, 8, 9},
  [BAD_REACTION_TO_SIMOCHI] = {4, 0, 6, 3, 3, 2, 9, 7},
  [REVERSE_TRAP] = {7, 7, 6, 2, 2, 3, 9, 6},
  [FAKE_TRAP] = {0, 3, 0, 2, 7, 0, 0, 1},
  [VALKYRION_THE_MAGNA_WARRIOR] = {7, 5, 3, 4, 7, 5, 3, 9},
  [TORRENTIAL_TRIBUTE] = {5, 3, 5, 8, 2, 5, 8, 7},
  [BECKON_TO_DARKNESS] = {0, 8, 0, 6, 5, 5, 3, 0},
  [INFINITE_DISMISSAL] = {5, 4, 1, 0, 9, 2, 3, 3},
  [SEVEN_COMPLETED] = {8, 6, 1, 9, 8, 3, 2, 6},
  [DARK_SAGE] = {9, 2, 3, 7, 7, 3, 0, 3},
  [F_G_D] = {9, 9, 2, 6, 7, 1, 5, 0},
  [MASTER_OF_DRAGON_SOLDIER] = {6, 2, 8, 7, 3, 5, 4, 5},
  [MESSENGER_OF_PEACE] = {4, 4, 6, 5, 6, 4, 9, 1},
  [DARKNESS_APPROACHES] = {8, 0, 1, 6, 8, 7, 2, 0},
  [PERFORMANCE_OF_SWORD] = {0, 4, 8, 4, 9, 0, 3, 7},
  [HUNGRY_BURGER] = {3, 0, 2, 4, 3, 6, 3, 6},
  [SENGENJIN] = {7, 6, 2, 3, 2, 3, 4, 0},
  [SKULL_GUARDIAN] = {0, 3, 6, 2, 7, 4, 4, 9},
  [TRI_HORNED_DRAGON] = {3, 9, 1, 1, 1, 1, 5, 8},
  [SERPENT_NIGHT_DRAGON] = {6, 6, 5, 1, 6, 7, 9, 2},
  [SKULL_KNIGHT] = {0, 2, 5, 0, 4, 8, 9, 1},
  [COSMO_QUEEN] = {3, 8, 9, 9, 9, 5, 0, 6},
  [CHAKRA] = {6, 5, 3, 9, 3, 2, 0, 5},
  [CRAB_TURTLE] = {9, 1, 7, 8, 2, 2, 1, 9},
  [MIKAZUKINOYAIBA] = {3, 8, 2, 7, 7, 9, 1, 8},
  [METEOR_DRAGON] = {6, 4, 2, 7, 1, 6, 6, 7},
  [METEOR_B_DRAGON] = {9, 0, 6, 6, 0, 7, 6, 2},
  [FIREWING_PEGASUS] = {2, 7, 0, 5, 4, 3, 7, 0},
  [PSYCHO_PUPPET] = {6, 3, 4, 5, 9, 0, 7, 5},
  [GARMA_SWORD] = {9, 0, 8, 4, 4, 1, 8, 4},
  [JAVELIN_BEETLE] = {2, 6, 9, 3, 2, 7, 8, 8},
  [FORTRESS_WHALE] = {6, 2, 3, 3, 7, 4, 8, 7},
  [DOKURORIDER] = {9, 9, 7, 2, 1, 5, 3, 6},
  [MASK_OF_SHINE_DARK] = {2, 5, 1, 1, 0, 2, 3, 1},
  [MAGICIAN_OF_BLACK_CHAOS] = {3, 0, 2, 0, 8, 4, 7, 9},
  [DARK_MAGIC_RITUAL] = {7, 6, 7, 9, 2, 1, 8, 4},
  [SLOT_MACHINE] = {0, 3, 7, 9, 7, 8, 8, 3},
  [SPACE_MEGATRON] = {3, 9, 1, 8, 1, 8, 9, 7},
  [RED_ARCHERY_GIRL] = {6, 5, 5, 7, 0, 5, 9, 6},
  [RYU_RAN] = {0, 2, 9, 6, 4, 2, 0, 1},
  [MANGA_RYU_RAN] = {3, 8, 3, 6, 9, 3, 4, 9},
  [TOON_MERMAID] = {6, 5, 4, 5, 8, 9, 4, 8},
  [TOON_SUMMONED_SKULL] = {9, 1, 8, 4, 2, 6, 5, 3},
  [DARK_EYES_ILLUSIONIST] = {3, 8, 2, 4, 7, 7, 5, 2},
  [RELINQUISHED] = {6, 4, 6, 3, 1, 4, 6, 6},
  [JIGEN_BAKUDAN] = {9, 0, 0, 2, 0, 0, 6, 5},
  [THOUSAND_EYES_IDOL] = {2, 7, 1, 2, 5, 1, 1, 0},
  [THOUSAND_EYES_RESTRICT] = {6, 3, 5, 1, 9, 8, 1, 9},
  [STEEL_OGRE_GROTTO_2] = {9, 0, 9, 0, 8, 4, 2, 7},
  [BLAST_SPHERE] = {2, 6, 3, 0, 2, 5, 2, 2},
  [HYOZANRYU] = {6, 2, 3, 9, 7, 2, 3, 1},
  [ALPHA_THE_MAGNET_WARRIOR] = {9, 9, 7, 8, 5, 9, 3, 5},
  [LEGION_THE_FIEND_JESTER] = {2, 5, 2, 8, 0, 9, 7, 4},
  [INVITATION_TO_A_DARK_SLEEP] = {5, 2, 6, 7, 5, 6, 8, 9},
  [LORD_OF_D] = {1, 7, 9, 8, 5, 5, 7, 5},
  [RED_EYES_BLACK_METAL_DRAGON] = {6, 4, 3, 3, 5, 8, 0, 4},
  [BARREL_DRAGON] = {8, 1, 4, 8, 0, 4, 6, 0},
  [HANNIBAL_NECROMANCER] = {0, 5, 6, 4, 0, 3, 3, 0},
  [PANTHER_WARRIOR] = {4, 2, 0, 3, 5, 0, 4, 4},
  [THREE_HEADED_GEEDO] = {7, 8, 4, 2, 3, 6, 4, 3},
  [GAZELLE_THE_KING_OF_MYTHICAL_BEASTS] = {0, 5, 8, 1, 8, 7, 9, 8},
  [STONE_STATUE_OF_THE_AZTECS] = {3, 1, 8, 1, 2, 4, 9, 6},
  [BERFOMET] = {7, 7, 2, 0, 7, 1, 9, 1},
  [CHIMERA_THE_FLYING_MYTHICAL_BEAST] = {0, 4, 7, 9, 6, 1, 0, 0},
  [GEAR_GOLEM_THE_MOVING_FORTRESS] = {3, 0, 1, 9, 0, 8, 0, 9},
  [JINZO] = {7, 7, 5, 8, 5, 5, 1, 3},
  [SWORDSMAN_OF_LANDSTAR] = {0, 3, 5, 7, 3, 5, 1, 2},
  [CYBER_RAIDER] = {3, 9, 9, 7, 8, 2, 6, 7},
  [THE_FIEND_MEGACYBER] = {6, 6, 3, 6, 2, 9, 6, 5},
  [REFLECT_BOUNDER] = {0, 2, 8, 5, 1, 0, 7, 0},
  [BETA_THE_MAGNET_WARRIOR] = {3, 9, 2, 5, 6, 6, 7, 9},
  [BIG_SHIELD_GARDNA] = {6, 5, 2, 4, 0, 3, 8, 4},
  [DOLL_OF_DEMISE] = {9, 1, 6, 3, 5, 4, 8, 2},
  [DARK_MAGICIAN_GIRL] = {3, 8, 0, 3, 3, 1, 2, 1},
  [ALLIGATORS_SWORD] = {6, 4, 4, 2, 8, 7, 3, 6},
  [INSECT_QUEEN] = {9, 1, 5, 1, 2, 8, 3, 5},
  [PARASITE_PARACIDE] = {2, 7, 9, 1, 1, 5, 4, 9},
  [SKULL_MARK_LADY_BUG] = {6, 4, 3, 0, 6, 2, 4, 8},
  [TINY_GUARDIAN] = {9, 0, 7, 9, 0, 2, 5, 3},
  [PINCH_HOPPER] = {2, 6, 1, 8, 5, 9, 9, 1},
  [BLUE_EYES_TOON_DRAGON] = {5, 3, 1, 8, 3, 6, 0, 0},
  [THE_UNHAPPY_MAIDEN] = {5, 1, 2, 7, 5, 0, 2, 7},
  [WALL_OF_ILLUSION] = {1, 3, 9, 4, 5, 2, 8, 3},
  [NEO_THE_MAGIC_SWORDSMAN] = {5, 0, 9, 3, 0, 9, 9, 1},
  [MAN_EATING_TREASURE_CHEST] = {1, 3, 7, 2, 3, 6, 0, 5},
  [CHIRON_THE_MAGE] = {1, 6, 9, 5, 6, 4, 5, 5},
  [SWORD_HUNTER] = {5, 1, 3, 4, 5, 4, 6, 1},
  [DRILL_BUG] = {8, 8, 7, 3, 3, 5, 7, 9},
  [DEEPSEA_WARRIOR] = {2, 4, 1, 2, 8, 2, 7, 4},
  [BITE_SHOES] = {5, 0, 1, 2, 2, 8, 8, 3},
  [SPIKEBOT] = {8, 7, 5, 1, 1, 9, 8, 7},
  [BEAST_OF_GILFER] = {5, 0, 2, 8, 7, 0, 6, 0},
  [THE_PORTRAITS_SECRET] = {3, 2, 5, 4, 1, 7, 7, 3},
  [THE_GROSS_GHOST_OF_FLED_DREAMS] = {6, 8, 0, 4, 9, 4, 7, 1},
  [BRAIN_CONTROL] = {8, 7, 9, 1, 0, 9, 7, 8},
  [ANTI_RAIGEKI] = {4, 2, 3, 6, 4, 2, 5, 7},
  [BLACK_ILLUSION_RITUAL] = {4, 1, 4, 2, 6, 8, 6, 9},
  [CHANGE_OF_HEART] = {0, 4, 0, 3, 1, 9, 2, 8},
  [MULTIPLY] = {4, 0, 7, 0, 3, 2, 2, 2},
  [EXILE_OF_THE_WICKED] = {2, 6, 7, 2, 5, 1, 5, 8},
  [LAST_DAY_OF_WITCH] = {9, 0, 3, 3, 0, 4, 5, 3},
  [RESTRUCTER_REVOLUTION] = {9, 9, 5, 1, 8, 9, 6, 1},
  [POT_OF_GREED] = {5, 5, 1, 4, 4, 5, 2, 2},
  [THE_INEXPERIENCED_SPY] = {8, 1, 8, 2, 0, 6, 8, 9},
  [GATE_SWORD] = {4, 6, 2, 1, 1, 3, 2, 6},
  [STEEL_FAN_FIGHTER] = {1, 3, 6, 1, 6, 0, 7, 4},
  [LEOPARD_GIRL] = {4, 9, 0, 0, 0, 7, 7, 9},
  [THE_LAST_WARRIOR_FROM_ANOTHER_PLANET] = {8, 6, 0, 9, 9, 7, 8, 8},
  [DUNAMES_DARK_WITCH] = {1, 2, 4, 9, 3, 4, 8, 2},
  [GARNECIA_ELEFANTIS] = {4, 9, 8, 8, 8, 1, 9, 1},
  [TOTAL_DEFENSE_SHOGUN] = {7, 5, 3, 7, 2, 2, 9, 0},
  [BEAST_OF_TALWAR] = {1, 1, 7, 6, 1, 8, 4, 5},
  [CYBER_TECH_ALLIGATOR] = {4, 8, 7, 6, 6, 5, 4, 3},
  [TALONS_OF_SHURILANE] = {7, 4, 1, 5, 0, 6, 5, 8}
};

const unsigned char gE11654[] = {15, 15, 15, 15, 15, 15, 15, 15};
//const unsigned char g8E1165C[][8] = ;
extern unsigned char g8E1165C[][NUM_PASSWORD_DIGITS];
struct PasswordData
{
    u16 cardId;
    u8 result; // 10 = match, 11 = mismatch
    u8 digits[NUM_PASSWORD_DIGITS];
};

extern struct PasswordData sPasswordData;

static void CheckForSpecialPassword1 (void);
static u8 sub_8055D78 (u16);
static void CheckForSpecialPassword2 (void);
static u8 PasswordMatchesSpecialCode2 (u16);
static u8 PasswordMatchesCard (u16);
static unsigned char ComparePasswords (const unsigned char*, const unsigned char*);
static void ResetPasswordDigits (void);
static void EmptyFunc_08055F64 (u16);
static void TryPlaySuccessSfx (u16);
static void ApplySpecialPasswordFlag1 (u16);
static void ApplySpecialPasswordFlag2 (u16);


extern u8 g2024520[];
extern u8 g2024588[];
extern u8 g202458C[];
extern u8 g2024590;


extern u8 g8E11664[][NUM_PASSWORD_DIGITS];
extern u8 g8E1167C[];
extern u8 g8E11684[];
extern u8 gCardPasswordDigits[];
extern u16 gPressedButtons;
void AddCardQtyToShop2(u16, u8);
void FadeInBlendEffect(void);
u16 sub_803F04C (u8);
u32 sub_8056014(u16);

static inline unsigned char ComparePasswords_inline (const unsigned char *input, const unsigned char *password) {
  u8 i, ret = RESULT_MATCH;
  for (i = 0; i < NUM_PASSWORD_DIGITS; i++)
    if (*input++ != *password++)
      ret = RESULT_MISMATCH;
  return ret;
}

static void SearchForMatchingCard (void)
{
    sPasswordData.cardId = 0;
    while (TRUE)
    {
        switch (PasswordMatchesCard(sPasswordData.cardId))
        {
        case 1:
            break;
        case 0:
            sPasswordData.result = RESULT_MISMATCH;
            return;
        default:
            if (ComparePasswords(sPasswordData.digits, sCardPasswords[sPasswordData.cardId]) == RESULT_MATCH)
            {
                sPasswordData.result = RESULT_MATCH;
                return;
            }
        }
        sPasswordData.cardId++;
    }
}

void CardPasswordMain (void)
{
    int i;

    PasswordTerminalMain();
    for (i = 0; i < NUM_PASSWORD_DIGITS; i++)
      sPasswordData.digits[i] = gCardPasswordDigits[i];
    SearchForMatchingCard();
    if (sPasswordData.result == RESULT_MATCH)
    {
        SetCardInfo(sPasswordData.cardId);
        PlayMusic(SFX_CODE_ENTRY_SUCCESS);
        ShowCardDetailView();
        AddCardQtyToShop2(sPasswordData.cardId, 1);
        goto end;
    }

    // one of special reshef sprite or Marik/Phoenix Mode flag?
    CheckForSpecialPassword1();
    if (sPasswordData.result == RESULT_MATCH)
    {
        if (!sub_8056014(sPasswordData.cardId))
        {
            ApplySpecialPasswordFlag1(sPasswordData.cardId);
            EmptyFunc_08055F64(sPasswordData.cardId);
        }
        else
            PlayMusic(SFX_FORBIDDEN);
        goto end;
    }

    // one of special reshef sprite or Marik/Phoenix Mode flag?
    CheckForSpecialPassword2();
    if (sPasswordData.result == RESULT_MATCH)
    {
        ApplySpecialPasswordFlag2(sPasswordData.cardId);
        TryPlaySuccessSfx(sPasswordData.cardId);
    }
    else
        PlayMusic(SFX_FORBIDDEN);

    end:
    FadeInBlendEffect();
}

static void CheckForSpecialPassword1 (void)
{
    u8 i;

    sPasswordData.cardId = 0;
    while (TRUE)
    {
        switch (sub_8055D78(sPasswordData.cardId))
        {
        case 1:
            break;
        case 0:
            sPasswordData.result = RESULT_MISMATCH;
            return;
        default:
            if (ComparePasswords_inline(sPasswordData.digits, g8E1165C[sPasswordData.cardId]) == RESULT_MATCH)
            {
                sPasswordData.result = RESULT_MATCH;
                return;
            }
        }
        sPasswordData.cardId++;
    }
}

static u8 sub_8055D78(u16 cardId)
{
    if (ComparePasswords_inline(g8E1167C, g8E1165C[cardId]) == RESULT_MATCH)
        return 0;
    if (ComparePasswords_inline(g8E11684, g8E1165C[cardId]) == RESULT_MATCH)
        return 1;
    return 2;
}

static void CheckForSpecialPassword2 (void)
{
    u8 i;

    sPasswordData.cardId = 0;
    while (TRUE)
    {
        switch (PasswordMatchesSpecialCode2(sPasswordData.cardId))
        {
        case 1:
            break;
        case 0:
            sPasswordData.result = RESULT_MISMATCH;
            return;
        default:
            if (ComparePasswords_inline(sPasswordData.digits, g8E11664[sPasswordData.cardId]) == RESULT_MATCH)
            {
                sPasswordData.result = RESULT_MATCH;
                return;
            }
        }
        sPasswordData.cardId++;
    }
}

static u8 PasswordMatchesSpecialCode2 (u16 cardId)
{
    if (ComparePasswords_inline(g8E1167C, g8E11664[cardId]) == RESULT_MATCH)
        return 0;
    if (ComparePasswords_inline(g8E11684, g8E11664[cardId]) == RESULT_MATCH)
        return 1;
    return 2;
}

static u8 PasswordMatchesCard (u16 cardId)
{
    if (ComparePasswords(g8E1167C, sCardPasswords[cardId]) == RESULT_MATCH)
        return 0;
    if (ComparePasswords(g8E11684, sCardPasswords[cardId]) == RESULT_MATCH)
        return 1;
    return 2;
}

static unsigned char ComparePasswords (const unsigned char *a, const unsigned char *b) {
  return ComparePasswords_inline(a, b);
}

static void ResetPasswordDigits (void)
{
    u8 i;
    for (i = 0; i < 8; i++)
      sPasswordData.digits[i] = 0;
}

static void EmptyFunc_08055F64(u16 cardId) {
}

static void TryPlaySuccessSfx(u16 cardId) {
  switch (cardId) {
    case 0:
      PlayMusic(SFX_CODE_ENTRY_SUCCESS);
      break;
    case 1:
      PlayMusic(SFX_CODE_ENTRY_SUCCESS);
      break;
  }
}

static void sub_8055F8C (void) {
  u8 i = 0;
  for (i = 0; i < 101; i++)
    g2024520[i] = 0;
}

static void sub_8055FA8 (u16 arg0) {
  g2024520[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

void sub_8055FD0 (void) {
  u8 i = 0;
  for (i = 0; i < 2; i++)
    g202458C[i] = 0;
}

static void ApplySpecialPasswordFlag1 (u16 arg0) {
  g202458C[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

NAKED
u32 sub_8056014 (u16 arg0) {
  asm_unified("push {r4, lr}\n\
	lsls r4, r0, #0x10\n\
	lsrs r1, r4, #0x10\n\
	cmp r1, #9\n\
	bls _08056022\n\
	movs r0, #0\n\
	b _0805603A\n\
_08056022:\n\
	movs r0, #7\n\
	ands r0, r1\n\
	bl sub_803F04C\n\
	ldr r2, _08056040\n\
	lsrs r1, r4, #0x13\n\
	adds r1, r1, r2\n\
	ldrb r1, [r1]\n\
	ands r1, r0\n\
	rsbs r0, r1, #0\n\
	orrs r0, r1\n\
	lsrs r0, r0, #0x1f\n\
_0805603A:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_08056040: .4byte 0x0202458C");
}
/*
u32 sub_8056014 (u16 arg0) {
  if (arg0 > 9)
    return 0;
}
*/

static void sub_8056044 (void) {
}

static void ApplySpecialPasswordFlag2 (u16 arg0) {
  g2024588[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

/*
u32 sub_8056070 (u16 arg0) {
  if (arg0 > 7)
    return 0;
}
*/

NAKED
u32 sub_8056070 (u16 arg0) {
  asm_unified("push {r4, lr}\n\
	lsls r4, r0, #0x10\n\
	lsrs r1, r4, #0x10\n\
	cmp r1, #7\n\
	bls _0805607E\n\
	movs r0, #0\n\
	b _08056096\n\
_0805607E:\n\
	movs r0, #7\n\
	ands r0, r1\n\
	bl sub_803F04C\n\
	ldr r2, _0805609C\n\
	lsrs r1, r4, #0x13\n\
	adds r1, r1, r2\n\
	ldrb r1, [r1]\n\
	ands r1, r0\n\
	rsbs r0, r1, #0\n\
	orrs r0, r1\n\
	lsrs r0, r0, #0x1f\n\
_08056096:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0805609C: .4byte 0x02024588");
}

// all functions below unused?
static u32 sub_80560A0 (void) {
  unsigned ret, stopProcessing = 0;
  while (!stopProcessing) {
    switch (gPressedButtons) {
      case DPAD_UP:
        sPasswordData.digits[g2024590] = 255;
        sPasswordData.digits[g2024590]++;
        break;
      case DPAD_DOWN:
        sPasswordData.digits[g2024590] = 10;
        sPasswordData.digits[g2024590]--;
        break;
      case DPAD_LEFT:
        if (g2024590)
          g2024590--;
        break;
      case DPAD_RIGHT:
        if (g2024590 != 7)
          g2024590++;
        break;
      case A_BUTTON:
        stopProcessing = 1;
        ret = 1;
        break;
      case B_BUTTON:
        stopProcessing = 1;
        ret = 0;
        break;
    }
    WaitForVBlank();
  }
  return ret;
}

static void sub_8056144 (void) {
  sPasswordData.digits[g2024590] = 255;
  sPasswordData.digits[g2024590]++;
}

static void sub_8056168 (void) {
  sPasswordData.digits[g2024590] = 10;
  sPasswordData.digits[g2024590]--;
}

static void sub_805618C (void) {
  if (g2024590)
    g2024590--;
}

static void sub_80561A0 (void) {
  if (g2024590 != 7)
    g2024590++;
}
