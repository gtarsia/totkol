# inputs.py FRAMES: keys for headless runs ("frame keymask" lines): skip the intro, start a new
# game, then tap A twice a second and Start every 10 s (reaches the first battle by ~30000).
import sys
frames = int(sys.argv[1])
ev = {500: 8, 506: 0, 700: 8, 706: 0}
for f in range(760, frames, 30): ev[f] = 1; ev[f + 5] = 0
for f in range(8605, frames, 600): ev[f] = 8; ev[f + 3] = 0
for f, k in sorted(ev.items()): print(f, k)
