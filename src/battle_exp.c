#include "global.h"
#include "battle.h"

// After an action: each unit that earned EXP gets "N EXP earned." and, if it levels up, the
// LEVEL UP popup. Called every frame until it returns 0.
// QOL: the EXP pops up above the unit as a number, like damage, instead of the message.

enum {
    EXP_NEXT,           // the next unit; the camera goes to it
    EXP_MSG_OPEN,       // "N EXP earned."
    EXP_MSG_WAIT,       // until A or 128 frames
    EXP_MSG_CLOSE,
    EXP_ADD,            // adds the EXP; on a level up, loads the LEVEL UP popup
    EXP_LEVEL_UP,
    EXP_LEVEL_UP_WAIT,
    EXP_7,
    EXP_8,
    EXP_9,
    EXP_10,
    EXP_11,
    EXP_12,
    EXP_13,
    EXP_CAMERA_WAIT,
    EXP_15,
};

struct ExpWork {
    u8 state;
    u8 index;
    u8 exp[0x12];                       // per unit
    struct BattleUnit *units[16];
    u8 stateStack[8];
    u8 stateSp;
    u8 filler5D[3];
    void *msg;
    u8 timer;
    u8 filler65[3];
    void *work;
    u8 field6C;
    u8 field6D;
};

#define PUSH(w, s) ((w)->stateStack[(w)->stateSp++] = (s))
#define POP(w) ((w)->state = (w)->stateStack[--(w)->stateSp])

extern u8 gUnk_02000000[];
extern u8 *gUnk_0202AED0[];  // loaded gfx, uploaded to VRAM later
extern const u8 gUnk_0875EC2E[];

void memzero(void *, u32);
void sub_08017B24(void *, u32, const u8 *, u32, s32, u32, u32, u32, void *, u32, u32);
void sub_080180B0(void);
void *sub_0801C184(u32);
u32 sub_0805E93C(struct BattleUnit *, u32);
void sub_0805DDB4(struct BattleUnit *, u32);
void sub_0806C220(u32);
u32 sub_0806BC68(void);
u32 sub_0806D918(struct BattleUnit *);
void sub_08073534(u32);
void sub_08075F24(void);
void sub_08075FC4(void);
u32 sub_080760B4(void);
u8 *sub_08076158(struct BattleUnit *, u16, u8, u8);
void sub_080761B4(struct BattleUnit *, u32);
void sub_08076208(void);
u32 sub_08076240(void);
u32 sub_0808AF8C(void *);
u32 sub_0808B1A4(void *);
void sub_080A2808(struct BattleUnit *);
u32 sub_08140D64(void *, struct UnitInfo *, u8);
u8 sub_08142F50(u32);
void sub_08142F7C(u32, u32);

u32 sub_0808B394(struct ExpWork *w)
{
    struct BattleUnit *unit;

    switch (w->state) {
    case EXP_NEXT:
        unit = w->units[w->index];
        if (unit == NULL)
            return 0;
        if (!(sub_0806D918(unit) & 1))
            goto next;
        if (*(u16 *)((u8 *)unit->field0 + 0x40) == 0)
            goto next;
        // QOL: only the player's units, not guests or enemies.
        if ((gUnk_02000000[0x132F] & 8) && w->exp[w->index] != 0
         && !(QOL && (unit->info->flags & (UNIT_GUEST | UNIT_ENEMY)))) {
            gUnk_03000FA0.x = unit->info->x;
            gUnk_03000FA0.y = unit->info->y;
            gUnk_03000FA0.mode = 4;
            PUSH(w, EXP_ADD);
            PUSH(w, EXP_MSG_OPEN);
            w->state = EXP_CAMERA_WAIT;
        } else {
            w->state = EXP_ADD;
        }
        break;
    case EXP_MSG_OPEN:
        if (QOL) {
            // Loads the damage number graphics, gold instead of blue: their colors 8-11
            // become 4-7, the browns, orange and yellow of OBJ palette 0.
            u8 *t;
            s32 i;
            sub_08075F24();
            sub_08073534(0);
            t = gUnk_0202AED0[0];
            for (i = 0; i < 0x180; i++) {
                u32 m = t[i] & 0x88;
                t[i] ^= m | m >> 1;
            }
            w->state = EXP_MSG_WAIT;
            break;
        }
        w->msg = BattleAlloc(0x1C44);
        memzero(w->msg, 0x1C44);
        w->timer = 0x80;
        sub_08017B24(w->msg, 0x22F, gUnk_0875EC2E, 0x26, -1, 1, 0, 0x20,
                     sub_0801C184(w->exp[w->index]), 0, 0);
        w->state = EXP_MSG_WAIT;
        break;
    case EXP_MSG_WAIT:
        if (QOL) {
            if (!sub_08076240())
                break;
            sub_08076208();
            sub_08076158(w->units[w->index], w->exp[w->index], 0x80, 1);
            w->state = EXP_MSG_CLOSE;
            break;
        }
        if (!(gUnk_03000FA0.newKeys & 1) && --w->timer != 0)
            break;
        sub_080180B0();
        w->state = EXP_MSG_CLOSE;
        break;
    case EXP_MSG_CLOSE:
        if (QOL) {
            if (sub_080760B4())
                break;
            sub_08075FC4();
            POP(w);
            break;
        }
        BattleFree(w->msg);
        POP(w);
        break;
    case EXP_ADD:
        unit = w->units[w->index];
        {
            u32 up = sub_08140D64(unit->field0, unit->info, w->exp[w->index]);
            if (up == 0) {
                w->index++;
                w->state = up;
                break;
            }
        }
        sub_080A2808(unit);
        sub_08075F24();
        sub_08073534(0x1A);
        gUnk_03000FA0.x = unit->info->x;
        gUnk_03000FA0.y = unit->info->y;
        gUnk_03000FA0.mode = 4;
        PUSH(w, EXP_LEVEL_UP);
        w->state = EXP_CAMERA_WAIT;
        break;
    case EXP_LEVEL_UP:
        if (!sub_08076240())
            break;
        sub_08076208();
        unit = w->units[w->index];
        sub_080761B4(unit, 0x1A);
        w->field6C = 0;
        w->field6D = 0;
        w->state = EXP_LEVEL_UP_WAIT;
        unit->field78 |= 0x20;
        sub_0805E93C(unit, 1);
        PlaySE(0xC6);
        break;
    case EXP_LEVEL_UP_WAIT:
        unit = w->units[w->index];
        if (sub_0805E93C(unit, 0))
            break;
        if (sub_080760B4())
            break;
        unit->facing = unit->info->facing;
        sub_08075FC4();
        unit->field78 &= ~0x20;
        sub_0805DDB4(unit, 8);
        w->state = EXP_7;
        break;
    case EXP_7:
        w->state = EXP_8;
        break;
    case EXP_8:
        w->state = EXP_9;
        break;
    case EXP_9:
        if (!sub_08142F50(0x46)) {
            sub_08142F7C(0x46, 1);
            sub_0806C220(0x17);
            w->state = EXP_15;
            PUSH(w, EXP_10);
            break;
        }
        w->state = EXP_10;
        break;
    case EXP_10:
        {
            struct BattleUnit *u = w->units[w->index];
            void *p = BattleAlloc(0xC);
            memzero(p, 0xC);
            *(struct BattleUnit **)p = u;
            w->work = p;
        }
        w->state = EXP_11;
        break;
    case EXP_11:
        if (sub_0808B1A4(w->work))
            break;
        BattleFree(w->work);
        w->state = EXP_12;
    case EXP_12:
        {
            struct BattleUnit *u = w->units[w->index];
            void *p = BattleAlloc(0xC);
            memzero(p, 0xC);
            *(struct BattleUnit **)p = u;
            w->work = p;
        }
        w->state = EXP_13;
        break;
    case EXP_13:
        {
            u32 busy = sub_0808AF8C(w->work);
            if (busy)
                break;
            BattleFree(w->work);
            w->state = busy;
        }
    next:
        w->index++;
        break;
    case EXP_CAMERA_WAIT:
        if (gUnk_03000FA0.cameraMoving == 1)
            break;
        gUnk_03000FA0.mode = 0;
        POP(w);
        break;
    case EXP_15:
        if (sub_0806BC68())
            POP(w);
        break;
    }
    return 1;
}
