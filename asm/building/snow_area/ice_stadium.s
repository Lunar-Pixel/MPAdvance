	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08050390
sub_08050390: @ 0x08050390
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08050424 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	movs r0, #0xf0
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	ldr r0, _08050428 @ =0x000F0001
	bl EventWinMesSet_08041058
	ldr r0, _0805042C @ =0x000F0002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050434
	ldr r0, _08050430 @ =0x000F0003
	bl EventWinMesSet_08041058
	b _080504B8
	.align 2, 0
_08050424: .4byte 0x0000011F
_08050428: .4byte 0x000F0001
_0805042C: .4byte 0x000F0002
_08050430: .4byte 0x000F0003
_08050434:
	ldr r1, _0805047C @ =0x000F0004
	movs r0, #0xe
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080504B8
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050480 @ =0x000F0005
	bl EventWinMesSet_08041058
	ldr r0, _08050484 @ =0x000F0006
	bl EventWinMesSet_08041058
	ldr r0, _08050488 @ =0x000F0007
	bl EventWinMesSet_08041058
	ldr r0, _0805048C @ =0x000F0008
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050494
	ldr r0, _08050490 @ =0x000F0009
	bl EventWinMesSet_08041058
	b _080504A0
	.align 2, 0
_0805047C: .4byte 0x000F0004
_08050480: .4byte 0x000F0005
_08050484: .4byte 0x000F0006
_08050488: .4byte 0x000F0007
_0805048C: .4byte 0x000F0008
_08050490: .4byte 0x000F0009
_08050494:
	ldr r0, _080504BC @ =0x000F000C
	bl EventWinMesSet_08041058
	ldr r0, _080504C0 @ =0x000F000D
	bl EventWinMesSet_08041058
_080504A0:
	ldr r0, _080504C4 @ =0x000F000A
	bl EventWinMesSet_08041058
	ldr r0, _080504C8 @ =0x000F000B
	bl EventWinMesSet_08041058
	movs r0, #0x3a
	bl EventSetFlag_080406E4
	movs r0, #0x14
	bl SetCharacterMetFlag_0802D7CC
_080504B8:
	pop {r0}
	bx r0
	.align 2, 0
_080504BC: .4byte 0x000F000C
_080504C0: .4byte 0x000F000D
_080504C4: .4byte 0x000F000A
_080504C8: .4byte 0x000F000B

	thumb_func_start sub_080504CC
sub_080504CC: @ 0x080504CC
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	movs r0, #0x3b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08050530
	ldr r0, _0805051C @ =0x000F000E
	bl EventWinMesSet_08041058
	ldr r0, _08050520 @ =0x000F000F
	bl EventWinMesSet_08041058
	ldr r0, _08050524 @ =0x000F0010
	bl EventWinMesSet_08041058
	movs r0, #0x11
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	ldr r0, _08050528 @ =0x000F0011
	bl EventWinMesSet_08041058
	ldr r0, _0805052C @ =0x000F0012
	bl EventWinMesSet_08041058
	movs r0, #0x3d
	bl SetEventFlag_080406BC
	b _08050566
	.align 2, 0
_0805051C: .4byte 0x000F000E
_08050520: .4byte 0x000F000F
_08050524: .4byte 0x000F0010
_08050528: .4byte 0x000F0011
_0805052C: .4byte 0x000F0012
_08050530:
	ldr r0, _0805056C @ =0x000F0013
	bl EventWinMesSet_08041058
	ldr r0, _08050570 @ =0x000F0014
	bl EventWinMesSet_08041058
	ldr r0, _08050574 @ =0x000F0015
	bl EventWinMesSet_08041058
	ldr r0, _08050578 @ =0x000F0016
	bl EventWinMesSet_08041058
	ldr r0, _0805057C @ =0x000F0017
	bl EventWinMesSet_08041058
	movs r0, #0x3a
	bl EventUnsetFlag_080406D0
	movs r0, #0x3b
	bl EventUnsetFlag_080406D0
	movs r0, #0x3c
	bl EventUnsetFlag_080406D0
	movs r0, #0x3d
	bl UnsetEventFlag_080406D0
_08050566:
	pop {r0}
	bx r0
	.align 2, 0
_0805056C: .4byte 0x000F0013
_08050570: .4byte 0x000F0014
_08050574: .4byte 0x000F0015
_08050578: .4byte 0x000F0016
_0805057C: .4byte 0x000F0017

	thumb_func_start sub_08050580
sub_08050580: @ 0x08050580
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x29
	bl EventWinSpeakerSet_08041018
	ldr r0, _080505D4 @ =0x000F0018
	bl EventWinMesSet_08041058
	ldr r0, _080505D8 @ =0x000F0019
	bl EventWinMesSet_08041058
	ldr r0, _080505DC @ =0x000F001A
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080505D4: .4byte 0x000F0018
_080505D8: .4byte 0x000F0019
_080505DC: .4byte 0x000F001A

	thumb_func_start sub_080505E0
sub_080505E0: @ 0x080505E0
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0805064C @ =0x0808E22C
	bl LoadBuildingBG_0804115C
	ldr r2, _08050650 @ =0x0808E99C
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
	ldr r2, _08050654 @ =0x0808E6BC
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
	bl sub_080407FC
	movs r0, #0x3d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805065C
	movs r0, #0x1b
	bl EventBGMPlay_080410A8
	ldr r0, _08050658 @ =sub_08050580
	bl RunEventScript_0804066C
	b _080506AE
	.align 2, 0
_0805064C: .4byte 0x0808E22C
_08050650: .4byte 0x0808E99C
_08050654: .4byte 0x0808E6BC
_08050658: .4byte sub_08050580
_0805065C:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805068C
	movs r0, #0x1b
	bl EventBGMPlay_080410A8
	ldr r0, _08050688 @ =sub_08050390
	bl RunEventScript_0804066C
	movs r0, #0x3a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080506AE
	movs r0, #6
	bl sub_08040F18
	b _080506AE
	.align 2, 0
_08050688: .4byte sub_08050390
_0805068C:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080506A4
	movs r0, #0x3b
	bl EventSetFlag_080406E4
_080506A4:
	ldr r0, _080506E0 @ =sub_080504CC
	bl RunEventScript_0804066C
	bl sub_08040F0C
_080506AE:
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
_080506E0: .4byte sub_080504CC
