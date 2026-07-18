	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08042078
sub_08042078: @ 0x08042078
	push {lr}
	bl sub_08007BD4
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	lsrs r0, r0, #8
	cmp r0, #0
	bne _0804208A
	movs r0, #1
_0804208A:
	ldr r1, _080420BC @ =0x0807F240
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldrb r0, [r2, #1]
	muls r1, r0, r1
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r0, #0
	bne _080420C4
	ldr r1, _080420C0 @ =0x030024E0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r1, #0x16]
	b _080420CE
	.align 2, 0
_080420BC: .4byte 0x0807F240
_080420C0: .4byte 0x030024E0
_080420C4:
	ldr r1, _080420DC @ =0x030024E0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r1, #0x18]
_080420CE:
	ldrh r0, [r2, #2]
	ldrh r3, [r2, #4]
	adds r0, r0, r3
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_080420DC: .4byte 0x030024E0

	thumb_func_start sub_080420E0
sub_080420E0: @ 0x080420E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r4, _08042140 @ =0x030015DE
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804210E
	ldr r0, _08042144 @ =sub_08042078
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	strh r0, [r4]
_0804210E:
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08007BBC
	adds r5, r0, #0
	movs r4, #0
	strb r6, [r5]
	strb r7, [r5, #1]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #8
	strh r0, [r5, #2]
	strh r4, [r5, #4]
	cmp r6, #0
	bne _0804214C
	ldr r0, _08042148 @ =0x030024E0
	ldrh r1, [r0, #0xe]
	rsbs r1, r1, #0
	strh r1, [r5, #8]
	ldrh r0, [r0, #0x16]
	b _08042156
	.align 2, 0
_08042140: .4byte 0x030015DE
_08042144: .4byte sub_08042078
_08042148: .4byte 0x030024E0
_0804214C:
	ldr r0, _08042164 @ =0x030024E0
	ldrh r1, [r0, #0x10]
	rsbs r1, r1, #0
	strh r1, [r5, #8]
	ldrh r0, [r0, #0x18]
_08042156:
	rsbs r0, r0, #0
	strh r0, [r5, #0xa]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042164: .4byte 0x030024E0

	thumb_func_start sub_08042168
sub_08042168: @ 0x08042168
	push {r4, r5, lr}
	ldr r4, _08042184 @ =0x030015DE
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _0804217E
	bl sub_08007A08
	strh r5, [r4]
_0804217E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042184: .4byte 0x030015DE

