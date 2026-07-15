	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080500D8
sub_080500D8: @ 0x080500D8
	push {lr}
	movs r0, #0x85
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080501A0
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x14
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08050180 @ =0x00220014
	bl EventWinMesSet_08041058
	ldr r0, _08050184 @ =0x00220015
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08050188 @ =0x00000123
	bl sub_080410E0
	ldr r0, _0805018C @ =0x00220016
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08050190 @ =0x00220017
	bl EventWinMesSet_08041058
	ldr r0, _08050194 @ =0x00220018
	bl EventWinMesSet_08041058
	ldr r0, _08050198 @ =0x00220019
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805019C @ =0x0022001A
	bl EventWinMesSet_08041058
	movs r0, #0x77
	bl EventSetMinigame_08040B84
	movs r0, #0x86
	bl SetEventFlag_080406BC
	b _08050202
	.align 2, 0
_08050180: .4byte 0x00220014
_08050184: .4byte 0x00220015
_08050188: .4byte 0x00000123
_0805018C: .4byte 0x00220016
_08050190: .4byte 0x00220017
_08050194: .4byte 0x00220018
_08050198: .4byte 0x00220019
_0805019C: .4byte 0x0022001A
_080501A0:
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08050208 @ =0x00000121
	bl sub_080410E0
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x14
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805020C @ =0x0022001B
	bl EventWinMesSet_08041058
	ldr r0, _08050210 @ =0x0022001C
	bl EventWinMesSet_08041058
	ldr r0, _08050214 @ =0x0022001D
	bl EventWinMesSet_08041058
	ldr r0, _08050218 @ =0x0022001E
	bl EventWinMesSet_08041058
	ldr r0, _0805021C @ =0x0022001F
	bl EventWinMesSet_08041058
	movs r0, #0x84
	bl EventUnsetFlag_080406D0
	movs r0, #0x85
	bl EventUnsetFlag_080406D0
	movs r0, #0x86
	bl UnsetEventFlag_080406D0
_08050202:
	pop {r0}
	bx r0
	.align 2, 0
_08050208: .4byte 0x00000121
_0805020C: .4byte 0x0022001B
_08050210: .4byte 0x0022001C
_08050214: .4byte 0x0022001D
_08050218: .4byte 0x0022001E
_0805021C: .4byte 0x0022001F

	thumb_func_start sub_08050220
sub_08050220: @ 0x08050220
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x14
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805026C @ =0x00220020
	bl EventWinMesSet_08041058
	ldr r0, _08050270 @ =0x00220021
	bl EventWinMesSet_08041058
	ldr r0, _08050274 @ =0x00220022
	bl EventWinMesSet_08041058
	ldr r0, _08050278 @ =0x00220023
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805026C: .4byte 0x00220020
_08050270: .4byte 0x00220021
_08050274: .4byte 0x00220022
_08050278: .4byte 0x00220023

	thumb_func_start sub_0805027C
sub_0805027C: @ 0x0805027C
	push {lr}
	bl EventInit_080405B8
	ldr r0, _080502E4 @ =0x0808E204
	bl LoadBuildingBG_0804115C
	ldr r2, _080502E8 @ =0x0808E86C
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
	ldr r2, _080502EC @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x34
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0x86
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080502F4
	movs r0, #0x1b
	bl EventBGMPlay_080410A8
	ldr r0, _080502F0 @ =sub_08050220
	bl RunEventScript_0804066C
	b _0805035C
	.align 2, 0
_080502E4: .4byte 0x0808E204
_080502E8: .4byte 0x0808E86C
_080502EC: .4byte 0x0808E6BC
_080502F0: .4byte sub_08050220
_080502F4:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050324
	movs r0, #0x1b
	bl EventBGMPlay_080410A8
	ldr r0, _08050320 @ =sub_0804FF04
	bl RunEventScript_0804066C
	movs r0, #0x84
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805035C
	movs r0, #0x77
	bl EventQuestBegin_080406D0
	b _0805035C
	.align 2, 0
_08050320: .4byte sub_0804FF04
_08050324:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x16
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805034C
	cmp r0, #1
	ble _0805035C
	cmp r0, #2
	beq _08050352
	b _0805035C
_0805034C:
	movs r0, #0x85
	bl EventSetFlag_080406E4
_08050352:
	ldr r0, _0805038C @ =sub_080500D8
	bl RunEventScript_0804066C
	bl sub_08040B28
_0805035C:
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
_0805038C: .4byte sub_080500D8

	thumb_func_start sub_08050390
sub_08050390: @ 0x08050390
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08050424 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	movs r0, #0xf0
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	ldr r0, _08050428 @ =0x000F0001
	bl EventWinMesSet_08041058
	ldr r0, _0805042C @ =0x000F0002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050434
	ldr r0, _08050430 @ =0x000F0003
	bl EventWinMesSet_08041058
	b _080504B8
	.align 2, 0
_08050424: .4byte 0x0000011F
_08050428: .4byte 0x000F0001
_0805042C: .4byte 0x000F0002
_08050430: .4byte 0x000F0003
_08050434:
	ldr r1, _0805047C @ =0x000F0004
	movs r0, #0xe
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080504B8
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050480 @ =0x000F0005
	bl EventWinMesSet_08041058
	ldr r0, _08050484 @ =0x000F0006
	bl EventWinMesSet_08041058
	ldr r0, _08050488 @ =0x000F0007
	bl EventWinMesSet_08041058
	ldr r0, _0805048C @ =0x000F0008
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050494
	ldr r0, _08050490 @ =0x000F0009
	bl EventWinMesSet_08041058
	b _080504A0
	.align 2, 0
_0805047C: .4byte 0x000F0004
_08050480: .4byte 0x000F0005
_08050484: .4byte 0x000F0006
_08050488: .4byte 0x000F0007
_0805048C: .4byte 0x000F0008
_08050490: .4byte 0x000F0009
_08050494:
	ldr r0, _080504BC @ =0x000F000C
	bl EventWinMesSet_08041058
	ldr r0, _080504C0 @ =0x000F000D
	bl EventWinMesSet_08041058
_080504A0:
	ldr r0, _080504C4 @ =0x000F000A
	bl EventWinMesSet_08041058
	ldr r0, _080504C8 @ =0x000F000B
	bl EventWinMesSet_08041058
	movs r0, #0x3a
	bl EventSetFlag_080406E4
	movs r0, #0x14
	bl SetCharacterMetFlag_0802D7CC
_080504B8:
	pop {r0}
	bx r0
	.align 2, 0
_080504BC: .4byte 0x000F000C
_080504C0: .4byte 0x000F000D
_080504C4: .4byte 0x000F000A
_080504C8: .4byte 0x000F000B

	thumb_func_start sub_080504CC
sub_080504CC: @ 0x080504CC
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	movs r0, #0x3b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08050530
	ldr r0, _0805051C @ =0x000F000E
	bl EventWinMesSet_08041058
	ldr r0, _08050520 @ =0x000F000F
	bl EventWinMesSet_08041058
	ldr r0, _08050524 @ =0x000F0010
	bl EventWinMesSet_08041058
	movs r0, #0x11
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050528 @ =0x000F0011
	bl EventWinMesSet_08041058
	ldr r0, _0805052C @ =0x000F0012
	bl EventWinMesSet_08041058
	movs r0, #0x3d
	bl SetEventFlag_080406BC
	b _08050566
	.align 2, 0
_0805051C: .4byte 0x000F000E
_08050520: .4byte 0x000F000F
_08050524: .4byte 0x000F0010
_08050528: .4byte 0x000F0011
_0805052C: .4byte 0x000F0012
_08050530:
	ldr r0, _0805056C @ =0x000F0013
	bl EventWinMesSet_08041058
	ldr r0, _08050570 @ =0x000F0014
	bl EventWinMesSet_08041058
	ldr r0, _08050574 @ =0x000F0015
	bl EventWinMesSet_08041058
	ldr r0, _08050578 @ =0x000F0016
	bl EventWinMesSet_08041058
	ldr r0, _0805057C @ =0x000F0017
	bl EventWinMesSet_08041058
	movs r0, #0x3a
	bl EventUnsetFlag_080406D0
	movs r0, #0x3b
	bl EventUnsetFlag_080406D0
	movs r0, #0x3c
	bl EventUnsetFlag_080406D0
	movs r0, #0x3d
	bl UnsetEventFlag_080406D0
_08050566:
	pop {r0}
	bx r0
	.align 2, 0
_0805056C: .4byte 0x000F0013
_08050570: .4byte 0x000F0014
_08050574: .4byte 0x000F0015
_08050578: .4byte 0x000F0016
_0805057C: .4byte 0x000F0017

	thumb_func_start sub_08050580
sub_08050580: @ 0x08050580
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	ldr r0, _080505D4 @ =0x000F0018
	bl EventWinMesSet_08041058
	ldr r0, _080505D8 @ =0x000F0019
	bl EventWinMesSet_08041058
	ldr r0, _080505DC @ =0x000F001A
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080505D4: .4byte 0x000F0018
_080505D8: .4byte 0x000F0019
_080505DC: .4byte 0x000F001A

	thumb_func_start sub_080505E0
sub_080505E0: @ 0x080505E0
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0805064C @ =0x0808E22C
	bl LoadBuildingBG_0804115C
	ldr r2, _08050650 @ =0x0808E99C
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
	ldr r2, _08050654 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x3d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805065C
	movs r0, #0x1b
	bl EventBGMPlay_080410A8
	ldr r0, _08050658 @ =sub_08050580
	bl RunEventScript_0804066C
	b _080506AE
	.align 2, 0
_0805064C: .4byte 0x0808E22C
_08050650: .4byte 0x0808E99C
_08050654: .4byte 0x0808E6BC
_08050658: .4byte sub_08050580
_0805065C:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805068C
	movs r0, #0x1b
	bl EventBGMPlay_080410A8
	ldr r0, _08050688 @ =sub_08050390
	bl RunEventScript_0804066C
	movs r0, #0x3a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080506AE
	movs r0, #6
	bl sub_08040F18
	b _080506AE
	.align 2, 0
_08050688: .4byte sub_08050390
_0805068C:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080506A4
	movs r0, #0x3b
	bl EventSetFlag_080406E4
_080506A4:
	ldr r0, _080506E0 @ =sub_080504CC
	bl RunEventScript_0804066C
	bl sub_08040F0C
_080506AE:
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
_080506E0: .4byte sub_080504CC

	thumb_func_start sub_080506E4
sub_080506E4: @ 0x080506E4
	push {lr}
	bl sub_080407FC
	ldr r0, _08050878 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_080410E0
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	movs r0, #0xb0
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805087C @ =0x00160001
	bl EventWinMesSet_08041058
	ldr r0, _08050880 @ =0x00160002
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08050884 @ =0x00160003
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #8
	bl EventAnimateChara_080418C8
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050888 @ =0x00160004
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805088C @ =0x00160005
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050890 @ =0x00160006
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050894 @ =0x00160007
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050898 @ =0x00160008
	bl EventWinMesSet_08041058
	ldr r0, _0805089C @ =0x00160009
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080508B0
	ldr r0, _080508A0 @ =0x0016000A
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080508A4 @ =0x0016000B
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080508A8 @ =0x0016000C
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080508AC @ =0x0016000D
	bl EventWinMesSet_08041058
	b _080509DC
	.align 2, 0
_08050878: .4byte 0x0000011B
_0805087C: .4byte 0x00160001
_08050880: .4byte 0x00160002
_08050884: .4byte 0x00160003
_08050888: .4byte 0x00160004
_0805088C: .4byte 0x00160005
_08050890: .4byte 0x00160006
_08050894: .4byte 0x00160007
_08050898: .4byte 0x00160008
_0805089C: .4byte 0x00160009
_080508A0: .4byte 0x0016000A
_080508A4: .4byte 0x0016000B
_080508A8: .4byte 0x0016000C
_080508AC: .4byte 0x0016000D
_080508B0:
	ldr r1, _08050950 @ =0x0016000E
	movs r0, #0x15
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080508C0
	b _080509DC
_080508C0:
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050954 @ =0x0016000F
	bl EventWinMesSet_08041058
	ldr r0, _08050958 @ =0x00160010
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805095C @ =0x00160011
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050960 @ =0x00160012
	bl EventWinMesSet_08041058
	ldr r0, _08050964 @ =0x00160013
	bl EventWinMesSet_08041058
	ldr r0, _08050968 @ =0x00160014
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050988
	ldr r0, _0805096C @ =0x00160015
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050970 @ =0x00160016
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050974 @ =0x00160017
	bl EventWinMesSet_08041058
	ldr r0, _08050978 @ =0x00160018
	bl EventWinMesSet_08041058
	ldr r0, _0805097C @ =0x00160019
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050980 @ =0x0016001A
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050984 @ =0x0016001B
	bl EventWinMesSet_08041058
	b _080509CA
	.align 2, 0
_08050950: .4byte 0x0016000E
_08050954: .4byte 0x0016000F
_08050958: .4byte 0x00160010
_0805095C: .4byte 0x00160011
_08050960: .4byte 0x00160012
_08050964: .4byte 0x00160013
_08050968: .4byte 0x00160014
_0805096C: .4byte 0x00160015
_08050970: .4byte 0x00160016
_08050974: .4byte 0x00160017
_08050978: .4byte 0x00160018
_0805097C: .4byte 0x00160019
_08050980: .4byte 0x0016001A
_08050984: .4byte 0x0016001B
_08050988:
	ldr r0, _080509E0 @ =0x0016001C
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080509E4 @ =0x0016001D
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080509E8 @ =0x0016001E
	bl EventWinMesSet_08041058
	ldr r0, _080509EC @ =0x0016001F
	bl EventWinMesSet_08041058
	ldr r0, _080509F0 @ =0x00160020
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080509F4 @ =0x00160021
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080509F8 @ =0x00160022
	bl EventWinMesSet_08041058
_080509CA:
	movs r0, #0x55
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_080509DC:
	pop {r0}
	bx r0
	.align 2, 0
_080509E0: .4byte 0x0016001C
_080509E4: .4byte 0x0016001D
_080509E8: .4byte 0x0016001E
_080509EC: .4byte 0x0016001F
_080509F0: .4byte 0x00160020
_080509F4: .4byte 0x00160021
_080509F8: .4byte 0x00160022

	thumb_func_start sub_080509FC
sub_080509FC: @ 0x080509FC
	push {lr}
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08050A98 @ =0x00160025
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050A9C @ =0x00160026
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050AA0 @ =0x00160027
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050AA4 @ =0x00160028
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050AA8 @ =0x00160029
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08050A98: .4byte 0x00160025
_08050A9C: .4byte 0x00160026
_08050AA0: .4byte 0x00160027
_08050AA4: .4byte 0x00160028
_08050AA8: .4byte 0x00160029

	thumb_func_start sub_08050AAC
sub_08050AAC: @ 0x08050AAC
	push {lr}
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C40 @ =0x00160023
	bl EventWinMesSet_08041058
	ldr r0, _08050C44 @ =0x00160024
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08050ACE
	b _08050C36
_08050ACE:
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C48 @ =0x0016002A
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C4C @ =0x0016002B
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C50 @ =0x0016002C
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08050C54 @ =0x0016002D
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C58 @ =0x0016002E
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C5C @ =0x0016002F
	bl EventWinMesSet_08041058
	ldr r0, _08050C60 @ =0x00160030
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08050C36
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C64 @ =0x00160031
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C68 @ =0x00160032
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C6C @ =0x00160033
	bl EventWinMesSet_08041058
	ldr r0, _08050C70 @ =0x00160034
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C74 @ =0x00160035
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050C78 @ =0x00160036
	bl EventWinMesSet_08041058
	ldr r0, _08050C7C @ =0x00160037
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08050C84
_08050C36:
	ldr r0, _08050C80 @ =sub_080509FC
	bl RunEventScript_0804066C
	b _08050E7C
	.align 2, 0
_08050C40: .4byte 0x00160023
_08050C44: .4byte 0x00160024
_08050C48: .4byte 0x0016002A
_08050C4C: .4byte 0x0016002B
_08050C50: .4byte 0x0016002C
_08050C54: .4byte 0x0016002D
_08050C58: .4byte 0x0016002E
_08050C5C: .4byte 0x0016002F
_08050C60: .4byte 0x00160030
_08050C64: .4byte 0x00160031
_08050C68: .4byte 0x00160032
_08050C6C: .4byte 0x00160033
_08050C70: .4byte 0x00160034
_08050C74: .4byte 0x00160035
_08050C78: .4byte 0x00160036
_08050C7C: .4byte 0x00160037
_08050C80: .4byte sub_080509FC
_08050C84:
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050E80 @ =0x00160038
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050E84 @ =0x00160039
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050E88 @ =0x0016003A
	bl EventWinMesSet_08041058
	ldr r0, _08050E8C @ =0x0016003B
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050E90 @ =0x0016003C
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050E94 @ =0x0016003D
	bl EventWinMesSet_08041058
	ldr r0, _08050E98 @ =0x0016003E
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050E9C @ =0x0016003F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050EA0 @ =0x00160040
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050EA4 @ =0x00160041
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r1, _08050EA8 @ =0x00460028
	movs r0, #0x6d
	bl EventMgSpecialGoal_080427E0
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050EAC @ =0x00160042
	bl EventWinMesSet_08041058
	bl sub_08040BB8
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08050EB0 @ =0x00160043
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050EB4 @ =0x00160044
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050EB8 @ =0x00160045
	bl EventWinMesSet_08041058
	movs r0, #0x56
	bl EventSetFlag_080406E4
_08050E7C:
	pop {r0}
	bx r0
	.align 2, 0
_08050E80: .4byte 0x00160038
_08050E84: .4byte 0x00160039
_08050E88: .4byte 0x0016003A
_08050E8C: .4byte 0x0016003B
_08050E90: .4byte 0x0016003C
_08050E94: .4byte 0x0016003D
_08050E98: .4byte 0x0016003E
_08050E9C: .4byte 0x0016003F
_08050EA0: .4byte 0x00160040
_08050EA4: .4byte 0x00160041
_08050EA8: .4byte 0x00460028
_08050EAC: .4byte 0x00160042
_08050EB0: .4byte 0x00160043
_08050EB4: .4byte 0x00160044
_08050EB8: .4byte 0x00160045

	thumb_func_start sub_08050EBC
sub_08050EBC: @ 0x08050EBC
	push {lr}
	movs r0, #0x57
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08050ECE
	b _0805106C
_08050ECE:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051044 @ =0x00160046
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051048 @ =0x00160047
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805104C @ =0x00160048
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051050 @ =0x00160049
	bl EventWinMesSet_08041058
	movs r0, #0x26
	movs r1, #0x13
	bl QuestFinish_08042814
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051054 @ =0x0016004A
	bl EventWinMesSet_08041058
	ldr r0, _08051058 @ =0x0016004B
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805105C @ =0x0016004C
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051060 @ =0x0016004D
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051064 @ =0x0016004E
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051068 @ =0x0016004F
	bl EventWinMesSet_08041058
	movs r0, #0x6d
	bl EventSetMinigame_08040B84
	movs r0, #0x58
	bl SetEventFlag_080406BC
	b _0805112A
	.align 2, 0
_08051044: .4byte 0x00160046
_08051048: .4byte 0x00160047
_0805104C: .4byte 0x00160048
_08051050: .4byte 0x00160049
_08051054: .4byte 0x0016004A
_08051058: .4byte 0x0016004B
_0805105C: .4byte 0x0016004C
_08051060: .4byte 0x0016004D
_08051064: .4byte 0x0016004E
_08051068: .4byte 0x0016004F
_0805106C:
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051130 @ =0x00160050
	bl EventWinMesSet_08041058
	ldr r0, _08051134 @ =0x00160051
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051138 @ =0x00160052
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805113C @ =0x00160053
	bl EventWinMesSet_08041058
	ldr r0, _08051140 @ =0x00160054
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051144 @ =0x00160055
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051148 @ =0x00160056
	bl EventWinMesSet_08041058
	movs r0, #0x55
	bl EventUnsetFlag_080406D0
	movs r0, #0x56
	bl EventUnsetFlag_080406D0
	movs r0, #0x57
	bl EventUnsetFlag_080406D0
	movs r0, #0x58
	bl UnsetEventFlag_080406D0
_0805112A:
	pop {r0}
	bx r0
	.align 2, 0
_08051130: .4byte 0x00160050
_08051134: .4byte 0x00160051
_08051138: .4byte 0x00160052
_0805113C: .4byte 0x00160053
_08051140: .4byte 0x00160054
_08051144: .4byte 0x00160055
_08051148: .4byte 0x00160056

	thumb_func_start sub_0805114C
sub_0805114C: @ 0x0805114C
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805118C @ =0x00160057
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051190 @ =0x00160058
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051194 @ =0x00160059
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051198 @ =0x0016005A
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805118C: .4byte 0x00160057
_08051190: .4byte 0x00160058
_08051194: .4byte 0x00160059
_08051198: .4byte 0x0016005A

	thumb_func_start sub_0805119C
sub_0805119C: @ 0x0805119C
	push {lr}
	bl EventInit_080405B8
	ldr r0, _080512C4 @ =0x0808E254
	bl LoadBuildingBG_0804115C
	movs r1, #0x80
	lsls r1, r1, #0xb
	movs r0, #0
	movs r2, #0
	bl sub_080412A0
	ldr r0, _080512C8 @ =0x0808E62C
	movs r1, #0x78
	movs r2, #0x68
	bl DisplayGFX_080414B4
	ldr r2, _080512CC @ =0x0808E7BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0x9c
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _080512D0 @ =0x0808E7CC
	movs r0, #4
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #3
	bl sub_08041864
	movs r0, #4
	movs r1, #0x9c
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _080512D4 @ =0x0808E70C
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #3
	bl sub_08041864
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _080512D8 @ =0x0808E72C
	movs r0, #5
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #3
	bl sub_08041864
	movs r0, #5
	movs r1, #0x60
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _080512DC @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #2
	bl sub_08041864
	ldr r0, _080512E0 @ =0x0000012F
	bl sub_080410E0
	movs r0, #0x58
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080512E8
	movs r0, #0x1b
	bl EventBGMPlay_080410A8
	ldr r0, _080512E4 @ =sub_0805114C
	bl RunEventScript_0804066C
	b _080513A2
	.align 2, 0
_080512C4: .4byte 0x0808E254
_080512C8: .4byte 0x0808E62C
_080512CC: .4byte 0x0808E7BC
_080512D0: .4byte 0x0808E7CC
_080512D4: .4byte 0x0808E70C
_080512D8: .4byte 0x0808E72C
_080512DC: .4byte 0x0808EA6C
_080512E0: .4byte 0x0000012F
_080512E4: .4byte sub_0805114C
_080512E8:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051346
	movs r0, #0x1b
	bl EventBGMPlay_080410A8
	ldr r0, _08051324 @ =sub_080506E4
	bl RunEventScript_0804066C
	movs r0, #0x55
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080513A2
	ldr r0, _08051328 @ =sub_08050AAC
	bl RunEventScript_0804066C
	movs r0, #0x56
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805132C
	movs r0, #0x6d
	bl EventQuestBegin_080406D0
	b _080513A2
	.align 2, 0
_08051324: .4byte sub_080506E4
_08051328: .4byte sub_08050AAC
_0805132C:
	movs r0, #0x55
	bl EventUnsetFlag_080406D0
	movs r0, #0x56
	bl EventUnsetFlag_080406D0
	movs r0, #0x57
	bl EventUnsetFlag_080406D0
	movs r0, #0x58
	bl UnsetEventFlag_080406D0
	b _080513A2
_08051346:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x13
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08051392
	cmp r0, #1
	ble _080513A2
	cmp r0, #2
	beq _08051398
	b _080513A2
_08051392:
	movs r0, #0x57
	bl EventSetFlag_080406E4
_08051398:
	ldr r0, _08051404 @ =sub_08050EBC
	bl RunEventScript_0804066C
	bl sub_08040B28
_080513A2:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_08041310
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08051404: .4byte sub_08050EBC

	thumb_func_start sub_08051408
sub_08051408: @ 0x08051408
	push {lr}
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0
	bl EventPlaceChara_08041894
	bl sub_080407FC
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #0x50
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xa
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051480 @ =0x00030001
	bl EventWinMesSet_08041058
	ldr r0, _08051484 @ =0x00030002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805148C
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051488 @ =0x00030003
	bl EventWinMesSet_08041058
	b _080517C4
	.align 2, 0
_08051480: .4byte 0x00030001
_08051484: .4byte 0x00030002
_08051488: .4byte 0x00030003
_0805148C:
	ldr r1, _080516E0 @ =0x00030004
	movs r0, #2
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805149C
	b _080517C4
_0805149C:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _080516E4 @ =0x00030005
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080516E8 @ =0x00030006
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0x2c
	movs r3, #0x5a
	bl sub_08041938
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0x58
	movs r3, #0x5a
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0xa0
	movs r2, #0x58
	movs r3, #0x78
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _080516EC @ =0x00030007
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080516F0 @ =0x00030008
	bl EventWinMesSet_08041058
	ldr r0, _080516F4 @ =0x00030009
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _080516F8 @ =0x0003000A
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080516FC @ =0x0003000B
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051700 @ =0x0003000C
	bl EventWinMesSet_08041058
	ldr r0, _08051704 @ =0x0003000D
	bl EventWinMesSet_08041058
	ldr r0, _08051708 @ =0x0003000E
	bl EventWinMesSet_08041058
	ldr r0, _0805170C @ =0x0808E63C
	movs r1, #0x78
	movs r2, #0x40
	bl DisplayGFX_080414B4
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051710 @ =0x0003000F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x98
	movs r2, #0x58
	movs r3, #0x3c
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x58
	movs r3, #0x3c
	bl sub_08041938
	bl sub_08041560
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051714 @ =0x00030010
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #3
	movs r1, #0x94
	movs r2, #0x30
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0xf0
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051718 @ =0x00030011
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805171C @ =0x00030012
	bl EventWinMesSet_08041058
	ldr r0, _08051720 @ =0x00030013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051724 @ =0x00030014
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08051728 @ =0x00030015
	bl EventWinMesSet_08041058
	ldr r0, _0805172C @ =0x00030016
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051734
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051730 @ =0x00030017
	bl EventWinMesSet_08041058
	b _08051746
	.align 2, 0
_080516E0: .4byte 0x00030004
_080516E4: .4byte 0x00030005
_080516E8: .4byte 0x00030006
_080516EC: .4byte 0x00030007
_080516F0: .4byte 0x00030008
_080516F4: .4byte 0x00030009
_080516F8: .4byte 0x0003000A
_080516FC: .4byte 0x0003000B
_08051700: .4byte 0x0003000C
_08051704: .4byte 0x0003000D
_08051708: .4byte 0x0003000E
_0805170C: .4byte 0x0808E63C
_08051710: .4byte 0x0003000F
_08051714: .4byte 0x00030010
_08051718: .4byte 0x00030011
_0805171C: .4byte 0x00030012
_08051720: .4byte 0x00030013
_08051724: .4byte 0x00030014
_08051728: .4byte 0x00030015
_0805172C: .4byte 0x00030016
_08051730: .4byte 0x00030017
_08051734:
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080517C8 @ =0x00030020
	bl EventWinMesSet_08041058
_08051746:
	ldr r0, _080517CC @ =0x00030018
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080517D0 @ =0x00030019
	bl EventWinMesSet_08041058
	ldr r0, _080517D4 @ =0x0003001A
	bl EventWinMesSet_08041058
	ldr r0, _080517D8 @ =0x0003001B
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080517DC @ =0x0003001C
	bl EventWinMesSet_08041058
	ldr r0, _080517E0 @ =0x0003001D
	bl EventWinChoice_0804106C
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080517E4 @ =0x0003001E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _080517E8 @ =0x0003001F
	bl EventWinMesSet_08041058
	movs r0, #0xb
	bl EventSetFlag_080406E4
	movs r0, #7
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #4
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x32
	bl SetCharacterMetFlag_0802D7CC
_080517C4:
	pop {r0}
	bx r0
	.align 2, 0
_080517C8: .4byte 0x00030020
_080517CC: .4byte 0x00030018
_080517D0: .4byte 0x00030019
_080517D4: .4byte 0x0003001A
_080517D8: .4byte 0x0003001B
_080517DC: .4byte 0x0003001C
_080517E0: .4byte 0x0003001D
_080517E4: .4byte 0x0003001E
_080517E8: .4byte 0x0003001F

	thumb_func_start sub_080517EC
sub_080517EC: @ 0x080517EC
	push {lr}
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051884 @ =0x00030021
	bl EventWinMesSet_08041058
	ldr r0, _08051888 @ =0x00030022
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805188C @ =0x0003001C
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051890 @ =0x0003001D
	bl EventWinChoice_0804106C
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051894 @ =0x00030023
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051898 @ =0x0003000B
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08051884: .4byte 0x00030021
_08051888: .4byte 0x00030022
_0805188C: .4byte 0x0003001C
_08051890: .4byte 0x0003001D
_08051894: .4byte 0x00030023
_08051898: .4byte 0x0003000B

	thumb_func_start sub_0805189C
sub_0805189C: @ 0x0805189C
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x88
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051930 @ =0x00030031
	bl EventWinMesSet_08041058
	ldr r0, _08051934 @ =0x00030032
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl EventAnimateChara_080418C8
	ldr r0, _08051938 @ =0x00030033
	bl EventWinMesSet_08041058
	ldr r0, _0805193C @ =0x00030034
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051940 @ =0x00030035
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	pop {r0}
	bx r0
	.align 2, 0
_08051930: .4byte 0x00030031
_08051934: .4byte 0x00030032
_08051938: .4byte 0x00030033
_0805193C: .4byte 0x00030034
_08051940: .4byte 0x00030035

	thumb_func_start sub_08051944
sub_08051944: @ 0x08051944
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _080519D4 @ =0x0808E27C
	bl LoadBuildingBG_0804115C
	ldr r4, _080519D8 @ =0x0808E8EC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	ldr r2, _080519DC @ =0x0808EA4C
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	ldr r2, _080519E0 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0xd
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080519E8
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _080519E4 @ =sub_0805189C
	bl RunEventScript_0804066C
	b _08051A14
	.align 2, 0
_080519D4: .4byte 0x0808E27C
_080519D8: .4byte 0x0808E8EC
_080519DC: .4byte 0x0808EA4C
_080519E0: .4byte 0x0808E6BC
_080519E4: .4byte sub_0805189C
_080519E8:
	movs r0, #0xb
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051A08
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08051A04 @ =sub_08051408
	bl RunEventScript_0804066C
	b _08051A14
	.align 2, 0
_08051A04: .4byte sub_08051408
_08051A08:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _08051A64 @ =sub_080517EC
	bl RunEventScript_0804066C
_08051A14:
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051A64: .4byte sub_080517EC

	thumb_func_start sub_08051A68
sub_08051A68: @ 0x08051A68
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x60
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x5c
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x5c
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x60
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #2
	bl sub_08041938
	movs r0, #0x1e
	bl EventSleep_08040690
	pop {r0}
	bx r0

	thumb_func_start sub_08051B70
sub_08051B70: @ 0x08051B70
	push {lr}
	bl sub_08051A68
	bl sub_08051A68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08051BDC @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	movs r0, #0xd0
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	ldr r0, _08051BE0 @ =0x000D0001
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08051BE8
	ldr r0, _08051BE4 @ =0x000D0002
	bl EventWinMesSet_08041058
	b _08051CCC
	.align 2, 0
_08051BDC: .4byte 0x0000011F
_08051BE0: .4byte 0x000D0001
_08051BE4: .4byte 0x000D0002
_08051BE8:
	ldr r1, _08051C60 @ =0x000D0003
	movs r0, #0xc
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051CCC
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051C64 @ =0x000D0004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051C68 @ =0x000D0005
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051C6C @ =0x000D0006
	bl EventWinMesSet_08041058
	ldr r0, _08051C70 @ =0x000D0007
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051C78
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051C74 @ =0x000D0008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	b _08051C84
	.align 2, 0
_08051C60: .4byte 0x000D0003
_08051C64: .4byte 0x000D0004
_08051C68: .4byte 0x000D0005
_08051C6C: .4byte 0x000D0006
_08051C70: .4byte 0x000D0007
_08051C74: .4byte 0x000D0008
_08051C78:
	ldr r0, _08051CD0 @ =0x000D000C
	bl EventWinMesSet_08041058
	ldr r0, _08051CD4 @ =0x000D000D
	bl EventWinMesSet_08041058
_08051C84:
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051CD8 @ =0x000D0009
	bl EventWinMesSet_08041058
	ldr r0, _08051CDC @ =0x000D000A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051CE0 @ =0x000D000B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0x32
	bl EventSetFlag_080406E4
	movs r0, #0x20
	bl SetCharacterMetFlag_0802D7CC
_08051CCC:
	pop {r0}
	bx r0
	.align 2, 0
_08051CD0: .4byte 0x000D000C
_08051CD4: .4byte 0x000D000D
_08051CD8: .4byte 0x000D0009
_08051CDC: .4byte 0x000D000A
_08051CE0: .4byte 0x000D000B

	thumb_func_start sub_08051CE4
sub_08051CE4: @ 0x08051CE4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	movs r0, #0x33
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051D6C
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051D5C @ =0x000D000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051D60 @ =0x000D000F
	bl EventWinMesSet_08041058
	movs r0, #0x31
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051D64 @ =0x000D0010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051D68 @ =0x000D0011
	bl EventWinMesSet_08041058
	movs r0, #0x35
	bl SetEventFlag_080406BC
	b _08051DAE
	.align 2, 0
_08051D5C: .4byte 0x000D000E
_08051D60: .4byte 0x000D000F
_08051D64: .4byte 0x000D0010
_08051D68: .4byte 0x000D0011
_08051D6C:
	ldr r0, _08051DB4 @ =0x000D0012
	bl EventWinMesSet_08041058
	ldr r0, _08051DB8 @ =0x000D0013
	bl EventWinMesSet_08041058
	ldr r0, _08051DBC @ =0x000D0014
	bl EventWinMesSet_08041058
	ldr r0, _08051DC0 @ =0x000D0015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051DC4 @ =0x000D0016
	bl EventWinMesSet_08041058
	movs r0, #0x32
	bl EventUnsetFlag_080406D0
	movs r0, #0x33
	bl EventUnsetFlag_080406D0
	movs r0, #0x34
	bl EventUnsetFlag_080406D0
	movs r0, #0x35
	bl UnsetEventFlag_080406D0
_08051DAE:
	pop {r0}
	bx r0
	.align 2, 0
_08051DB4: .4byte 0x000D0012
_08051DB8: .4byte 0x000D0013
_08051DBC: .4byte 0x000D0014
_08051DC0: .4byte 0x000D0015
_08051DC4: .4byte 0x000D0016

	thumb_func_start sub_08051DC8
sub_08051DC8: @ 0x08051DC8
	push {lr}
	bl sub_08051A68
	bl sub_08051A68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051E10 @ =0x000D0017
	bl EventWinMesSet_08041058
	ldr r0, _08051E14 @ =0x000D0018
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051E18 @ =0x000D0019
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08051E10: .4byte 0x000D0017
_08051E14: .4byte 0x000D0018
_08051E18: .4byte 0x000D0019

	thumb_func_start sub_08051E1C
sub_08051E1C: @ 0x08051E1C
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _08051EDC @ =0x0808E2A4
	bl LoadBuildingBG_0804115C
	ldr r4, _08051EE0 @ =0x0808E8FC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _08051EE4 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x44
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x40
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0x13
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0x13
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x35
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051EEC
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08051EE8 @ =sub_08051DC8
	bl RunEventScript_0804066C
	b _08051F3E
	.align 2, 0
_08051EDC: .4byte 0x0808E2A4
_08051EE0: .4byte 0x0808E8FC
_08051EE4: .4byte 0x0808E6BC
_08051EE8: .4byte sub_08051DC8
_08051EEC:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051F1C
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08051F18 @ =sub_08051B70
	bl RunEventScript_0804066C
	movs r0, #0x32
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051F3E
	movs r0, #2
	bl sub_08040F18
	b _08051F3E
	.align 2, 0
_08051F18: .4byte sub_08051B70
_08051F1C:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051F34
	movs r0, #0x33
	bl EventSetFlag_080406E4
_08051F34:
	ldr r0, _08051F8C @ =sub_08051CE4
	bl RunEventScript_0804066C
	bl sub_08040F0C
_08051F3E:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051F8C: .4byte sub_08051CE4

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
	bl sub_080410E0
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
	bl sub_08041138
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
	bl sub_080410E0
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

	thumb_func_start sub_080523C0
sub_080523C0: @ 0x080523C0
	push {r4, lr}
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x3c
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r4, _080524A4 @ =0x00000123
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080524A8 @ =0x00080001
	bl EventWinMesSet_08041058
	ldr r0, _080524AC @ =0x00080002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080524B4
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x14
	bl EventSleep_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _080524B0 @ =0x00080003
	bl EventWinMesSet_08041058
	b _080525F2
	.align 2, 0
_080524A4: .4byte 0x00000123
_080524A8: .4byte 0x00080001
_080524AC: .4byte 0x00080002
_080524B0: .4byte 0x00080003
_080524B4:
	ldr r1, _08052564 @ =0x00080004
	movs r0, #7
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080524C4
	b _080525F2
_080524C4:
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052568 @ =0x00080005
	bl EventWinMesSet_08041058
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805256C @ =0x00080006
	bl EventWinMesSet_08041058
	ldr r0, _08052570 @ =0x00080007
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052574 @ =0x00080008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _08052578 @ =0x00080009
	bl EventWinMesSet_08041058
	ldr r0, _0805257C @ =0x0008000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052584
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052580 @ =0x0008000B
	bl EventWinMesSet_08041058
	b _0805259E
	.align 2, 0
_08052564: .4byte 0x00080004
_08052568: .4byte 0x00080005
_0805256C: .4byte 0x00080006
_08052570: .4byte 0x00080007
_08052574: .4byte 0x00080008
_08052578: .4byte 0x00080009
_0805257C: .4byte 0x0008000A
_08052580: .4byte 0x0008000B
_08052584:
	bl sub_08044B74
	bl sub_08044B74
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080525F8 @ =0x00080011
	bl EventWinMesSet_08041058
_0805259E:
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080525FC @ =0x0008000C
	bl EventWinMesSet_08041058
	ldr r0, _08052600 @ =0x0008000D
	bl EventWinMesSet_08041058
	ldr r0, _08052604 @ =0x0008000E
	bl EventWinMesSet_08041058
	ldr r0, _08052608 @ =0x0008000F
	bl EventWinMesSet_08041058
	ldr r0, _0805260C @ =0x0808E64C
	movs r1, #0x78
	movs r2, #0x48
	bl DisplayGFX_080414B4
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052610 @ =0x00080010
	bl EventWinMesSet_08041058
	movs r0, #0x1e
	bl EventSetFlag_080406E4
	movs r0, #0x26
	bl SetCharacterMetFlag_0802D7CC
_080525F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080525F8: .4byte 0x00080011
_080525FC: .4byte 0x0008000C
_08052600: .4byte 0x0008000D
_08052604: .4byte 0x0008000E
_08052608: .4byte 0x0008000F
_0805260C: .4byte 0x0808E64C
_08052610: .4byte 0x00080010

	thumb_func_start sub_08052614
sub_08052614: @ 0x08052614
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805268C @ =0x00080012
	bl EventWinMesSet_08041058
	ldr r0, _08052690 @ =0x0008000F
	bl EventWinMesSet_08041058
	ldr r0, _08052694 @ =0x00080013
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805268C: .4byte 0x00080012
_08052690: .4byte 0x0008000F
_08052694: .4byte 0x00080013

	thumb_func_start sub_08052698
sub_08052698: @ 0x08052698
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805272C @ =0x0008002D
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052730 @ =0x0008002E
	bl EventWinMesSet_08041058
	ldr r0, _08052734 @ =0x0008002F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052738 @ =0x00080030
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805272C: .4byte 0x0008002D
_08052730: .4byte 0x0008002E
_08052734: .4byte 0x0008002F
_08052738: .4byte 0x00080030

	thumb_func_start sub_0805273C
sub_0805273C: @ 0x0805273C
	push {lr}
	bl EventInit_080405B8
	ldr r0, _080527A8 @ =0x0808E2F4
	bl LoadBuildingBG_0804115C
	ldr r2, _080527AC @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _080527B0 @ =0x0808E83C
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x21
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080527B8
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _080527B4 @ =sub_08052698
	bl RunEventScript_0804066C
	b _080527E8
	.align 2, 0
_080527A8: .4byte 0x0808E2F4
_080527AC: .4byte 0x0808E6BC
_080527B0: .4byte 0x0808E83C
_080527B4: .4byte sub_08052698
_080527B8:
	movs r0, #0x1e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080527D8
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	ldr r0, _080527D4 @ =sub_08052614
	bl RunEventScript_0804066C
	b _080527E8
	.align 2, 0
_080527D4: .4byte sub_08052614
_080527D8:
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08052818 @ =sub_080523C0
	bl RunEventScript_0804066C
	bl sub_08041560
_080527E8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08052818: .4byte sub_080523C0

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
	bl sub_080410E0
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
	bl sub_080410E0
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
	bl sub_080410E0
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
	bl sub_08041138
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
	bl sub_080410E0
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
	bl sub_080410E0
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

	thumb_func_start sub_08052CBC
sub_08052CBC: @ 0x08052CBC
	push {lr}
	movs r0, #0x98
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xb4
	movs r3, #0x64
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x96
	movs r3, #0x50
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x82
	movs r3, #0x3c
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0x28
	bl sub_08041938
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08052D08
sub_08052D08: @ 0x08052D08
	push {r4, lr}
	movs r0, #2
	movs r1, #0xf0
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0x58
	movs r3, #0x10
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08052E14 @ =0x00030024
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0xc2
	movs r2, #0x34
	bl EventPlaceChara_08041894
	ldr r4, _08052E18 @ =0x0000011F
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _08052E1C @ =0x00030025
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08052E20 @ =0x00030026
	bl EventWinMesSet_08041058
	ldr r0, _08052E24 @ =0x00030027
	bl EventWinMesSet_08041058
	ldr r0, _08052E28 @ =0x00030028
	bl EventWinMesSet_08041058
	ldr r0, _08052E2C @ =0x00030029
	bl EventWinMesSet_08041058
	ldr r0, _08052E30 @ =0x0003002A
	bl EventWinMesSet_08041058
	ldr r0, _08052E34 @ =0x0003002C
	bl EventWinMesSet_08041058
	ldr r0, _08052E38 @ =0x0003002D
	bl EventWinMesSet_08041058
	movs r0, #0x1b
	movs r1, #0x10
	bl QuestFinish_08042814
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052E3C @ =0x0003002E
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052E40 @ =0x0003002F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052E44 @ =0x00030030
	bl EventWinMesSet_08041058
	movs r0, #0xd
	bl SetEventFlag_080406BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052E14: .4byte 0x00030024
_08052E18: .4byte 0x0000011F
_08052E1C: .4byte 0x00030025
_08052E20: .4byte 0x00030026
_08052E24: .4byte 0x00030027
_08052E28: .4byte 0x00030028
_08052E2C: .4byte 0x00030029
_08052E30: .4byte 0x0003002A
_08052E34: .4byte 0x0003002C
_08052E38: .4byte 0x0003002D
_08052E3C: .4byte 0x0003002E
_08052E40: .4byte 0x0003002F
_08052E44: .4byte 0x00030030

	thumb_func_start sub_08052E48
sub_08052E48: @ 0x08052E48
	push {lr}
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	bl sub_080407FC
	ldr r0, _08052F40 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x58
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_080410E0
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	movs r0, #0xa8
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052F44 @ =0x00150001
	bl EventWinMesSet_08041058
	bl sub_08052CBC
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052F48 @ =0x00150002
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x48
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x5a
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #8
	bl EventAnimateChara_080418C8
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0x5a
	movs r3, #8
	bl sub_08041938
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #9
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x18
	bl SetCharacterMetFlag_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0
_08052F40: .4byte 0x0000011B
_08052F44: .4byte 0x00150001
_08052F48: .4byte 0x00150002

	thumb_func_start sub_08052F4C
sub_08052F4C: @ 0x08052F4C
	push {lr}
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _08052F90 @ =0x00150003
	bl EventWinMesSet_08041058
	ldr r0, _08052F94 @ =0x00150004
	bl EventWinMesSet_08041058
	ldr r0, _08052F98 @ =0x00150005
	bl EventWinMesSet_08041058
	ldr r0, _08052F9C @ =0x00150006
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052FA8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052FA0 @ =0x00150007
	bl EventWinMesSet_08041058
	ldr r0, _08052FA4 @ =0x00150008
	bl EventWinMesSet_08041058
	b _08053004
	.align 2, 0
_08052F90: .4byte 0x00150003
_08052F94: .4byte 0x00150004
_08052F98: .4byte 0x00150005
_08052F9C: .4byte 0x00150006
_08052FA0: .4byte 0x00150007
_08052FA4: .4byte 0x00150008
_08052FA8:
	ldr r1, _08053008 @ =0x00150009
	movs r0, #0x14
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053004
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805300C @ =0x0015000A
	bl EventWinMesSet_08041058
	ldr r0, _08053010 @ =0x0015000B
	bl EventWinMesSet_08041058
	ldr r0, _08053014 @ =0x0015000C
	bl EventWinMesSet_08041058
	movs r0, #0xf
	movs r1, #0x13
	bl QuestFinish_08042814
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053018 @ =0x0015000D
	bl EventWinMesSet_08041058
	ldr r0, _0805301C @ =0x0015000E
	bl EventWinMesSet_08041058
	movs r0, #0x54
	bl SetEventFlag_080406BC
	movs r0, #9
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x18
	bl SetCharacterMetFlag_0802D7CC
_08053004:
	pop {r0}
	bx r0
	.align 2, 0
_08053008: .4byte 0x00150009
_0805300C: .4byte 0x0015000A
_08053010: .4byte 0x0015000B
_08053014: .4byte 0x0015000C
_08053018: .4byte 0x0015000D
_0805301C: .4byte 0x0015000E

	thumb_func_start sub_08053020
sub_08053020: @ 0x08053020
	push {lr}
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053060 @ =0x0015000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08053064 @ =0x00150010
	bl EventWinMesSet_08041058
	ldr r0, _08053068 @ =0x00150011
	bl EventWinMesSet_08041058
	ldr r0, _0805306C @ =0x00150012
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	movs r3, #0x78
	bl sub_08041938
	pop {r0}
	bx r0
	.align 2, 0
_08053060: .4byte 0x0015000F
_08053064: .4byte 0x00150010
_08053068: .4byte 0x00150011
_0805306C: .4byte 0x00150012

	thumb_func_start sub_08053070
sub_08053070: @ 0x08053070
	push {lr}
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl sub_08052CBC
	bl EventWinInit_08040fe8
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _080530A4 @ =0x00150013
	bl EventWinMesSet_08041058
	ldr r0, _080530A8 @ =0x00150014
	bl EventWinMesSet_08041058
	ldr r0, _080530AC @ =0x00150015
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080530A4: .4byte 0x00150013
_080530A8: .4byte 0x00150014
_080530AC: .4byte 0x00150015

	thumb_func_start sub_080530B0
sub_080530B0: @ 0x080530B0
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08053140 @ =0x0808E344
	bl LoadBuildingBG_0804115C
	ldr r2, _08053144 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl EventPlaceChara_08041894
	ldr r2, _08053148 @ =0x0808EA2C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	ldr r2, _0805314C @ =0x0808E8EC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	ldr r2, _08053150 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0xb
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053158
	movs r0, #0xd
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053158
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _08053154 @ =sub_08052D08
	bl RunEventScript_0804066C
	b _080531B2
	.align 2, 0
_08053140: .4byte 0x0808E344
_08053144: .4byte 0x0808EA6C
_08053148: .4byte 0x0808EA2C
_0805314C: .4byte 0x0808E8EC
_08053150: .4byte 0x0808E6BC
_08053154: .4byte sub_08052D08
_08053158:
	bl GetCharacterID_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq _08053180
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08053178 @ =sub_08052E48
	bl RunEventScript_0804066C
	ldr r0, _0805317C @ =sub_08053020
	bl RunEventScript_0804066C
	b _080531B2
	.align 2, 0
_08053178: .4byte sub_08052E48
_0805317C: .4byte sub_08053020
_08053180:
	movs r0, #0x54
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080531A0
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _0805319C @ =sub_08053070
	bl RunEventScript_0804066C
	b _080531B2
	.align 2, 0
_0805319C: .4byte sub_08053070
_080531A0:
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08053200 @ =sub_08052E48
	bl RunEventScript_0804066C
	ldr r0, _08053204 @ =sub_08052F4C
	bl RunEventScript_0804066C
_080531B2:
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08053200: .4byte sub_08052E48
_08053204: .4byte sub_08052F4C

	thumb_func_start sub_08053208
sub_08053208: @ 0x08053208
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0xd0
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053368 @ =0x001A0001
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805336C @ =0x001A0002
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053370 @ =0x001A0003
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053374 @ =0x001A0004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053378 @ =0x001A0005
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805337C @ =0x001A0006
	bl EventWinMesSet_08041058
	ldr r0, _08053380 @ =0x001A0007
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053394
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08053384 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053388 @ =0x001A0008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805338C @ =0x001A0009
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053390 @ =0x001A000A
	bl EventWinMesSet_08041058
	b _08053586
	.align 2, 0
_08053368: .4byte 0x001A0001
_0805336C: .4byte 0x001A0002
_08053370: .4byte 0x001A0003
_08053374: .4byte 0x001A0004
_08053378: .4byte 0x001A0005
_0805337C: .4byte 0x001A0006
_08053380: .4byte 0x001A0007
_08053384: .4byte 0x0000011F
_08053388: .4byte 0x001A0008
_0805338C: .4byte 0x001A0009
_08053390: .4byte 0x001A000A
_08053394:
	ldr r1, _0805348C @ =0x001A000B
	movs r0, #0x19
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080533A4
	b _08053586
_080533A4:
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053490 @ =0x001A000C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053494 @ =0x001A000D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053498 @ =0x001A000E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805349C @ =0x001A000F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080534A0 @ =0x001A0010
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080534A4 @ =0x001A0011
	bl EventWinMesSet_08041058
	ldr r0, _080534A8 @ =0x001A0012
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080534B4
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080534AC @ =0x001A0013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080534B0 @ =0x001A0014
	bl EventWinMesSet_08041058
	b _080534DE
	.align 2, 0
_0805348C: .4byte 0x001A000B
_08053490: .4byte 0x001A000C
_08053494: .4byte 0x001A000D
_08053498: .4byte 0x001A000E
_0805349C: .4byte 0x001A000F
_080534A0: .4byte 0x001A0010
_080534A4: .4byte 0x001A0011
_080534A8: .4byte 0x001A0012
_080534AC: .4byte 0x001A0013
_080534B0: .4byte 0x001A0014
_080534B4:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805358C @ =0x001A001C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053590 @ =0x001A001D
	bl EventWinMesSet_08041058
_080534DE:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053594 @ =0x001A0015
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08053598 @ =0x001A0016
	bl EventWinMesSet_08041058
	ldr r0, _0805359C @ =0x001A0017
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080535A0 @ =0x001A0018
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080535A4 @ =0x001A0019
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080535A8 @ =0x001A001A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080535AC @ =0x001A001B
	bl EventWinMesSet_08041058
	movs r0, #0x66
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_08053586:
	pop {r0}
	bx r0
	.align 2, 0
_0805358C: .4byte 0x001A001C
_08053590: .4byte 0x001A001D
_08053594: .4byte 0x001A0015
_08053598: .4byte 0x001A0016
_0805359C: .4byte 0x001A0017
_080535A0: .4byte 0x001A0018
_080535A4: .4byte 0x001A0019
_080535A8: .4byte 0x001A001A
_080535AC: .4byte 0x001A001B

	thumb_func_start sub_080535B0
sub_080535B0: @ 0x080535B0
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x67
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080535C4
	b _080536F4
_080535C4:
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536C4 @ =0x001A001E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536C8 @ =0x001A001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536CC @ =0x001A0020
	bl EventWinMesSet_08041058
	ldr r0, _080536D0 @ =0x001A0021
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536D4 @ =0x001A0022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536D8 @ =0x001A0023
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536DC @ =0x001A0024
	bl EventWinMesSet_08041058
	ldr r1, _080536E0 @ =0x0046002C
	movs r0, #0x71
	bl EventMgSpecialGoal_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536E4 @ =0x001A0025
	bl EventWinMesSet_08041058
	bl sub_08040BB8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080536E8 @ =0x001A0026
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536EC @ =0x001A0027
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536F0 @ =0x001A0028
	bl EventWinMesSet_08041058
	b _080537A2
	.align 2, 0
_080536C4: .4byte 0x001A001E
_080536C8: .4byte 0x001A001F
_080536CC: .4byte 0x001A0020
_080536D0: .4byte 0x001A0021
_080536D4: .4byte 0x001A0022
_080536D8: .4byte 0x001A0023
_080536DC: .4byte 0x001A0024
_080536E0: .4byte 0x0046002C
_080536E4: .4byte 0x001A0025
_080536E8: .4byte 0x001A0026
_080536EC: .4byte 0x001A0027
_080536F0: .4byte 0x001A0028
_080536F4:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080537A8 @ =0x001A003C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080537AC @ =0x001A003D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080537B0 @ =0x001A003E
	bl EventWinMesSet_08041058
	ldr r0, _080537B4 @ =0x001A003F
	bl EventWinMesSet_08041058
	ldr r0, _080537B8 @ =0x001A0039
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080537BC @ =0x001A003A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080537C0 @ =0x001A003B
	bl EventWinMesSet_08041058
	movs r0, #0x66
	bl EventUnsetFlag_080406D0
	movs r0, #0x67
	bl EventUnsetFlag_080406D0
	movs r0, #0x68
	bl EventUnsetFlag_080406D0
	movs r0, #0x69
	bl UnsetEventFlag_080406D0
_080537A2:
	pop {r0}
	bx r0
	.align 2, 0
_080537A8: .4byte 0x001A003C
_080537AC: .4byte 0x001A003D
_080537B0: .4byte 0x001A003E
_080537B4: .4byte 0x001A003F
_080537B8: .4byte 0x001A0039
_080537BC: .4byte 0x001A003A
_080537C0: .4byte 0x001A003B

	thumb_func_start sub_080537C4
sub_080537C4: @ 0x080537C4
	push {lr}
	movs r0, #0x68
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080537D6
	b _08053984
_080537D6:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053954 @ =0x001A0029
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053958 @ =0x001A002A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805395C @ =0x001A002B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053960 @ =0x001A002C
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x14
	bl StopSongID_080410C0
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0x1c
	bl sub_08005BE0
	movs r0, #0x52
	bl EventWinMesSet_08041058
	movs r0, #0x1c
	bl EventSetMinigame_08040B84
	movs r0, #4
	movs r1, #0x20
	bl sub_08005BE0
	movs r0, #0x52
	bl EventWinMesSet_08041058
	movs r0, #0x20
	bl EventSetMinigame_08040B84
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl sub_08041008
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053964 @ =0x001A002D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08053968 @ =0x001A002E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805396C @ =0x001A002F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053970 @ =0x001A0030
	bl EventWinMesSet_08041058
	ldr r0, _08053974 @ =0x001A0031
	bl EventWinMesSet_08041058
	ldr r0, _08053978 @ =0x001A0032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805397C @ =0x001A0033
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053980 @ =0x001A0034
	bl EventWinMesSet_08041058
	movs r0, #0x71
	bl EventSetMinigame_08040B84
	movs r0, #0x69
	bl SetEventFlag_080406BC
	b _08053A42
	.align 2, 0
_08053954: .4byte 0x001A0029
_08053958: .4byte 0x001A002A
_0805395C: .4byte 0x001A002B
_08053960: .4byte 0x001A002C
_08053964: .4byte 0x001A002D
_08053968: .4byte 0x001A002E
_0805396C: .4byte 0x001A002F
_08053970: .4byte 0x001A0030
_08053974: .4byte 0x001A0031
_08053978: .4byte 0x001A0032
_0805397C: .4byte 0x001A0033
_08053980: .4byte 0x001A0034
_08053984:
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053A48 @ =0x001A0035
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08053A4C @ =0x001A0036
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053A50 @ =0x001A0037
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053A54 @ =0x001A0038
	bl EventWinMesSet_08041058
	ldr r0, _08053A58 @ =0x001A0039
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08053A5C @ =0x001A003A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053A60 @ =0x001A003B
	bl EventWinMesSet_08041058
	movs r0, #0x66
	bl EventUnsetFlag_080406D0
	movs r0, #0x67
	bl EventUnsetFlag_080406D0
	movs r0, #0x68
	bl EventUnsetFlag_080406D0
	movs r0, #0x69
	bl UnsetEventFlag_080406D0
_08053A42:
	pop {r0}
	bx r0
	.align 2, 0
_08053A48: .4byte 0x001A0035
_08053A4C: .4byte 0x001A0036
_08053A50: .4byte 0x001A0037
_08053A54: .4byte 0x001A0038
_08053A58: .4byte 0x001A0039
_08053A5C: .4byte 0x001A003A
_08053A60: .4byte 0x001A003B

	thumb_func_start sub_08053A64
sub_08053A64: @ 0x08053A64
	push {lr}
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B58 @ =0x001A0040
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B5C @ =0x001A0041
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B60 @ =0x001A0042
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B64 @ =0x001A0043
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B68 @ =0x001A0044
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B6C @ =0x001A0045
	bl EventWinMesSet_08041058
	ldr r0, _08053B70 @ =0x001A0046
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08053B58: .4byte 0x001A0040
_08053B5C: .4byte 0x001A0041
_08053B60: .4byte 0x001A0042
_08053B64: .4byte 0x001A0043
_08053B68: .4byte 0x001A0044
_08053B6C: .4byte 0x001A0045
_08053B70: .4byte 0x001A0046

	thumb_func_start sub_08053B74
sub_08053B74: @ 0x08053B74
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08053C14 @ =0x0808E36C
	bl LoadBuildingBG_0804115C
	ldr r2, _08053C18 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x50
	bl EventPlaceChara_08041894
	ldr r2, _08053C1C @ =0x0808E71C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xb0
	movs r2, #0x63
	bl EventPlaceChara_08041894
	ldr r2, _08053C20 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0x68
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053BF4
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
_08053BF4:
	bl sub_080407FC
	movs r0, #0x68
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053C28
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	ldr r0, _08053C24 @ =sub_08053A64
	bl RunEventScript_0804066C
	b _08053CC6
	.align 2, 0
_08053C14: .4byte 0x0808E36C
_08053C18: .4byte 0x0808E7BC
_08053C1C: .4byte 0x0808E71C
_08053C20: .4byte 0x0808E6BC
_08053C24: .4byte sub_08053A64
_08053C28:
	movs r0, #0x67
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053C64
	movs r0, #0x14
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08053C4E
	cmp r0, #1
	ble _08053CC6
	cmp r0, #2
	beq _08053C54
	b _08053CC6
_08053C4E:
	movs r0, #0x68
	bl EventSetFlag_080406E4
_08053C54:
	ldr r0, _08053C60 @ =sub_080537C4
	bl RunEventScript_0804066C
	bl sub_08040B28
	b _08053CC6
	.align 2, 0
_08053C60: .4byte sub_080537C4
_08053C64:
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053C94
	ldr r0, _08053C90 @ =sub_08053208
	bl RunEventScript_0804066C
	movs r0, #0x66
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053CC6
	movs r0, #0xa
	bl sub_08040F18
	b _08053CC6
	.align 2, 0
_08053C90: .4byte sub_08053208
_08053C94:
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053CBC
	movs r0, #0x67
	bl EventSetFlag_080406E4
	ldr r0, _08053CB8 @ =sub_080535B0
	bl RunEventScript_0804066C
	bl sub_08040F0C
	movs r0, #0x71
	bl EventQuestBegin_080406D0
	b _08053CC6
	.align 2, 0
_08053CB8: .4byte sub_080535B0
_08053CBC:
	ldr r0, _08053D04 @ =sub_080535B0
	bl RunEventScript_0804066C
	bl sub_08040F0C
_08053CC6:
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08053D04: .4byte sub_080535B0

	thumb_func_start sub_08053D08
sub_08053D08: @ 0x08053D08
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	movs r0, #0xc8
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053DBC @ =0x00320001
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053DC0 @ =0x00320002
	bl EventWinMesSet_08041058
	ldr r0, _08053DC4 @ =0x00320003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053DD4
	ldr r0, _08053DC8 @ =0x00320004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053DCC @ =0x00320005
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053DD0 @ =0x00320006
	bl EventWinMesSet_08041058
	b _08054004
	.align 2, 0
_08053DBC: .4byte 0x00320001
_08053DC0: .4byte 0x00320002
_08053DC4: .4byte 0x00320003
_08053DC8: .4byte 0x00320004
_08053DCC: .4byte 0x00320005
_08053DD0: .4byte 0x00320006
_08053DD4:
	movs r0, #0x9a
	lsls r0, r0, #1
	bl sub_080410F0
	ldr r1, _08053EB8 @ =0x00320007
	movs r0, #0x31
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053DEC
	b _08054004
_08053DEC:
	movs r0, #0x52
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053EBC @ =0x00320008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053EC0 @ =0x00320009
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053EC4 @ =0x0032000A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08053EC8 @ =0x0032000B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053ECC @ =0x0032000C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08053ED0 @ =0x0032000D
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053ED8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053ED4 @ =0x0032000E
	bl EventWinMesSet_08041058
	b _08053F20
	.align 2, 0
_08053EB8: .4byte 0x00320007
_08053EBC: .4byte 0x00320008
_08053EC0: .4byte 0x00320009
_08053EC4: .4byte 0x0032000A
_08053EC8: .4byte 0x0032000B
_08053ECC: .4byte 0x0032000C
_08053ED0: .4byte 0x0032000D
_08053ED4: .4byte 0x0032000E
_08053ED8:
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054008 @ =0x00320016
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805400C @ =0x00320017
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054010 @ =0x00320018
	bl EventWinMesSet_08041058
_08053F20:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054014 @ =0x0032000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054018 @ =0x00320010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805401C @ =0x00320011
	bl EventWinMesSet_08041058
	ldr r1, _08054020 @ =0x0046002B
	movs r0, #0x70
	bl EventMgSpecialGoal_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054024 @ =0x00320012
	bl EventWinMesSet_08041058
	bl sub_08040BB8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08054028 @ =0x00320013
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805402C @ =0x00320014
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054030 @ =0x00320015
	bl EventWinMesSet_08041058
	movs r0, #0xba
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_08054004:
	pop {r0}
	bx r0
	.align 2, 0
_08054008: .4byte 0x00320016
_0805400C: .4byte 0x00320017
_08054010: .4byte 0x00320018
_08054014: .4byte 0x0032000F
_08054018: .4byte 0x00320010
_0805401C: .4byte 0x00320011
_08054020: .4byte 0x0046002B
_08054024: .4byte 0x00320012
_08054028: .4byte 0x00320013
_0805402C: .4byte 0x00320014
_08054030: .4byte 0x00320015

	thumb_func_start sub_08054034
sub_08054034: @ 0x08054034
	push {lr}
	movs r0, #0xbb
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08054046
	b _08054238
_08054046:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x52
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080541F0 @ =0x00320019
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080541F4 @ =0x0032001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080541F8 @ =0x0032001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080541FC @ =0x0032001C
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054200 @ =0x0032001D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08054204 @ =0x0032001E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054208 @ =0x0032001F
	bl EventWinMesSet_08041058
	movs r0, #0x3f
	movs r1, #0x52
	bl QuestFinish_08042814
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805420C @ =0x00320020
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054210 @ =0x00320021
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054214 @ =0x00320022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054218 @ =0x00320023
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805421C @ =0x00320024
	bl EventWinMesSet_08041058
	ldr r0, _08054220 @ =0x00320025
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054224 @ =0x00320026
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054228 @ =0x00320027
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805422C @ =0x00320028
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054230 @ =0x00320029
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054234 @ =0x0032002A
	bl EventWinMesSet_08041058
	movs r0, #0x70
	bl EventSetMinigame_08040B84
	movs r0, #0xbc
	bl SetEventFlag_080406BC
	b _080542EA
	.align 2, 0
_080541F0: .4byte 0x00320019
_080541F4: .4byte 0x0032001A
_080541F8: .4byte 0x0032001B
_080541FC: .4byte 0x0032001C
_08054200: .4byte 0x0032001D
_08054204: .4byte 0x0032001E
_08054208: .4byte 0x0032001F
_0805420C: .4byte 0x00320020
_08054210: .4byte 0x00320021
_08054214: .4byte 0x00320022
_08054218: .4byte 0x00320023
_0805421C: .4byte 0x00320024
_08054220: .4byte 0x00320025
_08054224: .4byte 0x00320026
_08054228: .4byte 0x00320027
_0805422C: .4byte 0x00320028
_08054230: .4byte 0x00320029
_08054234: .4byte 0x0032002A
_08054238:
	movs r0, #0x52
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080542F0 @ =0x0032002B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080542F4 @ =0x0032002C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080542F8 @ =0x0032002D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080542FC @ =0x0032002E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054300 @ =0x0032002F
	bl EventWinMesSet_08041058
	ldr r0, _08054304 @ =0x00320030
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054308 @ =0x00320031
	bl EventWinMesSet_08041058
	movs r0, #0xba
	bl EventUnsetFlag_080406D0
	movs r0, #0xbb
	bl EventUnsetFlag_080406D0
	movs r0, #0xbc
	bl UnsetEventFlag_080406D0
_080542EA:
	pop {r0}
	bx r0
	.align 2, 0
_080542F0: .4byte 0x0032002B
_080542F4: .4byte 0x0032002C
_080542F8: .4byte 0x0032002D
_080542FC: .4byte 0x0032002E
_08054300: .4byte 0x0032002F
_08054304: .4byte 0x00320030
_08054308: .4byte 0x00320031

	thumb_func_start sub_0805430C
sub_0805430C: @ 0x0805430C
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054388 @ =0x00320032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805438C @ =0x00320033
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054390 @ =0x00320034
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054394 @ =0x00320035
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054398 @ =0x00320036
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08054388: .4byte 0x00320032
_0805438C: .4byte 0x00320033
_08054390: .4byte 0x00320034
_08054394: .4byte 0x00320035
_08054398: .4byte 0x00320036

	thumb_func_start sub_0805439C
sub_0805439C: @ 0x0805439C
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805442C @ =0x00320037
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08054430 @ =0x00320038
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054434 @ =0x00320039
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054438 @ =0x0032003A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805443C @ =0x0032003B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054440 @ =0x0032003C
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805442C: .4byte 0x00320037
_08054430: .4byte 0x00320038
_08054434: .4byte 0x00320039
_08054438: .4byte 0x0032003A
_0805443C: .4byte 0x0032003B
_08054440: .4byte 0x0032003C

	thumb_func_start sub_08054444
sub_08054444: @ 0x08054444
	push {lr}
	bl EventInit_080405B8
	ldr r0, _080544F0 @ =0x0808E394
	bl LoadBuildingBG_0804115C
	ldr r0, _080544F4 @ =0x0817D8A4
	movs r1, #0
	movs r2, #1
	bl sub_08041464
	ldr r0, _080544F8 @ =0x0808E66C
	movs r1, #0x78
	movs r2, #0x38
	bl DisplayGFX_080414B4
	ldr r2, _080544FC @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x48
	movs r2, #0x59
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r2, _08054500 @ =0x0808E70C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x4e
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _08054504 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xbc
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805450C
	movs r0, #0x52
	bl EventBGMPlay_080410A8
	ldr r0, _08054508 @ =sub_0805430C
	bl RunEventScript_0804066C
	b _08054558
	.align 2, 0
_080544F0: .4byte 0x0808E394
_080544F4: .4byte 0x0817D8A4
_080544F8: .4byte 0x0808E66C
_080544FC: .4byte 0x0808E7BC
_08054500: .4byte 0x0808E70C
_08054504: .4byte 0x0808E6BC
_08054508: .4byte sub_0805430C
_0805450C:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805453C
	movs r0, #0x9a
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _08054538 @ =sub_08053D08
	bl RunEventScript_0804066C
	movs r0, #0xba
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054558
	movs r0, #0x70
	bl EventQuestBegin_080406D0
	b _08054558
	.align 2, 0
_08054538: .4byte sub_08053D08
_0805453C:
	bl sub_08040B58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805454E
	movs r0, #0xbb
	bl EventSetFlag_080406E4
_0805454E:
	ldr r0, _080545A8 @ =sub_08054034
	bl RunEventScript_0804066C
	bl sub_08040B28
_08054558:
	movs r0, #0x9a
	lsls r0, r0, #1
	bl sub_080410F0
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_08041498
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080545A8: .4byte sub_08054034

	thumb_func_start sub_080545AC
sub_080545AC: @ 0x080545AC
	push {r4, r5, lr}
	ldr r0, _080545F8 @ =0x00000133
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0xe0
	bl sub_080413C0
	movs r5, #0
_080545C0:
	movs r4, #0xc8
	subs r4, r4, r5
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0x50
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x70
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0x90
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #2
	bl EventSleep_08040690
	adds r5, #1
	cmp r5, #0x6f
	ble _080545C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080545F8: .4byte 0x00000133

	thumb_func_start sub_080545FC
sub_080545FC: @ 0x080545FC
	push {r4, r5, r6, lr}
	ldr r0, _0805464C @ =0x000003DF
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0xb4
	bl sub_080413C0
	movs r6, #0
	movs r5, #0xb0
	lsls r5, r5, #0xf
_08054614:
	asrs r4, r5, #0x10
	movs r0, #0
	movs r1, #0x50
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x70
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0x90
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0xb3
	ble _08054614
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805464C: .4byte 0x000003DF

	thumb_func_start sub_08054650
sub_08054650: @ 0x08054650
	push {r4, lr}
	movs r4, #0
_08054654:
	movs r1, #0xf0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #5
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #6
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	bl EventSleep_08040690
	adds r4, #1
	cmp r4, #0x8b
	ble _08054654
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080546C8
sub_080546C8: @ 0x080546C8
	push {r4, lr}
	movs r4, #0
_080546CC:
	movs r1, #0x5a
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r1, #0x72
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r1, #0x82
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r1, #0x92
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #5
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r1, #0xa2
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #6
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	bl EventSleep_08040690
	adds r4, #1
	cmp r4, #0xa1
	ble _080546CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08054730
sub_08054730: @ 0x08054730
	push {r4, lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0xac
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054848 @ =0x002B0001
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805484C @ =0x002B0002
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054850 @ =0x002B0003
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054854 @ =0x002B0004
	bl EventWinMesSet_08041058
	ldr r0, _08054858 @ =0x002B0005
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805486C
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	ldr r0, _0805485C @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	ldr r0, _08054860 @ =0x002B0006
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054864 @ =0x002B0007
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054868 @ =0x002B0008
	bl EventWinMesSet_08041058
	b _08054E04
	.align 2, 0
_08054848: .4byte 0x002B0001
_0805484C: .4byte 0x002B0002
_08054850: .4byte 0x002B0003
_08054854: .4byte 0x002B0004
_08054858: .4byte 0x002B0005
_0805485C: .4byte 0x0000011F
_08054860: .4byte 0x002B0006
_08054864: .4byte 0x002B0007
_08054868: .4byte 0x002B0008
_0805486C:
	ldr r1, _08054AE8 @ =0x002B0009
	movs r0, #0x2a
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805487C
	b _08054E04
_0805487C:
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054AEC @ =0x002B000A
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054AF0 @ =0x002B000B
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054AF4 @ =0x002B000C
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054AF8 @ =0x002B000D
	bl EventWinMesSet_08041058
	ldr r0, _08054AFC @ =0x002B000E
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B00 @ =0x002B000F
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B04 @ =0x002B0010
	bl EventWinMesSet_08041058
	ldr r0, _08054B08 @ =0x002B0011
	bl EventWinMesSet_08041058
	ldr r0, _08054B0C @ =0x002B0012
	bl EventWinMesSet_08041058
	ldr r0, _08054B10 @ =0x002B0013
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054940
	b _08054B40
_08054940:
	bl sub_08041008
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B14 @ =0x002B0014
	bl EventWinMesSet_08041058
	ldr r0, _08054B18 @ =0x002B0015
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B1C @ =0x002B0016
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B20 @ =0x002B0017
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl EventSleep_08040690
	ldr r4, _08054B24 @ =0x0808E9EC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	movs r0, #0
	movs r1, #0x50
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #3
	bl sub_08041864
	movs r0, #1
	movs r1, #0x70
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0x90
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl sub_080545AC
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B28 @ =0x002B0018
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B2C @ =0x002B0019
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B30 @ =0x002B001A
	bl EventWinMesSet_08041058
	ldr r1, _08054B34 @ =0x00460026
	movs r0, #0x6b
	bl EventMgSpecialGoal_080427E0
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B38 @ =0x002B001B
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B3C @ =0x002B001C
	bl EventWinMesSet_08041058
	movs r0, #0x9f
	bl EventSetFlag_080406E4
	b _08054DF8
	.align 2, 0
_08054AE8: .4byte 0x002B0009
_08054AEC: .4byte 0x002B000A
_08054AF0: .4byte 0x002B000B
_08054AF4: .4byte 0x002B000C
_08054AF8: .4byte 0x002B000D
_08054AFC: .4byte 0x002B000E
_08054B00: .4byte 0x002B000F
_08054B04: .4byte 0x002B0010
_08054B08: .4byte 0x002B0011
_08054B0C: .4byte 0x002B0012
_08054B10: .4byte 0x002B0013
_08054B14: .4byte 0x002B0014
_08054B18: .4byte 0x002B0015
_08054B1C: .4byte 0x002B0016
_08054B20: .4byte 0x002B0017
_08054B24: .4byte 0x0808E9EC
_08054B28: .4byte 0x002B0018
_08054B2C: .4byte 0x002B0019
_08054B30: .4byte 0x002B001A
_08054B34: .4byte 0x00460026
_08054B38: .4byte 0x002B001B
_08054B3C: .4byte 0x002B001C
_08054B40:
	bl sub_08041008
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E0C @ =0x002B0014
	bl EventWinMesSet_08041058
	ldr r0, _08054E10 @ =0x002B001D
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E14 @ =0x002B001E
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E18 @ =0x002B001F
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_08041008
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r4, _08054E1C @ =0x0808E8DC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #1
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r1, #0x88
	lsls r1, r1, #1
	movs r0, #2
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r1, #0x90
	lsls r1, r1, #1
	movs r0, #5
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #6
	movs r1, #0
	bl sub_08041734
	movs r1, #0x98
	lsls r1, r1, #1
	movs r0, #6
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #6
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_08054650
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x1c
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E20 @ =0x002B0023
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080546C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E24 @ =0x002B0024
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E28 @ =0x002B0025
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E2C @ =0x002B0026
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054E30 @ =0x002B0027
	bl EventWinMesSet_08041058
	movs r0, #0x9f
	bl EventUnsetFlag_080406D0
	movs r0, #0xa0
	bl EventUnsetFlag_080406D0
	movs r0, #0xa1
	bl UnsetEventFlag_080406D0
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
_08054DF8:
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_08054E04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054E0C: .4byte 0x002B0014
_08054E10: .4byte 0x002B001D
_08054E14: .4byte 0x002B001E
_08054E18: .4byte 0x002B001F
_08054E1C: .4byte 0x0808E8DC
_08054E20: .4byte 0x002B0023
_08054E24: .4byte 0x002B0024
_08054E28: .4byte 0x002B0025
_08054E2C: .4byte 0x002B0026
_08054E30: .4byte 0x002B0027

	thumb_func_start sub_08054E34
sub_08054E34: @ 0x08054E34
	push {lr}
	movs r0, #0xa0
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08054E46
	b _08054FAC
_08054E46:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl sub_080545FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F84 @ =0x002B0028
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F88 @ =0x002B0029
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F8C @ =0x002B002A
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F90 @ =0x002B002B
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0x17
	bl QuestFinish_08042814
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F94 @ =0x002B002C
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054F98 @ =0x002B002D
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F9C @ =0x002B002E
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054FA0 @ =0x002B002F
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054FA4 @ =0x002B0030
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054FA8 @ =0x002B0031
	bl EventWinMesSet_08041058
	movs r0, #0x6b
	bl EventSetMinigame_08040B84
	movs r0, #0xa1
	bl SetEventFlag_080406BC
	b _08055046
	.align 2, 0
_08054F84: .4byte 0x002B0028
_08054F88: .4byte 0x002B0029
_08054F8C: .4byte 0x002B002A
_08054F90: .4byte 0x002B002B
_08054F94: .4byte 0x002B002C
_08054F98: .4byte 0x002B002D
_08054F9C: .4byte 0x002B002E
_08054FA0: .4byte 0x002B002F
_08054FA4: .4byte 0x002B0030
_08054FA8: .4byte 0x002B0031
_08054FAC:
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805504C @ =0x002B0032
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055050 @ =0x002B0033
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055054 @ =0x002B0034
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08055058 @ =0x002B0035
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805505C @ =0x002B0036
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055060 @ =0x002B0037
	bl EventWinMesSet_08041058
	movs r0, #0x9f
	bl EventUnsetFlag_080406D0
	movs r0, #0xa0
	bl EventUnsetFlag_080406D0
	movs r0, #0xa1
	bl UnsetEventFlag_080406D0
_08055046:
	pop {r0}
	bx r0
	.align 2, 0
_0805504C: .4byte 0x002B0032
_08055050: .4byte 0x002B0033
_08055054: .4byte 0x002B0034
_08055058: .4byte 0x002B0035
_0805505C: .4byte 0x002B0036
_08055060: .4byte 0x002B0037

	thumb_func_start sub_08055064
sub_08055064: @ 0x08055064
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055110 @ =0x002B0038
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055114 @ =0x002B0039
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055118 @ =0x002B003A
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805511C @ =0x002B003B
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055120 @ =0x002B003C
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055124 @ =0x002B003D
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08055110: .4byte 0x002B0038
_08055114: .4byte 0x002B0039
_08055118: .4byte 0x002B003A
_0805511C: .4byte 0x002B003B
_08055120: .4byte 0x002B003C
_08055124: .4byte 0x002B003D

	thumb_func_start sub_08055128
sub_08055128: @ 0x08055128
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _080551AC @ =0x0808E3BC
	bl LoadBuildingBG_0804115C
	ldr r0, _080551B0 @ =0x0808E67C
	movs r1, #0x10
	movs r2, #0x30
	bl DisplayGFX_080414B4
	ldr r2, _080551B4 @ =0x0808E7BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x48
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _080551B8 @ =0x0808E70C
	movs r0, #4
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xa8
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _080551BC @ =0x0808E6BC
	movs r0, #7
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #7
	movs r1, #0
	bl sub_08041734
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	movs r0, #0xa1
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080551C4
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _080551C0 @ =sub_08055064
	bl RunEventScript_0804066C
	b _080552B8
	.align 2, 0
_080551AC: .4byte 0x0808E3BC
_080551B0: .4byte 0x0808E67C
_080551B4: .4byte 0x0808E7BC
_080551B8: .4byte 0x0808E70C
_080551BC: .4byte 0x0808E6BC
_080551C0: .4byte sub_08055064
_080551C4:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080551F4
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _080551F0 @ =sub_08054730
	bl RunEventScript_0804066C
	movs r0, #0x9f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080552B8
	movs r0, #0x6b
	bl EventQuestBegin_080406D0
	b _080552B8
	.align 2, 0
_080551F0: .4byte sub_08054730
_080551F4:
	ldr r4, _080552A4 @ =0x0808E9EC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #3
	bl sub_08041864
	movs r0, #1
	movs r1, #0x70
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080552A8
	cmp r0, #1
	ble _080552B8
	cmp r0, #2
	beq _080552AE
	b _080552B8
	.align 2, 0
_080552A4: .4byte 0x0808E9EC
_080552A8:
	movs r0, #0xa0
	bl EventSetFlag_080406E4
_080552AE:
	ldr r0, _0805536C @ =sub_08054E34
	bl RunEventScript_0804066C
	bl sub_08040B28
_080552B8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #6
	bl sub_080417E0
	movs r0, #6
	movs r1, #0
	bl sub_08041684
	movs r0, #7
	bl sub_080417E0
	movs r0, #7
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805536C: .4byte sub_08054E34

	thumb_func_start sub_08055370
sub_08055370: @ 0x08055370
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0x90
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554C8 @ =0x00240001
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554CC @ =0x00240002
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554D0 @ =0x00240003
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554D4 @ =0x00240004
	bl EventWinMesSet_08041058
	ldr r0, _080554D8 @ =0x00240005
	bl EventWinMesSet_08041058
	ldr r0, _080554DC @ =0x00240006
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080554F0
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _080554E0 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _080554E4 @ =0x00240007
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554E8 @ =0x00240008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554EC @ =0x00240009
	bl EventWinMesSet_08041058
	b _0805567E
	.align 2, 0
_080554C8: .4byte 0x00240001
_080554CC: .4byte 0x00240002
_080554D0: .4byte 0x00240003
_080554D4: .4byte 0x00240004
_080554D8: .4byte 0x00240005
_080554DC: .4byte 0x00240006
_080554E0: .4byte 0x0000011F
_080554E4: .4byte 0x00240007
_080554E8: .4byte 0x00240008
_080554EC: .4byte 0x00240009
_080554F0:
	ldr r1, _080555D0 @ =0x0024000A
	movs r0, #0x23
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055500
	b _0805567E
_08055500:
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555D4 @ =0x0024000B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555D8 @ =0x0024000C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555DC @ =0x0024000D
	bl EventWinMesSet_08041058
	ldr r0, _080555E0 @ =0x0024000E
	bl EventWinMesSet_08041058
	ldr r0, _080555E4 @ =0x0024000F
	bl EventWinMesSet_08041058
	ldr r0, _080555E8 @ =0x00240010
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080555F8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555EC @ =0x00240011
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555F0 @ =0x00240012
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555F4 @ =0x00240013
	bl EventWinMesSet_08041058
	b _08055634
	.align 2, 0
_080555D0: .4byte 0x0024000A
_080555D4: .4byte 0x0024000B
_080555D8: .4byte 0x0024000C
_080555DC: .4byte 0x0024000D
_080555E0: .4byte 0x0024000E
_080555E4: .4byte 0x0024000F
_080555E8: .4byte 0x00240010
_080555EC: .4byte 0x00240011
_080555F0: .4byte 0x00240012
_080555F4: .4byte 0x00240013
_080555F8:
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055684 @ =0x00240016
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055688 @ =0x00240017
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805568C @ =0x00240018
	bl EventWinMesSet_08041058
_08055634:
	ldr r1, _08055690 @ =0x0046002F
	movs r0, #0x76
	bl EventMgSpecialGoal_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055694 @ =0x00240014
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055698 @ =0x00240015
	bl EventWinMesSet_08041058
	movs r0, #0x8c
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_0805567E:
	pop {r0}
	bx r0
	.align 2, 0
_08055684: .4byte 0x00240016
_08055688: .4byte 0x00240017
_0805568C: .4byte 0x00240018
_08055690: .4byte 0x0046002F
_08055694: .4byte 0x00240014
_08055698: .4byte 0x00240015

	thumb_func_start sub_0805569C
sub_0805569C: @ 0x0805569C
	push {lr}
	movs r0, #0x8d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080556AE
	b _08055840
_080556AE:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055810 @ =0x00240019
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055814 @ =0x0024001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055818 @ =0x0024001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805581C @ =0x0024001C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055820 @ =0x0024001D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055824 @ =0x0024001E
	bl EventWinMesSet_08041058
	movs r0, #0x3b
	movs r1, #0x16
	bl QuestFinish_08042814
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055828 @ =0x0024001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805582C @ =0x00240020
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055830 @ =0x00240021
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055834 @ =0x00240022
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055838 @ =0x00240023
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805583C @ =0x00240024
	bl EventWinMesSet_08041058
	movs r0, #0x76
	bl EventSetMinigame_08040B84
	movs r0, #0x8e
	bl SetEventFlag_080406BC
	b _08055922
	.align 2, 0
_08055810: .4byte 0x00240019
_08055814: .4byte 0x0024001A
_08055818: .4byte 0x0024001B
_0805581C: .4byte 0x0024001C
_08055820: .4byte 0x0024001D
_08055824: .4byte 0x0024001E
_08055828: .4byte 0x0024001F
_0805582C: .4byte 0x00240020
_08055830: .4byte 0x00240021
_08055834: .4byte 0x00240022
_08055838: .4byte 0x00240023
_0805583C: .4byte 0x00240024
_08055840:
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055928 @ =0x00240025
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805592C @ =0x00240026
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055930 @ =0x00240027
	bl EventWinMesSet_08041058
	ldr r0, _08055934 @ =0x00240028
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055938 @ =0x00240029
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805593C @ =0x0024002A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055940 @ =0x0024002B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055944 @ =0x0024002C
	bl EventWinMesSet_08041058
	movs r0, #0x8c
	bl EventUnsetFlag_080406D0
	movs r0, #0x8d
	bl EventUnsetFlag_080406D0
	movs r0, #0x8e
	bl UnsetEventFlag_080406D0
_08055922:
	pop {r0}
	bx r0
	.align 2, 0
_08055928: .4byte 0x00240025
_0805592C: .4byte 0x00240026
_08055930: .4byte 0x00240027
_08055934: .4byte 0x00240028
_08055938: .4byte 0x00240029
_0805593C: .4byte 0x0024002A
_08055940: .4byte 0x0024002B
_08055944: .4byte 0x0024002C

	thumb_func_start sub_08055948
sub_08055948: @ 0x08055948
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559C0 @ =0x0024002D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559C4 @ =0x0024002E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559C8 @ =0x0024002F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559CC @ =0x00240030
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559D0 @ =0x00240031
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080559C0: .4byte 0x0024002D
_080559C4: .4byte 0x0024002E
_080559C8: .4byte 0x0024002F
_080559CC: .4byte 0x00240030
_080559D0: .4byte 0x00240031

	thumb_func_start sub_080559D4
sub_080559D4: @ 0x080559D4
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08055A5C @ =0x0808E3E4
	bl LoadBuildingBG_0804115C
	ldr r0, _08055A60 @ =0x0818043C
	movs r1, #0
	movs r2, #0x3c
	bl sub_08041464
	ldr r2, _08055A64 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x48
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _08055A68 @ =0x0808E70C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x5c
	bl EventPlaceChara_08041894
	ldr r2, _08055A6C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x8e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08055A74
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08055A70 @ =sub_08055948
	bl RunEventScript_0804066C
	b _08055ACC
	.align 2, 0
_08055A5C: .4byte 0x0808E3E4
_08055A60: .4byte 0x0818043C
_08055A64: .4byte 0x0808E7BC
_08055A68: .4byte 0x0808E70C
_08055A6C: .4byte 0x0808E6BC
_08055A70: .4byte sub_08055948
_08055A74:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055AA4
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08055AA0 @ =sub_08055370
	bl RunEventScript_0804066C
	movs r0, #0x8c
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08055ACC
	movs r0, #0x76
	bl EventQuestBegin_080406D0
	b _08055ACC
	.align 2, 0
_08055AA0: .4byte sub_08055370
_08055AA4:
	movs r0, #0x16
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08055ABC
	cmp r0, #1
	ble _08055ACC
	cmp r0, #2
	beq _08055AC2
	b _08055ACC
_08055ABC:
	movs r0, #0x8d
	bl EventSetFlag_080406E4
_08055AC2:
	ldr r0, _08055B10 @ =sub_0805569C
	bl RunEventScript_0804066C
	bl sub_08040B28
_08055ACC:
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_08041498
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08055B10: .4byte sub_0805569C

	thumb_func_start sub_08055B14
sub_08055B14: @ 0x08055B14
	push {lr}
	sub sp, #4
	ldr r1, _08055B30 @ =0x0808DC5C
	mov r0, sp
	movs r2, #3
	bl memcpy
	mov r0, sp
	movs r1, #3
	bl sub_08041E18
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08055B30: .4byte 0x0808DC5C

	thumb_func_start sub_08055B34
sub_08055B34: @ 0x08055B34
	push {r4, lr}
	sub sp, #0xc
	movs r0, #2
	movs r1, #0x40
	movs r2, #0x88
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	mov r1, sp
	ldr r0, _08055BD8 @ =0x0808DC60
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #1
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	movs r0, #0xa0
	lsls r0, r0, #0xb
	bl EventWinMesSet_08041058
	ldr r0, _08055BDC @ =0x00050001
	bl EventWinMesSet_08041058
	ldr r0, _08055BE0 @ =0x00050002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08055BE8
	movs r0, #1
	bl sub_08041DE0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0x88
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _08055BE4 @ =0x00050003
	bl EventWinMesSet_08041058
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_080410F0
	b _08055F14
	.align 2, 0
_08055BD8: .4byte 0x0808DC60
_08055BDC: .4byte 0x00050001
_08055BE0: .4byte 0x00050002
_08055BE4: .4byte 0x00050003
_08055BE8:
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_080410F0
	ldr r1, _08055E10 @ =0x00050004
	movs r0, #4
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055C00
	b _08055F14
_08055C00:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	movs r0, #1
	bl sub_08041DE0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E14 @ =0x00050005
	bl EventWinMesSet_08041058
	ldr r0, _08055E18 @ =0x00050006
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E1C @ =0x00050007
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08055E20 @ =0x0000011B
	bl sub_080410E0
	movs r0, #2
	movs r1, #0x40
	movs r2, #0
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0x40
	movs r2, #0x38
	movs r3, #0xc
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E24 @ =0x00050008
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E28 @ =0x00050009
	bl EventWinMesSet_08041058
	ldr r0, _08055E2C @ =0x0005000A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E30 @ =0x0005000B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E34 @ =0x0005000C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E38 @ =0x0005000D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E3C @ =0x0005000E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E40 @ =0x0005000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E44 @ =0x00050010
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08055E48 @ =0x00050011
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0x70
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08055E4C @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E50 @ =0x00050012
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E54 @ =0x00050013
	bl EventWinMesSet_08041058
	ldr r0, _08055E58 @ =0x00050014
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08055E5C @ =0x00050015
	bl EventWinMesSet_08041058
	ldr r0, _08055E60 @ =0x00050016
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055E68
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08055E64 @ =0x00050017
	bl EventWinMesSet_08041058
	b _08055E6E
	.align 2, 0
_08055E10: .4byte 0x00050004
_08055E14: .4byte 0x00050005
_08055E18: .4byte 0x00050006
_08055E1C: .4byte 0x00050007
_08055E20: .4byte 0x0000011B
_08055E24: .4byte 0x00050008
_08055E28: .4byte 0x00050009
_08055E2C: .4byte 0x0005000A
_08055E30: .4byte 0x0005000B
_08055E34: .4byte 0x0005000C
_08055E38: .4byte 0x0005000D
_08055E3C: .4byte 0x0005000E
_08055E40: .4byte 0x0005000F
_08055E44: .4byte 0x00050010
_08055E48: .4byte 0x00050011
_08055E4C: .4byte 0x00000129
_08055E50: .4byte 0x00050012
_08055E54: .4byte 0x00050013
_08055E58: .4byte 0x00050014
_08055E5C: .4byte 0x00050015
_08055E60: .4byte 0x00050016
_08055E64: .4byte 0x00050017
_08055E68:
	ldr r0, _08055F1C @ =0x0005001E
	bl EventWinMesSet_08041058
_08055E6E:
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055F20 @ =0x00050018
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055F24 @ =0x00050019
	bl EventWinMesSet_08041058
	ldr r0, _08055F28 @ =0x0005001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055F2C @ =sub_08055B14
	bl RunEventScript_0804066C
	movs r0, #0x78
	bl EventSleep_08040690
	bl sub_08041F3C
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055F30 @ =0x0005001B
	bl EventWinMesSet_08041058
	ldr r0, _08055F34 @ =0x0005001C
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055F38 @ =0x0005001D
	bl EventWinMesSet_08041058
	movs r0, #0x12
	bl EventSetFlag_080406E4
	movs r0, #7
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2a
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #3
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0xe
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x24
	bl SetCharacterMetFlag_0802D7CC
_08055F14:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055F1C: .4byte 0x0005001E
_08055F20: .4byte 0x00050018
_08055F24: .4byte 0x00050019
_08055F28: .4byte 0x0005001A
_08055F2C: .4byte sub_08055B14
_08055F30: .4byte 0x0005001B
_08055F34: .4byte 0x0005001C
_08055F38: .4byte 0x0005001D

	thumb_func_start sub_08055F3C
sub_08055F3C: @ 0x08055F3C
	push {lr}
	sub sp, #4
	ldr r1, _08055F88 @ =0x0808DC5C
	mov r0, sp
	movs r2, #3
	bl memcpy
_08055F4A:
	mov r0, sp
	movs r1, #3
	bl sub_08041F9C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08055F9C
	cmp r0, #1
	beq _08055FD4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055F8C @ =0x00050027
	bl EventWinMesSet_08041058
	ldr r0, _08055F90 @ =0x00050028
	bl EventWinMesSet_08041058
	ldr r0, _08055F94 @ =0x00050029
	bl EventWinMesSet_08041058
	ldr r0, _08055F98 @ =0x0005002A
	b _08055FFA
	.align 2, 0
_08055F88: .4byte 0x0808DC5C
_08055F8C: .4byte 0x00050027
_08055F90: .4byte 0x00050028
_08055F94: .4byte 0x00050029
_08055F98: .4byte 0x0005002A
_08055F9C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055FC4 @ =0x0005001F
	bl EventWinMesSet_08041058
	ldr r0, _08055FC8 @ =0x00050020
	bl EventWinMesSet_08041058
	ldr r0, _08055FCC @ =0x00050021
	bl EventWinMesSet_08041058
	ldr r0, _08055FD0 @ =0x00050022
	b _08055FFA
	.align 2, 0
_08055FC4: .4byte 0x0005001F
_08055FC8: .4byte 0x00050020
_08055FCC: .4byte 0x00050021
_08055FD0: .4byte 0x00050022
_08055FD4:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056040 @ =0x00050023
	bl EventWinMesSet_08041058
	ldr r0, _08056044 @ =0x00050024
	bl EventWinMesSet_08041058
	ldr r0, _08056048 @ =0x00050025
	bl EventWinMesSet_08041058
	ldr r0, _0805604C @ =0x00050026
_08055FFA:
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056050 @ =0x0005002B
	bl EventWinMesSet_08041058
	ldr r0, _08056054 @ =0x0005002C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08055F4A
	ldr r0, _08056058 @ =0x0005002D
	bl EventWinMesSet_08041058
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08056040: .4byte 0x00050023
_08056044: .4byte 0x00050024
_08056048: .4byte 0x00050025
_0805604C: .4byte 0x00050026
_08056050: .4byte 0x0005002B
_08056054: .4byte 0x0005002C
_08056058: .4byte 0x0005002D

	thumb_func_start sub_0805605C
sub_0805605C: @ 0x0805605C
	push {lr}
	sub sp, #4
	ldr r1, _080563F0 @ =0x0808DC5C
	mov r0, sp
	movs r2, #3
	bl memcpy
	ldr r0, _080563F4 @ =0x0005002E
	bl EventWinMesSet_08041058
	mov r0, sp
	movs r1, #3
	bl sub_08041F9C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056080
	b _0805645C
_08056080:
	ldr r0, _080563F8 @ =0x0005002F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x70
	movs r3, #0xa
	bl sub_08041938
	ldr r0, _080563FC @ =0x0000011B
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056400 @ =0x00050030
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08056404 @ =0x00050031
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056408 @ =0x00050032
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805640C @ =0x00050033
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056410 @ =0x00050034
	bl EventWinMesSet_08041058
	ldr r0, _08056414 @ =0x00050035
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056418 @ =0x00050036
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805641C @ =0x00050037
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0xb8
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056420 @ =0x00050038
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056424 @ =0x00050039
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0xbc
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056428 @ =0x0005003A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805642C @ =0x0005003B
	bl EventWinMesSet_08041058
	ldr r0, _08056430 @ =0x0005003C
	bl EventWinMesSet_08041058
	ldr r0, _08056434 @ =0x0005003D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056438 @ =0x0005003E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805643C @ =0x0005003F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056440 @ =0x00050040
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056444 @ =0x00050041
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r1, #0x82
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056448 @ =0x00050042
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805644C @ =0x00050043
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x38
	movs r3, #0x78
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056450 @ =0x00050044
	bl EventWinMesSet_08041058
	ldr r0, _08056454 @ =0x00050045
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	movs r1, #0x10
	bl QuestFinish_08042814
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056458 @ =0x00050046
	bl EventWinMesSet_08041058
	movs r0, #0x15
	bl SetEventFlag_080406BC
	b _080564C8
	.align 2, 0
_080563F0: .4byte 0x0808DC5C
_080563F4: .4byte 0x0005002E
_080563F8: .4byte 0x0005002F
_080563FC: .4byte 0x0000011B
_08056400: .4byte 0x00050030
_08056404: .4byte 0x00050031
_08056408: .4byte 0x00050032
_0805640C: .4byte 0x00050033
_08056410: .4byte 0x00050034
_08056414: .4byte 0x00050035
_08056418: .4byte 0x00050036
_0805641C: .4byte 0x00050037
_08056420: .4byte 0x00050038
_08056424: .4byte 0x00050039
_08056428: .4byte 0x0005003A
_0805642C: .4byte 0x0005003B
_08056430: .4byte 0x0005003C
_08056434: .4byte 0x0005003D
_08056438: .4byte 0x0005003E
_0805643C: .4byte 0x0005003F
_08056440: .4byte 0x00050040
_08056444: .4byte 0x00050041
_08056448: .4byte 0x00050042
_0805644C: .4byte 0x00050043
_08056450: .4byte 0x00050044
_08056454: .4byte 0x00050045
_08056458: .4byte 0x00050046
_0805645C:
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080564D0 @ =0x00050047
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080564D4 @ =0x00050048
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _080564D8 @ =0x00050049
	bl EventWinMesSet_08041058
	ldr r0, _080564DC @ =0x0005004A
	bl EventWinMesSet_08041058
	ldr r0, _080564E0 @ =0x0005004B
	bl EventWinMesSet_08041058
	movs r0, #0x12
	bl EventUnsetFlag_080406D0
	movs r0, #0x13
	bl EventUnsetFlag_080406D0
	movs r0, #0x14
	bl EventUnsetFlag_080406D0
	movs r0, #0x15
	bl UnsetEventFlag_080406D0
_080564C8:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080564D0: .4byte 0x00050047
_080564D4: .4byte 0x00050048
_080564D8: .4byte 0x00050049
_080564DC: .4byte 0x0005004A
_080564E0: .4byte 0x0005004B

	thumb_func_start sub_080564E4
sub_080564E4: @ 0x080564E4
	push {lr}
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805653C @ =0x0005004C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056540 @ =0x0005004D
	bl EventWinMesSet_08041058
	ldr r0, _08056544 @ =0x0005004E
	bl EventWinMesSet_08041058
	ldr r0, _08056548 @ =0x0005004F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805654C @ =0x00050050
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805653C: .4byte 0x0005004C
_08056540: .4byte 0x0005004D
_08056544: .4byte 0x0005004E
_08056548: .4byte 0x0005004F
_0805654C: .4byte 0x00050050

	thumb_func_start sub_08056550
sub_08056550: @ 0x08056550
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08056608 @ =0x0808E40C
	bl LoadBuildingBG_0804115C
	ldr r0, _0805660C @ =0x0808E68C
	movs r1, #0x78
	movs r2, #0x68
	bl DisplayGFX_080414B4
	ldr r2, _08056610 @ =0x0808E80C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0xc8
	bl sub_08041830
	ldr r2, _08056614 @ =0x0808EA4C
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xc9
	bl sub_08041830
	ldr r2, _08056618 @ =0x0808E81C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x8c
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0xca
	bl sub_08041830
	ldr r2, _0805661C @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x7c
	movs r2, #0x44
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x15
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08056624
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08056620 @ =sub_080564E4
	bl RunEventScript_0804066C
	b _0805664A
	.align 2, 0
_08056608: .4byte 0x0808E40C
_0805660C: .4byte 0x0808E68C
_08056610: .4byte 0x0808E80C
_08056614: .4byte 0x0808EA4C
_08056618: .4byte 0x0808E81C
_0805661C: .4byte 0x0808E6BC
_08056620: .4byte sub_080564E4
_08056624:
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _0805669C @ =sub_08055B34
	bl RunEventScript_0804066C
	movs r0, #0x12
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805664A
	ldr r0, _080566A0 @ =sub_08055F3C
	bl RunEventScript_0804066C
	ldr r0, _080566A4 @ =sub_0805605C
	bl RunEventScript_0804066C
_0805664A:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0805669C: .4byte sub_08055B34
_080566A0: .4byte sub_08055F3C
_080566A4: .4byte sub_0805605C

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
	bl sub_080410E0
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
	bl sub_080410E0
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

	thumb_func_start sub_080567AC
sub_080567AC: @ 0x080567AC
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe0
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _08056810 @ =0x001C0001
	bl EventWinMesSet_08041058
	ldr r0, _08056814 @ =0x001C0002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805681C
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056818 @ =0x001C0003
	bl EventWinMesSet_08041058
	b _08056980
	.align 2, 0
_08056810: .4byte 0x001C0001
_08056814: .4byte 0x001C0002
_08056818: .4byte 0x001C0003
_0805681C:
	ldr r1, _080568E0 @ =0x001C0004
	movs r0, #0x1b
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805682C
	b _08056980
_0805682C:
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080568E4 @ =0x001C0005
	bl EventWinMesSet_08041058
	ldr r0, _080568E8 @ =0x001C0006
	bl EventWinMesSet_08041058
	ldr r0, _080568EC @ =0x001C0007
	bl EventWinMesSet_08041058
	ldr r0, _080568F0 @ =0x001C0008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080568F4 @ =0x001C0009
	bl EventWinMesSet_08041058
	ldr r0, _080568F8 @ =0x001C000A
	bl EventWinMesSet_08041058
	ldr r0, _080568FC @ =0x001C000B
	bl EventWinMesSet_08041058
	ldr r0, _08056900 @ =0x001C000C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08056908
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056904 @ =0x001C000D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	b _08056944
	.align 2, 0
_080568E0: .4byte 0x001C0004
_080568E4: .4byte 0x001C0005
_080568E8: .4byte 0x001C0006
_080568EC: .4byte 0x001C0007
_080568F0: .4byte 0x001C0008
_080568F4: .4byte 0x001C0009
_080568F8: .4byte 0x001C000A
_080568FC: .4byte 0x001C000B
_08056900: .4byte 0x001C000C
_08056904: .4byte 0x001C000D
_08056908:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056984 @ =0x001C0012
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056988 @ =0x001C0013
	bl EventWinMesSet_08041058
_08056944:
	ldr r0, _0805698C @ =0x001C000E
	bl EventWinMesSet_08041058
	ldr r0, _08056990 @ =0x001C000F
	bl EventWinMesSet_08041058
	ldr r0, _08056994 @ =0x001C0010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056998 @ =0x001C0011
	bl EventWinMesSet_08041058
	movs r0, #0x6e
	bl EventSetFlag_080406E4
	movs r0, #0x13
	bl SetCharacterMetFlag_0802D7CC
_08056980:
	pop {r0}
	bx r0
	.align 2, 0
_08056984: .4byte 0x001C0012
_08056988: .4byte 0x001C0013
_0805698C: .4byte 0x001C000E
_08056990: .4byte 0x001C000F
_08056994: .4byte 0x001C0010
_08056998: .4byte 0x001C0011

	thumb_func_start sub_0805699C
sub_0805699C: @ 0x0805699C
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	ldr r0, _080569D8 @ =0x001C0014
	bl EventWinMesSet_08041058
	ldr r0, _080569DC @ =0x001C0015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080569E0 @ =0x001C0011
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080569D8: .4byte 0x001C0014
_080569DC: .4byte 0x001C0015
_080569E0: .4byte 0x001C0011

	thumb_func_start sub_080569E4
sub_080569E4: @ 0x080569E4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056A84 @ =0x001C0027
	bl EventWinMesSet_08041058
	ldr r0, _08056A88 @ =0x001C0028
	bl EventWinMesSet_08041058
	ldr r0, _08056A8C @ =0x001C0029
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056AA8
	ldr r0, _08056A90 @ =0x001C0030
	bl EventWinMesSet_08041058
	ldr r0, _08056A94 @ =0x001C0031
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056A98 @ =0x001C0032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056A9C @ =0x001C0033
	bl EventWinMesSet_08041058
	ldr r0, _08056AA0 @ =0x001C0034
	bl EventWinMesSet_08041058
	ldr r0, _08056AA4 @ =0x001C0035
	bl EventWinMesSet_08041058
	movs r0, #0x6e
	bl EventUnsetFlag_080406D0
	movs r0, #0x6f
	bl EventUnsetFlag_080406D0
	movs r0, #0x70
	bl EventUnsetFlag_080406D0
	movs r0, #0x71
	bl EventUnsetFlag_080406D0
	movs r0, #0x72
	bl UnsetEventFlag_080406D0
	b _08056B28
	.align 2, 0
_08056A84: .4byte 0x001C0027
_08056A88: .4byte 0x001C0028
_08056A8C: .4byte 0x001C0029
_08056A90: .4byte 0x001C0030
_08056A94: .4byte 0x001C0031
_08056A98: .4byte 0x001C0032
_08056A9C: .4byte 0x001C0033
_08056AA0: .4byte 0x001C0034
_08056AA4: .4byte 0x001C0035
_08056AA8:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056B2C @ =0x001C002A
	bl EventWinMesSet_08041058
	ldr r0, _08056B30 @ =0x001C002B
	bl EventWinMesSet_08041058
	ldr r0, _08056B34 @ =0x001C002C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056B38 @ =0x001C002D
	bl EventWinMesSet_08041058
	movs r0, #9
	movs r1, #0x15
	bl QuestFinish_08042814
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056B3C @ =0x001C002E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056B40 @ =0x001C002F
	bl EventWinMesSet_08041058
	movs r0, #0x72
	bl SetEventFlag_080406BC
_08056B28:
	pop {r0}
	bx r0
	.align 2, 0
_08056B2C: .4byte 0x001C002A
_08056B30: .4byte 0x001C002B
_08056B34: .4byte 0x001C002C
_08056B38: .4byte 0x001C002D
_08056B3C: .4byte 0x001C002E
_08056B40: .4byte 0x001C002F

	thumb_func_start sub_08056B44
sub_08056B44: @ 0x08056B44
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056B80 @ =0x001C0036
	bl EventWinMesSet_08041058
	ldr r0, _08056B84 @ =0x001C0037
	bl EventWinMesSet_08041058
	ldr r0, _08056B88 @ =0x001C0038
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08056B80: .4byte 0x001C0036
_08056B84: .4byte 0x001C0037
_08056B88: .4byte 0x001C0038

	thumb_func_start sub_08056B8C
sub_08056B8C: @ 0x08056B8C
	push {lr}
	sub sp, #8
	bl EventInit_080405B8
	ldr r0, _08056C28 @ =0x0808E45C
	bl LoadBuildingBG_0804115C
	ldr r2, _08056C2C @ =0x0808E7DC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x80
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r2, _08056C30 @ =0x0808E6CC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x80
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056C34 @ =0x0808DC6C
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	movs r0, #1
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	bl sub_080407FC
	movs r0, #0x72
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08056C3C
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08056C38 @ =sub_08056B44
	bl RunEventScript_0804066C
	b _08056C88
	.align 2, 0
_08056C28: .4byte 0x0808E45C
_08056C2C: .4byte 0x0808E7DC
_08056C30: .4byte 0x0808E6CC
_08056C34: .4byte 0x0808DC6C
_08056C38: .4byte sub_08056B44
_08056C3C:
	movs r0, #0x6f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056C5C
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	ldr r0, _08056C58 @ =sub_080569E4
	bl RunEventScript_0804066C
	b _08056C88
	.align 2, 0
_08056C58: .4byte sub_080569E4
_08056C5C:
	movs r0, #0x6e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056C7C
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	ldr r0, _08056C78 @ =sub_0805699C
	bl RunEventScript_0804066C
	b _08056C88
	.align 2, 0
_08056C78: .4byte sub_0805699C
_08056C7C:
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08056CBC @ =sub_080567AC
	bl RunEventScript_0804066C
_08056C88:
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
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08056CBC: .4byte sub_080567AC

	thumb_func_start sub_08056CC0
sub_08056CC0: @ 0x08056CC0
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	movs r0, #0xbc
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _08056D4C @ =0x002F0001
	bl EventWinMesSet_08041058
	ldr r0, _08056D50 @ =0x002F0002
	bl EventWinMesSet_08041058
	ldr r0, _08056D54 @ =0x002F0003
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r0, _08056D58 @ =0x002F0004
	bl EventWinMesSet_08041058
	ldr r0, _08056D5C @ =0x002F0005
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056D68
	ldr r0, _08056D60 @ =0x002F0006
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08056D64 @ =0x002F0007
	bl EventWinMesSet_08041058
	b _08056E56
	.align 2, 0
_08056D4C: .4byte 0x002F0001
_08056D50: .4byte 0x002F0002
_08056D54: .4byte 0x002F0003
_08056D58: .4byte 0x002F0004
_08056D5C: .4byte 0x002F0005
_08056D60: .4byte 0x002F0006
_08056D64: .4byte 0x002F0007
_08056D68:
	ldr r1, _08056DE8 @ =0x002F0008
	movs r0, #0x2e
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056E56
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056DEC @ =0x002F0009
	bl EventWinMesSet_08041058
	ldr r0, _08056DF0 @ =0x002F000A
	bl EventWinMesSet_08041058
	ldr r0, _08056DF4 @ =0x002F000B
	bl EventWinMesSet_08041058
	ldr r0, _08056DF8 @ =0x002F000C
	bl EventWinMesSet_08041058
	ldr r0, _08056DFC @ =0x002F000D
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08056E14
	ldr r0, _08056E00 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056E04 @ =0x002F000E
	bl EventWinMesSet_08041058
	ldr r0, _08056E08 @ =0x002F000F
	bl EventWinMesSet_08041058
	ldr r0, _08056E0C @ =0x002F0010
	bl EventWinMesSet_08041058
	ldr r0, _08056E10 @ =0x002F0011
	bl EventWinMesSet_08041058
	b _08056E4A
	.align 2, 0
_08056DE8: .4byte 0x002F0008
_08056DEC: .4byte 0x002F0009
_08056DF0: .4byte 0x002F000A
_08056DF4: .4byte 0x002F000B
_08056DF8: .4byte 0x002F000C
_08056DFC: .4byte 0x002F000D
_08056E00: .4byte 0x0000011B
_08056E04: .4byte 0x002F000E
_08056E08: .4byte 0x002F000F
_08056E0C: .4byte 0x002F0010
_08056E10: .4byte 0x002F0011
_08056E14:
	ldr r0, _08056E5C @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056E60 @ =0x002F0012
	bl EventWinMesSet_08041058
	ldr r0, _08056E64 @ =0x002F0013
	bl EventWinMesSet_08041058
	ldr r0, _08056E68 @ =0x002F0014
	bl EventWinMesSet_08041058
	ldr r0, _08056E6C @ =0x002F0015
	bl EventWinMesSet_08041058
_08056E4A:
	movs r0, #0xae
	bl EventSetFlag_080406E4
	movs r0, #0x2f
	bl SetCharacterMetFlag_0802D7CC
_08056E56:
	pop {r0}
	bx r0
	.align 2, 0
_08056E5C: .4byte 0x0000011B
_08056E60: .4byte 0x002F0012
_08056E64: .4byte 0x002F0013
_08056E68: .4byte 0x002F0014
_08056E6C: .4byte 0x002F0015

	thumb_func_start sub_08056E70
sub_08056E70: @ 0x08056E70
	push {r4, r5, lr}
	bl EventWinInit_08040fe8
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056EB4 @ =0x002F0016
	bl EventWinMesSet_08041058
	ldr r0, _08056EB8 @ =0x002F0017
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056ECC
	movs r0, #0xd2
	bl sub_080410E0
	ldr r0, _08056EBC @ =0x002F0018
	bl EventWinMesSet_08041058
	ldr r0, _08056EC0 @ =0x002F0019
	bl EventWinMesSet_08041058
	ldr r0, _08056EC4 @ =0x002F001A
	bl EventWinMesSet_08041058
	ldr r0, _08056EC8 @ =0x002F001B
	bl EventWinMesSet_08041058
	b _0805706A
	.align 2, 0
_08056EB4: .4byte 0x002F0016
_08056EB8: .4byte 0x002F0017
_08056EBC: .4byte 0x002F0018
_08056EC0: .4byte 0x002F0019
_08056EC4: .4byte 0x002F001A
_08056EC8: .4byte 0x002F001B
_08056ECC:
	ldr r5, _08056F34 @ =0x0000014B
	adds r0, r5, #0
	bl sub_080410E0
	ldr r4, _08056F38 @ =0x0000011B
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056F3C @ =0x002F001C
	bl EventWinMesSet_08041058
	ldr r0, _08056F40 @ =0x002F001D
	bl EventWinMesSet_08041058
	ldr r0, _08056F44 @ =0x002F001E
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056F58
	movs r0, #0xd2
	bl sub_080410E0
	ldr r0, _08056F48 @ =0x002F001F
	bl EventWinMesSet_08041058
	ldr r0, _08056F4C @ =0x002F0020
	bl EventWinMesSet_08041058
	ldr r0, _08056F50 @ =0x002F0021
	bl EventWinMesSet_08041058
	ldr r0, _08056F54 @ =0x002F0022
	bl EventWinMesSet_08041058
	b _0805706A
	.align 2, 0
_08056F34: .4byte 0x0000014B
_08056F38: .4byte 0x0000011B
_08056F3C: .4byte 0x002F001C
_08056F40: .4byte 0x002F001D
_08056F44: .4byte 0x002F001E
_08056F48: .4byte 0x002F001F
_08056F4C: .4byte 0x002F0020
_08056F50: .4byte 0x002F0021
_08056F54: .4byte 0x002F0022
_08056F58:
	adds r0, r5, #0
	bl sub_080410E0
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056FBC @ =0x002F0023
	bl EventWinMesSet_08041058
	ldr r0, _08056FC0 @ =0x002F0024
	bl EventWinMesSet_08041058
	ldr r0, _08056FC4 @ =0x002F0025
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08056FD8
	movs r0, #0xd2
	bl sub_080410E0
	ldr r0, _08056FC8 @ =0x002F0026
	bl EventWinMesSet_08041058
	ldr r0, _08056FCC @ =0x002F0027
	bl EventWinMesSet_08041058
	ldr r0, _08056FD0 @ =0x002F0028
	bl EventWinMesSet_08041058
	ldr r0, _08056FD4 @ =0x002F0029
	bl EventWinMesSet_08041058
	b _0805706A
	.align 2, 0
_08056FBC: .4byte 0x002F0023
_08056FC0: .4byte 0x002F0024
_08056FC4: .4byte 0x002F0025
_08056FC8: .4byte 0x002F0026
_08056FCC: .4byte 0x002F0027
_08056FD0: .4byte 0x002F0028
_08056FD4: .4byte 0x002F0029
_08056FD8:
	adds r0, r5, #0
	bl sub_080410E0
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08057070 @ =0x002F002A
	bl EventWinMesSet_08041058
	ldr r0, _08057074 @ =0x002F002B
	bl EventWinMesSet_08041058
	ldr r0, _08057078 @ =0x002F002C
	bl EventWinMesSet_08041058
	ldr r0, _0805707C @ =0x002F002D
	bl EventWinMesSet_08041058
	ldr r0, _08057080 @ =0x002F002E
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	movs r1, #0x18
	bl QuestFinish_08042814
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057084 @ =0x002F002F
	bl EventWinMesSet_08041058
	ldr r0, _08057088 @ =0x002F0030
	bl EventWinMesSet_08041058
	ldr r0, _0805708C @ =0x002F0031
	bl EventWinMesSet_08041058
	ldr r0, _08057090 @ =0x002F0032
	bl EventWinMesSet_08041058
	movs r0, #0xaf
	bl EventSetFlag_080406E4
	movs r0, #0xb1
	bl SetEventFlag_080406BC
_0805706A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057070: .4byte 0x002F002A
_08057074: .4byte 0x002F002B
_08057078: .4byte 0x002F002C
_0805707C: .4byte 0x002F002D
_08057080: .4byte 0x002F002E
_08057084: .4byte 0x002F002F
_08057088: .4byte 0x002F0030
_0805708C: .4byte 0x002F0031
_08057090: .4byte 0x002F0032

	thumb_func_start sub_08057094
sub_08057094: @ 0x08057094
	push {lr}
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	ldr r0, _080570FC @ =0x002F0033
	bl EventWinMesSet_08041058
	ldr r0, _08057100 @ =0x002F0034
	bl EventWinMesSet_08041058
	ldr r0, _08057104 @ =0x002F0035
	bl EventWinMesSet_08041058
	ldr r0, _08057108 @ =0x002F0036
	bl EventWinMesSet_08041058
	ldr r0, _0805710C @ =0x002F0037
	bl EventWinMesSet_08041058
	ldr r0, _08057110 @ =0x002F0038
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080570FC: .4byte 0x002F0033
_08057100: .4byte 0x002F0034
_08057104: .4byte 0x002F0035
_08057108: .4byte 0x002F0036
_0805710C: .4byte 0x002F0037
_08057110: .4byte 0x002F0038

	thumb_func_start sub_08057114
sub_08057114: @ 0x08057114
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08057194 @ =0x0808E484
	bl LoadBuildingBG_0804115C
	ldr r2, _08057198 @ =0x0808E9DC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	ldr r2, _0805719C @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7a
	movs r2, #0x36
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xb1
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080571A4
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _080571A0 @ =sub_08057094
	bl RunEventScript_0804066C
	b _080571E6
	.align 2, 0
_08057194: .4byte 0x0808E484
_08057198: .4byte 0x0808E9DC
_0805719C: .4byte 0x0808E6BC
_080571A0: .4byte sub_08057094
_080571A4:
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08057218 @ =sub_08056CC0
	bl RunEventScript_0804066C
	movs r0, #0xae
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080571E6
	ldr r0, _0805721C @ =sub_08056E70
	bl RunEventScript_0804066C
	movs r0, #0xaf
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080571E6
	movs r0, #0xae
	bl EventUnsetFlag_080406D0
	movs r0, #0xaf
	bl EventUnsetFlag_080406D0
	movs r0, #0xb0
	bl EventUnsetFlag_080406D0
	movs r0, #0xb1
	bl UnsetEventFlag_080406D0
_080571E6:
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
_08057218: .4byte sub_08056CC0
_0805721C: .4byte sub_08056E70

	thumb_func_start sub_08057220
sub_08057220: @ 0x08057220
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	mov r1, sp
	ldr r0, _0805724C @ =0x0808DC74
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805724C: .4byte 0x0808DC74

	thumb_func_start sub_08057250
sub_08057250: @ 0x08057250
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	mov r1, sp
	ldr r0, _080572D8 @ =0x0808DC80
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _080572DC @ =0x00100001
	bl EventWinMesSet_08041058
	ldr r0, _080572E0 @ =0x00100002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080572E8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080572E4 @ =0x00100003
	bl EventWinMesSet_08041058
	b _080573B0
	.align 2, 0
_080572D8: .4byte 0x0808DC80
_080572DC: .4byte 0x00100001
_080572E0: .4byte 0x00100002
_080572E4: .4byte 0x00100003
_080572E8:
	ldr r1, _08057348 @ =0x00100004
	movs r0, #0xf
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080573B0
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805734C @ =0x00100005
	bl EventWinMesSet_08041058
	ldr r0, _08057350 @ =0x00100006
	bl EventWinMesSet_08041058
	ldr r0, _08057354 @ =0x00100007
	bl EventWinMesSet_08041058
	ldr r0, _08057358 @ =0x00100008
	bl EventWinMesSet_08041058
	ldr r0, _0805735C @ =0x00100009
	bl EventWinMesSet_08041058
	ldr r0, _08057360 @ =0x0010000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057368
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08057364 @ =0x0010000B
	bl EventWinMesSet_08041058
	b _08057380
	.align 2, 0
_08057348: .4byte 0x00100004
_0805734C: .4byte 0x00100005
_08057350: .4byte 0x00100006
_08057354: .4byte 0x00100007
_08057358: .4byte 0x00100008
_0805735C: .4byte 0x00100009
_08057360: .4byte 0x0010000A
_08057364: .4byte 0x0010000B
_08057368:
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080573B8 @ =0x0010000F
	bl EventWinMesSet_08041058
	ldr r0, _080573BC @ =0x00100010
	bl EventWinMesSet_08041058
_08057380:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080573C0 @ =0x0010000C
	bl EventWinMesSet_08041058
	ldr r0, _080573C4 @ =0x0010000D
	bl EventWinMesSet_08041058
	ldr r0, _080573C8 @ =0x0010000E
	bl EventWinMesSet_08041058
	movs r0, #0x3e
	bl EventSetFlag_080406E4
	movs r0, #0x24
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0xf
	bl SetCharacterMetFlag_0802D7CC
_080573B0:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080573B8: .4byte 0x0010000F
_080573BC: .4byte 0x00100010
_080573C0: .4byte 0x0010000C
_080573C4: .4byte 0x0010000D
_080573C8: .4byte 0x0010000E

	thumb_func_start sub_080573CC
sub_080573CC: @ 0x080573CC
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0xc
	bl EventWinSpeakerSet_08041018
	movs r0, #0x3f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080574DC
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574B4 @ =0x00100011
	bl EventWinMesSet_08041058
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574B8 @ =0x00100012
	bl EventWinMesSet_08041058
	movs r0, #0xc
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574BC @ =0x00100013
	bl EventWinMesSet_08041058
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	ldr r0, _080574C0 @ =0x00100014
	bl EventWinMesSet_08041058
	movs r0, #0xc
	bl EventWinSpeakerSet_08041018
	ldr r0, _080574C4 @ =0x00100015
	bl EventWinMesSet_08041058
	bl sub_08057220
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574C8 @ =0x00100016
	bl EventWinMesSet_08041058
	ldr r0, _080574CC @ =0x00100017
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574D0 @ =0x00100018
	bl EventWinMesSet_08041058
	movs r0, #6
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	ldr r0, _080574D4 @ =0x00100019
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574D8 @ =0x0010001A
	bl EventWinMesSet_08041058
	movs r0, #0x41
	bl SetEventFlag_080406BC
	b _08057530
	.align 2, 0
_080574B4: .4byte 0x00100011
_080574B8: .4byte 0x00100012
_080574BC: .4byte 0x00100013
_080574C0: .4byte 0x00100014
_080574C4: .4byte 0x00100015
_080574C8: .4byte 0x00100016
_080574CC: .4byte 0x00100017
_080574D0: .4byte 0x00100018
_080574D4: .4byte 0x00100019
_080574D8: .4byte 0x0010001A
_080574DC:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08057534 @ =0x0010001B
	bl EventWinMesSet_08041058
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057538 @ =0x0010001C
	bl EventWinMesSet_08041058
	ldr r0, _0805753C @ =0x0010001D
	bl EventWinMesSet_08041058
	ldr r0, _08057540 @ =0x0010001E
	bl EventWinMesSet_08041058
	ldr r0, _08057544 @ =0x0010001F
	bl EventWinMesSet_08041058
	movs r0, #0x3e
	bl EventUnsetFlag_080406D0
	movs r0, #0x3f
	bl EventUnsetFlag_080406D0
	movs r0, #0x40
	bl EventUnsetFlag_080406D0
	movs r0, #0x41
	bl UnsetEventFlag_080406D0
_08057530:
	pop {r0}
	bx r0
	.align 2, 0
_08057534: .4byte 0x0010001B
_08057538: .4byte 0x0010001C
_0805753C: .4byte 0x0010001D
_08057540: .4byte 0x0010001E
_08057544: .4byte 0x0010001F

	thumb_func_start sub_08057548
sub_08057548: @ 0x08057548
	push {lr}
	bl sub_08057220
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805759C @ =0x00100020
	bl EventWinMesSet_08041058
	ldr r0, _080575A0 @ =0x00100021
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080575A4 @ =0x00100022
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080575A8 @ =0x00100023
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805759C: .4byte 0x00100020
_080575A0: .4byte 0x00100021
_080575A4: .4byte 0x00100022
_080575A8: .4byte 0x00100023

	thumb_func_start sub_080575AC
sub_080575AC: @ 0x080575AC
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08057618 @ =0x0808E4AC
	bl LoadBuildingBG_0804115C
	ldr r2, _0805761C @ =0x0808E7EC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x8c
	movs r2, #0x60
	bl EventPlaceChara_08041894
	ldr r2, _08057620 @ =0x0808E7FC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x38
	movs r2, #0x60
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x41
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057628
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08057624 @ =sub_08057548
	bl RunEventScript_0804066C
	b _0805767A
	.align 2, 0
_08057618: .4byte 0x0808E4AC
_0805761C: .4byte 0x0808E7EC
_08057620: .4byte 0x0808E7FC
_08057624: .4byte sub_08057548
_08057628:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057658
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08057654 @ =sub_08057250
	bl RunEventScript_0804066C
	movs r0, #0x3e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805767A
	movs r0, #5
	bl sub_08040F18
	b _0805767A
	.align 2, 0
_08057654: .4byte sub_08057250
_08057658:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057670
	movs r0, #0x3f
	bl EventSetFlag_080406E4
_08057670:
	ldr r0, _080576B0 @ =sub_080573CC
	bl RunEventScript_0804066C
	bl sub_08040F0C
_0805767A:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_08041DB8
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080576B0: .4byte sub_080573CC
