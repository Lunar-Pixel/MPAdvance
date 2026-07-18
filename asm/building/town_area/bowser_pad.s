	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804A774
sub_0804A774: @ 0x0804A774
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A7C8 @ =0x000B0018
	bl EventWinMesSet_08041058
	ldr r0, _0804A7CC @ =0x000B0019
	bl EventWinMesSet_08041058
	ldr r0, _0804A7D0 @ =0x000B001A
	bl EventWinMesSet_08041058
	ldr r0, _0804A7D4 @ =0x000B001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A7D8 @ =0x000B001C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	pop {r0}
	bx r0
	.align 2, 0
_0804A7C8: .4byte 0x000B0018
_0804A7CC: .4byte 0x000B0019
_0804A7D0: .4byte 0x000B001A
_0804A7D4: .4byte 0x000B001B
_0804A7D8: .4byte 0x000B001C

	thumb_func_start sub_0804A7DC
sub_0804A7DC: @ 0x0804A7DC
	push {r4, lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0xb0
	lsls r0, r0, #0xc
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
	ldr r0, _0804A914 @ =0x000B0001
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
	ldr r0, _0804A918 @ =0x000B0002
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A91C @ =0x000B0003
	bl EventWinMesSet_08041058
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
	ldr r0, _0804A920 @ =0x000B0004
	bl EventWinMesSet_08041058
	ldr r0, _0804A924 @ =0x000B0005
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A938
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
	movs r1, #0xa0
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
	ldr r0, _0804A928 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804A92C @ =0x000B0006
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A930 @ =0x000B0007
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A934 @ =0x000B0008
	bl EventWinMesSet_08041058
	b _0804AB0A
	.align 2, 0
_0804A914: .4byte 0x000B0001
_0804A918: .4byte 0x000B0002
_0804A91C: .4byte 0x000B0003
_0804A920: .4byte 0x000B0004
_0804A924: .4byte 0x000B0005
_0804A928: .4byte 0x0000011F
_0804A92C: .4byte 0x000B0006
_0804A930: .4byte 0x000B0007
_0804A934: .4byte 0x000B0008
_0804A938:
	ldr r1, _0804A9F4 @ =0x000B0009
	movs r0, #0xa
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804A948
	b _0804AB0A
_0804A948:
	movs r0, #0x11
	bl EventBGMPlay_080410A8
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
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804A9F8 @ =0x000B000A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804A9FC @ =0x000B000B
	bl EventWinMesSet_08041058
	ldr r0, _0804AA00 @ =0x000B000C
	bl EventWinMesSet_08041058
	ldr r0, _0804AA04 @ =0x000B000D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AA08 @ =0x000B000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AA0C @ =0x000B000F
	bl EventWinMesSet_08041058
	ldr r0, _0804AA10 @ =0x000B0010
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804AA18
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804AA14 @ =0x000B0011
	bl EventWinMesSet_08041058
	b _0804AA2A
	.align 2, 0
_0804A9F4: .4byte 0x000B0009
_0804A9F8: .4byte 0x000B000A
_0804A9FC: .4byte 0x000B000B
_0804AA00: .4byte 0x000B000C
_0804AA04: .4byte 0x000B000D
_0804AA08: .4byte 0x000B000E
_0804AA0C: .4byte 0x000B000F
_0804AA10: .4byte 0x000B0010
_0804AA14: .4byte 0x000B0011
_0804AA18:
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804AB10 @ =0x000B0022
	bl EventWinMesSet_08041058
_0804AA2A:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804AB14 @ =0x000B0012
	bl EventWinMesSet_08041058
	ldr r0, _0804AB18 @ =0x000B0013
	bl EventWinMesSet_08041058
	ldr r0, _0804AB1C @ =0x000B0014
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AB20 @ =0x000B0015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AB24 @ =0x000B0016
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AB28 @ =0x000B0017
	bl EventWinMesSet_08041058
	ldr r4, _0804AB2C @ =sub_0804A774
	adds r0, r4, #0
	bl RunEventScript_0804066C
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AB30 @ =0x000B001D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AB34 @ =0x000B001E
	bl EventWinMesSet_08041058
	adds r0, r4, #0
	bl RunEventScript_0804066C
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AB38 @ =0x000B001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804AB3C @ =0x000B0020
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AB40 @ =0x000B0021
	bl EventWinMesSet_08041058
	movs r0, #0x29
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_0804AB0A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB10: .4byte 0x000B0022
_0804AB14: .4byte 0x000B0012
_0804AB18: .4byte 0x000B0013
_0804AB1C: .4byte 0x000B0014
_0804AB20: .4byte 0x000B0015
_0804AB24: .4byte 0x000B0016
_0804AB28: .4byte 0x000B0017
_0804AB2C: .4byte sub_0804A774
_0804AB30: .4byte 0x000B001D
_0804AB34: .4byte 0x000B001E
_0804AB38: .4byte 0x000B001F
_0804AB3C: .4byte 0x000B0020
_0804AB40: .4byte 0x000B0021

	thumb_func_start sub_0804AB44
sub_0804AB44: @ 0x0804AB44
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x2a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804AC14
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804ABF0 @ =0x000B0023
	bl EventWinMesSet_08041058
	ldr r0, _0804ABF4 @ =0x000B0013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804ABF8 @ =0x000B0024
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804ABFC @ =0x000B0025
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AC00 @ =0x000B001E
	bl EventWinMesSet_08041058
	ldr r0, _0804AC04 @ =sub_0804A774
	bl RunEventScript_0804066C
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AC08 @ =0x000B001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804AC0C @ =0x000B0020
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AC10 @ =0x000B0021
	bl EventWinMesSet_08041058
	b _0804ACE4
	.align 2, 0
_0804ABF0: .4byte 0x000B0023
_0804ABF4: .4byte 0x000B0013
_0804ABF8: .4byte 0x000B0024
_0804ABFC: .4byte 0x000B0025
_0804AC00: .4byte 0x000B001E
_0804AC04: .4byte sub_0804A774
_0804AC08: .4byte 0x000B001F
_0804AC0C: .4byte 0x000B0020
_0804AC10: .4byte 0x000B0021
_0804AC14:
	movs r0, #2
	movs r1, #0xa8
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804ACE8 @ =0x000B0050
	bl EventWinMesSet_08041058
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
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804ACEC @ =0x000B0051
	bl EventWinMesSet_08041058
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
	ldr r0, _0804ACF0 @ =0x000B0052
	bl EventWinMesSet_08041058
	ldr r0, _0804ACF4 @ =0x000B004B
	bl EventWinMesSet_08041058
	ldr r0, _0804ACF8 @ =0x000B0053
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804ACFC @ =0x000B0054
	bl EventWinMesSet_08041058
	movs r0, #0x29
	bl EventUnsetFlag_080406D0
	movs r0, #0x2a
	bl EventUnsetFlag_080406D0
	movs r0, #0x2b
	bl EventUnsetFlag_080406D0
	movs r0, #0x2c
	bl EventUnsetFlag_080406D0
	movs r0, #0x2d
	bl UnsetEventFlag_080406D0
_0804ACE4:
	pop {r0}
	bx r0
	.align 2, 0
_0804ACE8: .4byte 0x000B0050
_0804ACEC: .4byte 0x000B0051
_0804ACF0: .4byte 0x000B0052
_0804ACF4: .4byte 0x000B004B
_0804ACF8: .4byte 0x000B0053
_0804ACFC: .4byte 0x000B0054

	thumb_func_start sub_0804AD00
sub_0804AD00: @ 0x0804AD00
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x90
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0xa0
	movs r2, #0x34
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804AE5C @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AE60 @ =0x000B0032
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AE64 @ =0x000B0033
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AE68 @ =0x000B0034
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _0804AE6C @ =0x000B0035
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _0804AE70 @ =0x000B0036
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
	ldr r0, _0804AE74 @ =0x000B0037
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AE78 @ =0x000B0038
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r1, _0804AE7C @ =0x00460029
	movs r0, #0x6e
	bl EventMgSpecialGoal_080427E0
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AE80 @ =0x000B0039
	bl EventWinMesSet_08041058
	bl sub_08040BB8
	ldr r0, _0804AE84 @ =0x000B003A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AE88 @ =0x000B003B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AE8C @ =0x000B003C
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804AE5C: .4byte 0x00000129
_0804AE60: .4byte 0x000B0032
_0804AE64: .4byte 0x000B0033
_0804AE68: .4byte 0x000B0034
_0804AE6C: .4byte 0x000B0035
_0804AE70: .4byte 0x000B0036
_0804AE74: .4byte 0x000B0037
_0804AE78: .4byte 0x000B0038
_0804AE7C: .4byte 0x00460029
_0804AE80: .4byte 0x000B0039
_0804AE84: .4byte 0x000B003A
_0804AE88: .4byte 0x000B003B
_0804AE8C: .4byte 0x000B003C

	thumb_func_start sub_0804AE90
sub_0804AE90: @ 0x0804AE90
	push {lr}
	movs r0, #0x2c
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804AEA2
	b _0804AFEC
_0804AEA2:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AFC4 @ =0x000B003D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AFC8 @ =0x000B003E
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
	ldr r0, _0804AFCC @ =0x000B003F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AFD0 @ =0x000B0040
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xc
	movs r1, #0x11
	bl QuestFinish_08042814
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AFD4 @ =0x000B0041
	bl EventWinMesSet_08041058
	ldr r0, _0804AFD8 @ =0x000B0042
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AFDC @ =0x000B0043
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AFE0 @ =0x000B0044
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804AFE4 @ =0x000B0045
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
	ldr r0, _0804AFE8 @ =0x000B0046
	bl EventWinMesSet_08041058
	movs r0, #0x6e
	bl EventSetMinigame_08040B84
	movs r0, #0x2d
	bl SetEventFlag_080406BC
	b _0804B0F2
	.align 2, 0
_0804AFC4: .4byte 0x000B003D
_0804AFC8: .4byte 0x000B003E
_0804AFCC: .4byte 0x000B003F
_0804AFD0: .4byte 0x000B0040
_0804AFD4: .4byte 0x000B0041
_0804AFD8: .4byte 0x000B0042
_0804AFDC: .4byte 0x000B0043
_0804AFE0: .4byte 0x000B0044
_0804AFE4: .4byte 0x000B0045
_0804AFE8: .4byte 0x000B0046
_0804AFEC:
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
	ldr r0, _0804B0F8 @ =0x000B0047
	bl EventWinMesSet_08041058
	ldr r0, _0804B0FC @ =0x000B0048
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B100 @ =0x000B0049
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
	ldr r0, _0804B104 @ =0x000B004A
	bl EventWinMesSet_08041058
	ldr r0, _0804B108 @ =0x000B004B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B10C @ =0x000B004C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B110 @ =0x000B004D
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
	ldr r0, _0804B114 @ =0x000B004E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B118 @ =0x000B004F
	bl EventWinMesSet_08041058
	movs r0, #0x29
	bl EventUnsetFlag_080406D0
	movs r0, #0x2a
	bl EventUnsetFlag_080406D0
	movs r0, #0x2b
	bl EventUnsetFlag_080406D0
	movs r0, #0x2c
	bl EventUnsetFlag_080406D0
	movs r0, #0x2d
	bl UnsetEventFlag_080406D0
_0804B0F2:
	pop {r0}
	bx r0
	.align 2, 0
_0804B0F8: .4byte 0x000B0047
_0804B0FC: .4byte 0x000B0048
_0804B100: .4byte 0x000B0049
_0804B104: .4byte 0x000B004A
_0804B108: .4byte 0x000B004B
_0804B10C: .4byte 0x000B004C
_0804B110: .4byte 0x000B004D
_0804B114: .4byte 0x000B004E
_0804B118: .4byte 0x000B004F

	thumb_func_start sub_0804B11C
sub_0804B11C: @ 0x0804B11C
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B1A0 @ =0x000B0055
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B1A4 @ =0x000B0056
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B1A8 @ =0x000B0057
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B1AC @ =0x000B0058
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B1B0 @ =0x000B0059
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804B1A0: .4byte 0x000B0055
_0804B1A4: .4byte 0x000B0056
_0804B1A8: .4byte 0x000B0057
_0804B1AC: .4byte 0x000B0058
_0804B1B0: .4byte 0x000B0059

	thumb_func_start sub_0804B1B4
sub_0804B1B4: @ 0x0804B1B4
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804B234 @ =0x0808DFD4
	bl LoadBuildingBG_0804115C
	ldr r2, _0804B238 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x38
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _0804B23C @ =0x0808E71C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xa0
	movs r2, #0x63
	bl EventPlaceChara_08041894
	ldr r2, _0804B240 @ =0x0808E6BC
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
	movs r0, #0x2d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B248
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _0804B244 @ =sub_0804B11C
	bl RunEventScript_0804066C
	b _0804B2CC
	.align 2, 0
_0804B234: .4byte 0x0808DFD4
_0804B238: .4byte 0x0808E7BC
_0804B23C: .4byte 0x0808E71C
_0804B240: .4byte 0x0808E6BC
_0804B244: .4byte sub_0804B11C
_0804B248:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B2A4
	movs r0, #0x29
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B270
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _0804B26C @ =sub_0804A7DC
	bl RunEventScript_0804066C
	b _0804B2CC
	.align 2, 0
_0804B26C: .4byte sub_0804A7DC
_0804B270:
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	movs r0, #0x2b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B290
	ldr r0, _0804B28C @ =sub_0804AB44
	bl RunEventScript_0804066C
	b _0804B2CC
	.align 2, 0
_0804B28C: .4byte sub_0804AB44
_0804B290:
	ldr r0, _0804B2A0 @ =sub_0804AD00
	bl RunEventScript_0804066C
	movs r0, #0x6e
	bl EventQuestBegin_080406D0
	b _0804B2CC
	.align 2, 0
_0804B2A0: .4byte sub_0804AD00
_0804B2A4:
	movs r0, #0x11
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804B2BC
	cmp r0, #1
	ble _0804B2CC
	cmp r0, #2
	beq _0804B2C2
	b _0804B2CC
_0804B2BC:
	movs r0, #0x2c
	bl EventSetFlag_080406E4
_0804B2C2:
	ldr r0, _0804B30C @ =sub_0804AE90
	bl RunEventScript_0804066C
	bl sub_08040B28
_0804B2CC:
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
_0804B30C: .4byte sub_0804AE90
