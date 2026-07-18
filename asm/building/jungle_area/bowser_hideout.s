	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08053208
sub_08053208: @ 0x08053208
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0xd0
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053368 @ =0x001A0001
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805336C @ =0x001A0002
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053370 @ =0x001A0003
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053374 @ =0x001A0004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053378 @ =0x001A0005
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805337C @ =0x001A0006
	bl EventWinMesSet_08041058
	ldr r0, _08053380 @ =0x001A0007
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053394
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08053384 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053388 @ =0x001A0008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805338C @ =0x001A0009
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053390 @ =0x001A000A
	bl EventWinMesSet_08041058
	b _08053586
	.align 2, 0
_08053368: .4byte 0x001A0001
_0805336C: .4byte 0x001A0002
_08053370: .4byte 0x001A0003
_08053374: .4byte 0x001A0004
_08053378: .4byte 0x001A0005
_0805337C: .4byte 0x001A0006
_08053380: .4byte 0x001A0007
_08053384: .4byte 0x0000011F
_08053388: .4byte 0x001A0008
_0805338C: .4byte 0x001A0009
_08053390: .4byte 0x001A000A
_08053394:
	ldr r1, _0805348C @ =0x001A000B
	movs r0, #0x19
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080533A4
	b _08053586
_080533A4:
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053490 @ =0x001A000C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053494 @ =0x001A000D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053498 @ =0x001A000E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805349C @ =0x001A000F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080534A0 @ =0x001A0010
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080534A4 @ =0x001A0011
	bl EventWinMesSet_08041058
	ldr r0, _080534A8 @ =0x001A0012
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080534B4
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080534AC @ =0x001A0013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080534B0 @ =0x001A0014
	bl EventWinMesSet_08041058
	b _080534DE
	.align 2, 0
_0805348C: .4byte 0x001A000B
_08053490: .4byte 0x001A000C
_08053494: .4byte 0x001A000D
_08053498: .4byte 0x001A000E
_0805349C: .4byte 0x001A000F
_080534A0: .4byte 0x001A0010
_080534A4: .4byte 0x001A0011
_080534A8: .4byte 0x001A0012
_080534AC: .4byte 0x001A0013
_080534B0: .4byte 0x001A0014
_080534B4:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805358C @ =0x001A001C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053590 @ =0x001A001D
	bl EventWinMesSet_08041058
_080534DE:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053594 @ =0x001A0015
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08053598 @ =0x001A0016
	bl EventWinMesSet_08041058
	ldr r0, _0805359C @ =0x001A0017
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080535A0 @ =0x001A0018
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080535A4 @ =0x001A0019
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080535A8 @ =0x001A001A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080535AC @ =0x001A001B
	bl EventWinMesSet_08041058
	movs r0, #0x66
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_08053586:
	pop {r0}
	bx r0
	.align 2, 0
_0805358C: .4byte 0x001A001C
_08053590: .4byte 0x001A001D
_08053594: .4byte 0x001A0015
_08053598: .4byte 0x001A0016
_0805359C: .4byte 0x001A0017
_080535A0: .4byte 0x001A0018
_080535A4: .4byte 0x001A0019
_080535A8: .4byte 0x001A001A
_080535AC: .4byte 0x001A001B

	thumb_func_start sub_080535B0
sub_080535B0: @ 0x080535B0
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x67
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080535C4
	b _080536F4
_080535C4:
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536C4 @ =0x001A001E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536C8 @ =0x001A001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536CC @ =0x001A0020
	bl EventWinMesSet_08041058
	ldr r0, _080536D0 @ =0x001A0021
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536D4 @ =0x001A0022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536D8 @ =0x001A0023
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536DC @ =0x001A0024
	bl EventWinMesSet_08041058
	ldr r1, _080536E0 @ =0x0046002C
	movs r0, #0x71
	bl EventMgSpecialGoal_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536E4 @ =0x001A0025
	bl EventWinMesSet_08041058
	bl sub_08040BB8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080536E8 @ =0x001A0026
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536EC @ =0x001A0027
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080536F0 @ =0x001A0028
	bl EventWinMesSet_08041058
	b _080537A2
	.align 2, 0
_080536C4: .4byte 0x001A001E
_080536C8: .4byte 0x001A001F
_080536CC: .4byte 0x001A0020
_080536D0: .4byte 0x001A0021
_080536D4: .4byte 0x001A0022
_080536D8: .4byte 0x001A0023
_080536DC: .4byte 0x001A0024
_080536E0: .4byte 0x0046002C
_080536E4: .4byte 0x001A0025
_080536E8: .4byte 0x001A0026
_080536EC: .4byte 0x001A0027
_080536F0: .4byte 0x001A0028
_080536F4:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080537A8 @ =0x001A003C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080537AC @ =0x001A003D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080537B0 @ =0x001A003E
	bl EventWinMesSet_08041058
	ldr r0, _080537B4 @ =0x001A003F
	bl EventWinMesSet_08041058
	ldr r0, _080537B8 @ =0x001A0039
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080537BC @ =0x001A003A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080537C0 @ =0x001A003B
	bl EventWinMesSet_08041058
	movs r0, #0x66
	bl EventUnsetFlag_080406D0
	movs r0, #0x67
	bl EventUnsetFlag_080406D0
	movs r0, #0x68
	bl EventUnsetFlag_080406D0
	movs r0, #0x69
	bl UnsetEventFlag_080406D0
_080537A2:
	pop {r0}
	bx r0
	.align 2, 0
_080537A8: .4byte 0x001A003C
_080537AC: .4byte 0x001A003D
_080537B0: .4byte 0x001A003E
_080537B4: .4byte 0x001A003F
_080537B8: .4byte 0x001A0039
_080537BC: .4byte 0x001A003A
_080537C0: .4byte 0x001A003B

	thumb_func_start sub_080537C4
sub_080537C4: @ 0x080537C4
	push {lr}
	movs r0, #0x68
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080537D6
	b _08053984
_080537D6:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053954 @ =0x001A0029
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053958 @ =0x001A002A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805395C @ =0x001A002B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053960 @ =0x001A002C
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x14
	bl StopSongID_080410C0
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	bl EventWinInit_08040fe8
	movs r0, #4
	movs r1, #0x1c
	bl sub_08005BE0
	movs r0, #0x52
	bl EventWinMesSet_08041058
	movs r0, #0x1c
	bl EventSetMinigame_08040B84
	movs r0, #4
	movs r1, #0x20
	bl sub_08005BE0
	movs r0, #0x52
	bl EventWinMesSet_08041058
	movs r0, #0x20
	bl EventSetMinigame_08040B84
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl sub_08041008
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053964 @ =0x001A002D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08053968 @ =0x001A002E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805396C @ =0x001A002F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053970 @ =0x001A0030
	bl EventWinMesSet_08041058
	ldr r0, _08053974 @ =0x001A0031
	bl EventWinMesSet_08041058
	ldr r0, _08053978 @ =0x001A0032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805397C @ =0x001A0033
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053980 @ =0x001A0034
	bl EventWinMesSet_08041058
	movs r0, #0x71
	bl EventSetMinigame_08040B84
	movs r0, #0x69
	bl SetEventFlag_080406BC
	b _08053A42
	.align 2, 0
_08053954: .4byte 0x001A0029
_08053958: .4byte 0x001A002A
_0805395C: .4byte 0x001A002B
_08053960: .4byte 0x001A002C
_08053964: .4byte 0x001A002D
_08053968: .4byte 0x001A002E
_0805396C: .4byte 0x001A002F
_08053970: .4byte 0x001A0030
_08053974: .4byte 0x001A0031
_08053978: .4byte 0x001A0032
_0805397C: .4byte 0x001A0033
_08053980: .4byte 0x001A0034
_08053984:
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053A48 @ =0x001A0035
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08053A4C @ =0x001A0036
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053A50 @ =0x001A0037
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053A54 @ =0x001A0038
	bl EventWinMesSet_08041058
	ldr r0, _08053A58 @ =0x001A0039
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08053A5C @ =0x001A003A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053A60 @ =0x001A003B
	bl EventWinMesSet_08041058
	movs r0, #0x66
	bl EventUnsetFlag_080406D0
	movs r0, #0x67
	bl EventUnsetFlag_080406D0
	movs r0, #0x68
	bl EventUnsetFlag_080406D0
	movs r0, #0x69
	bl UnsetEventFlag_080406D0
_08053A42:
	pop {r0}
	bx r0
	.align 2, 0
_08053A48: .4byte 0x001A0035
_08053A4C: .4byte 0x001A0036
_08053A50: .4byte 0x001A0037
_08053A54: .4byte 0x001A0038
_08053A58: .4byte 0x001A0039
_08053A5C: .4byte 0x001A003A
_08053A60: .4byte 0x001A003B

	thumb_func_start sub_08053A64
sub_08053A64: @ 0x08053A64
	push {lr}
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B58 @ =0x001A0040
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B5C @ =0x001A0041
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B60 @ =0x001A0042
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B64 @ =0x001A0043
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B68 @ =0x001A0044
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053B6C @ =0x001A0045
	bl EventWinMesSet_08041058
	ldr r0, _08053B70 @ =0x001A0046
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08053B58: .4byte 0x001A0040
_08053B5C: .4byte 0x001A0041
_08053B60: .4byte 0x001A0042
_08053B64: .4byte 0x001A0043
_08053B68: .4byte 0x001A0044
_08053B6C: .4byte 0x001A0045
_08053B70: .4byte 0x001A0046

	thumb_func_start sub_08053B74
sub_08053B74: @ 0x08053B74
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08053C14 @ =0x0808E36C
	bl LoadBuildingBG_0804115C
	ldr r2, _08053C18 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x50
	bl EventPlaceChara_08041894
	ldr r2, _08053C1C @ =0x0808E71C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xb0
	movs r2, #0x63
	bl EventPlaceChara_08041894
	ldr r2, _08053C20 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0x68
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053BF4
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
_08053BF4:
	bl sub_080407FC
	movs r0, #0x68
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053C28
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	ldr r0, _08053C24 @ =sub_08053A64
	bl RunEventScript_0804066C
	b _08053CC6
	.align 2, 0
_08053C14: .4byte 0x0808E36C
_08053C18: .4byte 0x0808E7BC
_08053C1C: .4byte 0x0808E71C
_08053C20: .4byte 0x0808E6BC
_08053C24: .4byte sub_08053A64
_08053C28:
	movs r0, #0x67
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053C64
	movs r0, #0x14
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08053C4E
	cmp r0, #1
	ble _08053CC6
	cmp r0, #2
	beq _08053C54
	b _08053CC6
_08053C4E:
	movs r0, #0x68
	bl EventSetFlag_080406E4
_08053C54:
	ldr r0, _08053C60 @ =sub_080537C4
	bl RunEventScript_0804066C
	bl sub_08040B28
	b _08053CC6
	.align 2, 0
_08053C60: .4byte sub_080537C4
_08053C64:
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053C94
	ldr r0, _08053C90 @ =sub_08053208
	bl RunEventScript_0804066C
	movs r0, #0x66
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053CC6
	movs r0, #0xa
	bl sub_08040F18
	b _08053CC6
	.align 2, 0
_08053C90: .4byte sub_08053208
_08053C94:
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053CBC
	movs r0, #0x67
	bl EventSetFlag_080406E4
	ldr r0, _08053CB8 @ =sub_080535B0
	bl RunEventScript_0804066C
	bl sub_08040F0C
	movs r0, #0x71
	bl EventQuestBegin_080406D0
	b _08053CC6
	.align 2, 0
_08053CB8: .4byte sub_080535B0
_08053CBC:
	ldr r0, _08053D04 @ =sub_080535B0
	bl RunEventScript_0804066C
	bl sub_08040F0C
_08053CC6:
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
_08053D04: .4byte sub_080535B0
