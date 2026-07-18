	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08057220
sub_08057220: @ 0x08057220
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	mov r1, sp
	ldr r0, _0805724C @ =0x0808DC74
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
_0805724C: .4byte 0x0808DC74

	thumb_func_start sub_08057250
sub_08057250: @ 0x08057250
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	mov r1, sp
	ldr r0, _080572D8 @ =0x0808DC80
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl EventWinMesSet_08041058
	ldr r0, _080572DC @ =0x00100001
	bl EventWinMesSet_08041058
	ldr r0, _080572E0 @ =0x00100002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080572E8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080572E4 @ =0x00100003
	bl EventWinMesSet_08041058
	b _080573B0
	.align 2, 0
_080572D8: .4byte 0x0808DC80
_080572DC: .4byte 0x00100001
_080572E0: .4byte 0x00100002
_080572E4: .4byte 0x00100003
_080572E8:
	ldr r1, _08057348 @ =0x00100004
	movs r0, #0xf
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080573B0
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805734C @ =0x00100005
	bl EventWinMesSet_08041058
	ldr r0, _08057350 @ =0x00100006
	bl EventWinMesSet_08041058
	ldr r0, _08057354 @ =0x00100007
	bl EventWinMesSet_08041058
	ldr r0, _08057358 @ =0x00100008
	bl EventWinMesSet_08041058
	ldr r0, _0805735C @ =0x00100009
	bl EventWinMesSet_08041058
	ldr r0, _08057360 @ =0x0010000A
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057368
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08057364 @ =0x0010000B
	bl EventWinMesSet_08041058
	b _08057380
	.align 2, 0
_08057348: .4byte 0x00100004
_0805734C: .4byte 0x00100005
_08057350: .4byte 0x00100006
_08057354: .4byte 0x00100007
_08057358: .4byte 0x00100008
_0805735C: .4byte 0x00100009
_08057360: .4byte 0x0010000A
_08057364: .4byte 0x0010000B
_08057368:
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080573B8 @ =0x0010000F
	bl EventWinMesSet_08041058
	ldr r0, _080573BC @ =0x00100010
	bl EventWinMesSet_08041058
_08057380:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080573C0 @ =0x0010000C
	bl EventWinMesSet_08041058
	ldr r0, _080573C4 @ =0x0010000D
	bl EventWinMesSet_08041058
	ldr r0, _080573C8 @ =0x0010000E
	bl EventWinMesSet_08041058
	movs r0, #0x3e
	bl EventSetFlag_080406E4
	movs r0, #0x24
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0xf
	bl SetCharacterMetFlag_0802D7CC
_080573B0:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080573B8: .4byte 0x0010000F
_080573BC: .4byte 0x00100010
_080573C0: .4byte 0x0010000C
_080573C4: .4byte 0x0010000D
_080573C8: .4byte 0x0010000E

	thumb_func_start sub_080573CC
sub_080573CC: @ 0x080573CC
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0xc
	bl EventWinSpeakerSet_08041018
	movs r0, #0x3f
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080574DC
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574B4 @ =0x00100011
	bl EventWinMesSet_08041058
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574B8 @ =0x00100012
	bl EventWinMesSet_08041058
	movs r0, #0xc
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574BC @ =0x00100013
	bl EventWinMesSet_08041058
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	ldr r0, _080574C0 @ =0x00100014
	bl EventWinMesSet_08041058
	movs r0, #0xc
	bl EventWinSpeakerSet_08041018
	ldr r0, _080574C4 @ =0x00100015
	bl EventWinMesSet_08041058
	bl sub_08057220
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574C8 @ =0x00100016
	bl EventWinMesSet_08041058
	ldr r0, _080574CC @ =0x00100017
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574D0 @ =0x00100018
	bl EventWinMesSet_08041058
	movs r0, #6
	movs r1, #0x12
	bl QuestFinish_08042814
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	ldr r0, _080574D4 @ =0x00100019
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080574D8 @ =0x0010001A
	bl EventWinMesSet_08041058
	movs r0, #0x41
	bl SetEventFlag_080406BC
	b _08057530
	.align 2, 0
_080574B4: .4byte 0x00100011
_080574B8: .4byte 0x00100012
_080574BC: .4byte 0x00100013
_080574C0: .4byte 0x00100014
_080574C4: .4byte 0x00100015
_080574C8: .4byte 0x00100016
_080574CC: .4byte 0x00100017
_080574D0: .4byte 0x00100018
_080574D4: .4byte 0x00100019
_080574D8: .4byte 0x0010001A
_080574DC:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08057534 @ =0x0010001B
	bl EventWinMesSet_08041058
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	ldr r0, _08057538 @ =0x0010001C
	bl EventWinMesSet_08041058
	ldr r0, _0805753C @ =0x0010001D
	bl EventWinMesSet_08041058
	ldr r0, _08057540 @ =0x0010001E
	bl EventWinMesSet_08041058
	ldr r0, _08057544 @ =0x0010001F
	bl EventWinMesSet_08041058
	movs r0, #0x3e
	bl EventUnsetFlag_080406D0
	movs r0, #0x3f
	bl EventUnsetFlag_080406D0
	movs r0, #0x40
	bl EventUnsetFlag_080406D0
	movs r0, #0x41
	bl UnsetEventFlag_080406D0
_08057530:
	pop {r0}
	bx r0
	.align 2, 0
_08057534: .4byte 0x0010001B
_08057538: .4byte 0x0010001C
_0805753C: .4byte 0x0010001D
_08057540: .4byte 0x0010001E
_08057544: .4byte 0x0010001F

	thumb_func_start sub_08057548
sub_08057548: @ 0x08057548
	push {lr}
	bl sub_08057220
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0xd
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805759C @ =0x00100020
	bl EventWinMesSet_08041058
	ldr r0, _080575A0 @ =0x00100021
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080575A4 @ =0x00100022
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _080575A8 @ =0x00100023
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805759C: .4byte 0x00100020
_080575A0: .4byte 0x00100021
_080575A4: .4byte 0x00100022
_080575A8: .4byte 0x00100023

	thumb_func_start sub_080575AC
sub_080575AC: @ 0x080575AC
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08057618 @ =0x0808E4AC
	bl LoadBuildingBG_0804115C
	ldr r2, _0805761C @ =0x0808E7EC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x8c
	movs r2, #0x60
	bl EventPlaceChara_08041894
	ldr r2, _08057620 @ =0x0808E7FC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x38
	movs r2, #0x60
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x41
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057628
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08057624 @ =sub_08057548
	bl RunEventScript_0804066C
	b _0805767A
	.align 2, 0
_08057618: .4byte 0x0808E4AC
_0805761C: .4byte 0x0808E7EC
_08057620: .4byte 0x0808E7FC
_08057624: .4byte sub_08057548
_08057628:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057658
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08057654 @ =sub_08057250
	bl RunEventScript_0804066C
	movs r0, #0x3e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805767A
	movs r0, #5
	bl sub_08040F18
	b _0805767A
	.align 2, 0
_08057654: .4byte sub_08057250
_08057658:
	movs r0, #0x12
	bl EventBGMPlay_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057670
	movs r0, #0x3f
	bl EventSetFlag_080406E4
_08057670:
	ldr r0, _080576B0 @ =sub_080573CC
	bl RunEventScript_0804066C
	bl sub_08040F0C
_0805767A:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_08041DB8
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080576B0: .4byte sub_080573CC
