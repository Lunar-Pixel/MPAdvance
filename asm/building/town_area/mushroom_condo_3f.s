	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08044B74
sub_08044B74: @ 0x08044B74
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	pop {r0}
	bx r0

	thumb_func_start sub_08044C04
sub_08044C04: @ 0x08044C04
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044C70 @ =0x00080014
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08044C74 @ =0x00080015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
_08044C44:
	ldr r0, _08044C78 @ =0x00080016
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08044C80
	cmp r0, #1
	bne _08044C5C
	b _08044F04
_08044C5C:
	ldr r0, _08044C7C @ =0x0008002C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08044C44
	b _08044F84
	.align 2, 0
_08044C70: .4byte 0x00080014
_08044C74: .4byte 0x00080015
_08044C78: .4byte 0x00080016
_08044C7C: .4byte 0x0008002C
_08044C80:
	ldr r0, _08044EB8 @ =0x00080017
	bl EventWinMesSet_08041058
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044EBC @ =0x00080018
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x68
	movs r3, #0x40
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08044EC0 @ =0x00080019
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08044EC4 @ =0x0008001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08044EC8 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044ECC @ =0x0008001B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044ED0 @ =0x0008001C
	bl EventWinMesSet_08041058
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044ED4 @ =0x0008001D
	bl EventWinMesSet_08041058
	bl sub_08044B74
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044ED8 @ =0x0008001E
	bl EventWinMesSet_08041058
	bl sub_08044B74
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	ldr r0, _08044EDC @ =0x0008001F
	bl EventWinMesSet_08041058
	bl sub_08044B74
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	ldr r0, _08044EE0 @ =0x00080020
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044EE4 @ =0x00080021
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044EE8 @ =0x00080022
	bl EventWinMesSet_08041058
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044EEC @ =0x00080023
	bl EventWinMesSet_08041058
	movs r0, #0
	bl sub_08041DE0
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08044EF0 @ =0x00080024
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x50
	movs r3, #0x20
	bl sub_08041938
	movs r0, #1
	movs r1, #0x54
	movs r2, #0x40
	bl EventPlaceChara_08041894
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
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x14
	bl EventSleep_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044EF4 @ =0x00080025
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08044EF8 @ =0x00080026
	bl EventWinMesSet_08041058
	ldr r0, _08044EFC @ =0x00080027
	bl EventWinMesSet_08041058
	movs r0, #0x3a
	movs r1, #0x11
	bl QuestFinish_08042814
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044F00 @ =0x00080028
	bl EventWinMesSet_08041058
	movs r0, #0x21
	bl SetEventFlag_080406BC
	b _08044F84
	.align 2, 0
_08044EB8: .4byte 0x00080017
_08044EBC: .4byte 0x00080018
_08044EC0: .4byte 0x00080019
_08044EC4: .4byte 0x0008001A
_08044EC8: .4byte 0x0000011F
_08044ECC: .4byte 0x0008001B
_08044ED0: .4byte 0x0008001C
_08044ED4: .4byte 0x0008001D
_08044ED8: .4byte 0x0008001E
_08044EDC: .4byte 0x0008001F
_08044EE0: .4byte 0x00080020
_08044EE4: .4byte 0x00080021
_08044EE8: .4byte 0x00080022
_08044EEC: .4byte 0x00080023
_08044EF0: .4byte 0x00080024
_08044EF4: .4byte 0x00080025
_08044EF8: .4byte 0x00080026
_08044EFC: .4byte 0x00080027
_08044F00: .4byte 0x00080028
_08044F04:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08044F74 @ =0x00080029
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08044F78 @ =0x00000123
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08044F7C @ =0x0008002A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08044F80 @ =0x0008002B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	b _08044C44
	.align 2, 0
_08044F74: .4byte 0x00080029
_08044F78: .4byte 0x00000123
_08044F7C: .4byte 0x0008002A
_08044F80: .4byte 0x0008002B
_08044F84:
	movs r0, #0x1f
	bl SetCharacterMetFlag_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08044F90
sub_08044F90: @ 0x08044F90
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	movs r0, #0xe0
	lsls r0, r0, #0xb
	bl EventWinMesSet_08041058
	ldr r0, _08044FE8 @ =0x00070001
	bl EventWinMesSet_08041058
	ldr r0, _08044FEC @ =0x00070002
	bl EventWinMesSet_08041058
	ldr r0, _08044FF0 @ =0x00070003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08044FF8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08044FF4 @ =0x00070004
	bl EventWinMesSet_08041058
	b _08045196
	.align 2, 0
_08044FE8: .4byte 0x00070001
_08044FEC: .4byte 0x00070002
_08044FF0: .4byte 0x00070003
_08044FF4: .4byte 0x00070004
_08044FF8:
	ldr r1, _08045120 @ =0x00070005
	movs r0, #6
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045008
	b _08045196
_08045008:
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045124 @ =0x00070006
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045128 @ =0x00070007
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804512C @ =0x00000123
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045130 @ =0x00070008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045134 @ =0x00070009
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045138 @ =0x0007000A
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x2c
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804513C @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045140 @ =0x0007000B
	bl EventWinMesSet_08041058
	ldr r0, _08045144 @ =0x0007000C
	bl EventWinMesSet_08041058
	ldr r0, _08045148 @ =0x0007000D
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045154
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804514C @ =0x0007000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045150 @ =0x0007000F
	bl EventWinMesSet_08041058
	b _08045178
	.align 2, 0
_08045120: .4byte 0x00070005
_08045124: .4byte 0x00070006
_08045128: .4byte 0x00070007
_0804512C: .4byte 0x00000123
_08045130: .4byte 0x00070008
_08045134: .4byte 0x00070009
_08045138: .4byte 0x0007000A
_0804513C: .4byte 0x00000129
_08045140: .4byte 0x0007000B
_08045144: .4byte 0x0007000C
_08045148: .4byte 0x0007000D
_0804514C: .4byte 0x0007000E
_08045150: .4byte 0x0007000F
_08045154:
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804519C @ =0x00070013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080451A0 @ =0x00070014
	bl EventWinMesSet_08041058
_08045178:
	ldr r0, _080451A4 @ =0x00070010
	bl EventWinMesSet_08041058
	ldr r0, _080451A8 @ =0x00070011
	bl EventWinMesSet_08041058
	ldr r0, _080451AC @ =0x00070012
	bl EventWinMesSet_08041058
	movs r0, #0x1a
	bl EventSetFlag_080406E4
	movs r0, #0x1f
	bl SetCharacterMetFlag_0802D7CC
_08045196:
	pop {r0}
	bx r0
	.align 2, 0
_0804519C: .4byte 0x00070013
_080451A0: .4byte 0x00070014
_080451A4: .4byte 0x00070010
_080451A8: .4byte 0x00070011
_080451AC: .4byte 0x00070012

	thumb_func_start sub_080451B0
sub_080451B0: @ 0x080451B0
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _080451F0 @ =0x00070015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080451F4 @ =0x00070016
	bl EventWinMesSet_08041058
	ldr r0, _080451F8 @ =0x00070017
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080451F0: .4byte 0x00070015
_080451F4: .4byte 0x00070016
_080451F8: .4byte 0x00070017

	thumb_func_start sub_080451FC
sub_080451FC: @ 0x080451FC
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045284 @ =0x00070024
	bl EventWinMesSet_08041058
	ldr r0, _08045288 @ =0x00070025
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804528C @ =0x00070026
	bl EventWinMesSet_08041058
	ldr r0, _08045290 @ =0x00070027
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080452A4
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045294 @ =0x00070028
	bl EventWinMesSet_08041058
	ldr r0, _08045298 @ =0x00070029
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804529C @ =0x0007002A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080452A0 @ =0x0007002B
	bl EventWinMesSet_08041058
	b _080452D4
	.align 2, 0
_08045284: .4byte 0x00070024
_08045288: .4byte 0x00070025
_0804528C: .4byte 0x00070026
_08045290: .4byte 0x00070027
_08045294: .4byte 0x00070028
_08045298: .4byte 0x00070029
_0804529C: .4byte 0x0007002A
_080452A0: .4byte 0x0007002B
_080452A4:
	ldr r0, _080452F4 @ =0x0007002D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080452F8 @ =0x0007002E
	bl EventWinMesSet_08041058
	ldr r0, _080452FC @ =0x0007002F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045300 @ =0x00070030
	bl EventWinMesSet_08041058
_080452D4:
	movs r0, #0x29
	movs r1, #0x11
	bl QuestFinish_08042814
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045304 @ =0x0007002C
	bl EventWinMesSet_08041058
	movs r0, #0x1d
	bl SetEventFlag_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_080452F4: .4byte 0x0007002D
_080452F8: .4byte 0x0007002E
_080452FC: .4byte 0x0007002F
_08045300: .4byte 0x00070030
_08045304: .4byte 0x0007002C

	thumb_func_start sub_08045308
sub_08045308: @ 0x08045308
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x26
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804534C @ =0x00070031
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045350 @ =0x00070032
	bl EventWinMesSet_08041058
	ldr r0, _08045354 @ =0x00070033
	bl EventWinMesSet_08041058
	ldr r0, _08045358 @ =0x00070034
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804534C: .4byte 0x00070031
_08045350: .4byte 0x00070032
_08045354: .4byte 0x00070033
_08045358: .4byte 0x00070034

	thumb_func_start sub_0804535C
sub_0804535C: @ 0x0804535C
	push {lr}
	sub sp, #8
	bl EventInit_080405B8
	ldr r0, _080453F8 @ =0x0808DDF4
	bl LoadBuildingBG_0804115C
	ldr r2, _080453FC @ =0x0808E96C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x48
	bl EventPlaceChara_08041894
	ldr r0, _08045400 @ =0x0808DC00
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	ldr r2, _08045404 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _08045408 @ =0x0808E83C
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x1e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045410
	movs r0, #0x21
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045410
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	ldr r0, _0804540C @ =sub_08044C04
	bl RunEventScript_0804066C
	b _08045478
	.align 2, 0
_080453F8: .4byte 0x0808DDF4
_080453FC: .4byte 0x0808E96C
_08045400: .4byte 0x0808DC00
_08045404: .4byte 0x0808E6BC
_08045408: .4byte 0x0808E83C
_0804540C: .4byte sub_08044C04
_08045410:
	movs r0, #0x1d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045430
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _0804542C @ =sub_08045308
	bl RunEventScript_0804066C
	b _08045478
	.align 2, 0
_0804542C: .4byte sub_08045308
_08045430:
	movs r0, #0x1a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804546C
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	movs r0, #0x1b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045460
	ldr r0, _0804545C @ =sub_080451FC
	bl RunEventScript_0804066C
	b _08045478
	.align 2, 0
_0804545C: .4byte sub_080451FC
_08045460:
	ldr r0, _08045468 @ =sub_080451B0
	bl RunEventScript_0804066C
	b _08045478
	.align 2, 0
_08045468: .4byte sub_080451B0
_0804546C:
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080454C0 @ =sub_08044F90
	bl RunEventScript_0804066C
_08045478:
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_080454C0: .4byte sub_08044F90
