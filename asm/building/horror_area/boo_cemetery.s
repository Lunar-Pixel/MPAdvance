	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804CA08
sub_0804CA08: @ 0x0804CA08
	push {lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0804CA28 @ =0x0808DC40
	ldr r2, [r1, #4]
	ldr r1, [r1]
	str r1, [sp]
	str r2, [sp, #4]
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0804CA28: .4byte 0x0808DC40

	thumb_func_start sub_0804CA2C
sub_0804CA2C: @ 0x0804CA2C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #5
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r0, _0804CAD0 @ =0x0000012D
	bl EventPlaySFX_080410E0
	movs r4, #5
_0804CA5A:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #4
	bl EventSleep_08040690
	adds r0, r5, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #4
	bl EventSleep_08040690
	subs r4, #1
	cmp r4, #0
	bge _0804CA5A
	adds r0, r5, #0
	movs r1, #0
	bl sub_08041808
	lsls r5, r6, #0x10
	movs r4, #5
_0804CA88:
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	movs r0, #4
	bl EventSleep_08040690
	subs r4, #1
	cmp r4, #0
	bge _0804CA88
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	asrs r4, r5, #0x10
	movs r0, #5
	adds r1, r4, #0
	movs r2, #0x68
	movs r3, #0xc
	bl sub_08041938
	ldr r0, _0804CAD4 @ =0x0808E60C
	adds r1, r4, #0
	movs r2, #0x6a
	bl DisplayGFX_080414B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CAD0: .4byte 0x0000012D
_0804CAD4: .4byte 0x0808E60C

	thumb_func_start sub_0804CAD8
sub_0804CAD8: @ 0x0804CAD8
	push {lr}
	ldr r0, _0804CBC8 @ =0x0000021A
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #0x11
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #0x20
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0x11
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #0x20
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x11
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x11
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	pop {r0}
	bx r0
	.align 2, 0
_0804CBC8: .4byte 0x0000021A

	thumb_func_start sub_0804CBCC
sub_0804CBCC: @ 0x0804CBCC
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #4
	bl sub_0804CA08
	bl sub_080407FC
	bl sub_0804CAD8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804CC90 @ =0x00020001
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804CC94 @ =0x00020002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804CC9C
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804CC98 @ =0x00020003
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	b _0804D20A
	.align 2, 0
_0804CC90: .4byte 0x00020001
_0804CC94: .4byte 0x00020002
_0804CC98: .4byte 0x00020003
_0804CC9C:
	ldr r1, _0804D088 @ =0x00020005
	movs r0, #1
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804CCAC
	b _0804D20A
_0804CCAC:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D08C @ =0x00020006
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D090 @ =0x00020007
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D094 @ =0x00020008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D098 @ =0x00020009
	bl EventWinMesSet_08041058
	ldr r0, _0804D09C @ =0x0002000A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r4, _0804D0A0 @ =0x00020004
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0A4 @ =0x0002000B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0A8 @ =0x0002000C
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0AC @ =0x0002000D
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0B0 @ =0x0002000E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0B4 @ =0x0002000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0B8 @ =0x00020010
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0BC @ =0x00020011
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0C0 @ =0x00020012
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0C4 @ =0x00020013
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0C8 @ =0x00020014
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0CC @ =0x00020015
	bl EventWinMesSet_08041058
	bl sub_08041008
	bl sub_0804CAD8
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #4
	bl sub_0804CA08
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0D0 @ =0x00020016
	bl EventWinMesSet_08041058
	ldr r0, _0804D0D4 @ =0x00020017
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0D8 @ =0x00020018
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D0DC @ =0x00020019
	bl EventWinMesSet_08041058
	ldr r0, _0804D0E0 @ =0x0002001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	b _0804D0E4
	.align 2, 0
_0804D088: .4byte 0x00020005
_0804D08C: .4byte 0x00020006
_0804D090: .4byte 0x00020007
_0804D094: .4byte 0x00020008
_0804D098: .4byte 0x00020009
_0804D09C: .4byte 0x0002000A
_0804D0A0: .4byte 0x00020004
_0804D0A4: .4byte 0x0002000B
_0804D0A8: .4byte 0x0002000C
_0804D0AC: .4byte 0x0002000D
_0804D0B0: .4byte 0x0002000E
_0804D0B4: .4byte 0x0002000F
_0804D0B8: .4byte 0x00020010
_0804D0BC: .4byte 0x00020011
_0804D0C0: .4byte 0x00020012
_0804D0C4: .4byte 0x00020013
_0804D0C8: .4byte 0x00020014
_0804D0CC: .4byte 0x00020015
_0804D0D0: .4byte 0x00020016
_0804D0D4: .4byte 0x00020017
_0804D0D8: .4byte 0x00020018
_0804D0DC: .4byte 0x00020019
_0804D0E0: .4byte 0x0002001A
_0804D0E4:
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D1CC @ =0x0002001B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_08041008
	bl sub_0804CAD8
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #4
	bl sub_0804CA08
	bl EventWinInit_08040fe8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _0804D1D0 @ =0x0002001C
	bl EventWinMesSet_08041058
	ldr r0, _0804D1D4 @ =0x0002001D
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804D1E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D1D8 @ =0x0002001E
	bl EventWinMesSet_08041058
	ldr r0, _0804D1DC @ =0x0002001F
	bl EventWinMesSet_08041058
	b _0804D1F8
	.align 2, 0
_0804D1CC: .4byte 0x0002001B
_0804D1D0: .4byte 0x0002001C
_0804D1D4: .4byte 0x0002001D
_0804D1D8: .4byte 0x0002001E
_0804D1DC: .4byte 0x0002001F
_0804D1E0:
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D210 @ =0x00020020
	bl EventWinMesSet_08041058
	ldr r0, _0804D214 @ =0x0002001F
	bl EventWinMesSet_08041058
_0804D1F8:
	movs r0, #7
	bl EventSetFlag_080406E4
	movs r0, #7
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x17
	bl SetCharacterMetFlag_0802D7CC
_0804D20A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D210: .4byte 0x00020020
_0804D214: .4byte 0x0002001F

	thumb_func_start sub_0804D218
sub_0804D218: @ 0x0804D218
	push {r4, lr}
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #9
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804D234
	b _0804D458
_0804D234:
	ldr r2, _0804D264 @ =0x0808E7BC
	movs r0, #5
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	ldr r0, _0804D268 @ =0x03004494
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804D27E
	cmp r0, #2
	bgt _0804D26C
	cmp r0, #1
	beq _0804D272
	b _0804D2BE
	.align 2, 0
_0804D264: .4byte 0x0808E7BC
_0804D268: .4byte 0x03004494
_0804D26C:
	cmp r0, #3
	beq _0804D296
	b _0804D2BE
_0804D272:
	movs r0, #1
	movs r1, #0x38
	bl sub_0804CA2C
	movs r0, #3
	b _0804D2A0
_0804D27E:
	movs r0, #2
	movs r1, #0x60
	bl sub_0804CA2C
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #1
	b _0804D2AC
_0804D296:
	movs r0, #3
	movs r1, #0x88
	bl sub_0804CA2C
	movs r0, #1
_0804D2A0:
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #2
_0804D2AC:
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #4
	bl sub_0804CA08
	b _0804D2E4
_0804D2BE:
	movs r0, #4
	movs r1, #0xb0
	bl sub_0804CA2C
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #1
	bl sub_0804CA08
_0804D2E4:
	movs r0, #0xc
	bl EventSleep_08040690
	movs r0, #5
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #5
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D42C @ =0x00020021
	bl EventWinMesSet_08041058
	movs r0, #5
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x8e
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #5
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D430 @ =0x00020022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D434 @ =0x0000021A
	bl EventPlaySFX_080410E0
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D438 @ =0x00020023
	bl EventWinMesSet_08041058
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D43C @ =0x00020024
	bl EventWinMesSet_08041058
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r4, _0804D440 @ =0x00020004
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D444 @ =0x00020025
	bl EventWinMesSet_08041058
	movs r0, #0x36
	movs r1, #0x10
	bl QuestFinish_08042814
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D448 @ =0x00020026
	bl EventWinMesSet_08041058
	ldr r0, _0804D44C @ =0x00020027
	bl EventWinMesSet_08041058
	ldr r0, _0804D450 @ =0x00020028
	bl EventWinMesSet_08041058
	ldr r0, _0804D454 @ =0x00020029
	bl EventWinMesSet_08041058
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl SetEventFlag_080406BC
	b _0804D55C
	.align 2, 0
_0804D42C: .4byte 0x00020021
_0804D430: .4byte 0x00020022
_0804D434: .4byte 0x0000021A
_0804D438: .4byte 0x00020023
_0804D43C: .4byte 0x00020024
_0804D440: .4byte 0x00020004
_0804D444: .4byte 0x00020025
_0804D448: .4byte 0x00020026
_0804D44C: .4byte 0x00020027
_0804D450: .4byte 0x00020028
_0804D454: .4byte 0x00020029
_0804D458:
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #4
	bl sub_0804CA08
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D564 @ =0x0002002A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804D568 @ =0x0002002B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D56C @ =0x0002002C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D570 @ =0x0002002D
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D574 @ =0x0002002E
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D578 @ =0x0002002F
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	bl EventUnsetFlag_080406D0
	movs r0, #9
	bl EventUnsetFlag_080406D0
	movs r0, #8
	bl EventUnsetFlag_080406D0
	movs r0, #0xa
	bl UnsetEventFlag_080406D0
_0804D55C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D564: .4byte 0x0002002A
_0804D568: .4byte 0x0002002B
_0804D56C: .4byte 0x0002002C
_0804D570: .4byte 0x0002002D
_0804D574: .4byte 0x0002002E
_0804D578: .4byte 0x0002002F

	thumb_func_start sub_0804D57C
sub_0804D57C: @ 0x0804D57C
	push {r4, lr}
	movs r0, #1
	movs r1, #0x40
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #0xb2
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #4
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804CA08
	bl sub_080407FC
	bl EventWinInit_08040fe8
	ldr r0, _0804D690 @ =0x0000021A
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D694 @ =0x00020030
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D698 @ =0x00020031
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r4, _0804D69C @ =0x00020004
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804D6A0 @ =0x00020032
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D690: .4byte 0x0000021A
_0804D694: .4byte 0x00020030
_0804D698: .4byte 0x00020031
_0804D69C: .4byte 0x00020004
_0804D6A0: .4byte 0x00020032

	thumb_func_start sub_0804D6A4
sub_0804D6A4: @ 0x0804D6A4
	push {r4, lr}
	movs r0, #1
	movs r1, #0x40
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #0xb2
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #4
	bl sub_0804CA08
	movs r0, #8
	bl EventSleep_08040690
	movs r0, #2
	bl sub_0804CA08
	bl sub_080407FC
	bl EventWinInit_08040fe8
	ldr r0, _0804D748 @ =0x0000021A
	bl EventPlaySFX_080410E0
	movs r0, #6
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D74C @ =0x00140020
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
_0804D71E:
	ldr r0, _0804D750 @ =0x00140021
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804D758
	cmp r0, #1
	bne _0804D736
	b _0804D84C
_0804D736:
	ldr r0, _0804D754 @ =0x0014002B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804D71E
	b _0804D8B4
	.align 2, 0
_0804D748: .4byte 0x0000021A
_0804D74C: .4byte 0x00140020
_0804D750: .4byte 0x00140021
_0804D754: .4byte 0x0014002B
_0804D758:
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D830 @ =0x00140022
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D834 @ =0x00140023
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D838 @ =0x00140024
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r4, _0804D83C @ =0x00140025
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D840 @ =0x00140026
	bl EventWinMesSet_08041058
	ldr r0, _0804D844 @ =0x00140027
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D848 @ =0x00140028
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #0x4f
	bl EventSetFlag_080406E4
	b _0804D89A
	.align 2, 0
_0804D830: .4byte 0x00140022
_0804D834: .4byte 0x00140023
_0804D838: .4byte 0x00140024
_0804D83C: .4byte 0x00140025
_0804D840: .4byte 0x00140026
_0804D844: .4byte 0x00140027
_0804D848: .4byte 0x00140028
_0804D84C:
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D8A8 @ =0x00140029
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D8AC @ =0x0014002A
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804D8B0 @ =0x00140025
	bl EventWinMesSet_08041058
_0804D89A:
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	b _0804D71E
	.align 2, 0
_0804D8A8: .4byte 0x00140029
_0804D8AC: .4byte 0x0014002A
_0804D8B0: .4byte 0x00140025
_0804D8B4:
	movs r0, #0x17
	bl SetCharacterMetFlag_0802D7CC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0804D8C0
sub_0804D8C0: @ 0x0804D8C0
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _0804D978 @ =0x0808E09C
	bl LoadBuildingBG_0804115C
	ldr r4, _0804D97C @ =0x0808E77C
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x38
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x60
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x88
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xb0
	movs r2, #0x50
	bl EventPlaceChara_08041894
	ldr r2, _0804D980 @ =0x0808EA4C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0x4e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804D988
	movs r0, #0x4f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804D988
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	ldr r0, _0804D984 @ =sub_0804D6A4
	bl RunEventScript_0804066C
	b _0804D9FA
	.align 2, 0
_0804D978: .4byte 0x0808E09C
_0804D97C: .4byte 0x0808E77C
_0804D980: .4byte 0x0808EA4C
_0804D984: .4byte sub_0804D6A4
_0804D988:
	movs r0, #0xa
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804D9A8
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	ldr r0, _0804D9A4 @ =sub_0804D57C
	bl RunEventScript_0804066C
	b _0804D9FA
	.align 2, 0
_0804D9A4: .4byte sub_0804D57C
_0804D9A8:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804D9D8
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	ldr r0, _0804D9D4 @ =sub_0804CBCC
	bl RunEventScript_0804066C
	movs r0, #7
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804D9FA
	movs r0, #0
	bl sub_08040F18
	b _0804D9FA
	.align 2, 0
_0804D9D4: .4byte sub_0804CBCC
_0804D9D8:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _0804DA70 @ =0x03004494
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D9EC
	movs r0, #9
	bl EventSetFlag_080406E4
_0804D9EC:
	ldr r0, _0804DA74 @ =sub_0804D218
	bl RunEventScript_0804066C
	bl sub_08040F0C
	bl sub_08041560
_0804D9FA:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #1
	bl sub_080417E0
	movs r0, #2
	bl sub_080417E0
	movs r0, #3
	bl sub_080417E0
	movs r0, #4
	bl sub_080417E0
	movs r0, #0
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_08041DB8
	movs r0, #2
	bl sub_08041DB8
	movs r0, #3
	bl sub_08041DB8
	movs r0, #4
	bl sub_08041DB8
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DA70: .4byte 0x03004494
_0804DA74: .4byte sub_0804D218
