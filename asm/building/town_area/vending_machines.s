	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080426E4
sub_080426E4: @ 0x080426E4
	push {lr}
	bl EventWinInit_08040fe8
	ldr r0, _08042730 @ =0x002C0018
	bl EventWinMesSet_08041058
	ldr r0, _08042734 @ =0x002C0019
	bl EventWinMesSet_08041058
	ldr r0, _08042738 @ =0x002C001A
	bl EventWinMesSet_08041058
_080426FC:
	ldr r0, _0804273C @ =0x002C001B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042748
	movs r0, #0x94
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	ldr r0, _08042740 @ =0x0808E59C
	movs r1, #0x78
	movs r2, #0x40
	bl DisplayGFX_080414B4
	ldr r0, _08042744 @ =0x002C001C
	bl EventWinMesSet_08041058
	bl sub_08041560
	movs r0, #0xa3
	bl EventSetFlag_080406E4
	b _08042758
	.align 2, 0
_08042730: .4byte 0x002C0018
_08042734: .4byte 0x002C0019
_08042738: .4byte 0x002C001A
_0804273C: .4byte 0x002C001B
_08042740: .4byte 0x0808E59C
_08042744: .4byte 0x002C001C
_08042748:
	ldr r0, _0804275C @ =0x002C001D
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080426FC
_08042758:
	pop {r0}
	bx r0
	.align 2, 0
_0804275C: .4byte 0x002C001D

	thumb_func_start sub_08042760
sub_08042760: @ 0x08042760
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x17
	bl EventWinMesSet_08041058
	movs r0, #0x18
	bl EventWinMesSet_08041058
	movs r0, #0x19
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0

	thumb_func_start sub_0804277C
sub_0804277C: @ 0x0804277C
	push {lr}
	bl EventInit_080405B8
	ldr r0, _080427B4 @ =0x0808DC8C
	bl LoadBuildingBG_0804115C
	bl sub_080407FC
	movs r0, #0xa2
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080427BC
	movs r0, #0xa3
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080427BC
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	ldr r0, _080427B8 @ =sub_080426E4
	bl RunEventScript_0804066C
	b _080427C8
	.align 2, 0
_080427B4: .4byte 0x0808DC8C
_080427B8: .4byte sub_080426E4
_080427BC:
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080427DC @ =sub_08042760
	bl RunEventScript_0804066C
_080427C8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080427DC: .4byte sub_08042760
