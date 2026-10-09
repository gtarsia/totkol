#ifndef GUARD_BATTLE_H
#define GUARD_BATTLE_H

#include "global.h"

// Character data of a unit.
struct UnitInfo {
    u8 filler0[0x14];
    u8 x;               // tile
    u8 y;
    u8 facing;
};

// A unit on the battle map (array at *gUnk_0202A238, 0xD0 bytes each).
struct BattleUnit {
    void *field0;
    struct UnitInfo *info;
    u8 filler8[4];
    u8 *path;           // directions to walk
    u16 posX;           // map position: 32 per tile
    u16 posZ;
    u16 posY;
    u8 filler16[0x20 - 0x16];
    u16 pathStep;
    u16 pathLength;
    u8 filler24[0x46 - 0x24];
    u16 walkSpeed;      // position units per frame
    u8 facing;
    u8 field49;
    u8 filler4A[0x78 - 0x4A];
    u16 field78;
};

// Battle phases (Battle.phase), each a state machine over Battle.state.
#define PHASE_WAIT  1
#define PHASE_MOVE  6
#define PHASE_ACT   7

// Battle.flags
#define BATTLE_AI           0x01 // the active unit is controlled by the game
#define BATTLE_VIEW_RANGE   0x08 // only show the move range
#define BATTLE_NO_PATHS     0x20 // no path search: the unit moves without walking

// The battle state (*gUnk_0202A88C).
struct Battle {
    u8 filler0[0x40];
    struct BattleUnit *unit;    // the unit taking its turn
    u8 filler44[0x148 - 0x44];
    u16 destX;                  // tile the unit moves to
    u8 filler14A[2];
    u16 destY;
    u8 filler14E[0x180 - 0x14E];
    u8 *moveRange;              // bitmap of the tiles the unit can reach, 32x32
    u8 pathBudget;              // path search nodes per frame
    u8 filler185[3];
    void *pathWork;
    void *reach;
    void *pathSearch;
    void *warp;                 // warp animation
    u8 savedX;
    u8 savedY;
    u8 filler19A[2];
    u8 *path;
    u8 filler1A0[0x1AC - 0x1A0];
    u8 aiDestX;                 // tile chosen by the AI
    u8 aiDestY;
    u8 filler1AE[0x1CC - 0x1AE];
    void *window;
    u8 filler1D0[0x267 - 0x1D0];
    u8 savedFacing;
    u8 filler268[0x26C - 0x268];
    u8 phase;
    u8 phaseSp;
    u8 phaseStack[16];
    u8 state;
    u8 stateSp;
    u8 stateStack[16];
    u16 timer;                  // frames left in PHASE_WAIT's wait state
    u8 filler292[0x2B8 - 0x292];
    u16 flags;
};

// Calls a state: it returns to the current phase and STATE when it pops both stacks.
#define PUSH_PHASE(b, p) ((b)->phaseStack[(b)->phaseSp++] = (p))
#define PUSH_STATE(b, s) ((b)->stateStack[(b)->stateSp++] = (s))
#define POP_PHASE(b) ((b)->phase = (b)->phaseStack[--(b)->phaseSp])
#define POP_STATE(b) ((b)->state = (b)->stateStack[--(b)->stateSp])

// Map cursor and camera.
struct MapCursor {
    u8 filler0[0x2E];
    u16 newKeys;
    u8 filler30[0x35 - 0x30];
    u8 mode;
    u8 filler36;
    u8 field37;
    u8 filler38[0x3C - 0x38];
    u16 x;
    u8 filler3E[2];
    u16 y;
    u8 filler42[0x51 - 0x42];
    u8 field51;
    u8 filler52[0x95 - 0x52];
    bool8 cameraMoving;
};

extern struct MapCursor gUnk_03000FA0;

void *BattleAlloc(u32 size);
void BattleFree(void *ptr);
void PlaySE(u16 song);

#endif // GUARD_BATTLE_H
