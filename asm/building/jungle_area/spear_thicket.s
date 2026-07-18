	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0805281C
sub_0805281C: @ 0x0805281C
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	bl sub_080407FC
	ldr r5, _080528A4 @ =0x0808E65C
	adds r0, r5, #0
	movs r1, #0x9c
	movs r2, #0x68
	bl DisplayGFX_080414B4
	ldr r4, _080528A8 @ =0x00000212
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x30
	bl EventSleep_08040690
	bl sub_08041560
	movs r0, #0x30
	bl EventSleep_08040690
	adds r0, r5, #0
	movs r1, #0x9c
	movs r2, #0x68
	bl DisplayGFX_080414B4
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x8c
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #2
	bl sub_08041864
	movs r0, #0
	movs r1, #0x8c
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #0xa
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	bl sub_08041560
	movs r0, #0x1e
	bl EventSleep_08040690
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080528A4: .4byte 0x0808E65C
_080528A8: .4byte 0x00000212

	thumb_func_start sub_080528AC
sub_080528AC: @ 0x080528AC
	push {lr}
	bl sub_0805281C
	bl EventWinInit_08040fe8
	movs r0, #0x34
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa0
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805292C @ =0x00280001
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052930 @ =0x00280002
	bl EventWinMesSet_08041058
	ldr r0, _08052934 @ =0x00280003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052940
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052938 @ =0x00280004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805293C @ =0x00280005
	bl EventWinMesSet_08041058
	b _080529C0
	.align 2, 0
_0805292C: .4byte 0x00280001
_08052930: .4byte 0x00280002
_08052934: .4byte 0x00280003
_08052938: .4byte 0x00280004
_0805293C: .4byte 0x00280005
_08052940:
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080529C4 @ =0x00280006
	bl EventWinMesSet_08041058
	ldr r1, _080529C8 @ =0x00280007
	movs r0, #0x27
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080529C0
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x34
	bl EventWinSpeakerSet_08041018
	ldr r0, _080529CC @ =0x00280008
	bl EventWinMesSet_08041058
	ldr r0, _080529D0 @ =0x00280009
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08052994
	ldr r0, _080529D4 @ =0x0028000D
	bl EventWinMesSet_08041058
	ldr r0, _080529D8 @ =0x0028000E
	bl EventWinMesSet_08041058
_08052994:
	ldr r0, _080529DC @ =0x0028000A
	bl EventWinMesSet_08041058
	ldr r0, _080529E0 @ =0x0028000B
	bl EventWinMesSet_08041058
	ldr r1, _080529E4 @ =0x00460020
	movs r0, #0x65
	bl EventMgSpecialGoal_080427E0
	movs r0, #0x34
	bl EventWinSpeakerSet_08041018
	ldr r0, _080529E8 @ =0x0028000C
	bl EventWinMesSet_08041058
	movs r0, #0x96
	bl EventSetFlag_080406E4
	movs r0, #0x30
	bl SetCharacterMetFlag_0802D7CC
_080529C0:
	pop {r0}
	bx r0
	.align 2, 0
_080529C4: .4byte 0x00280006
_080529C8: .4byte 0x00280007
_080529CC: .4byte 0x00280008
_080529D0: .4byte 0x00280009
_080529D4: .4byte 0x0028000D
_080529D8: .4byte 0x0028000E
_080529DC: .4byte 0x0028000A
_080529E0: .4byte 0x0028000B
_080529E4: .4byte 0x00460020
_080529E8: .4byte 0x0028000C

	thumb_func_start sub_080529EC
sub_080529EC: @ 0x080529EC
	push {lr}
	movs r0, #0x97
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08052A58
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x34
	bl EventWinSpeakerSet_08041018
	ldr r0, _08052A48 @ =0x0028000F
	bl EventWinMesSet_08041058
	ldr r0, _08052A4C @ =0x00280010
	bl EventWinMesSet_08041058
	ldr r0, _08052A50 @ =0x00280011
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052A54 @ =0x00280012
	bl EventWinMesSet_08041058
	movs r0, #0x65
	bl EventSetMinigame_08040B84
	movs r0, #0x98
	bl SetEventFlag_080406BC
	b _08052AC0
	.align 2, 0
_08052A48: .4byte 0x0028000F
_08052A4C: .4byte 0x00280010
_08052A50: .4byte 0x00280011
_08052A54: .4byte 0x00280012
_08052A58:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08052AC4 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x34
	bl EventWinSpeakerSet_08041018
	ldr r0, _08052AC8 @ =0x00280013
	bl EventWinMesSet_08041058
	ldr r0, _08052ACC @ =0x00280014
	bl EventWinMesSet_08041058
	ldr r0, _08052AD0 @ =0x00280015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052AD4 @ =0x00280016
	bl EventWinMesSet_08041058
	movs r0, #0x96
	bl EventUnsetFlag_080406D0
	movs r0, #0x97
	bl EventUnsetFlag_080406D0
	movs r0, #0x98
	bl UnsetEventFlag_080406D0
_08052AC0:
	pop {r0}
	bx r0
	.align 2, 0
_08052AC4: .4byte 0x0000011F
_08052AC8: .4byte 0x00280013
_08052ACC: .4byte 0x00280014
_08052AD0: .4byte 0x00280015
_08052AD4: .4byte 0x00280016

	thumb_func_start sub_08052AD8
sub_08052AD8: @ 0x08052AD8
	push {lr}
	bl sub_0805281C
	bl EventWinInit_08040fe8
	movs r0, #0x34
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa0
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _08052B0C @ =0x00280017
	bl EventWinMesSet_08041058
	ldr r0, _08052B10 @ =0x00280018
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08052B0C: .4byte 0x00280017
_08052B10: .4byte 0x00280018

	thumb_func_start sub_08052B14
sub_08052B14: @ 0x08052B14
	push {lr}
	bl sub_0805281C
	bl EventWinInit_08040fe8
	movs r0, #0x34
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa0
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052B84 @ =0x00280019
	bl EventWinMesSet_08041058
	ldr r0, _08052B88 @ =0x0028001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052B8C @ =0x0028001B
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08052B84: .4byte 0x00280019
_08052B88: .4byte 0x0028001A
_08052B8C: .4byte 0x0028001B

	thumb_func_start sub_08052B90
sub_08052B90: @ 0x08052B90
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08052BF8 @ =0x0808E31C
	bl LoadBuildingBG_0804115C
	ldr r2, _08052BFC @ =0x0808EA3C
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
	ldr r2, _08052C00 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x3c
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl GetCharacterID_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08052C08
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08052C04 @ =sub_08052B14
	bl RunEventScript_0804066C
	b _08052C84
	.align 2, 0
_08052BF8: .4byte 0x0808E31C
_08052BFC: .4byte 0x0808EA3C
_08052C00: .4byte 0x0808E6BC
_08052C04: .4byte sub_08052B14
_08052C08:
	movs r0, #0x98
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08052C28
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08052C24 @ =sub_08052AD8
	bl RunEventScript_0804066C
	b _08052C84
	.align 2, 0
_08052C24: .4byte sub_08052AD8
_08052C28:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052C58
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08052C54 @ =sub_080528AC
	bl RunEventScript_0804066C
	movs r0, #0x96
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052C84
	movs r0, #0x65
	bl EventQuestBegin_080406D0
	b _08052C84
	.align 2, 0
_08052C54: .4byte sub_080528AC
_08052C58:
	bl sub_080407FC
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08052C74
	cmp r0, #1
	ble _08052C84
	cmp r0, #2
	beq _08052C7A
	b _08052C84
_08052C74:
	movs r0, #0x97
	bl EventSetFlag_080406E4
_08052C7A:
	ldr r0, _08052CB8 @ =sub_080529EC
	bl RunEventScript_0804066C
	bl sub_08040B28
_08052C84:
	bl sub_080410D0
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
	bl sub_08041560
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08052CB8: .4byte sub_080529EC
