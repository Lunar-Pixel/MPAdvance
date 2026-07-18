	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804B9BC
sub_0804B9BC: @ 0x0804B9BC
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x24
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xd8
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804BA18 @ =0x001B0001
	bl EventWinMesSet_08041058
	ldr r0, _0804BA1C @ =0x001B0002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BA24
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x24
	bl EventSleep_08040690
	ldr r0, _0804BA20 @ =0x001B0003
	bl EventWinMesSet_08041058
	b _0804BB46
	.align 2, 0
_0804BA18: .4byte 0x001B0001
_0804BA1C: .4byte 0x001B0002
_0804BA20: .4byte 0x001B0003
_0804BA24:
	ldr r1, _0804BAC4 @ =0x001B0004
	movs r0, #0x1a
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804BA34
	b _0804BB46
_0804BA34:
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x24
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BAC8 @ =0x001B0005
	bl EventWinMesSet_08041058
	ldr r0, _0804BACC @ =0x001B0006
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804BAD0 @ =0x001B0007
	bl EventWinMesSet_08041058
	ldr r0, _0804BAD4 @ =0x001B0008
	bl EventWinMesSet_08041058
	ldr r0, _0804BAD8 @ =0x001B0009
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x24
	bl EventSleep_08040690
	ldr r0, _0804BADC @ =0x001B000A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804BAE0 @ =0x001B000B
	bl EventWinMesSet_08041058
	ldr r0, _0804BAE4 @ =0x001B000C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804BAEC
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x24
	bl EventSleep_08040690
	ldr r0, _0804BAE8 @ =0x001B000D
	bl EventWinMesSet_08041058
	b _0804BB04
	.align 2, 0
_0804BAC4: .4byte 0x001B0004
_0804BAC8: .4byte 0x001B0005
_0804BACC: .4byte 0x001B0006
_0804BAD0: .4byte 0x001B0007
_0804BAD4: .4byte 0x001B0008
_0804BAD8: .4byte 0x001B0009
_0804BADC: .4byte 0x001B000A
_0804BAE0: .4byte 0x001B000B
_0804BAE4: .4byte 0x001B000C
_0804BAE8: .4byte 0x001B000D
_0804BAEC:
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x24
	bl EventSleep_08040690
	ldr r0, _0804BB4C @ =0x001B0012
	bl EventWinMesSet_08041058
_0804BB04:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804BB50 @ =0x001B000E
	bl EventWinMesSet_08041058
	ldr r0, _0804BB54 @ =0x001B000F
	bl EventWinMesSet_08041058
	ldr r0, _0804BB58 @ =0x001B0010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x24
	bl EventSleep_08040690
	ldr r0, _0804BB5C @ =0x001B0011
	bl EventWinMesSet_08041058
	movs r0, #0x6a
	bl EventSetFlag_080406E4
	movs r0, #0x1c
	bl SetCharacterMetFlag_0802D7CC
_0804BB46:
	pop {r0}
	bx r0
	.align 2, 0
_0804BB4C: .4byte 0x001B0012
_0804BB50: .4byte 0x001B000E
_0804BB54: .4byte 0x001B000F
_0804BB58: .4byte 0x001B0010
_0804BB5C: .4byte 0x001B0011

	thumb_func_start sub_0804BB60
sub_0804BB60: @ 0x0804BB60
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x24
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BB9C @ =0x001B0013
	bl EventWinMesSet_08041058
	ldr r0, _0804BBA0 @ =0x001B0014
	bl EventWinMesSet_08041058
	ldr r0, _0804BBA4 @ =0x001B0015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x24
	bl EventSleep_08040690
	ldr r0, _0804BBA8 @ =0x001B0011
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804BB9C: .4byte 0x001B0013
_0804BBA0: .4byte 0x001B0014
_0804BBA4: .4byte 0x001B0015
_0804BBA8: .4byte 0x001B0011

	thumb_func_start sub_0804BBAC
sub_0804BBAC: @ 0x0804BBAC
	push {lr}
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
	bl EventWinInit_08040fe8
	movs r0, #0x24
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804BC48 @ =0x001B0027
	bl EventWinMesSet_08041058
	ldr r0, _0804BC4C @ =0x001B0028
	bl EventWinMesSet_08041058
	ldr r0, _0804BC50 @ =0x001B0029
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804BC54 @ =0x001B002A
	bl EventWinMesSet_08041058
	movs r0, #0x18
	movs r1, #0x15
	bl QuestFinish_08042814
	movs r0, #0x24
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BC58 @ =0x001B002B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804BC5C @ =0x001B002C
	bl EventWinMesSet_08041058
	ldr r0, _0804BC60 @ =0x001B002D
	bl EventWinMesSet_08041058
	movs r0, #0x6d
	bl SetEventFlag_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_0804BC48: .4byte 0x001B0027
_0804BC4C: .4byte 0x001B0028
_0804BC50: .4byte 0x001B0029
_0804BC54: .4byte 0x001B002A
_0804BC58: .4byte 0x001B002B
_0804BC5C: .4byte 0x001B002C
_0804BC60: .4byte 0x001B002D

	thumb_func_start sub_0804BC64
sub_0804BC64: @ 0x0804BC64
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x24
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x24
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804BCB0 @ =0x001B002E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804BCB4 @ =0x001B002F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804BCB8 @ =0x001B0030
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804BCB0: .4byte 0x001B002E
_0804BCB4: .4byte 0x001B002F
_0804BCB8: .4byte 0x001B0030

	thumb_func_start sub_0804BCBC
sub_0804BCBC: @ 0x0804BCBC
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804BD50 @ =0x0808E024
	bl LoadBuildingBG_0804115C
	ldr r2, _0804BD54 @ =0x0808E94C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7c
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _0804BD58 @ =0x0808E6CC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x88
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _0804BD5C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x46
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x6d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804BD64
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	ldr r0, _0804BD60 @ =sub_0804BC64
	bl RunEventScript_0804066C
	b _0804BDAC
	.align 2, 0
_0804BD50: .4byte 0x0808E024
_0804BD54: .4byte 0x0808E94C
_0804BD58: .4byte 0x0808E6CC
_0804BD5C: .4byte 0x0808E6BC
_0804BD60: .4byte sub_0804BC64
_0804BD64:
	movs r0, #0x6a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804BDA0
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	movs r0, #0x6b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804BD94
	ldr r0, _0804BD90 @ =sub_0804BBAC
	bl RunEventScript_0804066C
	b _0804BDAC
	.align 2, 0
_0804BD90: .4byte sub_0804BBAC
_0804BD94:
	ldr r0, _0804BD9C @ =sub_0804BB60
	bl RunEventScript_0804066C
	b _0804BDAC
	.align 2, 0
_0804BD9C: .4byte sub_0804BB60
_0804BDA0:
	movs r0, #0x1a
	bl EventBGMPlay_080410A8
	ldr r0, _0804BDEC @ =sub_0804B9BC
	bl RunEventScript_0804066C
_0804BDAC:
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
_0804BDEC: .4byte sub_0804B9BC
