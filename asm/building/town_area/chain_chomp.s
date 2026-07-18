	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08046468
sub_08046468: @ 0x08046468
	push {r4, lr}
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0x90
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x28
	bl EventSleep_08040690
	ldr r4, _080464F8 @ =0x0000025D
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0x14
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x1a
	bl EventWinSpeakerSet_08041018
	movs r0, #0xa8
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _080464FC @ =0x002A0001
	bl EventWinMesSet_08041058
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _08046500 @ =0x002A0002
	bl EventWinMesSet_08041058
	ldr r0, _08046504 @ =0x002A0003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804650C
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _08046508 @ =0x002A0004
	bl EventWinMesSet_08041058
	b _080465A4
	.align 2, 0
_080464F8: .4byte 0x0000025D
_080464FC: .4byte 0x002A0001
_08046500: .4byte 0x002A0002
_08046504: .4byte 0x002A0003
_08046508: .4byte 0x002A0004
_0804650C:
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _080465AC @ =0x002A0005
	bl EventWinMesSet_08041058
	ldr r1, _080465B0 @ =0x002A0006
	movs r0, #0x29
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080465A4
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x1a
	bl EventWinSpeakerSet_08041018
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _080465B4 @ =0x002A0007
	bl EventWinMesSet_08041058
	ldr r0, _080465B8 @ =0x002A0008
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08046560
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _080465BC @ =0x002A000E
	bl EventWinMesSet_08041058
_08046560:
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _080465C0 @ =0x002A0009
	bl EventWinMesSet_08041058
	ldr r0, _080465C4 @ =0x002A000A
	bl EventWinMesSet_08041058
	ldr r0, _080465C8 @ =0x002A000B
	bl EventWinMesSet_08041058
	ldr r0, _080465CC @ =0x002A000C
	bl EventWinMesSet_08041058
	ldr r1, _080465D0 @ =0x00460024
	movs r0, #0x69
	bl EventMgSpecialGoal_080427E0
	movs r0, #0x1a
	bl EventWinSpeakerSet_08041018
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	ldr r0, _080465D4 @ =0x002A000D
	bl EventWinMesSet_08041058
	movs r0, #0x9c
	bl EventSetFlag_080406E4
	movs r0, #0x33
	bl SetCharacterMetFlag_0802D7CC
_080465A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080465AC: .4byte 0x002A0005
_080465B0: .4byte 0x002A0006
_080465B4: .4byte 0x002A0007
_080465B8: .4byte 0x002A0008
_080465BC: .4byte 0x002A000E
_080465C0: .4byte 0x002A0009
_080465C4: .4byte 0x002A000A
_080465C8: .4byte 0x002A000B
_080465CC: .4byte 0x002A000C
_080465D0: .4byte 0x00460024
_080465D4: .4byte 0x002A000D

	thumb_func_start sub_080465D8
sub_080465D8: @ 0x080465D8
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x9d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804666C
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x17
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0x1a
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804664C @ =0x0000025D
	bl EventPlaySFX_080410E0
	ldr r0, _08046650 @ =0x002A000F
	bl EventWinMesSet_08041058
	ldr r0, _08046654 @ =0x002A0010
	bl EventWinMesSet_08041058
	ldr r0, _08046658 @ =0x002A0011
	bl EventWinMesSet_08041058
	ldr r0, _0804665C @ =0x002A0012
	bl EventWinMesSet_08041058
	ldr r0, _08046660 @ =0x002A0013
	bl EventWinMesSet_08041058
	ldr r0, _08046664 @ =0x002A0014
	bl EventWinMesSet_08041058
	ldr r0, _08046668 @ =0x002A0015
	bl EventWinMesSet_08041058
	movs r0, #0x69
	bl EventSetMinigame_08040B84
	movs r0, #0x9e
	bl SetEventFlag_080406BC
	b _080466B8
	.align 2, 0
_0804664C: .4byte 0x0000025D
_08046650: .4byte 0x002A000F
_08046654: .4byte 0x002A0010
_08046658: .4byte 0x002A0011
_0804665C: .4byte 0x002A0012
_08046660: .4byte 0x002A0013
_08046664: .4byte 0x002A0014
_08046668: .4byte 0x002A0015
_0804666C:
	bl EventWinInit_08040fe8
	movs r0, #0x1a
	bl EventWinSpeakerSet_08041018
	ldr r0, _080466BC @ =0x0000025D
	bl EventPlaySFX_080410E0
	ldr r0, _080466C0 @ =0x002A0016
	bl EventWinMesSet_08041058
	ldr r0, _080466C4 @ =0x002A0017
	bl EventWinMesSet_08041058
	ldr r0, _080466C8 @ =0x002A0018
	bl EventWinMesSet_08041058
	ldr r0, _080466CC @ =0x002A0019
	bl EventWinMesSet_08041058
	ldr r0, _080466D0 @ =0x002A001A
	bl EventWinMesSet_08041058
	ldr r0, _080466D4 @ =0x002A001B
	bl EventWinMesSet_08041058
	ldr r0, _080466D8 @ =0x002A001C
	bl EventWinMesSet_08041058
	movs r0, #0x9c
	bl EventUnsetFlag_080406D0
	movs r0, #0x9d
	bl EventUnsetFlag_080406D0
	movs r0, #0x9e
	bl UnsetEventFlag_080406D0
_080466B8:
	pop {r0}
	bx r0
	.align 2, 0
_080466BC: .4byte 0x0000025D
_080466C0: .4byte 0x002A0016
_080466C4: .4byte 0x002A0017
_080466C8: .4byte 0x002A0018
_080466CC: .4byte 0x002A0019
_080466D0: .4byte 0x002A001A
_080466D4: .4byte 0x002A001B
_080466D8: .4byte 0x002A001C

	thumb_func_start sub_080466DC
sub_080466DC: @ 0x080466DC
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0x1a
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046710 @ =0x0000025D
	bl EventPlaySFX_080410E0
	ldr r0, _08046714 @ =0x002A001D
	bl EventWinMesSet_08041058
	ldr r0, _08046718 @ =0x002A001E
	bl EventWinMesSet_08041058
	ldr r0, _0804671C @ =0x002A001F
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08046710: .4byte 0x0000025D
_08046714: .4byte 0x002A001D
_08046718: .4byte 0x002A001E
_0804671C: .4byte 0x002A001F

	thumb_func_start sub_08046720
sub_08046720: @ 0x08046720
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08046798 @ =0x0808DEBC
	bl LoadBuildingBG_0804115C
	ldr r2, _0804679C @ =0x0808E8BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r2, _080467A0 @ =0x0808E6BC
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
	bl sub_080407FC
	movs r0, #0x9e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080467A8
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080467A4 @ =sub_080466DC
	bl RunEventScript_0804066C
	b _08046800
	.align 2, 0
_08046798: .4byte 0x0808DEBC
_0804679C: .4byte 0x0808E8BC
_080467A0: .4byte 0x0808E6BC
_080467A4: .4byte sub_080466DC
_080467A8:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080467D8
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080467D4 @ =sub_08046468
	bl RunEventScript_0804066C
	movs r0, #0x9c
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046800
	movs r0, #0x69
	bl EventQuestBegin_080406D0
	b _08046800
	.align 2, 0
_080467D4: .4byte sub_08046468
_080467D8:
	movs r0, #0x17
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080467F0
	cmp r0, #1
	ble _08046800
	cmp r0, #2
	beq _080467F6
	b _08046800
_080467F0:
	movs r0, #0x9d
	bl EventSetFlag_080406E4
_080467F6:
	ldr r0, _08046830 @ =sub_080465D8
	bl RunEventScript_0804066C
	bl sub_08040B28
_08046800:
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
_08046830: .4byte sub_080465D8
