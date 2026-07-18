	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08045AD8
sub_08045AD8: @ 0x08045AD8
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x16
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	movs r0, #0xc8
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _08045B1C @ =0x00190001
	bl EventWinMesSet_08041058
	ldr r0, _08045B20 @ =0x00190002
	bl EventWinMesSet_08041058
	ldr r0, _08045B24 @ =0x00190003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045B2C
	ldr r0, _08045B28 @ =0x00190004
	bl EventWinMesSet_08041058
	b _08045BE2
	.align 2, 0
_08045B1C: .4byte 0x00190001
_08045B20: .4byte 0x00190002
_08045B24: .4byte 0x00190003
_08045B28: .4byte 0x00190004
_08045B2C:
	ldr r1, _08045B98 @ =0x00190005
	movs r0, #0x18
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045BE2
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x16
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045B9C @ =0x00190006
	bl EventWinMesSet_08041058
	ldr r0, _08045BA0 @ =0x00190007
	bl EventWinMesSet_08041058
	ldr r0, _08045BA4 @ =0x00190008
	bl EventWinMesSet_08041058
	ldr r0, _08045BA8 @ =0x00190009
	bl EventWinMesSet_08041058
	ldr r0, _08045BAC @ =0x0019000A
	bl EventWinMesSet_08041058
	ldr r0, _08045BB0 @ =0x0019000B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045BB8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045BB4 @ =0x0019000C
	bl EventWinMesSet_08041058
	b _08045BCA
	.align 2, 0
_08045B98: .4byte 0x00190005
_08045B9C: .4byte 0x00190006
_08045BA0: .4byte 0x00190007
_08045BA4: .4byte 0x00190008
_08045BA8: .4byte 0x00190009
_08045BAC: .4byte 0x0019000A
_08045BB0: .4byte 0x0019000B
_08045BB4: .4byte 0x0019000C
_08045BB8:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045BE8 @ =0x0019000F
	bl EventWinMesSet_08041058
_08045BCA:
	ldr r0, _08045BEC @ =0x0019000D
	bl EventWinMesSet_08041058
	ldr r0, _08045BF0 @ =0x0019000E
	bl EventWinMesSet_08041058
	movs r0, #0x62
	bl EventSetFlag_080406E4
	movs r0, #0x2b
	bl SetCharacterMetFlag_0802D7CC
_08045BE2:
	pop {r0}
	bx r0
	.align 2, 0
_08045BE8: .4byte 0x0019000F
_08045BEC: .4byte 0x0019000D
_08045BF0: .4byte 0x0019000E

	thumb_func_start sub_08045BF4
sub_08045BF4: @ 0x08045BF4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x16
	bl EventWinSpeakerSet_08041018
	movs r0, #0x63
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045CA4
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045C80 @ =0x00190010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045C84 @ =0x00190011
	bl EventWinMesSet_08041058
	ldr r0, _08045C88 @ =0x00190012
	bl EventWinMesSet_08041058
	movs r0, #0x1d
	movs r1, #0x14
	bl QuestFinish_08042814
	movs r0, #0x16
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045C8C @ =0x00190013
	bl EventWinMesSet_08041058
	ldr r0, _08045C90 @ =0x00190014
	bl EventWinMesSet_08041058
	ldr r0, _08045C94 @ =0x00190015
	bl EventWinMesSet_08041058
	ldr r0, _08045C98 @ =0x00190016
	bl EventWinMesSet_08041058
	ldr r0, _08045C9C @ =0x00190017
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045CA0 @ =0x00190018
	bl EventWinMesSet_08041058
	movs r0, #0x65
	bl SetEventFlag_080406BC
	b _08045CE0
	.align 2, 0
_08045C80: .4byte 0x00190010
_08045C84: .4byte 0x00190011
_08045C88: .4byte 0x00190012
_08045C8C: .4byte 0x00190013
_08045C90: .4byte 0x00190014
_08045C94: .4byte 0x00190015
_08045C98: .4byte 0x00190016
_08045C9C: .4byte 0x00190017
_08045CA0: .4byte 0x00190018
_08045CA4:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045CE4 @ =0x00190019
	bl EventWinMesSet_08041058
	ldr r0, _08045CE8 @ =0x0019001A
	bl EventWinMesSet_08041058
	ldr r0, _08045CEC @ =0x0019001B
	bl EventWinMesSet_08041058
	ldr r0, _08045CF0 @ =0x0019001C
	bl EventWinMesSet_08041058
	movs r0, #0x62
	bl EventUnsetFlag_080406D0
	movs r0, #0x63
	bl EventUnsetFlag_080406D0
	movs r0, #0x64
	bl EventUnsetFlag_080406D0
	movs r0, #0x65
	bl UnsetEventFlag_080406D0
_08045CE0:
	pop {r0}
	bx r0
	.align 2, 0
_08045CE4: .4byte 0x00190019
_08045CE8: .4byte 0x0019001A
_08045CEC: .4byte 0x0019001B
_08045CF0: .4byte 0x0019001C

	thumb_func_start sub_08045CF4
sub_08045CF4: @ 0x08045CF4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x16
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045D40 @ =0x0019001D
	bl EventWinMesSet_08041058
	ldr r0, _08045D44 @ =0x0019001E
	bl EventWinMesSet_08041058
	ldr r0, _08045D48 @ =0x0019001F
	bl EventWinMesSet_08041058
	ldr r0, _08045D4C @ =0x00190020
	bl EventWinMesSet_08041058
	ldr r0, _08045D50 @ =0x00190021
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl EventAnimateChara_080418C8
	ldr r0, _08045D54 @ =0x00190022
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08045D40: .4byte 0x0019001D
_08045D44: .4byte 0x0019001E
_08045D48: .4byte 0x0019001F
_08045D4C: .4byte 0x00190020
_08045D50: .4byte 0x00190021
_08045D54: .4byte 0x00190022

	thumb_func_start sub_08045D58
sub_08045D58: @ 0x08045D58
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08045DA0 @ =0x0808DE44
	bl LoadBuildingBG_0804115C
	ldr r2, _08045DA4 @ =0x0808E88C
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
	bl sub_080407FC
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	movs r0, #0x65
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045DAC
	ldr r0, _08045DA8 @ =sub_08045CF4
	bl RunEventScript_0804066C
	b _08045DF0
	.align 2, 0
_08045DA0: .4byte 0x0808DE44
_08045DA4: .4byte 0x0808E88C
_08045DA8: .4byte sub_08045CF4
_08045DAC:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045DD4
	ldr r0, _08045DD0 @ =sub_08045AD8
	bl RunEventScript_0804066C
	movs r0, #0x62
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045DF0
	movs r0, #9
	bl sub_08040F18
	b _08045DF0
	.align 2, 0
_08045DD0: .4byte sub_08045AD8
_08045DD4:
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045DE6
	movs r0, #0x63
	bl EventSetFlag_080406E4
_08045DE6:
	ldr r0, _08045E14 @ =sub_08045BF4
	bl RunEventScript_0804066C
	bl sub_08040F0C
_08045DF0:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08045E14: .4byte sub_08045BF4
