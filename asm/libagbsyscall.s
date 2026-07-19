	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

    .SECTION .text

    .syntax unified

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x08070B30
	svc #12
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x08070B34
	svc #11
	bx lr

	thumb_func_start Diff16bitUnFilter
Diff16bitUnFilter: @ 0x08070B38
	svc #24
	bx lr

	thumb_func_start Diff8bitUnFilterWram
Diff8bitUnFilterWram: @ 0x08070B3C
	svc #22
	bx lr

	thumb_func_start Div
Div: @ 0x08070B40
	svc #6
	bx lr

	thumb_func_start Mod
Mod: @ 0x08070B44
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start HuffUnComp
HuffUnComp: @ 0x08070B4C
	svc #19
	bx lr

	thumb_func_start IntrWait
IntrWait: @ 0x08070B50
	movs r2, #0
	svc #4
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x08070B58
	svc #18
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x08070B5C
	svc #17
	bx lr

	thumb_func_start MultiBoot
MultiBoot: @ 0x08070B60
	movs r1, #1
	svc #37
	bx lr
	.align 2, 0

	thumb_func_start BitUnPack
BitUnPack: @ 0x08070B68
	svc #20
	bx lr

	thumb_func_start RegisterRamReset
RegisterRamReset: @ 0x08070B6C
	svc #1
	bx lr

	thumb_func_start SoftReset
SoftReset: @ 0x08070B70
	ldr r3, _08070B80 @ =REG_IME
	movs r2, #0
	strb r2, [r3]
	ldr r1, _08070B84 @ =0x03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_08070B80: .4byte REG_IME
_08070B84: .4byte 0x03007F00

	thumb_func_start Sqrt
Sqrt: @ 0x08070B88
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08070B8C
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
