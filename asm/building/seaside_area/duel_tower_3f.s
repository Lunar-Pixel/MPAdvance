	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080585F8
sub_080585F8: @ 0x080585F8
	push {lr}
	movs r0, #0x78
	bl EventSleep_08040690
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	movs r0, #0x9c
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _08058704 @ =0x00270001
	bl EventWinMesSet_08041058
	ldr r0, _08058708 @ =0x00270002
	bl EventWinMesSet_08041058
	ldr r1, _0805870C @ =0x00270003
	movs r0, #0x26
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080586FE
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058710 @ =0x00270004
	bl EventWinMesSet_08041058
	ldr r0, _08058714 @ =0x00270005
	bl EventWinMesSet_08041058
	ldr r0, _08058718 @ =0x00270006
	bl EventWinMesSet_08041058
	ldr r0, _0805871C @ =0x00270007
	bl EventWinMesSet_08041058
	ldr r0, _08058720 @ =0x00270008
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xf0
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08058724 @ =0x00270009
	bl EventWinMesSet_08041058
	ldr r0, _08058728 @ =0x0027000A
	bl EventWinMesSet_08041058
	ldr r0, _0805872C @ =0x0027000B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080586BA
	ldr r0, _08058730 @ =0x00270010
	bl EventWinMesSet_08041058
_080586BA:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08058734 @ =0x0027000C
	bl EventWinMesSet_08041058
	ldr r0, _08058738 @ =0x0027000D
	bl EventWinMesSet_08041058
	ldr r0, _0805873C @ =0x0027000E
	bl EventWinMesSet_08041058
	ldr r1, _08058740 @ =0x00460023
	movs r0, #0x68
	bl EventMgSpecialGoal_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058744 @ =0x0027000F
	bl EventWinMesSet_08041058
	movs r0, #0x94
	bl EventSetFlag_080406E4
_080586FE:
	pop {r0}
	bx r0
	.align 2, 0
_08058704: .4byte 0x00270001
_08058708: .4byte 0x00270002
_0805870C: .4byte 0x00270003
_08058710: .4byte 0x00270004
_08058714: .4byte 0x00270005
_08058718: .4byte 0x00270006
_0805871C: .4byte 0x00270007
_08058720: .4byte 0x00270008
_08058724: .4byte 0x00270009
_08058728: .4byte 0x0027000A
_0805872C: .4byte 0x0027000B
_08058730: .4byte 0x00270010
_08058734: .4byte 0x0027000C
_08058738: .4byte 0x0027000D
_0805873C: .4byte 0x0027000E
_08058740: .4byte 0x00460023
_08058744: .4byte 0x0027000F

	thumb_func_start sub_08058748
sub_08058748: @ 0x08058748
	push {lr}
	movs r0, #0x95
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080587D4
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _080587B8 @ =0x00270011
	bl EventWinMesSet_08041058
	ldr r0, _080587BC @ =0x00270012
	bl EventWinMesSet_08041058
	ldr r0, _080587C0 @ =0x00270013
	bl EventWinMesSet_08041058
	ldr r0, _080587C4 @ =0x00270014
	bl EventWinMesSet_08041058
	ldr r0, _080587C8 @ =0x00270015
	bl EventWinMesSet_08041058
	ldr r0, _080587CC @ =0x00270016
	bl EventWinMesSet_08041058
	ldr r0, _080587D0 @ =0x00270017
	bl EventWinMesSet_08041058
	movs r0, #0x67
	bl EventSetMinigame_08040B84
	movs r0, #0x6a
	bl EventSetMinigame_08040B84
	movs r0, #0x68
	bl EventSetMinigame_08040B84
	movs r0, #0x93
	bl SetEventFlag_080406BC
	b _08058814
	.align 2, 0
_080587B8: .4byte 0x00270011
_080587BC: .4byte 0x00270012
_080587C0: .4byte 0x00270013
_080587C4: .4byte 0x00270014
_080587C8: .4byte 0x00270015
_080587CC: .4byte 0x00270016
_080587D0: .4byte 0x00270017
_080587D4:
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058818 @ =0x00270018
	bl EventWinMesSet_08041058
	ldr r0, _0805881C @ =0x00270019
	bl EventWinMesSet_08041058
	ldr r0, _08058820 @ =0x0027001A
	bl EventWinMesSet_08041058
	ldr r0, _08058824 @ =0x0027001B
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
_08058814:
	pop {r0}
	bx r0
	.align 2, 0
_08058818: .4byte 0x00270018
_0805881C: .4byte 0x00270019
_08058820: .4byte 0x0027001A
_08058824: .4byte 0x0027001B

	thumb_func_start sub_08058828
sub_08058828: @ 0x08058828
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0805888C @ =0x0808E574
	bl LoadBuildingBG_0804115C
	ldr r0, _08058890 @ =0x0818B5C0
	movs r1, #0
	movs r2, #0x21
	bl sub_08041464
	ldr r2, _08058894 @ =0x0808E8AC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805889C
	ldr r0, _08058898 @ =sub_080585F8
	bl RunEventScript_0804066C
	movs r0, #0x94
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080588CC
	movs r0, #0x68
	bl EventQuestBegin_080406D0
	b _080588CC
	.align 2, 0
_0805888C: .4byte 0x0808E574
_08058890: .4byte 0x0818B5C0
_08058894: .4byte 0x0808E8AC
_08058898: .4byte sub_080585F8
_0805889C:
	bl sub_080407FC
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080588B8
	cmp r0, #1
	ble _080588CC
	cmp r0, #2
	beq _080588BE
	b _080588CC
_080588B8:
	movs r0, #0x95
	bl EventSetFlag_080406E4
_080588BE:
	ldr r0, _080588F4 @ =sub_08058748
	bl RunEventScript_0804066C
	bl sub_08040B28
	bl sub_080405AC
_080588CC:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_08041498
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080588F4: .4byte sub_08058748
