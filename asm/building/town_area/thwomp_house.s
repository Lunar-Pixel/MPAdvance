	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080474B0
sub_080474B0: @ 0x080474B0
	push {lr}
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	ldr r0, _080474E4 @ =0x00000217
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0x18
	bl sub_080413C0
	bl sub_08041430
	pop {r0}
	bx r0
	.align 2, 0
_080474E4: .4byte 0x00000217

	thumb_func_start sub_080474E8
sub_080474E8: @ 0x080474E8
	push {r4, lr}
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl sub_080474B0
	bl EventWinInit_08040fe8
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl EventWinMesSet_08041058
	ldr r0, _0804752C @ =0x00040001
	bl EventWinMesSet_08041058
	ldr r0, _08047530 @ =0x00040002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047538
	ldr r0, _08047534 @ =0x00040003
	bl EventWinMesSet_08041058
	b _08047854
	.align 2, 0
_0804752C: .4byte 0x00040001
_08047530: .4byte 0x00040002
_08047534: .4byte 0x00040003
_08047538:
	ldr r1, _080477BC @ =0x00040004
	movs r0, #3
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047548
	b _08047854
_08047548:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	bl sub_080474B0
	bl EventWinInit_08040fe8
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477C0 @ =0x00040005
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477C4 @ =0x00040006
	bl EventWinMesSet_08041058
	ldr r0, _080477C8 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0x50
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477CC @ =0x00040007
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477D0 @ =0x00040008
	bl EventWinMesSet_08041058
	ldr r0, _080477D4 @ =0x00040009
	bl EventWinMesSet_08041058
	bl sub_080474B0
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477D8 @ =0x0004000A
	bl EventWinMesSet_08041058
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477DC @ =0x0004000B
	bl EventWinMesSet_08041058
	ldr r0, _080477E0 @ =0x0004000C
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x78
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477E4 @ =0x0004000D
	bl EventWinMesSet_08041058
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477E8 @ =0x0004000E
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #0xb4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	bl EventWinInit_08040fe8
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477EC @ =0x0004000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477F0 @ =0x00040010
	bl EventWinMesSet_08041058
	ldr r0, _080477F4 @ =0x00040011
	bl EventWinMesSet_08041058
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477F8 @ =0x00040012
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	bl EventSleep_08040690
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #0xb4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080477FC @ =0x00040013
	bl EventWinMesSet_08041058
	ldr r0, _08047800 @ =0x00040014
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #1
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
	ldr r0, _08047804 @ =0x00040015
	bl EventWinMesSet_08041058
	ldr r0, _08047808 @ =0x00040016
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047814
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804780C @ =0x00040017
	bl EventWinMesSet_08041058
	ldr r0, _08047810 @ =0x00040018
	bl EventWinMesSet_08041058
	b _08047842
	.align 2, 0
_080477BC: .4byte 0x00040004
_080477C0: .4byte 0x00040005
_080477C4: .4byte 0x00040006
_080477C8: .4byte 0x0000011F
_080477CC: .4byte 0x00040007
_080477D0: .4byte 0x00040008
_080477D4: .4byte 0x00040009
_080477D8: .4byte 0x0004000A
_080477DC: .4byte 0x0004000B
_080477E0: .4byte 0x0004000C
_080477E4: .4byte 0x0004000D
_080477E8: .4byte 0x0004000E
_080477EC: .4byte 0x0004000F
_080477F0: .4byte 0x00040010
_080477F4: .4byte 0x00040011
_080477F8: .4byte 0x00040012
_080477FC: .4byte 0x00040013
_08047800: .4byte 0x00040014
_08047804: .4byte 0x00040015
_08047808: .4byte 0x00040016
_0804780C: .4byte 0x00040017
_08047810: .4byte 0x00040018
_08047814:
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x58
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804785C @ =0x00040019
	bl EventWinMesSet_08041058
	ldr r0, _08047860 @ =0x0004001A
	bl EventWinMesSet_08041058
_08047842:
	movs r0, #0xe
	bl EventSetFlag_080406E4
	movs r0, #7
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x19
	bl SetCharacterMetFlag_0802D7CC
_08047854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804785C: .4byte 0x00040019
_08047860: .4byte 0x0004001A

	thumb_func_start sub_08047864
sub_08047864: @ 0x08047864
	push {lr}
	movs r0, #1
	movs r1, #0x50
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047900 @ =0x00040028
	bl EventWinMesSet_08041058
	ldr r0, _08047904 @ =0x00040029
	bl EventWinMesSet_08041058
	ldr r0, _08047908 @ =0x0004002A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	beq _08047920
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r0, _0804790C @ =0x00040041
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r0, _08047910 @ =0x00040042
	bl EventWinMesSet_08041058
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047914 @ =0x00040043
	bl EventWinMesSet_08041058
	ldr r0, _08047918 @ =0x00040044
	bl EventWinMesSet_08041058
	ldr r0, _0804791C @ =0x00040045
	bl EventWinMesSet_08041058
	movs r0, #0xf
	bl EventUnsetFlag_080406D0
	movs r0, #0x11
	bl EventUnsetFlag_080406D0
	movs r0, #0xe
	bl EventUnsetFlag_080406D0
	movs r0, #0x10
	bl UnsetEventFlag_080406D0
	b _08047B6C
	.align 2, 0
_08047900: .4byte 0x00040028
_08047904: .4byte 0x00040029
_08047908: .4byte 0x0004002A
_0804790C: .4byte 0x00040041
_08047910: .4byte 0x00040042
_08047914: .4byte 0x00040043
_08047918: .4byte 0x00040044
_0804791C: .4byte 0x00040045
_08047920:
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x54
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #0x56
	bl EventSleep_08040690
	ldr r0, _08047B70 @ =0x00000125
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047B74 @ =0x0004002B
	bl EventWinMesSet_08041058
	ldr r0, _08047B78 @ =0x0004002C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080474B0
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047B7C @ =0x0004002D
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047B80 @ =0x0004002E
	bl EventWinMesSet_08041058
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08047B84 @ =0x0004002F
	bl EventWinMesSet_08041058
	movs r0, #0x90
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	bl sub_080474B0
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047B88 @ =0x00040030
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047B8C @ =0x00040031
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x88
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047B90 @ =0x00040032
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047B94 @ =0x00040033
	bl EventWinMesSet_08041058
	ldr r0, _08047B98 @ =0x00040034
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x38
	bl EventPlaceChara_08041894
	ldr r0, _08047B9C @ =0x00000121
	bl EventPlaySFX_080410E0
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047BA0 @ =0x00040035
	bl EventWinMesSet_08041058
	ldr r0, _08047BA4 @ =0x00040036
	bl EventWinMesSet_08041058
	ldr r0, _08047BA8 @ =0x00040037
	bl EventWinMesSet_08041058
	ldr r0, _08047BAC @ =0x00040038
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #0xb4
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047BB0 @ =0x00040039
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08047BB4 @ =0x0004003A
	bl EventWinMesSet_08041058
	ldr r0, _08047BB8 @ =0x0004003B
	bl EventWinMesSet_08041058
	bl sub_080474B0
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047BBC @ =0x0004003C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047BC0 @ =0x0004003D
	bl EventWinMesSet_08041058
	ldr r0, _08047BC4 @ =0x0004003E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047BC8 @ =0x0004003F
	bl EventWinMesSet_08041058
	movs r0, #0x10
	movs r1, #0x10
	bl QuestFinish_08042814
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047BCC @ =0x00040040
	bl EventWinMesSet_08041058
	bl sub_080474B0
	movs r0, #0x11
	bl SetEventFlag_080406BC
_08047B6C:
	pop {r0}
	bx r0
	.align 2, 0
_08047B70: .4byte 0x00000125
_08047B74: .4byte 0x0004002B
_08047B78: .4byte 0x0004002C
_08047B7C: .4byte 0x0004002D
_08047B80: .4byte 0x0004002E
_08047B84: .4byte 0x0004002F
_08047B88: .4byte 0x00040030
_08047B8C: .4byte 0x00040031
_08047B90: .4byte 0x00040032
_08047B94: .4byte 0x00040033
_08047B98: .4byte 0x00040034
_08047B9C: .4byte 0x00000121
_08047BA0: .4byte 0x00040035
_08047BA4: .4byte 0x00040036
_08047BA8: .4byte 0x00040037
_08047BAC: .4byte 0x00040038
_08047BB0: .4byte 0x00040039
_08047BB4: .4byte 0x0004003A
_08047BB8: .4byte 0x0004003B
_08047BBC: .4byte 0x0004003C
_08047BC0: .4byte 0x0004003D
_08047BC4: .4byte 0x0004003E
_08047BC8: .4byte 0x0004003F
_08047BCC: .4byte 0x00040040

	thumb_func_start sub_08047BD0
sub_08047BD0: @ 0x08047BD0
	push {lr}
	bl sub_080407FC
	bl sub_080474B0
	bl EventWinInit_08040fe8
	movs r0, #0x12
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047BF4 @ =0x00040046
	bl EventWinMesSet_08041058
	ldr r0, _08047BF8 @ =0x00040047
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08047BF4: .4byte 0x00040046
_08047BF8: .4byte 0x00040047

	thumb_func_start sub_08047BFC
sub_08047BFC: @ 0x08047BFC
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08047C70 @ =0x0808DF0C
	bl LoadBuildingBG_0804115C
	ldr r2, _08047C74 @ =0x0808E84C
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
	ldr r2, _08047C78 @ =0x0808EA4C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	ldr r2, _08047C7C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl EventPlaceChara_08041894
	movs r0, #0x11
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08047C84
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08047C80 @ =sub_08047BD0
	bl RunEventScript_0804066C
	b _08047CC4
	.align 2, 0
_08047C70: .4byte 0x0808DF0C
_08047C74: .4byte 0x0808E84C
_08047C78: .4byte 0x0808EA4C
_08047C7C: .4byte 0x0808E6BC
_08047C80: .4byte sub_08047BD0
_08047C84:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047CB4
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08047CB0 @ =sub_080474E8
	bl RunEventScript_0804066C
	movs r0, #0xe
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047CC4
	movs r0, #1
	bl sub_08040F18
	b _08047CC4
	.align 2, 0
_08047CB0: .4byte sub_080474E8
_08047CB4:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _08047D04 @ =sub_08047864
	bl RunEventScript_0804066C
	bl sub_08040F0C
_08047CC4:
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
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08047D04: .4byte sub_08047864
