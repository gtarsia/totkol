#ifndef GUARD_MESSAGE_H
#define GUARD_MESSAGE_H

#include "global.h"

// The message system: the text printer (control codes from 0x80) and its windows.

// A queued copy to VRAM, done in VBlank; see sub_08000BB4.
struct VramCopy {
    u8 filler0[0x1C];
};

struct MessageText {
    u8 filler0[5];
    u8 lines;
    u8 filler6;
    u8 unk7_0:3;
    u8 unk7_3:2;
    u8 unk7_5:1;
};

// guess: one context for the message printer, allocated somewhere at boot.
struct MessageCtx {
    u8 filler0[0xA00];
    u16 frame[0x24C];       // the window's tilemap, built here and copied to map0
    u16 line[0x20];         // guess: one row for map1
    u16 *map0;              // guess: the BG map the window is drawn on
    u16 *map1;              // guess: the BG map of the text
    u8 fillerEE0[0xEEA - 0xEE0];
    u8 unkEEA;
    u8 unkEEB;              // 1, 2: sound 0xB6 when it opens; 4: 0xB5
    u8 fillerEEC[2];
    u8 unkEEE;
    u8 unkEEF;
    u8 unkEF0;              // 1 while a message waits for the player; see sub_08019830
    u8 unkEF1;
    u8 unkEF2;
    u8 fadeLength;          // guess
    u8 fadeStep;
    u8 fillerEF5[3];
    u32 unkEF8;             // flags
    u16 unkEFC;
    u16 unkEFE;
    u8 fillerF00[0x10C4 - 0xF00];
    struct VramCopy copies[96];
    u8 filler1B44[0x1B74 - 0x1B44];
    struct MessageText *text;
    u8 filler1B78[4];
    u32 unk1B7C;
    u8 filler1B80[4];
    u16 unk1B84;
    u8 filler1B86[0x1B92 - 0x1B86];
    u8 y;                   // in tiles, frame included
    u8 x;
    u8 width;               // in tiles, without the frame
    u8 filler1B95;
    u8 height;
    u8 filler1B97;
    u8 unk1B98;
    u8 unk1B99;
    u8 filler1B9A[0x1BA1 - 0x1B9A];
    u8 timer;               // counts frames, mod 240
    u8 filler1BA2;
    u8 copyIndex;           // the next entry of copies
    u8 unk1BA4;             // state
    u8 next;                // the state after the open or close animation
    u8 unk1BA6;
    u8 unk1BA7;
    u8 filler1BA8[2];
    u8 animTimer;
    u8 animWidth;           // the width of the window while it opens or closes
    u8 unk1BAC;
    u8 unk1BAD;
    u16 unk1BAE;
    u8 savedWin[4];         // guess: the window before the message: left, right, top, bottom
    u8 savedWinIn[2];
    u16 savedDispcnt;
    u8 unk1BB8;             // guess: 1 if the window uses a hardware window
    u8 unk1BB9;             // 0: WIN0, else WIN1
    u8 savedWinOut;
    u8 unk1BBB;             // guess: 1 writes the registers now, not in VBlank
    u8 filler1BBC[0x1BC1 - 0x1BBC];
    u8 unk1BC1;
    u8 unk1BC2;
    u8 filler1BC3[3];
    u16 unk1BC6;
    u16 repeatTimer;        // guess
    u16 repeatDelay;
    u16 unk1BCC;
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
u16 sub_0801670C(void);

#endif // GUARD_MESSAGE_H
