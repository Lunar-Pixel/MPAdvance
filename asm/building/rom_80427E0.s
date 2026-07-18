	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start EventMgSpecialGoal_080427E0
EventMgSpecialGoal_080427E0: @ 0x080427E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08041008
	bl EventWinInit_08040fe8
	movs r0, #5
	adds r1, r4, #0
	bl sub_08005BE0
	movs r0, #0x8c
	lsls r0, r0, #0xf
	bl EventWinMesSet_08041058
	adds r0, r5, #0
	bl EventWinMesSet_08041058
	bl sub_08041008
	bl EventWinInit_08040fe8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start QuestFinish_08042814
QuestFinish_08042814: @ 0x08042814
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_08041008
	adds r0, r4, #0
	bl StopSongID_080410C0
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	adds r0, r4, #0
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #4
	adds r1, r5, #0
	bl sub_08005BE0
	movs r0, #0x52
	bl EventWinMesSet_08041058
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	bl EventSetMinigame_08040B84
	bl sub_08041008
	bl EventWinInit_08040fe8
	pop {r4, r5}
	pop {r0}
	bx r0
