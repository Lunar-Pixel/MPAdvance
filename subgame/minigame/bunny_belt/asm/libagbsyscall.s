	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	.ALIGN 2, 0

	thumb_func_start ArcTan2
ArcTan2: @ 0x020090BC
	svc #0xa
	bx lr

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x020090C0
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x020090C4
	svc #0xb
	bx lr

	thumb_func_start IntrWait
IntrWait: @ 0x020090C8
	movs r2, #0
	svc #4
	bx lr
	.align 2, 0

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x020090D0
	svc #0xf
	bx lr

	thumb_func_start Sqrt
Sqrt: @ 0x020090D4
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x020090D8
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start SoftReset
SoftReset: @ 0x020090E0
	ldr r3, _020090F4 @ =REG_IME
	movs r2, #0
	strb r2, [r3]
	ldr r3, _020090F8 @ =gUnknown_03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_020090F4: .4byte REG_IME
_020090F8: .4byte gUnknown_03007FFA
