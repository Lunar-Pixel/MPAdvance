	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804EAD8
sub_0804EAD8: @ 0x0804EAD8
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x27
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804EB7C @ =0x00230008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EB80 @ =0x00230009
	bl EventWinMesSet_08041058
	ldr r1, _0804EB84 @ =0x00230007
	movs r0, #0x22
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804EB76
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x27
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EB88 @ =0x0023000A
	bl EventWinMesSet_08041058
	ldr r0, _0804EB8C @ =0x0023000B
	bl EventWinMesSet_08041058
	ldr r0, _0804EB90 @ =0x0023000C
	bl EventWinMesSet_08041058
	ldr r0, _0804EB94 @ =0x0023000D
	bl EventWinMesSet_08041058
	ldr r0, _0804EB98 @ =0x0023000E
	bl EventWinMesSet_08041058
	ldr r0, _0804EB9C @ =0x0023000F
	bl EventWinMesSet_08041058
	ldr r1, _0804EBA0 @ =0x00460032
	movs r0, #0x79
	bl EventMgSpecialGoal_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x27
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804EBA4 @ =0x00230010
	bl EventWinMesSet_08041058
	movs r0, #0x88
	bl EventSetFlag_080406E4
	movs r0, #5
	bl SetCharacterMetFlag_0802D7CC
_0804EB76:
	pop {r0}
	bx r0
	.align 2, 0
_0804EB7C: .4byte 0x00230008
_0804EB80: .4byte 0x00230009
_0804EB84: .4byte 0x00230007
_0804EB88: .4byte 0x0023000A
_0804EB8C: .4byte 0x0023000B
_0804EB90: .4byte 0x0023000C
_0804EB94: .4byte 0x0023000D
_0804EB98: .4byte 0x0023000E
_0804EB9C: .4byte 0x0023000F
_0804EBA0: .4byte 0x00460032
_0804EBA4: .4byte 0x00230010

	thumb_func_start sub_0804EBA8
sub_0804EBA8: @ 0x0804EBA8
	push {lr}
	movs r0, #0x8a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804EC54
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x27
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EC34 @ =0x00230011
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EC38 @ =0x00230012
	bl EventWinMesSet_08041058
	ldr r0, _0804EC3C @ =0x00230013
	bl EventWinMesSet_08041058
	ldr r0, _0804EC40 @ =0x00230014
	bl EventWinMesSet_08041058
	ldr r0, _0804EC44 @ =0x00230015
	bl EventWinMesSet_08041058
	ldr r0, _0804EC48 @ =0x00230016
	bl EventWinMesSet_08041058
	ldr r0, _0804EC4C @ =0x00230017
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EC50 @ =0x00230018
	bl EventWinMesSet_08041058
	movs r0, #0x79
	bl EventSetMinigame_08040B84
	movs r0, #0x8b
	bl SetEventFlag_080406BC
	b _0804EC94
	.align 2, 0
_0804EC34: .4byte 0x00230011
_0804EC38: .4byte 0x00230012
_0804EC3C: .4byte 0x00230013
_0804EC40: .4byte 0x00230014
_0804EC44: .4byte 0x00230015
_0804EC48: .4byte 0x00230016
_0804EC4C: .4byte 0x00230017
_0804EC50: .4byte 0x00230018
_0804EC54:
	bl EventWinInit_08040fe8
	movs r0, #0x27
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804EC98 @ =0x00230019
	bl EventWinMesSet_08041058
	ldr r0, _0804EC9C @ =0x0023001A
	bl EventWinMesSet_08041058
	ldr r0, _0804ECA0 @ =0x0023001B
	bl EventWinMesSet_08041058
	ldr r0, _0804ECA4 @ =0x0023001C
	bl EventWinMesSet_08041058
	movs r0, #0x87
	bl EventUnsetFlag_080406D0
	movs r0, #0x88
	bl EventUnsetFlag_080406D0
	movs r0, #0x89
	bl EventUnsetFlag_080406D0
	movs r0, #0x8a
	bl EventUnsetFlag_080406D0
	movs r0, #0x8b
	bl UnsetEventFlag_080406D0
_0804EC94:
	pop {r0}
	bx r0
	.align 2, 0
_0804EC98: .4byte 0x00230019
_0804EC9C: .4byte 0x0023001A
_0804ECA0: .4byte 0x0023001B
_0804ECA4: .4byte 0x0023001C

	thumb_func_start sub_0804ECA8
sub_0804ECA8: @ 0x0804ECA8
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804ED00 @ =0x0808E18C
	bl LoadBuildingBG_0804115C
	ldr r2, _0804ED04 @ =0x0808E97C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804ED12
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804ED08 @ =sub_0804EAD8
	bl RunEventScript_0804066C
	movs r0, #0x88
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804ED0C
	movs r0, #0x79
	bl EventQuestBegin_080406D0
	b _0804ED3A
	.align 2, 0
_0804ED00: .4byte 0x0808E18C
_0804ED04: .4byte 0x0808E97C
_0804ED08: .4byte sub_0804EAD8
_0804ED0C:
	bl sub_080405AC
	b _0804ED3A
_0804ED12:
	movs r0, #0x16
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804ED2A
	cmp r0, #1
	ble _0804ED3A
	cmp r0, #2
	beq _0804ED30
	b _0804ED3A
_0804ED2A:
	movs r0, #0x8a
	bl EventSetFlag_080406E4
_0804ED30:
	ldr r0, _0804ED5C @ =sub_0804EBA8
	bl RunEventScript_0804066C
	bl sub_080405AC
_0804ED3A:
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
_0804ED5C: .4byte sub_0804EBA8
