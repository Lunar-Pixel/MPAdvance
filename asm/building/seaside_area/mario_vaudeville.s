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
	bl EventPlaySFX_080410E0
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
