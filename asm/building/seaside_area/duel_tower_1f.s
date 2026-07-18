	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0
	movs r3, #0x28
	bl sub_08041938
	movs r0, #0x78
	bl EventSleep_08040690
	ldr r0, _08057FB8 @ =0x0000011D
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	ldr r0, _08057FBC @ =0x000002B1
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
	bl EventWaitForJingle_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x13
	bl EventWinSpeakerSet_08041018
	ldr r0, _08058044 @ =0x000002B2
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
