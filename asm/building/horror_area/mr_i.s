	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804B310
sub_0804B310: @ 0x0804B310
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	pop {r0}
	bx r0

	thumb_func_start sub_0804B430
sub_0804B430: @ 0x0804B430
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B460 @ =0x00010026
	bl EventWinMesSet_08041058
_0804B442:
	bl sub_08041048
	ldr r0, _0804B464 @ =0x00010027
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804B468
	cmp r0, #1
	beq _0804B518
	b _0804B564
	.align 2, 0
_0804B460: .4byte 0x00010026
_0804B464: .4byte 0x00010027
_0804B468:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B500 @ =0x00010028
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804B504 @ =0x00010029
	bl EventWinMesSet_08041058
	ldr r0, _0804B508 @ =0x0001002A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804B50C @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x28
	bl EventPlaceChara_08041894
	ldr r0, _0804B510 @ =0x0001002B
	bl EventWinMesSet_08041058
	bl GetCharacterID_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0804B4F8
	ldr r0, _0804B514 @ =0x0001002C
	bl EventWinMesSet_08041058
_0804B4F8:
	movs r0, #1
	bl EventSetFlag_080406E4
	b _0804B442
	.align 2, 0
_0804B500: .4byte 0x00010028
_0804B504: .4byte 0x00010029
_0804B508: .4byte 0x0001002A
_0804B50C: .4byte 0x00000129
_0804B510: .4byte 0x0001002B
_0804B514: .4byte 0x0001002C
_0804B518:
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B55C @ =0x0001002D
	bl EventWinMesSet_08041058
	bl GetCharacterID_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0804B442
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	ldr r0, _0804B560 @ =0x0001002E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	b _0804B442
	.align 2, 0
_0804B55C: .4byte 0x0001002D
_0804B560: .4byte 0x0001002E
_0804B564:
	ldr r0, _0804B57C @ =0x0001002F
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B578
	b _0804B442
_0804B578:
	pop {r0}
	bx r0
	.align 2, 0
_0804B57C: .4byte 0x0001002F

	thumb_func_start sub_0804B580
sub_0804B580: @ 0x0804B580
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B5C0 @ =0x00070018
	bl EventWinMesSet_08041058
_0804B592:
	bl sub_08041008
	ldr r0, _0804B5C4 @ =0x00070019
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804B5CC
	cmp r0, #1
	beq _0804B66C
	ldr r0, _0804B5C8 @ =0x00070023
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804B592
	b _0804B6D4
	.align 2, 0
_0804B5C0: .4byte 0x00070018
_0804B5C4: .4byte 0x00070019
_0804B5C8: .4byte 0x00070023
_0804B5CC:
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x28
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0xb4
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B654 @ =0x0007001A
	bl EventWinMesSet_08041058
	ldr r0, _0804B658 @ =0x0007001B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0x88
	movs r2, #0x30
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804B65C @ =0x0007001C
	bl EventWinMesSet_08041058
	ldr r0, _0804B660 @ =0x0007001D
	bl EventWinMesSet_08041058
	ldr r0, _0804B664 @ =0x0007001E
	bl EventWinMesSet_08041058
	ldr r0, _0804B668 @ =0x0007001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0x1b
	bl EventSetFlag_080406E4
	b _0804B592
	.align 2, 0
_0804B654: .4byte 0x0007001A
_0804B658: .4byte 0x0007001B
_0804B65C: .4byte 0x0007001C
_0804B660: .4byte 0x0007001D
_0804B664: .4byte 0x0007001E
_0804B668: .4byte 0x0007001F
_0804B66C:
	bl EventWinInit_08040fe8
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B6C8 @ =0x00070020
	bl EventWinMesSet_08041058
	ldr r0, _0804B6CC @ =0x00070021
	bl EventWinMesSet_08041058
	bl GetCharacterID_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0804B690
	b _0804B592
_0804B690:
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x28
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	ldr r0, _0804B6D0 @ =0x00070022
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	b _0804B592
	.align 2, 0
_0804B6C8: .4byte 0x00070020
_0804B6CC: .4byte 0x00070021
_0804B6D0: .4byte 0x00070022
_0804B6D4:
	movs r0, #0
	bl SetCharacterMetFlag_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804B6E0
sub_0804B6E0: @ 0x0804B6E0
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	movs r0, #0x90
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	ldr r0, _0804B738 @ =0x00090001
	bl EventWinMesSet_08041058
	ldr r0, _0804B73C @ =0x00090002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B744
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
	ldr r0, _0804B740 @ =0x00090003
	bl EventWinMesSet_08041058
	b _0804B7CE
	.align 2, 0
_0804B738: .4byte 0x00090001
_0804B73C: .4byte 0x00090002
_0804B740: .4byte 0x00090003
_0804B744:
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r1, _0804B7D4 @ =0x00090005
	movs r0, #8
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804B7CE
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804B7D8 @ =0x00000123
	bl EventPlaySFX_080410E0
	bl sub_0804B310
	ldr r0, _0804B7DC @ =0x00090006
	bl EventWinMesSet_08041058
	bl sub_0804B310
	ldr r0, _0804B7E0 @ =0x00090007
	bl EventWinMesSet_08041058
	ldr r0, _0804B7E4 @ =0x00090008
	bl EventWinMesSet_08041058
	bl sub_0804B310
	ldr r0, _0804B7E8 @ =0x00090009
	bl EventWinMesSet_08041058
	movs r0, #0x43
	movs r1, #0x11
	bl QuestFinish_08042814
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B7EC @ =0x0009000A
	bl EventWinMesSet_08041058
	ldr r0, _0804B7F0 @ =0x0009000B
	bl EventWinMesSet_08041058
	movs r0, #0x24
	bl SetEventFlag_080406BC
	movs r0, #0
	bl SetCharacterMetFlag_0802D7CC
_0804B7CE:
	pop {r0}
	bx r0
	.align 2, 0
_0804B7D4: .4byte 0x00090005
_0804B7D8: .4byte 0x00000123
_0804B7DC: .4byte 0x00090006
_0804B7E0: .4byte 0x00090007
_0804B7E4: .4byte 0x00090008
_0804B7E8: .4byte 0x00090009
_0804B7EC: .4byte 0x0009000A
_0804B7F0: .4byte 0x0009000B

	thumb_func_start sub_0804B7F4
sub_0804B7F4: @ 0x0804B7F4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804B818 @ =0x0009000C
	bl EventWinMesSet_08041058
	ldr r0, _0804B81C @ =0x0009000D
	bl EventWinMesSet_08041058
	ldr r0, _0804B820 @ =0x0009000E
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804B818: .4byte 0x0009000C
_0804B81C: .4byte 0x0009000D
_0804B820: .4byte 0x0009000E

	thumb_func_start sub_0804B824
sub_0804B824: @ 0x0804B824
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x31
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804B860 @ =0x00000123
	bl EventPlaySFX_080410E0
	ldr r0, _0804B864 @ =0x0009000F
	bl EventWinMesSet_08041058
	ldr r0, _0804B868 @ =0x00090010
	bl EventWinMesSet_08041058
	ldr r0, _0804B86C @ =0x00090011
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804B860: .4byte 0x00000123
_0804B864: .4byte 0x0009000F
_0804B868: .4byte 0x00090010
_0804B86C: .4byte 0x00090011

	thumb_func_start sub_0804B870
sub_0804B870: @ 0x0804B870
	push {r4, lr}
	sub sp, #0xc
	bl EventInit_080405B8
	ldr r0, _0804B8FC @ =0x0808DFFC
	bl LoadBuildingBG_0804115C
	ldr r2, _0804B900 @ =0x0808EA1C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl EventPlaceChara_08041894
	mov r1, sp
	ldr r0, _0804B904 @ =0x0808DC34
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	ldr r2, _0804B908 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x28
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B910
	movs r0, #1
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B910
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _0804B90C @ =sub_0804B430
	bl RunEventScript_0804066C
	b _0804B97E
	.align 2, 0
_0804B8FC: .4byte 0x0808DFFC
_0804B900: .4byte 0x0808EA1C
_0804B904: .4byte 0x0808DC34
_0804B908: .4byte 0x0808E6BC
_0804B90C: .4byte sub_0804B430
_0804B910:
	movs r0, #0x1a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B93C
	movs r0, #0x1b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B93C
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	ldr r0, _0804B938 @ =sub_0804B580
	bl RunEventScript_0804066C
	b _0804B97E
	.align 2, 0
_0804B938: .4byte sub_0804B580
_0804B93C:
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	bl GetCharacterID_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0804B95C
	ldr r0, _0804B958 @ =sub_0804B7F4
	bl RunEventScript_0804066C
	b _0804B97E
	.align 2, 0
_0804B958: .4byte sub_0804B7F4
_0804B95C:
	movs r0, #0x24
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B978
	ldr r0, _0804B974 @ =sub_0804B824
	bl RunEventScript_0804066C
	b _0804B97E
	.align 2, 0
_0804B974: .4byte sub_0804B824
_0804B978:
	ldr r0, _0804B9B8 @ =sub_0804B6E0
	bl RunEventScript_0804066C
_0804B97E:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_08041DB8
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B9B8: .4byte sub_0804B6E0
