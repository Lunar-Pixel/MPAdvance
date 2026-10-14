	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .rodata

	.GLOBAL gMinigameDataIDPtrs_087C67E0
gMinigameDataIDPtrs_087C67E0:
	.INCBIN "us_baserom.gba", 0x7C67E0, 0x7c7168-0x7C67E0

	.GLOBAL gROMEnd_087C7168
gROMEnd_087C7168:
