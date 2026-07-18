	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08042608
sub_08042608: @ 0x08042608
	push {r4, r5, lr}
	ldr r0, _08042654 @ =0x03001628
	ldrb r3, [r0]
	movs r1, #0x7f
	ands r1, r3
	movs r2, #0xa0
	lsls r2, r2, #0x13
	ldr r4, _08042658 @ =0x000003FF
	adds r0, r4, #0
	strh r0, [r2]
	ldr r2, _0804265C @ =0x030024E0
	ldr r5, _08042660 @ =0x020338C0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r4, r0, #7
	adds r0, r4, r5
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r0, r5, #2
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r2, #0x3e]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0804264E
	ldr r1, _08042664 @ =0x040000B0
	adds r0, r5, #4
	adds r0, r4, r0
	str r0, [r1]
	ldr r0, _08042668 @ =0x04000040
	str r0, [r1, #4]
	ldr r0, _0804266C @ =0xA6400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0804264E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042654: .4byte 0x03001628
_08042658: .4byte 0x000003FF
_0804265C: .4byte 0x030024E0
_08042660: .4byte 0x020338C0
_08042664: .4byte 0x040000B0
_08042668: .4byte 0x04000040
_0804266C: .4byte 0xA6400001

	thumb_func_start sub_08042670
sub_08042670: @ 0x08042670
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _080426A4 @ =0x020338C0
	adds r5, r0, r1
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080426A8 @ =0x01000140
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x7f
	bgt _080426AC
	movs r1, #0
	movs r3, #0x77
	b _080426B0
	.align 2, 0
_080426A4: .4byte 0x020338C0
_080426A8: .4byte 0x01000140
_080426AC:
	movs r1, #0x77
	movs r3, #0xf0
_080426B0:
	movs r0, #0
	movs r2, #0
	lsls r1, r1, #8
	orrs r1, r3
_080426B8:
	cmp r0, #0x1f
	ble _080426C4
	cmp r0, #0x2f
	bgt _080426C4
	strh r1, [r5]
	b _080426C6
_080426C4:
	strh r2, [r5]
_080426C6:
	adds r0, #1
	adds r5, #4
	cmp r0, #0x9f
	ble _080426B8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080426D8
sub_080426D8: @ 0x080426D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080426DC
sub_080426DC: @ 0x080426DC
	bx lr
	.align 2, 0

	thumb_func_start sub_080426E0
sub_080426E0: @ 0x080426E0
	bx lr
	.align 2, 0
