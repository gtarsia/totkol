# perm_diff.py IN.c OUT.c FUNC: the permuter reprints the whole file in its own style, so this
# reprints IN.c the same way, keeping only the code from FUNC's file (from the first inline/static
# function or FUNC itself) so the two can be diffed. Run with decomp-permuter's Python (pycparser).
import sys
from pycparser import c_parser, c_generator

src, out, func = sys.argv[1:4]
lines = c_generator.CGenerator().visit(c_parser.CParser().parse(open(src).read())).splitlines()
start = next((i for i, l in enumerate(lines) if l.startswith(('inline static', 'static inline'))
              or f' {func}(' in l), 0)
open(out, 'w').write('\n'.join(lines[start:]) + '\n')
