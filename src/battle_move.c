#include "global.h"
#include "battle.h"

// The move phase: the active unit picks a tile in its range and walks there, then the battle goes
// on to PHASE_ACT. The player picks the tile with the cursor; the AI already chose it
// (aiDestX/aiDestY) and only shows the choice.

enum {
    MOVE_INIT_UI,           // guess
    MOVE_INIT,              // start the path search from the unit
    MOVE_FIND_PATHS,        // path search, pathBudget nodes per frame
    MOVE_SHOW_RANGE,
    MOVE_CLEAR_TILES,       // guess
    MOVE_SHOW_DEST,
    MOVE_FOCUS_DEST,
    MOVE_STATUS_WINDOW,     // guess: the window SELECT opens
    MOVE_HELP_DELAY,        // "Choose where you want to move this character."
    MOVE_HELP_WAIT,
    MOVE_SELECT_START,
    MOVE_SELECT,            // the player moves the cursor; the AI jumps to its choice
    MOVE_VIEW_START,        // guess: see BATTLE_VIEW_RANGE
    MOVE_VIEW,
    MOVE_UI_OPEN,           // guess: opens something for the unit; not the game's "panel"
    MOVE_UI_OPEN_WAIT,
    MOVE_UI_CLOSE_WAIT,
    MOVE_CANCEL,
    MOVE_EXIT,
    MOVE_CONFIRM,
    MOVE_WALK_START,
    MOVE_WALK,
    MOVE_WALK_END,
    MOVE_DONE,              // on to PHASE_ACT
    MOVE_UNDO,              // back to where the unit was
    MOVE_ERROR_WAIT,        // "Can't move to that spot. Select a panel within range."
    MOVE_CAMERA_WAIT,
    MOVE_WARP_START,        // guess: BATTLE_NO_PATHS units warp instead of walking
    MOVE_WARP_OUT,
    MOVE_WARP_IN_START,
    MOVE_WARP_IN,
};

#define SE_CONFIRM 0xAD
#define SE_CANCEL  0xB0

// Speeds and delays, in frames: (QOL ? mod : original).
#define PATH_NODES_PER_FRAME    (QOL ? 255 : 4) // path search speed
#define AI_RANGE_DELAY          (QOL ? 0 : 16)  // AI: how long its move range shows
#define AI_DEST_DELAY           (QOL ? 0 : 16)  // AI: how long the cursor stays on its destination
#define WALK_SPEED              (QOL ? 4 : 2)   // position units per frame (32 per tile)
#define HELP_DELAY              4               // before the help window opens

extern u8 gUnk_02000000[];
extern u8 *gUnk_0202A5A8;           // message window; the type matters for matching
extern u8 gUnk_0202A5AC;
extern const u8 gUnk_0875C8DE[];
extern const u8 gUnk_0875D99A[];

void sub_08015D50(void *, u32, const u8 *, u32, u32, s32, u32, u32, u32, u32, u32, u32, u32);
u16 sub_0801670C(void);
void sub_08024CA0(void);
void sub_0802885C(u16 x, u16 y);
void sub_080288B8(u16 x, u16 y);
void sub_0804BFF8(void *, struct UnitInfo *, void *reach, u8 *moveRange);
bool8 sub_0804DB44(s8 x, s8 y, u8 *moveRange);
void *sub_0804DB8C(void *, struct UnitInfo *);
u16 sub_0804DCA0(u8 x, u8 y, void *reach, u8 *path);
u8 sub_08052024(void *search, u8 budget);
void *sub_08053A84(u8 x, u8 y, void *, struct UnitInfo *, void *reach, void *work, u32);
u8 sub_08058D5C(u16 pos);
u16 sub_08058D6C(u16 tile);
void sub_0805AA7C(struct BattleUnit *);
void sub_0805B0F8(u32, struct BattleUnit *);
void sub_0805B380(void);
void sub_0805DDB4(struct BattleUnit *, u32);
void sub_080657B4(struct Battle *, u32);
void sub_08065824(struct Battle *);
u8 sub_08065888(struct Battle *, u32);
bool32 sub_08065950(struct BattleUnit *, u8 x, u8 y);
void sub_08065A04(struct BattleUnit *);
void sub_0806D758(void);
void sub_0806F0C8(void);
void sub_0806F3DC(void);
void sub_0806F5B4(void *, struct UnitInfo *);
void sub_0806FDE4(void);
void *sub_080752BC(struct BattleUnit *);
bool32 sub_08075508(void *);
void sub_08075B6C(u32);
void sub_08075B90(u32);
void sub_08075BB8(void);
void sub_08075C5C(void);
void sub_08075D7C(void *, u8 x, u8 y);
void sub_08075DD8(void);
void sub_08075DEC(u32);
void sub_08075E08(u32);
void sub_08075E24(void);
u8 sub_08075E84(void);
void sub_08075E9C(void);
void sub_08076260(void);
void sub_080763C4(void *);
void sub_0807628C(void);
bool32 sub_080A10C4(void);
bool32 sub_080A3B78(void *);
void sub_080A3B84(void *);
void *sub_080A3B9C(struct BattleUnit *, u32);
void *sub_080A3BCC(struct BattleUnit *);
u8 sub_08142F50(u32);

// Opens a message window with text at (x, y). Inline in the original too: matching needs it.
static inline void ShowMessage(const u8 *text, u32 x, u32 y)
{
    sub_08015D50(gUnk_0202A5A8, 0x22F, text, x, y, -1, 2, 1, 0, 0x100, 0x100, 0, 9);
}

// Same: a plain store loads the address before the value.
static inline void SetCursorMode(u8 mode)
{
    gUnk_03000FA0.mode = mode;
}

u32 BattlePhaseMove(struct Battle *b)
{
    s32 x, y;
    s32 i, j;

    switch (b->state) {
    case MOVE_INIT_UI:
        sub_08076260();
        sub_08075DEC(0x1000);
        sub_08075DEC(0x120);
        sub_08075E9C();
    case MOVE_INIT:
        if (b->path == NULL)
            b->path = BattleAlloc(0x80);
        if (b->moveRange == NULL)
            b->moveRange = BattleAlloc(0x80);
        b->reach = sub_0804DB8C(b->unit->field0, b->unit->info);
        if (b->reach == NULL) {
            b->flags |= BATTLE_NO_PATHS;
        } else {
            b->flags &= ~BATTLE_NO_PATHS;
            if (b->pathWork == NULL)
                b->pathWork = BattleAlloc(0x1800);
            b->pathSearch = sub_08053A84(b->unit->info->x, b->unit->info->y, b->unit->field0,
                                            b->unit->info, b->reach, b->pathWork, 0x200);
        }
        b->pathBudget = PATH_NODES_PER_FRAME;
        b->state = MOVE_FIND_PATHS;
        if (b->flags & BATTLE_VIEW_RANGE) {
            PUSH_STATE(b, MOVE_VIEW_START);
        } else if (!(b->flags & BATTLE_AI)) {
            PUSH_STATE(b, MOVE_UI_OPEN);
        } else {
            PUSH_STATE(b, MOVE_SELECT_START);
            gUnk_03000FA0.mode = 0;
            b->pathBudget = PATH_NODES_PER_FRAME;
        }
        PUSH_STATE(b, MOVE_SHOW_RANGE);
        gUnk_03000FA0.mode = 0;
        break;
    case MOVE_FIND_PATHS:
        if (!(b->flags & BATTLE_NO_PATHS)) {
            if (sub_08052024(b->pathSearch, b->pathBudget) == TRUE)
                break;
            if (b->pathWork != NULL)
                BattleFree(b->pathWork);
            b->pathWork = NULL;
        }
        POP_STATE(b);
        break;
    case MOVE_SHOW_RANGE:
        sub_0805B0F8(0, b->unit);
        if (b->flags & BATTLE_NO_PATHS) {
            sub_08065A04(b->unit);
            if (b->flags & BATTLE_AI) {
                PlaySE(SE_CONFIRM);
                PUSH_PHASE(b, b->phase);
                PUSH_PHASE(b, b->phase);
                PUSH_STATE(b, MOVE_CLEAR_TILES);
                b->timer = AI_RANGE_DELAY;
                b->state = MOVE_CAMERA_WAIT;
                b->phase = PHASE_WAIT;
                break;
            }
            POP_STATE(b);
            break;
        }
        sub_0804BFF8(b->unit->field0, b->unit->info, b->reach, b->moveRange);
        sub_080657B4(b, 0);
        for (y = 0; y < 32; y++) {
            for (x = 0; x < 32; x++) {
                if (!sub_0804DB44(x, y, b->moveRange))
                    sub_080288B8(x, y);
                else
                    sub_0802885C(x, y);
            }
        }
        sub_0805B380();
        if (b->flags & BATTLE_AI) {
            PUSH_PHASE(b, b->phase);
            PlaySE(SE_CONFIRM);
            PUSH_PHASE(b, b->phase);
            PUSH_STATE(b, MOVE_CLEAR_TILES);
            b->timer = AI_RANGE_DELAY;
            b->state = MOVE_CAMERA_WAIT;
            b->phase = PHASE_WAIT;
            break;
        }
        POP_STATE(b);
        break;
    case MOVE_CLEAR_TILES:
        sub_08024CA0();
        POP_PHASE(b);
        POP_STATE(b);
        break;
    case MOVE_SHOW_DEST:
        for (j = 0; j < 32; j++) {
            for (i = 0; i < 32; i++) {
                if (b->destX == i && b->destY == j)
                    sub_0802885C(i, j);
                else
                    sub_080288B8(i, j);
            }
        }
        sub_0805B380();
        POP_PHASE(b);
        POP_STATE(b);
        PlaySE(SE_CONFIRM);
        break;
    case MOVE_UI_OPEN:
        sub_0806F5B4(b->unit->field0, b->unit->info);
        if (sub_08075E84() == TRUE) {
            b->state = MOVE_UI_OPEN_WAIT;
            break;
        }
        sub_08075DEC(0x10);
        sub_08075DEC(0x120);
        sub_08075E24();
        sub_0806FDE4();
        b->state = MOVE_UI_OPEN_WAIT;
        break;
    case MOVE_UI_OPEN_WAIT:
        if (!sub_08075E84())
            break;
        b->state = MOVE_SELECT_START;
        break;
    case MOVE_UI_CLOSE_WAIT:
        if (!sub_08075E84())
            break;
        POP_STATE(b);
        break;
    case MOVE_CANCEL:
        sub_0806F3DC();
        PUSH_STATE(b, MOVE_EXIT);
        b->state = MOVE_UI_CLOSE_WAIT;
        break;
    case MOVE_EXIT:
        sub_080657B4(b, 1);
        sub_08075C5C();
        sub_08024CA0();
        sub_0807628C();
        sub_0806FDE4();
        POP_PHASE(b);
        POP_STATE(b);
        break;
    case MOVE_SELECT_START:
        if (b->flags & BATTLE_AI) {
            gUnk_03000FA0.mode = 0;
            b->state = MOVE_SELECT;
            break;
        }
        sub_08075DEC(0x10);
        sub_08075E08(0x120);
        sub_08075E24();
        if (gUnk_02000000[0x132F] & 1) {
            b->timer = HELP_DELAY;
            b->state = MOVE_HELP_DELAY;
            gUnk_03000FA0.mode = 0;
        } else {
            gUnk_03000FA0.mode = 1;
            b->state = MOVE_SELECT;
        }
        sub_08075DD8();
        sub_08075E08(0x1000);
        break;
    case MOVE_STATUS_WINDOW:
        if (sub_08075508(b->window))
            break;
        sub_080763C4(b->window);
        b->window = NULL;
        POP_PHASE(b);
        POP_STATE(b);
        break;
    case MOVE_HELP_DELAY:
        if (b->timer != 0) {
            b->timer--;
            break;
        }
        sub_08076260();
        sub_08075DEC(0x1000);
        gUnk_0202A5AC = gUnk_03000FA0.mode;
        gUnk_03000FA0.mode = 0;
        gUnk_0202A5A8 = BattleAlloc(0x1C44);
        ShowMessage(gUnk_0875D99A, 0x22, 2);
        b->state = MOVE_HELP_WAIT;
        break;
    case MOVE_HELP_WAIT:
        if (sub_0801670C() != 0xFF)
            break;
        if (gUnk_0202A5A8 != NULL) {
            BattleFree(gUnk_0202A5A8);
            gUnk_0202A5A8 = NULL;
            sub_0807628C();
        }
        SetCursorMode(1);
        b->state = MOVE_SELECT;
        break;
    case MOVE_SELECT:
        if (b->flags & BATTLE_AI) {
            gUnk_03000FA0.field37 = 1;
            gUnk_03000FA0.mode = 0;
            b->destX = b->aiDestX;
            b->destY = b->aiDestY;
            // Run backwards: show the destination, wait, clear the tiles and walk.
            PUSH_PHASE(b, b->phase);
            PUSH_STATE(b, MOVE_CONFIRM);
            PUSH_PHASE(b, b->phase);
            PUSH_STATE(b, MOVE_CLEAR_TILES);
            PUSH_PHASE(b, b->phase);
            PUSH_STATE(b, MOVE_CAMERA_WAIT);
            b->timer = AI_DEST_DELAY;
            PUSH_PHASE(b, PHASE_WAIT);
            PUSH_STATE(b, MOVE_CAMERA_WAIT);
            PUSH_PHASE(b, b->phase);
            PUSH_STATE(b, MOVE_FOCUS_DEST);
            b->state = MOVE_SHOW_DEST;
            break;
        }
        if (gUnk_03000FA0.newKeys & SELECT_BUTTON) {
            b->state = MOVE_STATUS_WINDOW;
            b->window = sub_080752BC(b->unit);
            PUSH_PHASE(b, b->phase);
            PUSH_STATE(b, MOVE_SELECT);
            break;
        }
        if (gUnk_03000FA0.newKeys & B_BUTTON) {
            PlaySE(SE_CANCEL);
            sub_08024CA0();
            b->state = MOVE_CANCEL;
            gUnk_03000FA0.field37 = 1;
            sub_08075B90(1);
            sub_08075B6C(0);
            sub_08075BB8();
            break;
        }
        if (gUnk_03000FA0.newKeys & A_BUTTON) {
            sub_08075C5C();
            if (!(b->flags & BATTLE_NO_PATHS)) {
                if (!sub_0804DB44(gUnk_03000FA0.x, gUnk_03000FA0.y, b->moveRange)) {
                    sub_08076260();
                    sub_08075DEC(0x1000);
                    gUnk_0202A5AC = gUnk_03000FA0.mode;
                    gUnk_03000FA0.mode = 0;
                    gUnk_0202A5A8 = BattleAlloc(0x1C44);
                    ShowMessage(gUnk_0875C8DE, 0x1D, 4);
                    b->state = MOVE_ERROR_WAIT;
                    PUSH_STATE(b, MOVE_SELECT_START);
                    break;
                }
            } else {
                if (!sub_08065950(b->unit, gUnk_03000FA0.x, gUnk_03000FA0.y)) {
                    sub_08076260();
                    sub_08075DEC(0x1000);
                    gUnk_0202A5AC = gUnk_03000FA0.mode;
                    gUnk_03000FA0.mode = 0;
                    gUnk_0202A5A8 = BattleAlloc(0x1C44);
                    ShowMessage(gUnk_0875C8DE, 0x1D, 4);
                    b->state = MOVE_ERROR_WAIT;
                    PUSH_STATE(b, MOVE_SELECT_START);
                    break;
                }
            }
            PlaySE(SE_CONFIRM);
            sub_08024CA0();
            gUnk_03000FA0.field37 = 1; // set twice in the original
            gUnk_03000FA0.mode = 0;
            b->destX = gUnk_03000FA0.x;
            b->destY = gUnk_03000FA0.y;
            b->state = MOVE_CONFIRM;
            gUnk_03000FA0.field37 = 1;
        } else {
            sub_08075D7C(b->unit->field0, gUnk_03000FA0.x, gUnk_03000FA0.y);
        }
        break;
    case MOVE_FOCUS_DEST:
        gUnk_03000FA0.x = b->destX;
        gUnk_03000FA0.y = b->destY;
        gUnk_03000FA0.mode = 4;
        b->state = MOVE_CAMERA_WAIT;
        break;
    case MOVE_VIEW_START:
        sub_080657B4(b, 1);
        gUnk_03000FA0.field51 = 0;
        gUnk_03000FA0.mode = 6;
        b->state = MOVE_VIEW;
        sub_08075DD8();
        sub_08075D7C(NULL, b->destX, b->destY);
        sub_08075E08(0x1000);
        break;
    case MOVE_VIEW:
        if (!(gUnk_03000FA0.newKeys & B_BUTTON) && !sub_080A10C4())
            break;
        PlaySE(SE_CANCEL);
        b->state = MOVE_EXIT;
        gUnk_03000FA0.field37 = 1;
        if (sub_08142F50(3))
            gUnk_03000FA0.field51 = 1;
        else
            gUnk_03000FA0.field51 = 0;
        sub_08075B90(1);
        sub_08075B6C(0);
        sub_08075BB8();
        break;
    case MOVE_CONFIRM:
        sub_08075DEC(0x1000);
        if (!(b->flags & BATTLE_NO_PATHS)) {
            sub_08065824(b);
            PUSH_STATE(b, MOVE_WALK_START);
            b->pathBudget = PATH_NODES_PER_FRAME;
            b->state = MOVE_FIND_PATHS;
        } else {
            gUnk_03000FA0.x = b->unit->info->x;
            gUnk_03000FA0.y = b->unit->info->y;
            gUnk_03000FA0.mode = 4;
            PUSH_PHASE(b, b->phase);
            PUSH_STATE(b, MOVE_WARP_START);
            b->state = MOVE_CAMERA_WAIT;
        }
        break;
    case MOVE_WALK_START:
    {
        u16 length = sub_0804DCA0(b->destX, b->destY, b->reach, b->path);

        b->unit->path = b->path;
        b->unit->pathStep = 0;
        b->unit->walkSpeed = WALK_SPEED;
        b->unit->pathLength = length;
        sub_080657B4(b, 0);
        b->state = MOVE_WALK;
        break;
    }
    case MOVE_WALK:
        if (sub_08065888(b, 1) == TRUE)
            break;
        if (b->flags & BATTLE_AI) {
            b->state = MOVE_DONE;
            break;
        }
        gUnk_03000FA0.x = sub_08058D5C(b->unit->posX);
        gUnk_03000FA0.y = sub_08058D5C(b->unit->posY);
        gUnk_03000FA0.mode = 4;
        PUSH_PHASE(b, b->phase);
        PUSH_STATE(b, MOVE_WALK_END);
        b->state = MOVE_CAMERA_WAIT;
        break;
    case MOVE_WALK_END:
        b->state = MOVE_DONE;
        break;
    case MOVE_DONE:
        if (b->flags & BATTLE_AI) {
            gUnk_03000FA0.mode = 4;
            b->savedFacing = b->unit->facing;
            PUSH_PHASE(b, PHASE_ACT);
            PUSH_STATE(b, 0);
            b->state = MOVE_CAMERA_WAIT;
        } else {
            gUnk_03000FA0.mode = 4;
            b->savedFacing = b->unit->facing;
            PUSH_PHASE(b, b->phase);
            PUSH_STATE(b, MOVE_UNDO);
            PUSH_PHASE(b, PHASE_ACT);
            PUSH_STATE(b, 0);
            b->state = MOVE_CAMERA_WAIT;
        }
        break;
    case MOVE_UNDO:
        b->unit->facing = b->unit->info->facing;
        b->unit->field49 = 0xFF;
        b->unit->posX = sub_08058D6C(b->unit->info->x);
        b->unit->posY = sub_08058D6C(b->unit->info->y);
        sub_0805AA7C(b->unit);
        sub_0805DDB4(b->unit, 8);
        sub_0806F0C8();
        gUnk_03000FA0.x = b->unit->info->x;
        gUnk_03000FA0.y = b->unit->info->y;
        PUSH_PHASE(b, b->phase);
        sub_080657B4(b, 1);
        PUSH_STATE(b, MOVE_INIT);
        sub_08075E08(0x400);
        gUnk_03000FA0.mode = 4;
        b->state = MOVE_CAMERA_WAIT;
        break;
    case MOVE_ERROR_WAIT:
        if (sub_0801670C() != 0xFF)
            break;
        if (gUnk_0202A5A8 != NULL) {
            BattleFree(gUnk_0202A5A8);
            gUnk_0202A5A8 = NULL;
            sub_0807628C();
        }
        POP_STATE(b);
        break;
    case MOVE_CAMERA_WAIT:
        if (gUnk_03000FA0.cameraMoving == TRUE)
            break;
        POP_PHASE(b);
        POP_STATE(b);
        gUnk_03000FA0.mode = 0;
        break;
    case MOVE_WARP_START:
        if (b->unit->info->x == b->destX && b->unit->info->y == b->destY) {
            b->state = MOVE_DONE;
            break;
        }
        b->warp = sub_080A3B9C(b->unit, 1);
        b->state = MOVE_WARP_OUT;
        break;
    case MOVE_WARP_OUT:
        if (!sub_080A3B78(b->warp))
            break;
        sub_080A3B84(b->warp);
        b->unit->posX = sub_08058D6C(b->destX);
        b->unit->posY = sub_08058D6C(b->destY);
        gUnk_03000FA0.x = b->destX;
        gUnk_03000FA0.y = b->destY;
        gUnk_03000FA0.mode = 4;
        PUSH_PHASE(b, b->phase);
        PUSH_STATE(b, MOVE_WARP_IN_START);
        b->state = MOVE_CAMERA_WAIT;
        break;
    case MOVE_WARP_IN_START:
        b->savedX = b->unit->info->x;
        b->savedY = b->unit->info->y;
        sub_0805AA7C(b->unit);
        if (!(b->flags & BATTLE_AI))
            sub_0806F0C8();
        b->unit->field78 |= 0x8000;
        b->warp = sub_080A3BCC(b->unit);
        b->state = MOVE_WARP_IN;
        break;
    case MOVE_WARP_IN:
        b->unit->field78 |= 0x8000;
        if (!sub_080A3B78(b->warp))
            break;
        sub_080A3B84(b->warp);
        sub_0806D758();
        b->unit->info->x = b->savedX;
        b->unit->info->y = b->savedY;
        b->state = MOVE_DONE;
        break;
    }
    return 0;
}
