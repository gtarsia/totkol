#include "global.h"
#include "message.h"

// The message system, 0x080197C0..0x080199E0. The rest is still in asm/code.s.

u8 sub_080197C0(void)
{
    return message_context->unk1BA6;
}

void sub_080197D4(void *a, void *b, void *c)
{
    sub_08013FC4(0, a);
    sub_08013FC4(1, b);
    sub_08013FC4(2, c);
}

void sub_080197FC(void)
{
    message_context->unkEF1 = 1;
}

u32 sub_08019814(void)
{
    u32 ret = 0;

    if (message_context->unkEF0 == 1)
        ret = 1;
    return ret;
}

void sub_08019830(u16 arg)
{
    if (message_context->unkEF0 == 1) {
        message_context->unkEF0 = arg != 1 ? 2 : 0;
        message_context->unk1BA4 = 11;
        sub_0801670C();
    }
}

void sub_08019870(u32 arg)
{
    message_context->unk1B7C = arg;
}

void sub_08019884(void)
{
    message_context->unkEFC = 0xFF;
}

// The width of a string in pixels, up to its end (0xFF) or a 0x81 glyph code.
u16 sub_0801989C(u8 *str, u16 withGlyph)
{
    u16 width = 0;

    while (*str != 0xFF) {
        if (*str == 0x81) {
            str++;
            if (withGlyph == 1)
                width += gUnk_0860D088[*str].width * 8;
            break;
        }
        if ((s8)*str >= 0)
            width += gUnk_0815DE6C[*str];
        else if (*str == 0x89)
            width += 6;
        str++;
    }
    return width;
}

u8 sub_0801991C(u8 *str)
{
    return sub_080143E0(str, 1);
}

u8 sub_0801992C(u8 *str)
{
    return sub_080143E0(str, 0);
}

s32 sub_0801993C(u8 *str)
{
    s32 width = sub_0801992C(str);
    s32 tiles = width >> 3;

    if (width & 7)
        tiles++;
    width = tiles;
    return width;
}

// Copies src into dst, expanding control codes 0x80 and 0x87, until it copies stop or n
// characters. Returns how many bytes it wrote.
u8 sub_0801995C(u8 *dst, u8 *src, s32 n, u8 stop)
{
    u8 count = 0;
    u8 c;
    u8 len;

// gotos, not a loop: agbcc lays out a loop differently.
loop:
    c = *src++;
    if (c == 0x80) {
        len = sub_0801995C(dst, gUnk_02002800[*src++], n, 0xFF);
        len--;  // drops the 0xFF it copied
        dst += len;
        count += len;
    } else if (c != 0x87) {
        *dst++ = c;
        count++;
        if (c != stop)
            goto next;
        goto end;
    } else {
        len = sub_0801995C(dst, gUnk_086254D8[*src++], n, 0xFF);
        len--;
        dst += len;
        count += len;
    }
next:
    if (--n > 0)
        goto loop;
end:
    return count;
}
