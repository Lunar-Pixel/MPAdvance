	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08051A68
sub_08051A68: @ 0x08051A68
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x60
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x5c
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x5c
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x60
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #2
	bl sub_08041938
	movs r0, #0x1e
	bl EventSleep_08040690
	pop {r0}
	bx r0

	thumb_func_start sub_08051B70
sub_08051B70: @ 0x08051B70
	push {lr}
	bl sub_08051A68
	bl sub_08051A68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08051BDC @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	movs r0, #0xd0
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	ldr r0, _08051BE0 @ =0x000D0001
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08051BE8
	ldr r0, _08051BE4 @ =0x000D0002
	bl EventWinMesSet_08041058
	b _08051CCC
	.align 2, 0
_08051BDC: .4byte 0x0000011F
_08051BE0: .4byte 0x000D0001
_08051BE4: .4byte 0x000D0002
_08051BE8:
	ldr r1, _08051C60 @ =0x000D0003
	movs r0, #0xc
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051CCC
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051C64 @ =0x000D0004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051C68 @ =0x000D0005
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051C6C @ =0x000D0006
	bl EventWinMesSet_08041058
	ldr r0, _08051C70 @ =0x000D0007
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051C78
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051C74 @ =0x000D0008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	b _08051C84
	.align 2, 0
_08051C60: .4byte 0x000D0003
_08051C64: .4byte 0x000D0004
_08051C68: .4byte 0x000D0005
_08051C6C: .4byte 0x000D0006
_08051C70: .4byte 0x000D0007
_08051C74: .4byte 0x000D0008
_08051C78:
	ldr r0, _08051CD0 @ =0x000D000C
	bl EventWinMesSet_08041058
	ldr r0, _08051CD4 @ =0x000D000D
	bl EventWinMesSet_08041058
_08051C84:
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051CD8 @ =0x000D0009
	bl EventWinMesSet_08041058
	ldr r0, _08051CDC @ =0x000D000A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051CE0 @ =0x000D000B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0x32
	bl EventSetFlag_080406E4
	movs r0, #0x20
	bl SetCharacterMetFlag_0802D7CC
_08051CCC:
	pop {r0}
	bx r0
	.align 2, 0
_08051CD0: .4byte 0x000D000C
_08051CD4: .4byte 0x000D000D
_08051CD8: .4byte 0x000D0009
_08051CDC: .4byte 0x000D000A
_08051CE0: .4byte 0x000D000B

	thumb_func_start sub_08051CE4
sub_08051CE4: @ 0x08051CE4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	movs r0, #0x33
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051D6C
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051D5C @ =0x000D000E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051D60 @ =0x000D000F
	bl EventWinMesSet_08041058
	movs r0, #0x31
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051D64 @ =0x000D0010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051D68 @ =0x000D0011
	bl EventWinMesSet_08041058
	movs r0, #0x35
	bl SetEventFlag_080406BC
	b _08051DAE
	.align 2, 0
_08051D5C: .4byte 0x000D000E
_08051D60: .4byte 0x000D000F
_08051D64: .4byte 0x000D0010
_08051D68: .4byte 0x000D0011
_08051D6C:
	ldr r0, _08051DB4 @ =0x000D0012
	bl EventWinMesSet_08041058
	ldr r0, _08051DB8 @ =0x000D0013
	bl EventWinMesSet_08041058
	ldr r0, _08051DBC @ =0x000D0014
	bl EventWinMesSet_08041058
	ldr r0, _08051DC0 @ =0x000D0015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08051DC4 @ =0x000D0016
	bl EventWinMesSet_08041058
	movs r0, #0x32
	bl EventUnsetFlag_080406D0
	movs r0, #0x33
	bl EventUnsetFlag_080406D0
	movs r0, #0x34
	bl EventUnsetFlag_080406D0
	movs r0, #0x35
	bl UnsetEventFlag_080406D0
_08051DAE:
	pop {r0}
	bx r0
	.align 2, 0
_08051DB4: .4byte 0x000D0012
_08051DB8: .4byte 0x000D0013
_08051DBC: .4byte 0x000D0014
_08051DC0: .4byte 0x000D0015
_08051DC4: .4byte 0x000D0016

	thumb_func_start sub_08051DC8
sub_08051DC8: @ 0x08051DC8
	push {lr}
	bl sub_08051A68
	bl sub_08051A68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x1e
	bl EventWinSpeakerSet_08041018
	ldr r0, _08051E10 @ =0x000D0017
	bl EventWinMesSet_08041058
	ldr r0, _08051E14 @ =0x000D0018
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08051E18 @ =0x000D0019
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08051E10: .4byte 0x000D0017
_08051E14: .4byte 0x000D0018
_08051E18: .4byte 0x000D0019

	thumb_func_start sub_08051E1C
sub_08051E1C: @ 0x08051E1C
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _08051EDC @ =0x0808E2A4
	bl LoadBuildingBG_0804115C
	ldr r4, _08051EE0 @ =0x0808E8FC
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
	ldr r2, _08051EE4 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x44
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x40
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0x13
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
	movs r1, #0xb0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0x13
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x35
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051EEC
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08051EE8 @ =sub_08051DC8
	bl RunEventScript_0804066C
	b _08051F3E
	.align 2, 0
_08051EDC: .4byte 0x0808E2A4
_08051EE0: .4byte 0x0808E8FC
_08051EE4: .4byte 0x0808E6BC
_08051EE8: .4byte sub_08051DC8
_08051EEC:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051F1C
	movs r0, #0x1d
	bl EventBGMPlay_080410A8
	ldr r0, _08051F18 @ =sub_08051B70
	bl RunEventScript_0804066C
	movs r0, #0x32
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051F3E
	movs r0, #2
	bl sub_08040F18
	b _08051F3E
	.align 2, 0
_08051F18: .4byte sub_08051B70
_08051F1C:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051F34
	movs r0, #0x33
	bl EventSetFlag_080406E4
_08051F34:
	ldr r0, _08051F8C @ =sub_08051CE4
	bl RunEventScript_0804066C
	bl sub_08040F0C
_08051F3E:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
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
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051F8C: .4byte sub_08051CE4
