#include "global.h"
#include "gba/m4a.h"

#define INPUT_HALF_RATE        0x01 // only publish presses every other frame
#define INPUT_REPEAT           0x02 // keys in repeatMask auto-repeat while held
#define INPUT_REPEAT_IS_NEW    0x04 // a repeat also counts as a new press
#define INPUT_HALF_RATE_PHASE  0x08 // set on the frames that publish in half-rate mode
#define INPUT_REPEAT_WAIT      0x40 // waiting repeatDelay before the first repeat
#define INPUT_REPEATING        0x80 // repeating every repeatInterval frames

#define SOFT_RESET_KEYS (A_BUTTON | B_BUTTON | SELECT_BUTTON | START_BUTTON)

struct Input {
    u16 held;
    u16 newPressed;     // pressed this frame and not the previous one
    u16 pressed;        // newPressed outside repeatMask, plus repeats of keys in it
    u8 repeatKey;       // 1 + bit index of the key that just repeated, 0 if none
    u8 flags;
    u16 repeatMask;     // 0xF0: the d-pad
    u8 repeatDelay;     // frames from the first press to the second (15)
    u8 repeatInterval;  // frames between later repeats (cursor speed option)
    u16 prevKeys;
    u8 repeatTimer;
};

extern u16 gUnk_030010D4;
extern u16 gUnk_03001064;

u8 GetRepeatKey(u16 keys, u16 mask);

void InputUpdate(struct Input *input, u16 keys)
{

    if (gUnk_030010D4 > 0xFEFF)
        return;

    if (keys == SOFT_RESET_KEYS) {
        CpuFill16(0, (void *)PLTT, 0x400);
        REG_DISPCNT = DISPCNT_FORCED_BLANK;
        m4aSoundVSyncOff();
        m4aMPlayAllStop();
        gUnk_03001064 = 0;
        REG_IE = 0;
        REG_IME = 0;
        REG_DISPSTAT = 0;
        ((void (*)(void))0x08000000)(); // jump to the ROM entry point
    }

    if (input->flags & INPUT_HALF_RATE) {
        if (input->flags & INPUT_HALF_RATE_PHASE) {
            input->newPressed = keys & ~input->held;
            input->pressed = input->newPressed & ~input->repeatMask;
            input->held = keys;
            input->flags ^= INPUT_HALF_RATE_PHASE;
        } else {
            // Accumulate until the next publishing frame.
            input->newPressed = (keys & ~input->held) | input->newPressed;
            input->pressed = (input->newPressed & ~input->repeatMask) | input->pressed;
            input->held = keys | input->held;
        }
    } else {
        input->newPressed = keys & ~input->held;
        input->pressed = input->newPressed & ~input->repeatMask;
        input->held = keys;
    }

    if ((input->flags & INPUT_REPEAT) && input->prevKeys == keys) {
        if (!(input->flags & (INPUT_REPEAT_WAIT | INPUT_REPEATING))) {
            input->repeatTimer = input->repeatDelay;
            input->flags |= INPUT_REPEAT_WAIT;
            goto fire;
        }
        input->repeatKey = 0;
        if (input->flags & INPUT_REPEAT_WAIT) {
            if (input->repeatTimer == 0) {
                input->repeatTimer = 0;
                input->flags = (input->flags ^ INPUT_REPEAT_WAIT) | INPUT_REPEATING;
            } else {
                input->repeatTimer--;
            }
        } else if (input->flags & INPUT_REPEATING) {
            if (input->repeatTimer != 0) {
                input->repeatTimer--;
            } else {
                input->repeatTimer = input->repeatInterval;
            fire:
                input->pressed = (keys & input->repeatMask) | input->pressed;
                input->repeatKey = GetRepeatKey(keys, input->repeatMask);
                if (input->flags & INPUT_REPEAT_IS_NEW)
                    input->newPressed = keys & ~input->held;
            }
        }
    } else {
        // Keys changed: restart the repeat.
        input->flags &= 0xF;
        input->repeatTimer = 0;
        input->repeatKey = 0;
    }
    input->prevKeys = keys;
}

u8 GetRepeatKey(u16 keys, u16 mask)
{
    u16 bits = keys & mask;
    u16 bit = 1;
    u16 i;

    for (i = 0; i < 10; i++) {
        if (bit & bits)
            return i + 1;
        bit <<= 1;
    }
    return 0;
}
