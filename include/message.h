#ifndef GUARD_MESSAGE_H
#define GUARD_MESSAGE_H

#include "global.h"

// The message system: the text printer (control codes from 0x80) and its windows.

// guess: one context for the message printer, allocated somewhere at boot.
struct MessageCtx {
    u8 filler0[0xEEE];
    u8 unkEEE;
    u8 unkEEF;
    u8 unkEF0;              // 1 while a message waits for the player; see sub_08019830
    u8 unkEF1;
    u8 unkEF2;
    u8 fillerEF3[0xEFC - 0xEF3];
    u16 unkEFC;
    u8 fillerEFE[0x1B7C - 0xEFE];
    u32 unk1B7C;
    u8 filler1B80[0x1BA4 - 0x1B80];
    u8 unk1BA4;
    u8 filler1BA5;
    u8 unk1BA6;
};

struct GlyphInfo {
    u16 unk0;
    u16 width;              // guess: in 8-pixel tiles
};

extern struct MessageCtx *gUnk_0200283C;
extern u8 gUnk_02002800[][16];      // guess: names, inserted by control code 0x80
extern u8 *gUnk_086254D8[];         // strings inserted by control code 0x87
extern const struct GlyphInfo gUnk_0860D088[];
extern const u8 gUnk_0815DE6C[];    // guess: width in pixels of each character

void sub_08013FC4(s32 slot, void *arg);
u8 sub_080143E0(u8 *str, u8 arg);
void sub_0801670C(void);

#endif // GUARD_MESSAGE_H
