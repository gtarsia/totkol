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

static inline struct VramCopy *NextCopy(void)
{
    message_context->copyIndex %= ARRAY_COUNT(message_context->copies);
    return &message_context->copies[message_context->copyIndex++];
}

#define OBJ_TILE(n) ((void *)(0x06010000 + (n) * 32))

// dst, p and inset serve several cases, each as one variable: the original keeps each in one
// register across those cases.
u16 sub_0801670C(void)
{
    u16 ret;
    u16 *dst;
    u16 *p;
    s32 inset;

    message_context->timer = (message_context->timer + 1) % 240;
    ret = 0;
    if (gUnk_03000820 & (A_BUTTON | B_BUTTON)) {
        if (message_context->repeatTimer != 0)
            message_context->repeatTimer--;
    } else {
        message_context->repeatTimer = message_context->repeatDelay;
    }

    switch (message_context->unk1BA4) {
    case WIN_INIT:
        sub_080142E8();
        if (!(message_context->unk1BC1 & 0xF)) {
            sub_080141C8();
            sub_080160E4();
        }
        if (message_context->unk1BAC != 0) {
            if (!(message_context->unk1BC1 & 0xC)) {
                u16 *pal = gUnk_02002600;
                if (message_context->unkEF8 & 0x1000)
                    pal += 0xC0;
                else
                    pal += 0x70;
                sub_0801B8D0(message_context->unk1B7C, message_context->unk1BC6,
                             message_context->unk1BAD, pal, message_context->frame,
                             OBJ_TILE(message_context->unk1BAE));
            } else {
                switch (message_context->unk1BC2) {
                case 0:
                case 2:
                case 5:
                    sub_0801C264(OBJ_TILE(message_context->unk1BAE),
                                 message_context->unk1BC6, 0);
                    break;
                case 4:
                    CpuFastSet((u8 *)gUnk_08724208 + 0xCC * 128 + gUnk_08724208[0],
                               OBJ_TILE(message_context->unk1BAE), 0x20);
                    break;
                case 3:
                    CpuFastSet((u8 *)gUnk_08724208
                                   + (gUnk_08724208[0] + message_context->unk1BC6 * 128),
                               OBJ_TILE(message_context->unk1BAE), 0x20);
                    break;
                }
            }
        }
        if (message_context->unkEF1 == 1) {
            if (message_context->unkEF2 == 0)
                sub_08000C44(NextCopy(), 0, message_context->map0, 0x280);
            sub_08000C44(NextCopy(), 0, message_context->map1, 0x280);
        }
        {
            struct MessageCtx *c = message_context;
            // Set before the if: the original loads it last, into r2.
            u32 control = CPU_FAST_SET_SRC_FIXED | (0xA00 / 4);
            if (c->unkEF8 & 0x8000) {
                vu32 tmp = 0;
                CpuFastSet((void *)&tmp, c, control);
            } else {
                sub_08014068();
            }
        }
        message_context->unk1BA4 = WIN_OPEN;
        return 0;
    case WIN_OPEN:
        if ((message_context->unk1BA7 & 3) == 2) {
            sub_08016318();
            message_context->unk1BA4 = WIN_9;
            return 0;
        }
        if (!(message_context->unk1BC1 & 3) && !(message_context->unkEF8 & 0x82)) {
            message_context->animTimer = 4;
            message_context->animWidth = 2;
            // QOL: no opening animation; the window shows up whole.
            message_context->unk1BA4 = QOL ? WIN_DRAW : WIN_ANIM;
            message_context->next = WIN_DRAW;
            return 0;
        }
        message_context->unkEF0 = 0;
        message_context->unk1BA4 = WIN_DRAW;
    case WIN_DRAW:
        if ((u8)(message_context->unkEEB - 1) <= 1)
            PlaySE(0xB6);
        if (message_context->unkEEB == 4)
            PlaySE(0xB5);
        if (message_context->unkEF8 & 2) {
            if (message_context->unkEF2 == 0) {
                dst = message_context->map0 + message_context->x + message_context->y * 32;
                sub_08000D94(NextCopy(), 0, dst, message_context->width + 2,
                             message_context->height + 2, 0x40);
            }
            dst = message_context->map1 + message_context->x + message_context->y * 32;
            sub_08000D94(NextCopy(), 0, dst, message_context->width + 2,
                         message_context->height + 2, 0x40);
        } else {
            struct MessageCtx *ctx;
            u8 flags;
            u8 kind;
            u32 pal;

            sub_0801BB1C(message_context->frame, message_context->width + 2,
                         message_context->height + 2, message_context->unkEEA,
                         message_context->width + 2, message_context->unkEFE, 4);
            flags = message_context->unk1BC1;
            if (!(flags & 3) && (kind = message_context->unk1BAC) != 0) {
                u8 w = message_context->width;
                // &frame[w + 3], with w * 2 + message_context added first, as the original does.
                p = &((struct MessageCtx *)(w * 2 + (u32)message_context))->frame[3];
                if (!(flags & 0xC)) {
                    if (kind == 2)
                        p += w - 5;
                    sub_0801B9AC(p, 5, message_context->height, w + 2,
                                 message_context->unkEFE, message_context->unk1BCC, 0);
                } else {
                    switch (message_context->unk1BC2) {
                    case 0:
                    case 2:
                        pal = 0x4000;
                        p[0] = pal + 1;
                        p[1] = pal + 2;
                        p[message_context->width + 2] = pal + 3;
                        p[message_context->width + 3] = pal + 4;
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
                u8 x = message_context->x;
                u8 y = message_context->y;
                s32 w = message_context->width + 2;
                s32 h = message_context->height + 2;
                u16 *src = message_context->frame;
                u16 *d = (u16 *)(y * 64 + (x * 2 + (u32)message_context->map0));
                sub_08000CD4(NextCopy(), src, d, w, h, w * 2, 0x40);
            }
            ctx = message_context;
            if (ctx->unk1BC1 & 0xC) {
                if (ctx->unk1BC2 == 1) {
                    p = ctx->line;
                    sub_08018F80(p, ctx->unk1BC6);
                    dst = message_context->map1 + message_context->x
                        + ((message_context->y + 1) * 32 + 1);
                    sub_08000BB4(NextCopy(), p, dst, 2);
                    dst = message_context->map1 + message_context->x
                        + ((message_context->y + 2) * 32 + 1);
                    p = &ctx->line[2];
                    sub_08000BB4(NextCopy(), p, dst, 2);
                }
            } else {
                memzero(ctx->line, (ctx->width + 2) * 2);
                sub_0801BC70(&message_context->line[1], message_context->unkEEB,
                             message_context->unkEFE);
                dst = message_context->map1 + message_context->x + message_context->y * 32;
                {
                    s32 w = message_context->width + 2;
                    u16 *src = message_context->line;
                    sub_08000BB4(NextCopy(), src, dst, w);
                }
                dst += 32;
                sub_08000D94(NextCopy(), 0, dst, message_context->width + 2,
                             message_context->height + 1, 0x40);
            }
        }
        message_context->unk1B98 = 3;
        message_context->unk1BA4 = WIN_PRINT;
        sub_08015188();
    case WIN_PRINT:
        if (message_context->unk1BB8 == 1) {
            if (message_context->text->unk7_3 <= 1
             || message_context->text->unk7_5) {
                u8 right = 0;
                u8 left = 0;
                u8 kind;

                inset = 0;
                kind = message_context->unk1BAC;

                if (kind != 0) {
                    if (message_context->unk1BC1 & 0xC)
                        left = 3;
                    else if (kind == 1)
                        left = 6;
                    else
                        right = 6;
                }
                if (!(message_context->unkEF8 & 8))
                    inset = 3;
                if (message_context->unk1BB9 == 0) {
                    gUnk_03000DD0.win0Right = ((message_context->x + message_context->width
                                               - (right + 1)) << 3) - inset;
                    gUnk_03000DD0.win0Left = (message_context->x + left) * 8 + inset;
                    gUnk_03000DD0.win0Bottom = ((message_context->y + message_context->height + 2)
                                               << 3) - inset;
                    gUnk_03000DD0.win0Top = (message_context->y << 3) + inset;
                    gUnk_03000DD0.dispcnt |= 0x2000;
                    gUnk_03000DD0.winIn0 &= 0xE0;
                    gUnk_03000DD0.winIn0 |= 0xF;
                } else {
                    gUnk_03000DD0.win1Right = ((message_context->x + message_context->width
                                               - (right + 1)) << 3) - inset;
                    gUnk_03000DD0.win1Left = (message_context->x + left) * 8 + inset;
                    gUnk_03000DD0.win1Bottom = ((message_context->y + message_context->height + 2)
                                               << 3) - inset;
                    gUnk_03000DD0.win1Top = (message_context->y << 3) + inset;
                    gUnk_03000DD0.dispcnt |= 0x4000;
                    gUnk_03000DD0.winIn1 &= 0xE0;
                    gUnk_03000DD0.winIn1 |= 0xF;
                }
                if (message_context->unk1BBB == 1) {
                    gUnk_03000DD0.winOut = 0x1F;
                    REG_DISPCNT = gUnk_03000DD0.dispcnt;
                    CpuSet((void *)&gUnk_03000DD0.win0Right, (void *)REG_ADDR_WIN0H, 6);
                }
            }
        }
        if (message_context->unk1B84 >= message_context->text->lines - 1
         && message_context->unkEEE == 0 && message_context->unk1B98 == 0
         && (message_context->unk1BA7 & 2)) {
            sub_08016318();
            message_context->unk1BA4 = WIN_9;
        } else {
            message_context->unk1BA4 = WIN_TEXT;
        }
        break;
    case WIN_TEXT:
    case WIN_TEXT_7:
        if (message_context->unkEF8 & 0x80) {
            message_context->unk1BA4 = WIN_CLOSED;
            break;
        }
        ret = sub_08018568();
        if (ret == 1) {
            sub_08018D58();
            return 1;
        }
        if (ret == 0xFF) {
            message_context->unk1BA4 = WIN_CLOSE;
            ret = 0;
        }
        break;
    case WIN_8:
        sub_08016318();
    case WIN_9:
        message_context->unk1BA4 = WIN_10;
        message_context->unk1B99 = 8;
        sub_08018D58();
        sub_080188D0();
        return 0;
    case WIN_10:
        if (sub_08018808() != 0xFF)
            break;
        sub_08018D58();
        return 0;
    case WIN_CLOSE:
        if (message_context->unkEF2 != 0) {
            message_context->unk1BA4 = WIN_FADE_INIT;
            message_context->next = WIN_CLOSED;
            break;
        }
        if (!(message_context->unk1BC1 & 3) && message_context->unkEF0 == 0
         && !(message_context->unkEF8 & 0x82)) {
            message_context->animTimer = 4;
            message_context->animWidth = message_context->width;
            message_context->next = WIN_CLOSED;
            // QOL: no closing animation; the window goes at once.
            message_context->unk1BA4 = QOL ? WIN_CLOSED : WIN_ANIM;
            break;
        }
        message_context->unk1BA4 = WIN_CLOSED;
    case WIN_CLOSED:
        if (!(message_context->unkEF8 & 0x80))
            sub_08014118();
        else
            sub_08018D58();
        message_context->unk1BA4 = WIN_RESTORE;
        if (!(message_context->unkEF8 & 0x1000))
            return 0;
    case WIN_RESTORE:
        if (message_context->unk1BB8 == 1) {
            if (message_context->unk1BB9 == 0) {
                gUnk_03000DD0.win0Right = message_context->savedWin[1];
                gUnk_03000DD0.win0Left = message_context->savedWin[0];
                gUnk_03000DD0.win0Bottom = message_context->savedWin[3];
                gUnk_03000DD0.win0Top = message_context->savedWin[2];
            } else {
                gUnk_03000DD0.win1Right = message_context->savedWin[1];
                gUnk_03000DD0.win1Left = message_context->savedWin[0];
                gUnk_03000DD0.win1Bottom = message_context->savedWin[3];
                gUnk_03000DD0.win1Top = message_context->savedWin[2];
            }
            gUnk_03000DD0.dispcnt = message_context->savedDispcnt;
            gUnk_03000DD0.winIn0 = message_context->savedWinIn[0];
            gUnk_03000DD0.winIn1 = message_context->savedWinIn[1];
            if (message_context->unk1BBB == 1) {
                gUnk_03000DD0.winOut = message_context->savedWinOut;
                REG_DISPCNT = gUnk_03000DD0.dispcnt;
                CpuSet((void *)&gUnk_03000DD0.win0Right, (void *)REG_ADDR_WIN0H, 6);
            }
        }
        if (message_context->unkEF8 & 0x80)
            sub_08018D58();
        return 0xFF;
    case WIN_ANIM:
        {
            if (++message_context->animTimer <= 3)
                return 0;
            message_context->animTimer = 0;
            if (message_context->unk1BB8 == 1
             && (message_context->text->unk7_3 <= 1
                 || message_context->text->unk7_5)) {
                inset = 0;
                if (!(message_context->unkEF8 & 8))
                    inset = 3;
                if (message_context->unk1BB9 == 0) {
                    gUnk_03000DD0.win0Right = ((message_context->x + (message_context->width - message_context->animWidth) / 2 + message_context->animWidth + 2) << 3) - inset;
                    gUnk_03000DD0.win0Left = (message_context->x + (message_context->width - message_context->animWidth) / 2) * 8 + inset;
                    gUnk_03000DD0.win0Bottom = (message_context->y + message_context->height / 2
                                                + 2) * 8 - inset;
                    gUnk_03000DD0.win0Top = (message_context->y + message_context->height / 2) * 8
                                            + inset;
                    gUnk_03000DD0.winIn0 &= 0xE0;
                    gUnk_03000DD0.winIn0 = gUnk_03000DD0.winIn0 | 0xF;
                    gUnk_03000DD0.dispcnt |= 0x2000;
                } else {
                    gUnk_03000DD0.win1Right = ((message_context->x + (message_context->width - message_context->animWidth) / 2 + message_context->animWidth + 2) << 3) - inset;
                    gUnk_03000DD0.win1Left = (message_context->x + (message_context->width - message_context->animWidth) / 2) * 8 + inset;
                    gUnk_03000DD0.win1Bottom = (message_context->y + message_context->height / 2
                                                + 2) * 8 - inset;
                    gUnk_03000DD0.win1Top = (message_context->y + message_context->height / 2) * 8
                                            + inset;
                    gUnk_03000DD0.winIn1 &= 0xE0;
                    gUnk_03000DD0.winIn1 = gUnk_03000DD0.winIn1 | 0xF;
                    gUnk_03000DD0.dispcnt |= 0x4000;
                }
                if (message_context->unk1BBB == 1) {
                    gUnk_03000DD0.winOut = 0x1F;
                    REG_DISPCNT = gUnk_03000DD0.dispcnt;
                    CpuSet((void *)&gUnk_03000DD0.win0Right, (void *)REG_ADDR_WIN0H, 6);
                }
            }
            sub_08014118();
            sub_0801BB1C(message_context->frame, message_context->animWidth + 2, 2,
                         message_context->unkEEA, message_context->animWidth + 2,
                         message_context->unkEFE, 4);
            {
                s32 w, h;

                p = message_context->frame;
                dst = message_context->map0 + message_context->x
                      + (message_context->width - message_context->animWidth) / 2
                      + (message_context->y + message_context->height / 2) * 32;
                w = message_context->animWidth + 2;
                h = 2;
                sub_08000CD4(NextCopy(), p, dst, w, h, w * 2, 0x40);
            }
            dst = message_context->map1 + message_context->x
                  + (message_context->width - message_context->animWidth) / 2
                  + (message_context->y + message_context->height / 2) * 32;
            sub_08000D94(NextCopy(), 0, dst, message_context->animWidth + 2, 2, 0x40);
            if (message_context->next == WIN_CLOSED) {
                if (message_context->animWidth > 2)
                    message_context->animWidth = 2;
                else
                    message_context->unk1BA4 = WIN_ANIM_WAIT;
            } else {
                if (message_context->animWidth < message_context->width)
                    message_context->animWidth = message_context->width;
                else
                    message_context->unk1BA4 = WIN_ANIM_WAIT;
            }
        }
        return 0;
    case WIN_ANIM_WAIT:
        if (++message_context->animTimer <= 3)
            return 0;
        message_context->animTimer = 0;
        message_context->unk1BA4 = message_context->next;
        if (message_context->next == WIN_CLOSED)
            sub_08014118();
        return 0;
    case WIN_FADE_INIT:
        message_context->fadeStep = 0;
        message_context->unk1BA4 = WIN_FADE;
        CpuSet(gUnk_02002500, message_context->frame, 0x10);
    case WIN_FADE:
        if (++message_context->fadeStep < message_context->fadeLength) {
            u8 step = message_context->fadeStep;
            vu16 *src = message_context->frame;
            u16 *dst = gUnk_02002500;
            u8 len = message_context->fadeLength;
            u16 i;

            for (i = 0; i < 16; i++, src++) {
                *dst++ = ((*src & 0x1F) * (len - step)) / len
                       | (((*src >> 5) & 0x1F) * (len - step)) / len << 5
                       | (((*src >> 10) & 0x1F) * (len - step)) / len << 10;
            }
            return 0;
        }
        sub_08014118();
        CpuSet(message_context->frame, gUnk_02002500, 0x10);
        message_context->unk1BA4 = message_context->next;
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
