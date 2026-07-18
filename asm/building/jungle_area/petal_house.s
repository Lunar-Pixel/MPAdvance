	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080523C0
sub_080523C0: @ 0x080523C0
	push {r4, lr}
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x3c
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r4, _080524A4 @ =0x00000123
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080524A8 @ =0x00080001
	bl EventWinMesSet_08041058
	ldr r0, _080524AC @ =0x00080002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080524B4
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x14
	bl EventSleep_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	ldr r0, _080524B0 @ =0x00080003
	bl EventWinMesSet_08041058
	b _080525F2
	.align 2, 0
_080524A4: .4byte 0x00000123
_080524A8: .4byte 0x00080001
_080524AC: .4byte 0x00080002
_080524B0: .4byte 0x00080003
_080524B4:
	ldr r1, _08052564 @ =0x00080004
	movs r0, #7
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080524C4
	b _080525F2
_080524C4:
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052568 @ =0x00080005
	bl EventWinMesSet_08041058
	movs r0, #0x90
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805256C @ =0x00080006
	bl EventWinMesSet_08041058
	ldr r0, _08052570 @ =0x00080007
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052574 @ =0x00080008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _08052578 @ =0x00080009
	bl EventWinMesSet_08041058
	ldr r0, _0805257C @ =0x0008000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052584
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08052580 @ =0x0008000B
	bl EventWinMesSet_08041058
	b _0805259E
	.align 2, 0
_08052564: .4byte 0x00080004
_08052568: .4byte 0x00080005
_0805256C: .4byte 0x00080006
_08052570: .4byte 0x00080007
_08052574: .4byte 0x00080008
_08052578: .4byte 0x00080009
_0805257C: .4byte 0x0008000A
_08052580: .4byte 0x0008000B
_08052584:
	bl sub_08044B74
	bl sub_08044B74
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080525F8 @ =0x00080011
	bl EventWinMesSet_08041058
_0805259E:
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080525FC @ =0x0008000C
	bl EventWinMesSet_08041058
	ldr r0, _08052600 @ =0x0008000D
	bl EventWinMesSet_08041058
	ldr r0, _08052604 @ =0x0008000E
	bl EventWinMesSet_08041058
	ldr r0, _08052608 @ =0x0008000F
	bl EventWinMesSet_08041058
	ldr r0, _0805260C @ =0x0808E64C
	movs r1, #0x78
	movs r2, #0x48
	bl DisplayGFX_080414B4
	movs r0, #0x94
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052610 @ =0x00080010
	bl EventWinMesSet_08041058
	movs r0, #0x1e
	bl EventSetFlag_080406E4
	movs r0, #0x26
	bl SetCharacterMetFlag_0802D7CC
_080525F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080525F8: .4byte 0x00080011
_080525FC: .4byte 0x0008000C
_08052600: .4byte 0x0008000D
_08052604: .4byte 0x0008000E
_08052608: .4byte 0x0008000F
_0805260C: .4byte 0x0808E64C
_08052610: .4byte 0x00080010

	thumb_func_start sub_08052614
sub_08052614: @ 0x08052614
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805268C @ =0x00080012
	bl EventWinMesSet_08041058
	ldr r0, _08052690 @ =0x0008000F
	bl EventWinMesSet_08041058
	ldr r0, _08052694 @ =0x00080013
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805268C: .4byte 0x00080012
_08052690: .4byte 0x0008000F
_08052694: .4byte 0x00080013

	thumb_func_start sub_08052698
sub_08052698: @ 0x08052698
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x11
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805272C @ =0x0008002D
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052730 @ =0x0008002E
	bl EventWinMesSet_08041058
	ldr r0, _08052734 @ =0x0008002F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08052738 @ =0x00080030
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805272C: .4byte 0x0008002D
_08052730: .4byte 0x0008002E
_08052734: .4byte 0x0008002F
_08052738: .4byte 0x00080030

	thumb_func_start sub_0805273C
sub_0805273C: @ 0x0805273C
	push {lr}
	bl EventInit_080405B8
	ldr r0, _080527A8 @ =0x0808E2F4
	bl LoadBuildingBG_0804115C
	ldr r2, _080527AC @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _080527B0 @ =0x0808E83C
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x21
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080527B8
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _080527B4 @ =sub_08052698
	bl RunEventScript_0804066C
	b _080527E8
	.align 2, 0
_080527A8: .4byte 0x0808E2F4
_080527AC: .4byte 0x0808E6BC
_080527B0: .4byte 0x0808E83C
_080527B4: .4byte sub_08052698
_080527B8:
	movs r0, #0x1e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080527D8
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	ldr r0, _080527D4 @ =sub_08052614
	bl RunEventScript_0804066C
	b _080527E8
	.align 2, 0
_080527D4: .4byte sub_08052614
_080527D8:
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08052818 @ =sub_080523C0
	bl RunEventScript_0804066C
	bl sub_08041560
_080527E8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
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
_08052818: .4byte sub_080523C0
