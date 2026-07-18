	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080567AC
sub_080567AC: @ 0x080567AC
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe0
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _08056810 @ =0x001C0001
	bl EventWinMesSet_08041058
	ldr r0, _08056814 @ =0x001C0002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805681C
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056818 @ =0x001C0003
	bl EventWinMesSet_08041058
	b _08056980
	.align 2, 0
_08056810: .4byte 0x001C0001
_08056814: .4byte 0x001C0002
_08056818: .4byte 0x001C0003
_0805681C:
	ldr r1, _080568E0 @ =0x001C0004
	movs r0, #0x1b
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805682C
	b _08056980
_0805682C:
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080568E4 @ =0x001C0005
	bl EventWinMesSet_08041058
	ldr r0, _080568E8 @ =0x001C0006
	bl EventWinMesSet_08041058
	ldr r0, _080568EC @ =0x001C0007
	bl EventWinMesSet_08041058
	ldr r0, _080568F0 @ =0x001C0008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080568F4 @ =0x001C0009
	bl EventWinMesSet_08041058
	ldr r0, _080568F8 @ =0x001C000A
	bl EventWinMesSet_08041058
	ldr r0, _080568FC @ =0x001C000B
	bl EventWinMesSet_08041058
	ldr r0, _08056900 @ =0x001C000C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08056908
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056904 @ =0x001C000D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	b _08056944
	.align 2, 0
_080568E0: .4byte 0x001C0004
_080568E4: .4byte 0x001C0005
_080568E8: .4byte 0x001C0006
_080568EC: .4byte 0x001C0007
_080568F0: .4byte 0x001C0008
_080568F4: .4byte 0x001C0009
_080568F8: .4byte 0x001C000A
_080568FC: .4byte 0x001C000B
_08056900: .4byte 0x001C000C
_08056904: .4byte 0x001C000D
_08056908:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056984 @ =0x001C0012
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056988 @ =0x001C0013
	bl EventWinMesSet_08041058
_08056944:
	ldr r0, _0805698C @ =0x001C000E
	bl EventWinMesSet_08041058
	ldr r0, _08056990 @ =0x001C000F
	bl EventWinMesSet_08041058
	ldr r0, _08056994 @ =0x001C0010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056998 @ =0x001C0011
	bl EventWinMesSet_08041058
	movs r0, #0x6e
	bl EventSetFlag_080406E4
	movs r0, #0x13
	bl SetCharacterMetFlag_0802D7CC
_08056980:
	pop {r0}
	bx r0
	.align 2, 0
_08056984: .4byte 0x001C0012
_08056988: .4byte 0x001C0013
_0805698C: .4byte 0x001C000E
_08056990: .4byte 0x001C000F
_08056994: .4byte 0x001C0010
_08056998: .4byte 0x001C0011

	thumb_func_start sub_0805699C
sub_0805699C: @ 0x0805699C
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	ldr r0, _080569D8 @ =0x001C0014
	bl EventWinMesSet_08041058
	ldr r0, _080569DC @ =0x001C0015
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080569E0 @ =0x001C0011
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080569D8: .4byte 0x001C0014
_080569DC: .4byte 0x001C0015
_080569E0: .4byte 0x001C0011

	thumb_func_start sub_080569E4
sub_080569E4: @ 0x080569E4
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056A84 @ =0x001C0027
	bl EventWinMesSet_08041058
	ldr r0, _08056A88 @ =0x001C0028
	bl EventWinMesSet_08041058
	ldr r0, _08056A8C @ =0x001C0029
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056AA8
	ldr r0, _08056A90 @ =0x001C0030
	bl EventWinMesSet_08041058
	ldr r0, _08056A94 @ =0x001C0031
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056A98 @ =0x001C0032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056A9C @ =0x001C0033
	bl EventWinMesSet_08041058
	ldr r0, _08056AA0 @ =0x001C0034
	bl EventWinMesSet_08041058
	ldr r0, _08056AA4 @ =0x001C0035
	bl EventWinMesSet_08041058
	movs r0, #0x6e
	bl EventUnsetFlag_080406D0
	movs r0, #0x6f
	bl EventUnsetFlag_080406D0
	movs r0, #0x70
	bl EventUnsetFlag_080406D0
	movs r0, #0x71
	bl EventUnsetFlag_080406D0
	movs r0, #0x72
	bl UnsetEventFlag_080406D0
	b _08056B28
	.align 2, 0
_08056A84: .4byte 0x001C0027
_08056A88: .4byte 0x001C0028
_08056A8C: .4byte 0x001C0029
_08056A90: .4byte 0x001C0030
_08056A94: .4byte 0x001C0031
_08056A98: .4byte 0x001C0032
_08056A9C: .4byte 0x001C0033
_08056AA0: .4byte 0x001C0034
_08056AA4: .4byte 0x001C0035
_08056AA8:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056B2C @ =0x001C002A
	bl EventWinMesSet_08041058
	ldr r0, _08056B30 @ =0x001C002B
	bl EventWinMesSet_08041058
	ldr r0, _08056B34 @ =0x001C002C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056B38 @ =0x001C002D
	bl EventWinMesSet_08041058
	movs r0, #9
	movs r1, #0x15
	bl QuestFinish_08042814
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056B3C @ =0x001C002E
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056B40 @ =0x001C002F
	bl EventWinMesSet_08041058
	movs r0, #0x72
	bl SetEventFlag_080406BC
_08056B28:
	pop {r0}
	bx r0
	.align 2, 0
_08056B2C: .4byte 0x001C002A
_08056B30: .4byte 0x001C002B
_08056B34: .4byte 0x001C002C
_08056B38: .4byte 0x001C002D
_08056B3C: .4byte 0x001C002E
_08056B40: .4byte 0x001C002F

	thumb_func_start sub_08056B44
sub_08056B44: @ 0x08056B44
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #0xb
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056B80 @ =0x001C0036
	bl EventWinMesSet_08041058
	ldr r0, _08056B84 @ =0x001C0037
	bl EventWinMesSet_08041058
	ldr r0, _08056B88 @ =0x001C0038
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08056B80: .4byte 0x001C0036
_08056B84: .4byte 0x001C0037
_08056B88: .4byte 0x001C0038

	thumb_func_start sub_08056B8C
sub_08056B8C: @ 0x08056B8C
	push {lr}
	sub sp, #8
	bl EventInit_080405B8
	ldr r0, _08056C28 @ =0x0808E45C
	bl LoadBuildingBG_0804115C
	ldr r2, _08056C2C @ =0x0808E7DC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x80
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r2, _08056C30 @ =0x0808E6CC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x80
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056C34 @ =0x0808DC6C
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	movs r0, #1
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	bl sub_080407FC
	movs r0, #0x72
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08056C3C
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08056C38 @ =sub_08056B44
	bl RunEventScript_0804066C
	b _08056C88
	.align 2, 0
_08056C28: .4byte 0x0808E45C
_08056C2C: .4byte 0x0808E7DC
_08056C30: .4byte 0x0808E6CC
_08056C34: .4byte 0x0808DC6C
_08056C38: .4byte sub_08056B44
_08056C3C:
	movs r0, #0x6f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056C5C
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	ldr r0, _08056C58 @ =sub_080569E4
	bl RunEventScript_0804066C
	b _08056C88
	.align 2, 0
_08056C58: .4byte sub_080569E4
_08056C5C:
	movs r0, #0x6e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056C7C
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	ldr r0, _08056C78 @ =sub_0805699C
	bl RunEventScript_0804066C
	b _08056C88
	.align 2, 0
_08056C78: .4byte sub_0805699C
_08056C7C:
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08056CBC @ =sub_080567AC
	bl RunEventScript_0804066C
_08056C88:
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
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08056CBC: .4byte sub_080567AC
