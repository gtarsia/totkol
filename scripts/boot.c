#define USE_PNG
// boot ROM SAV INPUTS N STEP OUTDIR: boot ROM from reset with SAV (a copy: it gets written),
// feed keys from INPUTS ("frame keymask" lines, each held until the next) and save a PNG every
// STEP frames. With DUMP set, also dumps RAM.
#include <mgba/core/core.h>
#include <mgba/core/log.h>
#include <mgba-util/vfs.h>
#include <mgba-util/png-io.h>
#include <fcntl.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

static void quiet(struct mLogger *l, int c, enum mLogLevel v, const char *f, va_list a) {
	(void) l; (void) c; (void) v; (void) f; (void) a;
}
static struct mLogger logger = { .log = quiet };

int main(int argc, char **argv) {
	if (argc < 7) { fprintf(stderr, "usage: boot ROM SAV INPUTS N STEP OUTDIR\n"); return 1; }
	mLogSetDefaultLogger(&logger);
	int n = atoi(argv[4]), step = atoi(argv[5]);
	struct mCore *core = mCoreFind(argv[1]);
	if (!core || !core->init(core)) return 2;
	mCoreInitConfig(core, NULL);
	unsigned w, h;
	core->desiredVideoDimensions(core, &w, &h);
	color_t *buf = malloc(w * h * BYTES_PER_PIXEL);
	core->setVideoBuffer(core, buf, w);
	if (!mCoreLoadFile(core, argv[1])) return 3;

	struct VFile *sv = VFileOpen(argv[2], O_RDWR);
	if (!sv || !core->loadSave(core, sv)) return 4;
	core->reset(core);

	FILE *in = fopen(argv[3], "r");
	if (!in) return 5;
	int nextFrame = -1, nextKeys = 0, keys = 0;
	if (fscanf(in, "%d %i", &nextFrame, &nextKeys) != 2) nextFrame = -1;

	for (int f = 0; f < n; f++) {
		while (nextFrame == f) {
			keys = nextKeys;
			if (fscanf(in, "%d %i", &nextFrame, &nextKeys) != 2) nextFrame = -1;
		}
		core->setKeys(core, keys);
		core->runFrame(core);
		if (f % step == step - 1) {
			char path[512];
			snprintf(path, sizeof path, "%s/f%05d.png", argv[6], f + 1);
			struct VFile *o = VFileOpen(path, O_CREAT | O_TRUNC | O_WRONLY);
			png_structp png = PNGWriteOpen(o);
			png_infop info = PNGWriteHeader(png, w, h);
			PNGWritePixels(png, w, h, w, buf);
			PNGWriteClose(png, info);
			o->close(o);
			if (getenv("DUMP")) {  // EWRAM then IWRAM, next to each screenshot
				snprintf(path, sizeof path, "%s/f%05d.ram", argv[6], f + 1);
				FILE *r = fopen(path, "wb");
				for (uint32_t a = 0x02000000; a < 0x02040000; a++) fputc(core->busRead8(core, a), r);
				for (uint32_t a = 0x03000000; a < 0x03008000; a++) fputc(core->busRead8(core, a), r);
				fclose(r);
			}
		}
	}
	return 0;
}
