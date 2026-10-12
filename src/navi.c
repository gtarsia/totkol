#include "global.h"
#include "battle.h"

extern void *gUnk_0202A5A8;  // the NAVI message
extern u8 gUnk_0202A5AC;     // the cursor mode, restored when it closes
extern const u8 gUnk_0875D99A[];

void sub_08015D50(void *, u32, const u8 *, u16, u32, s32, u32, u32, u32, u32, u32, u32, u32);
void sub_08075DEC(u32);
void sub_08076260(void);

// Shows NAVI message id in battle: tips like the first level up.
// QOL: shows nothing. The NAVI option (bit 0 of gUnk_02000000[0x132F]) stays on,
// since turning it off hangs the name entry of a new game, also in the original.
void sub_0806C220(u32 id)
{
    if (QOL)
        return;
    sub_08076260();
    sub_08075DEC(0x1000);
    gUnk_0202A5AC = gUnk_03000FA0.mode;
    gUnk_03000FA0.mode = 0;
    {
        void *m;
        gUnk_0202A5A8 = m = BattleAlloc(0x1C44);
        sub_08015D50(m, 0x22F, gUnk_0875D99A, id, 2, -1, 2, 1, 0, 0x100, 0x100, 0, 9);
    }
}

#if QOL
u16 sub_0801670C(void);
void sub_0807628C(void);

// sub_0806BC68, but sub_0806C220 shows nothing, so there may be no message to wait for.
u32 NaviWait(void)
{
    if (gUnk_0202A5A8 != NULL) {
        if (sub_0801670C() != 0xFF)
            return 0;
        BattleFree(gUnk_0202A5A8);
        gUnk_0202A5A8 = NULL;
        sub_0807628C();
    }
    return 1;
}
#endif
