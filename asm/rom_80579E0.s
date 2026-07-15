	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080579E0
sub_080579E0: @ 0x080579E0
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x1e
	bl EventSleep_08040690
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
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x20
	bl EventWinSpeakerSet_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _08057A58 @ =0x00300001
	bl EventWinMesSet_08041058
	ldr r0, _08057A5C @ =0x00300002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057A64
	ldr r0, _08057A60 @ =0x00300003
	bl EventWinMesSet_08041058
	b _08057B38
	.align 2, 0
_08057A58: .4byte 0x00300001
_08057A5C: .4byte 0x00300002
_08057A60: .4byte 0x00300003
_08057A64:
	ldr r1, _08057ACC @ =0x00300004
	movs r0, #0x2f
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057B38
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x20
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057AD0 @ =0x00300005
	bl EventWinMesSet_08041058
	ldr r0, _08057AD4 @ =0x00300006
	bl EventWinMesSet_08041058
	ldr r0, _08057AD8 @ =0x00300007
	bl EventWinMesSet_08041058
	ldr r0, _08057ADC @ =0x00300008
	bl EventWinMesSet_08041058
	ldr r0, _08057AE0 @ =0x00300009
	bl EventWinMesSet_08041058
	ldr r0, _08057AE4 @ =0x0030000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057AF0
	ldr r0, _08057AE8 @ =0x0030000B
	bl EventWinMesSet_08041058
	ldr r0, _08057AEC @ =0x0030000C
	bl EventWinMesSet_08041058
	b _08057B0E
	.align 2, 0
_08057ACC: .4byte 0x00300004
_08057AD0: .4byte 0x00300005
_08057AD4: .4byte 0x00300006
_08057AD8: .4byte 0x00300007
_08057ADC: .4byte 0x00300008
_08057AE0: .4byte 0x00300009
_08057AE4: .4byte 0x0030000A
_08057AE8: .4byte 0x0030000B
_08057AEC: .4byte 0x0030000C
_08057AF0:
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08057B3C @ =0x00300012
	bl EventWinMesSet_08041058
	ldr r0, _08057B40 @ =0x00300013
	bl EventWinMesSet_08041058
	ldr r0, _08057B44 @ =0x00300014
	bl EventWinMesSet_08041058
_08057B0E:
	ldr r0, _08057B48 @ =0x0030000D
	bl EventWinMesSet_08041058
	ldr r0, _08057B4C @ =0x0030000E
	bl EventWinMesSet_08041058
	ldr r0, _08057B50 @ =0x0030000F
	bl EventWinMesSet_08041058
	ldr r0, _08057B54 @ =0x00300010
	bl EventWinMesSet_08041058
	ldr r0, _08057B58 @ =0x00300011
	bl EventWinMesSet_08041058
	movs r0, #0xb2
	bl EventSetFlag_080406E4
	movs r0, #3
	bl SetCharacterMetFlag_0802D7CC
_08057B38:
	pop {r0}
	bx r0
	.align 2, 0
_08057B3C: .4byte 0x00300012
_08057B40: .4byte 0x00300013
_08057B44: .4byte 0x00300014
_08057B48: .4byte 0x0030000D
_08057B4C: .4byte 0x0030000E
_08057B50: .4byte 0x0030000F
_08057B54: .4byte 0x00300010
_08057B58: .4byte 0x00300011

	thumb_func_start sub_08057B5C
sub_08057B5C: @ 0x08057B5C
	push {lr}
	movs r0, #0xb3
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057BE4
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x20
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057BC8 @ =0x00300015
	bl EventWinMesSet_08041058
	ldr r0, _08057BCC @ =0x00300016
	bl EventWinMesSet_08041058
	ldr r0, _08057BD0 @ =0x00300017
	bl EventWinMesSet_08041058
	ldr r0, _08057BD4 @ =0x00300018
	bl EventWinMesSet_08041058
	ldr r0, _08057BD8 @ =0x00300019
	bl EventWinMesSet_08041058
	movs r0, #0x17
	movs r1, #0x18
	bl QuestFinish_08042814
	movs r0, #0x20
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057BDC @ =0x0030001A
	bl EventWinMesSet_08041058
	ldr r0, _08057BE0 @ =0x0030001B
	bl EventWinMesSet_08041058
	movs r0, #0xb5
	bl SetEventFlag_080406BC
	b _08057C34
	.align 2, 0
_08057BC8: .4byte 0x00300015
_08057BCC: .4byte 0x00300016
_08057BD0: .4byte 0x00300017
_08057BD4: .4byte 0x00300018
_08057BD8: .4byte 0x00300019
_08057BDC: .4byte 0x0030001A
_08057BE0: .4byte 0x0030001B
_08057BE4:
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x20
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057C38 @ =0x0030001C
	bl EventWinMesSet_08041058
	ldr r0, _08057C3C @ =0x0030001D
	bl EventWinMesSet_08041058
	ldr r0, _08057C40 @ =0x0030001E
	bl EventWinMesSet_08041058
	ldr r0, _08057C44 @ =0x0030001F
	bl EventWinMesSet_08041058
	ldr r0, _08057C48 @ =0x00300020
	bl EventWinMesSet_08041058
	movs r0, #0xb2
	bl EventUnsetFlag_080406D0
	movs r0, #0xb3
	bl EventUnsetFlag_080406D0
	movs r0, #0xb4
	bl EventUnsetFlag_080406D0
	movs r0, #0xb5
	bl UnsetEventFlag_080406D0
_08057C34:
	pop {r0}
	bx r0
	.align 2, 0
_08057C38: .4byte 0x0030001C
_08057C3C: .4byte 0x0030001D
_08057C40: .4byte 0x0030001E
_08057C44: .4byte 0x0030001F
_08057C48: .4byte 0x00300020

	thumb_func_start sub_08057C4C
sub_08057C4C: @ 0x08057C4C
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x20
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057C80 @ =0x00300021
	bl EventWinMesSet_08041058
	ldr r0, _08057C84 @ =0x00300022
	bl EventWinMesSet_08041058
	ldr r0, _08057C88 @ =0x00300023
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08057C80: .4byte 0x00300021
_08057C84: .4byte 0x00300022
_08057C88: .4byte 0x00300023

	thumb_func_start sub_08057C8C
sub_08057C8C: @ 0x08057C8C
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08057D14 @ =0x0808E4FC
	bl LoadBuildingBG_0804115C
	movs r0, #0
	movs r1, #2
	movs r2, #0xf0
	bl sub_080420E0
	ldr r2, _08057D18 @ =0x0808E91C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _08057D1C @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0xb5
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057D24
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08057D20 @ =sub_08057C4C
	bl RunEventScript_0804066C
	b _08057D76
	.align 2, 0
_08057D14: .4byte 0x0808E4FC
_08057D18: .4byte 0x0808E91C
_08057D1C: .4byte 0x0808E6BC
_08057D20: .4byte sub_08057C4C
_08057D24:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057D54
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08057D50 @ =sub_080579E0
	bl RunEventScript_0804066C
	movs r0, #0xb2
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057D76
	movs r0, #0xb
	bl sub_08040F18
	b _08057D76
	.align 2, 0
_08057D50: .4byte sub_080579E0
_08057D54:
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057D6C
	movs r0, #0xb3
	bl EventSetFlag_080406E4
_08057D6C:
	ldr r0, _08057DAC @ =sub_08057B5C
	bl RunEventScript_0804066C
	bl sub_08040F0C
_08057D76:
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
	bl sub_08042168
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08057DAC: .4byte sub_08057B5C

	thumb_func_start sub_08057DB0
sub_08057DB0: @ 0x08057DB0
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	movs r0, #0x98
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _08057E14 @ =0x00260001
	bl EventWinMesSet_08041058
	ldr r0, _08057E18 @ =0x00260002
	bl EventWinMesSet_08041058
	ldr r0, _08057E1C @ =0x00260003
	bl EventWinMesSet_08041058
	ldr r0, _08057E20 @ =0x00260004
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08057E2C
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08057E24 @ =0x00260005
	bl EventWinMesSet_08041058
	ldr r0, _08057E28 @ =0x00260006
	bl EventWinMesSet_08041058
	b _08057F8C
	.align 2, 0
_08057E14: .4byte 0x00260001
_08057E18: .4byte 0x00260002
_08057E1C: .4byte 0x00260003
_08057E20: .4byte 0x00260004
_08057E24: .4byte 0x00260005
_08057E28: .4byte 0x00260006
_08057E2C:
	ldr r0, _08057F94 @ =0x00260007
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08057F98 @ =0x00260008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r1, _08057F9C @ =0x00260009
	movs r0, #0x25
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057E60
	b _08057F8C
_08057E60:
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057FA0 @ =0x0026000A
	bl EventWinMesSet_08041058
	ldr r0, _08057FA4 @ =0x0026000B
	bl EventWinMesSet_08041058
	ldr r0, _08057FA8 @ =0x0026000C
	bl EventWinMesSet_08041058
	ldr r0, _08057FAC @ =0x0026000D
	bl EventWinMesSet_08041058
	ldr r0, _08057FB0 @ =0x0026000E
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventSleep_08040690
	ldr r0, _08057FB4 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0
	movs r3, #0x28
	bl sub_08041938
	movs r0, #0x78
	bl EventSleep_08040690
	ldr r0, _08057FB8 @ =0x0000011D
	bl sub_080410E0
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	ldr r0, _08057FBC @ =0x000002B1
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0x18
	bl sub_080413C0
	bl sub_08041430
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x13
	bl EventWinSpeakerSet_08041018
	ldr r4, _08057FC0 @ =0x000002B2
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08057FC4 @ =0x0026000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08057FC8 @ =0x00260010
	bl EventWinMesSet_08041058
	ldr r0, _08057FCC @ =0x00260011
	bl EventWinMesSet_08041058
	ldr r0, _08057FD0 @ =0x00260012
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08057F3C
	ldr r0, _08057FD4 @ =0x00260018
	bl EventWinMesSet_08041058
_08057F3C:
	ldr r0, _08057FD8 @ =0x00260013
	bl EventWinMesSet_08041058
	ldr r0, _08057FDC @ =0x00260014
	bl EventWinMesSet_08041058
	ldr r0, _08057FE0 @ =0x00260015
	bl EventWinMesSet_08041058
	ldr r0, _08057FE4 @ =0x00260016
	bl EventWinMesSet_08041058
	ldr r1, _08057FE8 @ =0x00460022
	movs r0, #0x67
	bl EventMgSpecialGoal_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x13
	bl EventWinSpeakerSet_08041018
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _08057FEC @ =0x00260017
	bl EventWinMesSet_08041058
	movs r0, #0x91
	bl EventSetFlag_080406E4
	movs r0, #0x15
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x1e
	bl SetCharacterMetFlag_0802D7CC
_08057F8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057F94: .4byte 0x00260007
_08057F98: .4byte 0x00260008
_08057F9C: .4byte 0x00260009
_08057FA0: .4byte 0x0026000A
_08057FA4: .4byte 0x0026000B
_08057FA8: .4byte 0x0026000C
_08057FAC: .4byte 0x0026000D
_08057FB0: .4byte 0x0026000E
_08057FB4: .4byte 0x0000011B
_08057FB8: .4byte 0x0000011D
_08057FBC: .4byte 0x000002B1
_08057FC0: .4byte 0x000002B2
_08057FC4: .4byte 0x0026000F
_08057FC8: .4byte 0x00260010
_08057FCC: .4byte 0x00260011
_08057FD0: .4byte 0x00260012
_08057FD4: .4byte 0x00260018
_08057FD8: .4byte 0x00260013
_08057FDC: .4byte 0x00260014
_08057FE0: .4byte 0x00260015
_08057FE4: .4byte 0x00260016
_08057FE8: .4byte 0x00460022
_08057FEC: .4byte 0x00260017

	thumb_func_start sub_08057FF0
sub_08057FF0: @ 0x08057FF0
	push {lr}
	movs r0, #0x92
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805805C
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x13
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058044 @ =0x000002B2
	bl sub_080410E0
	ldr r0, _08058048 @ =0x00260019
	bl EventWinMesSet_08041058
	ldr r0, _0805804C @ =0x0026001A
	bl EventWinMesSet_08041058
	ldr r0, _08058050 @ =0x0026001B
	bl EventWinMesSet_08041058
	ldr r0, _08058054 @ =0x0026001C
	bl EventWinMesSet_08041058
	ldr r0, _08058058 @ =0x0026001D
	bl EventWinMesSet_08041058
	bl sub_080406AC
	b _080580A8
	.align 2, 0
_08058044: .4byte 0x000002B2
_08058048: .4byte 0x00260019
_0805804C: .4byte 0x0026001A
_08058050: .4byte 0x0026001B
_08058054: .4byte 0x0026001C
_08058058: .4byte 0x0026001D
_0805805C:
	bl EventWinInit_08040fe8
	movs r0, #0x13
	bl EventWinSpeakerSet_08041018
	ldr r0, _080580AC @ =0x000002B2
	bl sub_080410E0
	ldr r0, _080580B0 @ =0x0026001E
	bl EventWinMesSet_08041058
	ldr r0, _080580B4 @ =0x0026001F
	bl EventWinMesSet_08041058
	ldr r0, _080580B8 @ =0x00260020
	bl EventWinMesSet_08041058
	ldr r0, _080580BC @ =0x00260021
	bl EventWinMesSet_08041058
	ldr r0, _080580C0 @ =0x00260022
	bl EventWinMesSet_08041058
	movs r0, #0x90
	bl EventUnsetFlag_080406D0
	movs r0, #0x92
	bl EventUnsetFlag_080406D0
	movs r0, #0x95
	bl EventUnsetFlag_080406D0
	movs r0, #0x91
	bl EventUnsetFlag_080406D0
	movs r0, #0x93
	bl UnsetEventFlag_080406D0
_080580A8:
	pop {r0}
	bx r0
	.align 2, 0
_080580AC: .4byte 0x000002B2
_080580B0: .4byte 0x0026001E
_080580B4: .4byte 0x0026001F
_080580B8: .4byte 0x00260020
_080580BC: .4byte 0x00260021
_080580C0: .4byte 0x00260022

	thumb_func_start sub_080580C4
sub_080580C4: @ 0x080580C4
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _080580EC @ =0x00260023
	bl EventWinMesSet_08041058
	ldr r0, _080580F0 @ =0x00260024
	bl EventWinMesSet_08041058
	ldr r0, _080580F4 @ =0x00260025
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080580EC: .4byte 0x00260023
_080580F0: .4byte 0x00260024
_080580F4: .4byte 0x00260025

	thumb_func_start sub_080580F8
sub_080580F8: @ 0x080580F8
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0805815C @ =0x0808E524
	bl LoadBuildingBG_0804115C
	ldr r2, _08058160 @ =0x0808E8AC
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
	ldr r2, _08058164 @ =0x0808E85C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #0x93
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805816C
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	ldr r0, _08058168 @ =sub_080580C4
	bl RunEventScript_0804066C
_08058156:
	bl sub_080410D0
	b _080581FA
	.align 2, 0
_0805815C: .4byte 0x0808E524
_08058160: .4byte 0x0808E8AC
_08058164: .4byte 0x0808E85C
_08058168: .4byte sub_080580C4
_0805816C:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805819C
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	ldr r0, _08058198 @ =sub_08057DB0
	bl RunEventScript_0804066C
	movs r0, #0x91
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08058156
	movs r0, #0x67
	bl EventQuestBegin_080406D0
	b _08058156
	.align 2, 0
_08058198: .4byte sub_08057DB0
_0805819C:
	movs r0, #0
	movs r1, #0x78
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080581D2
	cmp r0, #1
	bgt _080581CC
	cmp r0, #0
	beq _08058156
	b _080581FA
_080581CC:
	cmp r0, #2
	beq _080581EC
	b _080581FA
_080581D2:
	movs r0, #0x92
	bl EventSetFlag_080406E4
	ldr r0, _080581E8 @ =sub_08057FF0
	bl RunEventScript_0804066C
	movs r0, #0x38
	movs r1, #8
	bl sub_080068A0
	b _080581FA
	.align 2, 0
_080581E8: .4byte sub_08057FF0
_080581EC:
	ldr r0, _08058228 @ =sub_08057FF0
	bl RunEventScript_0804066C
	bl sub_08040B28
	bl sub_080410D0
_080581FA:
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
_08058228: .4byte sub_08057FF0

	thumb_func_start sub_0805822C
sub_0805822C: @ 0x0805822C
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	movs r0, #0x94
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _080583C0 @ =0x00250001
	bl EventWinMesSet_08041058
	ldr r1, _080583C4 @ =0x00250002
	movs r0, #0x24
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805826C
	b _080583BA
_0805826C:
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _080583C8 @ =0x00250003
	bl EventWinMesSet_08041058
	ldr r0, _080583CC @ =0x00250004
	bl EventWinMesSet_08041058
	ldr r0, _080583D0 @ =0x00250005
	bl EventWinMesSet_08041058
	ldr r0, _080583D4 @ =0x00250006
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventSleep_08040690
	ldr r0, _080583D8 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0
	movs r3, #0x28
	bl sub_08041938
	movs r0, #0x78
	bl EventSleep_08040690
	ldr r0, _080583DC @ =0x0000011D
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x59
	movs r3, #0x10
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080583E0 @ =0x00000127
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0x18
	bl sub_080413C0
	bl sub_08041430
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventWinSpeakerSet_08041018
	ldr r0, _080583E4 @ =0x00250007
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080583E8 @ =0x00250008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080583EC @ =0x00250009
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080583F0 @ =0x0025000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08058376
	ldr r0, _080583F4 @ =0x00250010
	bl EventWinMesSet_08041058
_08058376:
	ldr r0, _080583F8 @ =0x0025000B
	bl EventWinMesSet_08041058
	ldr r0, _080583FC @ =0x0025000C
	bl EventWinMesSet_08041058
	ldr r0, _08058400 @ =0x0025000D
	bl EventWinMesSet_08041058
	ldr r0, _08058404 @ =0x0025000E
	bl EventWinMesSet_08041058
	ldr r1, _08058408 @ =0x00460025
	movs r0, #0x6a
	bl EventMgSpecialGoal_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805840C @ =0x0025000F
	bl EventWinMesSet_08041058
	movs r0, #0x8f
	bl EventSetFlag_080406E4
	movs r0, #0x22
	bl SetCharacterMetFlag_0802D7CC
_080583BA:
	pop {r0}
	bx r0
	.align 2, 0
_080583C0: .4byte 0x00250001
_080583C4: .4byte 0x00250002
_080583C8: .4byte 0x00250003
_080583CC: .4byte 0x00250004
_080583D0: .4byte 0x00250005
_080583D4: .4byte 0x00250006
_080583D8: .4byte 0x0000011B
_080583DC: .4byte 0x0000011D
_080583E0: .4byte 0x00000127
_080583E4: .4byte 0x00250007
_080583E8: .4byte 0x00250008
_080583EC: .4byte 0x00250009
_080583F0: .4byte 0x0025000A
_080583F4: .4byte 0x00250010
_080583F8: .4byte 0x0025000B
_080583FC: .4byte 0x0025000C
_08058400: .4byte 0x0025000D
_08058404: .4byte 0x0025000E
_08058408: .4byte 0x00460025
_0805840C: .4byte 0x0025000F

	thumb_func_start sub_08058410
sub_08058410: @ 0x08058410
	push {lr}
	movs r0, #0x90
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08058474
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x30
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058460 @ =0x00250011
	bl EventWinMesSet_08041058
	ldr r0, _08058464 @ =0x00250012
	bl EventWinMesSet_08041058
	ldr r0, _08058468 @ =0x00250013
	bl EventWinMesSet_08041058
	ldr r0, _0805846C @ =0x00250014
	bl EventWinMesSet_08041058
	ldr r0, _08058470 @ =0x00250015
	bl EventWinMesSet_08041058
	bl sub_080406AC
	b _080584C6
	.align 2, 0
_08058460: .4byte 0x00250011
_08058464: .4byte 0x00250012
_08058468: .4byte 0x00250013
_0805846C: .4byte 0x00250014
_08058470: .4byte 0x00250015
_08058474:
	bl EventWinInit_08040fe8
	movs r0, #0x30
	bl EventWinSpeakerSet_08041018
	ldr r0, _080584CC @ =0x00250016
	bl EventWinMesSet_08041058
	ldr r0, _080584D0 @ =0x00250017
	bl EventWinMesSet_08041058
	ldr r0, _080584D4 @ =0x00250018
	bl EventWinMesSet_08041058
	ldr r0, _080584D8 @ =0x00250019
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080584DC @ =0x0025001A
	bl EventWinMesSet_08041058
	movs r0, #0x90
	bl EventUnsetFlag_080406D0
	movs r0, #0x92
	bl EventUnsetFlag_080406D0
	movs r0, #0x95
	bl EventUnsetFlag_080406D0
	movs r0, #0x91
	bl EventUnsetFlag_080406D0
	movs r0, #0x93
	bl UnsetEventFlag_080406D0
_080584C6:
	pop {r0}
	bx r0
	.align 2, 0
_080584CC: .4byte 0x00250016
_080584D0: .4byte 0x00250017
_080584D4: .4byte 0x00250018
_080584D8: .4byte 0x00250019
_080584DC: .4byte 0x0025001A

	thumb_func_start sub_080584E0
sub_080584E0: @ 0x080584E0
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08058548 @ =0x0808E54C
	bl LoadBuildingBG_0804115C
	ldr r2, _0805854C @ =0x0808E8AC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x59
	bl EventPlaceChara_08041894
	ldr r2, _08058550 @ =0x0808EA0C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0
	bl EventPlaceChara_08041894
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058558
	ldr r0, _08058554 @ =sub_0805822C
	bl RunEventScript_0804066C
	movs r0, #0x8f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805858E
	movs r0, #0x6a
	bl EventQuestBegin_080406D0
	b _0805858E
	.align 2, 0
_08058548: .4byte 0x0808E54C
_0805854C: .4byte 0x0808E8AC
_08058550: .4byte 0x0808EA0C
_08058554: .4byte sub_0805822C
_08058558:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x59
	bl EventPlaceChara_08041894
	bl sub_080407FC
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08058594
	cmp r0, #1
	bgt _08058588
	cmp r0, #0
	beq _0805858E
	b _080585C2
_08058588:
	cmp r0, #2
	beq _080585B0
	b _080585C2
_0805858E:
	bl sub_080410D0
	b _080585C2
_08058594:
	movs r0, #0x90
	bl EventSetFlag_080406E4
	ldr r0, _080585AC @ =sub_08058410
	bl RunEventScript_0804066C
	movs r0, #0x39
	movs r1, #8
	bl sub_080068A0
	b _080585C2
	.align 2, 0
_080585AC: .4byte sub_08058410
_080585B0:
	ldr r0, _080585F4 @ =sub_08058410
	bl RunEventScript_0804066C
	bl sub_08040B28
	bl sub_080405AC
	bl sub_080410D0
_080585C2:
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
	bl sub_080406AC
	pop {r0}
	bx r0
	.align 2, 0
_080585F4: .4byte sub_08058410

	thumb_func_start sub_080585F8
sub_080585F8: @ 0x080585F8
	push {lr}
	movs r0, #0x78
	bl EventSleep_08040690
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	movs r0, #0x9c
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _08058704 @ =0x00270001
	bl EventWinMesSet_08041058
	ldr r0, _08058708 @ =0x00270002
	bl EventWinMesSet_08041058
	ldr r1, _0805870C @ =0x00270003
	movs r0, #0x26
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080586FE
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058710 @ =0x00270004
	bl EventWinMesSet_08041058
	ldr r0, _08058714 @ =0x00270005
	bl EventWinMesSet_08041058
	ldr r0, _08058718 @ =0x00270006
	bl EventWinMesSet_08041058
	ldr r0, _0805871C @ =0x00270007
	bl EventWinMesSet_08041058
	ldr r0, _08058720 @ =0x00270008
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xf0
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08058724 @ =0x00270009
	bl EventWinMesSet_08041058
	ldr r0, _08058728 @ =0x0027000A
	bl EventWinMesSet_08041058
	ldr r0, _0805872C @ =0x0027000B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080586BA
	ldr r0, _08058730 @ =0x00270010
	bl EventWinMesSet_08041058
_080586BA:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08058734 @ =0x0027000C
	bl EventWinMesSet_08041058
	ldr r0, _08058738 @ =0x0027000D
	bl EventWinMesSet_08041058
	ldr r0, _0805873C @ =0x0027000E
	bl EventWinMesSet_08041058
	ldr r1, _08058740 @ =0x00460023
	movs r0, #0x68
	bl EventMgSpecialGoal_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058744 @ =0x0027000F
	bl EventWinMesSet_08041058
	movs r0, #0x94
	bl EventSetFlag_080406E4
_080586FE:
	pop {r0}
	bx r0
	.align 2, 0
_08058704: .4byte 0x00270001
_08058708: .4byte 0x00270002
_0805870C: .4byte 0x00270003
_08058710: .4byte 0x00270004
_08058714: .4byte 0x00270005
_08058718: .4byte 0x00270006
_0805871C: .4byte 0x00270007
_08058720: .4byte 0x00270008
_08058724: .4byte 0x00270009
_08058728: .4byte 0x0027000A
_0805872C: .4byte 0x0027000B
_08058730: .4byte 0x00270010
_08058734: .4byte 0x0027000C
_08058738: .4byte 0x0027000D
_0805873C: .4byte 0x0027000E
_08058740: .4byte 0x00460023
_08058744: .4byte 0x0027000F

	thumb_func_start sub_08058748
sub_08058748: @ 0x08058748
	push {lr}
	movs r0, #0x95
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080587D4
	movs r0, #0x68
	bl PlayJingle_08041100
	bl sub_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _080587B8 @ =0x00270011
	bl EventWinMesSet_08041058
	ldr r0, _080587BC @ =0x00270012
	bl EventWinMesSet_08041058
	ldr r0, _080587C0 @ =0x00270013
	bl EventWinMesSet_08041058
	ldr r0, _080587C4 @ =0x00270014
	bl EventWinMesSet_08041058
	ldr r0, _080587C8 @ =0x00270015
	bl EventWinMesSet_08041058
	ldr r0, _080587CC @ =0x00270016
	bl EventWinMesSet_08041058
	ldr r0, _080587D0 @ =0x00270017
	bl EventWinMesSet_08041058
	movs r0, #0x67
	bl EventSetMinigame_08040B84
	movs r0, #0x6a
	bl EventSetMinigame_08040B84
	movs r0, #0x68
	bl EventSetMinigame_08040B84
	movs r0, #0x93
	bl SetEventFlag_080406BC
	b _08058814
	.align 2, 0
_080587B8: .4byte 0x00270011
_080587BC: .4byte 0x00270012
_080587C0: .4byte 0x00270013
_080587C4: .4byte 0x00270014
_080587C8: .4byte 0x00270015
_080587CC: .4byte 0x00270016
_080587D0: .4byte 0x00270017
_080587D4:
	bl EventWinInit_08040fe8
	movs r0, #0x19
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058818 @ =0x00270018
	bl EventWinMesSet_08041058
	ldr r0, _0805881C @ =0x00270019
	bl EventWinMesSet_08041058
	ldr r0, _08058820 @ =0x0027001A
	bl EventWinMesSet_08041058
	ldr r0, _08058824 @ =0x0027001B
	bl EventWinMesSet_08041058
	movs r0, #0x90
	bl EventUnsetFlag_080406D0
	movs r0, #0x92
	bl EventUnsetFlag_080406D0
	movs r0, #0x95
	bl EventUnsetFlag_080406D0
	movs r0, #0x91
	bl EventUnsetFlag_080406D0
	movs r0, #0x93
	bl UnsetEventFlag_080406D0
_08058814:
	pop {r0}
	bx r0
	.align 2, 0
_08058818: .4byte 0x00270018
_0805881C: .4byte 0x00270019
_08058820: .4byte 0x0027001A
_08058824: .4byte 0x0027001B

	thumb_func_start sub_08058828
sub_08058828: @ 0x08058828
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0805888C @ =0x0808E574
	bl LoadBuildingBG_0804115C
	ldr r0, _08058890 @ =0x0818B5C0
	movs r1, #0
	movs r2, #0x21
	bl sub_08041464
	ldr r2, _08058894 @ =0x0808E8AC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805889C
	ldr r0, _08058898 @ =sub_080585F8
	bl RunEventScript_0804066C
	movs r0, #0x94
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080588CC
	movs r0, #0x68
	bl EventQuestBegin_080406D0
	b _080588CC
	.align 2, 0
_0805888C: .4byte 0x0808E574
_08058890: .4byte 0x0818B5C0
_08058894: .4byte 0x0808E8AC
_08058898: .4byte sub_080585F8
_0805889C:
	bl sub_080407FC
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080588B8
	cmp r0, #1
	ble _080588CC
	cmp r0, #2
	beq _080588BE
	b _080588CC
_080588B8:
	movs r0, #0x95
	bl EventSetFlag_080406E4
_080588BE:
	ldr r0, _080588F4 @ =sub_08058748
	bl RunEventScript_0804066C
	bl sub_08040B28
	bl sub_080405AC
_080588CC:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_08041498
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080588F4: .4byte sub_08058748
