// phases ROM SAV INPUTS N: like boot, but prints the battle phase and state each time they change,
// to time the battle state machines (Battle.phase/state, see include/battle.h).
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

#define BATTLE_PTR 0x0202A88C
#define PHASE 0x26C
#define STATE 0x27E

int main(int argc, char **argv) {
	if (argc < 5) { fprintf(stderr, "usage: phases ROM SAV INPUTS N\n"); return 1; }
	mLogSetDefaultLogger(&logger);
	int n = atoi(argv[4]);
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
	int nextFrame = -1, nextKeys = 0, keys = 0, last = -1;
	if (fscanf(in, "%d %i", &nextFrame, &nextKeys) != 2) nextFrame = -1;
	for (int f = 0; f < n; f++) {
		while (nextFrame == f) {
			keys = nextKeys;
			if (fscanf(in, "%d %i", &nextFrame, &nextKeys) != 2) nextFrame = -1;
		}
		core->setKeys(core, keys);
		core->runFrame(core);
		uint32_t b = core->busRead32(core, BATTLE_PTR);
		if (b < 0x02000000 || b >= 0x02040000)
			continue;
		int now = core->busRead8(core, b + PHASE) << 8 | core->busRead8(core, b + STATE);
		if (now != last)
			printf("frame %d keys %03X phase %d state %d\n", f + 1, keys, now >> 8, now & 0xFF);
		last = now;
	}
	return 0;
}
