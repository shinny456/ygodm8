#include "global.h"
#include "duel.h"

extern u8* gUnk_8E00E30[];

void sub_8021664();
void sub_80216D0();
void sub_80214F4();
void sub_8021584();
void sub_8021688();
void sub_80215BC();
void sub_80214BC();
//TODO change u32 to u32*

u16 sub_8020698(u8* name) //text parser
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
                if ((s8)*name >= 0)
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
                if ((s8)*name >= 0)
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
                if ((s8)*name >= 0)
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
                if ((s8)*name >= 0)
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
                if ((s8)*name >= 0)
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
                if ((s8)*name >= 0)
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

u8* sub_8020824(u8* name)
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
                    if ((s8)*name >= 0)
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
                    if ((s8)*name >= 0)
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
                    if ((s8)*name >= 0)
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
                    if ((s8)*name >= 0)
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
                    if ((s8)*name >= 0)
                        name++;
                    else
                        name += 2;
                }
                break;
            case '5':
                if (gLanguage == NUM_LANGUAGES)
                {
                    name++;
                    goto end;
                }
                while (*name != '$')
                {
                    if ((s8)*name >= 0)
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
/*
void sub_8020968(u32* arg0, u16 arg1, u16 arg2)
{
    u8 bhai = arg1;
    arg1 = (bhai << 8) | (arg1 >> 8);

    switch (arg2 & 0x1F00)
    {
    case 0:
        sub_80214BC(arg0, arg1, arg2);
        break;
    case 0x800:
        sub_80214BC(arg0, arg1, arg2);
        sub_8021664(arg0, arg2);
        break;
    case 0x1800:
        sub_80214BC(arg0, arg1, arg2);
        sub_80216D0(arg0);
        sub_8021664(arg0, arg2);
        break;
    case 0x400:
        sub_80214F4(arg0, arg1, arg2);
        break;
    case 0x100:
        sub_8021584(arg0, arg1, arg2);
        break;
    case 0x900:
        sub_8021584(arg0, arg1, arg2);
        sub_8021688(arg0, arg2);
        break;
    case 0x500:
        sub_80215BC(arg0, arg1, arg2);
        break;
    }
}*/

NAKED
void sub_8020968(u32 arg0, u16 arg1, u16 arg2)
{
    asm_unified("\n\
    push {r4, r5, lr}\n\
	adds r4, r0, #0\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	lsls r2, r2, #0x10\n\
	lsrs r5, r2, #0x10\n\
	movs r0, #0xff\n\
	ands r0, r1\n\
	lsls r2, r0, #8\n\
	lsrs r1, r1, #8\n\
	orrs r2, r1\n\
	movs r1, #0xf8\n\
	lsls r1, r1, #5\n\
	ands r1, r5\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #3\n\
	cmp r1, r0\n\
	beq _08020A2A\n\
	cmp r1, r0\n\
	bgt _080209AC\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	cmp r1, r0\n\
	beq _08020A0A\n\
	cmp r1, r0\n\
	bgt _080209A2\n\
	cmp r1, #0\n\
	beq _080209CC\n\
	b _08020A34\n\
_080209A2:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #3\n\
	cmp r1, r0\n\
	beq _080209FE\n\
	b _08020A34\n\
_080209AC:\n\
	movs r0, #0x90\n\
	lsls r0, r0, #4\n\
	cmp r1, r0\n\
	beq _08020A16\n\
	cmp r1, r0\n\
	bgt _080209C2\n\
	movs r0, #0x80\n\
	lsls r0, r0, #4\n\
	cmp r1, r0\n\
	beq _080209D8\n\
	b _08020A34\n\
_080209C2:\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #5\n\
	cmp r1, r0\n\
	beq _080209E4\n\
	b _08020A34\n\
_080209CC:\n\
	adds r0, r4, #0\n\
	adds r1, r2, #0\n\
	adds r2, r5, #0\n\
	bl sub_80214BC\n\
	b _08020A34\n\
_080209D8:\n\
	adds r0, r4, #0\n\
	adds r1, r2, #0\n\
	adds r2, r5, #0\n\
	bl sub_80214BC\n\
	b _080209F4\n\
_080209E4:\n\
	adds r0, r4, #0\n\
	adds r1, r2, #0\n\
	adds r2, r5, #0\n\
	bl sub_80214BC\n\
	adds r0, r4, #0\n\
	bl sub_80216D0\n\
_080209F4:\n\
	adds r0, r4, #0\n\
	adds r1, r5, #0\n\
	bl sub_8021664\n\
	b _08020A34\n\
_080209FE:\n\
	adds r0, r4, #0\n\
	adds r1, r2, #0\n\
	adds r2, r5, #0\n\
	bl sub_80214F4\n\
	b _08020A34\n\
_08020A0A:\n\
	adds r0, r4, #0\n\
	adds r1, r2, #0\n\
	adds r2, r5, #0\n\
	bl sub_8021584\n\
	b _08020A34\n\
_08020A16:\n\
	adds r0, r4, #0\n\
	adds r1, r2, #0\n\
	adds r2, r5, #0\n\
	bl sub_8021584\n\
	adds r0, r4, #0\n\
	adds r1, r5, #0\n\
	bl sub_8021688\n\
	b _08020A34\n\
_08020A2A:\n\
	adds r0, r4, #0\n\
	adds r1, r2, #0\n\
	adds r2, r5, #0\n\
	bl sub_80215BC\n\
_08020A34:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00, 0x00");
}
/*
void sub_8020A3C(u32* arg0, u8* name, u16 arg2)
{
    bool32 r7;
    name = sub_8020824(name);
    r7 = 0;

    switch (arg2 & 0x1F00) //font flags?
    {
    case 0: //_08020AB4
        while (*name != 0 && *name != '$')
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            arg0 += 32;
        }
        break;
    case 0x800:
        while (*name != 0 && *name != '$')
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_8021664(arg0, arg2);
            arg0 += 32;
        }
        break;
    case 0x1800:
        while (*name != 0 && *name != '$')
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
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
            arg0 += 32;
        }
        break;
    case 0x1000:
        while (*name != 0 && *name != '$')
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_80216D0(arg0);
            arg0 += 32;
        }
        break;
    case 0x400:
        while (*name != 0 && *name != '$')
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214F4(arg0, r1, arg2);
            arg0 += 64;
        }
        break;
    case 0x100:
        while (*name != 0 && *name != '$')
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_8021584(arg0, r1, arg2);
            if (r7)
                arg0 += 96;
            else
                arg0 += 32;
            r7 ^= 1;
        }
        break;
    case 0x900:
        while (*name != 0 && *name != '$')
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
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
                arg0 += 96;
            else
                arg0 += 32;
            r7 ^= 1;
        }
        break;
    case 0x500:
        while (*name != 0 && *name != '$')
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80215BC(arg0, r1, arg2);
            if (r7)
                arg0 += 192;
            else
                arg0 += 64;
            r7 ^= 1;
        }
        break;
    }
}*/

NAKED
void sub_8020A3C(u32 arg0, u8* name, u16 arg2)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r5, r0, #0\n\
	adds r4, r1, #0\n\
	lsls r2, r2, #0x10\n\
	lsrs r6, r2, #0x10\n\
	adds r0, r4, #0\n\
	bl sub_8020824\n\
	adds r4, r0, #0\n\
	movs r7, #0\n\
	movs r1, #0xf8\n\
	lsls r1, r1, #5\n\
	ands r1, r6\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #3\n\
	cmp r1, r0\n\
	bne _08020A64\n\
	b _08020D4E\n\
_08020A64:\n\
	cmp r1, r0\n\
	bgt _08020A88\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	cmp r1, r0\n\
	bne _08020A72\n\
	b _08020C84\n\
_08020A72:\n\
	cmp r1, r0\n\
	bgt _08020A7C\n\
	cmp r1, #0\n\
	beq _08020AB4\n\
	b _08020DAC\n\
_08020A7C:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #3\n\
	cmp r1, r0\n\
	bne _08020A86\n\
	b _08020C2E\n\
_08020A86:\n\
	b _08020DAC\n\
_08020A88:\n\
	movs r0, #0x90\n\
	lsls r0, r0, #4\n\
	cmp r1, r0\n\
	bne _08020A92\n\
	b _08020CE6\n\
_08020A92:\n\
	cmp r1, r0\n\
	bgt _08020AA0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #4\n\
	cmp r1, r0\n\
	beq _08020B0C\n\
	b _08020DAC\n\
_08020AA0:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #5\n\
	cmp r1, r0\n\
	bne _08020AAA\n\
	b _08020BD2\n\
_08020AAA:\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #5\n\
	cmp r1, r0\n\
	beq _08020B6C\n\
	b _08020DAC\n\
_08020AB4:\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020ABE\n\
	b _08020DAC\n\
_08020ABE:\n\
	cmp r1, #0x24\n\
	bne _08020AC4\n\
	b _08020DAC\n\
_08020AC4:\n\
	ldr r7, _08020AE4\n\
_08020AC6:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020AE8\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020AF2\n\
	.align 2, 0\n\
_08020AE4: .4byte gUnk_8E00E30\n\
_08020AE8:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020AF2:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214BC\n\
	adds r5, #0x20\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020B06\n\
	b _08020DAC\n\
_08020B06:\n\
	cmp r1, #0x24\n\
	bne _08020AC6\n\
	b _08020DAC\n\
_08020B0C:\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020B16\n\
	b _08020DAC\n\
_08020B16:\n\
	cmp r1, #0x24\n\
	bne _08020B1C\n\
	b _08020DAC\n\
_08020B1C:\n\
	ldr r7, _08020B3C\n\
_08020B1E:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020B40\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020B4A\n\
	.align 2, 0\n\
_08020B3C: .4byte gUnk_8E00E30\n\
_08020B40:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020B4A:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214BC\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl sub_8021664\n\
	adds r5, #0x20\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020B66\n\
	b _08020DAC\n\
_08020B66:\n\
	cmp r1, #0x24\n\
	bne _08020B1E\n\
	b _08020DAC\n\
_08020B6C:\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020B76\n\
	b _08020DAC\n\
_08020B76:\n\
	cmp r1, #0x24\n\
	bne _08020B7C\n\
	b _08020DAC\n\
_08020B7C:\n\
	ldr r7, _08020B9C\n\
_08020B7E:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020BA0\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020BAA\n\
	.align 2, 0\n\
_08020B9C: .4byte gUnk_8E00E30\n\
_08020BA0:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020BAA:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214BC\n\
	adds r0, r5, #0\n\
	bl sub_80216D0\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl sub_8021664\n\
	adds r5, #0x20\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020BCC\n\
	b _08020DAC\n\
_08020BCC:\n\
	cmp r1, #0x24\n\
	bne _08020B7E\n\
	b _08020DAC\n\
_08020BD2:\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020BDC\n\
	b _08020DAC\n\
_08020BDC:\n\
	cmp r1, #0x24\n\
	bne _08020BE2\n\
	b _08020DAC\n\
_08020BE2:\n\
	ldr r7, _08020C00\n\
_08020BE4:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020C04\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020C0E\n\
	.align 2, 0\n\
_08020C00: .4byte gUnk_8E00E30\n\
_08020C04:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020C0E:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214BC\n\
	adds r0, r5, #0\n\
	bl sub_80216D0\n\
	adds r5, #0x20\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020C28\n\
	b _08020DAC\n\
_08020C28:\n\
	cmp r1, #0x24\n\
	bne _08020BE4\n\
	b _08020DAC\n\
_08020C2E:\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020C38\n\
	b _08020DAC\n\
_08020C38:\n\
	cmp r1, #0x24\n\
	bne _08020C3E\n\
	b _08020DAC\n\
_08020C3E:\n\
	ldr r7, _08020C5C\n\
_08020C40:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020C60\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020C6A\n\
	.align 2, 0\n\
_08020C5C: .4byte gUnk_8E00E30\n\
_08020C60:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020C6A:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214F4\n\
	adds r5, #0x40\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020C7E\n\
	b _08020DAC\n\
_08020C7E:\n\
	cmp r1, #0x24\n\
	bne _08020C40\n\
	b _08020DAC\n\
_08020C84:\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	bne _08020C8E\n\
	b _08020DAC\n\
_08020C8E:\n\
	cmp r1, #0x24\n\
	bne _08020C94\n\
	b _08020DAC\n\
_08020C94:\n\
	ldr r1, _08020CB4\n\
	mov r8, r1\n\
_08020C98:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020CB8\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020CC2\n\
	.align 2, 0\n\
_08020CB4: .4byte gUnk_8E00E30\n\
_08020CB8:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020CC2:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_8021584\n\
	cmp r7, #0\n\
	beq _08020CD2\n\
	adds r5, #0x60\n\
	b _08020CD4\n\
_08020CD2:\n\
	adds r5, #0x20\n\
_08020CD4:\n\
	movs r0, #1\n\
	eors r7, r0\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	beq _08020DAC\n\
	cmp r1, #0x24\n\
	bne _08020C98\n\
	b _08020DAC\n\
_08020CE6:\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	beq _08020DAC\n\
	cmp r1, #0x24\n\
	beq _08020DAC\n\
	ldr r1, _08020D14\n\
	mov r8, r1\n\
_08020CF6:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020D18\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020D22\n\
	.align 2, 0\n\
_08020D14: .4byte gUnk_8E00E30\n\
_08020D18:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020D22:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_8021584\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl sub_8021688\n\
	cmp r7, #0\n\
	beq _08020D3A\n\
	adds r5, #0x60\n\
	b _08020D3C\n\
_08020D3A:\n\
	adds r5, #0x20\n\
_08020D3C:\n\
	movs r0, #1\n\
	eors r7, r0\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	beq _08020DAC\n\
	cmp r1, #0x24\n\
	bne _08020CF6\n\
	b _08020DAC\n\
_08020D4E:\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	beq _08020DAC\n\
	cmp r1, #0x24\n\
	beq _08020DAC\n\
	ldr r1, _08020D7C\n\
	mov r8, r1\n\
_08020D5E:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020D80\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020D8A\n\
	.align 2, 0\n\
_08020D7C: .4byte gUnk_8E00E30\n\
_08020D80:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020D8A:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80215BC\n\
	cmp r7, #0\n\
	beq _08020D9A\n\
	adds r5, #0xc0\n\
	b _08020D9C\n\
_08020D9A:\n\
	adds r5, #0x40\n\
_08020D9C:\n\
	movs r0, #1\n\
	eors r7, r0\n\
	ldrb r0, [r4]\n\
	adds r1, r0, #0\n\
	cmp r1, #0\n\
	beq _08020DAC\n\
	cmp r1, #0x24\n\
	bne _08020D5E\n\
_08020DAC:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00, 0x00");
}
/*
void sub_8020DB8(u32 arg0, u8* name, u16 arg2)
{
    bool32 r7;
    name = sub_8020824(name);
    r7 = 0;

    switch (arg2 & 0x1F00)
    {
    case 0: //_08020AB4
        while (*name != 0)
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            arg0 += 32;
        }
        break;
    case 0x800:
        while (*name != 0)
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_8021664(arg0, arg2);
            arg0 += 32;
        }
        break;
    case 0x1800:
        while (*name != 0)
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
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
            arg0 += 32;
        }
        break;
    case 0x1000:
        while (*name != 0)
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214BC(arg0, r1, arg2);
            sub_80216D0(arg0);
            arg0 += 32;
        }
        break;
    case 0x400:
        while (*name != 0)
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80214F4(arg0, r1, arg2);
            arg0 += 64;
        }
        break;
    case 0x100:
        while (*name != 0)
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_8021584(arg0, r1, arg2);
            if (r7)
                arg0 += 96;
            else
                arg0 += 32;
            r7 ^= 1;
        }
        break;
    case 0x900:
        while (*name != 0)
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
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
                arg0 += 96;
            else
                arg0 += 32;
            r7 ^= 1;
        }
        break;
    case 0x500:
        while (*name != 0)
        {
            u16 r1;
            if ((s8)*name >= 0)
            {
                r1 = gUnk_8E00E30[*name - 32][0] << 8 | gUnk_8E00E30[*name - 32][1];
                name++;
            }
            else
            {
                r1 = name[0] << 8 | name[1];
                name += 2;
            }
            sub_80215BC(arg0, r1, arg2);
            if (r7)
                arg0 += 192;
            else
                arg0 += 64;
            r7 ^= 1;
        }
        break;
    }
}*/

NAKED
void sub_8020DB8(u32 arg0, u8* name, u16 arg2)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r5, r0, #0\n\
	adds r4, r1, #0\n\
	lsls r2, r2, #0x10\n\
	lsrs r6, r2, #0x10\n\
	adds r0, r4, #0\n\
	bl sub_8020824\n\
	adds r4, r0, #0\n\
	movs r7, #0\n\
	movs r1, #0xf8\n\
	lsls r1, r1, #5\n\
	ands r1, r6\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #3\n\
	cmp r1, r0\n\
	bne _08020DE0\n\
	b _0802105C\n\
_08020DE0:\n\
	cmp r1, r0\n\
	bgt _08020E04\n\
	movs r0, #0x80\n\
	lsls r0, r0, #1\n\
	cmp r1, r0\n\
	bne _08020DEE\n\
	b _08020FAC\n\
_08020DEE:\n\
	cmp r1, r0\n\
	bgt _08020DF8\n\
	cmp r1, #0\n\
	beq _08020E2E\n\
	b _080210AE\n\
_08020DF8:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #3\n\
	cmp r1, r0\n\
	bne _08020E02\n\
	b _08020F66\n\
_08020E02:\n\
	b _080210AE\n\
_08020E04:\n\
	movs r0, #0x90\n\
	lsls r0, r0, #4\n\
	cmp r1, r0\n\
	bne _08020E0E\n\
	b _08021000\n\
_08020E0E:\n\
	cmp r1, r0\n\
	bgt _08020E1C\n\
	movs r0, #0x80\n\
	lsls r0, r0, #4\n\
	cmp r1, r0\n\
	beq _08020E74\n\
	b _080210AE\n\
_08020E1C:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #5\n\
	cmp r1, r0\n\
	beq _08020F1A\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #5\n\
	cmp r1, r0\n\
	beq _08020EC4\n\
	b _080210AE\n\
_08020E2E:\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020E36\n\
	b _080210AE\n\
_08020E36:\n\
	ldr r7, _08020E54\n\
_08020E38:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020E58\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020E62\n\
	.align 2, 0\n\
_08020E54: .4byte gUnk_8E00E30\n\
_08020E58:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020E62:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214BC\n\
	adds r5, #0x20\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020E38\n\
	b _080210AE\n\
_08020E74:\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020E7C\n\
	b _080210AE\n\
_08020E7C:\n\
	ldr r7, _08020E9C\n\
_08020E7E:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020EA0\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020EAA\n\
	.align 2, 0\n\
_08020E9C: .4byte gUnk_8E00E30\n\
_08020EA0:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020EAA:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214BC\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl sub_8021664\n\
	adds r5, #0x20\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020E7E\n\
	b _080210AE\n\
_08020EC4:\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020ECC\n\
	b _080210AE\n\
_08020ECC:\n\
	ldr r7, _08020EEC\n\
_08020ECE:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020EF0\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020EFA\n\
	.align 2, 0\n\
_08020EEC: .4byte gUnk_8E00E30\n\
_08020EF0:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020EFA:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214BC\n\
	adds r0, r5, #0\n\
	bl sub_80216D0\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl sub_8021664\n\
	adds r5, #0x20\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020ECE\n\
	b _080210AE\n\
_08020F1A:\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020F22\n\
	b _080210AE\n\
_08020F22:\n\
	ldr r7, _08020F40\n\
_08020F24:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020F44\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020F4E\n\
	.align 2, 0\n\
_08020F40: .4byte gUnk_8E00E30\n\
_08020F44:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020F4E:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214BC\n\
	adds r0, r5, #0\n\
	bl sub_80216D0\n\
	adds r5, #0x20\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020F24\n\
	b _080210AE\n\
_08020F66:\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020F6E\n\
	b _080210AE\n\
_08020F6E:\n\
	ldr r7, _08020F8C\n\
_08020F70:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020F90\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020F9A\n\
	.align 2, 0\n\
_08020F8C: .4byte gUnk_8E00E30\n\
_08020F90:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020F9A:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80214F4\n\
	adds r5, #0x40\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020F70\n\
	b _080210AE\n\
_08020FAC:\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020FB4\n\
	b _080210AE\n\
_08020FB4:\n\
	ldr r1, _08020FD4\n\
	mov r8, r1\n\
_08020FB8:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08020FD8\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08020FE2\n\
	.align 2, 0\n\
_08020FD4: .4byte gUnk_8E00E30\n\
_08020FD8:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08020FE2:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_8021584\n\
	cmp r7, #0\n\
	beq _08020FF2\n\
	adds r5, #0x60\n\
	b _08020FF4\n\
_08020FF2:\n\
	adds r5, #0x20\n\
_08020FF4:\n\
	movs r0, #1\n\
	eors r7, r0\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08020FB8\n\
	b _080210AE\n\
_08021000:\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	beq _080210AE\n\
	ldr r1, _08021028\n\
	mov r8, r1\n\
_0802100A:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _0802102C\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08021036\n\
	.align 2, 0\n\
_08021028: .4byte gUnk_8E00E30\n\
_0802102C:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08021036:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_8021584\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl sub_8021688\n\
	cmp r7, #0\n\
	beq _0802104E\n\
	adds r5, #0x60\n\
	b _08021050\n\
_0802104E:\n\
	adds r5, #0x20\n\
_08021050:\n\
	movs r0, #1\n\
	eors r7, r0\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _0802100A\n\
	b _080210AE\n\
_0802105C:\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	beq _080210AE\n\
	ldr r1, _08021084\n\
	mov r8, r1\n\
_08021066:\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _08021088\n\
	ldrb r0, [r4]\n\
	subs r0, #0x20\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0]\n\
	lsls r1, r1, #8\n\
	ldrb r0, [r0, #1]\n\
	orrs r1, r0\n\
	adds r4, #1\n\
	b _08021092\n\
	.align 2, 0\n\
_08021084: .4byte gUnk_8E00E30\n\
_08021088:\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r4, #1]\n\
	orrs r1, r0\n\
	adds r4, #2\n\
_08021092:\n\
	adds r0, r5, #0\n\
	adds r2, r6, #0\n\
	bl sub_80215BC\n\
	cmp r7, #0\n\
	beq _080210A2\n\
	adds r5, #0xc0\n\
	b _080210A4\n\
_080210A2:\n\
	adds r5, #0x40\n\
_080210A4:\n\
	movs r0, #1\n\
	eors r7, r0\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08021066\n\
_080210AE:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

u16 sub_80210B8(u16 arg0)
{
    u16 r2;

    if (arg0 < 0x8140)
        arg0 = 0x8140;

    r2 = arg0 += 0x7EC0;

    if (arg0 > 0x400)
        arg0 -= 0x200;

    if (r2 > 0x700)
        arg0 -= 0x100;

    if (r2 > 0x5F00)
        arg0 -= 0x4000;

    r2 = arg0;
    arg0 = arg0 - arg0 / 256 * 68;

    if (r2 % 256 >= 64)
        arg0--;

    return arg0;
}

void sub_8021138(u8* r7, u32* r8, u16 r6)
{
    u8 i, j, r2;
    u32 r4;

    r6 &= 0xFF;

    for (i = 0; i < 8; i++)
    {
        r2 = *r7++;
        r2 *= 2;
        r4 = 0;

        for (j = 0; j < 4; j++)
        {
            r4 |= ((r2 & 0x80) / 128 * r6) << (j * 8);
            r2 <<= 1;
        }
        *r8++ = r4;

        r4 = 0;
        for (j = 0; j < 4; j++)
        {
            r4 |= ((r2 & 0x80) / 128 * r6) << (j * 8);
            r2 <<= 1;
        }
        *r8++ = r4;
    }
}

/*
void sub_80211D4(u8 /*?*arg0, u32* arg1, u32 /*?* arg2)
{
    u8 i, j, b;

    for (b = 0; b < 2; b++)
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 4; j++)
                ;
            arg1[0] = 0;
            for (j = 0; j < 4; j++)
                ;
            arg1[1] = 0;
            arg1 += 16;
        }
}*/
