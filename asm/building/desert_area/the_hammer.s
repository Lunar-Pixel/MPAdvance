	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0804E5D0
sub_0804E5D0: @ 0x0804E5D0
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x8c
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _0804E618 @ =0x00230001
	bl EventWinMesSet_08041058
	ldr r0, _0804E61C @ =0x00230002
	bl EventWinMesSet_08041058
_0804E5EE:
	ldr r0, _0804E620 @ =0x00230003
	bl EventWinMesSet_08041058
	ldr r0, _0804E624 @ =0x00230004
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E62C
	ldr r0, _0804E628 @ =0x00230006
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E5EE
	b _0804E632
	.align 2, 0
_0804E618: .4byte 0x00230001
_0804E61C: .4byte 0x00230002
_0804E620: .4byte 0x00230003
_0804E624: .4byte 0x00230004
_0804E628: .4byte 0x00230006
_0804E62C:
	movs r0, #0x87
	bl EventSetFlag_080406E4
_0804E632:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E638
sub_0804E638: @ 0x0804E638
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	ldr r0, _0804E660 @ =0x00230005
	bl EventWinMesSet_08041058
	movs r0, #0x87
	bl EventUnsetFlag_080406D0
	movs r0, #0x8a
	bl EventUnsetFlag_080406D0
	movs r0, #0x8b
	bl EventUnsetFlag_080406D0
	pop {r0}
	bx r0
	.align 2, 0
_0804E660: .4byte 0x00230005

	thumb_func_start sub_0804E664
sub_0804E664: @ 0x0804E664
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x8c
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	ldr r0, _0804E688 @ =0x0023001D
	bl EventWinMesSet_08041058
	ldr r0, _0804E68C @ =0x0023001E
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804E688: .4byte 0x0023001D
_0804E68C: .4byte 0x0023001E

	thumb_func_start sub_0804E690
sub_0804E690: @ 0x0804E690
	push {lr}
	bl EventInit_080405B8
	ldr r0, _0804E6B8 @ =0x0808E13C
	bl LoadBuildingBG_0804115C
	movs r0, #0x8b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E6C0
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804E6BC @ =sub_0804E664
	bl RunEventScript_0804066C
	b _0804E716
	.align 2, 0
_0804E6B8: .4byte 0x0808E13C
_0804E6BC: .4byte sub_0804E664
_0804E6C0:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E6F0
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804E6EC @ =sub_0804E5D0
	bl RunEventScript_0804066C
	movs r0, #0x87
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E716
	movs r0, #0xd
	bl sub_08040F18
	b _0804E716
	.align 2, 0
_0804E6EC: .4byte sub_0804E5D0
_0804E6F0:
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E706
	movs r0, #0x20
	movs r1, #8
	bl sub_080068A0
	b _0804E716
_0804E706:
	movs r0, #0x1c
	bl EventBGMPlay_080410A8
	ldr r0, _0804E72C @ =sub_0804E638
	bl RunEventScript_0804066C
	bl sub_08040F0C
_0804E716:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0804E72C: .4byte sub_0804E638
