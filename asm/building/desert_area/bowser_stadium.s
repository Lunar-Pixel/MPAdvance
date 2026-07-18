	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804F504
sub_0804F504: @ 0x0804F504
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0x88
	lsls r0, r0, #0xd
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
	ldr r0, _0804F640 @ =0x00110001
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
	ldr r0, _0804F644 @ =0x00110002
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F648 @ =0x00110003
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F64C @ =0x00110004
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
	ldr r0, _0804F650 @ =0x00110005
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804F664
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
	ldr r0, _0804F654 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F658 @ =0x00110006
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F65C @ =0x00110007
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F660 @ =0x00110008
	bl EventWinMesSet_08041058
	b _0804F85E
	.align 2, 0
_0804F640: .4byte 0x00110001
_0804F644: .4byte 0x00110002
_0804F648: .4byte 0x00110003
_0804F64C: .4byte 0x00110004
_0804F650: .4byte 0x00110005
_0804F654: .4byte 0x0000011F
_0804F658: .4byte 0x00110006
_0804F65C: .4byte 0x00110007
_0804F660: .4byte 0x00110008
_0804F664:
	ldr r1, _0804F770 @ =0x00110009
	movs r0, #0x10
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F674
	b _0804F85E
_0804F674:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F774 @ =0x0011000A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F778 @ =0x0011000B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804F77C @ =0x0011000C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F780 @ =0x0011000D
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
	ldr r0, _0804F784 @ =0x0011000E
	bl EventWinMesSet_08041058
	ldr r0, _0804F788 @ =0x0011000F
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F798
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804F78C @ =0x00110010
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
	ldr r0, _0804F790 @ =0x00110011
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
	ldr r0, _0804F794 @ =0x00110012
	bl EventWinMesSet_08041058
	b _0804F7DA
	.align 2, 0
_0804F770: .4byte 0x00110009
_0804F774: .4byte 0x0011000A
_0804F778: .4byte 0x0011000B
_0804F77C: .4byte 0x0011000C
_0804F780: .4byte 0x0011000D
_0804F784: .4byte 0x0011000E
_0804F788: .4byte 0x0011000F
_0804F78C: .4byte 0x00110010
_0804F790: .4byte 0x00110011
_0804F794: .4byte 0x00110012
_0804F798:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F864 @ =0x00110019
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F868 @ =0x0011001A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F86C @ =0x0011001B
	bl EventWinMesSet_08041058
_0804F7DA:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F870 @ =0x00110013
	bl EventWinMesSet_08041058
	ldr r0, _0804F874 @ =0x00110014
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F878 @ =0x00110015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F87C @ =0x00110016
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804F880 @ =0x00110017
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F884 @ =0x00110018
	bl EventWinMesSet_08041058
	movs r0, #0x42
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_0804F85E:
	pop {r0}
	bx r0
	.align 2, 0
_0804F864: .4byte 0x00110019
_0804F868: .4byte 0x0011001A
_0804F86C: .4byte 0x0011001B
_0804F870: .4byte 0x00110013
_0804F874: .4byte 0x00110014
_0804F878: .4byte 0x00110015
_0804F87C: .4byte 0x00110016
_0804F880: .4byte 0x00110017
_0804F884: .4byte 0x00110018

	thumb_func_start sub_0804F888
sub_0804F888: @ 0x0804F888
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x43
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F89C
	b _0804F9FC
_0804F89C:
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F9CC @ =0x0011001C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F9D0 @ =0x0011001D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F9D4 @ =0x0011001E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F9D8 @ =0x0011001F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F9DC @ =0x00110020
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
	ldr r0, _0804F9E0 @ =0x00110021
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F9E4 @ =0x00110022
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
	ldr r1, _0804F9E8 @ =0x0046002A
	movs r0, #0x6f
	bl EventMgSpecialGoal_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F9EC @ =0x00110023
	bl EventWinMesSet_08041058
	bl sub_08040BB8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F9F0 @ =0x00110024
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F9F4 @ =0x00110025
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F9F8 @ =0x00110026
	bl EventWinMesSet_08041058
	b _0804FAAA
	.align 2, 0
_0804F9CC: .4byte 0x0011001C
_0804F9D0: .4byte 0x0011001D
_0804F9D4: .4byte 0x0011001E
_0804F9D8: .4byte 0x0011001F
_0804F9DC: .4byte 0x00110020
_0804F9E0: .4byte 0x00110021
_0804F9E4: .4byte 0x00110022
_0804F9E8: .4byte 0x0046002A
_0804F9EC: .4byte 0x00110023
_0804F9F0: .4byte 0x00110024
_0804F9F4: .4byte 0x00110025
_0804F9F8: .4byte 0x00110026
_0804F9FC:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FAB0 @ =0x00110038
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FAB4 @ =0x00110039
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FAB8 @ =0x0011003A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804FABC @ =0x00110034
	bl EventWinMesSet_08041058
	ldr r0, _0804FAC0 @ =0x00110035
	bl EventWinMesSet_08041058
	ldr r0, _0804FAC4 @ =0x00110036
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FAC8 @ =0x00110037
	bl EventWinMesSet_08041058
	movs r0, #0x42
	bl EventUnsetFlag_080406D0
	movs r0, #0x43
	bl EventUnsetFlag_080406D0
	movs r0, #0x44
	bl EventUnsetFlag_080406D0
	movs r0, #0x45
	bl UnsetEventFlag_080406D0
_0804FAAA:
	pop {r0}
	bx r0
	.align 2, 0
_0804FAB0: .4byte 0x00110038
_0804FAB4: .4byte 0x00110039
_0804FAB8: .4byte 0x0011003A
_0804FABC: .4byte 0x00110034
_0804FAC0: .4byte 0x00110035
_0804FAC4: .4byte 0x00110036
_0804FAC8: .4byte 0x00110037

	thumb_func_start sub_0804FACC
sub_0804FACC: @ 0x0804FACC
	push {lr}
	movs r0, #0x44
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804FADE
	b _0804FC14
_0804FADE:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FBEC @ =0x00110027
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FBF0 @ =0x00110028
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
	ldr r0, _0804FBF4 @ =0x00110029
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FBF8 @ =0x0011002A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FBFC @ =0x0011002B
	bl EventWinMesSet_08041058
	ldr r0, _0804FC00 @ =0x0011002C
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804FC04 @ =0x0011002D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FC08 @ =0x0011002E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804FC0C @ =0x0011002F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FC10 @ =0x00110030
	bl EventWinMesSet_08041058
	movs r0, #0x6f
	bl EventSetMinigame_08040B84
	movs r0, #0x45
	bl SetEventFlag_080406BC
	b _0804FCAE
	.align 2, 0
_0804FBEC: .4byte 0x00110027
_0804FBF0: .4byte 0x00110028
_0804FBF4: .4byte 0x00110029
_0804FBF8: .4byte 0x0011002A
_0804FBFC: .4byte 0x0011002B
_0804FC00: .4byte 0x0011002C
_0804FC04: .4byte 0x0011002D
_0804FC08: .4byte 0x0011002E
_0804FC0C: .4byte 0x0011002F
_0804FC10: .4byte 0x00110030
_0804FC14:
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FCB4 @ =0x00110031
	bl EventWinMesSet_08041058
	ldr r0, _0804FCB8 @ =0x00110032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FCBC @ =0x00110033
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FCC0 @ =0x00110034
	bl EventWinMesSet_08041058
	ldr r0, _0804FCC4 @ =0x00110035
	bl EventWinMesSet_08041058
	ldr r0, _0804FCC8 @ =0x00110036
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FCCC @ =0x00110037
	bl EventWinMesSet_08041058
	movs r0, #0x42
	bl EventUnsetFlag_080406D0
	movs r0, #0x43
	bl EventUnsetFlag_080406D0
	movs r0, #0x44
	bl EventUnsetFlag_080406D0
	movs r0, #0x45
	bl UnsetEventFlag_080406D0
_0804FCAE:
	pop {r0}
	bx r0
	.align 2, 0
_0804FCB4: .4byte 0x00110031
_0804FCB8: .4byte 0x00110032
_0804FCBC: .4byte 0x00110033
_0804FCC0: .4byte 0x00110034
_0804FCC4: .4byte 0x00110035
_0804FCC8: .4byte 0x00110036
_0804FCCC: .4byte 0x00110037

	thumb_func_start sub_0804FCD0
sub_0804FCD0: @ 0x0804FCD0
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FD70 @ =0x0011003B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FD74 @ =0x0011003C
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
	ldr r0, _0804FD78 @ =0x0011003D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804FD7C @ =0x0011003E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FD80 @ =0x0011003F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804FD84 @ =0x00110040
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804FD70: .4byte 0x0011003B
_0804FD74: .4byte 0x0011003C
_0804FD78: .4byte 0x0011003D
_0804FD7C: .4byte 0x0011003E
_0804FD80: .4byte 0x0011003F
_0804FD84: .4byte 0x00110040

	thumb_func_start sub_0804FD88
sub_0804FD88: @ 0x0804FD88
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804FE08 @ =0x0808E1DC
	bl LoadBuildingBG_0804115C
	ldr r2, _0804FE0C @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xbc
	movs r2, #0x62
	bl EventPlaceChara_08041894
	ldr r2, _0804FE10 @ =0x0808E70C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x62
	bl EventPlaceChara_08041894
	ldr r2, _0804FE14 @ =0x0808E6BC
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
	movs r0, #0x44
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804FE1C
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804FE18 @ =sub_0804FCD0
	bl RunEventScript_0804066C
	b _0804FEC2
	.align 2, 0
_0804FE08: .4byte 0x0808E1DC
_0804FE0C: .4byte 0x0808E7BC
_0804FE10: .4byte 0x0808E70C
_0804FE14: .4byte 0x0808E6BC
_0804FE18: .4byte sub_0804FCD0
_0804FE1C:
	movs r0, #0x43
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804FE58
	movs r0, #0x12
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804FE42
	cmp r0, #1
	ble _0804FEC2
	cmp r0, #2
	beq _0804FE48
	b _0804FEC2
_0804FE42:
	movs r0, #0x44
	bl EventSetFlag_080406E4
_0804FE48:
	ldr r0, _0804FE54 @ =sub_0804FACC
	bl RunEventScript_0804066C
	bl sub_08040B28
	b _0804FEC2
	.align 2, 0
_0804FE54: .4byte sub_0804FACC
_0804FE58:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804FE88
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804FE84 @ =sub_0804F504
	bl RunEventScript_0804066C
	movs r0, #0x42
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804FEC2
	movs r0, #0xc
	bl sub_08040F18
	b _0804FEC2
	.align 2, 0
_0804FE84: .4byte sub_0804F504
_0804FE88:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804FEB8
	movs r0, #0x43
	bl EventSetFlag_080406E4
	ldr r0, _0804FEB4 @ =sub_0804F888
	bl RunEventScript_0804066C
	bl sub_08040F0C
	movs r0, #0x6f
	bl EventQuestBegin_080406D0
	b _0804FEC2
	.align 2, 0
_0804FEB4: .4byte sub_0804F888
_0804FEB8:
	ldr r0, _0804FF00 @ =sub_0804F888
	bl RunEventScript_0804066C
	bl sub_08040F0C
_0804FEC2:
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
_0804FF00: .4byte sub_0804F888
