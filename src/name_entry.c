#include "global.h"

// The name entry of a new game.

struct NameEntry {
    u8 filler0[0x20];
    void *msg;
    u8 filler24[4];
    u8 *unk28;
    u8 filler2C[6];
    u16 unk32;
    u16 len;
    u16 timer;          // counts frames, mod 240
    u8 filler38[2];
    u16 unk3A;
    u16 state;
    u16 next;           // the state after a message
    u8 filler40[8];
    u16 unk48;
    u16 repeatMask;
    u8 filler4C[2];
    u8 name[16];        // 0xFF after the end
    u16 secret;
    u16 column;
    u8 filler62[2];
    u8 cursor[1];
};

enum {
    NAME_INIT,
    NAME_HELP,
    NAME_2,
    NAME_3,
    NAME_INPUT,
    NAME_5,
    NAME_MSG_WAIT,
    NAME_DONE,
    NAME_CONFIRM,
    NAME_SECRET,
    NAME_10,
    NAME_11,
    NAME_12,
    NAME_13,
};

struct Input {
    u8 filler0[7];
    u8 flags;
    u16 repeatMask;
    u8 fillerA;
    u8 repeatInterval;
    u8 fillerC[2];
    u8 repeatTimer;
};

extern struct NameEntry *gUnk_0202DFF0;
extern struct Input gUnk_03000820;
extern u8 gUnk_02000000[];
extern const u8 gUnk_0876379A[];
extern const u8 gUnk_0874A6CC[];
extern const u8 gUnk_086137FC[][10];  // the letters, 10 per row
extern const u8 gUnk_08613A46[];
extern u8 *gUnk_086254D8[];

void CpuSet(const void *, void *, u32);
int memcmp(const void *, const void *, unsigned long);
void PlaySE(u32);
u8 sub_080146E0(u8 *);
void sub_08015D50(void *, u32, const u8 *, u32, u32, s32, u32, u32, u32, u32, u32, u32, u32);
u16 sub_0801670C(void);
u8 sub_080197C0(void);
void sub_080197D4(u8 *, u32, u32);
s32 sub_0801993C(u8 *);
u16 sub_0801A3DC(void *);
u16 sub_0801A3E4(void *);
u16 sub_0801A40C(void);
u16 sub_0801A44C(void *, u16);
void sub_08147058(void *);
u16 sub_08147218(void *, u16);
void sub_08147A00(void);
void sub_08147D44(void *);

#define RESET_REPEAT()                                                  \
    if (gUnk_03000820.flags & 0x80)                                     \
        gUnk_03000820.repeatTimer = gUnk_03000820.repeatInterval

// Shows the help if navigation messages are on; returns whether it did.
static inline u8 NameHelp(void)
{
    struct NameEntry *s = gUnk_0202DFF0;

    // Bug: with navigation messages off it stayed in NAME_3, ignoring every key. See BUGS.md.
    s->state = QOL ? NAME_INPUT : NAME_3;
    if (!(gUnk_02000000[0x132F] & 1))
        return 0;
    sub_08015D50(s->msg, s->unk32, gUnk_0876379A, 9, 2, -1, 2, 0, 0, 0x100, 0, 0, 8);
    sub_0801670C();
    return 1;
}

u16 sub_08147300(void)
{
    struct NameEntry *s = gUnk_0202DFF0;
    void *cursor;
    const u8 *help;
    u16 key;
    u16 i, j, k;

    s->timer = (s->timer + 1) % 240;
    cursor = s->cursor;
    help = gUnk_0876379A;
    switch (s->state) {
    case NAME_INIT:
        sub_08147A00();
        sub_08147D44(gUnk_0202DFF0->cursor);
        gUnk_0202DFF0->state = NAME_HELP;
        break;
    case NAME_HELP:
        if (NameHelp()) {
            gUnk_0202DFF0->next = NAME_INPUT;
            gUnk_0202DFF0->state = NAME_MSG_WAIT;
        }
        gUnk_0202DFF0->unk48 = 1;
        break;
    case NAME_INPUT:
        gUnk_0202DFF0->unk3A = 1;
        key = sub_0801A40C();
        switch (key) {
        case DPAD_RIGHT:
            if (sub_0801A3DC(cursor) + sub_0801A3E4(cursor) > 8) {
                u16 *p = &gUnk_0202DFF0->column;
                if (*p <= 4)
                    *p = *p + 1;
                else
                    *p = 0;
            } else {
                u16 *p = &gUnk_0202DFF0->column;
                if (*p <= 8)
                    *p = *p + 1;
                else
                    *p = 0;
            }
            RESET_REPEAT();
            PlaySE(0xB2);
            break;
        case DPAD_LEFT:
            if (sub_0801A3DC(cursor) + sub_0801A3E4(cursor) > 8) {
                u16 *p = &gUnk_0202DFF0->column;
                if (*p <= 4) {
                    if (*p != 0)
                        *p = *p - 1;
                    else
                        *p = 9;
                } else {
                    *p = 4;
                }
            } else {
                u16 *p = &gUnk_0202DFF0->column;
                if (*p != 0)
                    *p = *p - 1;
                else
                    *p = 9;
            }
            RESET_REPEAT();
            PlaySE(0xB2);
            break;
        case DPAD_UP:
        case DPAD_DOWN:
            if (sub_0801A44C(cursor, key) > 2 && sub_08147218(cursor, key))
                gUnk_0202DFF0->state = NAME_5;
            RESET_REPEAT();
            break;
        case A_BUTTON:
            RESET_REPEAT();
            if (sub_0801A3DC(cursor) + sub_0801A3E4(cursor) > 8
             && gUnk_0202DFF0->column > 4) {
                gUnk_0202DFF0->next = gUnk_0202DFF0->state;
                gUnk_0202DFF0->state = NAME_DONE;
                break;
            }
            if (gUnk_0202DFF0->len <= 14) {
                gUnk_0202DFF0->name[gUnk_0202DFF0->len]
                    = gUnk_086137FC[sub_0801A3DC(cursor) + sub_0801A3E4(cursor)]
                                  [gUnk_0202DFF0->column];
                gUnk_0202DFF0->name[gUnk_0202DFF0->len + 1] = -1;
                if (sub_0801993C(gUnk_0202DFF0->name) <= 6) {
                    PlaySE(0xAD);
                    gUnk_0202DFF0->len++;
                    sub_08147A00();
                } else {
                    PlaySE(0xB5);
                    gUnk_0202DFF0->name[gUnk_0202DFF0->len] |= -1;
                }
            } else {
                PlaySE(0xB5);
            }
            break;
        case B_BUTTON:
            RESET_REPEAT();
            if (gUnk_0202DFF0->len != 0) {
                PlaySE(0xB0);
                gUnk_0202DFF0->name[--gUnk_0202DFF0->len] = 0xFF;
                sub_08147A00();
            }
            break;
        case START_BUTTON:
            gUnk_0202DFF0->next = gUnk_0202DFF0->state;
            gUnk_0202DFF0->state = NAME_DONE;
            break;
        case SELECT_BUTTON:
            sub_08015D50(gUnk_0202DFF0->msg, gUnk_0202DFF0->unk32, help, 9,
                         1, -1, 2, 0, 0, 0x100, 0, 0, 8);
            sub_0801670C();
            gUnk_0202DFF0->state = NAME_MSG_WAIT;
            gUnk_0202DFF0->next = key;
            break;
        }
        break;
    case NAME_5:
        if (!sub_08147218(cursor, sub_0801A40C()))
            gUnk_0202DFF0->state = NAME_INPUT;
        break;
    case NAME_MSG_WAIT:
        if (gUnk_0202DFF0->timer != 0)
            gUnk_0202DFF0->timer--;
        if (sub_0801670C()) {
            gUnk_0202DFF0->state = gUnk_0202DFF0->next;
        }
        break;
    case NAME_DONE:
        PlaySE(0xAD);
        for (i = 0; i < 16; i++) {
            if (gUnk_0202DFF0->name[i] == 0xFF) {
                for (; i < 16; i++)
                    gUnk_0202DFF0->name[i] |= 0xFF;
                break;
            }
        }
        for (i = 0; i < 16; i++) {
            u8 c = gUnk_0202DFF0->name[15 - i];
            if (c != 0xFF && c != 0x89)
                break;
            gUnk_0202DFF0->name[15 - i] = 0xFF;
        }
        if (gUnk_0202DFF0->name[0] == 0xFF) {
            CpuSet(gUnk_086254D8[2], gUnk_0202DFF0->name, 8);
            CpuSet(gUnk_086254D8[2], gUnk_0202DFF0->unk28 + 0x30, 8);
        } else {
            i = 0;
            if (gUnk_0202DFF0->name[0] == 0x89) {
                do
                    i++;
                while (i < 16 && gUnk_0202DFF0->name[i] == 0x89);
            }
            if ((u16)(i - 1) < 15) {
                for (j = 0, k = i; j < 16 - i; j++, k++)
                    gUnk_0202DFF0->name[j] = gUnk_0202DFF0->name[k];
                for (; j < 16; j++)
                    gUnk_0202DFF0->name[j] |= 0xFF;
            }
        }
        gUnk_0202DFF0->len = sub_080146E0(gUnk_0202DFF0->name);
        if (memcmp(gUnk_08613A46, gUnk_0202DFF0->name, 9) == 0) {
            gUnk_0202DFF0->secret = 1;
            sub_08015D50(gUnk_0202DFF0->msg, gUnk_0202DFF0->unk32, gUnk_0874A6CC, 0x47,
                         3, -1, 2, 0, 0, 0x100, 0, 0, 8);
            sub_0801670C();
            gUnk_0202DFF0->state = NAME_SECRET;
        } else if (memcmp(gUnk_08613A46 + 9, gUnk_0202DFF0->name, 9) == 0) {
            gUnk_0202DFF0->secret = 2;
            sub_08015D50(gUnk_0202DFF0->msg, gUnk_0202DFF0->unk32, gUnk_0874A6CC, 0x48,
                         3, -1, 2, 0, 0, 0x100, 0, 0, 8);
            sub_0801670C();
            gUnk_0202DFF0->state = NAME_SECRET;
        } else {
            sub_080197D4(gUnk_0202DFF0->name, 0, 0);
            sub_08015D50(gUnk_0202DFF0->msg, gUnk_0202DFF0->unk32, gUnk_0876379A, 0xA,
                         3, -1, 2, 0, 0, 0x100, 0, 0, 8);
            sub_0801670C();
            gUnk_0202DFF0->state = NAME_CONFIRM;
        }
        break;
    case NAME_SECRET:
        if (gUnk_0202DFF0->timer != 0)
            gUnk_0202DFF0->timer--;
        if (!sub_0801670C())
            break;
        if (!sub_080197C0()) {
            if (gUnk_0202DFF0->secret == 1) {
                gUnk_03000820.repeatMask = gUnk_0202DFF0->repeatMask;
                return 3;
            }
            if (gUnk_0202DFF0->secret == 2) {
                gUnk_03000820.repeatMask = gUnk_0202DFF0->repeatMask;
                return 4;
            }
        }
        sub_08147A00();
        gUnk_0202DFF0->state = gUnk_0202DFF0->next;
        break;
    case NAME_CONFIRM:
        if (gUnk_0202DFF0->timer != 0)
            gUnk_0202DFF0->timer--;
        if (!sub_0801670C())
            break;
        if (sub_080197C0()) {
            sub_08147A00();
            gUnk_0202DFF0->state = gUnk_0202DFF0->next;
            break;
        }
    case NAME_10:
        gUnk_0202DFF0->timer = 0;
        gUnk_03000820.repeatMask = gUnk_0202DFF0->repeatMask;
        CpuSet(gUnk_0202DFF0->name, gUnk_0202DFF0->unk28 + 0x30, 8);
    case NAME_13:
        return 2;
    case NAME_11:
        return 1;
    }
    sub_08147058(cursor);
    return 0;
}
