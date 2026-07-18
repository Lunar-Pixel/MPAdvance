	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08055370
sub_08055370: @ 0x08055370
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0x90
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554C8 @ =0x00240001
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554CC @ =0x00240002
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554D0 @ =0x00240003
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x78
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
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554D4 @ =0x00240004
	bl EventWinMesSet_08041058
	ldr r0, _080554D8 @ =0x00240005
	bl EventWinMesSet_08041058
	ldr r0, _080554DC @ =0x00240006
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080554F0
	movs r0, #2
	movs r1, #0x78
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
	ldr r0, _080554E0 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _080554E4 @ =0x00240007
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554E8 @ =0x00240008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080554EC @ =0x00240009
	bl EventWinMesSet_08041058
	b _0805567E
	.align 2, 0
_080554C8: .4byte 0x00240001
_080554CC: .4byte 0x00240002
_080554D0: .4byte 0x00240003
_080554D4: .4byte 0x00240004
_080554D8: .4byte 0x00240005
_080554DC: .4byte 0x00240006
_080554E0: .4byte 0x0000011F
_080554E4: .4byte 0x00240007
_080554E8: .4byte 0x00240008
_080554EC: .4byte 0x00240009
_080554F0:
	ldr r1, _080555D0 @ =0x0024000A
	movs r0, #0x23
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055500
	b _0805567E
_08055500:
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555D4 @ =0x0024000B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555D8 @ =0x0024000C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555DC @ =0x0024000D
	bl EventWinMesSet_08041058
	ldr r0, _080555E0 @ =0x0024000E
	bl EventWinMesSet_08041058
	ldr r0, _080555E4 @ =0x0024000F
	bl EventWinMesSet_08041058
	ldr r0, _080555E8 @ =0x00240010
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080555F8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555EC @ =0x00240011
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555F0 @ =0x00240012
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080555F4 @ =0x00240013
	bl EventWinMesSet_08041058
	b _08055634
	.align 2, 0
_080555D0: .4byte 0x0024000A
_080555D4: .4byte 0x0024000B
_080555D8: .4byte 0x0024000C
_080555DC: .4byte 0x0024000D
_080555E0: .4byte 0x0024000E
_080555E4: .4byte 0x0024000F
_080555E8: .4byte 0x00240010
_080555EC: .4byte 0x00240011
_080555F0: .4byte 0x00240012
_080555F4: .4byte 0x00240013
_080555F8:
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055684 @ =0x00240016
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055688 @ =0x00240017
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805568C @ =0x00240018
	bl EventWinMesSet_08041058
_08055634:
	ldr r1, _08055690 @ =0x0046002F
	movs r0, #0x76
	bl EventMgSpecialGoal_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055694 @ =0x00240014
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055698 @ =0x00240015
	bl EventWinMesSet_08041058
	movs r0, #0x8c
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_0805567E:
	pop {r0}
	bx r0
	.align 2, 0
_08055684: .4byte 0x00240016
_08055688: .4byte 0x00240017
_0805568C: .4byte 0x00240018
_08055690: .4byte 0x0046002F
_08055694: .4byte 0x00240014
_08055698: .4byte 0x00240015

	thumb_func_start sub_0805569C
sub_0805569C: @ 0x0805569C
	push {lr}
	movs r0, #0x8d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080556AE
	b _08055840
_080556AE:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x16
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055810 @ =0x00240019
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055814 @ =0x0024001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055818 @ =0x0024001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805581C @ =0x0024001C
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
	ldr r0, _08055820 @ =0x0024001D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055824 @ =0x0024001E
	bl EventWinMesSet_08041058
	movs r0, #0x3b
	movs r1, #0x16
	bl QuestFinish_08042814
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055828 @ =0x0024001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805582C @ =0x00240020
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055830 @ =0x00240021
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
	ldr r0, _08055834 @ =0x00240022
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055838 @ =0x00240023
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805583C @ =0x00240024
	bl EventWinMesSet_08041058
	movs r0, #0x76
	bl EventSetMinigame_08040B84
	movs r0, #0x8e
	bl SetEventFlag_080406BC
	b _08055922
	.align 2, 0
_08055810: .4byte 0x00240019
_08055814: .4byte 0x0024001A
_08055818: .4byte 0x0024001B
_0805581C: .4byte 0x0024001C
_08055820: .4byte 0x0024001D
_08055824: .4byte 0x0024001E
_08055828: .4byte 0x0024001F
_0805582C: .4byte 0x00240020
_08055830: .4byte 0x00240021
_08055834: .4byte 0x00240022
_08055838: .4byte 0x00240023
_0805583C: .4byte 0x00240024
_08055840:
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055928 @ =0x00240025
	bl EventWinMesSet_08041058
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805592C @ =0x00240026
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055930 @ =0x00240027
	bl EventWinMesSet_08041058
	ldr r0, _08055934 @ =0x00240028
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055938 @ =0x00240029
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805593C @ =0x0024002A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055940 @ =0x0024002B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055944 @ =0x0024002C
	bl EventWinMesSet_08041058
	movs r0, #0x8c
	bl EventUnsetFlag_080406D0
	movs r0, #0x8d
	bl EventUnsetFlag_080406D0
	movs r0, #0x8e
	bl UnsetEventFlag_080406D0
_08055922:
	pop {r0}
	bx r0
	.align 2, 0
_08055928: .4byte 0x00240025
_0805592C: .4byte 0x00240026
_08055930: .4byte 0x00240027
_08055934: .4byte 0x00240028
_08055938: .4byte 0x00240029
_0805593C: .4byte 0x0024002A
_08055940: .4byte 0x0024002B
_08055944: .4byte 0x0024002C

	thumb_func_start sub_08055948
sub_08055948: @ 0x08055948
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559C0 @ =0x0024002D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559C4 @ =0x0024002E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559C8 @ =0x0024002F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559CC @ =0x00240030
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080559D0 @ =0x00240031
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080559C0: .4byte 0x0024002D
_080559C4: .4byte 0x0024002E
_080559C8: .4byte 0x0024002F
_080559CC: .4byte 0x00240030
_080559D0: .4byte 0x00240031

	thumb_func_start sub_080559D4
sub_080559D4: @ 0x080559D4
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08055A5C @ =0x0808E3E4
	bl LoadBuildingBG_0804115C
	ldr r0, _08055A60 @ =0x0818043C
	movs r1, #0
	movs r2, #0x3c
	bl sub_08041464
	ldr r2, _08055A64 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x48
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _08055A68 @ =0x0808E70C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x5c
	bl EventPlaceChara_08041894
	ldr r2, _08055A6C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x8e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08055A74
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08055A70 @ =sub_08055948
	bl RunEventScript_0804066C
	b _08055ACC
	.align 2, 0
_08055A5C: .4byte 0x0808E3E4
_08055A60: .4byte 0x0818043C
_08055A64: .4byte 0x0808E7BC
_08055A68: .4byte 0x0808E70C
_08055A6C: .4byte 0x0808E6BC
_08055A70: .4byte sub_08055948
_08055A74:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055AA4
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08055AA0 @ =sub_08055370
	bl RunEventScript_0804066C
	movs r0, #0x8c
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08055ACC
	movs r0, #0x76
	bl EventQuestBegin_080406D0
	b _08055ACC
	.align 2, 0
_08055AA0: .4byte sub_08055370
_08055AA4:
	movs r0, #0x16
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08055ABC
	cmp r0, #1
	ble _08055ACC
	cmp r0, #2
	beq _08055AC2
	b _08055ACC
_08055ABC:
	movs r0, #0x8d
	bl EventSetFlag_080406E4
_08055AC2:
	ldr r0, _08055B10 @ =sub_0805569C
	bl RunEventScript_0804066C
	bl sub_08040B28
_08055ACC:
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
	bl sub_08041498
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08055B10: .4byte sub_0805569C
