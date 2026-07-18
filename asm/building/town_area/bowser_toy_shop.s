	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080499FC
sub_080499FC: @ 0x080499FC
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0xf0
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
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049B84 @ =0x001E0001
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049B88 @ =0x001E0002
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08049B8C @ =0x001E0003
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049B90 @ =0x001E0004
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049B94 @ =0x001E0005
	bl EventWinMesSet_08041058
	ldr r0, _08049B98 @ =0x001E0006
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08049BAC
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08049B9C @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049BA0 @ =0x001E0007
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049BA4 @ =0x001E0008
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl EventSleep_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049BA8 @ =0x001E0009
	bl EventWinMesSet_08041058
	b _08049DA2
	.align 2, 0
_08049B84: .4byte 0x001E0001
_08049B88: .4byte 0x001E0002
_08049B8C: .4byte 0x001E0003
_08049B90: .4byte 0x001E0004
_08049B94: .4byte 0x001E0005
_08049B98: .4byte 0x001E0006
_08049B9C: .4byte 0x0000011F
_08049BA0: .4byte 0x001E0007
_08049BA4: .4byte 0x001E0008
_08049BA8: .4byte 0x001E0009
_08049BAC:
	ldr r1, _08049DA8 @ =0x001E000A
	movs r0, #0x1d
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049BBC
	b _08049DA2
_08049BBC:
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DAC @ =0x001E000B
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
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DB0 @ =0x001E000C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DB4 @ =0x001E000D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049DB8 @ =0x001E000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DBC @ =0x001E000F
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DC0 @ =0x001E0010
	bl EventWinMesSet_08041058
	ldr r0, _08049DC4 @ =0x001E0011
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049CE8
	bl sub_08041008
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
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DC8 @ =0x001E0017
	bl EventWinMesSet_08041058
_08049CE8:
	ldr r0, _08049DCC @ =0x001E0012
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DD0 @ =0x001E0013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DD4 @ =0x001E0014
	bl EventWinMesSet_08041058
	ldr r0, _08049DD8 @ =0x001E0015
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049DDC @ =0x001E0016
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x77
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_08049DA2:
	pop {r0}
	bx r0
	.align 2, 0
_08049DA8: .4byte 0x001E000A
_08049DAC: .4byte 0x001E000B
_08049DB0: .4byte 0x001E000C
_08049DB4: .4byte 0x001E000D
_08049DB8: .4byte 0x001E000E
_08049DBC: .4byte 0x001E000F
_08049DC0: .4byte 0x001E0010
_08049DC4: .4byte 0x001E0011
_08049DC8: .4byte 0x001E0017
_08049DCC: .4byte 0x001E0012
_08049DD0: .4byte 0x001E0013
_08049DD4: .4byte 0x001E0014
_08049DD8: .4byte 0x001E0015
_08049DDC: .4byte 0x001E0016

	thumb_func_start sub_08049DE0
sub_08049DE0: @ 0x08049DE0
	push {lr}
	movs r0, #0xd2
	bl EventPlaySFX_080410E0
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
	ldr r0, _08049E94 @ =0x001E001A
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
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049E98 @ =0x001E001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049E9C @ =0x001E001C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049EA0 @ =0x001E001D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049EA4 @ =0x001E001E
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08049E94: .4byte 0x001E001A
_08049E98: .4byte 0x001E001B
_08049E9C: .4byte 0x001E001C
_08049EA0: .4byte 0x001E001D
_08049EA4: .4byte 0x001E001E

	thumb_func_start sub_08049EA8
sub_08049EA8: @ 0x08049EA8
	push {r4, lr}
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049FCC @ =0x001E0018
	bl EventWinMesSet_08041058
	ldr r0, _08049FD0 @ =0x001E0019
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049FC4
	ldr r4, _08049FD4 @ =0x0000014B
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049FD8 @ =0x001E001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049FDC @ =0x001E0020
	bl EventWinMesSet_08041058
	ldr r0, _08049FE0 @ =0x001E0021
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049FC4
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049FE4 @ =0x001E0022
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049FE8 @ =0x001E0023
	bl EventWinMesSet_08041058
	ldr r0, _08049FEC @ =0x001E0024
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049FC4
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049FF0 @ =0x001E0025
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049FF4 @ =0x001E0026
	bl EventWinMesSet_08041058
	ldr r0, _08049FF8 @ =0x001E0027
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049FC4
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049FFC @ =0x001E0028
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804A000 @ =0x001E0029
	bl EventWinMesSet_08041058
	ldr r0, _0804A004 @ =0x001E002A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _0804A00C
_08049FC4:
	ldr r0, _0804A008 @ =sub_08049DE0
	bl RunEventScript_0804066C
	b _0804A1BE
	.align 2, 0
_08049FCC: .4byte 0x001E0018
_08049FD0: .4byte 0x001E0019
_08049FD4: .4byte 0x0000014B
_08049FD8: .4byte 0x001E001F
_08049FDC: .4byte 0x001E0020
_08049FE0: .4byte 0x001E0021
_08049FE4: .4byte 0x001E0022
_08049FE8: .4byte 0x001E0023
_08049FEC: .4byte 0x001E0024
_08049FF0: .4byte 0x001E0025
_08049FF4: .4byte 0x001E0026
_08049FF8: .4byte 0x001E0027
_08049FFC: .4byte 0x001E0028
_0804A000: .4byte 0x001E0029
_0804A004: .4byte 0x001E002A
_0804A008: .4byte sub_08049DE0
_0804A00C:
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1C4 @ =0x001E002B
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
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1C8 @ =0x001E002C
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1CC @ =0x001E002D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1D0 @ =0x001E002E
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1D4 @ =0x001E002F
	bl EventWinMesSet_08041058
	ldr r0, _0804A1D8 @ =0x001E0030
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1DC @ =0x001E0031
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1E0 @ =0x001E0032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1E4 @ =0x001E0033
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r1, _0804A1E8 @ =0x00460021
	movs r0, #0x7b
	bl EventMgSpecialGoal_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A1EC @ =0x001E0034
	bl EventWinMesSet_08041058
	movs r0, #0x78
	bl EventSetFlag_080406E4
_0804A1BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A1C4: .4byte 0x001E002B
_0804A1C8: .4byte 0x001E002C
_0804A1CC: .4byte 0x001E002D
_0804A1D0: .4byte 0x001E002E
_0804A1D4: .4byte 0x001E002F
_0804A1D8: .4byte 0x001E0030
_0804A1DC: .4byte 0x001E0031
_0804A1E0: .4byte 0x001E0032
_0804A1E4: .4byte 0x001E0033
_0804A1E8: .4byte 0x00460021
_0804A1EC: .4byte 0x001E0034

	thumb_func_start sub_0804A1F0
sub_0804A1F0: @ 0x0804A1F0
	push {lr}
	movs r0, #0x79
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804A202
	b _0804A39C
_0804A202:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A378 @ =0x001E0038
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A37C @ =0x001E0039
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A380 @ =0x001E003A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A384 @ =0x001E003B
	bl EventWinMesSet_08041058
	movs r0, #0x35
	movs r1, #0x15
	bl QuestFinish_08042814
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A388 @ =0x001E003D
	bl EventWinMesSet_08041058
	ldr r0, _0804A38C @ =0x001E003E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A390 @ =0x001E003F
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
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A394 @ =0x001E0040
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A398 @ =0x001E0041
	bl EventWinMesSet_08041058
	movs r0, #0x7b
	bl EventSetMinigame_08040B84
	movs r0, #0x7a
	bl SetEventFlag_080406BC
	b _0804A472
	.align 2, 0
_0804A378: .4byte 0x001E0038
_0804A37C: .4byte 0x001E0039
_0804A380: .4byte 0x001E003A
_0804A384: .4byte 0x001E003B
_0804A388: .4byte 0x001E003D
_0804A38C: .4byte 0x001E003E
_0804A390: .4byte 0x001E003F
_0804A394: .4byte 0x001E0040
_0804A398: .4byte 0x001E0041
_0804A39C:
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
	ldr r0, _0804A478 @ =0x001E0042
	bl EventWinMesSet_08041058
	ldr r0, _0804A47C @ =0x001E0043
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A480 @ =0x001E0044
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A484 @ =0x001E0045
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804A488 @ =0x001E0046
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804A48C @ =0x001E0047
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A490 @ =0x001E0048
	bl EventWinMesSet_08041058
	movs r0, #0x77
	bl EventUnsetFlag_080406D0
	movs r0, #0x78
	bl EventUnsetFlag_080406D0
	movs r0, #0x79
	bl EventUnsetFlag_080406D0
	movs r0, #0x7a
	bl UnsetEventFlag_080406D0
_0804A472:
	pop {r0}
	bx r0
	.align 2, 0
_0804A478: .4byte 0x001E0042
_0804A47C: .4byte 0x001E0043
_0804A480: .4byte 0x001E0044
_0804A484: .4byte 0x001E0045
_0804A488: .4byte 0x001E0046
_0804A48C: .4byte 0x001E0047
_0804A490: .4byte 0x001E0048

	thumb_func_start sub_0804A494
sub_0804A494: @ 0x0804A494
	push {lr}
	movs r0, #0x3c
	bl EventSleep_08040690
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
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
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
	ldr r0, _0804A578 @ =0x001E0049
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A57C @ =0x001E004A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A580 @ =0x001E004B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A584 @ =0x001E004C
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
	ldr r0, _0804A588 @ =0x001E004D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804A58C @ =0x001E004E
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804A578: .4byte 0x001E0049
_0804A57C: .4byte 0x001E004A
_0804A580: .4byte 0x001E004B
_0804A584: .4byte 0x001E004C
_0804A588: .4byte 0x001E004D
_0804A58C: .4byte 0x001E004E

	thumb_func_start sub_0804A590
sub_0804A590: @ 0x0804A590
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804A684 @ =0x0808DFAC
	bl LoadBuildingBG_0804115C
	ldr r2, _0804A688 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x40
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _0804A68C @ =0x0808E71C
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
	ldr r2, _0804A690 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r2, _0804A694 @ =0x0808E6CC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x40
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x7a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A664
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
_0804A664:
	bl sub_080407FC
	movs r0, #0x7a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804A69C
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _0804A698 @ =sub_0804A494
	bl RunEventScript_0804066C
	b _0804A722
	.align 2, 0
_0804A684: .4byte 0x0808DFAC
_0804A688: .4byte 0x0808E7BC
_0804A68C: .4byte 0x0808E71C
_0804A690: .4byte 0x0808E6BC
_0804A694: .4byte 0x0808E6CC
_0804A698: .4byte sub_0804A494
_0804A69C:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804A6FA
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _0804A6D8 @ =sub_080499FC
	bl RunEventScript_0804066C
	movs r0, #0x77
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A722
	ldr r0, _0804A6DC @ =sub_08049EA8
	bl RunEventScript_0804066C
	movs r0, #0x78
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A6E0
	movs r0, #0x7b
	bl EventQuestBegin_080406D0
	b _0804A722
	.align 2, 0
_0804A6D8: .4byte sub_080499FC
_0804A6DC: .4byte sub_08049EA8
_0804A6E0:
	movs r0, #0x77
	bl EventUnsetFlag_080406D0
	movs r0, #0x78
	bl EventUnsetFlag_080406D0
	movs r0, #0x79
	bl EventUnsetFlag_080406D0
	movs r0, #0x7a
	bl UnsetEventFlag_080406D0
	b _0804A722
_0804A6FA:
	movs r0, #0x15
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804A712
	cmp r0, #1
	ble _0804A722
	cmp r0, #2
	beq _0804A718
	b _0804A722
_0804A712:
	movs r0, #0x79
	bl EventSetFlag_080406E4
_0804A718:
	ldr r0, _0804A770 @ =sub_0804A1F0
	bl RunEventScript_0804066C
	bl sub_08040B28
_0804A722:
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
_0804A770: .4byte sub_0804A1F0
