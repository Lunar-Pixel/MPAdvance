	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08042BAC
sub_08042BAC: @ 0x08042BAC
	push {lr}
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r2, _08042C64 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0xa8
	movs r2, #0x4c
	bl EventPlaceChara_08041894
	ldr r0, _08042C68 @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x37
	bl EventWinSpeakerSet_08041018
	movs r0, #0x26
	bl EventWinMesSet_08041058
	movs r0, #0x27
	bl EventWinMesSet_08041058
	movs r0, #0x28
	bl EventWinMesSet_08041058
	movs r0, #9
	bl sub_08040FD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08042C58
	b _08042D96
_08042C58:
	lsls r0, r0, #2
	ldr r1, _08042C6C @ =_08042C70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042C64: .4byte 0x0808E6BC
_08042C68: .4byte 0x00000129
_08042C6C: .4byte _08042C70
_08042C70: @ jump table
	.4byte _08042C90 @ case 0
	.4byte _08042CAA @ case 1
	.4byte _08042CD6 @ case 2
	.4byte _08042D02 @ case 3
	.4byte _08042D1C @ case 4
	.4byte _08042D36 @ case 5
	.4byte _08042D50 @ case 6
	.4byte _08042D6A @ case 7
_08042C90:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x2c
	bl EventWinMesSet_08041058
	movs r0, #0x2d
	bl EventWinMesSet_08041058
	b _08042DC0
_08042CAA:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x2e
	bl EventWinMesSet_08041058
	movs r0, #0x2f
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x30
	bl EventWinMesSet_08041058
	b _08042DC0
_08042CD6:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventWinMesSet_08041058
	movs r0, #0x32
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x33
	bl EventWinMesSet_08041058
	b _08042DC0
_08042D02:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x34
	bl EventWinMesSet_08041058
	movs r0, #0x35
	bl EventWinMesSet_08041058
	b _08042DC0
_08042D1C:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinMesSet_08041058
	movs r0, #0x37
	bl EventWinMesSet_08041058
	b _08042DC0
_08042D36:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinMesSet_08041058
	movs r0, #0x39
	bl EventWinMesSet_08041058
	b _08042DC0
_08042D50:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3a
	bl EventWinMesSet_08041058
	movs r0, #0x3b
	bl EventWinMesSet_08041058
	b _08042DC0
_08042D6A:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventWinMesSet_08041058
	movs r0, #0x3d
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3e
	bl EventWinMesSet_08041058
	b _08042DC0
_08042D96:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3f
	bl EventWinMesSet_08041058
	movs r0, #0x40
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x41
	bl EventWinMesSet_08041058
_08042DC0:
	movs r0, #8
	bl SetCharacterMetFlag_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08042DCC
sub_08042DCC: @ 0x08042DCC
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08042E34 @ =0x0808DCDC
	bl LoadBuildingBG_0804115C
	ldr r2, _08042E38 @ =0x0808EA5C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xa8
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08042E3C @ =sub_08042BAC
	bl RunEventScript_0804066C
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08042E34: .4byte 0x0808DCDC
_08042E38: .4byte 0x0808EA5C
_08042E3C: .4byte sub_08042BAC
