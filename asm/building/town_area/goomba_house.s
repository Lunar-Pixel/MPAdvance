	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08042860
sub_08042860: @ 0x08042860
	push {lr}
	ldr r0, _0804288C @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x14
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	pop {r0}
	bx r0
	.align 2, 0
_0804288C: .4byte 0x0000011B

	thumb_func_start sub_08042890
sub_08042890: @ 0x08042890
	push {lr}
	bl sub_08042860
	bl EventWinInit_08040fe8
	movs r0, #3
	bl EventWinSpeakerSet_08041018
	movs r0, #0xc4
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _080428E0 @ =0x00310001
	bl EventWinMesSet_08041058
	ldr r0, _080428E4 @ =0x00310002
	bl EventWinMesSet_08041058
	ldr r0, _080428E8 @ =0x00310003
	bl EventWinMesSet_08041058
	ldr r0, _080428EC @ =0x00310004
	bl EventWinMesSet_08041058
	ldr r0, _080428F0 @ =0x00310005
	bl EventWinMesSet_08041058
	ldr r0, _080428F4 @ =0x00310006
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080428FC
	ldr r0, _080428F8 @ =0x00310007
	bl EventWinMesSet_08041058
	b _08042982
	.align 2, 0
_080428E0: .4byte 0x00310001
_080428E4: .4byte 0x00310002
_080428E8: .4byte 0x00310003
_080428EC: .4byte 0x00310004
_080428F0: .4byte 0x00310005
_080428F4: .4byte 0x00310006
_080428F8: .4byte 0x00310007
_080428FC:
	ldr r1, _08042948 @ =0x00310008
	movs r0, #0x30
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042982
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	bl sub_08042860
	bl EventWinInit_08040fe8
	movs r0, #3
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804294C @ =0x00310009
	bl EventWinMesSet_08041058
	ldr r0, _08042950 @ =0x0031000A
	bl EventWinMesSet_08041058
	ldr r0, _08042954 @ =0x0031000B
	bl EventWinMesSet_08041058
	ldr r0, _08042958 @ =0x0031000C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042960
	ldr r0, _0804295C @ =0x0031000D
	bl EventWinMesSet_08041058
	b _0804296A
	.align 2, 0
_08042948: .4byte 0x00310008
_0804294C: .4byte 0x00310009
_08042950: .4byte 0x0031000A
_08042954: .4byte 0x0031000B
_08042958: .4byte 0x0031000C
_0804295C: .4byte 0x0031000D
_08042960:
	bl sub_08042860
	ldr r0, _08042988 @ =0x00310010
	bl EventWinMesSet_08041058
_0804296A:
	ldr r0, _0804298C @ =0x0031000E
	bl EventWinMesSet_08041058
	ldr r0, _08042990 @ =0x0031000F
	bl EventWinMesSet_08041058
	movs r0, #0xb6
	bl EventSetFlag_080406E4
	movs r0, #0xc
	bl SetCharacterMetFlag_0802D7CC
_08042982:
	pop {r0}
	bx r0
	.align 2, 0
_08042988: .4byte 0x00310010
_0804298C: .4byte 0x0031000E
_08042990: .4byte 0x0031000F

	thumb_func_start sub_08042994
sub_08042994: @ 0x08042994
	push {lr}
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #3
	bl EventWinSpeakerSet_08041018
	ldr r0, _080429E8 @ =0x00310011
	bl EventWinMesSet_08041058
	ldr r0, _080429EC @ =0x00310012
	bl EventWinMesSet_08041058
	ldr r0, _080429F0 @ =0x00310013
	bl EventWinMesSet_08041058
	ldr r0, _080429F4 @ =0x00310014
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080429E8: .4byte 0x00310011
_080429EC: .4byte 0x00310012
_080429F0: .4byte 0x00310013
_080429F4: .4byte 0x00310014

	thumb_func_start sub_080429F8
sub_080429F8: @ 0x080429F8
	push {lr}
	bl sub_08042860
	bl sub_08042860
	bl EventWinInit_08040fe8
	movs r0, #3
	bl EventWinSpeakerSet_08041018
	ldr r0, _08042A54 @ =0x0031001D
	bl EventWinMesSet_08041058
	ldr r0, _08042A58 @ =0x0031001E
	bl EventWinMesSet_08041058
	movs r0, #0x13
	movs r1, #0x18
	bl QuestFinish_08042814
	movs r0, #3
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08042A5C @ =0x0031001F
	bl EventWinMesSet_08041058
	ldr r0, _08042A60 @ =0x00310020
	bl EventWinMesSet_08041058
	ldr r0, _08042A64 @ =0x00310021
	bl EventWinMesSet_08041058
	ldr r0, _08042A68 @ =0x00310022
	bl EventWinMesSet_08041058
	movs r0, #0xb8
	bl SetEventFlag_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_08042A54: .4byte 0x0031001D
_08042A58: .4byte 0x0031001E
_08042A5C: .4byte 0x0031001F
_08042A60: .4byte 0x00310020
_08042A64: .4byte 0x00310021
_08042A68: .4byte 0x00310022

	thumb_func_start sub_08042A6C
sub_08042A6C: @ 0x08042A6C
	push {lr}
	bl sub_08042860
	bl EventWinInit_08040fe8
	movs r0, #3
	bl EventWinSpeakerSet_08041018
	ldr r0, _08042A98 @ =0x00310023
	bl EventWinMesSet_08041058
	ldr r0, _08042A9C @ =0x00310024
	bl EventWinMesSet_08041058
	ldr r0, _08042AA0 @ =0x00310025
	bl EventWinMesSet_08041058
	ldr r0, _08042AA4 @ =0x00310026
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08042A98: .4byte 0x00310023
_08042A9C: .4byte 0x00310024
_08042AA0: .4byte 0x00310025
_08042AA4: .4byte 0x00310026

	thumb_func_start sub_08042AA8
sub_08042AA8: @ 0x08042AA8
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08042B20 @ =0x0808DCB4
	bl LoadBuildingBG_0804115C
	ldr r2, _08042B24 @ =0x0808E74C
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
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _08042B28 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xb8
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08042B30
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08042B2C @ =sub_08042A6C
	bl RunEventScript_0804066C
	b _08042B76
	.align 2, 0
_08042B20: .4byte 0x0808DCB4
_08042B24: .4byte 0x0808E74C
_08042B28: .4byte 0x0808E6BC
_08042B2C: .4byte sub_08042A6C
_08042B30:
	movs r0, #0xb6
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042B50
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08042B4C @ =sub_08042890
	bl RunEventScript_0804066C
	b _08042B76
	.align 2, 0
_08042B4C: .4byte sub_08042890
_08042B50:
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	movs r0, #0xb9
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042B70
	ldr r0, _08042B6C @ =sub_08042994
	bl RunEventScript_0804066C
	b _08042B76
	.align 2, 0
_08042B6C: .4byte sub_08042994
_08042B70:
	ldr r0, _08042BA8 @ =sub_080429F8
	bl RunEventScript_0804066C
_08042B76:
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
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08042BA8: .4byte sub_080429F8
