	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804BDF0
sub_0804BDF0: @ 0x0804BDF0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804BE58 @ =0x0000021A
	bl EventPlaySFX_080410E0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	bl EventSleep_08040690
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	bl EventSleep_08040690
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	bl EventSleep_08040690
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	bl EventSleep_08040690
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	bl EventSleep_08040690
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	bl EventSleep_08040690
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BE58: .4byte 0x0000021A

	thumb_func_start sub_0804BE5C
sub_0804BE5C: @ 0x0804BE5C
	push {r4, lr}
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x48
	bl EventPlaceChara_08041894
	bl sub_080407FC
	ldr r0, _0804BF80 @ =0x0000011D
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	movs r4, #0x96
	lsls r4, r4, #1
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	movs r0, #0xa0
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804BF84 @ =0x00140001
	bl EventWinMesSet_08041058
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BF88 @ =0x00140002
	bl EventWinMesSet_08041058
	ldr r0, _0804BF8C @ =0x00140003
	bl EventWinMesSet_08041058
	ldr r0, _0804BF90 @ =0x00140004
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BFA4
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BF94 @ =0x00140005
	bl EventWinMesSet_08041058
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl EventSleep_08040690
	subs r4, #8
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BF98 @ =0x00140006
	bl EventWinMesSet_08041058
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BF9C @ =0x00140007
	bl EventWinMesSet_08041058
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BFA0 @ =0x00140008
	bl EventWinMesSet_08041058
	b _0804C13E
	.align 2, 0
_0804BF80: .4byte 0x0000011D
_0804BF84: .4byte 0x00140001
_0804BF88: .4byte 0x00140002
_0804BF8C: .4byte 0x00140003
_0804BF90: .4byte 0x00140004
_0804BF94: .4byte 0x00140005
_0804BF98: .4byte 0x00140006
_0804BF9C: .4byte 0x00140007
_0804BFA0: .4byte 0x00140008
_0804BFA4:
	ldr r1, _0804C0C0 @ =0x00140009
	movs r0, #0x13
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804BFB4
	b _0804C13E
_0804BFB4:
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C0C4 @ =0x0014000A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804C0C8 @ =0x0014000C
	bl EventWinMesSet_08041058
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C0CC @ =0x0014000D
	bl EventWinMesSet_08041058
	ldr r0, _0804C0D0 @ =0x0014000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C0D4 @ =0x0014000F
	bl EventWinMesSet_08041058
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C0D8 @ =0x00140010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C0DC @ =0x00140011
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C0E0 @ =0x00140012
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
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C0E4 @ =0x00140013
	bl EventWinMesSet_08041058
	ldr r0, _0804C0E8 @ =0x00140014
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804C0F0
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _0804C0EC @ =0x00140015
	bl EventWinMesSet_08041058
	b _0804C114
	.align 2, 0
_0804C0C0: .4byte 0x00140009
_0804C0C4: .4byte 0x0014000A
_0804C0C8: .4byte 0x0014000C
_0804C0CC: .4byte 0x0014000D
_0804C0D0: .4byte 0x0014000E
_0804C0D4: .4byte 0x0014000F
_0804C0D8: .4byte 0x00140010
_0804C0DC: .4byte 0x00140011
_0804C0E0: .4byte 0x00140012
_0804C0E4: .4byte 0x00140013
_0804C0E8: .4byte 0x00140014
_0804C0EC: .4byte 0x00140015
_0804C0F0:
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804C144 @ =0x00140019
	bl EventWinMesSet_08041058
	ldr r0, _0804C148 @ =0x0014001A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
_0804C114:
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C14C @ =0x00140016
	bl EventWinMesSet_08041058
	ldr r0, _0804C150 @ =0x00140017
	bl EventWinMesSet_08041058
	ldr r0, _0804C154 @ =0x00140018
	bl EventWinMesSet_08041058
	movs r0, #0x4e
	bl EventSetFlag_080406E4
	movs r0, #9
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2e
	bl SetCharacterMetFlag_0802D7CC
_0804C13E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C144: .4byte 0x00140019
_0804C148: .4byte 0x0014001A
_0804C14C: .4byte 0x00140016
_0804C150: .4byte 0x00140017
_0804C154: .4byte 0x00140018

	thumb_func_start sub_0804C158
sub_0804C158: @ 0x0804C158
	push {lr}
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C1A8 @ =0x0014001B
	bl EventWinMesSet_08041058
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C1AC @ =0x0014001C
	bl EventWinMesSet_08041058
	ldr r0, _0804C1B0 @ =0x0014001D
	bl EventWinMesSet_08041058
	ldr r0, _0804C1B4 @ =0x0014001E
	bl EventWinMesSet_08041058
	ldr r0, _0804C1B8 @ =0x0014001F
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804C1A8: .4byte 0x0014001B
_0804C1AC: .4byte 0x0014001C
_0804C1B0: .4byte 0x0014001D
_0804C1B4: .4byte 0x0014001E
_0804C1B8: .4byte 0x0014001F

	thumb_func_start sub_0804C1BC
sub_0804C1BC: @ 0x0804C1BC
	push {lr}
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #3
	bl sub_0804BDF0
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	bl sub_0804CA08
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804BDF0
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	bl sub_0804CA08
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #4
	bl sub_0804BDF0
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #4
	bl sub_0804CA08
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804C358 @ =0x0014002C
	bl EventWinMesSet_08041058
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C35C @ =0x0014002D
	bl EventWinMesSet_08041058
	ldr r0, _0804C360 @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x68
	movs r3, #0xc
	bl sub_08041938
	movs r0, #0x8e
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C364 @ =0x0014002E
	bl EventWinMesSet_08041058
	ldr r0, _0804C368 @ =0x0014002F
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804BDF0
	movs r0, #3
	bl sub_0804BDF0
	movs r0, #4
	bl sub_0804BDF0
	movs r0, #2
	bl sub_08041DB8
	movs r0, #3
	bl sub_08041DB8
	movs r0, #4
	bl sub_08041DB8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804C36C @ =0x00140030
	bl EventWinMesSet_08041058
	ldr r0, _0804C370 @ =0x00140031
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0x13
	bl QuestFinish_08042814
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804C374 @ =0x00140032
	bl EventWinMesSet_08041058
	movs r0, #0x51
	bl SetEventFlag_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_0804C358: .4byte 0x0014002C
_0804C35C: .4byte 0x0014002D
_0804C360: .4byte 0x0000011B
_0804C364: .4byte 0x0014002E
_0804C368: .4byte 0x0014002F
_0804C36C: .4byte 0x00140030
_0804C370: .4byte 0x00140031
_0804C374: .4byte 0x00140032

	thumb_func_start sub_0804C378
sub_0804C378: @ 0x0804C378
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x10
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C3AC @ =0x00140033
	bl EventWinMesSet_08041058
	ldr r0, _0804C3B0 @ =0x00140034
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804C3B4 @ =0x00140035
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804C3AC: .4byte 0x00140033
_0804C3B0: .4byte 0x00140034
_0804C3B4: .4byte 0x00140035

	thumb_func_start sub_0804C3B8
sub_0804C3B8: @ 0x0804C3B8
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _0804C4A0 @ =0x0808E04C
	bl LoadBuildingBG_0804115C
	ldr r2, _0804C4A4 @ =0x0808E82C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x60
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _0804C4A8 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	ldr r4, _0804C4AC @ =0x0808E77C
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x38
	movs r2, #0x30
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x80
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xa4
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	ldr r2, _0804C4B0 @ =0x0808E6BC
	movs r0, #5
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #0x64
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	movs r0, #0x51
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C4B8
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	ldr r0, _0804C4B4 @ =sub_0804C378
	bl RunEventScript_0804066C
	b _0804C500
	.align 2, 0
_0804C4A0: .4byte 0x0808E04C
_0804C4A4: .4byte 0x0808E82C
_0804C4A8: .4byte 0x0808EA6C
_0804C4AC: .4byte 0x0808E77C
_0804C4B0: .4byte 0x0808E6BC
_0804C4B4: .4byte sub_0804C378
_0804C4B8:
	movs r0, #0x4e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C4F4
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	movs r0, #0x4f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C4E8
	ldr r0, _0804C4E4 @ =sub_0804C1BC
	bl RunEventScript_0804066C
	b _0804C500
	.align 2, 0
_0804C4E4: .4byte sub_0804C1BC
_0804C4E8:
	ldr r0, _0804C4F0 @ =sub_0804C158
	bl RunEventScript_0804066C
	b _0804C500
	.align 2, 0
_0804C4F0: .4byte sub_0804C158
_0804C4F4:
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	ldr r0, _0804C56C @ =sub_0804BE5C
	bl RunEventScript_0804066C
_0804C500:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #3
	bl sub_080417E0
	movs r0, #4
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C56C: .4byte sub_0804BE5C
