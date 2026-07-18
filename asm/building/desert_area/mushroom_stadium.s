	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804DBA0
sub_0804DBA0: @ 0x0804DBA0
	push {lr}
	sub sp, #8
	ldr r0, _0804DBC0 @ =0x0808DC48
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #1
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0804DBC0: .4byte 0x0808DC48

	thumb_func_start sub_0804DBC4
sub_0804DBC4: @ 0x0804DBC4
	push {r4, lr}
	sub sp, #0xc
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	mov r1, sp
	ldr r0, _0804DBF0 @ =0x0808DC50
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DBF0: .4byte 0x0808DC50

	thumb_func_start sub_0804DBF4
sub_0804DBF4: @ 0x0804DBF4
	push {lr}
	bl sub_0804DBC4
	bl sub_080407FC
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #0
	bl sub_08041DE0
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	bl sub_0804DBA0
	bl EventWinInit_08040fe8
	movs r0, #0x22
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	ldr r0, _0804DD04 @ =0x002E0014
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804DD08 @ =0x002E0015
	bl EventWinMesSet_08041058
	ldr r0, _0804DD0C @ =0x002E0016
	bl EventWinMesSet_08041058
_0804DC6A:
	ldr r0, _0804DD10 @ =0x002E0017
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DD34
	ldr r0, _0804DD14 @ =0x002E0018
	bl EventWinMesSet_08041058
	ldr r0, _0804DD18 @ =0x002E0019
	bl EventWinMesSet_08041058
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
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804DD1C @ =0x002E001A
	bl EventWinMesSet_08041058
	ldr r0, _0804DD20 @ =0x002E001B
	bl EventWinMesSet_08041058
	ldr r0, _0804DD24 @ =0x002E001C
	bl EventWinMesSet_08041058
	ldr r0, _0804DD28 @ =0x002E001D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804DD2C @ =0x002E001E
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	ldr r0, _0804DD30 @ =0x002E001F
	bl EventWinMesSet_08041058
	movs r0, #0xab
	bl EventSetFlag_080406E4
	b _0804DD44
	.align 2, 0
_0804DD04: .4byte 0x002E0014
_0804DD08: .4byte 0x002E0015
_0804DD0C: .4byte 0x002E0016
_0804DD10: .4byte 0x002E0017
_0804DD14: .4byte 0x002E0018
_0804DD18: .4byte 0x002E0019
_0804DD1C: .4byte 0x002E001A
_0804DD20: .4byte 0x002E001B
_0804DD24: .4byte 0x002E001C
_0804DD28: .4byte 0x002E001D
_0804DD2C: .4byte 0x002E001E
_0804DD30: .4byte 0x002E001F
_0804DD34:
	ldr r0, _0804DD50 @ =0x002E0020
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DC6A
_0804DD44:
	movs r0, #0xa
	bl SetCharacterMetFlag_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0
_0804DD50: .4byte 0x002E0020

	thumb_func_start sub_0804DD54
sub_0804DD54: @ 0x0804DD54
	push {lr}
	bl sub_0804DBC4
	bl sub_080407FC
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #0
	bl sub_08041DE0
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	bl sub_0804DBA0
	bl EventWinInit_08040fe8
	movs r0, #0x22
	bl EventWinSpeakerSet_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xc
	bl EventWinMesSet_08041058
	bl sub_0804DBA0
	ldr r0, _0804DDC0 @ =0x000C0001
	bl EventWinMesSet_08041058
	ldr r0, _0804DDC4 @ =0x000C0002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804DDCC
	ldr r0, _0804DDC8 @ =0x000C0003
	bl EventWinMesSet_08041058
	b _0804DE84
	.align 2, 0
_0804DDC0: .4byte 0x000C0001
_0804DDC4: .4byte 0x000C0002
_0804DDC8: .4byte 0x000C0003
_0804DDCC:
	ldr r1, _0804DE38 @ =0x000C0004
	movs r0, #0xb
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804DE84
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x22
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804DE3C @ =0x000C0005
	bl EventWinMesSet_08041058
	ldr r0, _0804DE40 @ =0x000C0006
	bl EventWinMesSet_08041058
	ldr r0, _0804DE44 @ =0x000C0007
	bl EventWinMesSet_08041058
	ldr r0, _0804DE48 @ =0x000C0008
	bl EventWinMesSet_08041058
	ldr r0, _0804DE4C @ =0x000C0009
	bl EventWinMesSet_08041058
	ldr r0, _0804DE50 @ =0x000C000A
	bl EventWinMesSet_08041058
	ldr r0, _0804DE54 @ =0x000C000B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DE60
	ldr r0, _0804DE58 @ =0x000C000C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804DE5C @ =0x000C000D
	bl EventWinMesSet_08041058
	b _0804DE78
	.align 2, 0
_0804DE38: .4byte 0x000C0004
_0804DE3C: .4byte 0x000C0005
_0804DE40: .4byte 0x000C0006
_0804DE44: .4byte 0x000C0007
_0804DE48: .4byte 0x000C0008
_0804DE4C: .4byte 0x000C0009
_0804DE50: .4byte 0x000C000A
_0804DE54: .4byte 0x000C000B
_0804DE58: .4byte 0x000C000C
_0804DE5C: .4byte 0x000C000D
_0804DE60:
	ldr r0, _0804DE88 @ =0x000C000E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804DE8C @ =0x000C000F
	bl EventWinMesSet_08041058
_0804DE78:
	movs r0, #0x2e
	bl EventSetFlag_080406E4
	movs r0, #0xa
	bl SetCharacterMetFlag_0802D7CC
_0804DE84:
	pop {r0}
	bx r0
	.align 2, 0
_0804DE88: .4byte 0x000C000E
_0804DE8C: .4byte 0x000C000F

	thumb_func_start sub_0804DE90
sub_0804DE90: @ 0x0804DE90
	push {lr}
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	bl sub_0804DBA0
	movs r0, #0x2f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804DF38
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x22
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804DF1C @ =0x000C0010
	bl EventWinMesSet_08041058
	ldr r0, _0804DF20 @ =0x000C0011
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804DF24 @ =0x000C0012
	bl EventWinMesSet_08041058
	ldr r0, _0804DF28 @ =0x000C0013
	bl EventWinMesSet_08041058
	ldr r0, _0804DF2C @ =0x000C0014
	bl EventWinMesSet_08041058
	movs r0, #0x38
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0x22
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804DF30 @ =0x000C0015
	bl EventWinMesSet_08041058
	ldr r0, _0804DF34 @ =0x000C0016
	bl EventWinMesSet_08041058
	movs r0, #0x31
	bl SetEventFlag_080406BC
	b _0804DF8E
	.align 2, 0
_0804DF1C: .4byte 0x000C0010
_0804DF20: .4byte 0x000C0011
_0804DF24: .4byte 0x000C0012
_0804DF28: .4byte 0x000C0013
_0804DF2C: .4byte 0x000C0014
_0804DF30: .4byte 0x000C0015
_0804DF34: .4byte 0x000C0016
_0804DF38:
	movs r0, #1
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x22
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804DF94 @ =0x000C0017
	bl EventWinMesSet_08041058
	ldr r0, _0804DF98 @ =0x000C0018
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804DF9C @ =0x000C0019
	bl EventWinMesSet_08041058
	ldr r0, _0804DFA0 @ =0x000C001A
	bl EventWinMesSet_08041058
	movs r0, #0x2f
	bl EventUnsetFlag_080406D0
	movs r0, #0x30
	bl EventUnsetFlag_080406D0
	movs r0, #0x2e
	bl EventUnsetFlag_080406D0
	movs r0, #0x31
	bl UnsetEventFlag_080406D0
_0804DF8E:
	pop {r0}
	bx r0
	.align 2, 0
_0804DF94: .4byte 0x000C0017
_0804DF98: .4byte 0x000C0018
_0804DF9C: .4byte 0x000C0019
_0804DFA0: .4byte 0x000C001A

	thumb_func_start sub_0804DFA4
sub_0804DFA4: @ 0x0804DFA4
	push {lr}
	bl sub_0804DBC4
	bl sub_080407FC
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #0
	bl sub_08041DE0
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	bl sub_0804DBA0
	bl EventWinInit_08040fe8
	movs r0, #0x22
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804DFFC @ =0x000C001B
	bl EventWinMesSet_08041058
	ldr r0, _0804E000 @ =0x000C001C
	bl EventWinMesSet_08041058
	ldr r0, _0804E004 @ =0x000C001D
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804DFFC: .4byte 0x000C001B
_0804E000: .4byte 0x000C001C
_0804E004: .4byte 0x000C001D

	thumb_func_start sub_0804E008
sub_0804E008: @ 0x0804E008
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _0804E0A4 @ =0x0808E0EC
	bl LoadBuildingBG_0804115C
	ldr r4, _0804E0A8 @ =0x0808E93C
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
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _0804E0AC @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0xaa
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E0B4
	movs r0, #0xab
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E0B4
	movs r0, #0x18
	bl EventBGMPlay_080410A8
	ldr r0, _0804E0B0 @ =sub_0804DBF4
	bl RunEventScript_0804066C
	b _0804E126
	.align 2, 0
_0804E0A4: .4byte 0x0808E0EC
_0804E0A8: .4byte 0x0808E93C
_0804E0AC: .4byte 0x0808E6BC
_0804E0B0: .4byte sub_0804DBF4
_0804E0B4:
	movs r0, #0x31
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E0D4
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804E0D0 @ =sub_0804DFA4
	bl RunEventScript_0804066C
	b _0804E126
	.align 2, 0
_0804E0D0: .4byte sub_0804DFA4
_0804E0D4:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E104
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804E100 @ =sub_0804DD54
	bl RunEventScript_0804066C
	movs r0, #0x2e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E126
	movs r0, #4
	bl sub_08040F18
	b _0804E126
	.align 2, 0
_0804E100: .4byte sub_0804DD54
_0804E104:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E11C
	movs r0, #0x2f
	bl EventSetFlag_080406E4
_0804E11C:
	ldr r0, _0804E168 @ =sub_0804DE90
	bl RunEventScript_0804066C
	bl sub_08040F0C
_0804E126:
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
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E168: .4byte sub_0804DE90
