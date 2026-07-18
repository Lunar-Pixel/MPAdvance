	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
	bl EventPlaySFX_080410E0
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
