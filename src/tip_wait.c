#include "global.h"
#include "battle.h"

extern void *gUnk_0202A5A8;  // the tip message

u16 sub_0801670C(void);
void sub_0807628C(void);

// Waits for the tip message to close; returns 1 when it's gone.
u32 sub_0806BC68(void)
{
    if (sub_0801670C() != 0xFF)
        return 0;
    if (gUnk_0202A5A8 != NULL) {
        BattleFree(gUnk_0202A5A8);
        gUnk_0202A5A8 = NULL;
        sub_0807628C();
    }
    return 1;
}
