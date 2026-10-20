# Log

Progreso del proyecto. Venía como notas en el todo (tarea 130, Romhacks).

## 2026-10-06

- Knight of Lodis QoL en ~/git/lodis-qol: IA calcula camino en 1 frame y camina al doble (mov. IA f34-115 -> f20-61). Próximo: ejercicio guiado, caminata del jugador (0x0806D5B2), lo hago yo con Ghidra + debugger de mGBA.
- Idea futura: campo asm en patches.toml (arm-none-eabi-as, expect también en asm) en vez de bytes hex; armips si el hack crece a rutinas grandes en asm.
- Parche: pausa de la IA antes de caminar 16->4 frames (-12f, commit eff433a). El ss3 se hizo con un build viejo (54fba41): recargar el ROM en mGBA. Próximo: probar; opcional recortar espera sub 3.

## 2026-10-07

- Pausas IA: sub 11 16->0, sub 3 16->4; hook src/scan.c saltea casillas vacías (-5f por movimiento). Caminata desde ss2: f122 -> f100. Próximo: sub 19 (FUN_0804DB8C, ~11 frames de cálculo).
- Ataque IA: esperas previas 16/8->4/2, carteles daño/GUARD 64->24, tope 16 a poses de sprites (src/anim.c). Turno completo desde ss2: -96 frames. Próximo: Guido prueba; ojo con animaciones fuera de batalla.

## 2026-10-08

- Lodis: pasamos a decomp sobre totkol (github jiangzhengwenjz/totkol, asm matching con agbcc). Compila idéntico acá; InputUpdate y GetRepeatKey ya en C con nombres y matchean (m2c + ajustes). Prueba en scratchpad de Claude. Próximo: decidir dónde vive el repo; después la init del input (repeatDelay=15) en code_08000254.s.

## 2026-10-09

- Lodis: fork listo en ~/git/lodis-qol (gtarsia/totkol). Prueba de shift: +256 bytes en código -> pantalla negra al bootear. totkol NO es shiftable: ~14k punteros crudos en data/data.s (incbins; ~7.5k a funciones). Cambios del mismo tamaño OK (ej. repeatDelay 15->10). Próximo: elegir entre código nuevo al final de la ROM o labelizar los punteros de data.
- Lodis shiftable: rama shiftable-data en ~/git/lodis-qol. scripts/label_data_pointers.py (convierte punteros en data.s por estructura) + scripts/shift_test.sh (ROM corrida vs original, capturas headless). Matchea. Corrida 0x100: llega a la batalla, solo difiere timing. Corrida 0x20000: rompe en la intro por punteros dentro de bloques empaquetados (gUnk_08740873). Próximo: decidir si seguir o volver al decomp/mod del cursor.
- shiftable-data: corriendo todo +0x20000, la ROM coincide hasta el frame ~18500 (antes rompía en la intro). Arreglado: tabla de chips de flash, punteros m4a (canciones, voces, PATT), samples/tilemaps excluidos, structs dispersos. Herramientas: scripts/watch.c (watchpoint por instrucción), scripts/ram_diff.py (incluye VRAM). Siguiente: frame 18519, un canal de sonido pasa a usar el sample 0x0818B198 (r7/ip en 0x0817C2B8); probablemente un puntero de voz sin convertir.
- lodis shiftable-data: lockstep tool added; shifted ROM matches 150k frames of New Game, 0 stale pointers (92981f4). Next: longer input scripts for more coverage.
- BattlePhaseMove (movimiento IA/jugador) decompilado a src/battle_move.c, rama ai-turn. Delays como constantes arriba del archivo; compilar con make NONMATCHING=1. Siguiente: probar delays en un turno de IA; matching pendiente (rotación de spill regs, r5).
- BattlePhaseMove matchea en C (QOL=0 da 85a46320); NAKED/.inc borrados, sin commitear. Próximo: commit y sacar el flag NONMATCHING del Makefile.
- Commiteado en ai-turn (4e5bc2b..a818d3a): BattlePhaseMove coincide en C, sin NONMATCHING, battle_reach como referencia. Siguiente: acelerar animaciones de ataque.
- Corrimiento QOL arreglado: AI_DEST_DELAY 0->1 (agbcc agrandaba battle_move 24 bytes) y linker.ld fija la dirección del objeto que sigue a cada .c. Ataque: script del arquero 0x08410FB0, esperas de 62 y 54 frames (bytes de duración en 0x08410FBB y 0x08410FF2); acortarlas a 16 ahorra solo 15 de unos 200 frames. Phase 7 state 16 espera al secuenciador sub_08088E58, que espera a todos los sprites. Siguiente: ver qué sprite cierra la espera (reacción del objetivo o popup).
- Commits c0b4e45 (corrimiento), 1b0c13e (CLAUDE.md: mods solo en C detrás de QOL; verificar la ROM después de cada commit), edf35f7 (popups y esperas documentados; las ideas QOL quedan como comentarios). Pendiente: gDefaultOptions en data.s sigue con .if QOL. Corriendo lockstep a 90000 frames para buscar punteros crudos en data.
- Mensajes a C: src/message.c con 0x080197C0..0x080199E0 (11 funcs, sub_0801995C NAKED por registros). compare OK, QOL sin corrimientos, sin commitear. Siguiente: sub_080199E0..0801A074 y luego el printer (sub_08014D14, sub_080160E4, sub_08015D50).
- Non-matching: sub_0801995C, ReachTileHeight, ReachTileCost ahora matchean (sin commitear). BuildReachMap (1045 líneas, Edge inlineado x4) sigue NAKED. Siguiente: commitear; después seguir mensajes desde sub_080199E0.
- BuildReachMap sigue NAKED: mejor intento 857 líneas / 67 estructurales (build/fdiff/BuildReachMap_try.c). Falta: chequeo muerto (u8)x==10 que carga y en r0, y asignación de registros/slots. Siguiente: seguir mensajes a C (sub_080199E0..).
- BuildReachMap: 427 -> 297 lineas distintas (build/fdiff/BuildReachMap_try.c). Truco: 'if (h0 == 0) cost2 = 0;' muerto tras el chequeo de h1 suma refs a h0 y lo pone en r7. Falta: dh1 debe recibir reg en global (orig lo evicta a slot 152) y la rotacion de reload regs r0/r1/r2 esta corrida en uno. Herramientas en $TMPDIR/brm (pri.py, hc.py).

## 2026-10-10

- BuildReachMap: mejor C en build/fdiff/BuildReachMap_try.c (115 líneas, sin basura del permuter). Clave: h1-h0 dos veces por Edge + chequeo muerto 'if (dh1 == 0) cost1 = 0;' para que gcse haga PRE; 'if (h0 == 0) cost1 = 0;'. Falta: orden de slots PRE (hash), rotación de reloads arriba (bump 2 en el 1er map->edges=0xFF baja a 55 en agbcc parcheado /tmp/agbcc), stores del caso 2 del switch de terreno. Difícil; quizá aparcar.

## 2026-10-11

- BuildReachMap: partir el 1er if (field0 / height||flags) arregla la rotación por cross-jumping: 125→65 líneas. Falta: offsets de pila (#136..#164), r4/r5 (~455, 647), y ldrb r1/r2 ~915.
