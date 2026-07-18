	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804DA78
sub_0804DA78: @ 0x0804DA78
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0xe
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804DA90
sub_0804DA90: @ 0x0804DA90
	push {lr}
	bl EventWinInit_08040fe8
	ldr r0, _0804DAE0 @ =0x00180013
	bl EventWinMesSet_08041058
	ldr r0, _0804DAE4 @ =0x00180014
	bl EventWinMesSet_08041058
_0804DAA2:
	ldr r0, _0804DAE8 @ =0x00180015
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DAF0
	movs r0, #0x97
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	bl sub_080417E0
	ldr r0, _0804DAEC @ =0x00180016
	bl EventWinMesSet_08041058
	movs r0, #0x5f
	bl EventSetFlag_080406E4
	b _0804DB00
	.align 2, 0
_0804DAE0: .4byte 0x00180013
_0804DAE4: .4byte 0x00180014
_0804DAE8: .4byte 0x00180015
_0804DAEC: .4byte 0x00180016
_0804DAF0:
	ldr r0, _0804DB04 @ =0x00180017
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DAA2
_0804DB00:
	pop {r0}
	bx r0
	.align 2, 0
_0804DB04: .4byte 0x00180017

	thumb_func_start sub_0804DB08
sub_0804DB08: @ 0x0804DB08
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804DB5C @ =0x0808E0C4
	bl LoadBuildingBG_0804115C
	ldr r2, _0804DB60 @ =0x0808E8CC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	movs r0, #0x5e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804DB68
	movs r0, #0x5f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DB68
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	ldr r0, _0804DB64 @ =sub_0804DA90
	bl RunEventScript_0804066C
	b _0804DB74
	.align 2, 0
_0804DB5C: .4byte 0x0808E0C4
_0804DB60: .4byte 0x0808E8CC
_0804DB64: .4byte sub_0804DA90
_0804DB68:
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804DB9C @ =sub_0804DA78
	bl RunEventScript_0804066C
_0804DB74:
	movs r0, #0x1d
	bl SetCharacterMetFlag_0802D7CC
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0804DB9C: .4byte sub_0804DA78
