	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .rodata

	@ TODO: this is pretty much all sound data

    .INCBIN "baserom.gba", 0x1AF174, 0x1B4288-0x1AF174

	.GLOBAL gMPlayTable
gMPlayTable:
	.INCBIN "baserom.gba", 0x1B4288, 1

	.INCBIN "baserom.gba", 0x1B4289, 0x1B42DC-0x1B4289

	.GLOBAL gSongTable
gSongTable:
	.INCBIN "baserom.gba", 0x1B42DC, 1

	.INCBIN "baserom.gba", 0x1B42DD, 0x2AB7B8-0x1B42DD
