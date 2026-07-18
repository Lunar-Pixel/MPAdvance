	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080506E4
sub_080506E4: @ 0x080506E4
	push {lr}
	bl sub_080407FC
	ldr r0, _08050878 @ =0x0000011B
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
	bl EventWaitForJingle_08041138
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
	bl EventPlaySFX_080410E0
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
