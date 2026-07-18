	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08045E18
sub_08045E18: @ 0x08045E18
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08045E54 @ =0x0808DE6C
	bl LoadBuildingBG_0804115C
	bl sub_08042554
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	bl sub_080407FC
	bl sub_080422DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08040F54
	bl sub_080410D0
	bl sub_08040820
	bl sub_08042588
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08045E54: .4byte 0x0808DE6C
