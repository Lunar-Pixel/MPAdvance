	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804E730
sub_0804E730: @ 0x0804E730
	push {lr}
	movs r0, #0
	movs r1, #0x78
	movs r2, #0xa0
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x2c
	bl EventWinSpeakerSet_08041018
	movs r0, #0xb4
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _0804E784 @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x40
	movs r3, #0x14
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	pop {r0}
	bx r0
	.align 2, 0
_0804E784: .4byte 0x0000011B

	thumb_func_start sub_0804E788
sub_0804E788: @ 0x0804E788
	push {lr}
	bl sub_0804E730
	ldr r0, _0804E7B8 @ =0x002D0001
	bl EventWinMesSet_08041058
	ldr r0, _0804E7BC @ =0x002D0002
	bl EventWinMesSet_08041058
	ldr r0, _0804E7C0 @ =0x002D0003
	bl EventWinMesSet_08041058
	ldr r0, _0804E7C4 @ =0x002D0004
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E7CC
	ldr r0, _0804E7C8 @ =0x002D0005
	bl EventWinMesSet_08041058
	b _0804E892
	.align 2, 0
_0804E7B8: .4byte 0x002D0001
_0804E7BC: .4byte 0x002D0002
_0804E7C0: .4byte 0x002D0003
_0804E7C4: .4byte 0x002D0004
_0804E7C8: .4byte 0x002D0005
_0804E7CC:
	ldr r1, _0804E828 @ =0x002D0006
	movs r0, #0x2c
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E892
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x2c
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804E82C @ =0x002D0007
	bl EventWinMesSet_08041058
	ldr r0, _0804E830 @ =0x002D0008
	bl EventWinMesSet_08041058
	ldr r0, _0804E834 @ =0x002D0009
	bl EventWinMesSet_08041058
	ldr r0, _0804E838 @ =0x002D000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E84C
	ldr r0, _0804E83C @ =0x002D000B
	bl EventWinMesSet_08041058
	ldr r0, _0804E840 @ =0x002D000C
	bl EventWinMesSet_08041058
	ldr r0, _0804E844 @ =0x002D000D
	bl EventWinMesSet_08041058
	ldr r0, _0804E848 @ =0x002D000E
	bl EventWinMesSet_08041058
	b _0804E886
	.align 2, 0
_0804E828: .4byte 0x002D0006
_0804E82C: .4byte 0x002D0007
_0804E830: .4byte 0x002D0008
_0804E834: .4byte 0x002D0009
_0804E838: .4byte 0x002D000A
_0804E83C: .4byte 0x002D000B
_0804E840: .4byte 0x002D000C
_0804E844: .4byte 0x002D000D
_0804E848: .4byte 0x002D000E
_0804E84C:
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0xb4
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804E898 @ =0x002D000F
	bl EventWinMesSet_08041058
	ldr r0, _0804E89C @ =0x002D0010
	bl EventWinMesSet_08041058
	ldr r0, _0804E8A0 @ =0x002D0011
	bl EventWinMesSet_08041058
	ldr r0, _0804E8A4 @ =0x002D0012
	bl EventWinMesSet_08041058
_0804E886:
	movs r0, #0xa6
	bl EventSetFlag_080406E4
	movs r0, #0x11
	bl SetCharacterMetFlag_0802D7CC
_0804E892:
	pop {r0}
	bx r0
	.align 2, 0
_0804E898: .4byte 0x002D000F
_0804E89C: .4byte 0x002D0010
_0804E8A0: .4byte 0x002D0011
_0804E8A4: .4byte 0x002D0012

	thumb_func_start sub_0804E8A8
sub_0804E8A8: @ 0x0804E8A8
	push {r4, lr}
	ldr r0, _0804E924 @ =0x002D0013
	bl EventWinMesSet_08041058
	ldr r0, _0804E928 @ =0x002D0014
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E908
	ldr r4, _0804E92C @ =0x0000014B
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _0804E930 @ =0x002D0018
	bl EventWinMesSet_08041058
	ldr r0, _0804E934 @ =0x002D0019
	bl EventWinMesSet_08041058
	ldr r0, _0804E938 @ =0x002D001A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E908
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _0804E93C @ =0x002D001B
	bl EventWinMesSet_08041058
	ldr r0, _0804E940 @ =0x002D001C
	bl EventWinMesSet_08041058
	ldr r0, _0804E944 @ =0x002D001D
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804E954
_0804E908:
	movs r0, #0xd2
	bl EventPlaySFX_080410E0
	ldr r0, _0804E948 @ =0x002D0015
	bl EventWinMesSet_08041058
	ldr r0, _0804E94C @ =0x002D0016
	bl EventWinMesSet_08041058
	ldr r0, _0804E950 @ =0x002D0017
	bl EventWinMesSet_08041058
	b _0804E992
	.align 2, 0
_0804E924: .4byte 0x002D0013
_0804E928: .4byte 0x002D0014
_0804E92C: .4byte 0x0000014B
_0804E930: .4byte 0x002D0018
_0804E934: .4byte 0x002D0019
_0804E938: .4byte 0x002D001A
_0804E93C: .4byte 0x002D001B
_0804E940: .4byte 0x002D001C
_0804E944: .4byte 0x002D001D
_0804E948: .4byte 0x002D0015
_0804E94C: .4byte 0x002D0016
_0804E950: .4byte 0x002D0017
_0804E954:
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _0804E998 @ =0x002D001E
	bl EventWinMesSet_08041058
	ldr r0, _0804E99C @ =0x002D001F
	bl EventWinMesSet_08041058
	ldr r0, _0804E9A0 @ =0x002D0020
	bl EventWinMesSet_08041058
	movs r0, #0x12
	movs r1, #0x18
	bl QuestFinish_08042814
	movs r0, #0x2c
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804E9A4 @ =0x002D0021
	bl EventWinMesSet_08041058
	ldr r0, _0804E9A8 @ =0x002D0022
	bl EventWinMesSet_08041058
	movs r0, #0xa7
	bl EventSetFlag_080406E4
	movs r0, #0xa9
	bl SetEventFlag_080406BC
_0804E992:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E998: .4byte 0x002D001E
_0804E99C: .4byte 0x002D001F
_0804E9A0: .4byte 0x002D0020
_0804E9A4: .4byte 0x002D0021
_0804E9A8: .4byte 0x002D0022

	thumb_func_start sub_0804E9AC
sub_0804E9AC: @ 0x0804E9AC
	push {lr}
	bl sub_0804E730
	ldr r0, _0804E9D0 @ =0x002D0024
	bl EventWinMesSet_08041058
	ldr r0, _0804E9D4 @ =0x002D0025
	bl EventWinMesSet_08041058
	ldr r0, _0804E9D8 @ =0x002D0026
	bl EventWinMesSet_08041058
	ldr r0, _0804E9DC @ =0x002D0027
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804E9D0: .4byte 0x002D0024
_0804E9D4: .4byte 0x002D0025
_0804E9D8: .4byte 0x002D0026
_0804E9DC: .4byte 0x002D0027

	thumb_func_start sub_0804E9E0
sub_0804E9E0: @ 0x0804E9E0
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804EA4C @ =0x0808E164
	bl LoadBuildingBG_0804115C
	ldr r2, _0804EA50 @ =0x0808E9CC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _0804EA54 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x2a
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0xa9
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804EA5C
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804EA58 @ =sub_0804E9AC
	bl RunEventScript_0804066C
	b _0804EA9E
	.align 2, 0
_0804EA4C: .4byte 0x0808E164
_0804EA50: .4byte 0x0808E9CC
_0804EA54: .4byte 0x0808E6BC
_0804EA58: .4byte sub_0804E9AC
_0804EA5C:
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804EAD0 @ =sub_0804E788
	bl RunEventScript_0804066C
	movs r0, #0xa6
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804EA9E
	ldr r0, _0804EAD4 @ =sub_0804E8A8
	bl RunEventScript_0804066C
	movs r0, #0xa7
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804EA9E
	movs r0, #0xa6
	bl EventUnsetFlag_080406D0
	movs r0, #0xa7
	bl EventUnsetFlag_080406D0
	movs r0, #0xa8
	bl EventUnsetFlag_080406D0
	movs r0, #0xa9
	bl UnsetEventFlag_080406D0
_0804EA9E:
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
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0804EAD0: .4byte sub_0804E788
_0804EAD4: .4byte sub_0804E8A8
