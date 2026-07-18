	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08047D08
sub_08047D08: @ 0x08047D08
	push {lr}
	bl sub_080407FC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08047D64 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047D68 @ =0x00010030
	bl EventWinMesSet_08041058
_08047D46:
	bl sub_08041048
	ldr r0, _08047D6C @ =0x00010027
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08047D70
	cmp r0, #1
	beq _08047E0C
	b _08047E70
	.align 2, 0
_08047D64: .4byte 0x0000011F
_08047D68: .4byte 0x00010030
_08047D6C: .4byte 0x00010027
_08047D70:
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047DF8 @ =0x00010031
	bl EventWinMesSet_08041058
	ldr r0, _08047DFC @ =0x00010032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x2a
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08047E00 @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _08047E04 @ =0x00010033
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047E08 @ =0x00010034
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventSetFlag_080406E4
	b _08047D46
	.align 2, 0
_08047DF8: .4byte 0x00010031
_08047DFC: .4byte 0x00010032
_08047E00: .4byte 0x00000129
_08047E04: .4byte 0x00010033
_08047E08: .4byte 0x00010034
_08047E0C:
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047E64 @ =0x00010035
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08047E68 @ =0x00000123
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047E6C @ =0x00010036
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	b _08047D46
	.align 2, 0
_08047E64: .4byte 0x00010035
_08047E68: .4byte 0x00000123
_08047E6C: .4byte 0x00010036
_08047E70:
	ldr r0, _08047E88 @ =0x0001002F
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08047E84
	b _08047D46
_08047E84:
	pop {r0}
	bx r0
	.align 2, 0
_08047E88: .4byte 0x0001002F

	thumb_func_start sub_08047E8C
sub_08047E8C: @ 0x08047E8C
	push {lr}
	bl sub_080407FC
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x58
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	movs r0, #0xa0
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	ldr r0, _08047F34 @ =0x000A0001
	bl EventWinMesSet_08041058
	ldr r0, _08047F38 @ =0x000A0002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047F40
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl EventSleep_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047F3C @ =0x000A0003
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	b _08048088
	.align 2, 0
_08047F34: .4byte 0x000A0001
_08047F38: .4byte 0x000A0002
_08047F3C: .4byte 0x000A0003
_08047F40:
	ldr r1, _08048008 @ =0x000A0004
	movs r0, #9
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047F50
	b _08048088
_08047F50:
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804800C @ =0x000A0005
	bl EventWinMesSet_08041058
	ldr r0, _08048010 @ =0x000A0006
	bl EventWinMesSet_08041058
	ldr r0, _08048014 @ =0x000A0007
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048018 @ =0x000A0008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804801C @ =0x000A0009
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08048020 @ =0x00000123
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048024 @ =0x000A000A
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08048028 @ =0x000A000B
	bl EventWinMesSet_08041058
	ldr r0, _0804802C @ =0x000A000C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048034
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048030 @ =0x000A000D
	bl EventWinMesSet_08041058
	b _08048064
	.align 2, 0
_08048008: .4byte 0x000A0004
_0804800C: .4byte 0x000A0005
_08048010: .4byte 0x000A0006
_08048014: .4byte 0x000A0007
_08048018: .4byte 0x000A0008
_0804801C: .4byte 0x000A0009
_08048020: .4byte 0x00000123
_08048024: .4byte 0x000A000A
_08048028: .4byte 0x000A000B
_0804802C: .4byte 0x000A000C
_08048030: .4byte 0x000A000D
_08048034:
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #2
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804808C @ =0x000A0010
	bl EventWinMesSet_08041058
	ldr r0, _08048090 @ =0x000A0011
	bl EventWinMesSet_08041058
_08048064:
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048094 @ =0x000A000E
	bl EventWinMesSet_08041058
	ldr r0, _08048098 @ =0x000A000F
	bl EventWinMesSet_08041058
	movs r0, #0x25
	bl EventSetFlag_080406E4
	movs r0, #0xd
	bl SetCharacterMetFlag_0802D7CC
_08048088:
	pop {r0}
	bx r0
	.align 2, 0
_0804808C: .4byte 0x000A0010
_08048090: .4byte 0x000A0011
_08048094: .4byte 0x000A000E
_08048098: .4byte 0x000A000F

	thumb_func_start sub_0804809C
sub_0804809C: @ 0x0804809C
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _080480D0 @ =0x000A0012
	bl EventWinMesSet_08041058
	ldr r0, _080480D4 @ =0x000A0013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080480D8 @ =0x000A0014
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080480D0: .4byte 0x000A0012
_080480D4: .4byte 0x000A0013
_080480D8: .4byte 0x000A0014

	thumb_func_start sub_080480DC
sub_080480DC: @ 0x080480DC
	push {r4, lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048328 @ =0x000A001A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804832C @ =0x000A001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048330 @ =0x000A001C
	bl EventWinMesSet_08041058
	movs r0, #0x18
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048334 @ =0x000A001D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x34
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048338 @ =0x000A001E
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	ldr r0, _0804833C @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x18
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048340 @ =0x000A001F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _08048344 @ =0x000A0020
	bl EventWinMesSet_08041058
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048348 @ =0x000A0021
	bl EventWinMesSet_08041058
	ldr r0, _0804834C @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x24
	movs r3, #8
	bl sub_08041938
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x34
	movs r3, #8
	bl sub_08041938
	movs r0, #0x18
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048350 @ =0x000A0022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048354 @ =0x000A0023
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x18
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048358 @ =0x000A0024
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r4, _0804835C @ =0x00000123
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048360 @ =0x000A0025
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #0x18
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048364 @ =0x000A0026
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _08048368 @ =0x000A0027
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804836C @ =0x000A0028
	bl EventWinMesSet_08041058
	movs r0, #0x8e
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0xf0
	movs r2, #0x34
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048370 @ =0x000A0029
	bl EventWinMesSet_08041058
	ldr r0, _08048374 @ =0x000A002A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08048378 @ =0x000A002B
	bl EventWinMesSet_08041058
	movs r0, #0x39
	movs r1, #0x11
	bl QuestFinish_08042814
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804837C @ =0x000A002C
	bl EventWinMesSet_08041058
	movs r0, #0x28
	bl SetEventFlag_080406BC
	movs r0, #0x31
	bl SetCharacterMetFlag_0802D7CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048328: .4byte 0x000A001A
_0804832C: .4byte 0x000A001B
_08048330: .4byte 0x000A001C
_08048334: .4byte 0x000A001D
_08048338: .4byte 0x000A001E
_0804833C: .4byte 0x0000011F
_08048340: .4byte 0x000A001F
_08048344: .4byte 0x000A0020
_08048348: .4byte 0x000A0021
_0804834C: .4byte 0x0000011B
_08048350: .4byte 0x000A0022
_08048354: .4byte 0x000A0023
_08048358: .4byte 0x000A0024
_0804835C: .4byte 0x00000123
_08048360: .4byte 0x000A0025
_08048364: .4byte 0x000A0026
_08048368: .4byte 0x000A0027
_0804836C: .4byte 0x000A0028
_08048370: .4byte 0x000A0029
_08048374: .4byte 0x000A002A
_08048378: .4byte 0x000A002B
_0804837C: .4byte 0x000A002C

	thumb_func_start sub_08048380
sub_08048380: @ 0x08048380
	push {lr}
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x34
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x17
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080483E0 @ =0x000A002D
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _080483E4 @ =0x00000123
	bl EventPlaySFX_080410E0
	ldr r0, _080483E8 @ =0x000A002E
	bl EventWinMesSet_08041058
	ldr r0, _080483EC @ =0x000A002F
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080483E0: .4byte 0x000A002D
_080483E4: .4byte 0x00000123
_080483E8: .4byte 0x000A002E
_080483EC: .4byte 0x000A002F

	thumb_func_start sub_080483F0
sub_080483F0: @ 0x080483F0
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08048444 @ =0x0808DF34
	bl LoadBuildingBG_0804115C
	ldr r2, _08048448 @ =0x0808E89C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x34
	bl EventPlaceChara_08041894
	ldr r2, _0804844C @ =0x0808EA8C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #0x28
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08048450
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x34
	bl EventPlaceChara_08041894
	b _0804845A
	.align 2, 0
_08048444: .4byte 0x0808DF34
_08048448: .4byte 0x0808E89C
_0804844C: .4byte 0x0808EA8C
_08048450:
	movs r0, #1
	movs r1, #0xf0
	movs r2, #0x34
	bl EventPlaceChara_08041894
_0804845A:
	movs r0, #1
	movs r1, #3
	bl sub_08041864
	ldr r2, _080484B0 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x1c
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080484B8
	movs r0, #2
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080484B8
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _080484B4 @ =sub_08047D08
	bl RunEventScript_0804066C
	b _0804851E
	.align 2, 0
_080484B0: .4byte 0x0808E6BC
_080484B4: .4byte sub_08047D08
_080484B8:
	movs r0, #0x28
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080484D8
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080484D4 @ =sub_08048380
	bl RunEventScript_0804066C
	b _0804851E
	.align 2, 0
_080484D4: .4byte sub_08048380
_080484D8:
	movs r0, #0x25
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080484F8
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080484F4 @ =sub_08047E8C
	bl RunEventScript_0804066C
	b _0804851E
	.align 2, 0
_080484F4: .4byte sub_08047E8C
_080484F8:
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	movs r0, #0x26
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048518
	ldr r0, _08048514 @ =sub_0804809C
	bl RunEventScript_0804066C
	b _0804851E
	.align 2, 0
_08048514: .4byte sub_0804809C
_08048518:
	ldr r0, _0804855C @ =sub_080480DC
	bl RunEventScript_0804066C
_0804851E:
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
_0804855C: .4byte sub_080480DC
