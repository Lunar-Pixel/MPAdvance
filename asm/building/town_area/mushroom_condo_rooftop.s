	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080454C4
sub_080454C4: @ 0x080454C4
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	bl EventSleep_08040690
	pop {r0}
	bx r0

	thumb_func_start sub_08045548
sub_08045548: @ 0x08045548
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x60
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	mov r1, sp
	ldr r0, _0804557C @ =0x0808DC08
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804557C: .4byte 0x0808DC08

	thumb_func_start sub_08045580
sub_08045580: @ 0x08045580
	push {r4, r5, lr}
	bl sub_080407FC
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x60
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	movs r5, #0x96
	lsls r5, r5, #1
	adds r0, r5, #0
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	movs r0, #0x90
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _0804562C @ =0x00120001
	bl EventWinMesSet_08041058
	ldr r0, _08045630 @ =0x00120002
	bl EventWinMesSet_08041058
	ldr r0, _08045634 @ =0x00120003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045640
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08045638 @ =0x00120004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r0, _0804563C @ =0x00120005
	bl EventWinMesSet_08041058
	b _08045860
	.align 2, 0
_0804562C: .4byte 0x00120001
_08045630: .4byte 0x00120002
_08045634: .4byte 0x00120003
_08045638: .4byte 0x00120004
_0804563C: .4byte 0x00120005
_08045640:
	ldr r1, _080457DC @ =0x00120006
	movs r0, #0x11
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045650
	b _08045860
_08045650:
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	adds r0, r5, #0
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r4, _080457E0 @ =0x00120007
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080457E4 @ =0x00120008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080457E8 @ =0x00120009
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x60
	movs r3, #0x18
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080457EC @ =0x0012000A
	bl EventWinMesSet_08041058
	movs r0, #5
	bl EventWinSpeakerSet_08041018
	ldr r0, _080457F0 @ =0x0012000B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080457F4 @ =0x0012000C
	bl EventWinMesSet_08041058
	movs r0, #5
	bl EventWinSpeakerSet_08041018
	ldr r0, _080457F8 @ =0x0012000D
	bl EventWinMesSet_08041058
	ldr r2, _080457FC @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x60
	movs r2, #0x30
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x90
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045800 @ =0x0012000E
	bl EventWinMesSet_08041058
	movs r0, #5
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045804 @ =0x0012000F
	bl EventWinMesSet_08041058
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045808 @ =0x00120010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804580C @ =0x00120011
	bl EventWinMesSet_08041058
	ldr r0, _08045810 @ =0x00120012
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045818
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	adds r0, r5, #0
	bl EventPlaySFX_080410E0
	ldr r0, _08045814 @ =0x00120013
	bl EventWinMesSet_08041058
	b _0804583C
	.align 2, 0
_080457DC: .4byte 0x00120006
_080457E0: .4byte 0x00120007
_080457E4: .4byte 0x00120008
_080457E8: .4byte 0x00120009
_080457EC: .4byte 0x0012000A
_080457F0: .4byte 0x0012000B
_080457F4: .4byte 0x0012000C
_080457F8: .4byte 0x0012000D
_080457FC: .4byte 0x0808E6BC
_08045800: .4byte 0x0012000E
_08045804: .4byte 0x0012000F
_08045808: .4byte 0x00120010
_0804580C: .4byte 0x00120011
_08045810: .4byte 0x00120012
_08045814: .4byte 0x00120013
_08045818:
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	adds r0, r5, #0
	bl EventPlaySFX_080410E0
	ldr r0, _08045868 @ =0x00120013
	bl EventWinMesSet_08041058
	ldr r0, _0804586C @ =0x00120016
	bl EventWinMesSet_08041058
_0804583C:
	movs r0, #5
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045870 @ =0x00120014
	bl EventWinMesSet_08041058
	ldr r0, _08045874 @ =0x00120015
	bl EventWinMesSet_08041058
	movs r0, #0x46
	bl EventSetFlag_080406E4
	movs r0, #0x27
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #9
	bl SetCharacterMetFlag_0802D7CC
_08045860:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045868: .4byte 0x00120013
_0804586C: .4byte 0x00120016
_08045870: .4byte 0x00120014
_08045874: .4byte 0x00120015

	thumb_func_start sub_08045878
sub_08045878: @ 0x08045878
	push {lr}
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x60
	bl EventPlaceChara_08041894
	movs r0, #0x47
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045910
	bl sub_08045548
	ldr r0, _080458F8 @ =0x0808E5DC
	movs r1, #0x78
	movs r2, #0x20
	bl DisplayGFX_080414B4
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _080458FC @ =0x00120017
	bl EventWinMesSet_08041058
	ldr r0, _08045900 @ =0x00120018
	bl EventWinMesSet_08041058
	movs r0, #5
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08045904 @ =0x00120019
	bl EventWinMesSet_08041058
	ldr r0, _08045908 @ =0x0012001A
	bl EventWinMesSet_08041058
	movs r0, #0x15
	movs r1, #0x13
	bl QuestFinish_08042814
	movs r0, #5
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804590C @ =0x0012001B
	bl EventWinMesSet_08041058
	movs r0, #0x49
	bl SetEventFlag_080406BC
	b _08045954
	.align 2, 0
_080458F8: .4byte 0x0808E5DC
_080458FC: .4byte 0x00120017
_08045900: .4byte 0x00120018
_08045904: .4byte 0x00120019
_08045908: .4byte 0x0012001A
_0804590C: .4byte 0x0012001B
_08045910:
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045958 @ =0x0012001C
	bl EventWinMesSet_08041058
	movs r0, #5
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804595C @ =0x0012001E
	bl EventWinMesSet_08041058
	ldr r0, _08045960 @ =0x0012001F
	bl EventWinMesSet_08041058
	ldr r0, _08045964 @ =0x00120020
	bl EventWinMesSet_08041058
	movs r0, #0x46
	bl EventUnsetFlag_080406D0
	movs r0, #0x47
	bl EventUnsetFlag_080406D0
	movs r0, #0x48
	bl EventUnsetFlag_080406D0
	movs r0, #0x49
	bl UnsetEventFlag_080406D0
_08045954:
	pop {r0}
	bx r0
	.align 2, 0
_08045958: .4byte 0x0012001C
_0804595C: .4byte 0x0012001E
_08045960: .4byte 0x0012001F
_08045964: .4byte 0x00120020

	thumb_func_start sub_08045968
sub_08045968: @ 0x08045968
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #5
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045990 @ =0x00120021
	bl EventWinMesSet_08041058
	ldr r0, _08045994 @ =0x00120022
	bl EventWinMesSet_08041058
	ldr r0, _08045998 @ =0x00120023
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08045990: .4byte 0x00120021
_08045994: .4byte 0x00120022
_08045998: .4byte 0x00120023

	thumb_func_start sub_0804599C
sub_0804599C: @ 0x0804599C
	push {lr}
	sub sp, #8
	bl EventInit_080405B8
	ldr r0, _08045A30 @ =0x0808DE1C
	bl LoadBuildingBG_0804115C
	ldr r2, _08045A34 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	ldr r2, _08045A38 @ =0x0808E76C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x88
	movs r2, #0x54
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #3
	bl sub_08041864
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08045A3C @ =0x0808DC14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #1
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	movs r0, #0x49
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045A44
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08045A40 @ =sub_08045968
	bl RunEventScript_0804066C
	b _08045A96
	.align 2, 0
_08045A30: .4byte 0x0808DE1C
_08045A34: .4byte 0x0808EA6C
_08045A38: .4byte 0x0808E76C
_08045A3C: .4byte 0x0808DC14
_08045A40: .4byte sub_08045968
_08045A44:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045A74
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08045A70 @ =sub_08045580
	bl RunEventScript_0804066C
	movs r0, #0x46
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045A96
	movs r0, #3
	bl sub_08040F18
	b _08045A96
	.align 2, 0
_08045A70: .4byte sub_08045580
_08045A74:
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045A8C
	movs r0, #0x47
	bl EventSetFlag_080406E4
_08045A8C:
	ldr r0, _08045AD4 @ =sub_08045878
	bl RunEventScript_0804066C
	bl sub_08040F0C
_08045A96:
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
	movs r0, #1
	bl sub_08041DB8
	bl sub_08041560
	bl sub_0804062C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08045AD4: .4byte sub_08045878
