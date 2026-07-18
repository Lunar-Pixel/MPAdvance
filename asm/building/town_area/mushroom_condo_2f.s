	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080444A4
sub_080444A4: @ 0x080444A4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x28
	bl EventWinSpeakerSet_08041018
	movs r0, #0xb8
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _080445D4 @ =0x002E0001
	bl EventWinMesSet_08041058
	ldr r0, _080445D8 @ =0x002E0002
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #8
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #9
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	ldr r0, _080445DC @ =0x002E0003
	bl EventWinChoice_0804106C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #8
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #9
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080445E4
	ldr r0, _080445E0 @ =0x002E0004
	bl EventWinMesSet_08041058
	b _080446F6
	.align 2, 0
_080445D4: .4byte 0x002E0001
_080445D8: .4byte 0x002E0002
_080445DC: .4byte 0x002E0003
_080445E0: .4byte 0x002E0004
_080445E4:
	ldr r1, _08044630 @ =0x002E0005
	movs r0, #0x2d
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080445F4
	b _080446F6
_080445F4:
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x28
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044634 @ =0x002E0006
	bl EventWinMesSet_08041058
	ldr r0, _08044638 @ =0x002E0007
	bl EventWinMesSet_08041058
	ldr r0, _0804463C @ =0x002E0008
	bl EventWinMesSet_08041058
	ldr r0, _08044640 @ =0x002E0009
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044648
	ldr r0, _08044644 @ =0x002E000A
	bl EventWinMesSet_08041058
	b _08044654
	.align 2, 0
_08044630: .4byte 0x002E0005
_08044634: .4byte 0x002E0006
_08044638: .4byte 0x002E0007
_0804463C: .4byte 0x002E0008
_08044640: .4byte 0x002E0009
_08044644: .4byte 0x002E000A
_08044648:
	ldr r0, _080446FC @ =0x002E000F
	bl EventWinMesSet_08041058
	ldr r0, _08044700 @ =0x002E0010
	bl EventWinMesSet_08041058
_08044654:
	ldr r0, _08044704 @ =0x002E000B
	bl EventWinMesSet_08041058
	ldr r0, _08044708 @ =0x002E000C
	bl EventWinMesSet_08041058
	ldr r0, _0804470C @ =0x002E000D
	bl EventWinMesSet_08041058
	ldr r0, _08044710 @ =0x002E000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #8
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #9
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0xaa
	bl EventSetFlag_080406E4
	movs r0, #0x10
	bl SetCharacterMetFlag_0802D7CC
_080446F6:
	pop {r0}
	bx r0
	.align 2, 0
_080446FC: .4byte 0x002E000F
_08044700: .4byte 0x002E0010
_08044704: .4byte 0x002E000B
_08044708: .4byte 0x002E000C
_0804470C: .4byte 0x002E000D
_08044710: .4byte 0x002E000E

	thumb_func_start sub_08044714
sub_08044714: @ 0x08044714
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x28
	bl EventWinSpeakerSet_08041018
	ldr r0, _080447BC @ =0x002E0011
	bl EventWinMesSet_08041058
	ldr r0, _080447C0 @ =0x002E0012
	bl EventWinMesSet_08041058
	ldr r0, _080447C4 @ =0x002E0013
	bl EventWinMesSet_08041058
	ldr r0, _080447C8 @ =0x002E000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #8
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #9
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	pop {r0}
	bx r0
	.align 2, 0
_080447BC: .4byte 0x002E0011
_080447C0: .4byte 0x002E0012
_080447C4: .4byte 0x002E0013
_080447C8: .4byte 0x002E000E

	thumb_func_start sub_080447CC
sub_080447CC: @ 0x080447CC
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x28
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044814 @ =0x002E0021
	bl EventWinMesSet_08041058
	ldr r0, _08044818 @ =0x002E0022
	bl EventWinMesSet_08041058
	ldr r0, _0804481C @ =0x002E0023
	bl EventWinMesSet_08041058
	ldr r0, _08044820 @ =0x002E0024
	bl EventWinMesSet_08041058
	movs r0, #0xe
	movs r1, #0x18
	bl QuestFinish_08042814
	movs r0, #0x28
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044824 @ =0x002E0025
	bl EventWinMesSet_08041058
	ldr r0, _08044828 @ =0x002E0026
	bl EventWinMesSet_08041058
	movs r0, #0xad
	bl SetEventFlag_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_08044814: .4byte 0x002E0021
_08044818: .4byte 0x002E0022
_0804481C: .4byte 0x002E0023
_08044820: .4byte 0x002E0024
_08044824: .4byte 0x002E0025
_08044828: .4byte 0x002E0026

	thumb_func_start sub_0804482C
sub_0804482C: @ 0x0804482C
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x28
	bl EventWinSpeakerSet_08041018
	ldr r0, _08044854 @ =0x002E0027
	bl EventWinMesSet_08041058
	ldr r0, _08044858 @ =0x002E0028
	bl EventWinMesSet_08041058
	ldr r0, _0804485C @ =0x002E0029
	bl EventWinMesSet_08041058
	ldr r0, _08044860 @ =0x002E002A
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08044854: .4byte 0x002E0027
_08044858: .4byte 0x002E0028
_0804485C: .4byte 0x002E0029
_08044860: .4byte 0x002E002A

	thumb_func_start sub_08044864
sub_08044864: @ 0x08044864
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _08044A74 @ =0x0808DDCC
	bl LoadBuildingBG_0804115C
	ldr r4, _08044A78 @ =0x0808E98C
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x48
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #2
	bl sub_08041864
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #0x48
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #5
	movs r1, #2
	bl sub_08041864
	movs r0, #5
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x60
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #2
	bl sub_08041864
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #6
	movs r1, #0
	bl sub_08041734
	movs r0, #6
	movs r1, #0x60
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #6
	movs r1, #2
	bl sub_08041864
	movs r0, #6
	movs r1, #0
	movs r2, #7
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
	movs r1, #0x78
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #7
	movs r1, #0
	bl sub_08041734
	movs r0, #7
	movs r1, #0x78
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #3
	bl sub_08041864
	movs r0, #7
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x90
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #2
	bl sub_08041864
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #8
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #8
	movs r1, #0
	bl sub_08041734
	movs r0, #8
	movs r1, #0x90
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #8
	movs r1, #3
	bl sub_08041864
	movs r0, #8
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xa8
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #2
	bl sub_08041864
	movs r0, #4
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #9
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #9
	movs r1, #0
	bl sub_08041734
	movs r0, #9
	movs r1, #0xa8
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #9
	movs r1, #3
	bl sub_08041864
	movs r0, #9
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0xad
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08044A80
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08044A7C @ =sub_0804482C
	bl RunEventScript_0804066C
	b _08044ACC
	.align 2, 0
_08044A74: .4byte 0x0808DDCC
_08044A78: .4byte 0x0808E98C
_08044A7C: .4byte sub_0804482C
_08044A80:
	movs r0, #0xaa
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044AA0
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08044A9C @ =sub_080444A4
	bl RunEventScript_0804066C
	b _08044ACC
	.align 2, 0
_08044A9C: .4byte sub_080444A4
_08044AA0:
	movs r0, #0xab
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044AC0
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	ldr r0, _08044ABC @ =sub_08044714
	bl RunEventScript_0804066C
	b _08044ACC
	.align 2, 0
_08044ABC: .4byte sub_08044714
_08044AC0:
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	ldr r0, _08044B70 @ =sub_080447CC
	bl RunEventScript_0804066C
_08044ACC:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #6
	bl sub_080417E0
	movs r0, #6
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #7
	bl sub_080417E0
	movs r0, #7
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #8
	bl sub_080417E0
	movs r0, #8
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #9
	bl sub_080417E0
	movs r0, #9
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044B70: .4byte sub_080447CC

