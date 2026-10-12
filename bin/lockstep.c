// lockstep BASE SHIFTED INPUTS FRAMES PAD: plays the original ROM and a ROM linked with everything
// after crt0 moved by PAD, side by side with the same keys (INPUTS: "frame keymask" lines).
//
// SHIFTED must hold a copy of the original ROM in the gap left by the move (bin/lockstep
// builds it), so a raw ROM address left in the data still reads the right bytes. Two kinds of bugs
// then show up separately:
// - stale pointers: any read of, or jump into, the old copy is logged with the code that did it;
// - values wrongly turned into pointers: they change by PAD, so memory stops matching. At the
//   first frame where it doesn't, both ROMs are replayed one instruction at a time from the start
//   of the frame, to find the instruction that writes the first difference.
// Needs totkol.map (from a matching build) to print symbols.
#include <mgba/core/core.h>
#include <mgba/core/log.h>
#include <mgba/internal/arm/arm.h>
#include <mgba-util/vfs.h>
#include <ctype.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CRT0_END 0x08000254
#define HISTORY 32
#define WATCH 32

static void quiet(struct mLogger *l, int c, enum mLogLevel v, const char *f, va_list a) {
	(void) l; (void) c; (void) v; (void) f; (void) a;
}
static struct mLogger logger = { .log = quiet };

static uint32_t pad;
static int frame;

// Symbols from totkol.map, sorted by address.
static struct sym { uint32_t addr; char name[64]; } *syms;
static int nsyms;

static int bysym(const void *a, const void *b) {
	uint32_t x = ((const struct sym *) a)->addr, y = ((const struct sym *) b)->addr;
	return (x > y) - (x < y);
}

static void loadSymbols(void) {
	FILE *f = fopen("totkol.map", "r");
	char line[256], name[64];
	unsigned long addr;
	int cap = 0;
	while (f && fgets(line, sizeof line, f)) {
		if (sscanf(line, " 0x%lx %63s", &addr, name) != 2 || addr < 0x08000000 || addr >= 0x0A000000
				|| !(isalpha(name[0]) || name[0] == '_') || strchr(line, '='))
			continue;
		if (nsyms == cap) syms = realloc(syms, (cap = cap ? cap * 2 : 4096) * sizeof *syms);
		syms[nsyms].addr = addr;
		strcpy(syms[nsyms++].name, name);
	}
	if (f) fclose(f);
	qsort(syms, nsyms, sizeof *syms, bysym);
}

// "name+0xOFF" for an address of the original ROM, else the bare address.
static const char *symbol(uint32_t addr) {
	static char out[4][96];
	static int n;
	char *s = out[n++ % 4];
	int lo = 0, hi = nsyms;
	while (lo < hi) {
		int mid = (lo + hi) / 2;
		if (syms[mid].addr <= addr) lo = mid + 1; else hi = mid;
	}
	if (addr < 0x08000000 || addr >= 0x0A000000 || !lo) snprintf(s, 96, "%08X", addr);
	else if (syms[lo - 1].addr == addr) snprintf(s, 96, "%08X %s", addr, syms[lo - 1].name);
	else snprintf(s, 96, "%08X %s+0x%X", addr, syms[lo - 1].name, addr - syms[lo - 1].addr);
	return s;
}

// Moves an address of the shifted ROM back to where it is in the original.
static uint32_t unshift(uint32_t addr) {
	return addr >= CRT0_END + pad && addr < 0x0A000000 ? addr - pad : addr;
}

// crt0 copies the IRQ handler with 8 bytes past its end, which is harmless.
static int stale(uint32_t addr) {
	return addr >= CRT0_END + 8 && addr < CRT0_END + pad;
}

// Stale pointer uses, one per instruction (or per jump target).
#define STALE 4096
static struct use { uint32_t pc, addr, lr; int frame, count; char kind; } uses[STALE];
static int nuses;

static void logUse(char kind, uint32_t pc, uint32_t addr, uint32_t lr) {
	for (int i = 0; i < nuses; i++)
		if (uses[i].kind == kind && uses[i].pc == pc) { uses[i].count++; return; }
	if (nuses == STALE) return;
	uses[nuses++] = (struct use) { pc, addr, lr, frame, 1, kind };
	printf("frame %d: %s %s by %s (lr %s)\n", frame, kind == 'J' ? "jump to" : "read of",
		symbol(addr), symbol(unshift(pc)), symbol(unshift(lr)));
	fflush(stdout);
}

static struct ARMMemory original;

static void checkRead(struct ARMCore *cpu, uint32_t addr) {
	uint32_t pc = cpu->gprs[ARM_PC] - (cpu->executionMode == MODE_THUMB ? 4 : 8);
	// Code in the old copy only runs after a jump there, which is already logged.
	if (stale(addr) && !stale(pc)) logUse('R', pc, addr, cpu->gprs[ARM_LR]);
}

static uint32_t load32(struct ARMCore *cpu, uint32_t a, int *c) {
	checkRead(cpu, a);
	return original.load32(cpu, a, c);
}
static uint32_t load16(struct ARMCore *cpu, uint32_t a, int *c) {
	checkRead(cpu, a);
	return original.load16(cpu, a, c);
}
static uint32_t load8(struct ARMCore *cpu, uint32_t a, int *c) {
	checkRead(cpu, a);
	return original.load8(cpu, a, c);
}
static uint32_t loadMultiple(struct ARMCore *cpu, uint32_t a, int m, enum LSMDirection d, int *c) {
	checkRead(cpu, a);
	return original.loadMultiple(cpu, a, m, d, c);
}
static void setActiveRegion(struct ARMCore *cpu, uint32_t a) {
	if (stale(a)) logUse('J', a, a, cpu->gprs[ARM_LR]);
	original.setActiveRegion(cpu, a);
}

static struct mCore *boot(const char *rom) {
	struct mCore *core = mCoreFind(rom);
	if (!core || !core->init(core)) exit(2);
	mCoreInitConfig(core, NULL);
	unsigned w, h;
	core->desiredVideoDimensions(core, &w, &h);
	core->setVideoBuffer(core, malloc(w * h * BYTES_PER_PIXEL), w);
	if (!mCoreLoadFile(core, rom)) exit(3);
	static uint8_t blank[0x10000];  // erased flash
	memset(blank, 0xFF, sizeof blank);
	if (!core->loadSave(core, VFileMemChunk(blank, sizeof blank))) exit(4);
	core->reset(core);
	return core;
}

// Memory compared after each frame. Pointers into ROM may differ by PAD in RAM and VRAM (the
// game keeps some there), never in palette or OAM.
static const struct { int id; uint32_t base; int pointers; } regions[] = {
	{ 2, 0x02000000, 1 }, { 3, 0x03000000, 1 }, { 5, 0x05000000, 0 }, { 6, 0x06000000, 1 },
	{ 7, 0x07000000, 0 },
};
#define NREGIONS (int) (sizeof regions / sizeof *regions)

static int ignored(uint32_t addr) {  // the stack, and garbage past the IRQ handler copy
	return (addr >= 0x03007000 && addr < 0x03008000) || (addr >= 0x03001268 && addr < 0x03001270);
}

static int moved(uint32_t a, uint32_t b) {
	return ((a >> 24) & 0xF) == 8 && b == a + pad;
}

static uint32_t peek(const uint8_t *m, size_t size, long i) {
	uint32_t v = 0;
	if (i >= 0 && i + 4 <= (long) size) memcpy(&v, m + i, 4);
	return v;
}

// True if the word at offset i of two copies of a region differs by more than a moved pointer
// (at any alignment: unaligned pointers spill into the next word).
static int differs(const uint8_t *a, const uint8_t *b, size_t size, long i, int pointers) {
	if (peek(a, size, i) == peek(b, size, i)) return 0;
	if (pointers)
		for (int k = -3; k <= 3; k++)
			if (i + k >= 0 && moved(peek(a, size, i + k), peek(b, size, i + k))) return 0;
	return 1;
}

static uint32_t watched[WATCH];
static int nwatched;

static int compare(struct mCore *a, struct mCore *b, int print) {
	nwatched = 0;
	for (int r = 0; r < NREGIONS; r++) {
		size_t size, sizeB;
		uint8_t *ma = a->getMemoryBlock(a, regions[r].id, &size);
		uint8_t *mb = b->getMemoryBlock(b, regions[r].id, &sizeB);
		if (!memcmp(ma, mb, size)) continue;
		for (size_t i = 0; i < size; i += 4) {
			uint32_t addr = regions[r].base + i;
			if (ignored(addr) || !differs(ma, mb, size, i, regions[r].pointers)) continue;
			if (print && nwatched < 12)
				printf("  %08X: %08X / %08X\n", addr, peek(ma, size, i), peek(mb, size, i));
			if (nwatched < WATCH) watched[nwatched++] = addr;
			else return nwatched;
		}
	}
	return nwatched;
}

static uint32_t reg(struct mCore *core, int i) {
	return ((struct ARMCore *) core->cpu)->gprs[i];
}

// Replays the frame both cores are at, one instruction at a time, until a watched word differs.
static void replay(struct mCore *a, struct mCore *b) {
	uint32_t histA[HISTORY], histB[HISTORY];
	unsigned steps = 0;
	int regsShown = 0;
	uint32_t start = a->frameCounter(a);
	while (a->frameCounter(a) == start) {
		uint32_t pcA = reg(a, ARM_PC), pcB = reg(b, ARM_PC);
		histA[steps % HISTORY] = pcA;
		histB[steps % HISTORY] = pcB;
		steps++;
		a->step(a);
		b->step(b);
		for (int i = 0; i <= ARM_PC && !regsShown; i++) {
			uint32_t x = reg(a, i), y = reg(b, i);
			if (x != y && y != x + pad) {  // pad may carry into the top byte mid-BL
				printf("registers first differ after %s: r%d %08X / %08X\n",
					symbol(pcA - 4), i, x, y);
				regsShown = 1;
			}
		}
		for (int w = 0; w < nwatched; w++) {
			uint32_t addr = watched[w], x = a->busRead32(a, addr), y = b->busRead32(b, addr);
			int pointers = addr < 0x04000000 || (addr >= 0x06000000 && addr < 0x07000000);
			if (x == y || (pointers && (moved(x, y) || moved(a->busRead32(a, addr - 4),
					b->busRead32(b, addr - 4)))))
				continue;
			printf("%08X becomes %08X / %08X; last instructions (pc + 4 in Thumb):\n", addr, x, y);
			for (unsigned i = steps > HISTORY ? steps - HISTORY : 0; i < steps; i++)
				printf("  %-48s %s\n", symbol(histA[i % HISTORY]), symbol(unshift(histB[i % HISTORY])));
			printf("registers base / shifted:\n");
			for (int i = 0; i <= ARM_PC; i++)
				printf("  r%-2d %08X %08X\n", i, reg(a, i), reg(b, i));
			return;
		}
	}
	printf("no single instruction found; the frame ends without the difference\n");
}

int main(int argc, char **argv) {
	if (argc < 6) {
		fprintf(stderr, "usage: lockstep BASE SHIFTED INPUTS FRAMES PAD\n");
		return 1;
	}
	mLogSetDefaultLogger(&logger);
	int frames = atoi(argv[4]);
	pad = strtoul(argv[5], NULL, 0);
	loadSymbols();
	struct mCore *a = boot(argv[1]), *b = boot(argv[2]);
	struct ARMCore *cpu = b->cpu;
	original = cpu->memory;
	cpu->memory.load32 = load32;
	cpu->memory.load16 = load16;
	cpu->memory.load8 = load8;
	cpu->memory.loadMultiple = loadMultiple;
	cpu->memory.setActiveRegion = setActiveRegion;
	void *stateA = malloc(a->stateSize(a)), *stateB = malloc(b->stateSize(b));

	FILE *in = fopen(argv[3], "r");
	if (!in) return 5;
	int nextFrame = -1, nextKeys = 0, keys = 0;
	if (fscanf(in, "%d %i", &nextFrame, &nextKeys) != 2) nextFrame = -1;
	for (frame = 0; frame < frames; frame++) {
		while (nextFrame == frame) {
			keys = nextKeys;
			if (fscanf(in, "%d %i", &nextFrame, &nextKeys) != 2) nextFrame = -1;
		}
		a->setKeys(a, keys);
		b->setKeys(b, keys);
		a->saveState(a, stateA);
		b->saveState(b, stateB);
		a->runFrame(a);
		b->runFrame(b);
		if (compare(a, b, 0)) {
			printf("frame %d: memory differs (base / shifted)\n", frame + 1);
			compare(a, b, 1);
			a->loadState(a, stateA);
			b->loadState(b, stateB);
			replay(a, b);
			break;
		}
		if (frame % 5000 == 0) fprintf(stderr, "frame %d\n", frame);
	}
	if (frame == frames) printf("memory matches for %d frames\n", frames);
	printf("%d stale pointer uses\n", nuses);
	return 0;
}
