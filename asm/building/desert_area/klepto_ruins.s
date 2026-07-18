	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804ED60
sub_0804ED60: @ 0x0804ED60
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl EventPlaceChara_08041894
	bl sub_080407FC
	ldr r0, _0804EE24 @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x40
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
	movs r4, #0x96
	lsls r4, r4, #1
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	movs r0, #0x98
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EE28 @ =0x00130001
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EE2C @ =0x00130002
	bl EventWinMesSet_08041058
	ldr r0, _0804EE30 @ =0x00130003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804EE3C
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804EE34 @ =0x00130004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EE38 @ =0x00130005
	bl EventWinMesSet_08041058
	b _0804F098
	.align 2, 0
_0804EE24: .4byte 0x0000011B
_0804EE28: .4byte 0x00130001
_0804EE2C: .4byte 0x00130002
_0804EE30: .4byte 0x00130003
_0804EE34: .4byte 0x00130004
_0804EE38: .4byte 0x00130005
_0804EE3C:
	ldr r1, _0804EFE0 @ =0x00130006
	movs r0, #0x12
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804EE4C
	b _0804F098
_0804EE4C:
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804EFE4 @ =0x00130007
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EFE8 @ =0x00130008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EFEC @ =0x00130009
	bl EventWinMesSet_08041058
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804EFF0 @ =0x0013000B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804EFF4 @ =0x0013000C
	bl EventWinMesSet_08041058
	ldr r0, _0804EFF8 @ =0x0013000D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804EFFC @ =0x0013000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F000 @ =0x0013000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x30
	movs r3, #0x30
	bl sub_08041938
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0x42
	bl sub_08041830
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x48
	movs r3, #0x28
	bl sub_08041938
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F004 @ =0x00130010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F008 @ =0x00130011
	bl EventWinMesSet_08041058
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F00C @ =0x00130012
	bl EventWinMesSet_08041058
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F010 @ =0x00130013
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F014 @ =0x00130014
	bl EventWinMesSet_08041058
	ldr r0, _0804F018 @ =0x00130015
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F020
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _0804F01C @ =0x00130016
	bl EventWinMesSet_08041058
	b _0804F044
	.align 2, 0
_0804EFE0: .4byte 0x00130006
_0804EFE4: .4byte 0x00130007
_0804EFE8: .4byte 0x00130008
_0804EFEC: .4byte 0x00130009
_0804EFF0: .4byte 0x0013000B
_0804EFF4: .4byte 0x0013000C
_0804EFF8: .4byte 0x0013000D
_0804EFFC: .4byte 0x0013000E
_0804F000: .4byte 0x0013000F
_0804F004: .4byte 0x00130010
_0804F008: .4byte 0x00130011
_0804F00C: .4byte 0x00130012
_0804F010: .4byte 0x00130013
_0804F014: .4byte 0x00130014
_0804F018: .4byte 0x00130015
_0804F01C: .4byte 0x00130016
_0804F020:
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F0A0 @ =0x0013001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F0A4 @ =0x0013001C
	bl EventWinMesSet_08041058
_0804F044:
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F0A8 @ =0x00130017
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804F0AC @ =0x00130018
	bl EventWinMesSet_08041058
	ldr r0, _0804F0B0 @ =0x00130019
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F0B4 @ =0x0013001A
	bl EventWinMesSet_08041058
	movs r0, #0x4a
	bl EventSetFlag_080406E4
	movs r0, #9
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x12
	bl SetCharacterMetFlag_0802D7CC
_0804F098:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0A0: .4byte 0x0013001B
_0804F0A4: .4byte 0x0013001C
_0804F0A8: .4byte 0x00130017
_0804F0AC: .4byte 0x00130018
_0804F0B0: .4byte 0x00130019
_0804F0B4: .4byte 0x0013001A

	thumb_func_start sub_0804F0B8
sub_0804F0B8: @ 0x0804F0B8
	push {lr}
	movs r0, #0x4b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804F0CA
	b _0804F228
_0804F0CA:
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x40
	movs r2, #0x60
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x42
	bl sub_08041830
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F200 @ =0x0013001D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x31
	bl EventSleep_08040690
	movs r0, #0x96
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F204 @ =0x0013001E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804F208 @ =0x0013001F
	bl EventWinMesSet_08041058
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F20C @ =0x00130020
	bl EventWinMesSet_08041058
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F210 @ =0x00130021
	bl EventWinMesSet_08041058
	ldr r0, _0804F214 @ =0x00130022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804F218 @ =0x00130023
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0x8e
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0x60
	movs r3, #8
	bl sub_08041938
	movs r0, #0x78
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F21C @ =0x00130024
	bl EventWinMesSet_08041058
	ldr r0, _0804F220 @ =0x00130025
	bl EventWinMesSet_08041058
	movs r0, #0x19
	movs r1, #0x13
	bl QuestFinish_08042814
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804F224 @ =0x00130026
	bl EventWinMesSet_08041058
	movs r0, #0x4d
	bl SetEventFlag_080406BC
	b _0804F2BA
	.align 2, 0
_0804F200: .4byte 0x0013001D
_0804F204: .4byte 0x0013001E
_0804F208: .4byte 0x0013001F
_0804F20C: .4byte 0x00130020
_0804F210: .4byte 0x00130021
_0804F214: .4byte 0x00130022
_0804F218: .4byte 0x00130023
_0804F21C: .4byte 0x00130024
_0804F220: .4byte 0x00130025
_0804F224: .4byte 0x00130026
_0804F228:
	movs r0, #0
	movs r1, #0x40
	movs r2, #0x60
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x42
	bl sub_08041830
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F2C0 @ =0x00130027
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804F2C4 @ =0x00130028
	bl EventWinMesSet_08041058
	ldr r0, _0804F2C8 @ =0x00130029
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x38
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F2CC @ =0x0013002A
	bl EventWinMesSet_08041058
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F2D0 @ =0x0013002B
	bl EventWinMesSet_08041058
	ldr r0, _0804F2D4 @ =0x0013002C
	bl EventWinMesSet_08041058
	ldr r0, _0804F2D8 @ =0x0013002D
	bl EventWinMesSet_08041058
	movs r0, #0x4b
	bl EventUnsetFlag_080406D0
	movs r0, #0x4c
	bl EventUnsetFlag_080406D0
	movs r0, #0x4a
	bl EventUnsetFlag_080406D0
	movs r0, #0x4d
	bl UnsetEventFlag_080406D0
_0804F2BA:
	pop {r0}
	bx r0
	.align 2, 0
_0804F2C0: .4byte 0x00130027
_0804F2C4: .4byte 0x00130028
_0804F2C8: .4byte 0x00130029
_0804F2CC: .4byte 0x0013002A
_0804F2D0: .4byte 0x0013002B
_0804F2D4: .4byte 0x0013002C
_0804F2D8: .4byte 0x0013002D

	thumb_func_start sub_0804F2DC
sub_0804F2DC: @ 0x0804F2DC
	push {lr}
	movs r0, #1
	movs r1, #0x42
	bl sub_08041830
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x1f
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804F320 @ =0x0013002E
	bl EventWinMesSet_08041058
	ldr r0, _0804F324 @ =0x0013002F
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804F320: .4byte 0x0013002E
_0804F324: .4byte 0x0013002F

	thumb_func_start sub_0804F328
sub_0804F328: @ 0x0804F328
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _0804F42C @ =0x0808E1B4
	bl LoadBuildingBG_0804115C
	ldr r4, _0804F430 @ =0x0808E6DC
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x78
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r2, _0804F434 @ =0x0808E90C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x48
	bl EventPlaceChara_08041894
	ldr r2, _0804F438 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	ldr r2, _0804F43C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x64
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0x78
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #4
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #0x88
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #5
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	movs r0, #0x4d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804F444
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804F440 @ =sub_0804F2DC
	bl RunEventScript_0804066C
	b _0804F496
	.align 2, 0
_0804F42C: .4byte 0x0808E1B4
_0804F430: .4byte 0x0808E6DC
_0804F434: .4byte 0x0808E90C
_0804F438: .4byte 0x0808EA6C
_0804F43C: .4byte 0x0808E6BC
_0804F440: .4byte sub_0804F2DC
_0804F444:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F474
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804F470 @ =sub_0804ED60
	bl RunEventScript_0804066C
	movs r0, #0x4a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804F496
	movs r0, #8
	bl sub_08040F18
	b _0804F496
	.align 2, 0
_0804F470: .4byte sub_0804ED60
_0804F474:
	movs r0, #0x13
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804F48C
	movs r0, #0x4b
	bl EventSetFlag_080406E4
_0804F48C:
	ldr r0, _0804F500 @ =sub_0804F0B8
	bl RunEventScript_0804066C
	bl sub_08040F0C
_0804F496:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
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
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F500: .4byte sub_0804F0B8
