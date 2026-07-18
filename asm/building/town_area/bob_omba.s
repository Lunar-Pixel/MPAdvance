	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08048560
sub_08048560: @ 0x08048560
	push {lr}
	ldr r0, _080485CC @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	bl EventWinInit_08040fe8
	movs r0, #8
	bl EventWinSpeakerSet_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _080485D0 @ =0x00180001
	bl EventWinMesSet_08041058
	ldr r0, _080485D4 @ =0x00180002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080485DC
	movs r0, #1
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080485D8 @ =0x00180003
	bl EventWinMesSet_08041058
	b _080486E0
	.align 2, 0
_080485CC: .4byte 0x0000011B
_080485D0: .4byte 0x00180001
_080485D4: .4byte 0x00180002
_080485D8: .4byte 0x00180003
_080485DC:
	ldr r1, _0804865C @ =0x00180004
	movs r0, #0x17
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080486E0
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #8
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048660 @ =0x00180005
	bl EventWinMesSet_08041058
	ldr r0, _08048664 @ =0x00180006
	bl EventWinMesSet_08041058
	ldr r0, _08048668 @ =0x00180007
	bl EventWinMesSet_08041058
	ldr r0, _0804866C @ =0x00180008
	bl EventWinMesSet_08041058
	ldr r0, _08048670 @ =0x00180009
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048688
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048674 @ =0x0018000A
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08048678 @ =0x0018000B
	bl EventWinMesSet_08041058
	ldr r0, _0804867C @ =0x0018000C
	bl EventWinMesSet_08041058
	ldr r0, _08048680 @ =0x0018000D
	bl EventWinMesSet_08041058
	ldr r0, _08048684 @ =0x0018000E
	bl EventWinMesSet_08041058
	b _080486D4
	.align 2, 0
_0804865C: .4byte 0x00180004
_08048660: .4byte 0x00180005
_08048664: .4byte 0x00180006
_08048668: .4byte 0x00180007
_0804866C: .4byte 0x00180008
_08048670: .4byte 0x00180009
_08048674: .4byte 0x0018000A
_08048678: .4byte 0x0018000B
_0804867C: .4byte 0x0018000C
_08048680: .4byte 0x0018000D
_08048684: .4byte 0x0018000E
_08048688:
	movs r0, #1
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080486E4 @ =0x0018000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080425EC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080486E8 @ =0x0018000B
	bl EventWinMesSet_08041058
	ldr r0, _080486EC @ =0x0018000C
	bl EventWinMesSet_08041058
	ldr r0, _080486F0 @ =0x00180010
	bl EventWinMesSet_08041058
_080486D4:
	movs r0, #0x5e
	bl EventSetFlag_080406E4
	movs r0, #1
	bl SetCharacterMetFlag_0802D7CC
_080486E0:
	pop {r0}
	bx r0
	.align 2, 0
_080486E4: .4byte 0x0018000F
_080486E8: .4byte 0x0018000B
_080486EC: .4byte 0x0018000C
_080486F0: .4byte 0x00180010

	thumb_func_start sub_080486F4
sub_080486F4: @ 0x080486F4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #8
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048750 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048754 @ =0x00180011
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	ldr r0, _08048758 @ =0x0018000B
	bl EventWinMesSet_08041058
	ldr r0, _0804875C @ =0x00180012
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08048750: .4byte 0x0000011F
_08048754: .4byte 0x00180011
_08048758: .4byte 0x0018000B
_0804875C: .4byte 0x00180012

	thumb_func_start sub_08048760
sub_08048760: @ 0x08048760
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #8
	bl EventWinSpeakerSet_08041018
	ldr r0, _080487D4 @ =0x00180018
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080487D8 @ =0x00180019
	bl EventWinMesSet_08041058
	ldr r0, _080487DC @ =0x0018001A
	bl EventWinMesSet_08041058
	ldr r0, _080487E0 @ =0x0018001B
	bl EventWinMesSet_08041058
	movs r0, #0x21
	movs r1, #0x14
	bl QuestFinish_08042814
	movs r0, #8
	bl EventWinSpeakerSet_08041018
	ldr r0, _080487E4 @ =0x0018001C
	bl EventWinMesSet_08041058
	ldr r0, _080487E8 @ =0x0018001D
	bl EventWinMesSet_08041058
	ldr r0, _080487EC @ =0x0018001E
	bl EventWinMesSet_08041058
	ldr r0, _080487F0 @ =0x0018001F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080487F4 @ =0x00180020
	bl EventWinMesSet_08041058
	movs r0, #0x61
	bl SetEventFlag_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_080487D4: .4byte 0x00180018
_080487D8: .4byte 0x00180019
_080487DC: .4byte 0x0018001A
_080487E0: .4byte 0x0018001B
_080487E4: .4byte 0x0018001C
_080487E8: .4byte 0x0018001D
_080487EC: .4byte 0x0018001E
_080487F0: .4byte 0x0018001F
_080487F4: .4byte 0x00180020

	thumb_func_start sub_080487F8
sub_080487F8: @ 0x080487F8
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #8
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048838 @ =0x00180021
	bl EventWinMesSet_08041058
	ldr r0, _0804883C @ =0x00180022
	bl EventWinMesSet_08041058
	ldr r0, _08048840 @ =0x00180023
	bl EventWinMesSet_08041058
	ldr r0, _08048844 @ =0x00180024
	bl EventWinMesSet_08041058
	ldr r0, _08048848 @ =0x00180025
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804884C @ =0x00180026
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08048838: .4byte 0x00180021
_0804883C: .4byte 0x00180022
_08048840: .4byte 0x00180023
_08048844: .4byte 0x00180024
_08048848: .4byte 0x00180025
_0804884C: .4byte 0x00180026

	thumb_func_start sub_08048850
sub_08048850: @ 0x08048850
	push {r4, lr}
	bl EventInit_080405B8
	ldr r0, _080488F8 @ =0x0808DF5C
	bl LoadBuildingBG_0804115C
	ldr r0, _080488FC @ =0x08164DC8
	movs r1, #0
	movs r2, #2
	bl sub_08041464
	ldr r4, _08048900 @ =0x0808E79C
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
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
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _08048904 @ =0x0808E6BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7c
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x61
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804890C
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08048908 @ =sub_080487F8
	bl RunEventScript_0804066C
	b _08048958
	.align 2, 0
_080488F8: .4byte 0x0808DF5C
_080488FC: .4byte 0x08164DC8
_08048900: .4byte 0x0808E79C
_08048904: .4byte 0x0808E6BC
_08048908: .4byte sub_080487F8
_0804890C:
	movs r0, #0x5f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804892C
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	ldr r0, _08048928 @ =sub_08048760
	bl RunEventScript_0804066C
	b _08048958
	.align 2, 0
_08048928: .4byte sub_08048760
_0804892C:
	movs r0, #0x5e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804894C
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	ldr r0, _08048948 @ =sub_080486F4
	bl RunEventScript_0804066C
	b _08048958
	.align 2, 0
_08048948: .4byte sub_080486F4
_0804894C:
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080489A4 @ =sub_08048560
	bl RunEventScript_0804066C
_08048958:
	bl sub_08041008
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
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
	bl sub_08041498
	bl sub_080425EC
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080489A4: .4byte sub_08048560
