// watch ROM SAV INPUTS FROM TO ADDR: like boot, but from frame FROM to TO steps one instruction at a
// time and prints the PC and registers each time the 32-bit word at ADDR changes. With ENDPC set,
// also prints where each frame ends.
#include <mgba/core/core.h>
#include <mgba/core/log.h>
#include <mgba-util/vfs.h>
#include <fcntl.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

static void quiet(struct mLogger *l, int c, enum mLogLevel v, const char *f, va_list a) {
	(void) l; (void) c; (void) v; (void) f; (void) a;
}
static struct mLogger logger = { .log = quiet };

#define HISTORY 400
static uint32_t history[HISTORY];
static unsigned steps;

int main(int argc, char **argv) {
	// CRASH=ADDR: stop when the PC goes outside BIOS, RAM and ROM code below ADDR, printing the
	// PCs that led there.
	FILE *trace = getenv("TRACE") ? fopen(getenv("TRACE"), "w") : NULL;
	uint32_t unshift = getenv("UNSHIFT") ? strtoul(getenv("UNSHIFT"), NULL, 0) : 0;
	uint32_t brk = getenv("BREAK") ? strtoul(getenv("BREAK"), NULL, 0) : 0;
	uint32_t codeEnd = getenv("CRASH") ? strtoul(getenv("CRASH"), NULL, 0) : 0;
	if (argc < 7) { fprintf(stderr, "usage: watch ROM SAV INPUTS FROM TO ADDR\n"); return 1; }
	mLogSetDefaultLogger(&logger);
	int from = atoi(argv[4]), to = atoi(argv[5]);
	uint32_t addr = strtoul(argv[6], NULL, 0);
	struct mCore *core = mCoreFind(argv[1]);
	if (!core || !core->init(core)) return 2;
	mCoreInitConfig(core, NULL);
	unsigned w, h;
	core->desiredVideoDimensions(core, &w, &h);
	core->setVideoBuffer(core, malloc(w * h * BYTES_PER_PIXEL), w);
	if (!mCoreLoadFile(core, argv[1])) return 3;
	struct VFile *sv = VFileOpen(argv[2], O_RDWR);
	if (!sv || !core->loadSave(core, sv)) return 4;
	core->reset(core);

	FILE *in = fopen(argv[3], "r");
	if (!in) return 5;
	int nextFrame = -1, nextKeys = 0, keys = 0;
	if (fscanf(in, "%d %i", &nextFrame, &nextKeys) != 2) nextFrame = -1;
	for (int f = 0; f < to; f++) {
		while (nextFrame == f) {
			keys = nextKeys;
			if (fscanf(in, "%d %i", &nextFrame, &nextKeys) != 2) nextFrame = -1;
		}
		core->setKeys(core, keys);
		if (f < from) { core->runFrame(core); continue; }
		uint32_t start = core->frameCounter(core), old = core->busRead32(core, addr);
		while (core->frameCounter(core) == start) {
			uint32_t pc, r[13];
			char name[4];
			core->readRegister(core, "pc", &pc);
			for (int i = 0; i < 13; i++) {
				snprintf(name, sizeof name, "r%d", i);
				core->readRegister(core, name, &r[i]);
			}
			history[steps++ % HISTORY] = pc;
			if (trace) {  // TRACE=FILE: every PC, moved back by UNSHIFT if above 0x08000254
				uint32_t r0;
				core->readRegister(core, "r0", &r0);
				fprintf(trace, "%08X %08X\n", pc >= 0x08000254 && pc < 0x09000000 ? pc - unshift : pc,
					r0 >= 0x08000254 && r0 < 0x09000000 ? r0 - unshift : r0);
			}
			if (brk && pc == brk) {  // BREAK=ADDR: print SP and LR each time PC reaches ADDR
				uint32_t sp, lr;
				core->readRegister(core, "sp", &sp);
				core->readRegister(core, "lr", &lr);
				printf("frame %d break %08X sp %08X lr %08X |", f + 1, pc, sp, lr);
				for (int i = 0; i < 13; i++) printf(" %08X", r[i]);
				printf("\n");
			}
			if (codeEnd && pc >= 0x4000 && !(pc >= 0x02000000 && pc < 0x03008000) &&
					!(pc >= 0x08000000 && pc < codeEnd)) {
				for (unsigned i = steps > HISTORY ? steps - HISTORY : 0; i < steps; i++)
					printf("%08X\n", history[i % HISTORY]);
				return 0;
			}
			core->step(core);
			uint32_t now = core->busRead32(core, addr);
			if (now != old) {
				uint32_t lr, sp;
				core->readRegister(core, "lr", &lr);
				core->readRegister(core, "sp", &sp);
				printf("frame %d pc %08X lr %08X sp %08X: %08X -> %08X |", f + 1, pc, lr, sp, old, now);
				for (int i = 0; i < 13; i++) printf(" %08X", r[i]);
				printf("\n");
				if (getenv("HIST"))  // HIST: also the PCs that led to the write
					for (unsigned i = steps > HISTORY ? steps - HISTORY : 0; i < steps; i++)
						printf("  %08X\n", history[i % HISTORY]);
			}
			old = now;
		}
		if (getenv("ENDPC")) {  // where each frame ended, to spot hangs
			uint32_t pc, lr;
			core->readRegister(core, "pc", &pc);
			core->readRegister(core, "lr", &lr);
			printf("frame %d ends at pc %08X lr %08X\n", f + 1, pc, lr);
		}
	}
	return 0;
}
