	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080566A8
sub_080566A8: @ 0x080566A8
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #9
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080566C0
sub_080566C0: @ 0x080566C0
	push {lr}
	bl EventWinInit_08040fe8
	ldr r0, _08056708 @ =0x000A0015
	bl EventWinMesSet_08041058
	ldr r0, _0805670C @ =0x000A0016
	bl EventWinMesSet_08041058
_080566D2:
	ldr r0, _08056710 @ =0x000A0017
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805671C
	ldr r0, _08056714 @ =0x0808E69C
	movs r1, #0x78
	movs r2, #0x45
	bl DisplayGFX_080414B4
	movs r0, #0x94
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	ldr r0, _08056718 @ =0x000A0018
	bl EventWinMesSet_08041058
	bl sub_08041560
	movs r0, #0x26
	bl EventSetFlag_080406E4
	b _0805672C
	.align 2, 0
_08056708: .4byte 0x000A0015
_0805670C: .4byte 0x000A0016
_08056710: .4byte 0x000A0017
_08056714: .4byte 0x0808E69C
_08056718: .4byte 0x000A0018
_0805671C:
	ldr r0, _08056730 @ =0x000A0019
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080566D2
_0805672C:
	pop {r0}
	bx r0
	.align 2, 0
_08056730: .4byte 0x000A0019

	thumb_func_start sub_08056734
sub_08056734: @ 0x08056734
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08056770 @ =0x0808E434
	bl LoadBuildingBG_0804115C
	ldr r0, _08056774 @ =0x00000131
	bl EventPlaySFX_080410E0
	bl sub_080407FC
	movs r0, #0x25
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805677C
	movs r0, #0x26
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805677C
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	ldr r0, _08056778 @ =sub_080566C0
	bl RunEventScript_0804066C
	b _08056788
	.align 2, 0
_08056770: .4byte 0x0808E434
_08056774: .4byte 0x00000131
_08056778: .4byte sub_080566C0
_0805677C:
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _080567A4 @ =sub_080566A8
	bl RunEventScript_0804066C
_08056788:
	ldr r0, _080567A8 @ =0x00000131
	bl sub_080410F0
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080567A4: .4byte sub_080566A8
_080567A8: .4byte 0x00000131
