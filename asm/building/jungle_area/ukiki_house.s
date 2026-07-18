	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
