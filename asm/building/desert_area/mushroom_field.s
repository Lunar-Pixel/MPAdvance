	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804E16C
sub_0804E16C: @ 0x0804E16C
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r4, _0804E220 @ =0x00000145
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x20
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x20
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x20
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
	ldr r0, _0804E224 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x25
	bl EventWinSpeakerSet_08041018
	movs r0, #0xe0
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	ldr r0, _0804E228 @ =0x000E0001
	bl EventWinMesSet_08041058
	ldr r0, _0804E22C @ =0x000E0002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E234
	ldr r0, _0804E230 @ =0x000E0003
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	b _0804E314
	.align 2, 0
_0804E220: .4byte 0x00000145
_0804E224: .4byte 0x0000011F
_0804E228: .4byte 0x000E0001
_0804E22C: .4byte 0x000E0002
_0804E230: .4byte 0x000E0003
_0804E234:
	ldr r1, _0804E2AC @ =0x000E0004
	movs r0, #0xd
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E314
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x25
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804E2B0 @ =0x000E0005
	bl EventWinMesSet_08041058
	ldr r0, _0804E2B4 @ =0x000E0006
	bl EventWinMesSet_08041058
	ldr r0, _0804E2B8 @ =0x000E0007
	bl EventWinMesSet_08041058
	ldr r0, _0804E2BC @ =0x000E0008
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E2CC
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E2C0 @ =0x000E0009
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E2C4 @ =0x000E000A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E2C8 @ =0x000E000B
	bl EventWinMesSet_08041058
	b _0804E308
	.align 2, 0
_0804E2AC: .4byte 0x000E0004
_0804E2B0: .4byte 0x000E0005
_0804E2B4: .4byte 0x000E0006
_0804E2B8: .4byte 0x000E0007
_0804E2BC: .4byte 0x000E0008
_0804E2C0: .4byte 0x000E0009
_0804E2C4: .4byte 0x000E000A
_0804E2C8: .4byte 0x000E000B
_0804E2CC:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E31C @ =0x000E000C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E320 @ =0x000E000D
	bl EventWinMesSet_08041058
	ldr r0, _0804E324 @ =0x000E000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E328 @ =0x000E000F
	bl EventWinMesSet_08041058
_0804E308:
	movs r0, #0x36
	bl EventSetFlag_080406E4
	movs r0, #0x21
	bl SetCharacterMetFlag_0802D7CC
_0804E314:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E31C: .4byte 0x000E000C
_0804E320: .4byte 0x000E000D
_0804E324: .4byte 0x000E000E
_0804E328: .4byte 0x000E000F

	thumb_func_start sub_0804E32C
sub_0804E32C: @ 0x0804E32C
	push {r4, lr}
	bl EventWinInit_08040fe8
	movs r0, #0x25
	bl EventWinSpeakerSet_08041018
	movs r0, #0x37
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E3CC
	ldr r0, _0804E3B8 @ =0x000E0010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E3BC @ =0x000E0011
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x32
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0x25
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804E3C0 @ =0x000E0012
	bl EventWinMesSet_08041058
	ldr r0, _0804E3C4 @ =0x000E0013
	bl EventWinMesSet_08041058
	movs r0, #0x39
	bl EventSetFlag_080406E4
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r4, _0804E3C8 @ =0x00000145
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x20
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0x39
	bl SetEventFlag_080406BC
	b _0804E414
	.align 2, 0
_0804E3B8: .4byte 0x000E0010
_0804E3BC: .4byte 0x000E0011
_0804E3C0: .4byte 0x000E0012
_0804E3C4: .4byte 0x000E0013
_0804E3C8: .4byte 0x00000145
_0804E3CC:
	ldr r0, _0804E41C @ =0x000E0014
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E420 @ =0x000E0015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E424 @ =0x000E0016
	bl EventWinMesSet_08041058
	ldr r0, _0804E428 @ =0x000E0017
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventUnsetFlag_080406D0
	movs r0, #0x37
	bl EventUnsetFlag_080406D0
	movs r0, #0x38
	bl EventUnsetFlag_080406D0
	movs r0, #0x39
	bl UnsetEventFlag_080406D0
_0804E414:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E41C: .4byte 0x000E0014
_0804E420: .4byte 0x000E0015
_0804E424: .4byte 0x000E0016
_0804E428: .4byte 0x000E0017

	thumb_func_start sub_0804E42C
sub_0804E42C: @ 0x0804E42C
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r4, _0804E4B8 @ =0x00000145
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x20
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x20
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x20
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x25
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E4BC @ =0x000E0018
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E4C0 @ =0x000E0019
	bl EventWinMesSet_08041058
	ldr r0, _0804E4C4 @ =0x000E001A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804E4C8 @ =0x000E001B
	bl EventWinMesSet_08041058
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E4B8: .4byte 0x00000145
_0804E4BC: .4byte 0x000E0018
_0804E4C0: .4byte 0x000E0019
_0804E4C4: .4byte 0x000E001A
_0804E4C8: .4byte 0x000E001B

	thumb_func_start sub_0804E4CC
sub_0804E4CC: @ 0x0804E4CC
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804E538 @ =0x0808E114
	bl LoadBuildingBG_0804115C
	ldr r2, _0804E53C @ =0x0808E95C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x62
	bl EventPlaceChara_08041894
	ldr r2, _0804E540 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x32
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x39
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E548
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804E544 @ =sub_0804E42C
	bl RunEventScript_0804066C
	b _0804E59A
	.align 2, 0
_0804E538: .4byte 0x0808E114
_0804E53C: .4byte 0x0808E95C
_0804E540: .4byte 0x0808E6BC
_0804E544: .4byte sub_0804E42C
_0804E548:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E578
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804E574 @ =sub_0804E16C
	bl RunEventScript_0804066C
	movs r0, #0x36
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E59A
	movs r0, #7
	bl sub_08040F18
	b _0804E59A
	.align 2, 0
_0804E574: .4byte sub_0804E16C
_0804E578:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E590
	movs r0, #0x37
	bl EventSetFlag_080406E4
_0804E590:
	ldr r0, _0804E5CC @ =sub_0804E32C
	bl RunEventScript_0804066C
	bl sub_08040F0C
_0804E59A:
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
_0804E5CC: .4byte sub_0804E32C
