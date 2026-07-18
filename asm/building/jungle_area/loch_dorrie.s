	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08052CBC
sub_08052CBC: @ 0x08052CBC
	push {lr}
	movs r0, #0x98
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xb4
	movs r3, #0x64
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x96
	movs r3, #0x50
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x82
	movs r3, #0x3c
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0x28
	bl sub_08041938
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08052D08
sub_08052D08: @ 0x08052D08
	push {r4, lr}
	movs r0, #2
	movs r1, #0xf0
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0x58
	movs r3, #0x10
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08052E14 @ =0x00030024
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0xc2
	movs r2, #0x34
	bl EventPlaceChara_08041894
	ldr r4, _08052E18 @ =0x0000011F
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _08052E1C @ =0x00030025
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08052E20 @ =0x00030026
	bl EventWinMesSet_08041058
	ldr r0, _08052E24 @ =0x00030027
	bl EventWinMesSet_08041058
	ldr r0, _08052E28 @ =0x00030028
	bl EventWinMesSet_08041058
	ldr r0, _08052E2C @ =0x00030029
	bl EventWinMesSet_08041058
	ldr r0, _08052E30 @ =0x0003002A
	bl EventWinMesSet_08041058
	ldr r0, _08052E34 @ =0x0003002C
	bl EventWinMesSet_08041058
	ldr r0, _08052E38 @ =0x0003002D
	bl EventWinMesSet_08041058
	movs r0, #0x1b
	movs r1, #0x10
	bl QuestFinish_08042814
	movs r0, #0x1d
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052E3C @ =0x0003002E
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052E40 @ =0x0003002F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052E44 @ =0x00030030
	bl EventWinMesSet_08041058
	movs r0, #0xd
	bl SetEventFlag_080406BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052E14: .4byte 0x00030024
_08052E18: .4byte 0x0000011F
_08052E1C: .4byte 0x00030025
_08052E20: .4byte 0x00030026
_08052E24: .4byte 0x00030027
_08052E28: .4byte 0x00030028
_08052E2C: .4byte 0x00030029
_08052E30: .4byte 0x0003002A
_08052E34: .4byte 0x0003002C
_08052E38: .4byte 0x0003002D
_08052E3C: .4byte 0x0003002E
_08052E40: .4byte 0x0003002F
_08052E44: .4byte 0x00030030

	thumb_func_start sub_08052E48
sub_08052E48: @ 0x08052E48
	push {lr}
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	bl sub_080407FC
	ldr r0, _08052F40 @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x58
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
	movs r0, #0xa8
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052F44 @ =0x00150001
	bl EventWinMesSet_08041058
	bl sub_08052CBC
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
	ldr r0, _08052F48 @ =0x00150002
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x48
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x5a
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
	movs r2, #0x5a
	movs r3, #8
	bl sub_08041938
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #9
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x18
	bl SetCharacterMetFlag_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0
_08052F40: .4byte 0x0000011B
_08052F44: .4byte 0x00150001
_08052F48: .4byte 0x00150002

	thumb_func_start sub_08052F4C
sub_08052F4C: @ 0x08052F4C
	push {lr}
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _08052F90 @ =0x00150003
	bl EventWinMesSet_08041058
	ldr r0, _08052F94 @ =0x00150004
	bl EventWinMesSet_08041058
	ldr r0, _08052F98 @ =0x00150005
	bl EventWinMesSet_08041058
	ldr r0, _08052F9C @ =0x00150006
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052FA8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052FA0 @ =0x00150007
	bl EventWinMesSet_08041058
	ldr r0, _08052FA4 @ =0x00150008
	bl EventWinMesSet_08041058
	b _08053004
	.align 2, 0
_08052F90: .4byte 0x00150003
_08052F94: .4byte 0x00150004
_08052F98: .4byte 0x00150005
_08052F9C: .4byte 0x00150006
_08052FA0: .4byte 0x00150007
_08052FA4: .4byte 0x00150008
_08052FA8:
	ldr r1, _08053008 @ =0x00150009
	movs r0, #0x14
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053004
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805300C @ =0x0015000A
	bl EventWinMesSet_08041058
	ldr r0, _08053010 @ =0x0015000B
	bl EventWinMesSet_08041058
	ldr r0, _08053014 @ =0x0015000C
	bl EventWinMesSet_08041058
	movs r0, #0xf
	movs r1, #0x13
	bl QuestFinish_08042814
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053018 @ =0x0015000D
	bl EventWinMesSet_08041058
	ldr r0, _0805301C @ =0x0015000E
	bl EventWinMesSet_08041058
	movs r0, #0x54
	bl SetEventFlag_080406BC
	movs r0, #9
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x18
	bl SetCharacterMetFlag_0802D7CC
_08053004:
	pop {r0}
	bx r0
	.align 2, 0
_08053008: .4byte 0x00150009
_0805300C: .4byte 0x0015000A
_08053010: .4byte 0x0015000B
_08053014: .4byte 0x0015000C
_08053018: .4byte 0x0015000D
_0805301C: .4byte 0x0015000E

	thumb_func_start sub_08053020
sub_08053020: @ 0x08053020
	push {lr}
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053060 @ =0x0015000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08053064 @ =0x00150010
	bl EventWinMesSet_08041058
	ldr r0, _08053068 @ =0x00150011
	bl EventWinMesSet_08041058
	ldr r0, _0805306C @ =0x00150012
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	movs r3, #0x78
	bl sub_08041938
	pop {r0}
	bx r0
	.align 2, 0
_08053060: .4byte 0x0015000F
_08053064: .4byte 0x00150010
_08053068: .4byte 0x00150011
_0805306C: .4byte 0x00150012

	thumb_func_start sub_08053070
sub_08053070: @ 0x08053070
	push {lr}
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl sub_08052CBC
	bl EventWinInit_08040fe8
	movs r0, #0x32
	bl EventWinSpeakerSet_08041018
	ldr r0, _080530A4 @ =0x00150013
	bl EventWinMesSet_08041058
	ldr r0, _080530A8 @ =0x00150014
	bl EventWinMesSet_08041058
	ldr r0, _080530AC @ =0x00150015
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080530A4: .4byte 0x00150013
_080530A8: .4byte 0x00150014
_080530AC: .4byte 0x00150015

	thumb_func_start sub_080530B0
sub_080530B0: @ 0x080530B0
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08053140 @ =0x0808E344
	bl LoadBuildingBG_0804115C
	ldr r2, _08053144 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl EventPlaceChara_08041894
	ldr r2, _08053148 @ =0x0808EA2C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	ldr r2, _0805314C @ =0x0808E8EC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	ldr r2, _08053150 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0xb
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053158
	movs r0, #0xd
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053158
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _08053154 @ =sub_08052D08
	bl RunEventScript_0804066C
	b _080531B2
	.align 2, 0
_08053140: .4byte 0x0808E344
_08053144: .4byte 0x0808EA6C
_08053148: .4byte 0x0808EA2C
_0805314C: .4byte 0x0808E8EC
_08053150: .4byte 0x0808E6BC
_08053154: .4byte sub_08052D08
_08053158:
	bl GetCharacterID_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq _08053180
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08053178 @ =sub_08052E48
	bl RunEventScript_0804066C
	ldr r0, _0805317C @ =sub_08053020
	bl RunEventScript_0804066C
	b _080531B2
	.align 2, 0
_08053178: .4byte sub_08052E48
_0805317C: .4byte sub_08053020
_08053180:
	movs r0, #0x54
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080531A0
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _0805319C @ =sub_08053070
	bl RunEventScript_0804066C
	b _080531B2
	.align 2, 0
_0805319C: .4byte sub_08053070
_080531A0:
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08053200 @ =sub_08052E48
	bl RunEventScript_0804066C
	ldr r0, _08053204 @ =sub_08052F4C
	bl RunEventScript_0804066C
_080531B2:
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
_08053200: .4byte sub_08052E48
_08053204: .4byte sub_08052F4C
