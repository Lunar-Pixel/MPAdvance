	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08051F90
sub_08051F90: @ 0x08051F90
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x2f
	bl EventWinSpeakerSet_08041018
	movs r0, #0x84
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _08051FE0 @ =0x00210001
	bl EventWinMesSet_08041058
	ldr r0, _08051FE4 @ =0x00210002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051FEC
	ldr r0, _08051FE8 @ =0x00210003
	bl EventWinMesSet_08041058
	b _0805210E
	.align 2, 0
_08051FE0: .4byte 0x00210001
_08051FE4: .4byte 0x00210002
_08051FE8: .4byte 0x00210003
_08051FEC:
	ldr r1, _08052084 @ =0x00210004
	movs r0, #0x20
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051FFC
	b _0805210E
_08051FFC:
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x2f
	bl EventWinSpeakerSet_08041018
	ldr r0, _08052088 @ =0x00210005
	bl EventWinMesSet_08041058
	ldr r0, _0805208C @ =0x00210006
	bl EventWinMesSet_08041058
	ldr r0, _08052090 @ =0x00210007
	bl EventWinMesSet_08041058
	ldr r0, _08052094 @ =0x00210008
	bl EventWinMesSet_08041058
	ldr r0, _08052098 @ =0x00210009
	bl EventWinMesSet_08041058
	ldr r0, _0805209C @ =0x0021000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080520A8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080520A0 @ =0x0021000B
	bl EventWinMesSet_08041058
	ldr r0, _080520A4 @ =0x0021000C
	bl EventWinMesSet_08041058
	b _080520E2
	.align 2, 0
_08052084: .4byte 0x00210004
_08052088: .4byte 0x00210005
_0805208C: .4byte 0x00210006
_08052090: .4byte 0x00210007
_08052094: .4byte 0x00210008
_08052098: .4byte 0x00210009
_0805209C: .4byte 0x0021000A
_080520A0: .4byte 0x0021000B
_080520A4: .4byte 0x0021000C
_080520A8:
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08052114 @ =0x00000121
	bl EventPlaySFX_080410E0
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _08052118 @ =0x00210010
	bl EventWinMesSet_08041058
	ldr r0, _0805211C @ =0x00210011
	bl EventWinMesSet_08041058
_080520E2:
	ldr r0, _08052120 @ =0x0021000D
	bl EventWinMesSet_08041058
	ldr r0, _08052124 @ =0x0021000E
	bl EventWinMesSet_08041058
	ldr r1, _08052128 @ =0x00460031
	movs r0, #0x78
	bl EventMgSpecialGoal_080427E0
	movs r0, #0x2f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805212C @ =0x0021000F
	bl EventWinMesSet_08041058
	movs r0, #0x81
	bl EventSetFlag_080406E4
	movs r0, #0x25
	bl SetCharacterMetFlag_0802D7CC
_0805210E:
	pop {r0}
	bx r0
	.align 2, 0
_08052114: .4byte 0x00000121
_08052118: .4byte 0x00210010
_0805211C: .4byte 0x00210011
_08052120: .4byte 0x0021000D
_08052124: .4byte 0x0021000E
_08052128: .4byte 0x00460031
_0805212C: .4byte 0x0021000F

	thumb_func_start sub_08052130
sub_08052130: @ 0x08052130
	push {lr}
	movs r0, #0x82
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080521D4
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x2f
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080521B8 @ =0x00210012
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080521BC @ =0x00210013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080521C0 @ =0x00210014
	bl EventWinMesSet_08041058
	ldr r0, _080521C4 @ =0x00210015
	bl EventWinMesSet_08041058
	ldr r0, _080521C8 @ =0x00210016
	bl EventWinMesSet_08041058
	ldr r0, _080521CC @ =0x00210017
	bl EventWinMesSet_08041058
	ldr r0, _080521D0 @ =0x00210018
	bl EventWinMesSet_08041058
	movs r0, #0x78
	bl EventSetMinigame_08040B84
	movs r0, #0x83
	bl SetEventFlag_080406BC
	b _0805223E
	.align 2, 0
_080521B8: .4byte 0x00210012
_080521BC: .4byte 0x00210013
_080521C0: .4byte 0x00210014
_080521C4: .4byte 0x00210015
_080521C8: .4byte 0x00210016
_080521CC: .4byte 0x00210017
_080521D0: .4byte 0x00210018
_080521D4:
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl EventSleep_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x2f
	bl EventWinSpeakerSet_08041018
	ldr r0, _08052244 @ =0x00210019
	bl EventWinMesSet_08041058
	ldr r0, _08052248 @ =0x0021001A
	bl EventWinMesSet_08041058
	ldr r0, _0805224C @ =0x0021001B
	bl EventWinMesSet_08041058
	ldr r0, _08052250 @ =0x0021001C
	bl EventWinMesSet_08041058
	movs r0, #0x81
	bl EventUnsetFlag_080406D0
	movs r0, #0x82
	bl EventUnsetFlag_080406D0
	movs r0, #0x83
	bl UnsetEventFlag_080406D0
_0805223E:
	pop {r0}
	bx r0
	.align 2, 0
_08052244: .4byte 0x00210019
_08052248: .4byte 0x0021001A
_0805224C: .4byte 0x0021001B
_08052250: .4byte 0x0021001C

	thumb_func_start sub_08052254
sub_08052254: @ 0x08052254
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x2f
	bl EventWinSpeakerSet_08041018
	ldr r0, _080522A8 @ =0x0021001D
	bl EventWinMesSet_08041058
	ldr r0, _080522AC @ =0x0021001E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080522B0 @ =0x0021001F
	bl EventWinMesSet_08041058
	ldr r0, _080522B4 @ =0x00210020
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080522A8: .4byte 0x0021001D
_080522AC: .4byte 0x0021001E
_080522B0: .4byte 0x0021001F
_080522B4: .4byte 0x00210020

	thumb_func_start sub_080522B8
sub_080522B8: @ 0x080522B8
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08052324 @ =0x0808E2CC
	bl LoadBuildingBG_0804115C
	ldr r2, _08052328 @ =0x0808E9FC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl EventPlaceChara_08041894
	ldr r2, _0805232C @ =0x0808E6BC
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
	movs r0, #0x83
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08052334
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08052330 @ =sub_08052254
	bl RunEventScript_0804066C
	b _0805238C
	.align 2, 0
_08052324: .4byte 0x0808E2CC
_08052328: .4byte 0x0808E9FC
_0805232C: .4byte 0x0808E6BC
_08052330: .4byte sub_08052254
_08052334:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052364
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08052360 @ =sub_08051F90
	bl RunEventScript_0804066C
	movs r0, #0x81
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805238C
	movs r0, #0x78
	bl EventQuestBegin_080406D0
	b _0805238C
	.align 2, 0
_08052360: .4byte sub_08051F90
_08052364:
	movs r0, #0x16
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805237C
	cmp r0, #1
	ble _0805238C
	cmp r0, #2
	beq _08052382
	b _0805238C
_0805237C:
	movs r0, #0x82
	bl EventSetFlag_080406E4
_08052382:
	ldr r0, _080523BC @ =sub_08052130
	bl RunEventScript_0804066C
	bl sub_08040B28
_0805238C:
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
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080523BC: .4byte sub_08052130
