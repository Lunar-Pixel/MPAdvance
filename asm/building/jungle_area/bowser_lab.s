	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080545AC
sub_080545AC: @ 0x080545AC
	push {r4, r5, lr}
	ldr r0, _080545F8 @ =0x00000133
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0xe0
	bl sub_080413C0
	movs r5, #0
_080545C0:
	movs r4, #0xc8
	subs r4, r4, r5
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0x50
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x70
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0x90
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #2
	bl EventSleep_08040690
	adds r5, #1
	cmp r5, #0x6f
	ble _080545C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080545F8: .4byte 0x00000133

	thumb_func_start sub_080545FC
sub_080545FC: @ 0x080545FC
	push {r4, r5, r6, lr}
	ldr r0, _0805464C @ =0x000003DF
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0xb4
	bl sub_080413C0
	movs r6, #0
	movs r5, #0xb0
	lsls r5, r5, #0xf
_08054614:
	asrs r4, r5, #0x10
	movs r0, #0
	movs r1, #0x50
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x70
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0x90
	adds r2, r4, #0
	bl EventPlaceChara_08041894
	movs r0, #1
	bl EventSleep_08040690
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0xb3
	ble _08054614
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805464C: .4byte 0x000003DF

	thumb_func_start sub_08054650
sub_08054650: @ 0x08054650
	push {r4, lr}
	movs r4, #0
_08054654:
	movs r1, #0xf0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #5
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #6
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	bl EventSleep_08040690
	adds r4, #1
	cmp r4, #0x8b
	ble _08054654
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080546C8
sub_080546C8: @ 0x080546C8
	push {r4, lr}
	movs r4, #0
_080546CC:
	movs r1, #0x5a
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r1, #0x72
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r1, #0x82
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r1, #0x92
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #5
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r1, #0xa2
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #6
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	bl EventSleep_08040690
	adds r4, #1
	cmp r4, #0xa1
	ble _080546CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08054730
sub_08054730: @ 0x08054730
	push {r4, lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0xac
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054848 @ =0x002B0001
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805484C @ =0x002B0002
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054850 @ =0x002B0003
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054854 @ =0x002B0004
	bl EventWinMesSet_08041058
	ldr r0, _08054858 @ =0x002B0005
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805486C
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	ldr r0, _0805485C @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	ldr r0, _08054860 @ =0x002B0006
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054864 @ =0x002B0007
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054868 @ =0x002B0008
	bl EventWinMesSet_08041058
	b _08054E04
	.align 2, 0
_08054848: .4byte 0x002B0001
_0805484C: .4byte 0x002B0002
_08054850: .4byte 0x002B0003
_08054854: .4byte 0x002B0004
_08054858: .4byte 0x002B0005
_0805485C: .4byte 0x0000011F
_08054860: .4byte 0x002B0006
_08054864: .4byte 0x002B0007
_08054868: .4byte 0x002B0008
_0805486C:
	ldr r1, _08054AE8 @ =0x002B0009
	movs r0, #0x2a
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805487C
	b _08054E04
_0805487C:
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054AEC @ =0x002B000A
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054AF0 @ =0x002B000B
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054AF4 @ =0x002B000C
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054AF8 @ =0x002B000D
	bl EventWinMesSet_08041058
	ldr r0, _08054AFC @ =0x002B000E
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B00 @ =0x002B000F
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B04 @ =0x002B0010
	bl EventWinMesSet_08041058
	ldr r0, _08054B08 @ =0x002B0011
	bl EventWinMesSet_08041058
	ldr r0, _08054B0C @ =0x002B0012
	bl EventWinMesSet_08041058
	ldr r0, _08054B10 @ =0x002B0013
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054940
	b _08054B40
_08054940:
	bl sub_08041008
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B14 @ =0x002B0014
	bl EventWinMesSet_08041058
	ldr r0, _08054B18 @ =0x002B0015
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B1C @ =0x002B0016
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B20 @ =0x002B0017
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl EventSleep_08040690
	ldr r4, _08054B24 @ =0x0808E9EC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	movs r0, #0
	movs r1, #0x50
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
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
	movs r1, #3
	bl sub_08041864
	movs r0, #1
	movs r1, #0x70
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
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
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0x90
	movs r2, #0xc8
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl sub_080545AC
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B28 @ =0x002B0018
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B2C @ =0x002B0019
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B30 @ =0x002B001A
	bl EventWinMesSet_08041058
	ldr r1, _08054B34 @ =0x00460026
	movs r0, #0x6b
	bl EventMgSpecialGoal_080427E0
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B38 @ =0x002B001B
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054B3C @ =0x002B001C
	bl EventWinMesSet_08041058
	movs r0, #0x9f
	bl EventSetFlag_080406E4
	b _08054DF8
	.align 2, 0
_08054AE8: .4byte 0x002B0009
_08054AEC: .4byte 0x002B000A
_08054AF0: .4byte 0x002B000B
_08054AF4: .4byte 0x002B000C
_08054AF8: .4byte 0x002B000D
_08054AFC: .4byte 0x002B000E
_08054B00: .4byte 0x002B000F
_08054B04: .4byte 0x002B0010
_08054B08: .4byte 0x002B0011
_08054B0C: .4byte 0x002B0012
_08054B10: .4byte 0x002B0013
_08054B14: .4byte 0x002B0014
_08054B18: .4byte 0x002B0015
_08054B1C: .4byte 0x002B0016
_08054B20: .4byte 0x002B0017
_08054B24: .4byte 0x0808E9EC
_08054B28: .4byte 0x002B0018
_08054B2C: .4byte 0x002B0019
_08054B30: .4byte 0x002B001A
_08054B34: .4byte 0x00460026
_08054B38: .4byte 0x002B001B
_08054B3C: .4byte 0x002B001C
_08054B40:
	bl sub_08041008
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E0C @ =0x002B0014
	bl EventWinMesSet_08041058
	ldr r0, _08054E10 @ =0x002B001D
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E14 @ =0x002B001E
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E18 @ =0x002B001F
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_08041008
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r4, _08054E1C @ =0x0808E8DC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #1
	movs r2, #0x68
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
	movs r1, #0x88
	lsls r1, r1, #1
	movs r0, #2
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r1, #0x90
	lsls r1, r1, #1
	movs r0, #5
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #6
	movs r1, #0
	bl sub_08041734
	movs r1, #0x98
	lsls r1, r1, #1
	movs r0, #6
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #6
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_08054650
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x1c
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E20 @ =0x002B0023
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080546C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl EventPlaceChara_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	movs r0, #0x3c
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E24 @ =0x002B0024
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E28 @ =0x002B0025
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054E2C @ =0x002B0026
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054E30 @ =0x002B0027
	bl EventWinMesSet_08041058
	movs r0, #0x9f
	bl EventUnsetFlag_080406D0
	movs r0, #0xa0
	bl EventUnsetFlag_080406D0
	movs r0, #0xa1
	bl UnsetEventFlag_080406D0
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
_08054DF8:
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_08054E04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054E0C: .4byte 0x002B0014
_08054E10: .4byte 0x002B001D
_08054E14: .4byte 0x002B001E
_08054E18: .4byte 0x002B001F
_08054E1C: .4byte 0x0808E8DC
_08054E20: .4byte 0x002B0023
_08054E24: .4byte 0x002B0024
_08054E28: .4byte 0x002B0025
_08054E2C: .4byte 0x002B0026
_08054E30: .4byte 0x002B0027

	thumb_func_start sub_08054E34
sub_08054E34: @ 0x08054E34
	push {lr}
	movs r0, #0xa0
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08054E46
	b _08054FAC
_08054E46:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	movs r0, #0x3c
	bl EventSleep_08040690
	bl sub_080545FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F84 @ =0x002B0028
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F88 @ =0x002B0029
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F8C @ =0x002B002A
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F90 @ =0x002B002B
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0x17
	bl QuestFinish_08042814
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F94 @ =0x002B002C
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054F98 @ =0x002B002D
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054F9C @ =0x002B002E
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054FA0 @ =0x002B002F
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054FA4 @ =0x002B0030
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054FA8 @ =0x002B0031
	bl EventWinMesSet_08041058
	movs r0, #0x6b
	bl EventSetMinigame_08040B84
	movs r0, #0xa1
	bl SetEventFlag_080406BC
	b _08055046
	.align 2, 0
_08054F84: .4byte 0x002B0028
_08054F88: .4byte 0x002B0029
_08054F8C: .4byte 0x002B002A
_08054F90: .4byte 0x002B002B
_08054F94: .4byte 0x002B002C
_08054F98: .4byte 0x002B002D
_08054F9C: .4byte 0x002B002E
_08054FA0: .4byte 0x002B002F
_08054FA4: .4byte 0x002B0030
_08054FA8: .4byte 0x002B0031
_08054FAC:
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805504C @ =0x002B0032
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055050 @ =0x002B0033
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055054 @ =0x002B0034
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08055058 @ =0x002B0035
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805505C @ =0x002B0036
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055060 @ =0x002B0037
	bl EventWinMesSet_08041058
	movs r0, #0x9f
	bl EventUnsetFlag_080406D0
	movs r0, #0xa0
	bl EventUnsetFlag_080406D0
	movs r0, #0xa1
	bl UnsetEventFlag_080406D0
_08055046:
	pop {r0}
	bx r0
	.align 2, 0
_0805504C: .4byte 0x002B0032
_08055050: .4byte 0x002B0033
_08055054: .4byte 0x002B0034
_08055058: .4byte 0x002B0035
_0805505C: .4byte 0x002B0036
_08055060: .4byte 0x002B0037

	thumb_func_start sub_08055064
sub_08055064: @ 0x08055064
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055110 @ =0x002B0038
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055114 @ =0x002B0039
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055118 @ =0x002B003A
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805511C @ =0x002B003B
	bl EventWinMesSet_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055120 @ =0x002B003C
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055124 @ =0x002B003D
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08055110: .4byte 0x002B0038
_08055114: .4byte 0x002B0039
_08055118: .4byte 0x002B003A
_0805511C: .4byte 0x002B003B
_08055120: .4byte 0x002B003C
_08055124: .4byte 0x002B003D

	thumb_func_start sub_08055128
sub_08055128: @ 0x08055128
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _080551AC @ =0x0808E3BC
	bl LoadBuildingBG_0804115C
	ldr r0, _080551B0 @ =0x0808E67C
	movs r1, #0x10
	movs r2, #0x30
	bl DisplayGFX_080414B4
	ldr r2, _080551B4 @ =0x0808E7BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x48
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _080551B8 @ =0x0808E70C
	movs r0, #4
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xa8
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _080551BC @ =0x0808E6BC
	movs r0, #7
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #7
	movs r1, #0
	bl sub_08041734
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	movs r0, #0xa1
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080551C4
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _080551C0 @ =sub_08055064
	bl RunEventScript_0804066C
	b _080552B8
	.align 2, 0
_080551AC: .4byte 0x0808E3BC
_080551B0: .4byte 0x0808E67C
_080551B4: .4byte 0x0808E7BC
_080551B8: .4byte 0x0808E70C
_080551BC: .4byte 0x0808E6BC
_080551C0: .4byte sub_08055064
_080551C4:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080551F4
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _080551F0 @ =sub_08054730
	bl RunEventScript_0804066C
	movs r0, #0x9f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080552B8
	movs r0, #0x6b
	bl EventQuestBegin_080406D0
	b _080552B8
	.align 2, 0
_080551F0: .4byte sub_08054730
_080551F4:
	ldr r4, _080552A4 @ =0x0808E9EC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
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
	movs r1, #3
	bl sub_08041864
	movs r0, #1
	movs r1, #0x70
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
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
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x58
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080552A8
	cmp r0, #1
	ble _080552B8
	cmp r0, #2
	beq _080552AE
	b _080552B8
	.align 2, 0
_080552A4: .4byte 0x0808E9EC
_080552A8:
	movs r0, #0xa0
	bl EventSetFlag_080406E4
_080552AE:
	ldr r0, _0805536C @ =sub_08054E34
	bl RunEventScript_0804066C
	bl sub_08040B28
_080552B8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
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
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #6
	bl sub_080417E0
	movs r0, #6
	movs r1, #0
	bl sub_08041684
	movs r0, #7
	bl sub_080417E0
	movs r0, #7
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805536C: .4byte sub_08054E34
