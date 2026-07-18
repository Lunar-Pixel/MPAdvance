	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080576B4
sub_080576B4: @ 0x080576B4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	movs r0, #0xa4
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _080576F8 @ =0x00290001
	bl EventWinMesSet_08041058
	ldr r0, _080576FC @ =0x00290002
	bl EventWinMesSet_08041058
	ldr r0, _08057700 @ =0x00290003
	bl EventWinMesSet_08041058
	ldr r0, _08057704 @ =0x00290004
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057710
	ldr r0, _08057708 @ =0x00290005
	bl EventWinMesSet_08041058
	ldr r0, _0805770C @ =0x00290006
	bl EventWinMesSet_08041058
	b _080577A0
	.align 2, 0
_080576F8: .4byte 0x00290001
_080576FC: .4byte 0x00290002
_08057700: .4byte 0x00290003
_08057704: .4byte 0x00290004
_08057708: .4byte 0x00290005
_0805770C: .4byte 0x00290006
_08057710:
	ldr r0, _08057754 @ =0x00290007
	bl EventWinMesSet_08041058
	ldr r1, _08057758 @ =0x00290008
	movs r0, #0x28
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080577A0
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805775C @ =0x00290009
	bl EventWinMesSet_08041058
	ldr r0, _08057760 @ =0x0029000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057768
	ldr r0, _08057764 @ =0x0029000B
	bl EventWinMesSet_08041058
	b _0805776E
	.align 2, 0
_08057754: .4byte 0x00290007
_08057758: .4byte 0x00290008
_0805775C: .4byte 0x00290009
_08057760: .4byte 0x0029000A
_08057764: .4byte 0x0029000B
_08057768:
	ldr r0, _080577A4 @ =0x00290010
	bl EventWinMesSet_08041058
_0805776E:
	ldr r0, _080577A8 @ =0x0029000C
	bl EventWinMesSet_08041058
	ldr r0, _080577AC @ =0x0029000D
	bl EventWinMesSet_08041058
	ldr r0, _080577B0 @ =0x0029000E
	bl EventWinMesSet_08041058
	ldr r1, _080577B4 @ =0x00460021
	movs r0, #0x66
	bl EventMgSpecialGoal_080427E0
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _080577B8 @ =0x0029000F
	bl EventWinMesSet_08041058
	movs r0, #0x99
	bl EventSetFlag_080406E4
	movs r0, #0xe
	bl SetCharacterMetFlag_0802D7CC
_080577A0:
	pop {r0}
	bx r0
	.align 2, 0
_080577A4: .4byte 0x00290010
_080577A8: .4byte 0x0029000C
_080577AC: .4byte 0x0029000D
_080577B0: .4byte 0x0029000E
_080577B4: .4byte 0x00460021
_080577B8: .4byte 0x0029000F

	thumb_func_start sub_080577BC
sub_080577BC: @ 0x080577BC
	push {lr}
	movs r0, #0x9a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057830
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057818 @ =0x00290011
	bl EventWinMesSet_08041058
	ldr r0, _0805781C @ =0x00290012
	bl EventWinMesSet_08041058
	ldr r0, _08057820 @ =0x00290013
	bl EventWinMesSet_08041058
	ldr r0, _08057824 @ =0x00290014
	bl EventWinMesSet_08041058
	ldr r0, _08057828 @ =0x00290015
	bl EventWinMesSet_08041058
	ldr r0, _0805782C @ =0x00290016
	bl EventWinMesSet_08041058
	movs r0, #0x66
	bl EventSetMinigame_08040B84
	movs r0, #0x9b
	bl SetEventFlag_080406BC
	b _0805786A
	.align 2, 0
_08057818: .4byte 0x00290011
_0805781C: .4byte 0x00290012
_08057820: .4byte 0x00290013
_08057824: .4byte 0x00290014
_08057828: .4byte 0x00290015
_0805782C: .4byte 0x00290016
_08057830:
	bl EventWinInit_08040fe8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057870 @ =0x00290017
	bl EventWinMesSet_08041058
	ldr r0, _08057874 @ =0x00290018
	bl EventWinMesSet_08041058
	ldr r0, _08057878 @ =0x00290019
	bl EventWinMesSet_08041058
	ldr r0, _0805787C @ =0x0029001A
	bl EventWinMesSet_08041058
	ldr r0, _08057880 @ =0x0029001B
	bl EventWinMesSet_08041058
	movs r0, #0x99
	bl EventUnsetFlag_080406D0
	movs r0, #0x9a
	bl EventUnsetFlag_080406D0
	movs r0, #0x9b
	bl UnsetEventFlag_080406D0
_0805786A:
	pop {r0}
	bx r0
	.align 2, 0
_08057870: .4byte 0x00290017
_08057874: .4byte 0x00290018
_08057878: .4byte 0x00290019
_0805787C: .4byte 0x0029001A
_08057880: .4byte 0x0029001B

	thumb_func_start sub_08057884
sub_08057884: @ 0x08057884
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _080578AC @ =0x0029001C
	bl EventWinMesSet_08041058
	ldr r0, _080578B0 @ =0x0029001D
	bl EventWinMesSet_08041058
	ldr r0, _080578B4 @ =0x0029001E
	bl EventWinMesSet_08041058
	ldr r0, _080578B8 @ =0x0029001F
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080578AC: .4byte 0x0029001C
_080578B0: .4byte 0x0029001D
_080578B4: .4byte 0x0029001E
_080578B8: .4byte 0x0029001F

	thumb_func_start sub_080578BC
sub_080578BC: @ 0x080578BC
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08057940 @ =0x0808E4D4
	bl LoadBuildingBG_0804115C
	bl sub_080426DC
	ldr r2, _08057944 @ =0x0808E81C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x60
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	ldr r2, _08057948 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x30
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x9b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057950
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _0805794C @ =sub_08057884
	bl RunEventScript_0804066C
	b _080579A8
	.align 2, 0
_08057940: .4byte 0x0808E4D4
_08057944: .4byte 0x0808E81C
_08057948: .4byte 0x0808E6BC
_0805794C: .4byte sub_08057884
_08057950:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057980
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _0805797C @ =sub_080576B4
	bl RunEventScript_0804066C
	movs r0, #0x99
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080579A8
	movs r0, #0x66
	bl EventQuestBegin_080406D0
	b _080579A8
	.align 2, 0
_0805797C: .4byte sub_080576B4
_08057980:
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08057998
	cmp r0, #1
	ble _080579A8
	cmp r0, #2
	beq _0805799E
	b _080579A8
_08057998:
	movs r0, #0x9a
	bl EventSetFlag_080406E4
_0805799E:
	ldr r0, _080579DC @ =sub_080577BC
	bl RunEventScript_0804066C
	bl sub_08040B28
_080579A8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	bl sub_080426E0
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
	pop {r0}
	bx r0
	.align 2, 0
_080579DC: .4byte sub_080577BC
