	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804C570
sub_0804C570: @ 0x0804C570
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x52
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804C634 @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x15
	bl EventWinSpeakerSet_08041018
	movs r0, #0xe8
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _0804C638 @ =0x001D0001
	bl EventWinMesSet_08041058
	ldr r0, _0804C63C @ =0x001D0002
	bl EventWinMesSet_08041058
	ldr r0, _0804C640 @ =0x001D0003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804C648
	movs r0, #4
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x42
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	ldr r0, _0804C644 @ =0x001D0004
	bl EventWinMesSet_08041058
	b _0804C704
	.align 2, 0
_0804C634: .4byte 0x00000129
_0804C638: .4byte 0x001D0001
_0804C63C: .4byte 0x001D0002
_0804C640: .4byte 0x001D0003
_0804C644: .4byte 0x001D0004
_0804C648:
	ldr r1, _0804C6C4 @ =0x001D0005
	movs r0, #0x1c
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804C704
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	movs r0, #4
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x42
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #0xb4
	bl EventSleep_08040690
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x15
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C6C8 @ =0x001D0006
	bl EventWinMesSet_08041058
	ldr r0, _0804C6CC @ =0x001D0007
	bl EventWinMesSet_08041058
	ldr r0, _0804C6D0 @ =0x001D0008
	bl EventWinMesSet_08041058
	ldr r0, _0804C6D4 @ =0x001D0009
	bl EventWinMesSet_08041058
	ldr r0, _0804C6D8 @ =0x001D000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804C6E0
	ldr r0, _0804C6DC @ =0x001D000B
	bl EventWinMesSet_08041058
	b _0804C6E6
	.align 2, 0
_0804C6C4: .4byte 0x001D0005
_0804C6C8: .4byte 0x001D0006
_0804C6CC: .4byte 0x001D0007
_0804C6D0: .4byte 0x001D0008
_0804C6D4: .4byte 0x001D0009
_0804C6D8: .4byte 0x001D000A
_0804C6DC: .4byte 0x001D000B
_0804C6E0:
	ldr r0, _0804C708 @ =0x001D000F
	bl EventWinMesSet_08041058
_0804C6E6:
	ldr r0, _0804C70C @ =0x001D000C
	bl EventWinMesSet_08041058
	ldr r0, _0804C710 @ =0x001D000D
	bl EventWinMesSet_08041058
	ldr r0, _0804C714 @ =0x001D000E
	bl EventWinMesSet_08041058
	movs r0, #0x73
	bl EventSetFlag_080406E4
	movs r0, #6
	bl SetCharacterMetFlag_0802D7CC
_0804C704:
	pop {r0}
	bx r0
	.align 2, 0
_0804C708: .4byte 0x001D000F
_0804C70C: .4byte 0x001D000C
_0804C710: .4byte 0x001D000D
_0804C714: .4byte 0x001D000E

	thumb_func_start sub_0804C718
sub_0804C718: @ 0x0804C718
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x15
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C74C @ =0x001D0010
	bl EventWinMesSet_08041058
	ldr r0, _0804C750 @ =0x001D000D
	bl EventWinMesSet_08041058
	ldr r0, _0804C754 @ =0x001D000E
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804C74C: .4byte 0x001D0010
_0804C750: .4byte 0x001D000D
_0804C754: .4byte 0x001D000E

	thumb_func_start sub_0804C758
sub_0804C758: @ 0x0804C758
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x15
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C7B0 @ =0x001D0021
	bl EventWinMesSet_08041058
	ldr r0, _0804C7B4 @ =0x001D0022
	bl EventWinMesSet_08041058
	ldr r0, _0804C7B8 @ =0x001D0023
	bl EventWinMesSet_08041058
	ldr r0, _0804C7BC @ =0x001D0024
	bl EventWinMesSet_08041058
	movs r0, #0xd
	movs r1, #0x15
	bl QuestFinish_08042814
	movs r0, #0x15
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C7C0 @ =0x001D0025
	bl EventWinMesSet_08041058
	ldr r0, _0804C7C4 @ =0x001D0026
	bl EventWinMesSet_08041058
	movs r0, #0x76
	bl SetEventFlag_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_0804C7B0: .4byte 0x001D0021
_0804C7B4: .4byte 0x001D0022
_0804C7B8: .4byte 0x001D0023
_0804C7BC: .4byte 0x001D0024
_0804C7C0: .4byte 0x001D0025
_0804C7C4: .4byte 0x001D0026

	thumb_func_start sub_0804C7C8
sub_0804C7C8: @ 0x0804C7C8
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x52
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x52
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804C860 @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x15
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804C864 @ =0x001D0027
	bl EventWinMesSet_08041058
	ldr r0, _0804C868 @ =0x001D0028
	bl EventWinMesSet_08041058
	ldr r0, _0804C86C @ =0x001D0029
	bl EventWinMesSet_08041058
	ldr r0, _0804C870 @ =0x001D002A
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804C860: .4byte 0x00000129
_0804C864: .4byte 0x001D0027
_0804C868: .4byte 0x001D0028
_0804C86C: .4byte 0x001D0029
_0804C870: .4byte 0x001D002A

	thumb_func_start sub_0804C874
sub_0804C874: @ 0x0804C874
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _0804C94C @ =0x0808E074
	bl LoadBuildingBG_0804115C
	ldr r4, _0804C950 @ =0x0808E87C
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
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
	movs r1, #0xd2
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x48
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _0804C954 @ =0x0808E6CC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x80
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _0804C958 @ =0x0808E6BC
	movs r0, #4
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	movs r0, #0x76
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C960
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	ldr r0, _0804C95C @ =sub_0804C7C8
	bl RunEventScript_0804066C
	b _0804C9A8
	.align 2, 0
_0804C94C: .4byte 0x0808E074
_0804C950: .4byte 0x0808E87C
_0804C954: .4byte 0x0808E6CC
_0804C958: .4byte 0x0808E6BC
_0804C95C: .4byte sub_0804C7C8
_0804C960:
	movs r0, #0x73
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C99C
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	movs r0, #0x74
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C990
	ldr r0, _0804C98C @ =sub_0804C758
	bl RunEventScript_0804066C
	b _0804C9A8
	.align 2, 0
_0804C98C: .4byte sub_0804C758
_0804C990:
	ldr r0, _0804C998 @ =sub_0804C718
	bl RunEventScript_0804066C
	b _0804C9A8
	.align 2, 0
_0804C998: .4byte sub_0804C718
_0804C99C:
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	ldr r0, _0804CA04 @ =sub_0804C570
	bl RunEventScript_0804066C
_0804C9A8:
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
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804CA04: .4byte sub_0804C570
