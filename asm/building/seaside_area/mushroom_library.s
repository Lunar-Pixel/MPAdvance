	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08056CC0
sub_08056CC0: @ 0x08056CC0
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	movs r0, #0xbc
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _08056D4C @ =0x002F0001
	bl EventWinMesSet_08041058
	ldr r0, _08056D50 @ =0x002F0002
	bl EventWinMesSet_08041058
	ldr r0, _08056D54 @ =0x002F0003
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	ldr r0, _08056D58 @ =0x002F0004
	bl EventWinMesSet_08041058
	ldr r0, _08056D5C @ =0x002F0005
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056D68
	ldr r0, _08056D60 @ =0x002F0006
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08056D64 @ =0x002F0007
	bl EventWinMesSet_08041058
	b _08056E56
	.align 2, 0
_08056D4C: .4byte 0x002F0001
_08056D50: .4byte 0x002F0002
_08056D54: .4byte 0x002F0003
_08056D58: .4byte 0x002F0004
_08056D5C: .4byte 0x002F0005
_08056D60: .4byte 0x002F0006
_08056D64: .4byte 0x002F0007
_08056D68:
	ldr r1, _08056DE8 @ =0x002F0008
	movs r0, #0x2e
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056E56
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056DEC @ =0x002F0009
	bl EventWinMesSet_08041058
	ldr r0, _08056DF0 @ =0x002F000A
	bl EventWinMesSet_08041058
	ldr r0, _08056DF4 @ =0x002F000B
	bl EventWinMesSet_08041058
	ldr r0, _08056DF8 @ =0x002F000C
	bl EventWinMesSet_08041058
	ldr r0, _08056DFC @ =0x002F000D
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08056E14
	ldr r0, _08056E00 @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056E04 @ =0x002F000E
	bl EventWinMesSet_08041058
	ldr r0, _08056E08 @ =0x002F000F
	bl EventWinMesSet_08041058
	ldr r0, _08056E0C @ =0x002F0010
	bl EventWinMesSet_08041058
	ldr r0, _08056E10 @ =0x002F0011
	bl EventWinMesSet_08041058
	b _08056E4A
	.align 2, 0
_08056DE8: .4byte 0x002F0008
_08056DEC: .4byte 0x002F0009
_08056DF0: .4byte 0x002F000A
_08056DF4: .4byte 0x002F000B
_08056DF8: .4byte 0x002F000C
_08056DFC: .4byte 0x002F000D
_08056E00: .4byte 0x0000011B
_08056E04: .4byte 0x002F000E
_08056E08: .4byte 0x002F000F
_08056E0C: .4byte 0x002F0010
_08056E10: .4byte 0x002F0011
_08056E14:
	ldr r0, _08056E5C @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056E60 @ =0x002F0012
	bl EventWinMesSet_08041058
	ldr r0, _08056E64 @ =0x002F0013
	bl EventWinMesSet_08041058
	ldr r0, _08056E68 @ =0x002F0014
	bl EventWinMesSet_08041058
	ldr r0, _08056E6C @ =0x002F0015
	bl EventWinMesSet_08041058
_08056E4A:
	movs r0, #0xae
	bl EventSetFlag_080406E4
	movs r0, #0x2f
	bl SetCharacterMetFlag_0802D7CC
_08056E56:
	pop {r0}
	bx r0
	.align 2, 0
_08056E5C: .4byte 0x0000011B
_08056E60: .4byte 0x002F0012
_08056E64: .4byte 0x002F0013
_08056E68: .4byte 0x002F0014
_08056E6C: .4byte 0x002F0015

	thumb_func_start sub_08056E70
sub_08056E70: @ 0x08056E70
	push {r4, r5, lr}
	bl EventWinInit_08040fe8
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056EB4 @ =0x002F0016
	bl EventWinMesSet_08041058
	ldr r0, _08056EB8 @ =0x002F0017
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056ECC
	movs r0, #0xd2
	bl EventPlaySFX_080410E0
	ldr r0, _08056EBC @ =0x002F0018
	bl EventWinMesSet_08041058
	ldr r0, _08056EC0 @ =0x002F0019
	bl EventWinMesSet_08041058
	ldr r0, _08056EC4 @ =0x002F001A
	bl EventWinMesSet_08041058
	ldr r0, _08056EC8 @ =0x002F001B
	bl EventWinMesSet_08041058
	b _0805706A
	.align 2, 0
_08056EB4: .4byte 0x002F0016
_08056EB8: .4byte 0x002F0017
_08056EBC: .4byte 0x002F0018
_08056EC0: .4byte 0x002F0019
_08056EC4: .4byte 0x002F001A
_08056EC8: .4byte 0x002F001B
_08056ECC:
	ldr r5, _08056F34 @ =0x0000014B
	adds r0, r5, #0
	bl EventPlaySFX_080410E0
	ldr r4, _08056F38 @ =0x0000011B
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056F3C @ =0x002F001C
	bl EventWinMesSet_08041058
	ldr r0, _08056F40 @ =0x002F001D
	bl EventWinMesSet_08041058
	ldr r0, _08056F44 @ =0x002F001E
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056F58
	movs r0, #0xd2
	bl EventPlaySFX_080410E0
	ldr r0, _08056F48 @ =0x002F001F
	bl EventWinMesSet_08041058
	ldr r0, _08056F4C @ =0x002F0020
	bl EventWinMesSet_08041058
	ldr r0, _08056F50 @ =0x002F0021
	bl EventWinMesSet_08041058
	ldr r0, _08056F54 @ =0x002F0022
	bl EventWinMesSet_08041058
	b _0805706A
	.align 2, 0
_08056F34: .4byte 0x0000014B
_08056F38: .4byte 0x0000011B
_08056F3C: .4byte 0x002F001C
_08056F40: .4byte 0x002F001D
_08056F44: .4byte 0x002F001E
_08056F48: .4byte 0x002F001F
_08056F4C: .4byte 0x002F0020
_08056F50: .4byte 0x002F0021
_08056F54: .4byte 0x002F0022
_08056F58:
	adds r0, r5, #0
	bl EventPlaySFX_080410E0
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056FBC @ =0x002F0023
	bl EventWinMesSet_08041058
	ldr r0, _08056FC0 @ =0x002F0024
	bl EventWinMesSet_08041058
	ldr r0, _08056FC4 @ =0x002F0025
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08056FD8
	movs r0, #0xd2
	bl EventPlaySFX_080410E0
	ldr r0, _08056FC8 @ =0x002F0026
	bl EventWinMesSet_08041058
	ldr r0, _08056FCC @ =0x002F0027
	bl EventWinMesSet_08041058
	ldr r0, _08056FD0 @ =0x002F0028
	bl EventWinMesSet_08041058
	ldr r0, _08056FD4 @ =0x002F0029
	bl EventWinMesSet_08041058
	b _0805706A
	.align 2, 0
_08056FBC: .4byte 0x002F0023
_08056FC0: .4byte 0x002F0024
_08056FC4: .4byte 0x002F0025
_08056FC8: .4byte 0x002F0026
_08056FCC: .4byte 0x002F0027
_08056FD0: .4byte 0x002F0028
_08056FD4: .4byte 0x002F0029
_08056FD8:
	adds r0, r5, #0
	bl EventPlaySFX_080410E0
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08057070 @ =0x002F002A
	bl EventWinMesSet_08041058
	ldr r0, _08057074 @ =0x002F002B
	bl EventWinMesSet_08041058
	ldr r0, _08057078 @ =0x002F002C
	bl EventWinMesSet_08041058
	ldr r0, _0805707C @ =0x002F002D
	bl EventWinMesSet_08041058
	ldr r0, _08057080 @ =0x002F002E
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	movs r1, #0x18
	bl QuestFinish_08042814
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057084 @ =0x002F002F
	bl EventWinMesSet_08041058
	ldr r0, _08057088 @ =0x002F0030
	bl EventWinMesSet_08041058
	ldr r0, _0805708C @ =0x002F0031
	bl EventWinMesSet_08041058
	ldr r0, _08057090 @ =0x002F0032
	bl EventWinMesSet_08041058
	movs r0, #0xaf
	bl EventSetFlag_080406E4
	movs r0, #0xb1
	bl SetEventFlag_080406BC
_0805706A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057070: .4byte 0x002F002A
_08057074: .4byte 0x002F002B
_08057078: .4byte 0x002F002C
_0805707C: .4byte 0x002F002D
_08057080: .4byte 0x002F002E
_08057084: .4byte 0x002F002F
_08057088: .4byte 0x002F0030
_0805708C: .4byte 0x002F0031
_08057090: .4byte 0x002F0032

	thumb_func_start sub_08057094
sub_08057094: @ 0x08057094
	push {lr}
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x2d
	bl EventWinSpeakerSet_08041018
	ldr r0, _080570FC @ =0x002F0033
	bl EventWinMesSet_08041058
	ldr r0, _08057100 @ =0x002F0034
	bl EventWinMesSet_08041058
	ldr r0, _08057104 @ =0x002F0035
	bl EventWinMesSet_08041058
	ldr r0, _08057108 @ =0x002F0036
	bl EventWinMesSet_08041058
	ldr r0, _0805710C @ =0x002F0037
	bl EventWinMesSet_08041058
	ldr r0, _08057110 @ =0x002F0038
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080570FC: .4byte 0x002F0033
_08057100: .4byte 0x002F0034
_08057104: .4byte 0x002F0035
_08057108: .4byte 0x002F0036
_0805710C: .4byte 0x002F0037
_08057110: .4byte 0x002F0038

	thumb_func_start sub_08057114
sub_08057114: @ 0x08057114
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08057194 @ =0x0808E484
	bl LoadBuildingBG_0804115C
	ldr r2, _08057198 @ =0x0808E9DC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	ldr r2, _0805719C @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7a
	movs r2, #0x36
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xb1
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080571A4
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _080571A0 @ =sub_08057094
	bl RunEventScript_0804066C
	b _080571E6
	.align 2, 0
_08057194: .4byte 0x0808E484
_08057198: .4byte 0x0808E9DC
_0805719C: .4byte 0x0808E6BC
_080571A0: .4byte sub_08057094
_080571A4:
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08057218 @ =sub_08056CC0
	bl RunEventScript_0804066C
	movs r0, #0xae
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080571E6
	ldr r0, _0805721C @ =sub_08056E70
	bl RunEventScript_0804066C
	movs r0, #0xaf
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080571E6
	movs r0, #0xae
	bl EventUnsetFlag_080406D0
	movs r0, #0xaf
	bl EventUnsetFlag_080406D0
	movs r0, #0xb0
	bl EventUnsetFlag_080406D0
	movs r0, #0xb1
	bl UnsetEventFlag_080406D0
_080571E6:
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
_08057218: .4byte sub_08056CC0
_0805721C: .4byte sub_08056E70
