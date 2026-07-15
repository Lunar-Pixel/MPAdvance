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
	bl sub_080410E0
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

	thumb_func_start sub_08042E40
sub_08042E40: @ 0x08042E40
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #4
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xb0
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042EE4 @ =0x002C0001
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042EE8 @ =0x002C0002
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042EEC @ =0x002C0003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042EF4
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x44
	bl EventPlaceChara_08041894
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
	ldr r0, _08042EF0 @ =0x002C0004
	bl EventWinMesSet_08041058
	b _08043040
	.align 2, 0
_08042EE4: .4byte 0x002C0001
_08042EE8: .4byte 0x002C0002
_08042EEC: .4byte 0x002C0003
_08042EF0: .4byte 0x002C0004
_08042EF4:
	ldr r1, _08042F94 @ =0x002C0005
	movs r0, #0x2b
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042F04
	b _08043040
_08042F04:
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #4
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042F98 @ =0x002C0006
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042F9C @ =0x002C0007
	bl EventWinMesSet_08041058
	ldr r0, _08042FA0 @ =0x002C0008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042FA4 @ =0x002C0009
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042FA8 @ =0x002C000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042FB4
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042FAC @ =0x002C000B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08042FB0 @ =0x002C000C
	bl EventWinMesSet_08041058
	b _08042FC6
	.align 2, 0
_08042F94: .4byte 0x002C0005
_08042F98: .4byte 0x002C0006
_08042F9C: .4byte 0x002C0007
_08042FA0: .4byte 0x002C0008
_08042FA4: .4byte 0x002C0009
_08042FA8: .4byte 0x002C000A
_08042FAC: .4byte 0x002C000B
_08042FB0: .4byte 0x002C000C
_08042FB4:
	ldr r0, _08043044 @ =0x002C0011
	bl EventWinMesSet_08041058
	ldr r0, _08043048 @ =0x002C0012
	bl EventWinMesSet_08041058
	ldr r0, _0804304C @ =0x002C0013
	bl EventWinMesSet_08041058
_08042FC6:
	ldr r0, _08043050 @ =0x002C000D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08043054 @ =0x002C000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x54
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08043058 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804305C @ =0x002C000F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08043060 @ =0x002C0010
	bl EventWinMesSet_08041058
	movs r0, #0xa2
	bl EventSetFlag_080406E4
	movs r0, #0x28
	bl SetCharacterMetFlag_0802D7CC
_08043040:
	pop {r0}
	bx r0
	.align 2, 0
_08043044: .4byte 0x002C0011
_08043048: .4byte 0x002C0012
_0804304C: .4byte 0x002C0013
_08043050: .4byte 0x002C000D
_08043054: .4byte 0x002C000E
_08043058: .4byte 0x00000129
_0804305C: .4byte 0x002C000F
_08043060: .4byte 0x002C0010

	thumb_func_start sub_08043064
sub_08043064: @ 0x08043064
	push {lr}
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x44
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _080430CC @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #4
	bl EventWinSpeakerSet_08041018
	ldr r0, _080430D0 @ =0x002C0014
	bl EventWinMesSet_08041058
	ldr r0, _080430D4 @ =0x002C0015
	bl EventWinMesSet_08041058
	ldr r0, _080430D8 @ =0x002C0016
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080430DC @ =0x002C0017
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080430CC: .4byte 0x0000011F
_080430D0: .4byte 0x002C0014
_080430D4: .4byte 0x002C0015
_080430D8: .4byte 0x002C0016
_080430DC: .4byte 0x002C0017

	thumb_func_start sub_080430E0
sub_080430E0: @ 0x080430E0
	push {lr}
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x54
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08043180 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #4
	bl EventWinSpeakerSet_08041018
	ldr r0, _08043184 @ =0x002C001E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08043188 @ =0x002C001F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804318C @ =0x002C0020
	bl EventWinMesSet_08041058
	ldr r0, _08043190 @ =0x002C0021
	bl EventWinMesSet_08041058
	movs r0, #0x37
	movs r1, #0x18
	bl QuestFinish_08042814
	movs r0, #4
	bl EventWinSpeakerSet_08041018
	ldr r0, _08043194 @ =0x002C0022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08043198 @ =0x002C0023
	bl EventWinMesSet_08041058
	movs r0, #0xa5
	bl SetEventFlag_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_08043180: .4byte 0x00000129
_08043184: .4byte 0x002C001E
_08043188: .4byte 0x002C001F
_0804318C: .4byte 0x002C0020
_08043190: .4byte 0x002C0021
_08043194: .4byte 0x002C0022
_08043198: .4byte 0x002C0023

	thumb_func_start sub_0804319C
sub_0804319C: @ 0x0804319C
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #4
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080431E8 @ =0x002C0024
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080431EC @ =0x002C0025
	bl EventWinMesSet_08041058
	ldr r0, _080431F0 @ =0x002C0026
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080431F4 @ =0x002C0027
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080431E8: .4byte 0x002C0024
_080431EC: .4byte 0x002C0025
_080431F0: .4byte 0x002C0026
_080431F4: .4byte 0x002C0027

	thumb_func_start sub_080431F8
sub_080431F8: @ 0x080431F8
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #4
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08043288 @ =0x00310015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804328C @ =0x00310016
	bl EventWinMesSet_08041058
	ldr r0, _08043290 @ =0x00310017
	bl EventWinMesSet_08041058
_0804322E:
	ldr r0, _08043294 @ =0x00310018
	bl EventWinMesSet_08041058
	ldr r0, _08043298 @ =0x00310019
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080432A8
	ldr r0, _0804329C @ =0x0031001A
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _080432A0 @ =0x0808E5AC
	movs r1, #0x78
	movs r2, #0x40
	bl DisplayGFX_080414B4
	bl EventWinInit_08040fe8
	ldr r0, _080432A4 @ =0x0031001B
	bl EventWinMesSet_08041058
	bl sub_08041560
	movs r0, #0xb9
	bl EventSetFlag_080406E4
	b _080432B8
	.align 2, 0
_08043288: .4byte 0x00310015
_0804328C: .4byte 0x00310016
_08043290: .4byte 0x00310017
_08043294: .4byte 0x00310018
_08043298: .4byte 0x00310019
_0804329C: .4byte 0x0031001A
_080432A0: .4byte 0x0808E5AC
_080432A4: .4byte 0x0031001B
_080432A8:
	ldr r0, _080432C4 @ =0x0031001C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804322E
_080432B8:
	movs r0, #0x28
	bl SetCharacterMetFlag_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0
_080432C4: .4byte 0x0031001C

	thumb_func_start sub_080432C8
sub_080432C8: @ 0x080432C8
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08043338 @ =0x0808DD04
	bl LoadBuildingBG_0804115C
	ldr r2, _0804333C @ =0x0808E75C
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
	ldr r2, _08043340 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xb6
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08043348
	movs r0, #0xb9
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043348
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	ldr r0, _08043344 @ =sub_080431F8
	bl RunEventScript_0804066C
	b _080433AE
	.align 2, 0
_08043338: .4byte 0x0808DD04
_0804333C: .4byte 0x0808E75C
_08043340: .4byte 0x0808E6BC
_08043344: .4byte sub_080431F8
_08043348:
	movs r0, #0xa5
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08043368
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08043364 @ =sub_0804319C
	bl RunEventScript_0804066C
	b _080433AE
	.align 2, 0
_08043364: .4byte sub_0804319C
_08043368:
	movs r0, #0xa2
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043388
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08043384 @ =sub_08042E40
	bl RunEventScript_0804066C
	b _080433AE
	.align 2, 0
_08043384: .4byte sub_08042E40
_08043388:
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	movs r0, #0xa3
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080433A8
	ldr r0, _080433A4 @ =sub_08043064
	bl RunEventScript_0804066C
	b _080433AE
	.align 2, 0
_080433A4: .4byte sub_08043064
_080433A8:
	ldr r0, _080433E0 @ =sub_080430E0
	bl RunEventScript_0804066C
_080433AE:
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
_080433E0: .4byte sub_080430E0

	thumb_func_start sub_080433E4
sub_080433E4: @ 0x080433E4
	push {lr}
	ldr r0, _08043450 @ =0x0000011B
	bl sub_080410E0
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	bl EventWinInit_08040fe8
	movs r0, #7
	bl EventWinSpeakerSet_08041018
	movs r0, #0xb8
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _08043454 @ =0x00170001
	bl EventWinMesSet_08041058
	ldr r0, _08043458 @ =0x00170002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043460
	movs r0, #0
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804345C @ =0x00170003
	bl EventWinMesSet_08041058
	b _0804358C
	.align 2, 0
_08043450: .4byte 0x0000011B
_08043454: .4byte 0x00170001
_08043458: .4byte 0x00170002
_0804345C: .4byte 0x00170003
_08043460:
	ldr r1, _08043530 @ =0x00170004
	movs r0, #0x16
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043470
	b _0804358C
_08043470:
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #7
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08043534 @ =0x00170005
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080425EC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08043538 @ =0x00170006
	bl EventWinMesSet_08041058
	ldr r0, _0804353C @ =0x00170007
	bl EventWinMesSet_08041058
	ldr r0, _08043540 @ =0x00170008
	bl EventWinMesSet_08041058
	ldr r0, _08043544 @ =0x00170009
	bl EventWinMesSet_08041058
	ldr r0, _08043548 @ =0x0017000A
	bl EventWinMesSet_08041058
	ldr r0, _0804354C @ =0x0017000B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804355C
	movs r0, #0
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08043550 @ =0x0017000C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080425EC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08043554 @ =0x0017000D
	bl EventWinMesSet_08041058
	ldr r0, _08043558 @ =0x0017000E
	bl EventWinMesSet_08041058
	b _08043568
	.align 2, 0
_08043530: .4byte 0x00170004
_08043534: .4byte 0x00170005
_08043538: .4byte 0x00170006
_0804353C: .4byte 0x00170007
_08043540: .4byte 0x00170008
_08043544: .4byte 0x00170009
_08043548: .4byte 0x0017000A
_0804354C: .4byte 0x0017000B
_08043550: .4byte 0x0017000C
_08043554: .4byte 0x0017000D
_08043558: .4byte 0x0017000E
_0804355C:
	ldr r0, _08043590 @ =0x00170013
	bl EventWinMesSet_08041058
	ldr r0, _08043594 @ =0x00170014
	bl EventWinMesSet_08041058
_08043568:
	ldr r0, _08043598 @ =0x0017000F
	bl EventWinMesSet_08041058
	ldr r0, _0804359C @ =0x00170010
	bl EventWinMesSet_08041058
	ldr r0, _080435A0 @ =0x00170011
	bl EventWinMesSet_08041058
	ldr r0, _080435A4 @ =0x00170012
	bl EventWinMesSet_08041058
	movs r0, #0x59
	bl EventSetFlag_080406E4
	movs r0, #0x2c
	bl SetCharacterMetFlag_0802D7CC
_0804358C:
	pop {r0}
	bx r0
	.align 2, 0
_08043590: .4byte 0x00170013
_08043594: .4byte 0x00170014
_08043598: .4byte 0x0017000F
_0804359C: .4byte 0x00170010
_080435A0: .4byte 0x00170011
_080435A4: .4byte 0x00170012

	thumb_func_start sub_080435A8
sub_080435A8: @ 0x080435A8
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #7
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804360C @ =0x00170015
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080425EC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08043610 @ =0x00170016
	bl EventWinMesSet_08041058
	ldr r0, _08043614 @ =0x00170017
	bl EventWinMesSet_08041058
	ldr r0, _08043618 @ =0x00170018
	bl EventWinMesSet_08041058
	ldr r0, _0804361C @ =0x00170012
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804360C: .4byte 0x00170015
_08043610: .4byte 0x00170016
_08043614: .4byte 0x00170017
_08043618: .4byte 0x00170018
_0804361C: .4byte 0x00170012

	thumb_func_start sub_08043620
sub_08043620: @ 0x08043620
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #7
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080436C8 @ =0x00170027
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080436CC @ =0x00170028
	bl EventWinMesSet_08041058
	ldr r0, _080436D0 @ =0x00170029
	bl EventWinMesSet_08041058
	ldr r0, _080436D4 @ =0x0017002A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080436F0
	ldr r0, _080436D8 @ =0x00000121
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #1
	bl sub_08041808
	ldr r0, _080436DC @ =0x00170035
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	ldr r0, _080436E0 @ =0x00170036
	bl EventWinMesSet_08041058
	ldr r0, _080436E4 @ =0x00170037
	bl EventWinMesSet_08041058
	ldr r0, _080436E8 @ =0x00170038
	bl EventWinMesSet_08041058
	ldr r0, _080436EC @ =0x00170039
	bl EventWinMesSet_08041058
	movs r0, #0x59
	bl EventUnsetFlag_080406D0
	movs r0, #0x5c
	bl EventUnsetFlag_080406D0
	movs r0, #0x5a
	bl EventUnsetFlag_080406D0
	movs r0, #0x5b
	bl EventUnsetFlag_080406D0
	movs r0, #0x5d
	bl UnsetEventFlag_080406D0
	b _0804376A
	.align 2, 0
_080436C8: .4byte 0x00170027
_080436CC: .4byte 0x00170028
_080436D0: .4byte 0x00170029
_080436D4: .4byte 0x0017002A
_080436D8: .4byte 0x00000121
_080436DC: .4byte 0x00170035
_080436E0: .4byte 0x00170036
_080436E4: .4byte 0x00170037
_080436E8: .4byte 0x00170038
_080436EC: .4byte 0x00170039
_080436F0:
	ldr r0, _08043770 @ =0x0000011B
	bl sub_080410E0
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	ldr r0, _08043774 @ =0x0017002B
	bl EventWinMesSet_08041058
	ldr r0, _08043778 @ =0x0017002C
	bl EventWinMesSet_08041058
	movs r0, #7
	movs r1, #0x14
	bl QuestFinish_08042814
	movs r0, #7
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804377C @ =0x0017002D
	bl EventWinMesSet_08041058
	ldr r0, _08043780 @ =0x0017002E
	bl EventWinMesSet_08041058
	ldr r0, _08043784 @ =0x0017002F
	bl EventWinMesSet_08041058
	ldr r0, _08043788 @ =0x00170030
	bl EventWinMesSet_08041058
	ldr r0, _0804378C @ =0x00170031
	bl EventWinMesSet_08041058
	ldr r0, _08043790 @ =0x00170032
	bl EventWinMesSet_08041058
	ldr r0, _08043794 @ =0x00170033
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08043798 @ =0x00170034
	bl EventWinMesSet_08041058
	movs r0, #0x5d
	bl SetEventFlag_080406BC
_0804376A:
	pop {r0}
	bx r0
	.align 2, 0
_08043770: .4byte 0x0000011B
_08043774: .4byte 0x0017002B
_08043778: .4byte 0x0017002C
_0804377C: .4byte 0x0017002D
_08043780: .4byte 0x0017002E
_08043784: .4byte 0x0017002F
_08043788: .4byte 0x00170030
_0804378C: .4byte 0x00170031
_08043790: .4byte 0x00170032
_08043794: .4byte 0x00170033
_08043798: .4byte 0x00170034

	thumb_func_start sub_0804379C
sub_0804379C: @ 0x0804379C
	push {lr}
	ldr r0, _08043808 @ =0x0000011B
	bl sub_080410E0
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	bl EventWinInit_08040fe8
	movs r0, #7
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804380C @ =0x0017003A
	bl EventWinMesSet_08041058
	ldr r0, _08043810 @ =0x0017003B
	bl EventWinMesSet_08041058
	ldr r0, _08043814 @ =0x0017003C
	bl EventWinMesSet_08041058
	ldr r0, _08043818 @ =0x0017003D
	bl EventWinMesSet_08041058
	ldr r0, _0804381C @ =0x0017003E
	bl EventWinMesSet_08041058
	ldr r0, _08043820 @ =0x0017003F
	bl EventWinMesSet_08041058
	ldr r0, _08043824 @ =0x00170040
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08043828 @ =0x00170039
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08043808: .4byte 0x0000011B
_0804380C: .4byte 0x0017003A
_08043810: .4byte 0x0017003B
_08043814: .4byte 0x0017003C
_08043818: .4byte 0x0017003D
_0804381C: .4byte 0x0017003E
_08043820: .4byte 0x0017003F
_08043824: .4byte 0x00170040
_08043828: .4byte 0x00170039

	thumb_func_start sub_0804382C
sub_0804382C: @ 0x0804382C
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _080438D4 @ =0x0808DD2C
	bl LoadBuildingBG_0804115C
	ldr r0, _080438D8 @ =0x081566E0
	movs r1, #0
	movs r2, #2
	bl sub_08041464
	ldr r4, _080438DC @ =0x0808E78C
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _080438E0 @ =0x0808E6BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7c
	movs r2, #0x44
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x5d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080438E8
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080438E4 @ =sub_0804379C
	bl RunEventScript_0804066C
	b _08043934
	.align 2, 0
_080438D4: .4byte 0x0808DD2C
_080438D8: .4byte 0x081566E0
_080438DC: .4byte 0x0808E78C
_080438E0: .4byte 0x0808E6BC
_080438E4: .4byte sub_0804379C
_080438E8:
	movs r0, #0x5a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043908
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	ldr r0, _08043904 @ =sub_08043620
	bl RunEventScript_0804066C
	b _08043934
	.align 2, 0
_08043904: .4byte sub_08043620
_08043908:
	movs r0, #0x59
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043928
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	ldr r0, _08043924 @ =sub_080435A8
	bl RunEventScript_0804066C
	b _08043934
	.align 2, 0
_08043924: .4byte sub_080435A8
_08043928:
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _0804397C @ =sub_080433E4
	bl RunEventScript_0804066C
_08043934:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_08041498
	bl sub_080425EC
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804397C: .4byte sub_080433E4
