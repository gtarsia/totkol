#include "global.h"
#include "battle.h"

// The tile map the move range search walks: a ReachTile per map tile, 32x32, built for a unit's
// movement type. "guess:" as in battle.h.

#define MAP_SIZE 32

// ReachTile.edges, per direction: the unit can't step that way, or (guess) can't pass that way,
// e.g. jumping over the next tile. 0xFF: nobody can stand on the tile.
#define EDGE_STEP_RIGHT 0x01
#define EDGE_STEP_UP    0x02
#define EDGE_STEP_LEFT  0x04
#define EDGE_STEP_DOWN  0x08
#define EDGE_PASS_RIGHT 0x10
#define EDGE_PASS_UP    0x20
#define EDGE_PASS_LEFT  0x40
#define EDGE_PASS_DOWN  0x80

// Movement types (ReachTileHeight's mode).
#define MOVE_FLY 2      // guess: no height limits, ignores terrain

struct ReachTile {
    u8 cost;        // to enter the tile; 0xFF: can't
    u8 height;
    u8 edges;       // EDGE_*
    u8 flags;       // guess
    u8 filler4[4];
    u16 field8;
    u16 fieldA;
    u16 fieldC;
    u16 fieldE;
};

// A map tile (*gUnk_02029CCC, 32x32 of 4 bytes).
struct MapTile {
    u8 field0;
    u8 height;      // bit 7: guess: no tile
    u8 flags;       // bit 7: guess: exists; bit 5: guess: walkable
    u8 field3;
};

// Terrain types, indexed by sub_08028774 (32 bytes each).
struct Terrain {
    u8 flags;       // 1: impassable, 2: guess: lowers height for some unit kinds, 8, 0x10: see below
    u8 cost;
    u8 filler2[0x1E];
};

extern const struct Terrain gUnk_0861CA5C[];

struct MapTile *sub_08028728(u16 x, u16 y);
u16 sub_08028774(u16 x, u16 y);

// Height of the tile for the unit: -1 off the map or where it can't stand, -2 on impassable terrain.
s32 ReachTileHeight(s8 x, s8 y, u8 mode, u8 kind)
{
    // volatile: the original reads tile->flags twice.
    volatile struct MapTile *tile;
    const struct Terrain *terrain;
    s32 height;
    u16 tx, ty;

    if (x < 0 || y < 0 || x >= MAP_SIZE || y >= MAP_SIZE)
        return -1;
    tx = x;
    ty = y;
    tile = sub_08028728(tx, ty);
    if ((tile->field0 & 0x80) || (tile->height & 0x80) || !(tile->flags & 0x80)
        || !(tile->flags & 0x20))
        return -1;
    terrain = &gUnk_0861CA5C[sub_08028774(tx, ty)];
    height = tile->height;
    if ((terrain->flags & 2) && (kind == 2 || kind == 4 || kind == 5))
        height--;
    if (mode == MOVE_FLY || !(terrain->flags & 1))
        return height;
    return -2;
}

// Cost to enter the tile; 0xFF: can't.
u8 ReachTileCost(u8 x, u8 y, u8 mode, u8 kind)
{
    const struct Terrain *terrain;
    volatile struct MapTile *tile = sub_08028728(x, y);
    u8 blocked;

    // A ?: then an if, not one if: that's what keeps mode and kind in one register each.
    blocked = ((tile->field0 & 0x80) || (tile->height & 0x80) || !(tile->flags & 0x80)
               || !(tile->flags & 0x20)) ? 0xFF : 0;
    if (blocked)
        return 0xFF;
    if (mode == MOVE_FLY)
        return 1;
    terrain = &gUnk_0861CA5C[sub_08028774(x, y)];
    if (terrain->flags & 1)
        return 0xFF;
    if (mode == 1)
        return 1;
    if ((terrain->flags & 2) && (u8)(kind - 2) <= 1)
        return 1;
    return terrain->cost;
}

// BuildReachMap (the original inlines Edge in it) doesn't match yet, and this version differs in
// timing from the original, so it isn't built: the ROM uses the original code below. Kept as the
// readable version.
#if 0
static bool32 TileBlocked(struct MapTile *t)
{
    return (t->field0 & 0x80) || (t->height & 0x80) || !(t->flags & 0x80) || !(t->flags & 0x20);
}

// Edge bits from (x, y) towards (dx, dy): 1 can't step, 2 can't pass (see EDGE_*).
static u32 Edge(s32 x, s32 y, s32 dx, s32 dy, u8 mode, u8 kind)
{
    s32 maxUp, maxDown;
    s32 h0, h1, h2;
    s32 cost1, cost2;
    u32 edge;

    switch (mode) {
    case MOVE_FLY:
        maxUp = 127;
        maxDown = -128;
        break;
    case 3:
        maxUp = 3;
        maxDown = -4;
        break;
    case 4:
        maxUp = 2;
        maxDown = -3;
        break;
    default:
        maxUp = 1;
        maxDown = -2;
        break;
    }

    h0 = ReachTileHeight(x, y, mode, kind);
    if (h0 < 0)
        return 0;
    h1 = ReachTileHeight(x + dx, y + dy, mode, kind);
    if (h1 < 0)
        return 3;
    cost1 = ReachTileCost(x + dx, y + dy, mode, kind);
    cost2 = 0;
    edge = 0;
    h2 = ReachTileHeight(x + 2 * dx, y + 2 * dy, mode, kind);
    if (h2 < 0) {
        edge = 2;
    } else {
        cost1 += ReachTileCost(x + 2 * dx, y + 2 * dy, mode, kind);
        cost2 = ReachTileCost(x + 2 * dx, y + 2 * dy, mode, kind) + 1;
        if (h2 > h0)
            edge = 2;
        if (h2 - h0 <= 0 && h2 - h0 < maxDown)
            edge |= 2;
    }
    if (h1 > h0)
        edge |= 2;
    if (h1 - h0 > maxUp || h1 - h0 < maxDown)
        edge |= 1;
    if (cost1 == cost2 && (h0 != h2 || h1 >= h0))
        edge |= 2;
    return edge;
}

// Fills map (32x32, zeroed) for a unit's movement type: mode and kind from its type, guess: canX
// lets it cross terrain with flag 8.
void BuildReachMap(u8 mode, u8 kind, u8 canX, struct ReachTile *map)
{
    s32 x, y;
    struct ReachTile *t;
    struct MapTile *tile;
    const struct Terrain *terrain;
    u32 edge;

    for (y = 0, t = map; y < MAP_SIZE; y++) {
        for (x = 0; x < MAP_SIZE; x++, t++) {
            tile = sub_08028728(x, y);
            if (TileBlocked(tile)) {
                t->edges = 0xFF;
                goto next;
            }
            edge = Edge(x, y, -1, 0, mode, kind);
            if (edge & 1)
                t->edges |= EDGE_STEP_LEFT;
            if (edge & 2)
                t->edges |= EDGE_PASS_LEFT;
            edge = Edge(x, y, 1, 0, mode, kind);
            if (edge & 1)
                t->edges |= EDGE_STEP_RIGHT;
            if (edge & 2)
                t->edges |= EDGE_PASS_RIGHT;
            edge = Edge(x, y, 0, -1, mode, kind);
            if (edge & 1)
                t->edges |= EDGE_STEP_UP;
            if (edge & 2)
                t->edges |= EDGE_PASS_UP;
            edge = Edge(x, y, 0, 1, mode, kind);
            if (edge & 1)
                t->edges |= EDGE_STEP_DOWN;
            if (edge & 2)
                t->edges |= EDGE_PASS_DOWN;

            terrain = &gUnk_0861CA5C[sub_08028774(x, y)];
            tile = sub_08028728(x, y);
            t->height = tile->height & 0x7F;
            if (mode == 1 || mode == MOVE_FLY) {
                t->cost = 1;
                goto next;
            }
            t->cost = terrain->cost;
            if ((terrain->flags & 8) && canX)
                t->cost = 1;
            if (terrain->flags & 1) {
                t->cost = 0xFF;
                t->flags |= 2;
            }
            switch (kind) {
            case 1:
                t->cost = 1;
                goto next;
            case 2:
                if (terrain->flags & 2)
                    t->cost = 1;
                // fallthrough
            case 4:
            case 5:
                if (terrain->flags & 2) {
                    t->height--;
                    t->flags |= 4;
                }
                break;
            case 3:
                if (terrain->flags & 2)
                    t->cost = 1;
                break;
            default:
                goto next;
            }
            if (terrain->flags & 0x10)
                t->cost = 0xFF;
        next:
            t->fieldC = 0xFF;
            t->fieldA = 0xFFFF;
            t->field8 = 0xFFFF;
            t->fieldE = 0xFFFF;
        }
    }
}
#else
NAKED void BuildReachMap(u8 mode, u8 kind, u8 canX, struct ReachTile *map)
{
    asm_unified(".include \"asm/non_matching/battle_reach/BuildReachMap.inc\"");
}
#endif
