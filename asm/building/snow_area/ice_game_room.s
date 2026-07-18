	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804FF04
sub_0804FF04: @ 0x0804FF04
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
	movs r0, #0x88
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _0804FF7C @ =0x00220001
	bl EventWinMesSet_08041058
	ldr r0, _0804FF80 @ =0x00220002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804FF88
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
	ldr r0, _0804FF84 @ =0x00220003
	bl EventWinMesSet_08041058
	b _080500B8
	.align 2, 0
_0804FF7C: .4byte 0x00220001
_0804FF80: .4byte 0x00220002
_0804FF84: .4byte 0x00220003
_0804FF88:
	ldr r1, _0805001C @ =0x00220004
	movs r0, #0x21
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804FF98
	b _080500B8
_0804FF98:
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
	ldr r0, _08050020 @ =0x00220005
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08050024 @ =0x00220006
	bl EventWinMesSet_08041058
	ldr r0, _08050028 @ =0x00220007
	bl EventWinMesSet_08041058
	ldr r0, _0805002C @ =0x00220008
	bl EventWinMesSet_08041058
	ldr r0, _08050030 @ =0x00220009
	bl EventWinMesSet_08041058
	ldr r0, _08050034 @ =0x0022000A
	bl EventWinMesSet_08041058
	ldr r0, _08050038 @ =0x0022000B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050044
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805003C @ =0x0022000C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08050040 @ =0x0022000D
	bl EventWinMesSet_08041058
	b _08050080
	.align 2, 0
_0805001C: .4byte 0x00220004
_08050020: .4byte 0x00220005
_08050024: .4byte 0x00220006
_08050028: .4byte 0x00220007
_0805002C: .4byte 0x00220008
_08050030: .4byte 0x00220009
_08050034: .4byte 0x0022000A
_08050038: .4byte 0x0022000B
_0805003C: .4byte 0x0022000C
_08050040: .4byte 0x0022000D
_08050044:
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
	ldr r0, _080500BC @ =0x00220011
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _080500C0 @ =0x00220012
	bl EventWinMesSet_08041058
	ldr r0, _080500C4 @ =0x00220013
	bl EventWinMesSet_08041058
_08050080:
	ldr r0, _080500C8 @ =0x0022000E
	bl EventWinMesSet_08041058
	ldr r0, _080500CC @ =0x0022000F
	bl EventWinMesSet_08041058
	ldr r1, _080500D0 @ =0x00460030
	movs r0, #0x77
	bl EventMgSpecialGoal_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x14
	bl EventWinSpeakerSet_08041018
	ldr r0, _080500D4 @ =0x00220010
	bl EventWinMesSet_08041058
	movs r0, #0x84
	bl EventSetFlag_080406E4
	movs r0, #0x29
	bl SetCharacterMetFlag_0802D7CC
_080500B8:
	pop {r0}
	bx r0
	.align 2, 0
_080500BC: .4byte 0x00220011
_080500C0: .4byte 0x00220012
_080500C4: .4byte 0x00220013
_080500C8: .4byte 0x0022000E
_080500CC: .4byte 0x0022000F
_080500D0: .4byte 0x00460030
_080500D4: .4byte 0x00220010

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
	bl EventWaitForJingle_08041138
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
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
