#include "global.h"

extern const u8* gUnk_8E00E30[];
extern u8 g8DF1C2A[];
extern u8 g8DF3C00[];

static void sub_80214BC (u32*, u16, u16);
static void sub_80214F4 (u32*, u16, u16);
static void Convert1bppTo4bpp (u8*, u32*, u16);
static void sub_8021584 (u32*, u16, u16);
static void sub_80215BC (u32*, u16, u16);
static void sub_80215F4 (u8*, u32*, u16);
static void sub_8021664 (u32*, u16);
static void sub_8021688 (u32*, u16);
static void sub_80216D0 (u32* arg0);

unsigned short sub_8020698 (const unsigned char* name)
{
    u8 r4;
    u16 i = 0;

    if (*name != '$')
        goto end;
    r4 = 1;
    while (r4)
    {
        name++;
        i++;
        switch (*name)
        {
        case '0':
            if (gLanguage == ENGLISH)
            {
                i++;
                goto end;
            }
            while (*name != '$')
            {
                if (*name <= 127)
                {
                    name++;
                    i++;
                }
                else
                {
                    name += 2;
                    i += 2;
                }
            }
            break;
        case '1':
            if (gLanguage == FRENCH)
            {
                i++;
                goto end;
            }
            while (*name != '$')
            {
                if (*name <= 127)
                {
                    name++;
                    i++;
                }
                else
                {
                    name += 2;
                    i += 2;
                }
            }
            break;
        case '2':
            if (gLanguage == GERMAN)
            {
                i++;
                goto end;
            }
            while (*name != '$')
            {
                if (*name <= 127)
                {
                    name++;
                    i++;
                }
                else
                {
                    name += 2;
                    i += 2;
                }
            }
            break;
        case '3':
            if (gLanguage == ITALIAN)
            {
                i++;
                goto end;
            }
            while (*name != '$')
            {
                if (*name <= 127)
                {
                    name++;
                    i++;
                }
                else
                {
                    name += 2;
                    i += 2;
                }
            }
            break;
        case '4':
            if (gLanguage == SPANISH)
            {
                i++;
                goto end;
            }
            while (*name != '$')
            {
                if (*name <= 127)
                {
                    name++;
                    i++;
                }
                else
                {
                    name += 2;
                    i += 2;
                }
            }
            break;
        case '5':
            if (gLanguage == NUM_LANGUAGES)
            {
                i++;
                goto end;
            }
            while (*name != '$')
            {
                if (*name <= 127)
                {
                    name++;
                    i++;
                }
                else
                {
                    name += 2;
                    i += 2;
                }
            }
            break;
        case '6':
            name++;
            i++;
            r4 = 0;
            break;
        }
    }

    end:
    return i;
}

const unsigned char* GetCurrentLanguageString (const unsigned char* name)
{
    if (*name == '$')
    {
        u8 r4 = 1;
        while (r4)
        {
            name++;
            switch (*name)
            {
            case '0':
                if (gLanguage == ENGLISH)
                {
                    name++;
                    goto end;
                }
                while (*name != '$')
                {
                    if (*name <= 127)
                        name++;
                    else
                        name += 2;
                }
                break;
            case '1':
                if (gLanguage == FRENCH)
                {
                    name++;
                    goto end;
                }
                while (*name != '$')
                {
                    if (*name <= 127)
                        name++;
                    else
                        name += 2;
                }
                break;
            case '2':
                if (gLanguage == GERMAN)
                {
                    name++;
                    goto end;
                }
                while (*name != '$')
                {
                    if (*name <= 127)
                        name++;
                    else
                        name += 2;
                }
                break;
            case '3':
                if (gLanguage == ITALIAN)
                {
                    name++;
                    goto end;
                }
                while (*name != '$')
                {
                    if (*name <= 127)
                        name++;
                    else
                        name += 2;
                }
                break;
            case '4':
                if (gLanguage == SPANISH)
                {
                    name++;
                    goto end;
                }
                while (*name != '$')
                {
                    if (*name <= 127)
                        name++;
                    else
                        name += 2;
                }
                break;
            case '5':
                if (gLanguage == NUM_LANGUAGES) //TODO: change to JAPANESE?
                {
                    name++;
                    goto end;
                }
                while (*name != '$')
                {
                    if (*name <= 127)
                        name++;
                    else
                        name += 2;
                }
                break;
            case '6':
                name++;
                r4 = 0;
                break;
            }
        }
    }
    end:
    return name;
}

void sub_8020968 (void* arg00, u16 arg1, u16 arg2)
{
    u32* arg0 = arg00; //TODO: figure out a way to make vram buffer a type that can be converted to u32* in a non-UB way.
    u16 r2 = (arg1 & 0xFF) << 8 | (arg1 & 0xFF00) >> 8;

    switch (arg2 & 0x1F00)
    {
    case 0:
        sub_80214BC(arg0, r2, arg2);
        break;
    case 0x800:
        sub_80214BC(arg0, r2, arg2);
        sub_8021664(arg0, arg2);
        break;
    case 0x1800:
        sub_80214BC(arg0, r2, arg2);
        sub_80216D0(arg0);
        sub_8021664(arg0, arg2);
        break;
    case 0x400:
        sub_80214F4(arg0, r2, arg2);
        break;
    case 0x100:
        sub_8021584(arg0, r2, arg2);
        break;
    case 0x900:
        sub_8021584(arg0, r2, arg2);
        sub_8021688(arg0, arg2);
        break;
    case 0x500:
        sub_80215BC(arg0, r2, arg2);
        break;
    }
}

void CopyStringTilesToVRAMBuffer(void* arg00, const u8* namee, unsigned arg22)
{
    u32* arg0 = arg00; //TODO: figure out a way to make vram buffer a type that can be converted to u32* in a non-UB way.
    const u8* name = namee;
    u16 arg2 = arg22;
    bool32 r7;
    u16 r1;
    name = GetCurrentLanguageString(name);
    r7 = 0;

    switch (arg2 & 0x1F00) //font flags?
    {
    case 0: //_08020AB4
        while (*name != 0 && *name != '$')
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            arg0 += 8;
        }
        break;
    case 0x800:
        while (*name != 0 && *name != '$')
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_8021664(arg0, arg2);
            arg0 += 8;
        }
        break;
    case 0x1800:
        while (*name != 0 && *name != '$')
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_80216D0(arg0);
            sub_8021664(arg0, arg2);
            arg0 += 8;
        }
        break;
    case 0x1000:
        while (*name != 0 && *name != '$')
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_80216D0(arg0);
            arg0 += 8;
        }
        break;
    case 0x400:
        while (*name != 0 && *name != '$')
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214F4(arg0, r1, arg2);
            arg0 += 16;
        }
        break;
    case 0x100:
        while (*name != 0 && *name != '$')
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_8021584(arg0, r1, arg2);
            if (r7)
                arg0 += 24;
            else
                arg0 += 8;
            r7 ^= 1;
        }
        break;
    case 0x900:
        while (*name != 0 && *name != '$')
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_8021584(arg0, r1, arg2);
            sub_8021688(arg0, arg2);
            if (r7)
                arg0 += 24;
            else
                arg0 += 8;
            r7 ^= 1;
        }
        break;
    case 0x500:
        while (*name != 0 && *name != '$')
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80215BC(arg0, r1, arg2);
            if (r7)
                arg0 += 48;
            else
                arg0 += 16;
            r7 ^= 1;
        }
        break;
    }
}

void sub_8020DB8 (u32* arg0, const u8* name, u16 arg2)
{
    u16 r1;
    bool32 r7;
    name = GetCurrentLanguageString(name);
    r7 = 0;

    switch (arg2 & 0x1F00)
    {
    case 0: //_08020AB4
        while (*name != 0)
        {
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            arg0 += 8;
        }
        break;
    case 0x800:
        while (*name != 0)
        {
            u16 r1;
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_8021664(arg0, arg2);
            arg0 += 8;
        }
        break;
    case 0x1800:
        while (*name != 0)
        {
            u16 r1;
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_80216D0(arg0);
            sub_8021664(arg0, arg2);
            arg0 += 8;
        }
        break;
    case 0x1000:
        while (*name != 0)
        {
            u16 r1;
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_80216D0(arg0);
            arg0 += 8;
        }
        break;
    case 0x400:
        while (*name != 0)
        {
            u16 r1;
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214F4(arg0, r1, arg2);
            arg0 += 16;
        }
        break;
    case 0x100:
        while (*name != 0)
        {
            u16 r1;
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_8021584(arg0, r1, arg2);
            if (r7)
                arg0 += 24;
            else
                arg0 += 8;
            r7 ^= 1;
        }
        break;
    case 0x900:
        while (*name != 0)
        {
            u16 r1;
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_8021584(arg0, r1, arg2);
            sub_8021688(arg0, arg2);
            if (r7)
                arg0 += 24;
            else
                arg0 += 8;
            r7 ^= 1;
        }
        break;
    case 0x500:
        while (*name != 0)
        {
            u16 r1;
            if (*name <= 127)
            {
                r1 = gUnk_8E00E30[*name - 32][0];
                r1 <<= 8;
                r1 |= gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80215BC(arg0, r1, arg2);
            if (r7)
                arg0 += 48;
            else
                arg0 += 16;
            r7 ^= 1;
        }
        break;
    }
}

static u16 sub_80210B8 (u16 arg0)
{
    u16 r2;

    if (arg0 < 0x8140)
        arg0 = 0x8140;

    r2 = arg0 += 0x7EC0;

    if (r2 > 0x400)
        arg0 -= 0x200;

    if (r2 > 0x700)
        arg0 -= 0x100;

    if (r2 > 0x5F00)
        arg0 -= 0x4000;

    r2 = arg0;
    arg0 -= arg0 / 256 * 68;

    if (r2 % 256 >= 64)
        arg0--;

    return arg0;
}

static void sub_8021138 (u8* r7, u32* r8, u16 r6)
{
    u8 i, j, r2;
    u32 r4;

    r6 &= 0xFF;

    for (i = 0; i < 8; i++)
    {
        r2 = *r7++;
        r2 <<= 1;
        r4 = 0;

        for (j = 0; j < 4; j++)
        {
            r4 |= (((r2 & 0x80) >> 7) * r6) << (j * 8);
            r2 <<= 1;
        }
        *r8++ = r4;

        r4 = 0;
        for (j = 0; j < 4; j++)
        {
            r4 |= (((r2 & 0x80) >> 7) * r6) << (j * 8);
            r2 <<= 1;
        }
        *r8++ = r4;
    }
}

/*
static void sub_80211D4 (u8* unused0, u32* arg1, u16 ok)
{
  u8 i, j, k;
  for (i = 0; i < 2; i++) {
    for (j = 0; j < 8; j++) {
      ok = 0;
      for (k = 0; k < 4; k++)
        ;
      arg1[0] = ok;
      ok = 0;
      for (k = 0; k < 4; k++)
        ;
      arg1[1] = ok;
      arg1 += 2;
    }
    arg1 += 16;
  }
}*/
//Fakematch
static void sub_80211D4 (u8* unused0, u32* arg1, u16 unused2)
{
  u8 i, j, k;
  register u32 v asm("r1");
  register u32 r5 asm("r5");

  for (i = 0; i < 2; i++) {

    for (j = 0; j < 8; j++) {
      asm("":::"r0", "r1", "r2");
      v = 0;
      asm(""::"r"(v));
      for (k = 0; k < 4; k++) {
        asm("":::"r0", "r1", "r2");
      }
      arg1[0] = v;
      v = 0;
      for (k = 0; k < 4; k++) {

      }
      arg1[1] = v;
      arg1 += 2;
      asm("":::"r8", "sb", "sl");
    }
    arg1 += 16;
    asm(""::"r"(r5));
  }
}

static void sub_8021234 (u8* arg0, u32* arg1, u16 arg2, u16* arg3) {
  u8 i, j;
  u16 r2;
  u32 r4;
  switch (arg2 & 0x3000) {
    case 0x2000: //Dummy case required to match (could be anything?)
      break;
    case 0:
      for (i = 0; i < 8; i++) {
        r2 = arg0[0] << 8 | arg0[1];
        r2 <<= 1;
        r4 = 0;
        for (j = 0; j < 8; j++) {
          r4 |= ((r2 & 0x8000) >> 15) << (j * 4);
          r2 <<= 1;
        }
        arg1[arg3[0] * 8] = r4;
        r4 = 0;
        for (j = 0; j < 4; j++) {
          r4 |= ((r2 & 0x8000) >> 15) << (j * 4);
          r2 <<= 1;
        }
        arg1[arg3[1] * 8] = r4;
        arg0 += 2;
        arg1++;
      }
      arg1 -= 8;
      for (i = 0; i < 4; i++) {
        r2 = arg0[0] << 8 | arg0[1];
        r2 <<= 1;
        r4 = 0;
        for (j = 0; j < 8; j++) {
          r4 |= ((r2 & 0x8000) >> 15) << (j * 4);
          r2 <<= 1;
        }
        arg1[arg3[2] * 8] = r4;
        r4 = 0;
        for (j = 0; j < 4; j++) {
          r4 |= ((r2 & 0x8000) >> 15) << (j * 4);
          r2 <<= 1;
        }
        arg1[arg3[3] * 8] = r4;
        arg0 += 2;
        arg1++;
      }
      break;
    case 0x1000:
      for (i = 0; i < 8; i++) {
        r2 = arg0[0] << 8 | arg0[1];
        r2 <<= 1;
        r4 = arg1[arg3[0] * 8];
        for (j = 4; j < 8; j++) {
          r4 |= ((r2 & 0x8000) >> 15) << (j * 4);
          r2 <<= 1;
        }
        arg1[arg3[0] * 8] = r4;
        r4 = 0;
        for (j = 0; j < 8; j++) {
          r4 |= ((r2 & 0x8000) >> 15) << (j * 4);
          r2 <<= 1;
        }
        arg1[arg3[1] * 8] = r4;
        arg0 += 2;
        arg1++;
      }
      arg1 -= 8;
      for (i = 0; i < 4; i++) {
        r2 = arg0[0] << 8 | arg0[1];
        r2 <<= 1;
        r4 = arg1[arg3[2] * 8];
        for (j = 4; j < 8; j++) {
          r4 |= ((r2 & 0x8000) >> 15) << (j * 4);
          r2 <<= 1;
        }
        arg1[arg3[2] * 8] |= r4;
        r4 = 0;
        for (j = 0; j < 8; j++) {
          r4 |= ((r2 & 0x8000) >> 15) << (j * 4);
          r2 <<= 1;
        }
        arg1[arg3[3] * 8] = r4;
        arg0 += 2;
        arg1++;
      }
      break;
  }
}

static void sub_80214BC (u32* arg0, u16 arg1, u16 arg2) {
  Convert1bppTo4bpp(&g8DF1C2A[sub_80210B8(arg1) * 10], arg0, arg2);
}

static void sub_80214F4 (u32* arg0, u16 arg1, u16 arg2) {
  sub_8021138(&g8DF1C2A[sub_80210B8(arg1) * 10], arg0, arg2);
}

static void Convert1bppTo4bpp (u8* arg0, u32* arg1, u16 unused2) {
  u8 i, j;
  for (i = 0; i < 8; i++) {
    u8 r2 = *arg0++;
    u32 r4;
    r2 <<= 1;
    r4 = 0;
    for (j = 0; j < 8; j++) {
      r4 |= (r2 & 0x80) >> 7 << (j * 4);
      r2 <<= 1;
    }
    *arg1 = r4;
    arg1++;
  }
}

static void sub_8021584 (u32* arg0, u16 arg1, u16 arg2) {
  sub_80215F4(&g8DF3C00[sub_80210B8(arg1) * 18], arg0, arg2);
}

static void sub_80215BC (u32* arg0, u16 arg1, u16 arg2) {
  sub_80211D4(&g8DF3C00[sub_80210B8(arg1) * 18], arg0, arg2);
}

static void sub_80215F4 (u8* arg0, u32* arg1, u16 unused2) {
  u8 i, j, k;
  for (i = 0; i < 2; i++) {
    for (j = 0; j < 8; j++) {
      u8 r2 = *arg0;
      u32 r6;
      r2 <<= 1;
      r6 = 0;
      for (k = 0; k < 8; k++) {
        r6 |= (r2 & 0x80) >> 7 << (k * 4);
        r2 <<= 1;
      }
      *arg1 = r6;
      arg0++;
      arg1++;
    }
    arg1 += 8;
  }
}

static void sub_8021664 (u32* arg0, u16 unused1) {
  u8 i;
  u32 r1 = arg0[0];
  for (i = 0; i < 7; i++) {
    u32 r0 = arg0[1];
    r1 <<= 4;
    r1 &= ~r0;
    arg0[1] |= r1 << 1;
    r1 = r0;
    arg0++;
  }
}

static void sub_8021688 (u32* arg0, u16 unused1) {
  u8 i;
  u32 r2 = arg0[0];
  u32 r1;
  for (i = 0; i < 7; i++) {
    r2 <<= 4;
    r1 = arg0[1];
    r2 &= ~r1;
    arg0[1] |= r2 << 1;
    r2 = r1;
    arg0++;
  }
  arg0 += 8;
  for (i = 0; i < 8; i++) {
    r2 <<= 4;
    r1 = arg0[1];
    r2 &= ~r1;
    arg0[1] |= r2 << 1;
    r2 = r1;
    arg0++;
  }
}

static void sub_80216D0 (u32* arg0) {
  u8 i;
  for (i = 0; i < 7; i++) {
    *arg0 |= *arg0 << 4;
    arg0++;
  }
}

//unused
static void sub_80216E8 (u32* arg0, u16 arg1, u16 arg2, u16* arg3) {
  u8* temp; //uninitialized var
  sub_80210B8((arg1 & 0xFF) << 8 | (arg1 & 0xFF00) >> 8);
  sub_8021234(temp, arg0, arg2, arg3);
}
