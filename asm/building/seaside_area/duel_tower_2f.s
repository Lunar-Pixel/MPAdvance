	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0805822C
sub_0805822C: @ 0x0805822C
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	movs r0, #0x94
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _080583C0 @ =0x00250001
	bl EventWinMesSet_08041058
	ldr r1, _080583C4 @ =0x00250002
	movs r0, #0x24
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805826C
	b _080583BA
_0805826C:
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _080583C8 @ =0x00250003
	bl EventWinMesSet_08041058
	ldr r0, _080583CC @ =0x00250004
	bl EventWinMesSet_08041058
	ldr r0, _080583D0 @ =0x00250005
	bl EventWinMesSet_08041058
	ldr r0, _080583D4 @ =0x00250006
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventSleep_08040690
	ldr r0, _080583D8 @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0
	movs r3, #0x28
	bl sub_08041938
	movs r0, #0x78
	bl EventSleep_08040690
	ldr r0, _080583DC @ =0x0000011D
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x59
	movs r3, #0x10
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080583E0 @ =0x00000127
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0x18
	bl sub_080413C0
	bl sub_08041430
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventWinSpeakerSet_08041018
	ldr r0, _080583E4 @ =0x00250007
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080583E8 @ =0x00250008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080583EC @ =0x00250009
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080583F0 @ =0x0025000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08058376
	ldr r0, _080583F4 @ =0x00250010
	bl EventWinMesSet_08041058
_08058376:
	ldr r0, _080583F8 @ =0x0025000B
	bl EventWinMesSet_08041058
	ldr r0, _080583FC @ =0x0025000C
	bl EventWinMesSet_08041058
	ldr r0, _08058400 @ =0x0025000D
	bl EventWinMesSet_08041058
	ldr r0, _08058404 @ =0x0025000E
	bl EventWinMesSet_08041058
	ldr r1, _08058408 @ =0x00460025
	movs r0, #0x6a
	bl EventMgSpecialGoal_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805840C @ =0x0025000F
	bl EventWinMesSet_08041058
	movs r0, #0x8f
	bl EventSetFlag_080406E4
	movs r0, #0x22
	bl SetCharacterMetFlag_0802D7CC
_080583BA:
	pop {r0}
	bx r0
	.align 2, 0
_080583C0: .4byte 0x00250001
_080583C4: .4byte 0x00250002
_080583C8: .4byte 0x00250003
_080583CC: .4byte 0x00250004
_080583D0: .4byte 0x00250005
_080583D4: .4byte 0x00250006
_080583D8: .4byte 0x0000011B
_080583DC: .4byte 0x0000011D
_080583E0: .4byte 0x00000127
_080583E4: .4byte 0x00250007
_080583E8: .4byte 0x00250008
_080583EC: .4byte 0x00250009
_080583F0: .4byte 0x0025000A
_080583F4: .4byte 0x00250010
_080583F8: .4byte 0x0025000B
_080583FC: .4byte 0x0025000C
_08058400: .4byte 0x0025000D
_08058404: .4byte 0x0025000E
_08058408: .4byte 0x00460025
_0805840C: .4byte 0x0025000F

	thumb_func_start sub_08058410
sub_08058410: @ 0x08058410
	push {lr}
	movs r0, #0x90
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08058474
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x30
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058460 @ =0x00250011
	bl EventWinMesSet_08041058
	ldr r0, _08058464 @ =0x00250012
	bl EventWinMesSet_08041058
	ldr r0, _08058468 @ =0x00250013
	bl EventWinMesSet_08041058
	ldr r0, _0805846C @ =0x00250014
	bl EventWinMesSet_08041058
	ldr r0, _08058470 @ =0x00250015
	bl EventWinMesSet_08041058
	bl sub_080406AC
	b _080584C6
	.align 2, 0
_08058460: .4byte 0x00250011
_08058464: .4byte 0x00250012
_08058468: .4byte 0x00250013
_0805846C: .4byte 0x00250014
_08058470: .4byte 0x00250015
_08058474:
	bl EventWinInit_08040fe8
	movs r0, #0x30
	bl EventWinSpeakerSet_08041018
	ldr r0, _080584CC @ =0x00250016
	bl EventWinMesSet_08041058
	ldr r0, _080584D0 @ =0x00250017
	bl EventWinMesSet_08041058
	ldr r0, _080584D4 @ =0x00250018
	bl EventWinMesSet_08041058
	ldr r0, _080584D8 @ =0x00250019
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080584DC @ =0x0025001A
	bl EventWinMesSet_08041058
	movs r0, #0x90
	bl EventUnsetFlag_080406D0
	movs r0, #0x92
	bl EventUnsetFlag_080406D0
	movs r0, #0x95
	bl EventUnsetFlag_080406D0
	movs r0, #0x91
	bl EventUnsetFlag_080406D0
	movs r0, #0x93
	bl UnsetEventFlag_080406D0
_080584C6:
	pop {r0}
	bx r0
	.align 2, 0
_080584CC: .4byte 0x00250016
_080584D0: .4byte 0x00250017
_080584D4: .4byte 0x00250018
_080584D8: .4byte 0x00250019
_080584DC: .4byte 0x0025001A

	thumb_func_start sub_080584E0
sub_080584E0: @ 0x080584E0
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08058548 @ =0x0808E54C
	bl LoadBuildingBG_0804115C
	ldr r2, _0805854C @ =0x0808E8AC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x59
	bl EventPlaceChara_08041894
	ldr r2, _08058550 @ =0x0808EA0C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0
	bl EventPlaceChara_08041894
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058558
	ldr r0, _08058554 @ =sub_0805822C
	bl RunEventScript_0804066C
	movs r0, #0x8f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805858E
	movs r0, #0x6a
	bl EventQuestBegin_080406D0
	b _0805858E
	.align 2, 0
_08058548: .4byte 0x0808E54C
_0805854C: .4byte 0x0808E8AC
_08058550: .4byte 0x0808EA0C
_08058554: .4byte sub_0805822C
_08058558:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x59
	bl EventPlaceChara_08041894
	bl sub_080407FC
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08058594
	cmp r0, #1
	bgt _08058588
	cmp r0, #0
	beq _0805858E
	b _080585C2
_08058588:
	cmp r0, #2
	beq _080585B0
	b _080585C2
_0805858E:
	bl sub_080410D0
	b _080585C2
_08058594:
	movs r0, #0x90
	bl EventSetFlag_080406E4
	ldr r0, _080585AC @ =sub_08058410
	bl RunEventScript_0804066C
	movs r0, #0x39
	movs r1, #8
	bl sub_080068A0
	b _080585C2
	.align 2, 0
_080585AC: .4byte sub_08058410
_080585B0:
	ldr r0, _080585F4 @ =sub_08058410
	bl RunEventScript_0804066C
	bl sub_08040B28
	bl sub_080405AC
	bl sub_080410D0
_080585C2:
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	bl sub_080406AC
	pop {r0}
	bx r0
	.align 2, 0
_080585F4: .4byte sub_08058410
