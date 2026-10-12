#include "global.h"
#include "battle.h"

extern void *gUnk_0202A5A8;  // the tip message
extern u8 gUnk_0202A5AC;     // the cursor mode, restored when it closes
extern const u8 gUnk_0875D99A[];

void sub_08015D50(void *, u32, const u8 *, u16, u32, s32, u32, u32, u32, u32, u32, u32, u32);
void sub_08075DEC(u32);
void sub_08076260(void);

// Shows tip message id in battle, from the navigation messages' bank. Some are one-time tips
// for beginners, shown even with navigation messages off, like 0x17 after the first level up.
void sub_0806C220(u32 id)
{
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
