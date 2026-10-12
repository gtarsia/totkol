#include "global.h"
#include "message.h"

// The message window's state machine, 0x0801670C..0x08017B24. Called every frame while a
// message shows; returns 1 or 0xFF when it's done.

enum {
    WIN_INIT,
    WIN_OPEN,
    WIN_ANIM,           // opening or closing: the window grows or shrinks
    WIN_ANIM_WAIT,
    WIN_DRAW,
    WIN_PRINT,
    WIN_TEXT,
    WIN_TEXT_7,
    WIN_8,
    WIN_9,
    WIN_10,
    WIN_CLOSE,
    WIN_CLOSED,
    WIN_RESTORE,
    WIN_FADE_INIT,
    WIN_FADE,
};

// guess: the I/O register copies written in VBlank.
struct IoRegs {
    u16 dispcnt;
    u8 filler2[0x38];
    volatile u8 win0Right;
    volatile u8 win0Left;
    volatile u8 win1Right;
    volatile u8 win1Left;
    volatile u8 win0Bottom;
    volatile u8 win0Top;
    volatile u8 win1Bottom;
    volatile u8 win1Top;
    volatile u8 winIn0;
    volatile u8 winIn1;
    volatile u8 winOut;
};

extern u16 gUnk_03000820;           // guess: the keys held
extern struct IoRegs gUnk_03000DD0;
extern u16 gUnk_02002500[];         // guess: a palette
extern u16 gUnk_02002600[];
extern const u16 gUnk_08724208[];

void CpuFastSet(const void *, void *, u32);
void CpuSet(const void *, void *, u32);
void PlaySE(u32);
void memzero(void *, u32);
void sub_08000BB4(struct VramCopy *, void *, void *, u32);
void sub_08000C44(struct VramCopy *, u32, void *, u32);
void sub_08000CD4(struct VramCopy *, void *, void *, u32, u32, u32, u32);
void sub_08000D94(struct VramCopy *, u32, void *, u32, u32, u32);
void sub_08014068(void);
void sub_08014118(void);
void sub_080141C8(void);
void sub_080142E8(void);
void sub_08015188(void);
void sub_080160E4(void);
void sub_08016318(void);
u16 sub_08018568(void);
u16 sub_08018808(void);
void sub_080188D0(void);
void sub_08018D58(void);
void sub_08018F80(u16 *, u16);
void sub_0801B8D0(u32, u16, u8, u16 *, u16 *, void *);
void sub_0801B9AC(u16 *, u32, u8, u32, u16, u16, u32);
void sub_0801BB1C(u16 *, u32, u32, u8, u32, u16, u32);
void sub_0801BC70(u16 *, u8, u16);
void sub_0801C264(void *, s16, u32);

#define NextCopy()                                                              \
    (gUnk_0200283C->copyIndex %= ARRAY_COUNT(gUnk_0200283C->copies),            \
     &gUnk_0200283C->copies[gUnk_0200283C->copyIndex++])

#define OBJ_TILE(n) ((void *)(0x06010000 + (n) * 32))

#ifdef NONMATCHING
u16 sub_0801670C(void)
{
    struct MessageCtx *ctx;
    u16 ret;
    u16 *dst;

    gUnk_0200283C->timer = (gUnk_0200283C->timer + 1) % 240;
    ret = 0;
    if (gUnk_03000820 & (A_BUTTON | B_BUTTON)) {
        if (gUnk_0200283C->repeatTimer != 0)
            gUnk_0200283C->repeatTimer--;
    } else {
        gUnk_0200283C->repeatTimer = gUnk_0200283C->repeatDelay;
    }

    switch (gUnk_0200283C->unk1BA4) {
    case WIN_INIT:
        sub_080142E8();
        if (!(gUnk_0200283C->unk1BC1 & 0xF)) {
            sub_080141C8();
            sub_080160E4();
        }
        if (gUnk_0200283C->unk1BAC != 0) {
            if (!(gUnk_0200283C->unk1BC1 & 0xC)) {
                u16 *pal = gUnk_02002600;
                if (gUnk_0200283C->unkEF8 & 0x1000)
                    pal += 0xC0;
                else
                    pal += 0x70;
                sub_0801B8D0(gUnk_0200283C->unk1B7C, gUnk_0200283C->unk1BC6,
                             gUnk_0200283C->unk1BAD, pal, gUnk_0200283C->frame,
                             OBJ_TILE(gUnk_0200283C->unk1BAE));
            } else {
                switch (gUnk_0200283C->unk1BC2) {
                case 0:
                case 2:
                case 5:
                    sub_0801C264(OBJ_TILE(gUnk_0200283C->unk1BAE),
                                 gUnk_0200283C->unk1BC6, 0);
                    break;
                case 4:
                    CpuFastSet((u8 *)gUnk_08724208 + 0xCC * 128 + gUnk_08724208[0],
                               OBJ_TILE(gUnk_0200283C->unk1BAE), 0x20);
                    break;
                case 3:
                    CpuFastSet((u8 *)gUnk_08724208
                                   + (gUnk_0200283C->unk1BC6 * 128 + gUnk_08724208[0]),
                               OBJ_TILE(gUnk_0200283C->unk1BAE), 0x20);
                    break;
                }
            }
        }
        if (gUnk_0200283C->unkEF1 == 1) {
            if (gUnk_0200283C->unkEF2 == 0)
                sub_08000C44(NextCopy(), 0, gUnk_0200283C->map0, 0x280);
            sub_08000C44(NextCopy(), 0, gUnk_0200283C->map1, 0x280);
        }
        if (gUnk_0200283C->unkEF8 & 0x8000) {
            CpuFastFill(0, gUnk_0200283C, 0xA00);
        } else {
            sub_08014068();
        }
        gUnk_0200283C->unk1BA4 = WIN_OPEN;
        return 0;
    case WIN_OPEN:
        if ((gUnk_0200283C->unk1BA7 & 3) == 2) {
            sub_08016318();
            gUnk_0200283C->unk1BA4 = WIN_9;
            return 0;
        }
        if (!(gUnk_0200283C->unk1BC1 & 3) && !(gUnk_0200283C->unkEF8 & 0x82)) {
            gUnk_0200283C->animTimer = 4;
            gUnk_0200283C->animWidth = 2;
            gUnk_0200283C->unk1BA4 = WIN_ANIM;
            gUnk_0200283C->next = WIN_DRAW;
            return 0;
        }
        gUnk_0200283C->unkEF0 = 0;
        gUnk_0200283C->unk1BA4 = WIN_DRAW;
    case WIN_DRAW:
        if ((u8)(gUnk_0200283C->unkEEB - 1) <= 1)
            PlaySE(0xB6);
        if (gUnk_0200283C->unkEEB == 4)
            PlaySE(0xB5);
        if (gUnk_0200283C->unkEF8 & 2) {
            if (gUnk_0200283C->unkEF2 == 0) {
                dst = gUnk_0200283C->map0 + gUnk_0200283C->x + gUnk_0200283C->y * 32;
                sub_08000D94(NextCopy(), 0, dst, gUnk_0200283C->width + 2,
                             gUnk_0200283C->height + 2, 0x40);
            }
            dst = gUnk_0200283C->map1 + gUnk_0200283C->x + gUnk_0200283C->y * 32;
            sub_08000D94(NextCopy(), 0, dst, gUnk_0200283C->width + 2,
                         gUnk_0200283C->height + 2, 0x40);
        } else {
            u8 flags;
            u8 kind;
            u32 pal;

            sub_0801BB1C(gUnk_0200283C->frame, gUnk_0200283C->width + 2,
                         gUnk_0200283C->height + 2, gUnk_0200283C->unkEEA,
                         gUnk_0200283C->width + 2, gUnk_0200283C->unkEFE, 4);
            flags = gUnk_0200283C->unk1BC1;
            if (!(flags & 3) && (kind = gUnk_0200283C->unk1BAC) != 0) {
                u8 w = gUnk_0200283C->width;
                u16 *p = &gUnk_0200283C->frame[w + 3];
                if (!(flags & 0xC)) {
                    if (kind == 2)
                        p += w - 5;
                    sub_0801B9AC(p, 5, gUnk_0200283C->height, w + 2,
                                 gUnk_0200283C->unkEFE, gUnk_0200283C->unk1BCC, 0);
                } else {
                    switch (gUnk_0200283C->unk1BC2) {
                    case 0:
                    case 2:
                        pal = 0x4000;
                        p[0] = pal + 1;
                        p[1] = pal + 2;
                        p[gUnk_0200283C->width + 2] = pal + 3;
                        p[gUnk_0200283C->width + 3] = pal + 4;
                        break;
                    case 1:
                    case 3:
                    case 4:
                    case 5:
                        break;
                    }
                }
            }
            {
                u8 x = gUnk_0200283C->x;
                u8 y = gUnk_0200283C->y;
                s32 w = gUnk_0200283C->width + 2;
                s32 h = gUnk_0200283C->height + 2;
                u16 *src = gUnk_0200283C->frame;
                dst = gUnk_0200283C->map0 + x + y * 32;
                sub_08000CD4(NextCopy(), src, dst, w, h, w * 2, 0x40);
            }
            ctx = gUnk_0200283C;
            if (ctx->unk1BC1 & 0xC) {
                if (ctx->unk1BC2 == 1) {
                    u16 *line = ctx->line;
                    sub_08018F80(line, ctx->unk1BC6);
                    dst = gUnk_0200283C->map1 + gUnk_0200283C->x
                        + ((gUnk_0200283C->y + 1) * 32 + 1);
                    sub_08000BB4(NextCopy(), line, dst, 2);
                    dst = gUnk_0200283C->map1 + gUnk_0200283C->x
                        + ((gUnk_0200283C->y + 2) * 32 + 1);
                    line = &ctx->line[2];
                    sub_08000BB4(NextCopy(), line, dst, 2);
                }
            } else {
                memzero(ctx->line, (ctx->width + 2) * 2);
                sub_0801BC70(&gUnk_0200283C->line[1], gUnk_0200283C->unkEEB,
                             gUnk_0200283C->unkEFE);
                dst = gUnk_0200283C->map1 + gUnk_0200283C->x + gUnk_0200283C->y * 32;
                {
                    s32 w = gUnk_0200283C->width + 2;
                    u16 *src = gUnk_0200283C->line;
                    sub_08000BB4(NextCopy(), src, dst, w);
                }
                dst += 32;
                sub_08000D94(NextCopy(), 0, dst, gUnk_0200283C->width + 2,
                             gUnk_0200283C->height + 1, 0x40);
            }
        }
        gUnk_0200283C->unk1B98 = 3;
        gUnk_0200283C->unk1BA4 = WIN_PRINT;
        sub_08015188();
    case WIN_PRINT:
        if (gUnk_0200283C->unk1BB8 == 1) {
            if (gUnk_0200283C->text->unk7_3 <= 1
             || gUnk_0200283C->text->unk7_5) {
                u8 right = 0;
                u8 left = 0;
                u8 inset = 0;
                u8 kind = gUnk_0200283C->unk1BAC;
                volatile u8 *winIn;

                if (kind != 0) {
                    if (gUnk_0200283C->unk1BC1 & 0xC)
                        left = 3;
                    else if (kind == 1)
                        left = 6;
                    else
                        right = 6;
                }
                if (!(gUnk_0200283C->unkEF8 & 8))
                    inset = 3;
                if (gUnk_0200283C->unk1BB9 == 0) {
                    gUnk_03000DD0.win0Right = (gUnk_0200283C->width + gUnk_0200283C->x
                                               - (right + 1)) * 8 - inset;
                    gUnk_03000DD0.win0Left = (gUnk_0200283C->x + left) * 8 + inset;
                    gUnk_03000DD0.win0Bottom = (gUnk_0200283C->height + gUnk_0200283C->y + 2)
                                               * 8 - inset;
                    gUnk_03000DD0.win0Top = gUnk_0200283C->y * 8 + inset;
                    gUnk_03000DD0.dispcnt |= 0x2000;
                    winIn = &gUnk_03000DD0.winIn0;
                } else {
                    gUnk_03000DD0.win1Right = (gUnk_0200283C->width + gUnk_0200283C->x
                                               - (right + 1)) * 8 - inset;
                    gUnk_03000DD0.win1Left = (gUnk_0200283C->x + left) * 8 + inset;
                    gUnk_03000DD0.win1Bottom = (gUnk_0200283C->height + gUnk_0200283C->y + 2)
                                               * 8 - inset;
                    gUnk_03000DD0.win1Top = gUnk_0200283C->y * 8 + inset;
                    gUnk_03000DD0.dispcnt |= 0x4000;
                    winIn = &gUnk_03000DD0.winIn1;
                }
                *winIn &= 0xE0;
                *winIn |= 0xF;
                if (gUnk_0200283C->unk1BBB == 1) {
                    gUnk_03000DD0.winOut = 0x1F;
                    REG_DISPCNT = gUnk_03000DD0.dispcnt;
                    CpuSet((void *)&gUnk_03000DD0.win0Right, (void *)REG_ADDR_WIN0H, 6);
                }
            }
        }
        if (gUnk_0200283C->unk1B84 >= gUnk_0200283C->text->lines - 1
         && gUnk_0200283C->unkEEE == 0 && gUnk_0200283C->unk1B98 == 0
         && (gUnk_0200283C->unk1BA7 & 2)) {
            sub_08016318();
            gUnk_0200283C->unk1BA4 = WIN_9;
        } else {
            gUnk_0200283C->unk1BA4 = WIN_TEXT;
        }
        break;
    case WIN_TEXT:
    case WIN_TEXT_7:
        if (gUnk_0200283C->unkEF8 & 0x80) {
            gUnk_0200283C->unk1BA4 = WIN_CLOSED;
            break;
        }
        ret = sub_08018568();
        if (ret == 1) {
            sub_08018D58();
            return 1;
        }
        if (ret == 0xFF) {
            gUnk_0200283C->unk1BA4 = WIN_CLOSE;
            ret = 0;
        }
        break;
    case WIN_8:
        sub_08016318();
    case WIN_9:
        gUnk_0200283C->unk1BA4 = WIN_10;
        gUnk_0200283C->unk1B99 = 8;
        sub_08018D58();
        sub_080188D0();
        return 0;
    case WIN_10:
        if (sub_08018808() != 0xFF)
            break;
        sub_08018D58();
        return 0;
    case WIN_CLOSE:
        if (gUnk_0200283C->unkEF2 != 0) {
            gUnk_0200283C->unk1BA4 = WIN_FADE_INIT;
            gUnk_0200283C->next = WIN_CLOSED;
            break;
        }
        if (!(gUnk_0200283C->unk1BC1 & 3) && gUnk_0200283C->unkEF0 == 0
         && !(gUnk_0200283C->unkEF8 & 0x82)) {
            gUnk_0200283C->animTimer = 4;
            gUnk_0200283C->animWidth = gUnk_0200283C->width;
            gUnk_0200283C->next = WIN_CLOSED;
            gUnk_0200283C->unk1BA4 = WIN_ANIM;
            break;
        }
        gUnk_0200283C->unk1BA4 = WIN_CLOSED;
    case WIN_CLOSED:
        if (!(gUnk_0200283C->unkEF8 & 0x80))
            sub_08014118();
        else
            sub_08018D58();
        gUnk_0200283C->unk1BA4 = WIN_RESTORE;
        if (!(gUnk_0200283C->unkEF8 & 0x1000))
            return 0;
    case WIN_RESTORE:
        if (gUnk_0200283C->unk1BB8 == 1) {
            if (gUnk_0200283C->unk1BB9 == 0) {
                gUnk_03000DD0.win0Right = gUnk_0200283C->savedWin[1];
                gUnk_03000DD0.win0Left = gUnk_0200283C->savedWin[0];
                gUnk_03000DD0.win0Bottom = gUnk_0200283C->savedWin[3];
                gUnk_03000DD0.win0Top = gUnk_0200283C->savedWin[2];
            } else {
                gUnk_03000DD0.win1Right = gUnk_0200283C->savedWin[1];
                gUnk_03000DD0.win1Left = gUnk_0200283C->savedWin[0];
                gUnk_03000DD0.win1Bottom = gUnk_0200283C->savedWin[3];
                gUnk_03000DD0.win1Top = gUnk_0200283C->savedWin[2];
            }
            gUnk_03000DD0.dispcnt = gUnk_0200283C->savedDispcnt;
            gUnk_03000DD0.winIn0 = gUnk_0200283C->savedWinIn[0];
            gUnk_03000DD0.winIn1 = gUnk_0200283C->savedWinIn[1];
            if (gUnk_0200283C->unk1BBB == 1) {
                gUnk_03000DD0.winOut = gUnk_0200283C->savedWinOut;
                REG_DISPCNT = gUnk_03000DD0.dispcnt;
                CpuSet((void *)&gUnk_03000DD0.win0Right, (void *)REG_ADDR_WIN0H, 6);
            }
        }
        if (gUnk_0200283C->unkEF8 & 0x80)
            sub_08018D58();
        return 0xFF;
    case WIN_ANIM:
        {
            u32 bits = 0;
            s32 inset;

            if (++gUnk_0200283C->animTimer <= 3)
                return 0;
            gUnk_0200283C->animTimer = 0;
            if (gUnk_0200283C->unk1BB8 == 1
             && (gUnk_0200283C->text->unk7_3 <= 1
                 || gUnk_0200283C->text->unk7_5)) {
                inset = 0;
                if (!(gUnk_0200283C->unkEF8 & 8))
                    inset = 3;
                if (gUnk_0200283C->unk1BB9 == 0) {
                    gUnk_03000DD0.win0Right = (gUnk_0200283C->animWidth
                        + ((gUnk_0200283C->width - gUnk_0200283C->animWidth) / 2
                           + gUnk_0200283C->x) + 2) * 8 - inset;
                    gUnk_03000DD0.win0Left = ((gUnk_0200283C->width - gUnk_0200283C->animWidth)
                                              / 2 + gUnk_0200283C->x) * 8 + inset;
                    gUnk_03000DD0.win0Bottom = (gUnk_0200283C->height / 2 + gUnk_0200283C->y
                                                + 2) * 8 - inset;
                    gUnk_03000DD0.win0Top = (gUnk_0200283C->height / 2 + gUnk_0200283C->y) * 8
                                            + inset;
                    gUnk_03000DD0.winIn0 &= 0xE0;
                    gUnk_03000DD0.winIn0 = gUnk_03000DD0.winIn0 | 0xF | bits;
                    gUnk_03000DD0.dispcnt |= 0x2000;
                } else {
                    gUnk_03000DD0.win1Right = (gUnk_0200283C->animWidth
                        + ((gUnk_0200283C->width - gUnk_0200283C->animWidth) / 2
                           + gUnk_0200283C->x) + 2) * 8 - inset;
                    gUnk_03000DD0.win1Left = ((gUnk_0200283C->width - gUnk_0200283C->animWidth)
                                              / 2 + gUnk_0200283C->x) * 8 + inset;
                    gUnk_03000DD0.win1Bottom = (gUnk_0200283C->height / 2 + gUnk_0200283C->y
                                                + 2) * 8 - inset;
                    gUnk_03000DD0.win1Top = (gUnk_0200283C->height / 2 + gUnk_0200283C->y) * 8
                                            + inset;
                    gUnk_03000DD0.winIn1 &= 0xE0;
                    gUnk_03000DD0.winIn1 = gUnk_03000DD0.winIn1 | 0xF | bits;
                    gUnk_03000DD0.dispcnt |= 0x4000;
                }
                if (gUnk_0200283C->unk1BBB == 1) {
                    gUnk_03000DD0.winOut = 0x1F;
                    REG_DISPCNT = gUnk_03000DD0.dispcnt;
                    CpuSet((void *)&gUnk_03000DD0.win0Right, (void *)REG_ADDR_WIN0H, 6);
                }
            }
            sub_08014118();
            sub_0801BB1C(gUnk_0200283C->frame, gUnk_0200283C->animWidth + 2, 2,
                         gUnk_0200283C->unkEEA, gUnk_0200283C->animWidth + 2,
                         gUnk_0200283C->unkEFE, 4);
            {
                u16 *src = gUnk_0200283C->frame;
                s32 w, h;
                dst = gUnk_0200283C->map0 + gUnk_0200283C->x
                      + (gUnk_0200283C->width - gUnk_0200283C->animWidth) / 2
                      + (gUnk_0200283C->height / 2 + gUnk_0200283C->y) * 32;
                w = gUnk_0200283C->animWidth + 2;
                h = 2;
                sub_08000CD4(NextCopy(), src, dst, w, h, w * 2, 0x40);
            }
            dst = gUnk_0200283C->map1 + gUnk_0200283C->x
                  + (gUnk_0200283C->width - gUnk_0200283C->animWidth) / 2
                  + (gUnk_0200283C->height / 2 + gUnk_0200283C->y) * 32;
            sub_08000D94(NextCopy(), 0, dst, gUnk_0200283C->animWidth + 2, 2, 0x40);
            if (gUnk_0200283C->next == WIN_CLOSED) {
                if (gUnk_0200283C->animWidth > 2)
                    gUnk_0200283C->animWidth = 2;
                else
                    gUnk_0200283C->unk1BA4 = WIN_ANIM_WAIT;
            } else {
                if (gUnk_0200283C->animWidth < gUnk_0200283C->width)
                    gUnk_0200283C->animWidth = gUnk_0200283C->width;
                else
                    gUnk_0200283C->unk1BA4 = WIN_ANIM_WAIT;
            }
        }
        return 0;
    case WIN_ANIM_WAIT:
        if (++gUnk_0200283C->animTimer <= 3)
            return 0;
        gUnk_0200283C->animTimer = 0;
        gUnk_0200283C->unk1BA4 = gUnk_0200283C->next;
        if (gUnk_0200283C->next == WIN_CLOSED)
            sub_08014118();
        return 0;
    case WIN_FADE_INIT:
        gUnk_0200283C->fadeStep = 0;
        gUnk_0200283C->unk1BA4 = WIN_FADE;
        CpuSet(gUnk_02002500, gUnk_0200283C->frame, 0x10);
    case WIN_FADE:
        if (++gUnk_0200283C->fadeStep < gUnk_0200283C->fadeLength) {
            u8 step = gUnk_0200283C->fadeStep;
            vu16 *src = gUnk_0200283C->frame;
            u16 *dst = gUnk_02002500;
            u8 len = gUnk_0200283C->fadeLength;
            u16 i;

            for (i = 0; i < 16; i++, src++) {
                *dst++ = ((len - step) * (*src & 0x1F)) / len
                       | ((len - step) * ((*src >> 5) & 0x1F)) / len << 5
                       | ((len - step) * ((*src >> 10) & 0x1F)) / len << 10;
            }
            return 0;
        }
        sub_08014118();
        CpuSet(gUnk_0200283C->frame, gUnk_02002500, 0x10);
        gUnk_0200283C->unk1BA4 = gUnk_0200283C->next;
        return 0;
    default:
        break;
    }
    sub_08018D58();
    if (ret != 2)
        sub_080188D0();
    else
        ret = 0;
    return ret;
}
#else
NAKED u16 sub_0801670C(void)
{
    asm_unified(".include \"asm/non_matching/message_window/sub_0801670C.inc\"");
}
#endif
