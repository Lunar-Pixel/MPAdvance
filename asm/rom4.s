	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08040008
sub_08040008: @ 0x08040008
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, _08040040 @ =0x030013CC
	ldr r3, [r1]
	adds r2, r3, #0
	adds r2, #0xb0
	ldrh r1, [r4, #2]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0xb2
	ldrh r2, [r4, #4]
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrb r0, [r4]
	cmp r0, #0
	beq _08040044
	cmp r0, #1
	beq _08040062
	b _08040076
	.align 2, 0
_08040040: .4byte 0x030013CC
_08040044:
	ldr r0, [r4, #8]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4, #8]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4, #8]
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r4]
	b _08040076
_08040062:
	ldr r1, [r4, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08040076
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_08040076:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0804007C
sub_0804007C: @ 0x0804007C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov sl, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08040148 @ =sub_08040008
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	bl sub_08007BBC
	mov sb, r0
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	strh r4, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	adds r1, r6, #0
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r7, _0804014C @ =0x030013CC
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, #0xb2
	ldrh r0, [r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, r5, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xa4
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r1, _08040150 @ =0x0811CE60
	ldr r2, _08040154 @ =0x0811CDD4
	adds r0, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	mov r0, sb
	str r6, [r0, #8]
	mov r0, r8
	mov r1, sl
	bl sub_08007AD8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040148: .4byte sub_08040008
_0804014C: .4byte 0x030013CC
_08040150: .4byte 0x0811CE60
_08040154: .4byte 0x0811CDD4

	thumb_func_start sub_08040158
sub_08040158: @ 0x08040158
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0804018C @ =0x030013CC
	ldr r0, [r5]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	ldr r1, _08040190 @ =0x0808A22C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804018C: .4byte 0x030013CC
_08040190: .4byte 0x0808A22C

	thumb_func_start sub_08040194
sub_08040194: @ 0x08040194
	push {lr}
	movs r0, #0
	bl sub_08040158
	pop {r0}
	bx r0

	thumb_func_start sub_080401A0
sub_080401A0: @ 0x080401A0
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080401C4 @ =0x030013CC
_080401A6:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x8c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	adds r4, #1
	cmp r4, #2
	ble _080401A6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080401C4: .4byte 0x030013CC

	thumb_func_start sub_080401C8
sub_080401C8: @ 0x080401C8
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080401EC @ =0x030013CC
_080401CE:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x8c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #2
	ble _080401CE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080401EC: .4byte 0x030013CC

	thumb_func_start sub_080401F0
sub_080401F0: @ 0x080401F0
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08040210 @ =0x030013CC
_080401F6:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x8c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #2
	ble _080401F6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040210: .4byte 0x030013CC

	thumb_func_start sub_08040214
sub_08040214: @ 0x08040214
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #0
	ldr r0, _080402B8 @ =0x030013CC
	mov r8, r0
_08040220:
	movs r0, #1
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _080402BC @ =0x0808A214
	lsls r5, r7, #1
	adds r0, r5, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #0x8c
	bl sub_08009A70
	ldr r0, _080402C0 @ =0x0808A220
	lsls r6, r7, #2
	adds r0, r6, r0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _080402C4 @ =0x080FE2F8
	ldr r0, _080402C8 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r0, _080402CC @ =0x080FE2EC
	adds r2, r2, r0
	ldr r2, [r2]
	ldr r0, _080402D0 @ =0x0808A21A
	adds r5, r5, r0
	ldrb r3, [r5]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x8c
	adds r0, r0, r6
	str r4, [r0]
	adds r7, #1
	cmp r7, #2
	ble _08040220
	ldr r0, _080402B8 @ =0x030013CC
	ldr r0, [r0]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	ldr r1, _080402D4 @ =sub_080401F0
	bl sub_08007BA0
	bl sub_08040194
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080402B8: .4byte 0x030013CC
_080402BC: .4byte 0x0808A214
_080402C0: .4byte 0x0808A220
_080402C4: .4byte 0x080FE2F8
_080402C8: .4byte 0x03004400
_080402CC: .4byte 0x080FE2EC
_080402D0: .4byte 0x0808A21A
_080402D4: .4byte sub_080401F0

	thumb_func_start sub_080402D8
sub_080402D8: @ 0x080402D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080402DC
sub_080402DC: @ 0x080402DC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08040310 @ =0x030013CC
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	ldr r1, _08040314 @ =0x0808A230
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040310: .4byte 0x030013CC
_08040314: .4byte 0x0808A230

	thumb_func_start sub_08040318
sub_08040318: @ 0x08040318
	push {lr}
	ldr r0, _08040334 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x45
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_080402DC
	pop {r0}
	bx r0
	.align 2, 0
_08040334: .4byte 0x030013CC

	thumb_func_start sub_08040338
sub_08040338: @ 0x08040338
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08040384 @ =0x030013CC
	mov r8, r0
	ldr r0, [r0]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #0xca
	bl sub_0806F5DC
	strb r4, [r6, #4]
	strb r5, [r6, #5]
	mov r0, r8
	ldr r1, [r0]
	adds r1, #0x45
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080402DC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040384: .4byte 0x030013CC

	thumb_func_start sub_08040388
sub_08040388: @ 0x08040388
	push {lr}
	ldr r0, _0804039C @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0x9c
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	pop {r0}
	bx r0
	.align 2, 0
_0804039C: .4byte 0x030013CC

	thumb_func_start sub_080403A0
sub_080403A0: @ 0x080403A0
	push {lr}
	ldr r0, _080403B4 @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0x9c
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	pop {r0}
	bx r0
	.align 2, 0
_080403B4: .4byte 0x030013CC

	thumb_func_start sub_080403B8
sub_080403B8: @ 0x080403B8
	push {lr}
	ldr r0, _080403CC @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0x9c
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080403CC: .4byte 0x030013CC

	thumb_func_start sub_080403D0
sub_080403D0: @ 0x080403D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _08040404 @ =0x030013CC
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xb7
	ldrb r1, [r1]
	adds r0, #0xb5
	strb r1, [r0]
	ldr r5, _08040408 @ =0x02034BF0
	ldr r1, _0804040C @ =0x00000237
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040410
	ldr r0, [r4]
	adds r0, #0xb5
	movs r1, #8
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0xb6
	movs r1, #1
	strb r1, [r0]
	b _080404AE
	.align 2, 0
_08040404: .4byte 0x030013CC
_08040408: .4byte 0x02034BF0
_0804040C: .4byte 0x00000237
_08040410:
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08040426
	ldr r0, [r4]
	adds r0, #0xb5
	movs r1, #2
	strb r1, [r0]
	b _080404AE
_08040426:
	movs r2, #0x89
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r2, _08040490 @ =0x08089FF0
	ldr r1, [r4]
	adds r1, #0xb5
	ldrb r1, [r1]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldrb r1, [r1, #5]
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080404AE
	movs r3, #0
	movs r0, #0x8d
	lsls r0, r0, #2
	adds r0, r0, r5
	mov sb, r0
	ldr r1, _08040494 @ =0x08087BB2
	mov r8, r1
_08040452:
	mov r2, sb
	ldrb r0, [r2]
	lsls r1, r3, #2
	add r1, r8
	ldrh r2, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	adds r7, r3, #1
	cmp r0, #0
	beq _080404A8
	movs r5, #0
	adds r6, r2, #0
	ldr r0, _08040490 @ =0x08089FF0
	adds r4, r0, #4
_08040470:
	ldrb r0, [r4]
	cmp r0, r6
	bne _080404A0
	ldrb r1, [r4, #1]
	ldr r0, _08040498 @ =0x02034E14
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080404A0
	ldr r0, _0804049C @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0xb5
	strb r5, [r0]
	b _080404A8
	.align 2, 0
_08040490: .4byte 0x08089FF0
_08040494: .4byte 0x08087BB2
_08040498: .4byte 0x02034E14
_0804049C: .4byte 0x030013CC
_080404A0:
	adds r4, #0x10
	adds r5, #1
	cmp r5, #7
	ble _08040470
_080404A8:
	adds r3, r7, #0
	cmp r3, #7
	ble _08040452
_080404AE:
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r1, _08040524 @ =0x08089FF0
	ldr r5, _08040528 @ =0x030013CC
	ldr r0, [r5]
	adds r0, #0xb5
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r1, #0x18
	ldrb r2, [r0, #1]
	subs r2, #0x74
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #9
	bl sub_08009AB4
	ldr r1, _0804052C @ =0x0809CA9C
	ldr r2, _08040530 @ =0x0809CA94
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x9c
	str r4, [r0]
	movs r2, #0x28
	ldrsh r0, [r1, r2]
	ldr r1, _08040534 @ =sub_080403B8
	bl sub_08007BA0
	bl sub_08040318
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040524: .4byte 0x08089FF0
_08040528: .4byte 0x030013CC
_0804052C: .4byte 0x0809CA9C
_08040530: .4byte 0x0809CA94
_08040534: .4byte sub_080403B8

	thumb_func_start sub_08040538
sub_08040538: @ 0x08040538
	bx lr
	.align 2, 0

	thumb_func_start sub_0804053C
sub_0804053C: @ 0x0804053C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldr r0, _080405A4 @ =0x08089FF0
	ldrb r2, [r5, #4]
	lsls r2, r2, #4
	adds r2, r2, r0
	ldrb r1, [r2]
	ldrb r3, [r5, #5]
	lsls r3, r3, #4
	adds r3, r3, r0
	ldrb r0, [r3]
	subs r0, r0, r1
	ldrh r4, [r5, #2]
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	ldrb r0, [r3, #1]
	subs r0, r0, r2
	muls r0, r4, r0
	adds r2, r2, r0
	ldr r4, _080405A8 @ =0x030013CC
	ldr r0, [r4]
	adds r0, #0x9c
	ldr r0, [r0]
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, #0x74
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0804059C
	movs r0, #0
	strh r0, [r5, #2]
	ldr r0, [r4]
	ldrb r1, [r5, #5]
	adds r0, #0xb5
	strb r1, [r0]
	bl sub_08040318
_0804059C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080405A4: .4byte 0x08089FF0
_080405A8: .4byte 0x030013CC

	thumb_func_start sub_080405AC
sub_080405AC: @ 0x080405AC
	push {lr}
	movs r0, #3
	bl sub_08006878
	pop {r0}
	bx r0

	thumb_func_start sub_080405B8
sub_080405B8: @ 0x080405B8
	push {r4, lr}
	sub sp, #4
	ldr r4, _08040614 @ =0x02033618
	adds r1, r4, #0
	subs r1, #0x48
	ldr r0, _08040618 @ =0x0000FFFF
	strh r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	mov r1, sp
	strh r0, [r1]
	ldr r2, _0804061C @ =0x010000A8
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r0, #0
	movs r1, #0xb
_080405E2:
	ldrh r0, [r4, #0x18]
	orrs r0, r2
	strh r0, [r4, #0x18]
	subs r1, #1
	adds r4, #0x1c
	cmp r1, #0
	bge _080405E2
	ldr r1, _08040620 @ =0x030015D8
	ldr r0, _08040618 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	ldr r0, _08040624 @ =0x030015DC
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08040628 @ =0x030015DE
	strh r1, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040614: .4byte 0x02033618
_08040618: .4byte 0x0000FFFF
_0804061C: .4byte 0x010000A8
_08040620: .4byte 0x030015D8
_08040624: .4byte 0x030015DC
_08040628: .4byte 0x030015DE

	thumb_func_start sub_0804062C
sub_0804062C: @ 0x0804062C
	push {r4, lr}
	movs r4, #0
_08040630:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080416F0
	adds r4, #1
	cmp r4, #0xb
	ble _08040630
	ldr r1, _08040650 @ =0x020335D0
	movs r0, #0
	strb r0, [r1, #2]
	bl sub_08002B0C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040650: .4byte 0x020335D0

	thumb_func_start sub_08040654
sub_08040654: @ 0x08040654
	push {lr}
	cmp r0, #0
	beq _08040668
	movs r2, #0x80
	lsls r2, r2, #4
	movs r1, #0x91
	bl sub_08002A44
	bl sub_08002B0C
_08040668:
	pop {r0}
	bx r0

	thumb_func_start sub_0804066C
sub_0804066C: @ 0x0804066C
	push {lr}
	cmp r0, #0
	beq _08040676
	bl call_via_r0
_08040676:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804067C
sub_0804067C: @ 0x0804067C
	push {lr}
	ldr r2, _0804068C @ =0x03004400
	ldrb r1, [r2, #8]
	strb r1, [r2, #0xa]
	bl sub_08040654
	pop {r0}
	bx r0
	.align 2, 0
_0804068C: .4byte 0x03004400

	thumb_func_start sub_08040690
sub_08040690: @ 0x08040690
	push {lr}
	bl sub_08002B98
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804069C
sub_0804069C: @ 0x0804069C
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_08006920
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080406AC
sub_080406AC: @ 0x080406AC
	push {lr}
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08006920
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080406BC
sub_080406BC: @ 0x080406BC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080406E4
	bl sub_080406AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080406D0
sub_080406D0: @ 0x080406D0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080406FC
	bl sub_080406AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080406E4
sub_080406E4: @ 0x080406E4
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080406F8 @ =0x020335F8
	bl sub_0800B844
	pop {r0}
	bx r0
	.align 2, 0
_080406F8: .4byte 0x020335F8

	thumb_func_start sub_080406FC
sub_080406FC: @ 0x080406FC
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08040710 @ =0x020335F8
	bl sub_0800B860
	pop {r0}
	bx r0
	.align 2, 0
_08040710: .4byte 0x020335F8

	thumb_func_start sub_08040714
sub_08040714: @ 0x08040714
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0804072C @ =0x020335F8
	bl sub_0800B87C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_0804072C: .4byte 0x020335F8

	thumb_func_start sub_08040730
sub_08040730: @ 0x08040730
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804074C @ =0x020335F8
	ldr r2, _08040750 @ =0x01000010
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0804074C: .4byte 0x020335F8
_08040750: .4byte 0x01000010

	thumb_func_start sub_08040754
sub_08040754: @ 0x08040754
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, r3, #0
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08040772
	ldr r2, _080407A4 @ =0x030024E0
	ldrh r1, [r2]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
_08040772:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08040788
	ldr r2, _080407A4 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08040788:
	movs r0, #4
	ands r4, r0
	cmp r4, #0
	beq _0804079E
	ldr r2, _080407A4 @ =0x030024E0
	ldrh r1, [r2]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
_0804079E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080407A4: .4byte 0x030024E0

	thumb_func_start sub_080407A8
sub_080407A8: @ 0x080407A8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, r3, #0
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080407C2
	ldr r2, _080407EC @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _080407F0 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
_080407C2:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080407D4
	ldr r2, _080407EC @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _080407F4 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
_080407D4:
	movs r0, #4
	ands r4, r0
	cmp r4, #0
	beq _080407E6
	ldr r2, _080407EC @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _080407F8 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2]
_080407E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080407EC: .4byte 0x030024E0
_080407F0: .4byte 0x0000F7FF
_080407F4: .4byte 0x0000FBFF
_080407F8: .4byte 0x0000EFFF

	thumb_func_start sub_080407FC
sub_080407FC: @ 0x080407FC
	push {lr}
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0804081C @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	pop {r0}
	bx r0
	.align 2, 0
_0804081C: .4byte 0x030024E0

	thumb_func_start sub_08040820
sub_08040820: @ 0x08040820
	push {lr}
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08040838
sub_08040838: @ 0x08040838
	push {lr}
	ldr r1, _08040858 @ =0x00007FFF
	movs r0, #0x20
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0804085C @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	pop {r0}
	bx r0
	.align 2, 0
_08040858: .4byte 0x00007FFF
_0804085C: .4byte 0x030024E0

	thumb_func_start sub_08040860
sub_08040860: @ 0x08040860
	push {lr}
	ldr r1, _08040878 @ =0x00007FFF
	movs r0, #0x20
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	pop {r0}
	bx r0
	.align 2, 0
_08040878: .4byte 0x00007FFF

	thumb_func_start sub_0804087C
sub_0804087C: @ 0x0804087C
	push {lr}
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0804089C @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	pop {r0}
	bx r0
	.align 2, 0
_0804089C: .4byte 0x030024E0

	thumb_func_start sub_080408A0
sub_080408A0: @ 0x080408A0
	push {lr}
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080408B8
sub_080408B8: @ 0x080408B8
	ldr r0, _080408C0 @ =0x03004400
	ldrb r0, [r0, #0xe]
	bx lr
	.align 2, 0
_080408C0: .4byte 0x03004400

	thumb_func_start sub_080408C4
sub_080408C4: @ 0x080408C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0804091C @ =0x030024E0
	ldrh r0, [r0, #4]
	mov sb, r0
	bl sub_08005A2C
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08040920
	movs r0, #2
	bl sub_08002B98
	bl sub_08005934
	movs r0, #1
	bl sub_080062D0
	movs r0, #2
	bl sub_080062D0
	movs r0, #0
	bl sub_0800648C
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08040920
	movs r0, #0
	b _08040A36
	.align 2, 0
_0804091C: .4byte 0x030024E0
_08040920:
	bl sub_080410D0
	bl sub_08040820
	ldr r7, _08040A44 @ =0x030024E0
	ldrh r1, [r7, #4]
	ldr r0, _08040A48 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r7, #4]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	adds r0, r5, #0
	bl sub_08006920
	bl sub_08040730
	adds r0, r5, #0
	bl sub_0800693C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	bl sub_0802F998
	ldr r6, _08040A4C @ =0x0808DA3C
	lsls r5, r4, #1
	adds r5, r5, r4
	lsls r5, r5, #2
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, _08040A50 @ =0x05000180
	bl sub_08008308
	adds r0, r6, #4
	adds r0, r5, r0
	ldr r0, [r0]
	ldr r1, _08040A54 @ =0x0600C000
	bl sub_08008374
	adds r6, #8
	adds r5, r5, r6
	ldr r0, [r5]
	ldr r1, _08040A58 @ =0x0600E800
	movs r2, #0
	movs r3, #0xc
	bl sub_080083CC
	mov r4, sp
	mov r0, r8
	mov r1, sp
	bl sub_08005C38
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804099A
	movs r0, #4
	strh r0, [r7, #0xa]
_0804099A:
	mov r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08040A5C @ =0xFFFFFF00
	ldr r2, [sp, #4]
	ands r2, r1
	orrs r2, r0
	ldr r0, _08040A60 @ =0xFFFF00FF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	str r2, [sp, #4]
	mov r0, sp
	ldrb r0, [r0]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _08040A64 @ =0xFF00FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x18
	ldr r2, _08040A68 @ =0x00FFFFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	add r0, sp, #4
	movs r1, #0
	bl sub_08004300
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	movs r1, #0
	bl sub_080044C0
	bl sub_080407FC
	movs r0, #0x67
	bl sub_08041100
	movs r0, #6
	bl sub_08005A88
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_080060A8
	bl sub_08041138
	bl sub_08040820
	adds r0, r4, #0
	bl sub_080043F0
	bl sub_08004504
	mov r0, sb
	strh r0, [r7, #4]
	movs r0, #0
	strh r0, [r7, #0xa]
	bl sub_08006A84
	bl sub_080407FC
	movs r0, #1
_08040A36:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040A44: .4byte 0x030024E0
_08040A48: .4byte 0x0000FFFC
_08040A4C: .4byte 0x0808DA3C
_08040A50: .4byte 0x05000180
_08040A54: .4byte 0x0600C000
_08040A58: .4byte 0x0600E800
_08040A5C: .4byte 0xFFFFFF00
_08040A60: .4byte 0xFFFF00FF
_08040A64: .4byte 0xFF00FFFF
_08040A68: .4byte 0x00FFFFFF

	thumb_func_start sub_08040A6C
sub_08040A6C: @ 0x08040A6C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08001F2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08040A80
	movs r0, #1
	b _08040B06
_08040A80:
	adds r0, r4, #0
	bl sub_080410A8
	movs r0, #0x35
	bl sub_08041018
	ldr r0, _08040AB4 @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r0, #8
	bl sub_08005BE0
	ldr r4, _08040AB8 @ =0x02034BF0
	ldrb r1, [r4, #0xd]
	movs r0, #0
	bl sub_08005C10
	movs r0, #0x42
	bl sub_08041058
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08040ABC
	movs r0, #0x48
	bl sub_08041058
	b _08040AFC
	.align 2, 0
_08040AB4: .4byte 0x03004400
_08040AB8: .4byte 0x02034BF0
_08040ABC:
	movs r0, #0x43
	bl sub_08041058
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08040AD0
	movs r0, #0x53
	bl sub_08041058
	b _08040AD6
_08040AD0:
	movs r0, #0x44
	bl sub_08041058
_08040AD6:
	movs r0, #0x45
	bl sub_0804106C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040AFC
	movs r0, #0x46
	bl sub_08041058
	ldr r1, _08040AF8 @ =0x02034BF0
	ldrb r0, [r1, #0xd]
	subs r0, #1
	strb r0, [r1, #0xd]
	movs r4, #0
	b _08040AFE
	.align 2, 0
_08040AF8: .4byte 0x02034BF0
_08040AFC:
	movs r4, #2
_08040AFE:
	bl sub_08041008
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
_08040B06:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08040B0C
sub_08040B0C: @ 0x08040B0C
	push {lr}
	ldr r0, _08040B1C @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x11
	beq _08040B20
	movs r0, #0
	b _08040B22
	.align 2, 0
_08040B1C: .4byte 0x03004400
_08040B20:
	movs r0, #1
_08040B22:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08040B28
sub_08040B28: @ 0x08040B28
	push {lr}
	bl sub_08006894
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08040B34
sub_08040B34: @ 0x08040B34
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08040B54 @ =0x03004400
	ldrb r1, [r1, #0xe]
	bl sub_08001E04
	movs r0, #8
	bl sub_08001930
	movs r0, #0x11
	bl sub_08006884
	pop {r0}
	bx r0
	.align 2, 0
_08040B54: .4byte 0x03004400

	thumb_func_start sub_08040B58
sub_08040B58: @ 0x08040B58
	push {lr}
	bl sub_08001F2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08040B68
sub_08040B68: @ 0x08040B68
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08040B80 @ =0x03004400
	ldrb r1, [r1, #0xe]
	bl sub_08001EBC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08040B80: .4byte 0x03004400

	thumb_func_start sub_08040B84
sub_08040B84: @ 0x08040B84
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0802F8D8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08040B94
sub_08040B94: @ 0x08040B94
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08040BA8
sub_08040BA8: @ 0x08040BA8
	push {lr}
	bl sub_08007724
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08040BB8
sub_08040BB8: @ 0x08040BB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r1, sp
	ldr r0, _08040C70 @ =0x0808DAA8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r0, sp, #0x10
	mov r8, r0
	ldr r1, _08040C74 @ =0x0808DAB8
	movs r2, #4
	bl sub_08072A10
	ldr r5, _08040C78 @ =0x0814221C
	adds r0, r5, #0
	bl sub_08006C14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r7, _08040C7C @ =0x080ECFE0
	adds r0, r7, #0
	bl sub_08006C14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _08040C80 @ =0x0814217C
	ldr r1, _08040C84 @ =0x05000340
	bl sub_08008308
	mov r2, sl
	lsls r1, r2, #5
	ldr r4, _08040C88 @ =0x06010000
	adds r1, r1, r4
	adds r0, r5, #0
	bl sub_08008374
	ldr r0, _08040C8C @ =0x080ECDC0
	ldr r1, _08040C90 @ =0x05000360
	bl sub_08008308
	mov r3, sb
	lsls r1, r3, #5
	adds r1, r1, r4
	adds r0, r7, #0
	bl sub_08008374
	ldr r0, _08040C94 @ =0xFFFF0000
	ands r6, r0
	movs r0, #0x78
	orrs r6, r0
	ldr r0, _08040C98 @ =0x0000FFFF
	ands r6, r0
	ldr r0, _08040C9C @ =0xFFE80000
	orrs r6, r0
	movs r7, #0
	mov r4, sp
	adds r4, #0x14
	str r4, [sp, #0x3c]
	mov r4, sp
	ldr r5, [sp, #0x3c]
_08040C3E:
	movs r0, #2
	movs r1, #0x10
	bl sub_080099E0
	str r0, [r5]
	cmp r7, #0
	bne _08040CA8
	ldr r0, [sp, #0x14]
	mov r2, sl
	lsls r1, r2, #5
	ldr r3, _08040C88 @ =0x06010000
	adds r1, r1, r3
	bl sub_08009A78
	ldr r0, [sp, #0x14]
	movs r1, #0xa
	bl sub_08009AB4
	ldr r0, [sp, #0x14]
	ldr r1, _08040CA0 @ =0x08142210
	ldr r2, _08040CA4 @ =0x081421F4
	movs r3, #1
	bl sub_08009ACC
	b _08040CCC
	.align 2, 0
_08040C70: .4byte 0x0808DAA8
_08040C74: .4byte 0x0808DAB8
_08040C78: .4byte 0x0814221C
_08040C7C: .4byte 0x080ECFE0
_08040C80: .4byte 0x0814217C
_08040C84: .4byte 0x05000340
_08040C88: .4byte 0x06010000
_08040C8C: .4byte 0x080ECDC0
_08040C90: .4byte 0x05000360
_08040C94: .4byte 0xFFFF0000
_08040C98: .4byte 0x0000FFFF
_08040C9C: .4byte 0xFFE80000
_08040CA0: .4byte 0x08142210
_08040CA4: .4byte 0x081421F4
_08040CA8:
	mov r2, sb
	lsls r1, r2, #5
	ldr r3, _08040D24 @ =0x06010000
	adds r1, r1, r3
	bl sub_08009A78
	ldr r0, [r5]
	movs r1, #0xb
	bl sub_08009AB4
	ldr r0, [r5]
	mov r2, r8
	adds r1, r2, r7
	ldrb r3, [r1]
	ldr r1, _08040D28 @ =0x080ECFA4
	ldr r2, _08040D2C @ =0x080ECF58
	bl sub_08009ACC
_08040CCC:
	ldr r0, [r5]
	ldrh r1, [r4]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	ldrh r3, [r4, #2]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldm r5!, {r0}
	movs r1, #1
	bl sub_08009A34
	adds r4, #4
	adds r7, #1
	cmp r7, #3
	ble _08040C3E
	movs r4, #0
	str r4, [sp, #0x24]
	movs r0, #0
	str r0, [sp, #0x28]
	movs r1, #0
	str r1, [sp, #0x2c]
	movs r2, #1
	str r2, [sp, #0x30]
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_0806F5DC
	ldr r3, [sp, #0x3c]
	str r3, [sp, #0x34]
_08040D10:
	ldr r4, [sp, #0x28]
	lsls r0, r4, #0x18
	asrs r2, r0, #0x18
	cmp r2, #1
	beq _08040D60
	cmp r2, #1
	bgt _08040D30
	cmp r2, #0
	beq _08040D3A
	b _08040DEE
	.align 2, 0
_08040D24: .4byte 0x06010000
_08040D28: .4byte 0x080ECFA4
_08040D2C: .4byte 0x080ECF58
_08040D30:
	cmp r2, #2
	beq _08040DA8
	cmp r2, #3
	beq _08040DD4
	b _08040DEE
_08040D3A:
	asrs r0, r6, #0x10
	adds r0, #4
	lsls r0, r0, #0x10
	ldr r1, _08040D5C @ =0x0000FFFF
	ands r6, r1
	orrs r6, r0
	asrs r0, r0, #0x10
	cmp r0, #0x17
	ble _08040DEE
	movs r0, #8
	str r0, [sp, #0x2c]
	movs r1, #1
	str r1, [sp, #0x28]
	movs r2, #0
	str r2, [sp, #0x30]
	b _08040DEE
	.align 2, 0
_08040D5C: .4byte 0x0000FFFF
_08040D60:
	ldr r3, [sp, #0x2c]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08040D74
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	b _08040DEE
_08040D74:
	ldr r0, _08040D9C @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08040DEE
	ldr r0, [sp, #0x14]
	ldr r1, _08040DA0 @ =0x08142210
	ldr r2, _08040DA4 @ =0x081421F4
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl sub_08009B40
	movs r4, #2
	str r4, [sp, #0x28]
	b _08040DEE
	.align 2, 0
_08040D9C: .4byte 0x030024B0
_08040DA0: .4byte 0x08142210
_08040DA4: .4byte 0x081421F4
_08040DA8:
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08040DEE
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_0806F6A8
	ldr r0, _08040DD0 @ =0x0000012B
	bl sub_0806F5DC
	movs r0, #3
	str r0, [sp, #0x28]
	movs r1, #1
	str r1, [sp, #0x30]
	movs r0, #0x3c
	bl sub_08002B98
	b _08040DEE
	.align 2, 0
_08040DD0: .4byte 0x0000012B
_08040DD4:
	asrs r0, r6, #0x10
	subs r0, #8
	lsls r0, r0, #0x10
	ldr r1, _08040E94 @ =0x0000FFFF
	ands r6, r1
	orrs r6, r0
	asrs r0, r0, #0x10
	movs r1, #0x18
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08040DEE
	movs r2, #0xff
	str r2, [sp, #0x28]
_08040DEE:
	ldr r3, [sp, #0x30]
	cmp r3, #0
	bne _08040E02
	movs r0, #0x15
	bl sub_0800B828
	adds r0, #0x1e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
_08040E02:
	ldr r0, [sp, #0x34]
	ldr r4, [r0, #8]
	ldr r1, [sp, #0x24]
	lsls r1, r1, #0x18
	mov r8, r1
	asrs r5, r1, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08070FCC
	adds r3, r0, #0
	adds r3, #2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	ldr r1, _08040E98 @ =0x080ECFA4
	ldr r2, _08040E9C @ =0x080ECF58
	bl sub_08009ACC
	ldr r2, [sp, #0x34]
	ldr r4, [r2, #0xc]
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08071064
	adds r3, r0, #0
	adds r3, #2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	ldr r1, _08040E98 @ =0x080ECFA4
	ldr r2, _08040E9C @ =0x080ECF58
	bl sub_08009ACC
	movs r7, #0
	ldr r3, [sp, #0x28]
	lsls r3, r3, #0x18
	mov sb, r3
	mov sl, r8
	asrs r4, r6, #0x10
	mov r8, r4
	mov r4, sp
	ldr r5, [sp, #0x3c]
	movs r0, #0
	str r0, [sp, #0x38]
_08040E5C:
	ldr r3, [r5]
	ldrh r0, [r4]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r2, #2
	ldrsh r0, [r4, r2]
	add r0, r8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	bl sub_08009A70
	adds r4, #4
	adds r5, #4
	adds r7, #1
	cmp r7, #3
	ble _08040E5C
	mov r3, sb
	asrs r1, r3, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08040EA0
	movs r0, #1
	bl sub_08002B98
	b _08040D10
	.align 2, 0
_08040E94: .4byte 0x0000FFFF
_08040E98: .4byte 0x080ECFA4
_08040E9C: .4byte 0x080ECF58
_08040EA0:
	ldr r4, [sp, #0x3c]
	movs r7, #3
_08040EA4:
	ldm r4!, {r0}
	bl sub_08009A00
	subs r7, #1
	cmp r7, #0
	bge _08040EA4
	ldr r0, _08040EE4 @ =0x0814221C
	bl sub_08006CA0
	ldr r0, _08040EE8 @ =0x080ECFE0
	bl sub_08006CA0
	mov r4, sl
	asrs r2, r4, #0x18
	movs r0, #0
	movs r1, #8
	bl sub_08005BB4
	ldr r0, _08040EEC @ =0x020335D0
	add r1, sp, #0x24
	ldrb r1, [r1]
	strb r1, [r0, #7]
	lsrs r0, r4, #0x18
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040EE4: .4byte 0x0814221C
_08040EE8: .4byte 0x080ECFE0
_08040EEC: .4byte 0x020335D0

	thumb_func_start sub_08040EF0
sub_08040EF0: @ 0x08040EF0
	push {lr}
	ldr r0, _08040F00 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #9
	beq _08040F04
	movs r0, #0
	b _08040F06
	.align 2, 0
_08040F00: .4byte 0x03004400
_08040F04:
	movs r0, #1
_08040F06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08040F0C
sub_08040F0C: @ 0x08040F0C
	push {lr}
	bl sub_08006894
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08040F18
sub_08040F18: @ 0x08040F18
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08040F34 @ =0x03004400
	ldrb r2, [r1, #0xe]
	movs r1, #8
	bl sub_08019328
	movs r0, #9
	bl sub_08006884
	pop {r0}
	bx r0
	.align 2, 0
_08040F34: .4byte 0x03004400

	thumb_func_start sub_08040F38
sub_08040F38: @ 0x08040F38
	push {lr}
	ldr r0, _08040F48 @ =0x03004494
	ldrb r0, [r0]
	cmp r0, #1
	beq _08040F4C
	movs r0, #0
	b _08040F4E
	.align 2, 0
_08040F48: .4byte 0x03004494
_08040F4C:
	movs r0, #1
_08040F4E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08040F54
sub_08040F54: @ 0x08040F54
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08040FCC
	lsls r0, r0, #2
	ldr r1, _08040F68 @ =_08040F6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08040F68: .4byte _08040F6C
_08040F6C: @ jump table
	.4byte _08040F8C @ case 0
	.4byte _08040F94 @ case 1
	.4byte _08040F9C @ case 2
	.4byte _08040FA4 @ case 3
	.4byte _08040FAC @ case 4
	.4byte _08040FB4 @ case 5
	.4byte _08040FBC @ case 6
	.4byte _08040FC4 @ case 7
_08040F8C:
	movs r0, #0
	bl sub_08037AB0
	b _08040FD0
_08040F94:
	movs r0, #1
	bl sub_08037AB0
	b _08040FD0
_08040F9C:
	movs r0, #2
	bl sub_08037AB0
	b _08040FD0
_08040FA4:
	movs r0, #3
	bl sub_08037AB0
	b _08040FD0
_08040FAC:
	movs r0, #4
	bl sub_08037AB0
	b _08040FD0
_08040FB4:
	movs r0, #5
	bl sub_08037AB0
	b _08040FD0
_08040FBC:
	movs r0, #6
	bl sub_08037AB0
	b _08040FD0
_08040FC4:
	movs r0, #7
	bl sub_08037AB0
	b _08040FD0
_08040FCC:
	bl sub_08037AC8
_08040FD0:
	pop {r0}
	bx r0

	thumb_func_start sub_08040FD4
sub_08040FD4: @ 0x08040FD4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08040FE8
sub_08040FE8: @ 0x08040FE8
	push {lr}
	bl sub_08005934
	movs r0, #1
	bl sub_08002B98
	pop {r0}
	bx r0

	thumb_func_start sub_08040FF8
sub_08040FF8: @ 0x08040FF8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08041018
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041008
sub_08041008: @ 0x08041008
	push {lr}
	bl sub_08005A2C
	movs r0, #1
	bl sub_08002B98
	pop {r0}
	bx r0

	thumb_func_start sub_08041018
sub_08041018: @ 0x08041018
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_080067F0
	movs r0, #1
	bl sub_08002B98
	bl sub_08005934
	movs r0, #1
	bl sub_08002B98
	adds r0, r4, #0
	bl sub_08006744
	movs r0, #1
	bl sub_08002B98
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041048
sub_08041048: @ 0x08041048
	push {lr}
	bl sub_08005A2C
	movs r0, #1
	bl sub_08002B98
	pop {r0}
	bx r0

	thumb_func_start sub_08041058
sub_08041058: @ 0x08041058
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005AA0
	adds r0, r4, #0
	bl sub_080062D0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0804106C
sub_0804106C: @ 0x0804106C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08002B98
	bl sub_08005AB0
	adds r0, r4, #0
	bl sub_0800648C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041088
sub_08041088: @ 0x08041088
	push {lr}
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08041098
sub_08041098: @ 0x08041098
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005C10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080410A8
sub_080410A8: @ 0x080410A8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080410BC @ =0x020335D0
	strh r0, [r1, #0xa]
	bl sub_0806F654
	pop {r0}
	bx r0
	.align 2, 0
_080410BC: .4byte 0x020335D0

	thumb_func_start sub_080410C0
sub_080410C0: @ 0x080410C0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0806F6A8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080410D0
sub_080410D0: @ 0x080410D0
	push {lr}
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080410E0
sub_080410E0: @ 0x080410E0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0806F5DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080410F0
sub_080410F0: @ 0x080410F0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0806F6A8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041100
sub_08041100: @ 0x08041100
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0804111C @ =0x020335D0
	ldrh r0, [r0, #0xa]
	bl sub_0806F6A8
	adds r0, r4, #0
	bl sub_0806F5DC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804111C: .4byte 0x020335D0

	thumb_func_start sub_08041120
sub_08041120: @ 0x08041120
	push {lr}
	movs r0, #1
	bl sub_080077D4
	ldr r0, _08041134 @ =0x020335D0
	ldrh r0, [r0, #0xa]
	bl sub_0806F654
	pop {r0}
	bx r0
	.align 2, 0
_08041134: .4byte 0x020335D0

	thumb_func_start sub_08041138
sub_08041138: @ 0x08041138
	push {lr}
	movs r0, #1
	bl sub_08007828
	pop {r0}
	bx r0

	thumb_func_start sub_08041144
sub_08041144: @ 0x08041144
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08041100
	bl sub_08041138
	bl sub_08041120
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804115C
sub_0804115C: @ 0x0804115C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #2
	bl sub_08072A70
	add r5, sp, #4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	bl sub_08072A70
	add r4, sp, #8
	ldr r1, _08041224 @ =0x0808DABC
	adds r0, r4, #0
	movs r2, #2
	bl sub_08072A10
	movs r7, #0
	mov sl, r5
	mov sb, r4
_08041192:
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #0x1a
	lsrs r5, r0, #0x1a
	ldrh r0, [r6, #0xc]
	lsrs r0, r0, #6
	mov r8, r0
	ldr r2, [r6]
	cmp r2, #0
	beq _080411BA
	mov r1, sp
	adds r0, r1, r7
	ldrb r1, [r0]
	adds r1, r1, r5
	lsls r1, r1, #5
	movs r3, #0xa0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	adds r0, r2, #0
	bl sub_08008308
_080411BA:
	ldr r2, [r6, #4]
	cmp r2, #0
	beq _080411D8
	mov r1, sl
	adds r0, r1, r7
	ldrb r1, [r0]
	lsls r1, r1, #0xe
	lsls r0, r5, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_08008374
_080411D8:
	ldr r4, [r6, #8]
	cmp r4, #0
	beq _0804120A
	mov r1, sb
	adds r0, r1, r7
	ldrb r1, [r0]
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	adds r2, r5, #0
	mov r0, r8
	lsls r3, r0, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	bl sub_080083CC
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xe
	ldrsh r1, [r6, r2]
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	bl sub_08041228
_0804120A:
	adds r7, #1
	adds r6, #0x14
	cmp r7, #1
	ble _08041192
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041224: .4byte 0x0808DABC

	thumb_func_start sub_08041228
sub_08041228: @ 0x08041228
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #0
	beq _08041240
	cmp r0, #1
	beq _0804124C
	b _08041252
_08041240:
	ldr r0, _08041248 @ =0x030024E0
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x16]
	b _08041252
	.align 2, 0
_08041248: .4byte 0x030024E0
_0804124C:
	ldr r0, _08041258 @ =0x030024E0
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x18]
_08041252:
	pop {r0}
	bx r0
	.align 2, 0
_08041258: .4byte 0x030024E0

	thumb_func_start sub_0804125C
sub_0804125C: @ 0x0804125C
	push {lr}
	bl sub_08007BD4
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r0, [r2, #4]
	adds r3, r1, r0
	str r3, [r2, #0xc]
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0804128C
	ldr r0, _08041288 @ =0x030024E0
	asrs r1, r3, #0x10
	strh r1, [r0, #0xe]
	movs r3, #0x12
	ldrsh r1, [r2, r3]
	strh r1, [r0, #0x16]
	b _08041298
	.align 2, 0
_08041288: .4byte 0x030024E0
_0804128C:
	ldr r0, _0804129C @ =0x030024E0
	asrs r1, r3, #0x10
	strh r1, [r0, #0x10]
	movs r3, #0x12
	ldrsh r1, [r2, r3]
	strh r1, [r0, #0x18]
_08041298:
	pop {r0}
	bx r0
	.align 2, 0
_0804129C: .4byte 0x030024E0

	thumb_func_start sub_080412A0
sub_080412A0: @ 0x080412A0
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	ldr r1, _080412EC @ =0x030015D8
	lsls r0, r5, #1
	adds r4, r0, r1
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080412CA
	ldr r0, _080412F0 @ =sub_0804125C
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	strh r0, [r4]
_080412CA:
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08007BBC
	adds r2, r0, #0
	strb r5, [r2]
	str r6, [r2, #4]
	str r7, [r2, #8]
	cmp r5, #0
	bne _080412F8
	ldr r0, _080412F4 @ =0x030024E0
	ldrh r1, [r0, #0xe]
	lsls r1, r1, #0x10
	str r1, [r2, #0xc]
	ldrh r0, [r0, #0x16]
	b _08041302
	.align 2, 0
_080412EC: .4byte 0x030015D8
_080412F0: .4byte sub_0804125C
_080412F4: .4byte 0x030024E0
_080412F8:
	ldr r0, _0804130C @ =0x030024E0
	ldrh r1, [r0, #0x10]
	lsls r1, r1, #0x10
	str r1, [r2, #0xc]
	ldrh r0, [r0, #0x18]
_08041302:
	lsls r0, r0, #0x10
	str r0, [r2, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804130C: .4byte 0x030024E0

	thumb_func_start sub_08041310
sub_08041310: @ 0x08041310
	push {r4, r5, r6, lr}
	movs r6, #1
	rsbs r6, r6, #0
	ldr r4, _08041338 @ =0x030015D8
	movs r5, #1
_0804131A:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r6
	beq _0804132A
	bl sub_08007A08
	ldr r0, _0804133C @ =0x0000FFFF
	strh r0, [r4]
_0804132A:
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bge _0804131A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08041338: .4byte 0x030015D8
_0804133C: .4byte 0x0000FFFF

	thumb_func_start sub_08041340
sub_08041340: @ 0x08041340
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	bl sub_0800B828
	adds r4, r0, #0
	ldrb r0, [r5]
	lsrs r0, r0, #1
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r0, [r5, #1]
	bl sub_0800B828
	ldrb r1, [r5, #1]
	lsrs r1, r1, #1
	subs r0, r0, r1
	ldr r2, _080413B8 @ =0x030024E0
	ldrh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, r1
	strh r1, [r2, #0xe]
	ldrh r1, [r5, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r1
	strh r1, [r2, #0x16]
	ldrh r1, [r5, #8]
	adds r4, r4, r1
	strh r4, [r2, #0x10]
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	ldrh r0, [r5, #2]
	subs r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080413B2
	ldrh r0, [r5, #4]
	strh r0, [r2, #0xe]
	ldrh r0, [r5, #6]
	strh r0, [r2, #0x16]
	ldrh r0, [r5, #8]
	strh r0, [r2, #0x10]
	ldrh r0, [r5, #0xa]
	strh r0, [r2, #0x18]
	ldr r1, _080413BC @ =0x030015DC
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_08007A64
_080413B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080413B8: .4byte 0x030024E0
_080413BC: .4byte 0x030015DC

	thumb_func_start sub_080413C0
sub_080413C0: @ 0x080413C0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r4, _0804140C @ =0x030015DC
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08041418
	ldr r0, _08041410 @ =sub_08041340
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08007BBC
	adds r2, r0, #0
	strb r5, [r2]
	strb r6, [r2, #1]
	strh r7, [r2, #2]
	ldr r1, _08041414 @ =0x030024E0
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #4]
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #6]
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #8]
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xa]
	b _08041428
	.align 2, 0
_0804140C: .4byte 0x030015DC
_08041410: .4byte sub_08041340
_08041414: .4byte 0x030024E0
_08041418:
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08007BBC
	adds r2, r0, #0
	strb r5, [r2]
	strb r6, [r2, #1]
	strh r7, [r2, #2]
_08041428:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041430
sub_08041430: @ 0x08041430
	push {r4, lr}
	ldr r2, _0804144C @ =0x030015DC
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804145C
	adds r0, r1, #0
	bl sub_08007BBC
	adds r4, r0, #0
	b _08041456
	.align 2, 0
_0804144C: .4byte 0x030015DC
_08041450:
	movs r0, #1
	bl sub_08002B98
_08041456:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _08041450
_0804145C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041464
sub_08041464: @ 0x08041464
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r7, _08041494 @ =0x020335D0
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _0804147C
	bl sub_08041498
_0804147C:
	movs r0, #0xf
	ands r4, r0
	lsls r1, r4, #4
	adds r1, r1, r5
	adds r0, r6, #0
	bl sub_08009554
	str r6, [r7, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041494: .4byte 0x020335D0

	thumb_func_start sub_08041498
sub_08041498: @ 0x08041498
	push {r4, lr}
	ldr r4, _080414B0 @ =0x020335D0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080414AA
	bl sub_080095E0
	movs r0, #0
	str r0, [r4, #0x10]
_080414AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080414B0: .4byte 0x020335D0

	thumb_func_start sub_080414B4
sub_080414B4: @ 0x080414B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r7, _08041550 @ =0x02033768
	ldr r0, [r7]
	cmp r0, #0
	bne _08041542
	ldr r0, [r6, #4]
	bl sub_08006C14
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08041554 @ =0x0000FFFF
	cmp r5, r0
	beq _08041542
	ldr r0, [r6]
	ldr r1, _08041558 @ =0x050003A0
	bl sub_08008308
	ldr r0, [r6, #4]
	lsls r4, r5, #5
	ldr r1, _0804155C @ =0x06010000
	adds r4, r4, r1
	adds r1, r4, #0
	bl sub_08008374
	str r6, [r7]
	strh r5, [r7, #6]
	movs r0, #2
	movs r1, #0xc0
	bl sub_080099E0
	str r0, [r7, #0x14]
	adds r1, r4, #0
	bl sub_08009A78
	ldr r0, [r7, #0x14]
	movs r1, #0xd
	bl sub_08009AB4
	ldr r0, [r7, #0x14]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #8]
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r7, #0x14]
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r7, #0x14]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r7, #0x14]
	movs r1, #1
	bl sub_08009A34
_08041542:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041550: .4byte 0x02033768
_08041554: .4byte 0x0000FFFF
_08041558: .4byte 0x050003A0
_0804155C: .4byte 0x06010000

	thumb_func_start sub_08041560
sub_08041560: @ 0x08041560
	push {r4, lr}
	sub sp, #4
	ldr r4, _08041598 @ =0x02033768
	ldr r0, [r4]
	cmp r0, #0
	beq _0804158E
	ldr r0, [r0, #4]
	bl sub_08006CA0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08041580
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #0x14]
_08041580:
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0804159C @ =0x0100000E
	adds r1, r4, #0
	bl CpuSet
_0804158E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041598: .4byte 0x02033768
_0804159C: .4byte 0x0100000E

	thumb_func_start sub_080415A0
sub_080415A0: @ 0x080415A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r0, r0, #3
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08041658 @ =0x02033618
	adds r0, r0, r1
	mov r8, r0
	lsls r0, r7, #4
	adds r6, r2, r0
	mov r2, r8
	ldr r0, [r2]
	cmp r0, #0
	beq _080415D4
	cmp r0, sl
	bne _08041674
_080415D4:
	mov r4, r8
	adds r4, #4
	movs r2, #0
	adds r5, r4, #0
	adds r3, r7, #0
	movs r0, #1
	mov ip, r0
_080415E2:
	ldr r0, [r4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _080415F6
	ldrb r1, [r4]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	bne _08041674
_080415F6:
	adds r2, #1
	adds r4, #4
	cmp r2, #3
	ble _080415E2
	adds r4, r5, #0
	movs r2, #0
_08041602:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804166C
	ldr r0, [r6, #4]
	bl sub_08006C14
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _0804165C @ =0x0000FFFF
	cmp r5, r1
	beq _08041674
	ldrb r0, [r4]
	movs r2, #1
	orrs r0, r2
	strb r0, [r4]
	lsls r2, r7, #1
	ldrh r0, [r4]
	ldr r3, _08041660 @ =0xFFFFFE01
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	strh r5, [r4, #2]
	mov r0, sl
	mov r1, r8
	str r0, [r1]
	ldr r0, [r6]
	mov r2, sb
	lsls r1, r2, #5
	ldr r3, _08041664 @ =0x05000200
	adds r1, r1, r3
	bl sub_08008308
	ldr r0, [r6, #4]
	lsls r1, r5, #5
	ldr r2, _08041668 @ =0x06010000
	adds r1, r1, r2
	bl sub_08008374
	b _08041674
	.align 2, 0
_08041658: .4byte 0x02033618
_0804165C: .4byte 0x0000FFFF
_08041660: .4byte 0xFFFFFE01
_08041664: .4byte 0x05000200
_08041668: .4byte 0x06010000
_0804166C:
	adds r2, #1
	adds r4, #4
	cmp r2, #3
	ble _08041602
_08041674:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041684
sub_08041684: @ 0x08041684
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080416E8 @ =0x02033618
	adds r2, r1, r0
	lsls r1, r3, #4
	ldr r0, [r2]
	adds r7, r0, r1
	cmp r0, #0
	beq _080416DE
	adds r4, r2, #4
	lsls r6, r3, #0x10
	movs r5, #3
_080416AA:
	ldr r0, [r4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	lsrs r1, r6, #0x10
	cmp r0, r1
	bne _080416D6
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080416D6
	ldr r0, [r7, #4]
	bl sub_08006CA0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _080416EC @ =0x01000002
	bl CpuSet
_080416D6:
	subs r5, #1
	adds r4, #4
	cmp r5, #0
	bge _080416AA
_080416DE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080416E8: .4byte 0x02033618
_080416EC: .4byte 0x01000002

	thumb_func_start sub_080416F0
sub_080416F0: @ 0x080416F0
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0804172C @ =0x02033618
	adds r6, r0, r1
	movs r4, #0
_08041704:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08041684
	adds r4, #1
	cmp r4, #3
	ble _08041704
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08041730 @ =0x0100000E
	adds r1, r6, #0
	bl CpuSet
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804172C: .4byte 0x02033618
_08041730: .4byte 0x0100000E

	thumb_func_start sub_08041734
sub_08041734: @ 0x08041734
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _08041774 @ =0x02033618
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _080417D0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _080417D0
	movs r6, #0
	movs r3, #0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	adds r5, r1, #0
	cmp r0, r2
	bne _08041778
	adds r6, r4, #4
	b _08041792
	.align 2, 0
_08041774: .4byte 0x02033618
_08041778:
	adds r3, #1
	cmp r3, #3
	bgt _08041792
	lsls r2, r3, #2
	adds r0, r4, r2
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x18
	lsrs r1, r5, #0x10
	cmp r0, r1
	bne _08041778
	adds r0, r2, #4
	adds r6, r4, r0
_08041792:
	cmp r6, #0
	beq _080417D0
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	str r0, [r4, #0x14]
	ldrh r1, [r6, #2]
	lsls r1, r1, #5
	ldr r3, _080417DC @ =0x06010000
	adds r1, r1, r3
	bl sub_08009A78
	ldr r0, [r4, #0x14]
	adds r1, r7, #0
	bl sub_08009AB4
	ldr r0, [r4, #0x14]
	ldr r1, [r4]
	mov r3, r8
	lsls r2, r3, #4
	adds r2, r2, r1
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4, #0x14]
	movs r1, #1
	bl sub_08009A34
_080417D0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080417DC: .4byte 0x06010000

	thumb_func_start sub_080417E0
sub_080417E0: @ 0x080417E0
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08041804 @ =0x02033618
	adds r4, r1, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _080417FE
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #0x14]
_080417FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041804: .4byte 0x02033618

	thumb_func_start sub_08041808
sub_08041808: @ 0x08041808
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0804182C @ =0x02033618
	adds r1, r1, r0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _08041828
	adds r1, r2, #0
	bl sub_08009A34
_08041828:
	pop {r0}
	bx r0
	.align 2, 0
_0804182C: .4byte 0x02033618

	thumb_func_start sub_08041830
sub_08041830: @ 0x08041830
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08041860 @ =0x02033618
	adds r1, r1, r0
	ldr r3, [r1, #0x14]
	cmp r3, #0
	beq _0804185A
	ldr r0, [r3, #0x20]
	ldrh r1, [r0, #2]
	lsrs r1, r1, #8
	movs r0, #3
	ands r1, r0
	adds r0, r3, #0
	bl sub_08009A0C
_0804185A:
	pop {r0}
	bx r0
	.align 2, 0
_08041860: .4byte 0x02033618

	thumb_func_start sub_08041864
sub_08041864: @ 0x08041864
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08041890 @ =0x02033618
	adds r1, r1, r0
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _0804188A
	ldr r0, [r1, #0x20]
	ldrb r2, [r0, #2]
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08009A0C
_0804188A:
	pop {r0}
	bx r0
	.align 2, 0
_08041890: .4byte 0x02033618

	thumb_func_start sub_08041894
sub_08041894: @ 0x08041894
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080418C4 @ =0x02033618
	adds r1, r1, r0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _080418BE
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_080418BE:
	pop {r0}
	bx r0
	.align 2, 0
_080418C4: .4byte 0x02033618

	thumb_func_start sub_080418C8
sub_080418C8: @ 0x080418C8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	ldr r0, _08041908 @ =0x02033618
	adds r4, r2, r0
	lsrs r1, r1, #0x14
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r3, [r4, #0x14]
	cmp r3, #0
	beq _08041902
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #8]
	adds r0, r3, #0
	adds r3, r5, #0
	bl sub_08009ACC
	ldr r0, [r4, #0x14]
	adds r1, r6, #0
	bl sub_08009B40
_08041902:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08041908: .4byte 0x02033618

	thumb_func_start sub_0804190C
sub_0804190C: @ 0x0804190C
	bx lr
	.align 2, 0

	thumb_func_start sub_08041910
sub_08041910: @ 0x08041910
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0804192C @ =0x02033618
	adds r1, r1, r0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _08041930
	movs r0, #0
	b _08041934
	.align 2, 0
_0804192C: .4byte 0x02033618
_08041930:
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
_08041934:
	pop {r1}
	bx r1

	thumb_func_start sub_08041938
sub_08041938: @ 0x08041938
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080419C4 @ =0x02033618
	adds r1, r1, r0
	mov sb, r1
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _08041A18
	cmp r3, #0
	bne _08041970
	movs r3, #1
_08041970:
	movs r2, #6
	ldrsh r0, [r1, r2]
	lsls r7, r0, #0x10
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r5, r0, #0x10
	ldr r1, [sp]
	lsls r0, r1, #0x10
	subs r2, r7, r0
	mov r8, r2
	str r0, [sp, #8]
	cmp r2, #0
	bge _0804198E
	rsbs r2, r2, #0
	mov r8, r2
_0804198E:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	subs r6, r5, r0
	str r0, [sp, #0xc]
	cmp r6, #0
	bge _0804199C
	rsbs r6, r6, #0
_0804199C:
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_08070FCC
	mov sl, r0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08070FCC
	adds r4, r0, #0
_080419B4:
	ldr r2, [sp, #8]
	asrs r1, r2, #0x10
	asrs r0, r7, #0x10
	cmp r1, r0
	bge _080419C8
	mov r0, sl
	subs r7, r7, r0
	b _080419CA
	.align 2, 0
_080419C4: .4byte 0x02033618
_080419C8:
	add r7, sl
_080419CA:
	ldr r2, [sp, #0xc]
	asrs r1, r2, #0x10
	asrs r0, r5, #0x10
	cmp r1, r0
	bge _080419D8
	subs r5, r5, r4
	b _080419DA
_080419D8:
	adds r5, r5, r4
_080419DA:
	mov r0, sb
	ldr r1, [r0, #0x14]
	asrs r0, r7, #0x10
	strh r0, [r1, #6]
	mov r2, sb
	ldr r1, [r2, #0x14]
	asrs r0, r5, #0x10
	strh r0, [r1, #8]
	mov r0, r8
	mov r1, sl
	subs r0, r0, r1
	mov r8, r0
	subs r6, r6, r4
	cmp r0, #0
	bgt _08041A10
	cmp r6, #0
	bgt _08041A10
	ldr r0, [r2, #0x14]
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r0, #6]
	mov r1, sb
	ldr r0, [r1, #0x14]
	mov r2, sp
	ldrh r2, [r2, #4]
	strh r2, [r0, #8]
	b _08041A18
_08041A10:
	movs r0, #1
	bl sub_08002B98
	b _080419B4
_08041A18:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08041A28
sub_08041A28: @ 0x08041A28
	push {r4, r5, lr}
	ldr r5, _08041A84 @ =0x0809CAA4
	adds r0, r5, #0
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08041A88 @ =0x0809CA60
	ldr r1, _08041A8C @ =0x05000320
	bl sub_08008308
	lsls r4, r4, #5
	ldr r0, _08041A90 @ =0x06010000
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08008374
	movs r0, #1
	movs r1, #8
	bl sub_080099E0
	adds r5, r0, #0
	adds r1, r4, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #9
	bl sub_08009AB4
	ldr r2, _08041A94 @ =0x0809CA94
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _08041A98 @ =0x030015E0
	str r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041A84: .4byte 0x0809CAA4
_08041A88: .4byte 0x0809CA60
_08041A8C: .4byte 0x05000320
_08041A90: .4byte 0x06010000
_08041A94: .4byte 0x0809CA94
_08041A98: .4byte 0x030015E0

	thumb_func_start sub_08041A9C
sub_08041A9C: @ 0x08041A9C
	push {r4, lr}
	ldr r4, _08041AB4 @ =0x030015E0
	ldr r0, [r4]
	cmp r0, #0
	beq _08041AAE
	bl sub_08009A00
	movs r0, #0
	str r0, [r4]
_08041AAE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041AB4: .4byte 0x030015E0

	thumb_func_start sub_08041AB8
sub_08041AB8: @ 0x08041AB8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08041AD0 @ =0x030015E0
	ldr r0, [r0]
	cmp r0, #0
	beq _08041ACA
	bl sub_08009A34
_08041ACA:
	pop {r0}
	bx r0
	.align 2, 0
_08041AD0: .4byte 0x030015E0

	thumb_func_start sub_08041AD4
sub_08041AD4: @ 0x08041AD4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _08041AFC @ =0x030015E0
	ldr r0, [r0]
	cmp r0, #0
	beq _08041AF8
	lsls r1, r3, #0x10
	ldr r3, _08041B00 @ =0xFFF80000
	adds r1, r1, r3
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	adds r2, r2, r3
	asrs r2, r2, #0x10
	bl sub_08009A70
_08041AF8:
	pop {r0}
	bx r0
	.align 2, 0
_08041AFC: .4byte 0x030015E0
_08041B00: .4byte 0xFFF80000

	thumb_func_start sub_08041B04
sub_08041B04: @ 0x08041B04
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08041B50 @ =0x02033618
	adds r5, r0, r1
	ldrb r3, [r4, #0xd]
	ldrb r2, [r4, #8]
	adds r1, r3, r2
	strb r1, [r4, #0xd]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08041B58
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08041B32
	cmp r0, #0x80
	bne _08041B36
_08041B32:
	adds r0, r1, r2
	strb r0, [r4, #0xd]
_08041B36:
	ldr r1, _08041B54 @ =0x0807F240
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r6, #6
	ldrsh r0, [r4, r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x14]
	ldrb r2, [r4, #0xd]
	b _08041B86
	.align 2, 0
_08041B50: .4byte 0x02033618
_08041B54: .4byte 0x0807F240
_08041B58:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	beq _08041B64
	cmp r0, #0xc0
	bne _08041B68
_08041B64:
	adds r0, r1, r2
	strb r0, [r4, #0xd]
_08041B68:
	ldr r1, _08041BC4 @ =0x0807F240
	ldrb r2, [r4, #0xd]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r6, #6
	ldrsh r0, [r4, r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
_08041B86:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08041BAA
	lsls r0, r3, #0x18
	cmp r0, #0
	blt _08041B9A
	lsls r0, r2, #0x18
	cmp r0, #0
	blt _08041BA6
_08041B9A:
	cmp r3, #0x80
	bls _08041BAA
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _08041BAA
_08041BA6:
	movs r0, #2
	strh r0, [r5, #0x1a]
_08041BAA:
	ldrb r0, [r4, #0xe]
	ldrb r2, [r4, #0xd]
	cmp r0, #0
	bne _08041BCE
	adds r1, r2, #0
	cmp r1, #0x3f
	bls _08041BC8
	cmp r1, #0xbf
	bhi _08041BC8
	movs r0, #1
	strb r0, [r4, #0xe]
	b _08041BDC
	.align 2, 0
_08041BC4: .4byte 0x0807F240
_08041BC8:
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08041BDE
_08041BCE:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bls _08041BDE
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
_08041BDC:
	strb r0, [r4, #0xf]
_08041BDE:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08041C08
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08041BF0
	ldrb r2, [r4, #1]
	ldrb r3, [r4, #2]
	b _08041BF4
_08041BF0:
	ldrb r2, [r4, #3]
	ldrb r3, [r4, #4]
_08041BF4:
	ldr r0, [r5, #0x14]
	ldr r1, [r5]
	lsls r2, r2, #4
	adds r2, r2, r1
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	bl sub_08009ACC
	movs r0, #0
	strb r0, [r4, #0xf]
_08041C08:
	ldr r0, [r5, #0x14]
	ldrh r1, [r4, #0x14]
	ldrh r2, [r4, #0x10]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #0x16]
	ldrh r4, [r4, #0x12]
	adds r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	movs r6, #0x1a
	ldrsh r0, [r5, r6]
	cmp r0, #2
	bne _08041C2E
	bl sub_08007A64
_08041C2E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08041C34
sub_08041C34: @ 0x08041C34
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r1, [r3, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08041C80 @ =0x02033618
	adds r5, r0, r1
	ldrb r4, [r3, #9]
	ldrb r2, [r3, #4]
	adds r1, r4, r2
	strb r1, [r3, #9]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08041C88
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08041C62
	cmp r0, #0x80
	bne _08041C66
_08041C62:
	adds r0, r1, r2
	strb r0, [r3, #9]
_08041C66:
	ldr r1, _08041C84 @ =0x0807F240
	ldrb r0, [r3, #9]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #2
	ldrsh r0, [r3, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #0x10]
	b _08041CB4
	.align 2, 0
_08041C80: .4byte 0x02033618
_08041C84: .4byte 0x0807F240
_08041C88:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	beq _08041C94
	cmp r0, #0xc0
	bne _08041C98
_08041C94:
	adds r0, r1, r2
	strb r0, [r3, #9]
_08041C98:
	ldr r1, _08041D08 @ =0x0807F240
	ldrb r0, [r3, #9]
	adds r0, #0x40
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #2
	ldrsh r0, [r3, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
_08041CB4:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08041CDA
	lsls r0, r4, #0x18
	cmp r0, #0
	blt _08041CCA
	movs r0, #9
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _08041CD6
_08041CCA:
	cmp r4, #0x80
	bls _08041CDA
	movs r0, #9
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _08041CDA
_08041CD6:
	movs r0, #2
	strh r0, [r5, #0x1a]
_08041CDA:
	ldr r0, [r5, #0x14]
	ldrh r1, [r3, #0x10]
	ldrh r2, [r3, #0xc]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r3, #0x12]
	ldrh r3, [r3, #0xe]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #2
	bne _08041D00
	bl sub_08007A64
_08041D00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041D08: .4byte 0x0807F240

	thumb_func_start sub_08041D0C
sub_08041D0C: @ 0x08041D0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _08041D58 @ =0x02033618
	adds r5, r0, r1
	movs r0, #0x18
	ldrsh r4, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _08041DAC
	ldr r1, _08041D5C @ =0x0808DAC0
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08041DAC
	cmp r6, #0
	beq _08041D60
	cmp r6, #1
	beq _08041D88
	b _08041DAC
	.align 2, 0
_08041D58: .4byte 0x02033618
_08041D5C: .4byte 0x0808DAC0
_08041D60:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	bl sub_08007BBC
	adds r4, r0, #0
	mov r0, r8
	adds r1, r4, #0
	movs r2, #6
	bl CpuSet
	strb r7, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #6]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #8]
	strh r0, [r4, #0x12]
	b _08041DAC
_08041D88:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	bl sub_08007BBC
	adds r4, r0, #0
	mov r0, r8
	adds r1, r4, #0
	movs r2, #4
	bl CpuSet
	strb r7, [r4, #8]
	strb r6, [r4, #0xb]
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #6]
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #8]
	strh r0, [r4, #0xe]
_08041DAC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041DB8
sub_08041DB8: @ 0x08041DB8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08041DDC @ =0x02033618
	adds r2, r1, r0
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08041DD8
	movs r0, #1
	strh r0, [r2, #0x1a]
_08041DD8:
	pop {r0}
	bx r0
	.align 2, 0
_08041DDC: .4byte 0x02033618

	thumb_func_start sub_08041DE0
sub_08041DE0: @ 0x08041DE0
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08041E14 @ =0x02033618
	adds r4, r1, r0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08041E0E
	movs r0, #1
	strh r0, [r4, #0x1a]
_08041E00:
	movs r0, #1
	bl sub_08002B98
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _08041E00
_08041E0E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041E14: .4byte 0x02033618

	thumb_func_start sub_08041E18
sub_08041E18: @ 0x08041E18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, _08041F1C @ =0x030015E8
	mov sl, r0
	cmp r1, #0
	beq _08041F0C
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08041F20 @ =0x0100001E
	mov r1, sl
	bl CpuSet
	movs r1, #0
	mov sb, r1
	cmp sb, r8
	bge _08041F06
	mov r7, sl
	movs r2, #0x78
	str r2, [sp, #8]
	ldr r0, _08041F24 @ =0x05000340
	str r0, [sp, #0xc]
_08041E54:
	movs r0, #1
	movs r1, #0xc
	bl sub_080099E0
	str r0, [r7]
	mov r5, sl
	adds r5, #0x30
	add r5, sb
	ldr r0, [sp, #4]
	add r0, sb
	ldrb r0, [r0]
	strb r0, [r5]
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08041F28 @ =0x0807F04C
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r2, _08041F2C @ =0x0807F048
	adds r0, r0, r2
	ldr r0, [r0]
	mov r6, sb
	adds r6, #0xa
	ldr r1, [sp, #0xc]
	bl sub_08008308
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08041F28 @ =0x0807F04C
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r4, r4, #5
	ldr r2, _08041F30 @ =0x06010000
	adds r4, r4, r2
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, [r7]
	adds r1, r4, #0
	bl sub_08009A78
	ldr r0, [r7]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	adds r1, r6, #0
	bl sub_08009AB4
	ldr r0, [r7]
	ldr r1, _08041F34 @ =0x08143494
	ldr r2, _08041F38 @ =0x0814348C
	movs r3, #0
	bl sub_08009ACC
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	subs r0, r2, r0
	adds r0, #8
	strh r0, [r7, #0x18]
	movs r0, #0x30
	strh r0, [r7, #0x1a]
	ldr r0, [r7]
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r2, #0x30
	bl sub_08009A70
	ldm r7!, {r0}
	movs r1, #1
	bl sub_08009A34
	ldr r0, [sp, #8]
	adds r0, #0x30
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r1, #0x20
	str r1, [sp, #0xc]
	movs r2, #1
	add sb, r2
	cmp sb, r8
	blt _08041E54
_08041F06:
	mov r0, r8
	mov r1, sl
	str r0, [r1, #0x38]
_08041F0C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041F1C: .4byte 0x030015E8
_08041F20: .4byte 0x0100001E
_08041F24: .4byte 0x05000340
_08041F28: .4byte 0x0807F04C
_08041F2C: .4byte 0x0807F048
_08041F30: .4byte 0x06010000
_08041F34: .4byte 0x08143494
_08041F38: .4byte 0x0814348C

	thumb_func_start sub_08041F3C
sub_08041F3C: @ 0x08041F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _08041F90 @ =0x030015E8
	movs r5, #0
	ldr r0, [r6, #0x38]
	cmp r5, r0
	bge _08041F78
	ldr r7, _08041F94 @ =0x0807F04C
	adds r4, r6, #0
_08041F4E:
	ldr r0, [r4]
	cmp r0, #0
	beq _08041F5C
	bl sub_08009A00
	movs r0, #0
	str r0, [r4]
_08041F5C:
	adds r0, r6, #0
	adds r0, #0x30
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_08006CA0
	adds r4, #4
	adds r5, #1
	ldr r0, [r6, #0x38]
	cmp r5, r0
	blt _08041F4E
_08041F78:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08041F90 @ =0x030015E8
	ldr r2, _08041F98 @ =0x0100001E
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041F90: .4byte 0x030015E8
_08041F94: .4byte 0x0807F04C
_08041F98: .4byte 0x0100001E

	thumb_func_start sub_08041F9C
sub_08041F9C: @ 0x08041F9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r1, _08041FB8 @ =0x030015E8
	mov sb, r1
	movs r6, #0
	mov r8, r6
	cmp r7, #0
	bne _08041FBC
	movs r0, #0
	b _08042066
	.align 2, 0
_08041FB8: .4byte 0x030015E8
_08041FBC:
	adds r1, r7, #0
	bl sub_08041E18
	movs r0, #1
	bl sub_08002B98
	bl sub_08041A28
	mov r2, sb
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	movs r3, #0x1a
	ldrsh r1, [r2, r3]
	bl sub_08041AD4
	movs r0, #4
	bl sub_08002B98
	movs r5, #0
	b _0804204A
_08041FE4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042002
	lsls r0, r6, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r6, r0, #0x18
	cmp r0, #0
	bge _0804201C
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _0804201C
_08042002:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804201C
	lsls r0, r6, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r7
	blt _0804201C
	movs r6, #0
_0804201C:
	mov r3, r8
	lsls r1, r3, #0x18
	lsls r0, r6, #0x18
	asrs r4, r0, #0x18
	adds r5, r0, #0
	cmp r1, r5
	beq _08042034
	movs r0, #0xca
	bl sub_0806F5DC
	lsrs r0, r5, #0x18
	mov r8, r0
_08042034:
	lsls r1, r4, #2
	add r1, sb
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	movs r3, #0x1a
	ldrsh r1, [r1, r3]
	bl sub_08041AD4
	movs r0, #1
	bl sub_08002B98
_0804204A:
	ldr r0, _08042074 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041FE4
	movs r0, #0xcc
	bl sub_0806F5DC
	bl sub_08041A9C
	bl sub_08041F3C
	asrs r0, r5, #0x18
_08042066:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08042074: .4byte 0x030024B0

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
	bl sub_08070FCC
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

	thumb_func_start sub_08042188
sub_08042188: @ 0x08042188
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _080421D4 @ =0x03001624
	movs r0, #0x24
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	ldr r2, _080421D8 @ =0x01000012
	mov r0, sp
	bl CpuSet
	ldr r5, _080421DC @ =0x0818D47C
	adds r0, r5, #0
	bl sub_08006C14
	ldr r1, [r4]
	strh r0, [r1, #0x20]
	ldr r0, _080421E0 @ =0x0818D2A0
	ldr r1, _080421E4 @ =0x05000340
	bl sub_08008308
	ldr r0, [r4]
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #5
	ldr r0, _080421E8 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08008374
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080421D4: .4byte 0x03001624
_080421D8: .4byte 0x01000012
_080421DC: .4byte 0x0818D47C
_080421E0: .4byte 0x0818D2A0
_080421E4: .4byte 0x05000340
_080421E8: .4byte 0x06010000

	thumb_func_start sub_080421EC
sub_080421EC: @ 0x080421EC
	push {r4, lr}
	ldr r0, _08042220 @ =0x03001624
	ldr r0, [r0]
	cmp r0, #0
	beq _08042212
	movs r4, #0
_080421F8:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080422A8
	adds r4, #1
	cmp r4, #7
	ble _080421F8
	ldr r4, _08042220 @ =0x03001624
	ldr r0, [r4]
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_08042212:
	ldr r0, _08042224 @ =0x0818D47C
	bl sub_08006CA0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042220: .4byte 0x03001624
_08042224: .4byte 0x0818D47C

	thumb_func_start sub_08042228
sub_08042228: @ 0x08042228
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bhi _08042292
	ldr r7, _08042298 @ =0x03001624
	ldr r0, [r7]
	cmp r0, #0
	beq _08042292
	lsls r6, r5, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	bne _08042292
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r7]
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #5
	ldr r0, _0804229C @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08009AB4
	ldr r2, _080422A0 @ =0x0818D434
	adds r0, r4, #0
	movs r1, #0
	adds r3, r5, #0
	bl sub_08009ACC
	ldr r0, _080422A4 @ =0x0808DAC8
	adds r0, r6, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r7]
	adds r0, r0, r6
	str r4, [r0]
_08042292:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042298: .4byte 0x03001624
_0804229C: .4byte 0x06010000
_080422A0: .4byte 0x0818D434
_080422A4: .4byte 0x0808DAC8

	thumb_func_start sub_080422A8
sub_080422A8: @ 0x080422A8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bhi _080422D0
	ldr r5, _080422D8 @ =0x03001624
	ldr r0, [r5]
	cmp r0, #0
	beq _080422D0
	lsls r4, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _080422D0
	bl sub_08009A00
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_080422D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080422D8: .4byte 0x03001624

	thumb_func_start sub_080422DC
sub_080422DC: @ 0x080422DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0804231C @ =0x0808DAE8
	mov r0, sp
	movs r2, #8
	bl sub_08072A10
	movs r7, #0
	movs r0, #1
	mov sb, r0
	movs r5, #0
	mov r8, r5
	ldr r0, _08042320 @ =0x03001624
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	bne _08042324
	bl sub_08005934
	movs r0, #0x24
	bl sub_080062D0
	bl sub_08005A2C
	movs r0, #1
	rsbs r0, r0, #0
	b _08042510
	.align 2, 0
_0804231C: .4byte 0x0808DAE8
_08042320: .4byte 0x03001624
_08042324:
	bl sub_08005A94
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #1
	bl sub_08005A88
	movs r0, #1
	bl sub_08005AC0
	movs r0, #1
	bl sub_08005A60
	bl sub_08005934
	bl sub_08041A28
	ldr r1, _08042360 @ =0x0808DAC8
	ldrh r0, [r1]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08041AD4
	b _080424D6
	.align 2, 0
_08042360: .4byte 0x0808DAC8
_08042364:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080423D4
	ldr r0, _0804238C @ =0x03001624
	ldr r1, [r0]
	lsls r0, r7, #0x18
	asrs r4, r0, #0x18
	lsls r0, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08042390
	movs r0, #0xd2
	bl sub_0806F5DC
	movs r0, #0x14
	bl sub_08002B98
	b _080423D4
	.align 2, 0
_0804238C: .4byte 0x03001624
_08042390:
	movs r0, #0
	bl sub_08005AC0
	bl sub_08005ACC
	movs r0, #1
	bl sub_08002B98
	mov r1, sp
	adds r0, r1, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, #0x1a
	movs r0, #0
	movs r1, #0xa
	bl sub_08005BB4
	movs r0, #0x23
	bl sub_080062D0
	movs r0, #0
	bl sub_0800648C
	movs r0, #1
	bl sub_08005AC0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080423D0
	b _080424EC
_080423D0:
	movs r2, #1
	mov sb, r2
_080423D4:
	ldr r0, _080423E8 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080423F0
	ldr r0, _080423EC @ =0xFFFF00FF
	ands r5, r0
	b _08042448
	.align 2, 0
_080423E8: .4byte 0x030024B0
_080423EC: .4byte 0xFFFF00FF
_080423F0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042408
	ldr r0, _08042404 @ =0xFFFF00FF
	ands r5, r0
	movs r0, #0x80
	lsls r0, r0, #1
	b _08042446
	.align 2, 0
_08042404: .4byte 0xFFFF00FF
_08042408:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042428
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _08042424 @ =0xFFFFFF00
	ands r5, r2
	orrs r5, r1
	cmp r0, #0
	bge _08042448
	ands r5, r2
	b _08042448
	.align 2, 0
_08042424: .4byte 0xFFFFFF00
_08042428:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08042448
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _080424B8 @ =0xFFFFFF00
	ands r5, r2
	orrs r5, r1
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08042448
	ands r5, r2
	movs r0, #3
_08042446:
	orrs r5, r0
_08042448:
	ldr r0, _080424BC @ =0x0000FFFF
	adds r2, r0, #0
	mov r1, r8
	ands r1, r2
	adds r0, r5, #0
	ands r0, r2
	cmp r1, r0
	beq _08042460
	movs r0, #0xca
	bl sub_0806F5DC
	mov r8, r5
_08042460:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	lsrs r7, r0, #0x18
	asrs r6, r0, #0x18
	cmp r1, r0
	beq _080424D0
	ldr r1, _080424C0 @ =0x0808DAC8
	lsls r4, r6, #2
	adds r1, r4, r1
	ldrh r0, [r1]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08041AD4
	ldr r0, _080424C4 @ =0x03001624
	ldr r0, [r0]
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _080424C8
	mov r1, sp
	adds r0, r1, r6
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, #0x1a
	movs r0, #0
	movs r1, #0xa
	bl sub_08005BB4
	movs r0, #0x22
	bl sub_080062D0
	b _080424CE
	.align 2, 0
_080424B8: .4byte 0xFFFFFF00
_080424BC: .4byte 0x0000FFFF
_080424C0: .4byte 0x0808DAC8
_080424C4: .4byte 0x03001624
_080424C8:
	movs r0, #0x25
	bl sub_080062D0
_080424CE:
	mov sb, r7
_080424D0:
	movs r0, #1
	bl sub_08002B98
_080424D6:
	ldr r0, _08042520 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080424E4
	b _08042364
_080424E4:
	movs r0, #0xce
	bl sub_0806F5DC
	movs r7, #0xff
_080424EC:
	bl sub_08041A9C
	bl sub_08005A2C
	mov r0, sl
	bl sub_08005A88
	movs r0, #0
	bl sub_08005AC0
	movs r0, #1
	bl sub_08005A74
	movs r0, #1
	bl sub_08002B98
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
_08042510:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08042520: .4byte 0x030024B0

	thumb_func_start sub_08042524
sub_08042524: @ 0x08042524
	push {r4, lr}
	ldr r1, _08042530 @ =0x0808DAF0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	b _08042546
	.align 2, 0
_08042530: .4byte 0x0808DAF0
_08042534:
	ldrb r0, [r4]
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042544
	movs r0, #0
	b _0804254E
_08042544:
	adds r4, #1
_08042546:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _08042534
	movs r0, #1
_0804254E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08042554
sub_08042554: @ 0x08042554
	push {r4, lr}
	bl sub_08042188
	movs r4, #0
_0804255C:
	adds r0, r4, #0
	bl sub_08042524
	cmp r0, #0
	beq _08042578
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08042228
	ldr r0, _08042584 @ =0x03001624
	ldr r1, [r0]
	ldrh r0, [r1, #0x22]
	adds r0, #1
	strh r0, [r1, #0x22]
_08042578:
	adds r4, #1
	cmp r4, #7
	ble _0804255C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042584: .4byte 0x03001624

	thumb_func_start sub_08042588
sub_08042588: @ 0x08042588
	push {r4, lr}
	movs r4, #0
_0804258C:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080422A8
	adds r4, #1
	cmp r4, #7
	ble _0804258C
	bl sub_080421EC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080425A4
sub_080425A4: @ 0x080425A4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r7, _080425E0 @ =0x020335D0
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _080425BA
	bl sub_080425EC
_080425BA:
	ldr r5, _080425E4 @ =0x081969AC
	cmp r6, #0
	bne _080425C2
	ldr r5, _080425E8 @ =0x08196144
_080425C2:
	movs r0, #0xf
	ands r4, r0
	lsls r1, r4, #4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r5, #0
	bl sub_08009554
	str r5, [r7, #0x14]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080425E0: .4byte 0x020335D0
_080425E4: .4byte 0x081969AC
_080425E8: .4byte 0x08196144

	thumb_func_start sub_080425EC
sub_080425EC: @ 0x080425EC
	push {r4, lr}
	ldr r4, _08042604 @ =0x020335D0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _080425FE
	bl sub_080095E0
	movs r0, #0
	str r0, [r4, #0x14]
_080425FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042604: .4byte 0x020335D0

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

	thumb_func_start sub_080426E4
sub_080426E4: @ 0x080426E4
	push {lr}
	bl sub_08040FE8
	ldr r0, _08042730 @ =0x002C0018
	bl sub_08041058
	ldr r0, _08042734 @ =0x002C0019
	bl sub_08041058
	ldr r0, _08042738 @ =0x002C001A
	bl sub_08041058
_080426FC:
	ldr r0, _0804273C @ =0x002C001B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042748
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _08042740 @ =0x0808E59C
	movs r1, #0x78
	movs r2, #0x40
	bl sub_080414B4
	ldr r0, _08042744 @ =0x002C001C
	bl sub_08041058
	bl sub_08041560
	movs r0, #0xa3
	bl sub_080406E4
	b _08042758
	.align 2, 0
_08042730: .4byte 0x002C0018
_08042734: .4byte 0x002C0019
_08042738: .4byte 0x002C001A
_0804273C: .4byte 0x002C001B
_08042740: .4byte 0x0808E59C
_08042744: .4byte 0x002C001C
_08042748:
	ldr r0, _0804275C @ =0x002C001D
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080426FC
_08042758:
	pop {r0}
	bx r0
	.align 2, 0
_0804275C: .4byte 0x002C001D

	thumb_func_start sub_08042760
sub_08042760: @ 0x08042760
	push {lr}
	bl sub_08040FE8
	movs r0, #0x17
	bl sub_08041058
	movs r0, #0x18
	bl sub_08041058
	movs r0, #0x19
	bl sub_08041058
	pop {r0}
	bx r0

	thumb_func_start sub_0804277C
sub_0804277C: @ 0x0804277C
	push {lr}
	bl sub_080405B8
	ldr r0, _080427B4 @ =0x0808DC8C
	bl sub_0804115C
	bl sub_080407FC
	movs r0, #0xa2
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080427BC
	movs r0, #0xa3
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080427BC
	movs r0, #0x18
	bl sub_080410A8
	ldr r0, _080427B8 @ =sub_080426E4
	bl sub_0804066C
	b _080427C8
	.align 2, 0
_080427B4: .4byte 0x0808DC8C
_080427B8: .4byte sub_080426E4
_080427BC:
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _080427DC @ =sub_08042760
	bl sub_0804066C
_080427C8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080427DC: .4byte sub_08042760

	thumb_func_start sub_080427E0
sub_080427E0: @ 0x080427E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08041008
	bl sub_08040FE8
	movs r0, #5
	adds r1, r4, #0
	bl sub_08005BE0
	movs r0, #0x8c
	lsls r0, r0, #0xf
	bl sub_08041058
	adds r0, r5, #0
	bl sub_08041058
	bl sub_08041008
	bl sub_08040FE8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08042814
sub_08042814: @ 0x08042814
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_08041008
	adds r0, r4, #0
	bl sub_080410C0
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	adds r0, r4, #0
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #4
	adds r1, r5, #0
	bl sub_08005BE0
	movs r0, #0x52
	bl sub_08041058
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	bl sub_08040B84
	bl sub_08041008
	bl sub_08040FE8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08042860
sub_08042860: @ 0x08042860
	push {lr}
	ldr r0, _0804288C @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	pop {r0}
	bx r0
	.align 2, 0
_0804288C: .4byte 0x0000011B

	thumb_func_start sub_08042890
sub_08042890: @ 0x08042890
	push {lr}
	bl sub_08042860
	bl sub_08040FE8
	movs r0, #3
	bl sub_08041018
	movs r0, #0xc4
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _080428E0 @ =0x00310001
	bl sub_08041058
	ldr r0, _080428E4 @ =0x00310002
	bl sub_08041058
	ldr r0, _080428E8 @ =0x00310003
	bl sub_08041058
	ldr r0, _080428EC @ =0x00310004
	bl sub_08041058
	ldr r0, _080428F0 @ =0x00310005
	bl sub_08041058
	ldr r0, _080428F4 @ =0x00310006
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080428FC
	ldr r0, _080428F8 @ =0x00310007
	bl sub_08041058
	b _08042982
	.align 2, 0
_080428E0: .4byte 0x00310001
_080428E4: .4byte 0x00310002
_080428E8: .4byte 0x00310003
_080428EC: .4byte 0x00310004
_080428F0: .4byte 0x00310005
_080428F4: .4byte 0x00310006
_080428F8: .4byte 0x00310007
_080428FC:
	ldr r1, _08042948 @ =0x00310008
	movs r0, #0x30
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042982
	movs r0, #0x18
	bl sub_080410A8
	bl sub_08042860
	bl sub_08040FE8
	movs r0, #3
	bl sub_08041018
	ldr r0, _0804294C @ =0x00310009
	bl sub_08041058
	ldr r0, _08042950 @ =0x0031000A
	bl sub_08041058
	ldr r0, _08042954 @ =0x0031000B
	bl sub_08041058
	ldr r0, _08042958 @ =0x0031000C
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042960
	ldr r0, _0804295C @ =0x0031000D
	bl sub_08041058
	b _0804296A
	.align 2, 0
_08042948: .4byte 0x00310008
_0804294C: .4byte 0x00310009
_08042950: .4byte 0x0031000A
_08042954: .4byte 0x0031000B
_08042958: .4byte 0x0031000C
_0804295C: .4byte 0x0031000D
_08042960:
	bl sub_08042860
	ldr r0, _08042988 @ =0x00310010
	bl sub_08041058
_0804296A:
	ldr r0, _0804298C @ =0x0031000E
	bl sub_08041058
	ldr r0, _08042990 @ =0x0031000F
	bl sub_08041058
	movs r0, #0xb6
	bl sub_080406E4
	movs r0, #0xc
	bl sub_0802D7CC
_08042982:
	pop {r0}
	bx r0
	.align 2, 0
_08042988: .4byte 0x00310010
_0804298C: .4byte 0x0031000E
_08042990: .4byte 0x0031000F

	thumb_func_start sub_08042994
sub_08042994: @ 0x08042994
	push {lr}
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #3
	bl sub_08041018
	ldr r0, _080429E8 @ =0x00310011
	bl sub_08041058
	ldr r0, _080429EC @ =0x00310012
	bl sub_08041058
	ldr r0, _080429F0 @ =0x00310013
	bl sub_08041058
	ldr r0, _080429F4 @ =0x00310014
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080429E8: .4byte 0x00310011
_080429EC: .4byte 0x00310012
_080429F0: .4byte 0x00310013
_080429F4: .4byte 0x00310014

	thumb_func_start sub_080429F8
sub_080429F8: @ 0x080429F8
	push {lr}
	bl sub_08042860
	bl sub_08042860
	bl sub_08040FE8
	movs r0, #3
	bl sub_08041018
	ldr r0, _08042A54 @ =0x0031001D
	bl sub_08041058
	ldr r0, _08042A58 @ =0x0031001E
	bl sub_08041058
	movs r0, #0x13
	movs r1, #0x18
	bl sub_08042814
	movs r0, #3
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08042A5C @ =0x0031001F
	bl sub_08041058
	ldr r0, _08042A60 @ =0x00310020
	bl sub_08041058
	ldr r0, _08042A64 @ =0x00310021
	bl sub_08041058
	ldr r0, _08042A68 @ =0x00310022
	bl sub_08041058
	movs r0, #0xb8
	bl sub_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_08042A54: .4byte 0x0031001D
_08042A58: .4byte 0x0031001E
_08042A5C: .4byte 0x0031001F
_08042A60: .4byte 0x00310020
_08042A64: .4byte 0x00310021
_08042A68: .4byte 0x00310022

	thumb_func_start sub_08042A6C
sub_08042A6C: @ 0x08042A6C
	push {lr}
	bl sub_08042860
	bl sub_08040FE8
	movs r0, #3
	bl sub_08041018
	ldr r0, _08042A98 @ =0x00310023
	bl sub_08041058
	ldr r0, _08042A9C @ =0x00310024
	bl sub_08041058
	ldr r0, _08042AA0 @ =0x00310025
	bl sub_08041058
	ldr r0, _08042AA4 @ =0x00310026
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08042A98: .4byte 0x00310023
_08042A9C: .4byte 0x00310024
_08042AA0: .4byte 0x00310025
_08042AA4: .4byte 0x00310026

	thumb_func_start sub_08042AA8
sub_08042AA8: @ 0x08042AA8
	push {lr}
	bl sub_080405B8
	ldr r0, _08042B20 @ =0x0808DCB4
	bl sub_0804115C
	ldr r2, _08042B24 @ =0x0808E74C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r2, _08042B28 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x40
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xb8
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08042B30
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08042B2C @ =sub_08042A6C
	bl sub_0804066C
	b _08042B76
	.align 2, 0
_08042B20: .4byte 0x0808DCB4
_08042B24: .4byte 0x0808E74C
_08042B28: .4byte 0x0808E6BC
_08042B2C: .4byte sub_08042A6C
_08042B30:
	movs r0, #0xb6
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042B50
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08042B4C @ =sub_08042890
	bl sub_0804066C
	b _08042B76
	.align 2, 0
_08042B4C: .4byte sub_08042890
_08042B50:
	movs r0, #0x18
	bl sub_080410A8
	movs r0, #0xb9
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042B70
	ldr r0, _08042B6C @ =sub_08042994
	bl sub_0804066C
	b _08042B76
	.align 2, 0
_08042B6C: .4byte sub_08042994
_08042B70:
	ldr r0, _08042BA8 @ =sub_080429F8
	bl sub_0804066C
_08042B76:
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
_08042BA8: .4byte sub_080429F8

	thumb_func_start sub_08042BAC
sub_08042BAC: @ 0x08042BAC
	push {lr}
	movs r0, #0x3c
	bl sub_08040690
	ldr r2, _08042C64 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0xa8
	movs r2, #0x4c
	bl sub_08041894
	ldr r0, _08042C68 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x37
	bl sub_08041018
	movs r0, #0x26
	bl sub_08041058
	movs r0, #0x27
	bl sub_08041058
	movs r0, #0x28
	bl sub_08041058
	movs r0, #9
	bl sub_08040FD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08042C58
	b _08042D96
_08042C58:
	lsls r0, r0, #2
	ldr r1, _08042C6C @ =_08042C70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042C64: .4byte 0x0808E6BC
_08042C68: .4byte 0x00000129
_08042C6C: .4byte _08042C70
_08042C70: @ jump table
	.4byte _08042C90 @ case 0
	.4byte _08042CAA @ case 1
	.4byte _08042CD6 @ case 2
	.4byte _08042D02 @ case 3
	.4byte _08042D1C @ case 4
	.4byte _08042D36 @ case 5
	.4byte _08042D50 @ case 6
	.4byte _08042D6A @ case 7
_08042C90:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x2c
	bl sub_08041058
	movs r0, #0x2d
	bl sub_08041058
	b _08042DC0
_08042CAA:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x2e
	bl sub_08041058
	movs r0, #0x2f
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x30
	bl sub_08041058
	b _08042DC0
_08042CD6:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08041058
	movs r0, #0x32
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x33
	bl sub_08041058
	b _08042DC0
_08042D02:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x34
	bl sub_08041058
	movs r0, #0x35
	bl sub_08041058
	b _08042DC0
_08042D1C:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041058
	movs r0, #0x37
	bl sub_08041058
	b _08042DC0
_08042D36:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041058
	movs r0, #0x39
	bl sub_08041058
	b _08042DC0
_08042D50:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3a
	bl sub_08041058
	movs r0, #0x3b
	bl sub_08041058
	b _08042DC0
_08042D6A:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08041058
	movs r0, #0x3d
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3e
	bl sub_08041058
	b _08042DC0
_08042D96:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3f
	bl sub_08041058
	movs r0, #0x40
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x41
	bl sub_08041058
_08042DC0:
	movs r0, #8
	bl sub_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08042DCC
sub_08042DCC: @ 0x08042DCC
	push {lr}
	bl sub_080405B8
	ldr r0, _08042E34 @ =0x0808DCDC
	bl sub_0804115C
	ldr r2, _08042E38 @ =0x0808EA5C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xa8
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08042E3C @ =sub_08042BAC
	bl sub_0804066C
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08042E34: .4byte 0x0808DCDC
_08042E38: .4byte 0x0808EA5C
_08042E3C: .4byte sub_08042BAC

	thumb_func_start sub_08042E40
sub_08042E40: @ 0x08042E40
	push {lr}
	bl sub_08040FE8
	movs r0, #4
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xb0
	lsls r0, r0, #0xe
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042EE4 @ =0x002C0001
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042EE8 @ =0x002C0002
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042EEC @ =0x002C0003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042EF4
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x44
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _08042EF0 @ =0x002C0004
	bl sub_08041058
	b _08043040
	.align 2, 0
_08042EE4: .4byte 0x002C0001
_08042EE8: .4byte 0x002C0002
_08042EEC: .4byte 0x002C0003
_08042EF0: .4byte 0x002C0004
_08042EF4:
	ldr r1, _08042F94 @ =0x002C0005
	movs r0, #0x2b
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042F04
	b _08043040
_08042F04:
	movs r0, #0x18
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #4
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042F98 @ =0x002C0006
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042F9C @ =0x002C0007
	bl sub_08041058
	ldr r0, _08042FA0 @ =0x002C0008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042FA4 @ =0x002C0009
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042FA8 @ =0x002C000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042FB4
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042FAC @ =0x002C000B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08042FB0 @ =0x002C000C
	bl sub_08041058
	b _08042FC6
	.align 2, 0
_08042F94: .4byte 0x002C0005
_08042F98: .4byte 0x002C0006
_08042F9C: .4byte 0x002C0007
_08042FA0: .4byte 0x002C0008
_08042FA4: .4byte 0x002C0009
_08042FA8: .4byte 0x002C000A
_08042FAC: .4byte 0x002C000B
_08042FB0: .4byte 0x002C000C
_08042FB4:
	ldr r0, _08043044 @ =0x002C0011
	bl sub_08041058
	ldr r0, _08043048 @ =0x002C0012
	bl sub_08041058
	ldr r0, _0804304C @ =0x002C0013
	bl sub_08041058
_08042FC6:
	ldr r0, _08043050 @ =0x002C000D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043054 @ =0x002C000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x54
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08043058 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804305C @ =0x002C000F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043060 @ =0x002C0010
	bl sub_08041058
	movs r0, #0xa2
	bl sub_080406E4
	movs r0, #0x28
	bl sub_0802D7CC
_08043040:
	pop {r0}
	bx r0
	.align 2, 0
_08043044: .4byte 0x002C0011
_08043048: .4byte 0x002C0012
_0804304C: .4byte 0x002C0013
_08043050: .4byte 0x002C000D
_08043054: .4byte 0x002C000E
_08043058: .4byte 0x00000129
_0804305C: .4byte 0x002C000F
_08043060: .4byte 0x002C0010

	thumb_func_start sub_08043064
sub_08043064: @ 0x08043064
	push {lr}
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x44
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _080430CC @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x5a
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #4
	bl sub_08041018
	ldr r0, _080430D0 @ =0x002C0014
	bl sub_08041058
	ldr r0, _080430D4 @ =0x002C0015
	bl sub_08041058
	ldr r0, _080430D8 @ =0x002C0016
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080430DC @ =0x002C0017
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080430CC: .4byte 0x0000011F
_080430D0: .4byte 0x002C0014
_080430D4: .4byte 0x002C0015
_080430D8: .4byte 0x002C0016
_080430DC: .4byte 0x002C0017

	thumb_func_start sub_080430E0
sub_080430E0: @ 0x080430E0
	push {lr}
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x54
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08043180 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #4
	bl sub_08041018
	ldr r0, _08043184 @ =0x002C001E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043188 @ =0x002C001F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804318C @ =0x002C0020
	bl sub_08041058
	ldr r0, _08043190 @ =0x002C0021
	bl sub_08041058
	movs r0, #0x37
	movs r1, #0x18
	bl sub_08042814
	movs r0, #4
	bl sub_08041018
	ldr r0, _08043194 @ =0x002C0022
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043198 @ =0x002C0023
	bl sub_08041058
	movs r0, #0xa5
	bl sub_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_08043180: .4byte 0x00000129
_08043184: .4byte 0x002C001E
_08043188: .4byte 0x002C001F
_0804318C: .4byte 0x002C0020
_08043190: .4byte 0x002C0021
_08043194: .4byte 0x002C0022
_08043198: .4byte 0x002C0023

	thumb_func_start sub_0804319C
sub_0804319C: @ 0x0804319C
	push {lr}
	bl sub_08040FE8
	movs r0, #4
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080431E8 @ =0x002C0024
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080431EC @ =0x002C0025
	bl sub_08041058
	ldr r0, _080431F0 @ =0x002C0026
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080431F4 @ =0x002C0027
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080431E8: .4byte 0x002C0024
_080431EC: .4byte 0x002C0025
_080431F0: .4byte 0x002C0026
_080431F4: .4byte 0x002C0027

	thumb_func_start sub_080431F8
sub_080431F8: @ 0x080431F8
	push {lr}
	bl sub_08040FE8
	movs r0, #4
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043288 @ =0x00310015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804328C @ =0x00310016
	bl sub_08041058
	ldr r0, _08043290 @ =0x00310017
	bl sub_08041058
_0804322E:
	ldr r0, _08043294 @ =0x00310018
	bl sub_08041058
	ldr r0, _08043298 @ =0x00310019
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080432A8
	ldr r0, _0804329C @ =0x0031001A
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _080432A0 @ =0x0808E5AC
	movs r1, #0x78
	movs r2, #0x40
	bl sub_080414B4
	bl sub_08040FE8
	ldr r0, _080432A4 @ =0x0031001B
	bl sub_08041058
	bl sub_08041560
	movs r0, #0xb9
	bl sub_080406E4
	b _080432B8
	.align 2, 0
_08043288: .4byte 0x00310015
_0804328C: .4byte 0x00310016
_08043290: .4byte 0x00310017
_08043294: .4byte 0x00310018
_08043298: .4byte 0x00310019
_0804329C: .4byte 0x0031001A
_080432A0: .4byte 0x0808E5AC
_080432A4: .4byte 0x0031001B
_080432A8:
	ldr r0, _080432C4 @ =0x0031001C
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804322E
_080432B8:
	movs r0, #0x28
	bl sub_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0
_080432C4: .4byte 0x0031001C

	thumb_func_start sub_080432C8
sub_080432C8: @ 0x080432C8
	push {lr}
	bl sub_080405B8
	ldr r0, _08043338 @ =0x0808DD04
	bl sub_0804115C
	ldr r2, _0804333C @ =0x0808E75C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _08043340 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xb6
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08043348
	movs r0, #0xb9
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043348
	movs r0, #0x18
	bl sub_080410A8
	ldr r0, _08043344 @ =sub_080431F8
	bl sub_0804066C
	b _080433AE
	.align 2, 0
_08043338: .4byte 0x0808DD04
_0804333C: .4byte 0x0808E75C
_08043340: .4byte 0x0808E6BC
_08043344: .4byte sub_080431F8
_08043348:
	movs r0, #0xa5
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08043368
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08043364 @ =sub_0804319C
	bl sub_0804066C
	b _080433AE
	.align 2, 0
_08043364: .4byte sub_0804319C
_08043368:
	movs r0, #0xa2
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043388
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08043384 @ =sub_08042E40
	bl sub_0804066C
	b _080433AE
	.align 2, 0
_08043384: .4byte sub_08042E40
_08043388:
	movs r0, #0x18
	bl sub_080410A8
	movs r0, #0xa3
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080433A8
	ldr r0, _080433A4 @ =sub_08043064
	bl sub_0804066C
	b _080433AE
	.align 2, 0
_080433A4: .4byte sub_08043064
_080433A8:
	ldr r0, _080433E0 @ =sub_080430E0
	bl sub_0804066C
_080433AE:
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
_080433E0: .4byte sub_080430E0

	thumb_func_start sub_080433E4
sub_080433E4: @ 0x080433E4
	push {lr}
	ldr r0, _08043450 @ =0x0000011B
	bl sub_080410E0
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
	bl sub_08040FE8
	movs r0, #7
	bl sub_08041018
	movs r0, #0xb8
	lsls r0, r0, #0xd
	bl sub_08041058
	ldr r0, _08043454 @ =0x00170001
	bl sub_08041058
	ldr r0, _08043458 @ =0x00170002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043460
	movs r0, #0
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804345C @ =0x00170003
	bl sub_08041058
	b _0804358C
	.align 2, 0
_08043450: .4byte 0x0000011B
_08043454: .4byte 0x00170001
_08043458: .4byte 0x00170002
_0804345C: .4byte 0x00170003
_08043460:
	ldr r1, _08043530 @ =0x00170004
	movs r0, #0x16
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043470
	b _0804358C
_08043470:
	movs r0, #0x14
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #7
	bl sub_08041018
	movs r0, #0
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043534 @ =0x00170005
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080425EC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043538 @ =0x00170006
	bl sub_08041058
	ldr r0, _0804353C @ =0x00170007
	bl sub_08041058
	ldr r0, _08043540 @ =0x00170008
	bl sub_08041058
	ldr r0, _08043544 @ =0x00170009
	bl sub_08041058
	ldr r0, _08043548 @ =0x0017000A
	bl sub_08041058
	ldr r0, _0804354C @ =0x0017000B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804355C
	movs r0, #0
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043550 @ =0x0017000C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080425EC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043554 @ =0x0017000D
	bl sub_08041058
	ldr r0, _08043558 @ =0x0017000E
	bl sub_08041058
	b _08043568
	.align 2, 0
_08043530: .4byte 0x00170004
_08043534: .4byte 0x00170005
_08043538: .4byte 0x00170006
_0804353C: .4byte 0x00170007
_08043540: .4byte 0x00170008
_08043544: .4byte 0x00170009
_08043548: .4byte 0x0017000A
_0804354C: .4byte 0x0017000B
_08043550: .4byte 0x0017000C
_08043554: .4byte 0x0017000D
_08043558: .4byte 0x0017000E
_0804355C:
	ldr r0, _08043590 @ =0x00170013
	bl sub_08041058
	ldr r0, _08043594 @ =0x00170014
	bl sub_08041058
_08043568:
	ldr r0, _08043598 @ =0x0017000F
	bl sub_08041058
	ldr r0, _0804359C @ =0x00170010
	bl sub_08041058
	ldr r0, _080435A0 @ =0x00170011
	bl sub_08041058
	ldr r0, _080435A4 @ =0x00170012
	bl sub_08041058
	movs r0, #0x59
	bl sub_080406E4
	movs r0, #0x2c
	bl sub_0802D7CC
_0804358C:
	pop {r0}
	bx r0
	.align 2, 0
_08043590: .4byte 0x00170013
_08043594: .4byte 0x00170014
_08043598: .4byte 0x0017000F
_0804359C: .4byte 0x00170010
_080435A0: .4byte 0x00170011
_080435A4: .4byte 0x00170012

	thumb_func_start sub_080435A8
sub_080435A8: @ 0x080435A8
	push {lr}
	bl sub_08040FE8
	movs r0, #7
	bl sub_08041018
	movs r0, #0
	movs r1, #3
	bl sub_080425A4
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804360C @ =0x00170015
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080425EC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043610 @ =0x00170016
	bl sub_08041058
	ldr r0, _08043614 @ =0x00170017
	bl sub_08041058
	ldr r0, _08043618 @ =0x00170018
	bl sub_08041058
	ldr r0, _0804361C @ =0x00170012
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804360C: .4byte 0x00170015
_08043610: .4byte 0x00170016
_08043614: .4byte 0x00170017
_08043618: .4byte 0x00170018
_0804361C: .4byte 0x00170012

	thumb_func_start sub_08043620
sub_08043620: @ 0x08043620
	push {lr}
	bl sub_08040FE8
	movs r0, #7
	bl sub_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080436C8 @ =0x00170027
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080436CC @ =0x00170028
	bl sub_08041058
	ldr r0, _080436D0 @ =0x00170029
	bl sub_08041058
	ldr r0, _080436D4 @ =0x0017002A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080436F0
	ldr r0, _080436D8 @ =0x00000121
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #1
	bl sub_08041808
	ldr r0, _080436DC @ =0x00170035
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	ldr r0, _080436E0 @ =0x00170036
	bl sub_08041058
	ldr r0, _080436E4 @ =0x00170037
	bl sub_08041058
	ldr r0, _080436E8 @ =0x00170038
	bl sub_08041058
	ldr r0, _080436EC @ =0x00170039
	bl sub_08041058
	movs r0, #0x59
	bl sub_080406FC
	movs r0, #0x5c
	bl sub_080406FC
	movs r0, #0x5a
	bl sub_080406FC
	movs r0, #0x5b
	bl sub_080406FC
	movs r0, #0x5d
	bl sub_080406D0
	b _0804376A
	.align 2, 0
_080436C8: .4byte 0x00170027
_080436CC: .4byte 0x00170028
_080436D0: .4byte 0x00170029
_080436D4: .4byte 0x0017002A
_080436D8: .4byte 0x00000121
_080436DC: .4byte 0x00170035
_080436E0: .4byte 0x00170036
_080436E4: .4byte 0x00170037
_080436E8: .4byte 0x00170038
_080436EC: .4byte 0x00170039
_080436F0:
	ldr r0, _08043770 @ =0x0000011B
	bl sub_080410E0
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
	ldr r0, _08043774 @ =0x0017002B
	bl sub_08041058
	ldr r0, _08043778 @ =0x0017002C
	bl sub_08041058
	movs r0, #7
	movs r1, #0x14
	bl sub_08042814
	movs r0, #7
	bl sub_08041018
	ldr r0, _0804377C @ =0x0017002D
	bl sub_08041058
	ldr r0, _08043780 @ =0x0017002E
	bl sub_08041058
	ldr r0, _08043784 @ =0x0017002F
	bl sub_08041058
	ldr r0, _08043788 @ =0x00170030
	bl sub_08041058
	ldr r0, _0804378C @ =0x00170031
	bl sub_08041058
	ldr r0, _08043790 @ =0x00170032
	bl sub_08041058
	ldr r0, _08043794 @ =0x00170033
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043798 @ =0x00170034
	bl sub_08041058
	movs r0, #0x5d
	bl sub_080406BC
_0804376A:
	pop {r0}
	bx r0
	.align 2, 0
_08043770: .4byte 0x0000011B
_08043774: .4byte 0x0017002B
_08043778: .4byte 0x0017002C
_0804377C: .4byte 0x0017002D
_08043780: .4byte 0x0017002E
_08043784: .4byte 0x0017002F
_08043788: .4byte 0x00170030
_0804378C: .4byte 0x00170031
_08043790: .4byte 0x00170032
_08043794: .4byte 0x00170033
_08043798: .4byte 0x00170034

	thumb_func_start sub_0804379C
sub_0804379C: @ 0x0804379C
	push {lr}
	ldr r0, _08043808 @ =0x0000011B
	bl sub_080410E0
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
	bl sub_08040FE8
	movs r0, #7
	bl sub_08041018
	ldr r0, _0804380C @ =0x0017003A
	bl sub_08041058
	ldr r0, _08043810 @ =0x0017003B
	bl sub_08041058
	ldr r0, _08043814 @ =0x0017003C
	bl sub_08041058
	ldr r0, _08043818 @ =0x0017003D
	bl sub_08041058
	ldr r0, _0804381C @ =0x0017003E
	bl sub_08041058
	ldr r0, _08043820 @ =0x0017003F
	bl sub_08041058
	ldr r0, _08043824 @ =0x00170040
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043828 @ =0x00170039
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08043808: .4byte 0x0000011B
_0804380C: .4byte 0x0017003A
_08043810: .4byte 0x0017003B
_08043814: .4byte 0x0017003C
_08043818: .4byte 0x0017003D
_0804381C: .4byte 0x0017003E
_08043820: .4byte 0x0017003F
_08043824: .4byte 0x00170040
_08043828: .4byte 0x00170039

	thumb_func_start sub_0804382C
sub_0804382C: @ 0x0804382C
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _080438D4 @ =0x0808DD2C
	bl sub_0804115C
	ldr r0, _080438D8 @ =0x081566E0
	movs r1, #0
	movs r2, #2
	bl sub_08041464
	ldr r4, _080438DC @ =0x0808E78C
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _080438E0 @ =0x0808E6BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7c
	movs r2, #0x44
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x5d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080438E8
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _080438E4 @ =sub_0804379C
	bl sub_0804066C
	b _08043934
	.align 2, 0
_080438D4: .4byte 0x0808DD2C
_080438D8: .4byte 0x081566E0
_080438DC: .4byte 0x0808E78C
_080438E0: .4byte 0x0808E6BC
_080438E4: .4byte sub_0804379C
_080438E8:
	movs r0, #0x5a
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043908
	movs r0, #0x14
	bl sub_080410A8
	ldr r0, _08043904 @ =sub_08043620
	bl sub_0804066C
	b _08043934
	.align 2, 0
_08043904: .4byte sub_08043620
_08043908:
	movs r0, #0x59
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043928
	movs r0, #0x14
	bl sub_080410A8
	ldr r0, _08043924 @ =sub_080435A8
	bl sub_0804066C
	b _08043934
	.align 2, 0
_08043924: .4byte sub_080435A8
_08043928:
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _0804397C @ =sub_080433E4
	bl sub_0804066C
_08043934:
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
_0804397C: .4byte sub_080433E4

	thumb_func_start sub_08043980
sub_08043980: @ 0x08043980
	push {lr}
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x2a
	bl sub_08041018
	movs r0, #0xf8
	lsls r0, r0, #0xd
	bl sub_08041058
	ldr r0, _080439D8 @ =0x001F0001
	bl sub_08041058
	ldr r0, _080439DC @ =0x001F0002
	bl sub_08041058
	ldr r0, _080439E0 @ =0x001F0003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080439E8
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080439E4 @ =0x001F0004
	bl sub_08041058
	b _08043AE2
	.align 2, 0
_080439D8: .4byte 0x001F0001
_080439DC: .4byte 0x001F0002
_080439E0: .4byte 0x001F0003
_080439E4: .4byte 0x001F0004
_080439E8:
	ldr r1, _08043A74 @ =0x001F0005
	movs r0, #0x1e
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043AE2
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x2a
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043A78 @ =0x001F0006
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043A7C @ =0x001F0007
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043A80 @ =0x001F0008
	bl sub_08041058
	ldr r0, _08043A84 @ =0x001F0009
	bl sub_08041058
	ldr r0, _08043A88 @ =0x001F000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043A98
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043A8C @ =0x001F000B
	bl sub_08041058
	ldr r0, _08043A90 @ =0x001F000C
	bl sub_08041058
	ldr r0, _08043A94 @ =0x001F000D
	bl sub_08041058
	b _08043ABC
	.align 2, 0
_08043A74: .4byte 0x001F0005
_08043A78: .4byte 0x001F0006
_08043A7C: .4byte 0x001F0007
_08043A80: .4byte 0x001F0008
_08043A84: .4byte 0x001F0009
_08043A88: .4byte 0x001F000A
_08043A8C: .4byte 0x001F000B
_08043A90: .4byte 0x001F000C
_08043A94: .4byte 0x001F000D
_08043A98:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043AE8 @ =0x001F0010
	bl sub_08041058
	ldr r0, _08043AEC @ =0x001F0011
	bl sub_08041058
	ldr r0, _08043AF0 @ =0x001F0012
	bl sub_08041058
	ldr r0, _08043AF4 @ =0x001F0013
	bl sub_08041058
_08043ABC:
	ldr r0, _08043AF8 @ =0x001F000E
	bl sub_08041058
	ldr r1, _08043AFC @ =0x0046002D
	movs r0, #0x73
	bl sub_080427E0
	movs r0, #0x2a
	bl sub_08041018
	ldr r0, _08043B00 @ =0x001F000F
	bl sub_08041058
	movs r0, #0x7b
	bl sub_080406E4
	movs r0, #0x16
	bl sub_0802D7CC
_08043AE2:
	pop {r0}
	bx r0
	.align 2, 0
_08043AE8: .4byte 0x001F0010
_08043AEC: .4byte 0x001F0011
_08043AF0: .4byte 0x001F0012
_08043AF4: .4byte 0x001F0013
_08043AF8: .4byte 0x001F000E
_08043AFC: .4byte 0x0046002D
_08043B00: .4byte 0x001F000F

	thumb_func_start sub_08043B04
sub_08043B04: @ 0x08043B04
	push {lr}
	movs r0, #0x7c
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08043B88
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x2a
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043B74 @ =0x001F0014
	bl sub_08041058
	ldr r0, _08043B78 @ =0x001F0015
	bl sub_08041058
	ldr r0, _08043B7C @ =0x001F0016
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043B80 @ =0x001F0017
	bl sub_08041058
	ldr r0, _08043B84 @ =0x001F0018
	bl sub_08041058
	movs r0, #0x73
	bl sub_08040B84
	movs r0, #0x7d
	bl sub_080406BC
	b _08043BDA
	.align 2, 0
_08043B74: .4byte 0x001F0014
_08043B78: .4byte 0x001F0015
_08043B7C: .4byte 0x001F0016
_08043B80: .4byte 0x001F0017
_08043B84: .4byte 0x001F0018
_08043B88:
	bl sub_08040FE8
	movs r0, #0x2a
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043BE0 @ =0x001F0019
	bl sub_08041058
	ldr r0, _08043BE4 @ =0x001F001A
	bl sub_08041058
	ldr r0, _08043BE8 @ =0x001F001B
	bl sub_08041058
	ldr r0, _08043BEC @ =0x001F001C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043BF0 @ =0x001F001D
	bl sub_08041058
	movs r0, #0x7b
	bl sub_080406FC
	movs r0, #0x7c
	bl sub_080406FC
	movs r0, #0x7d
	bl sub_080406D0
_08043BDA:
	pop {r0}
	bx r0
	.align 2, 0
_08043BE0: .4byte 0x001F0019
_08043BE4: .4byte 0x001F001A
_08043BE8: .4byte 0x001F001B
_08043BEC: .4byte 0x001F001C
_08043BF0: .4byte 0x001F001D

	thumb_func_start sub_08043BF4
sub_08043BF4: @ 0x08043BF4
	push {lr}
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x2a
	bl sub_08041018
	ldr r0, _08043C48 @ =0x001F001E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08043C4C @ =0x001F001F
	bl sub_08041058
	ldr r0, _08043C50 @ =0x001F0020
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043C54 @ =0x001F0021
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08043C48: .4byte 0x001F001E
_08043C4C: .4byte 0x001F001F
_08043C50: .4byte 0x001F0020
_08043C54: .4byte 0x001F0021

	thumb_func_start sub_08043C58
sub_08043C58: @ 0x08043C58
	push {lr}
	bl sub_080405B8
	ldr r0, _08043CAC @ =0x0808DD54
	bl sub_0804115C
	ldr r2, _08043CB0 @ =0x0808E9AC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x7d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08043CB8
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08043CB4 @ =sub_08043BF4
	bl sub_0804066C
	b _08043D10
	.align 2, 0
_08043CAC: .4byte 0x0808DD54
_08043CB0: .4byte 0x0808E9AC
_08043CB4: .4byte sub_08043BF4
_08043CB8:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043CE8
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08043CE4 @ =sub_08043980
	bl sub_0804066C
	movs r0, #0x7b
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043D10
	movs r0, #0x73
	bl sub_08040B34
	b _08043D10
	.align 2, 0
_08043CE4: .4byte sub_08043980
_08043CE8:
	movs r0, #0x16
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08043D00
	cmp r0, #1
	ble _08043D10
	cmp r0, #2
	beq _08043D06
	b _08043D10
_08043D00:
	movs r0, #0x7c
	bl sub_080406E4
_08043D06:
	ldr r0, _08043D34 @ =sub_08043B04
	bl sub_0804066C
	bl sub_08040B28
_08043D10:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08043D34: .4byte sub_08043B04

	thumb_func_start sub_08043D38
sub_08043D38: @ 0x08043D38
	push {lr}
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x2b
	bl sub_08041018
	movs r0, #0x80
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _08043D84 @ =0x00200001
	bl sub_08041058
	ldr r0, _08043D88 @ =0x00200002
	bl sub_08041058
	ldr r0, _08043D8C @ =0x00200003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043D94
	ldr r0, _08043D90 @ =0x00200004
	bl sub_08041058
	b _08043E38
	.align 2, 0
_08043D84: .4byte 0x00200001
_08043D88: .4byte 0x00200002
_08043D8C: .4byte 0x00200003
_08043D90: .4byte 0x00200004
_08043D94:
	ldr r1, _08043DE4 @ =0x00200005
	movs r0, #0x1f
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08043E38
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x2b
	bl sub_08041018
	ldr r0, _08043DE8 @ =0x00200006
	bl sub_08041058
	ldr r0, _08043DEC @ =0x00200007
	bl sub_08041058
	ldr r0, _08043DF0 @ =0x00200008
	bl sub_08041058
	ldr r0, _08043DF4 @ =0x00200009
	bl sub_08041058
	ldr r0, _08043DF8 @ =0x0020000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043E00
	ldr r0, _08043DFC @ =0x0020000B
	bl sub_08041058
	b _08043E06
	.align 2, 0
_08043DE4: .4byte 0x00200005
_08043DE8: .4byte 0x00200006
_08043DEC: .4byte 0x00200007
_08043DF0: .4byte 0x00200008
_08043DF4: .4byte 0x00200009
_08043DF8: .4byte 0x0020000A
_08043DFC: .4byte 0x0020000B
_08043E00:
	ldr r0, _08043E3C @ =0x00200010
	bl sub_08041058
_08043E06:
	ldr r0, _08043E40 @ =0x0020000C
	bl sub_08041058
	ldr r0, _08043E44 @ =0x0020000D
	bl sub_08041058
	ldr r0, _08043E48 @ =0x0020000E
	bl sub_08041058
	ldr r1, _08043E4C @ =0x0046002E
	movs r0, #0x74
	bl sub_080427E0
	movs r0, #0x2b
	bl sub_08041018
	ldr r0, _08043E50 @ =0x0020000F
	bl sub_08041058
	movs r0, #0x7e
	bl sub_080406E4
	movs r0, #0x23
	bl sub_0802D7CC
_08043E38:
	pop {r0}
	bx r0
	.align 2, 0
_08043E3C: .4byte 0x00200010
_08043E40: .4byte 0x0020000C
_08043E44: .4byte 0x0020000D
_08043E48: .4byte 0x0020000E
_08043E4C: .4byte 0x0046002E
_08043E50: .4byte 0x0020000F

	thumb_func_start sub_08043E54
sub_08043E54: @ 0x08043E54
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x7f
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08043ED4
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x2b
	bl sub_08041018
	ldr r0, _08043EBC @ =0x00200011
	bl sub_08041058
	ldr r0, _08043EC0 @ =0x00200012
	bl sub_08041058
	ldr r0, _08043EC4 @ =0x00200013
	bl sub_08041058
	ldr r0, _08043EC8 @ =0x00200014
	bl sub_08041058
	ldr r0, _08043ECC @ =0x00200015
	bl sub_08041058
	ldr r0, _08043ED0 @ =0x00200016
	bl sub_08041058
	movs r0, #0x74
	bl sub_08040B84
	movs r0, #0x80
	bl sub_080406BC
	b _08043F08
	.align 2, 0
_08043EBC: .4byte 0x00200011
_08043EC0: .4byte 0x00200012
_08043EC4: .4byte 0x00200013
_08043EC8: .4byte 0x00200014
_08043ECC: .4byte 0x00200015
_08043ED0: .4byte 0x00200016
_08043ED4:
	bl sub_08040FE8
	movs r0, #0x2b
	bl sub_08041018
	ldr r0, _08043F0C @ =0x00200017
	bl sub_08041058
	ldr r0, _08043F10 @ =0x00200018
	bl sub_08041058
	ldr r0, _08043F14 @ =0x00200019
	bl sub_08041058
	ldr r0, _08043F18 @ =0x0020001A
	bl sub_08041058
	movs r0, #0x7e
	bl sub_080406FC
	movs r0, #0x7f
	bl sub_080406FC
	movs r0, #0x80
	bl sub_080406D0
_08043F08:
	pop {r0}
	bx r0
	.align 2, 0
_08043F0C: .4byte 0x00200017
_08043F10: .4byte 0x00200018
_08043F14: .4byte 0x00200019
_08043F18: .4byte 0x0020001A

	thumb_func_start sub_08043F1C
sub_08043F1C: @ 0x08043F1C
	push {lr}
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x2b
	bl sub_08041018
	ldr r0, _08043F50 @ =0x0020001B
	bl sub_08041058
	ldr r0, _08043F54 @ =0x0020001C
	bl sub_08041058
	ldr r0, _08043F58 @ =0x0020001D
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08043F50: .4byte 0x0020001B
_08043F54: .4byte 0x0020001C
_08043F58: .4byte 0x0020001D

	thumb_func_start sub_08043F5C
sub_08043F5C: @ 0x08043F5C
	push {lr}
	sub sp, #8
	bl sub_080405B8
	ldr r0, _08043FC8 @ =0x0808DD7C
	bl sub_0804115C
	ldr r2, _08043FCC @ =0x0808E9BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08043FD0 @ =0x0808DBF8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	bl sub_080407FC
	movs r0, #0x80
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08043FD8
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08043FD4 @ =sub_08043F1C
	bl sub_0804066C
	b _08044030
	.align 2, 0
_08043FC8: .4byte 0x0808DD7C
_08043FCC: .4byte 0x0808E9BC
_08043FD0: .4byte 0x0808DBF8
_08043FD4: .4byte sub_08043F1C
_08043FD8:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044008
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08044004 @ =sub_08043D38
	bl sub_0804066C
	movs r0, #0x7e
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08044030
	movs r0, #0x74
	bl sub_08040B34
	b _08044030
	.align 2, 0
_08044004: .4byte sub_08043D38
_08044008:
	movs r0, #0x16
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08044020
	cmp r0, #1
	ble _08044030
	cmp r0, #2
	beq _08044026
	b _08044030
_08044020:
	movs r0, #0x7f
	bl sub_080406E4
_08044026:
	ldr r0, _08044054 @ =sub_08043E54
	bl sub_0804066C
	bl sub_08040B28
_08044030:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08044054: .4byte sub_08043E54

	thumb_func_start sub_08044058
sub_08044058: @ 0x08044058
	push {lr}
	ldr r2, _080440E8 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x80
	movs r2, #0x3c
	bl sub_08041894
	ldr r0, _080440EC @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x39
	bl sub_08041018
	pop {r0}
	bx r0
	.align 2, 0
_080440E8: .4byte 0x0808E6BC
_080440EC: .4byte 0x0000011F

	thumb_func_start sub_080440F0
sub_080440F0: @ 0x080440F0
	push {lr}
	bl sub_08044058
	movs r0, #0x12
	bl sub_08041058
	movs r0, #0x13
	bl sub_08041058
	movs r0, #0x14
	bl sub_08041058
	movs r0, #0x15
	bl sub_08041058
	movs r0, #0x16
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x10
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x10
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08044154
sub_08044154: @ 0x08044154
	push {lr}
	bl sub_08044058
	ldr r0, _080441A0 @ =0x001B0016
	bl sub_08041058
	ldr r0, _080441A4 @ =0x001B0017
	bl sub_08041058
_08044166:
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080441A8 @ =0x001B0018
	bl sub_08041058
	ldr r0, _080441AC @ =0x001B0019
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080441B4
	cmp r0, #1
	beq _08044224
	ldr r0, _080441B0 @ =0x001B0026
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044166
	b _08044278
	.align 2, 0
_080441A0: .4byte 0x001B0016
_080441A4: .4byte 0x001B0017
_080441A8: .4byte 0x001B0018
_080441AC: .4byte 0x001B0019
_080441B0: .4byte 0x001B0026
_080441B4:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08044210 @ =0x001B001A
	bl sub_08041058
	ldr r0, _08044214 @ =0x001B001B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08044218 @ =0x001B001C
	bl sub_08041058
	ldr r0, _0804421C @ =0x001B001D
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_08040FE8
	ldr r0, _08044220 @ =0x001B001E
	bl sub_08041058
	movs r0, #0x6b
	bl sub_080406E4
	b _08044278
	.align 2, 0
_08044210: .4byte 0x001B001A
_08044214: .4byte 0x001B001B
_08044218: .4byte 0x001B001C
_0804421C: .4byte 0x001B001D
_08044220: .4byte 0x001B001E
_08044224:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804425C @ =0x001B001F
	bl sub_08041058
	ldr r0, _08044260 @ =0x001B0020
	bl sub_08041058
	ldr r0, _08044264 @ =0x001B0021
	bl sub_08041058
	ldr r0, _08044268 @ =0x001B0022
	bl sub_08041058
	ldr r0, _0804426C @ =0x001B0023
	bl sub_08041058
	ldr r0, _08044270 @ =0x001B0024
	bl sub_08041058
	ldr r0, _08044274 @ =0x001B0025
	bl sub_08041058
	b _08044166
	.align 2, 0
_0804425C: .4byte 0x001B001F
_08044260: .4byte 0x001B0020
_08044264: .4byte 0x001B0021
_08044268: .4byte 0x001B0022
_0804426C: .4byte 0x001B0023
_08044270: .4byte 0x001B0024
_08044274: .4byte 0x001B0025
_08044278:
	pop {r0}
	bx r0

	thumb_func_start sub_0804427C
sub_0804427C: @ 0x0804427C
	push {lr}
	bl sub_08044058
	ldr r0, _080442AC @ =0x001C0016
	bl sub_08041058
	ldr r0, _080442B0 @ =0x001C0017
	bl sub_08041058
_0804428E:
	ldr r0, _080442B4 @ =0x001C0018
	bl sub_08041058
	ldr r0, _080442B8 @ =0x001C0019
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080442BC
	cmp r0, #1
	beq _08044310
	b _08044370
	.align 2, 0
_080442AC: .4byte 0x001C0016
_080442B0: .4byte 0x001C0017
_080442B4: .4byte 0x001C0018
_080442B8: .4byte 0x001C0019
_080442BC:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080442FC @ =0x001C001A
	bl sub_08041058
	ldr r0, _08044300 @ =0x001C001B
	bl sub_08041058
	ldr r0, _08044304 @ =0x001C001C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08044308 @ =0x001C001D
	bl sub_08041058
	ldr r0, _0804430C @ =0x001C001E
	bl sub_08041058
	movs r0, #0x6f
	bl sub_080406E4
	b _0804428E
	.align 2, 0
_080442FC: .4byte 0x001C001A
_08044300: .4byte 0x001C001B
_08044304: .4byte 0x001C001C
_08044308: .4byte 0x001C001D
_0804430C: .4byte 0x001C001E
_08044310:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08044354 @ =0x001C001F
	bl sub_08041058
	ldr r0, _08044358 @ =0x001C0020
	bl sub_08041058
	ldr r0, _0804435C @ =0x001C0021
	bl sub_08041058
	ldr r0, _08044360 @ =0x001C0022
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08044364 @ =0x001C0023
	bl sub_08041058
	ldr r0, _08044368 @ =0x001C0024
	bl sub_08041058
	ldr r0, _0804436C @ =0x001C0025
	bl sub_08041058
	b _0804428E
	.align 2, 0
_08044354: .4byte 0x001C001F
_08044358: .4byte 0x001C0020
_0804435C: .4byte 0x001C0021
_08044360: .4byte 0x001C0022
_08044364: .4byte 0x001C0023
_08044368: .4byte 0x001C0024
_0804436C: .4byte 0x001C0025
_08044370:
	ldr r0, _08044384 @ =0x001C0026
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804428E
	pop {r0}
	bx r0
	.align 2, 0
_08044384: .4byte 0x001C0026

	thumb_func_start sub_08044388
sub_08044388: @ 0x08044388
	push {lr}
	bl sub_080405B8
	ldr r0, _08044418 @ =0x0808DDA4
	bl sub_0804115C
	ldr r0, _0804441C @ =0x0808E5BC
	movs r1, #0x78
	movs r2, #0x10
	bl sub_080414B4
	ldr r2, _08044420 @ =0x0808EA7C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r2, _08044424 @ =0x0808E6FC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x40
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x6a
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804442C
	movs r0, #0x6b
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804442C
	movs r0, #0x15
	bl sub_080410A8
	ldr r0, _08044428 @ =sub_08044154
	bl sub_0804066C
	b _08044464
	.align 2, 0
_08044418: .4byte 0x0808DDA4
_0804441C: .4byte 0x0808E5BC
_08044420: .4byte 0x0808EA7C
_08044424: .4byte 0x0808E6FC
_08044428: .4byte sub_08044154
_0804442C:
	movs r0, #0x6e
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08044458
	movs r0, #0x72
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044458
	movs r0, #0x15
	bl sub_080410A8
	ldr r0, _08044454 @ =sub_0804427C
	bl sub_0804066C
	b _08044464
	.align 2, 0
_08044454: .4byte sub_0804427C
_08044458:
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _080444A0 @ =sub_080440F0
	bl sub_0804066C
_08044464:
	movs r0, #2
	bl sub_0802D7CC
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080444A0: .4byte sub_080440F0

	thumb_func_start sub_080444A4
sub_080444A4: @ 0x080444A4
	push {lr}
	bl sub_08040FE8
	movs r0, #0x28
	bl sub_08041018
	movs r0, #0xb8
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _080445D4 @ =0x002E0001
	bl sub_08041058
	ldr r0, _080445D8 @ =0x002E0002
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #7
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #8
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #9
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	ldr r0, _080445DC @ =0x002E0003
	bl sub_0804106C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #7
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #8
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #9
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080445E4
	ldr r0, _080445E0 @ =0x002E0004
	bl sub_08041058
	b _080446F6
	.align 2, 0
_080445D4: .4byte 0x002E0001
_080445D8: .4byte 0x002E0002
_080445DC: .4byte 0x002E0003
_080445E0: .4byte 0x002E0004
_080445E4:
	ldr r1, _08044630 @ =0x002E0005
	movs r0, #0x2d
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080445F4
	b _080446F6
_080445F4:
	movs r0, #0x18
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x28
	bl sub_08041018
	ldr r0, _08044634 @ =0x002E0006
	bl sub_08041058
	ldr r0, _08044638 @ =0x002E0007
	bl sub_08041058
	ldr r0, _0804463C @ =0x002E0008
	bl sub_08041058
	ldr r0, _08044640 @ =0x002E0009
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044648
	ldr r0, _08044644 @ =0x002E000A
	bl sub_08041058
	b _08044654
	.align 2, 0
_08044630: .4byte 0x002E0005
_08044634: .4byte 0x002E0006
_08044638: .4byte 0x002E0007
_0804463C: .4byte 0x002E0008
_08044640: .4byte 0x002E0009
_08044644: .4byte 0x002E000A
_08044648:
	ldr r0, _080446FC @ =0x002E000F
	bl sub_08041058
	ldr r0, _08044700 @ =0x002E0010
	bl sub_08041058
_08044654:
	ldr r0, _08044704 @ =0x002E000B
	bl sub_08041058
	ldr r0, _08044708 @ =0x002E000C
	bl sub_08041058
	ldr r0, _0804470C @ =0x002E000D
	bl sub_08041058
	ldr r0, _08044710 @ =0x002E000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #7
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #8
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #9
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0xaa
	bl sub_080406E4
	movs r0, #0x10
	bl sub_0802D7CC
_080446F6:
	pop {r0}
	bx r0
	.align 2, 0
_080446FC: .4byte 0x002E000F
_08044700: .4byte 0x002E0010
_08044704: .4byte 0x002E000B
_08044708: .4byte 0x002E000C
_0804470C: .4byte 0x002E000D
_08044710: .4byte 0x002E000E

	thumb_func_start sub_08044714
sub_08044714: @ 0x08044714
	push {lr}
	bl sub_08040FE8
	movs r0, #0x28
	bl sub_08041018
	ldr r0, _080447BC @ =0x002E0011
	bl sub_08041058
	ldr r0, _080447C0 @ =0x002E0012
	bl sub_08041058
	ldr r0, _080447C4 @ =0x002E0013
	bl sub_08041058
	ldr r0, _080447C8 @ =0x002E000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #7
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #8
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #9
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	pop {r0}
	bx r0
	.align 2, 0
_080447BC: .4byte 0x002E0011
_080447C0: .4byte 0x002E0012
_080447C4: .4byte 0x002E0013
_080447C8: .4byte 0x002E000E

	thumb_func_start sub_080447CC
sub_080447CC: @ 0x080447CC
	push {lr}
	bl sub_08040FE8
	movs r0, #0x28
	bl sub_08041018
	ldr r0, _08044814 @ =0x002E0021
	bl sub_08041058
	ldr r0, _08044818 @ =0x002E0022
	bl sub_08041058
	ldr r0, _0804481C @ =0x002E0023
	bl sub_08041058
	ldr r0, _08044820 @ =0x002E0024
	bl sub_08041058
	movs r0, #0xe
	movs r1, #0x18
	bl sub_08042814
	movs r0, #0x28
	bl sub_08041018
	ldr r0, _08044824 @ =0x002E0025
	bl sub_08041058
	ldr r0, _08044828 @ =0x002E0026
	bl sub_08041058
	movs r0, #0xad
	bl sub_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_08044814: .4byte 0x002E0021
_08044818: .4byte 0x002E0022
_0804481C: .4byte 0x002E0023
_08044820: .4byte 0x002E0024
_08044824: .4byte 0x002E0025
_08044828: .4byte 0x002E0026

	thumb_func_start sub_0804482C
sub_0804482C: @ 0x0804482C
	push {lr}
	bl sub_08040FE8
	movs r0, #0x28
	bl sub_08041018
	ldr r0, _08044854 @ =0x002E0027
	bl sub_08041058
	ldr r0, _08044858 @ =0x002E0028
	bl sub_08041058
	ldr r0, _0804485C @ =0x002E0029
	bl sub_08041058
	ldr r0, _08044860 @ =0x002E002A
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08044854: .4byte 0x002E0027
_08044858: .4byte 0x002E0028
_0804485C: .4byte 0x002E0029
_08044860: .4byte 0x002E002A

	thumb_func_start sub_08044864
sub_08044864: @ 0x08044864
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _08044A74 @ =0x0808DDCC
	bl sub_0804115C
	ldr r4, _08044A78 @ =0x0808E98C
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x48
	movs r2, #0x58
	bl sub_08041894
	movs r0, #0
	movs r1, #2
	bl sub_08041864
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #0x48
	movs r2, #0x58
	bl sub_08041894
	movs r0, #5
	movs r1, #2
	bl sub_08041864
	movs r0, #5
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x60
	movs r2, #0x58
	bl sub_08041894
	movs r0, #1
	movs r1, #2
	bl sub_08041864
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #6
	movs r1, #0
	bl sub_08041734
	movs r0, #6
	movs r1, #0x60
	movs r2, #0x58
	bl sub_08041894
	movs r0, #6
	movs r1, #2
	bl sub_08041864
	movs r0, #6
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08041894
	movs r0, #2
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #7
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #7
	movs r1, #0
	bl sub_08041734
	movs r0, #7
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08041894
	movs r0, #7
	movs r1, #3
	bl sub_08041864
	movs r0, #7
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x90
	movs r2, #0x58
	bl sub_08041894
	movs r0, #3
	movs r1, #2
	bl sub_08041864
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #8
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #8
	movs r1, #0
	bl sub_08041734
	movs r0, #8
	movs r1, #0x90
	movs r2, #0x58
	bl sub_08041894
	movs r0, #8
	movs r1, #3
	bl sub_08041864
	movs r0, #8
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xa8
	movs r2, #0x58
	bl sub_08041894
	movs r0, #4
	movs r1, #2
	bl sub_08041864
	movs r0, #4
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #9
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #9
	movs r1, #0
	bl sub_08041734
	movs r0, #9
	movs r1, #0xa8
	movs r2, #0x58
	bl sub_08041894
	movs r0, #9
	movs r1, #3
	bl sub_08041864
	movs r0, #9
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0xad
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08044A80
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08044A7C @ =sub_0804482C
	bl sub_0804066C
	b _08044ACC
	.align 2, 0
_08044A74: .4byte 0x0808DDCC
_08044A78: .4byte 0x0808E98C
_08044A7C: .4byte sub_0804482C
_08044A80:
	movs r0, #0xaa
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044AA0
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08044A9C @ =sub_080444A4
	bl sub_0804066C
	b _08044ACC
	.align 2, 0
_08044A9C: .4byte sub_080444A4
_08044AA0:
	movs r0, #0xab
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044AC0
	movs r0, #0x18
	bl sub_080410A8
	ldr r0, _08044ABC @ =sub_08044714
	bl sub_0804066C
	b _08044ACC
	.align 2, 0
_08044ABC: .4byte sub_08044714
_08044AC0:
	movs r0, #0x18
	bl sub_080410A8
	ldr r0, _08044B70 @ =sub_080447CC
	bl sub_0804066C
_08044ACC:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #6
	bl sub_080417E0
	movs r0, #6
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #7
	bl sub_080417E0
	movs r0, #7
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #8
	bl sub_080417E0
	movs r0, #8
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #9
	bl sub_080417E0
	movs r0, #9
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044B70: .4byte sub_080447CC

	thumb_func_start sub_08044B74
sub_08044B74: @ 0x08044B74
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	pop {r0}
	bx r0

	thumb_func_start sub_08044C04
sub_08044C04: @ 0x08044C04
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08044C70 @ =0x00080014
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08044C74 @ =0x00080015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
_08044C44:
	ldr r0, _08044C78 @ =0x00080016
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08044C80
	cmp r0, #1
	bne _08044C5C
	b _08044F04
_08044C5C:
	ldr r0, _08044C7C @ =0x0008002C
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08044C44
	b _08044F84
	.align 2, 0
_08044C70: .4byte 0x00080014
_08044C74: .4byte 0x00080015
_08044C78: .4byte 0x00080016
_08044C7C: .4byte 0x0008002C
_08044C80:
	ldr r0, _08044EB8 @ =0x00080017
	bl sub_08041058
	movs r0, #0x11
	bl sub_08041018
	ldr r0, _08044EBC @ =0x00080018
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x68
	movs r3, #0x40
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08044EC0 @ =0x00080019
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08044EC4 @ =0x0008001A
	bl sub_08041058
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08044EC8 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08044ECC @ =0x0008001B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x11
	bl sub_08041018
	ldr r0, _08044ED0 @ =0x0008001C
	bl sub_08041058
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08044ED4 @ =0x0008001D
	bl sub_08041058
	bl sub_08044B74
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0x11
	bl sub_08041018
	ldr r0, _08044ED8 @ =0x0008001E
	bl sub_08041058
	bl sub_08044B74
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	ldr r0, _08044EDC @ =0x0008001F
	bl sub_08041058
	bl sub_08044B74
	movs r0, #2
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	ldr r0, _08044EE0 @ =0x00080020
	bl sub_08041058
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08044EE4 @ =0x00080021
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0x11
	bl sub_08041018
	ldr r0, _08044EE8 @ =0x00080022
	bl sub_08041058
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08044EEC @ =0x00080023
	bl sub_08041058
	movs r0, #0
	bl sub_08041DE0
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08044EF0 @ =0x00080024
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x50
	movs r3, #0x20
	bl sub_08041938
	movs r0, #1
	movs r1, #0x54
	movs r2, #0x40
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x11
	bl sub_08041018
	ldr r0, _08044EF4 @ =0x00080025
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08044EF8 @ =0x00080026
	bl sub_08041058
	ldr r0, _08044EFC @ =0x00080027
	bl sub_08041058
	movs r0, #0x3a
	movs r1, #0x11
	bl sub_08042814
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x11
	bl sub_08041018
	ldr r0, _08044F00 @ =0x00080028
	bl sub_08041058
	movs r0, #0x21
	bl sub_080406BC
	b _08044F84
	.align 2, 0
_08044EB8: .4byte 0x00080017
_08044EBC: .4byte 0x00080018
_08044EC0: .4byte 0x00080019
_08044EC4: .4byte 0x0008001A
_08044EC8: .4byte 0x0000011F
_08044ECC: .4byte 0x0008001B
_08044ED0: .4byte 0x0008001C
_08044ED4: .4byte 0x0008001D
_08044ED8: .4byte 0x0008001E
_08044EDC: .4byte 0x0008001F
_08044EE0: .4byte 0x00080020
_08044EE4: .4byte 0x00080021
_08044EE8: .4byte 0x00080022
_08044EEC: .4byte 0x00080023
_08044EF0: .4byte 0x00080024
_08044EF4: .4byte 0x00080025
_08044EF8: .4byte 0x00080026
_08044EFC: .4byte 0x00080027
_08044F00: .4byte 0x00080028
_08044F04:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08044F74 @ =0x00080029
	bl sub_08041058
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08044F78 @ =0x00000123
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08044F7C @ =0x0008002A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08044F80 @ =0x0008002B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	b _08044C44
	.align 2, 0
_08044F74: .4byte 0x00080029
_08044F78: .4byte 0x00000123
_08044F7C: .4byte 0x0008002A
_08044F80: .4byte 0x0008002B
_08044F84:
	movs r0, #0x1f
	bl sub_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08044F90
sub_08044F90: @ 0x08044F90
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x26
	bl sub_08041018
	movs r0, #0xe0
	lsls r0, r0, #0xb
	bl sub_08041058
	ldr r0, _08044FE8 @ =0x00070001
	bl sub_08041058
	ldr r0, _08044FEC @ =0x00070002
	bl sub_08041058
	ldr r0, _08044FF0 @ =0x00070003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08044FF8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08044FF4 @ =0x00070004
	bl sub_08041058
	b _08045196
	.align 2, 0
_08044FE8: .4byte 0x00070001
_08044FEC: .4byte 0x00070002
_08044FF0: .4byte 0x00070003
_08044FF4: .4byte 0x00070004
_08044FF8:
	ldr r1, _08045120 @ =0x00070005
	movs r0, #6
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045008
	b _08045196
_08045008:
	movs r0, #0x11
	bl sub_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08045124 @ =0x00070006
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045128 @ =0x00070007
	bl sub_08041058
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804512C @ =0x00000123
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045130 @ =0x00070008
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045134 @ =0x00070009
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045138 @ =0x0007000A
	bl sub_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x2c
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804513C @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08045140 @ =0x0007000B
	bl sub_08041058
	ldr r0, _08045144 @ =0x0007000C
	bl sub_08041058
	ldr r0, _08045148 @ =0x0007000D
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045154
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804514C @ =0x0007000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045150 @ =0x0007000F
	bl sub_08041058
	b _08045178
	.align 2, 0
_08045120: .4byte 0x00070005
_08045124: .4byte 0x00070006
_08045128: .4byte 0x00070007
_0804512C: .4byte 0x00000123
_08045130: .4byte 0x00070008
_08045134: .4byte 0x00070009
_08045138: .4byte 0x0007000A
_0804513C: .4byte 0x00000129
_08045140: .4byte 0x0007000B
_08045144: .4byte 0x0007000C
_08045148: .4byte 0x0007000D
_0804514C: .4byte 0x0007000E
_08045150: .4byte 0x0007000F
_08045154:
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804519C @ =0x00070013
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080451A0 @ =0x00070014
	bl sub_08041058
_08045178:
	ldr r0, _080451A4 @ =0x00070010
	bl sub_08041058
	ldr r0, _080451A8 @ =0x00070011
	bl sub_08041058
	ldr r0, _080451AC @ =0x00070012
	bl sub_08041058
	movs r0, #0x1a
	bl sub_080406E4
	movs r0, #0x1f
	bl sub_0802D7CC
_08045196:
	pop {r0}
	bx r0
	.align 2, 0
_0804519C: .4byte 0x00070013
_080451A0: .4byte 0x00070014
_080451A4: .4byte 0x00070010
_080451A8: .4byte 0x00070011
_080451AC: .4byte 0x00070012

	thumb_func_start sub_080451B0
sub_080451B0: @ 0x080451B0
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _080451F0 @ =0x00070015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080451F4 @ =0x00070016
	bl sub_08041058
	ldr r0, _080451F8 @ =0x00070017
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080451F0: .4byte 0x00070015
_080451F4: .4byte 0x00070016
_080451F8: .4byte 0x00070017

	thumb_func_start sub_080451FC
sub_080451FC: @ 0x080451FC
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08045284 @ =0x00070024
	bl sub_08041058
	ldr r0, _08045288 @ =0x00070025
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804528C @ =0x00070026
	bl sub_08041058
	ldr r0, _08045290 @ =0x00070027
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080452A4
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045294 @ =0x00070028
	bl sub_08041058
	ldr r0, _08045298 @ =0x00070029
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804529C @ =0x0007002A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080452A0 @ =0x0007002B
	bl sub_08041058
	b _080452D4
	.align 2, 0
_08045284: .4byte 0x00070024
_08045288: .4byte 0x00070025
_0804528C: .4byte 0x00070026
_08045290: .4byte 0x00070027
_08045294: .4byte 0x00070028
_08045298: .4byte 0x00070029
_0804529C: .4byte 0x0007002A
_080452A0: .4byte 0x0007002B
_080452A4:
	ldr r0, _080452F4 @ =0x0007002D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080452F8 @ =0x0007002E
	bl sub_08041058
	ldr r0, _080452FC @ =0x0007002F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045300 @ =0x00070030
	bl sub_08041058
_080452D4:
	movs r0, #0x29
	movs r1, #0x11
	bl sub_08042814
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _08045304 @ =0x0007002C
	bl sub_08041058
	movs r0, #0x1d
	bl sub_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_080452F4: .4byte 0x0007002D
_080452F8: .4byte 0x0007002E
_080452FC: .4byte 0x0007002F
_08045300: .4byte 0x00070030
_08045304: .4byte 0x0007002C

	thumb_func_start sub_08045308
sub_08045308: @ 0x08045308
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x26
	bl sub_08041018
	ldr r0, _0804534C @ =0x00070031
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045350 @ =0x00070032
	bl sub_08041058
	ldr r0, _08045354 @ =0x00070033
	bl sub_08041058
	ldr r0, _08045358 @ =0x00070034
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804534C: .4byte 0x00070031
_08045350: .4byte 0x00070032
_08045354: .4byte 0x00070033
_08045358: .4byte 0x00070034

	thumb_func_start sub_0804535C
sub_0804535C: @ 0x0804535C
	push {lr}
	sub sp, #8
	bl sub_080405B8
	ldr r0, _080453F8 @ =0x0808DDF4
	bl sub_0804115C
	ldr r2, _080453FC @ =0x0808E96C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x48
	bl sub_08041894
	ldr r0, _08045400 @ =0x0808DC00
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	ldr r2, _08045404 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _08045408 @ =0x0808E83C
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0x1e
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045410
	movs r0, #0x21
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045410
	movs r0, #0x11
	bl sub_080410A8
	ldr r0, _0804540C @ =sub_08044C04
	bl sub_0804066C
	b _08045478
	.align 2, 0
_080453F8: .4byte 0x0808DDF4
_080453FC: .4byte 0x0808E96C
_08045400: .4byte 0x0808DC00
_08045404: .4byte 0x0808E6BC
_08045408: .4byte 0x0808E83C
_0804540C: .4byte sub_08044C04
_08045410:
	movs r0, #0x1d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045430
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _0804542C @ =sub_08045308
	bl sub_0804066C
	b _08045478
	.align 2, 0
_0804542C: .4byte sub_08045308
_08045430:
	movs r0, #0x1a
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804546C
	movs r0, #0x11
	bl sub_080410A8
	movs r0, #0x1b
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045460
	ldr r0, _0804545C @ =sub_080451FC
	bl sub_0804066C
	b _08045478
	.align 2, 0
_0804545C: .4byte sub_080451FC
_08045460:
	ldr r0, _08045468 @ =sub_080451B0
	bl sub_0804066C
	b _08045478
	.align 2, 0
_08045468: .4byte sub_080451B0
_0804546C:
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _080454C0 @ =sub_08044F90
	bl sub_0804066C
_08045478:
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_080454C0: .4byte sub_08044F90

	thumb_func_start sub_080454C4
sub_080454C4: @ 0x080454C4
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	pop {r0}
	bx r0

	thumb_func_start sub_08045548
sub_08045548: @ 0x08045548
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x60
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	mov r1, sp
	ldr r0, _0804557C @ =0x0808DC08
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
_0804557C: .4byte 0x0808DC08

	thumb_func_start sub_08045580
sub_08045580: @ 0x08045580
	push {r4, r5, lr}
	bl sub_080407FC
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x60
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	movs r5, #0x96
	lsls r5, r5, #1
	adds r0, r5, #0
	bl sub_080410E0
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	movs r0, #0x90
	lsls r0, r0, #0xd
	bl sub_08041058
	ldr r0, _0804562C @ =0x00120001
	bl sub_08041058
	ldr r0, _08045630 @ =0x00120002
	bl sub_08041058
	ldr r0, _08045634 @ =0x00120003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045640
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08045638 @ =0x00120004
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	ldr r0, _0804563C @ =0x00120005
	bl sub_08041058
	b _08045860
	.align 2, 0
_0804562C: .4byte 0x00120001
_08045630: .4byte 0x00120002
_08045634: .4byte 0x00120003
_08045638: .4byte 0x00120004
_0804563C: .4byte 0x00120005
_08045640:
	ldr r1, _080457DC @ =0x00120006
	movs r0, #0x11
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045650
	b _08045860
_08045650:
	movs r0, #0x13
	bl sub_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	adds r0, r5, #0
	bl sub_080410E0
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	ldr r4, _080457E0 @ =0x00120007
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080457E4 @ =0x00120008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080457E8 @ =0x00120009
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x60
	movs r3, #0x18
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080457EC @ =0x0012000A
	bl sub_08041058
	movs r0, #5
	bl sub_08041018
	ldr r0, _080457F0 @ =0x0012000B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080457F4 @ =0x0012000C
	bl sub_08041058
	movs r0, #5
	bl sub_08041018
	ldr r0, _080457F8 @ =0x0012000D
	bl sub_08041058
	ldr r2, _080457FC @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x60
	movs r2, #0x30
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _08045800 @ =0x0012000E
	bl sub_08041058
	movs r0, #5
	bl sub_08041018
	ldr r0, _08045804 @ =0x0012000F
	bl sub_08041058
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _08045808 @ =0x00120010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804580C @ =0x00120011
	bl sub_08041058
	ldr r0, _08045810 @ =0x00120012
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045818
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	adds r0, r5, #0
	bl sub_080410E0
	ldr r0, _08045814 @ =0x00120013
	bl sub_08041058
	b _0804583C
	.align 2, 0
_080457DC: .4byte 0x00120006
_080457E0: .4byte 0x00120007
_080457E4: .4byte 0x00120008
_080457E8: .4byte 0x00120009
_080457EC: .4byte 0x0012000A
_080457F0: .4byte 0x0012000B
_080457F4: .4byte 0x0012000C
_080457F8: .4byte 0x0012000D
_080457FC: .4byte 0x0808E6BC
_08045800: .4byte 0x0012000E
_08045804: .4byte 0x0012000F
_08045808: .4byte 0x00120010
_0804580C: .4byte 0x00120011
_08045810: .4byte 0x00120012
_08045814: .4byte 0x00120013
_08045818:
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	adds r0, r5, #0
	bl sub_080410E0
	ldr r0, _08045868 @ =0x00120013
	bl sub_08041058
	ldr r0, _0804586C @ =0x00120016
	bl sub_08041058
_0804583C:
	movs r0, #5
	bl sub_08041018
	ldr r0, _08045870 @ =0x00120014
	bl sub_08041058
	ldr r0, _08045874 @ =0x00120015
	bl sub_08041058
	movs r0, #0x46
	bl sub_080406E4
	movs r0, #0x27
	bl sub_0802D7CC
	movs r0, #9
	bl sub_0802D7CC
_08045860:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045868: .4byte 0x00120013
_0804586C: .4byte 0x00120016
_08045870: .4byte 0x00120014
_08045874: .4byte 0x00120015

	thumb_func_start sub_08045878
sub_08045878: @ 0x08045878
	push {lr}
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x60
	bl sub_08041894
	movs r0, #0x47
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045910
	bl sub_08045548
	ldr r0, _080458F8 @ =0x0808E5DC
	movs r1, #0x78
	movs r2, #0x20
	bl sub_080414B4
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _080458FC @ =0x00120017
	bl sub_08041058
	ldr r0, _08045900 @ =0x00120018
	bl sub_08041058
	movs r0, #5
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08045904 @ =0x00120019
	bl sub_08041058
	ldr r0, _08045908 @ =0x0012001A
	bl sub_08041058
	movs r0, #0x15
	movs r1, #0x13
	bl sub_08042814
	movs r0, #5
	bl sub_08041018
	ldr r0, _0804590C @ =0x0012001B
	bl sub_08041058
	movs r0, #0x49
	bl sub_080406BC
	b _08045954
	.align 2, 0
_080458F8: .4byte 0x0808E5DC
_080458FC: .4byte 0x00120017
_08045900: .4byte 0x00120018
_08045904: .4byte 0x00120019
_08045908: .4byte 0x0012001A
_0804590C: .4byte 0x0012001B
_08045910:
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _08045958 @ =0x0012001C
	bl sub_08041058
	movs r0, #5
	bl sub_08041018
	ldr r0, _0804595C @ =0x0012001E
	bl sub_08041058
	ldr r0, _08045960 @ =0x0012001F
	bl sub_08041058
	ldr r0, _08045964 @ =0x00120020
	bl sub_08041058
	movs r0, #0x46
	bl sub_080406FC
	movs r0, #0x47
	bl sub_080406FC
	movs r0, #0x48
	bl sub_080406FC
	movs r0, #0x49
	bl sub_080406D0
_08045954:
	pop {r0}
	bx r0
	.align 2, 0
_08045958: .4byte 0x0012001C
_0804595C: .4byte 0x0012001E
_08045960: .4byte 0x0012001F
_08045964: .4byte 0x00120020

	thumb_func_start sub_08045968
sub_08045968: @ 0x08045968
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #5
	bl sub_08041018
	ldr r0, _08045990 @ =0x00120021
	bl sub_08041058
	ldr r0, _08045994 @ =0x00120022
	bl sub_08041058
	ldr r0, _08045998 @ =0x00120023
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08045990: .4byte 0x00120021
_08045994: .4byte 0x00120022
_08045998: .4byte 0x00120023

	thumb_func_start sub_0804599C
sub_0804599C: @ 0x0804599C
	push {lr}
	sub sp, #8
	bl sub_080405B8
	ldr r0, _08045A30 @ =0x0808DE1C
	bl sub_0804115C
	ldr r2, _08045A34 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl sub_08041894
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	ldr r2, _08045A38 @ =0x0808E76C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x88
	movs r2, #0x54
	bl sub_08041894
	movs r0, #1
	movs r1, #3
	bl sub_08041864
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08045A3C @ =0x0808DC14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #1
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	movs r0, #0x49
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045A44
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08045A40 @ =sub_08045968
	bl sub_0804066C
	b _08045A96
	.align 2, 0
_08045A30: .4byte 0x0808DE1C
_08045A34: .4byte 0x0808EA6C
_08045A38: .4byte 0x0808E76C
_08045A3C: .4byte 0x0808DC14
_08045A40: .4byte sub_08045968
_08045A44:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045A74
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08045A70 @ =sub_08045580
	bl sub_0804066C
	movs r0, #0x46
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045A96
	movs r0, #3
	bl sub_08040F18
	b _08045A96
	.align 2, 0
_08045A70: .4byte sub_08045580
_08045A74:
	movs r0, #0x13
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045A8C
	movs r0, #0x47
	bl sub_080406E4
_08045A8C:
	ldr r0, _08045AD4 @ =sub_08045878
	bl sub_0804066C
	bl sub_08040F0C
_08045A96:
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
	movs r0, #1
	bl sub_08041DB8
	bl sub_08041560
	bl sub_0804062C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08045AD4: .4byte sub_08045878

	thumb_func_start sub_08045AD8
sub_08045AD8: @ 0x08045AD8
	push {lr}
	bl sub_08040FE8
	movs r0, #0x16
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	movs r0, #0xc8
	lsls r0, r0, #0xd
	bl sub_08041058
	ldr r0, _08045B1C @ =0x00190001
	bl sub_08041058
	ldr r0, _08045B20 @ =0x00190002
	bl sub_08041058
	ldr r0, _08045B24 @ =0x00190003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045B2C
	ldr r0, _08045B28 @ =0x00190004
	bl sub_08041058
	b _08045BE2
	.align 2, 0
_08045B1C: .4byte 0x00190001
_08045B20: .4byte 0x00190002
_08045B24: .4byte 0x00190003
_08045B28: .4byte 0x00190004
_08045B2C:
	ldr r1, _08045B98 @ =0x00190005
	movs r0, #0x18
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045BE2
	movs r0, #0x14
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x16
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045B9C @ =0x00190006
	bl sub_08041058
	ldr r0, _08045BA0 @ =0x00190007
	bl sub_08041058
	ldr r0, _08045BA4 @ =0x00190008
	bl sub_08041058
	ldr r0, _08045BA8 @ =0x00190009
	bl sub_08041058
	ldr r0, _08045BAC @ =0x0019000A
	bl sub_08041058
	ldr r0, _08045BB0 @ =0x0019000B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045BB8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045BB4 @ =0x0019000C
	bl sub_08041058
	b _08045BCA
	.align 2, 0
_08045B98: .4byte 0x00190005
_08045B9C: .4byte 0x00190006
_08045BA0: .4byte 0x00190007
_08045BA4: .4byte 0x00190008
_08045BA8: .4byte 0x00190009
_08045BAC: .4byte 0x0019000A
_08045BB0: .4byte 0x0019000B
_08045BB4: .4byte 0x0019000C
_08045BB8:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045BE8 @ =0x0019000F
	bl sub_08041058
_08045BCA:
	ldr r0, _08045BEC @ =0x0019000D
	bl sub_08041058
	ldr r0, _08045BF0 @ =0x0019000E
	bl sub_08041058
	movs r0, #0x62
	bl sub_080406E4
	movs r0, #0x2b
	bl sub_0802D7CC
_08045BE2:
	pop {r0}
	bx r0
	.align 2, 0
_08045BE8: .4byte 0x0019000F
_08045BEC: .4byte 0x0019000D
_08045BF0: .4byte 0x0019000E

	thumb_func_start sub_08045BF4
sub_08045BF4: @ 0x08045BF4
	push {lr}
	bl sub_08040FE8
	movs r0, #0x16
	bl sub_08041018
	movs r0, #0x63
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045CA4
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045C80 @ =0x00190010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045C84 @ =0x00190011
	bl sub_08041058
	ldr r0, _08045C88 @ =0x00190012
	bl sub_08041058
	movs r0, #0x1d
	movs r1, #0x14
	bl sub_08042814
	movs r0, #0x16
	bl sub_08041018
	ldr r0, _08045C8C @ =0x00190013
	bl sub_08041058
	ldr r0, _08045C90 @ =0x00190014
	bl sub_08041058
	ldr r0, _08045C94 @ =0x00190015
	bl sub_08041058
	ldr r0, _08045C98 @ =0x00190016
	bl sub_08041058
	ldr r0, _08045C9C @ =0x00190017
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045CA0 @ =0x00190018
	bl sub_08041058
	movs r0, #0x65
	bl sub_080406BC
	b _08045CE0
	.align 2, 0
_08045C80: .4byte 0x00190010
_08045C84: .4byte 0x00190011
_08045C88: .4byte 0x00190012
_08045C8C: .4byte 0x00190013
_08045C90: .4byte 0x00190014
_08045C94: .4byte 0x00190015
_08045C98: .4byte 0x00190016
_08045C9C: .4byte 0x00190017
_08045CA0: .4byte 0x00190018
_08045CA4:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045CE4 @ =0x00190019
	bl sub_08041058
	ldr r0, _08045CE8 @ =0x0019001A
	bl sub_08041058
	ldr r0, _08045CEC @ =0x0019001B
	bl sub_08041058
	ldr r0, _08045CF0 @ =0x0019001C
	bl sub_08041058
	movs r0, #0x62
	bl sub_080406FC
	movs r0, #0x63
	bl sub_080406FC
	movs r0, #0x64
	bl sub_080406FC
	movs r0, #0x65
	bl sub_080406D0
_08045CE0:
	pop {r0}
	bx r0
	.align 2, 0
_08045CE4: .4byte 0x00190019
_08045CE8: .4byte 0x0019001A
_08045CEC: .4byte 0x0019001B
_08045CF0: .4byte 0x0019001C

	thumb_func_start sub_08045CF4
sub_08045CF4: @ 0x08045CF4
	push {lr}
	bl sub_08040FE8
	movs r0, #0x16
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045D40 @ =0x0019001D
	bl sub_08041058
	ldr r0, _08045D44 @ =0x0019001E
	bl sub_08041058
	ldr r0, _08045D48 @ =0x0019001F
	bl sub_08041058
	ldr r0, _08045D4C @ =0x00190020
	bl sub_08041058
	ldr r0, _08045D50 @ =0x00190021
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_080418C8
	ldr r0, _08045D54 @ =0x00190022
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08045D40: .4byte 0x0019001D
_08045D44: .4byte 0x0019001E
_08045D48: .4byte 0x0019001F
_08045D4C: .4byte 0x00190020
_08045D50: .4byte 0x00190021
_08045D54: .4byte 0x00190022

	thumb_func_start sub_08045D58
sub_08045D58: @ 0x08045D58
	push {lr}
	bl sub_080405B8
	ldr r0, _08045DA0 @ =0x0808DE44
	bl sub_0804115C
	ldr r2, _08045DA4 @ =0x0808E88C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	movs r0, #0x14
	bl sub_080410A8
	movs r0, #0x65
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045DAC
	ldr r0, _08045DA8 @ =sub_08045CF4
	bl sub_0804066C
	b _08045DF0
	.align 2, 0
_08045DA0: .4byte 0x0808DE44
_08045DA4: .4byte 0x0808E88C
_08045DA8: .4byte sub_08045CF4
_08045DAC:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045DD4
	ldr r0, _08045DD0 @ =sub_08045AD8
	bl sub_0804066C
	movs r0, #0x62
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045DF0
	movs r0, #9
	bl sub_08040F18
	b _08045DF0
	.align 2, 0
_08045DD0: .4byte sub_08045AD8
_08045DD4:
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08045DE6
	movs r0, #0x63
	bl sub_080406E4
_08045DE6:
	ldr r0, _08045E14 @ =sub_08045BF4
	bl sub_0804066C
	bl sub_08040F0C
_08045DF0:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08045E14: .4byte sub_08045BF4

	thumb_func_start sub_08045E18
sub_08045E18: @ 0x08045E18
	push {lr}
	bl sub_080405B8
	ldr r0, _08045E54 @ =0x0808DE6C
	bl sub_0804115C
	bl sub_08042554
	movs r0, #0x19
	bl sub_080410A8
	bl sub_080407FC
	bl sub_080422DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08040F54
	bl sub_080410D0
	bl sub_08040820
	bl sub_08042588
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08045E54: .4byte 0x0808DE6C

	thumb_func_start sub_08045E58
sub_08045E58: @ 0x08045E58
	push {lr}
	movs r0, #0xf
	bl sub_08041058
	movs r0, #0x10
	bl sub_08041058
	movs r0, #0x11
	bl sub_08041058
	pop {r0}
	bx r0

	thumb_func_start sub_08045E70
sub_08045E70: @ 0x08045E70
	push {lr}
	ldr r0, _08045E9C @ =0x00010037
	bl sub_08041058
	ldr r0, _08045EA0 @ =0x00010038
	bl sub_08041058
_08045E7E:
	bl sub_08041048
	ldr r0, _08045EA4 @ =0x00010027
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08045EA8
	cmp r0, #1
	beq _08045F0C
	b _08045F28
	.align 2, 0
_08045E9C: .4byte 0x00010037
_08045EA0: .4byte 0x00010038
_08045EA4: .4byte 0x00010027
_08045EA8:
	movs r0, #0x21
	bl sub_08041018
	ldr r0, _08045EF8 @ =0x00010039
	bl sub_08041058
	ldr r0, _08045EFC @ =0x0001003A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08045F00 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x5a
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _08045F04 @ =0x0001003B
	bl sub_08041058
	ldr r0, _08045F08 @ =0x0001003C
	bl sub_08041058
	movs r0, #3
	bl sub_080406E4
	b _08045E7E
	.align 2, 0
_08045EF8: .4byte 0x00010039
_08045EFC: .4byte 0x0001003A
_08045F00: .4byte 0x00000129
_08045F04: .4byte 0x0001003B
_08045F08: .4byte 0x0001003C
_08045F0C:
	movs r0, #0x21
	bl sub_08041018
	ldr r0, _08045F20 @ =0x0001003D
	bl sub_08041058
	ldr r0, _08045F24 @ =0x0001003E
	bl sub_08041058
	b _08045E7E
	.align 2, 0
_08045F20: .4byte 0x0001003D
_08045F24: .4byte 0x0001003E
_08045F28:
	ldr r0, _08045F40 @ =0x0001002F
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08045E7E
	pop {r0}
	bx r0
	.align 2, 0
_08045F40: .4byte 0x0001002F

	thumb_func_start sub_08045F44
sub_08045F44: @ 0x08045F44
	push {lr}
	ldr r0, _08045FC4 @ =0x000B0026
	bl sub_08041058
	ldr r0, _08045FC8 @ =0x000B0027
	bl sub_08041058
	ldr r0, _08045FCC @ =0x000B0028
	bl sub_08041058
_08045F58:
	bl sub_08041048
	ldr r0, _08045FD0 @ =0x000B0029
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08045FE4
	cmp r0, #1
	beq _08046050
	movs r0, #0x21
	bl sub_08041018
	ldr r0, _08045FD4 @ =0x000B0030
	bl sub_08041058
	ldr r0, _08045FD8 @ =0x000B002B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045F58
	ldr r0, _08045FDC @ =0x000B002C
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_08040FE8
	ldr r0, _08045FE0 @ =0x000B0031
	b _080460A0
	.align 2, 0
_08045FC4: .4byte 0x000B0026
_08045FC8: .4byte 0x000B0027
_08045FCC: .4byte 0x000B0028
_08045FD0: .4byte 0x000B0029
_08045FD4: .4byte 0x000B0030
_08045FD8: .4byte 0x000B002B
_08045FDC: .4byte 0x000B002C
_08045FE0: .4byte 0x000B0031
_08045FE4:
	movs r0, #0x21
	bl sub_08041018
	ldr r0, _08046040 @ =0x000B002A
	bl sub_08041058
	ldr r0, _08046044 @ =0x000B002B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045F58
	ldr r0, _08046048 @ =0x000B002C
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_08040FE8
	ldr r0, _0804604C @ =0x000B002D
	bl sub_08041058
	movs r0, #0x2a
	bl sub_080406E4
	movs r0, #0x2b
	b _080460A6
	.align 2, 0
_08046040: .4byte 0x000B002A
_08046044: .4byte 0x000B002B
_08046048: .4byte 0x000B002C
_0804604C: .4byte 0x000B002D
_08046050:
	movs r0, #0x21
	bl sub_08041018
	ldr r0, _080460B0 @ =0x000B002E
	bl sub_08041058
	ldr r0, _080460B4 @ =0x000B002B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804606E
	b _08045F58
_0804606E:
	ldr r0, _080460B8 @ =0x000B002C
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_08040FE8
	ldr r0, _080460BC @ =0x000B002F
_080460A0:
	bl sub_08041058
	movs r0, #0x2a
_080460A6:
	bl sub_080406E4
	pop {r0}
	bx r0
	.align 2, 0
_080460B0: .4byte 0x000B002E
_080460B4: .4byte 0x000B002B
_080460B8: .4byte 0x000B002C
_080460BC: .4byte 0x000B002F

	thumb_func_start sub_080460C0
sub_080460C0: @ 0x080460C0
	push {lr}
	ldr r0, _080460E8 @ =0x00170019
	bl sub_08041058
	ldr r0, _080460EC @ =0x0017001A
	bl sub_08041058
_080460CE:
	ldr r0, _080460F0 @ =0x0017001B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080460F4
	cmp r0, #1
	beq _08046120
	b _08046164
	.align 2, 0
_080460E8: .4byte 0x00170019
_080460EC: .4byte 0x0017001A
_080460F0: .4byte 0x0017001B
_080460F4:
	ldr r0, _08046110 @ =0x0017001C
	bl sub_08041058
	ldr r0, _08046114 @ =0x0017001D
	bl sub_08041058
	ldr r0, _08046118 @ =0x0017001E
	bl sub_08041058
	ldr r0, _0804611C @ =0x0017001F
	bl sub_08041058
	b _080460CE
	.align 2, 0
_08046110: .4byte 0x0017001C
_08046114: .4byte 0x0017001D
_08046118: .4byte 0x0017001E
_0804611C: .4byte 0x0017001F
_08046120:
	ldr r0, _0804614C @ =0x00170020
	bl sub_08041058
	ldr r0, _08046150 @ =0x00170021
	bl sub_08041058
	ldr r0, _08046154 @ =0x00170022
	bl sub_08041058
	ldr r0, _08046158 @ =0x00170023
	bl sub_08041058
	ldr r0, _0804615C @ =0x00170024
	bl sub_08041058
	ldr r0, _08046160 @ =0x00170025
	bl sub_08041058
	movs r0, #0x5a
	bl sub_080406E4
	b _080460CE
	.align 2, 0
_0804614C: .4byte 0x00170020
_08046150: .4byte 0x00170021
_08046154: .4byte 0x00170022
_08046158: .4byte 0x00170023
_0804615C: .4byte 0x00170024
_08046160: .4byte 0x00170025
_08046164:
	ldr r0, _08046178 @ =0x00170026
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080460CE
	pop {r0}
	bx r0
	.align 2, 0
_08046178: .4byte 0x00170026

	thumb_func_start sub_0804617C
sub_0804617C: @ 0x0804617C
	push {lr}
	ldr r0, _080461A4 @ =0x001D0011
	bl sub_08041058
_08046184:
	ldr r0, _080461A8 @ =0x001D0012
	bl sub_08041058
	ldr r0, _080461AC @ =0x001D0013
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080461B0
	cmp r0, #1
	beq _08046244
	b _0804628C
	.align 2, 0
_080461A4: .4byte 0x001D0011
_080461A8: .4byte 0x001D0012
_080461AC: .4byte 0x001D0013
_080461B0:
	ldr r0, _08046230 @ =0x001D0014
	bl sub_08041058
	ldr r0, _08046234 @ =0x001D0015
	bl sub_08041058
	movs r0, #0x74
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046262
	ldr r0, _08046238 @ =0x001D0016
	bl sub_08041058
	bl sub_08041008
	ldr r2, _0804623C @ =0x0808E6CC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x48
	bl sub_08041894
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_08040FE8
	ldr r0, _08046240 @ =0x001D0018
	bl sub_08041058
	bl sub_08041008
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_08040FE8
	movs r0, #0x74
	bl sub_080406E4
	movs r0, #0x21
	bl sub_08041018
	b _08046184
	.align 2, 0
_08046230: .4byte 0x001D0014
_08046234: .4byte 0x001D0015
_08046238: .4byte 0x001D0016
_0804623C: .4byte 0x0808E6CC
_08046240: .4byte 0x001D0018
_08046244:
	ldr r0, _08046270 @ =0x001D0019
	bl sub_08041058
	ldr r0, _08046274 @ =0x001D001A
	bl sub_08041058
	ldr r0, _08046278 @ =0x001D001B
	bl sub_08041058
	ldr r0, _0804627C @ =0x001D001C
	bl sub_08041058
	ldr r0, _08046280 @ =0x001D001D
	bl sub_08041058
_08046262:
	ldr r0, _08046284 @ =0x001D001E
	bl sub_08041058
	ldr r0, _08046288 @ =0x001D001F
	bl sub_08041058
	b _08046184
	.align 2, 0
_08046270: .4byte 0x001D0019
_08046274: .4byte 0x001D001A
_08046278: .4byte 0x001D001B
_0804627C: .4byte 0x001D001C
_08046280: .4byte 0x001D001D
_08046284: .4byte 0x001D001E
_08046288: .4byte 0x001D001F
_0804628C:
	ldr r0, _080462A4 @ =0x001D0020
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804629E
	b _08046184
_0804629E:
	pop {r0}
	bx r0
	.align 2, 0
_080462A4: .4byte 0x001D0020

	thumb_func_start sub_080462A8
sub_080462A8: @ 0x080462A8
	push {lr}
	sub sp, #8
	bl sub_080405B8
	ldr r0, _08046370 @ =0x0808DE94
	bl sub_0804115C
	ldr r2, _08046374 @ =0x0808E92C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08046378 @ =0x0808DC1C
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	ldr r2, _0804637C @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x30
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _08046380 @ =0x0808E6EC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x78
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x21
	bl sub_08041018
	movs r0, #0x29
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08046388
	movs r0, #0x2a
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046388
	movs r0, #0x11
	bl sub_080410A8
	ldr r0, _08046384 @ =sub_08045F44
	bl sub_0804066C
	b _08046418
	.align 2, 0
_08046370: .4byte 0x0808DE94
_08046374: .4byte 0x0808E92C
_08046378: .4byte 0x0808DC1C
_0804637C: .4byte 0x0808E6BC
_08046380: .4byte 0x0808E6EC
_08046384: .4byte sub_08045F44
_08046388:
	movs r0, #0x59
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080463B4
	movs r0, #0x5d
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080463B4
	movs r0, #0x14
	bl sub_080410A8
	ldr r0, _080463B0 @ =sub_080460C0
	bl sub_0804066C
	b _08046418
	.align 2, 0
_080463B0: .4byte sub_080460C0
_080463B4:
	movs r0, #0x73
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080463E0
	movs r0, #0x74
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080463E0
	movs r0, #0x15
	bl sub_080410A8
	ldr r0, _080463DC @ =sub_0804617C
	bl sub_0804066C
	b _08046418
	.align 2, 0
_080463DC: .4byte sub_0804617C
_080463E0:
	movs r0, #0
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804640C
	movs r0, #3
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804640C
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _08046408 @ =sub_08045E70
	bl sub_0804066C
	b _08046418
	.align 2, 0
_08046408: .4byte sub_08045E70
_0804640C:
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08046464 @ =sub_08045E58
	bl sub_0804066C
_08046418:
	movs r0, #0x1b
	bl sub_0802D7CC
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
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08046464: .4byte sub_08045E58

	thumb_func_start sub_08046468
sub_08046468: @ 0x08046468
	push {r4, lr}
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x28
	bl sub_08040690
	ldr r4, _080464F8 @ =0x0000025D
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x1a
	bl sub_08041018
	movs r0, #0xa8
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _080464FC @ =0x002A0001
	bl sub_08041058
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _08046500 @ =0x002A0002
	bl sub_08041058
	ldr r0, _08046504 @ =0x002A0003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804650C
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _08046508 @ =0x002A0004
	bl sub_08041058
	b _080465A4
	.align 2, 0
_080464F8: .4byte 0x0000025D
_080464FC: .4byte 0x002A0001
_08046500: .4byte 0x002A0002
_08046504: .4byte 0x002A0003
_08046508: .4byte 0x002A0004
_0804650C:
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _080465AC @ =0x002A0005
	bl sub_08041058
	ldr r1, _080465B0 @ =0x002A0006
	movs r0, #0x29
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080465A4
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x1a
	bl sub_08041018
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _080465B4 @ =0x002A0007
	bl sub_08041058
	ldr r0, _080465B8 @ =0x002A0008
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08046560
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _080465BC @ =0x002A000E
	bl sub_08041058
_08046560:
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _080465C0 @ =0x002A0009
	bl sub_08041058
	ldr r0, _080465C4 @ =0x002A000A
	bl sub_08041058
	ldr r0, _080465C8 @ =0x002A000B
	bl sub_08041058
	ldr r0, _080465CC @ =0x002A000C
	bl sub_08041058
	ldr r1, _080465D0 @ =0x00460024
	movs r0, #0x69
	bl sub_080427E0
	movs r0, #0x1a
	bl sub_08041018
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _080465D4 @ =0x002A000D
	bl sub_08041058
	movs r0, #0x9c
	bl sub_080406E4
	movs r0, #0x33
	bl sub_0802D7CC
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
	bl sub_080418C8
	movs r0, #0x9d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804666C
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x1a
	bl sub_08041018
	ldr r0, _0804664C @ =0x0000025D
	bl sub_080410E0
	ldr r0, _08046650 @ =0x002A000F
	bl sub_08041058
	ldr r0, _08046654 @ =0x002A0010
	bl sub_08041058
	ldr r0, _08046658 @ =0x002A0011
	bl sub_08041058
	ldr r0, _0804665C @ =0x002A0012
	bl sub_08041058
	ldr r0, _08046660 @ =0x002A0013
	bl sub_08041058
	ldr r0, _08046664 @ =0x002A0014
	bl sub_08041058
	ldr r0, _08046668 @ =0x002A0015
	bl sub_08041058
	movs r0, #0x69
	bl sub_08040B84
	movs r0, #0x9e
	bl sub_080406BC
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
	bl sub_08040FE8
	movs r0, #0x1a
	bl sub_08041018
	ldr r0, _080466BC @ =0x0000025D
	bl sub_080410E0
	ldr r0, _080466C0 @ =0x002A0016
	bl sub_08041058
	ldr r0, _080466C4 @ =0x002A0017
	bl sub_08041058
	ldr r0, _080466C8 @ =0x002A0018
	bl sub_08041058
	ldr r0, _080466CC @ =0x002A0019
	bl sub_08041058
	ldr r0, _080466D0 @ =0x002A001A
	bl sub_08041058
	ldr r0, _080466D4 @ =0x002A001B
	bl sub_08041058
	ldr r0, _080466D8 @ =0x002A001C
	bl sub_08041058
	movs r0, #0x9c
	bl sub_080406FC
	movs r0, #0x9d
	bl sub_080406FC
	movs r0, #0x9e
	bl sub_080406D0
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
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x1a
	bl sub_08041018
	ldr r0, _08046710 @ =0x0000025D
	bl sub_080410E0
	ldr r0, _08046714 @ =0x002A001D
	bl sub_08041058
	ldr r0, _08046718 @ =0x002A001E
	bl sub_08041058
	ldr r0, _0804671C @ =0x002A001F
	bl sub_08041058
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
	bl sub_080405B8
	ldr r0, _08046798 @ =0x0808DEBC
	bl sub_0804115C
	ldr r2, _0804679C @ =0x0808E8BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r2, _080467A0 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x44
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x9e
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080467A8
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _080467A4 @ =sub_080466DC
	bl sub_0804066C
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
	bl sub_080410A8
	ldr r0, _080467D4 @ =sub_08046468
	bl sub_0804066C
	movs r0, #0x9c
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046800
	movs r0, #0x69
	bl sub_08040B34
	b _08046800
	.align 2, 0
_080467D4: .4byte sub_08046468
_080467D8:
	movs r0, #0x17
	bl sub_08040A6C
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
	bl sub_080406E4
_080467F6:
	ldr r0, _08046830 @ =sub_080465D8
	bl sub_0804066C
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

	thumb_func_start sub_08046834
sub_08046834: @ 0x08046834
	push {lr}
	sub sp, #4
	ldr r1, _08046850 @ =0x0808DC24
	mov r0, sp
	movs r2, #3
	bl sub_08072A10
	mov r0, sp
	movs r1, #3
	bl sub_08041E18
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08046850: .4byte 0x0808DC24

	thumb_func_start sub_08046854
sub_08046854: @ 0x08046854
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	mov r1, sp
	ldr r0, _080468B4 @ =0x0808DC28
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	bl sub_08040FE8
	movs r0, #9
	bl sub_08041018
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_08041058
	ldr r0, _080468B8 @ =0x00010001
	bl sub_08041058
	ldr r0, _080468BC @ =0x00010002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080468C4
	ldr r0, _080468C0 @ =0x00010003
	bl sub_08041058
	b _08046C90
	.align 2, 0
_080468B4: .4byte 0x0808DC28
_080468B8: .4byte 0x00010001
_080468BC: .4byte 0x00010002
_080468C0: .4byte 0x00010003
_080468C4:
	movs r0, #0
	bl sub_08041DE0
	ldr r1, _08046BD0 @ =0x00010004
	movs r0, #0
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080468DA
	b _08046C90
_080468DA:
	movs r0, #0x10
	bl sub_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	bl sub_080406E4
	bl sub_08040FE8
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046BD4 @ =0x00010005
	bl sub_08041058
	ldr r0, _08046BD8 @ =0x00010006
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046BDC @ =0x00010007
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r4, _08046BE0 @ =0x0000011B
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0x58
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08046BE4 @ =0x00010008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046BE8 @ =0x00010009
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046BEC @ =0x0001000A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046BF0 @ =0x0001000B
	bl sub_08041058
	ldr r0, _08046BF4 @ =0x0001000C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046BF8 @ =0x0001000D
	bl sub_08041058
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046BFC @ =0x0001000E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046C00 @ =0x0001000F
	bl sub_08041058
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046C04 @ =0x00010010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08046C08 @ =0x00010011
	bl sub_08041058
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046C0C @ =0x00010012
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046C10 @ =0x00010013
	bl sub_08041058
	ldr r0, _08046C14 @ =0x00010014
	bl sub_08041058
	ldr r0, _08046C18 @ =sub_08046834
	bl sub_0804066C
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046C1C @ =0x00010015
	bl sub_08041058
	bl sub_08041F3C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046C20 @ =0x00010016
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046C24 @ =0x00010017
	bl sub_08041058
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046C28 @ =0x00010018
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046C2C @ =0x00010019
	bl sub_08041058
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08046C30 @ =0x0001001A
	bl sub_08041058
	movs r0, #9
	bl sub_08041018
	ldr r0, _08046C34 @ =0x0001001B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08046C38 @ =0x0001001C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08046C3C @ =0x0001001D
	bl sub_08041058
	ldr r0, _08046C40 @ =0x0001001E
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046C48
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08046C44 @ =0x0001001F
	bl sub_08041058
	b _08046C60
	.align 2, 0
_08046BD0: .4byte 0x00010004
_08046BD4: .4byte 0x00010005
_08046BD8: .4byte 0x00010006
_08046BDC: .4byte 0x00010007
_08046BE0: .4byte 0x0000011B
_08046BE4: .4byte 0x00010008
_08046BE8: .4byte 0x00010009
_08046BEC: .4byte 0x0001000A
_08046BF0: .4byte 0x0001000B
_08046BF4: .4byte 0x0001000C
_08046BF8: .4byte 0x0001000D
_08046BFC: .4byte 0x0001000E
_08046C00: .4byte 0x0001000F
_08046C04: .4byte 0x00010010
_08046C08: .4byte 0x00010011
_08046C0C: .4byte 0x00010012
_08046C10: .4byte 0x00010013
_08046C14: .4byte 0x00010014
_08046C18: .4byte sub_08046834
_08046C1C: .4byte 0x00010015
_08046C20: .4byte 0x00010016
_08046C24: .4byte 0x00010017
_08046C28: .4byte 0x00010018
_08046C2C: .4byte 0x00010019
_08046C30: .4byte 0x0001001A
_08046C34: .4byte 0x0001001B
_08046C38: .4byte 0x0001001C
_08046C3C: .4byte 0x0001001D
_08046C40: .4byte 0x0001001E
_08046C44: .4byte 0x0001001F
_08046C48:
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08046C98 @ =0x00010022
	bl sub_08041058
	ldr r0, _08046C9C @ =0x00010023
	bl sub_08041058
_08046C60:
	ldr r0, _08046CA0 @ =0x00010020
	bl sub_08041058
	ldr r0, _08046CA4 @ =sub_08046834
	bl sub_0804066C
	ldr r0, _08046CA8 @ =0x00010021
	bl sub_08041058
	movs r0, #7
	bl sub_0802D7CC
	movs r0, #0x1a
	bl sub_0802D7CC
	movs r0, #0xd
	bl sub_0802D7CC
	movs r0, #0x1b
	bl sub_0802D7CC
	movs r0, #0
	bl sub_0802D7CC
_08046C90:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046C98: .4byte 0x00010022
_08046C9C: .4byte 0x00010023
_08046CA0: .4byte 0x00010020
_08046CA4: .4byte sub_08046834
_08046CA8: .4byte 0x00010021

	thumb_func_start sub_08046CAC
sub_08046CAC: @ 0x08046CAC
	push {lr}
	movs r0, #1
	movs r1, #0x58
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08046D14 @ =0x00010024
	bl sub_08041058
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08046D18 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x5a
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08046D1C @ =0x00010025
	bl sub_08041058
	ldr r0, _08046D20 @ =sub_08046834
	bl sub_0804066C
	ldr r0, _08046D24 @ =0x00010021
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08046D14: .4byte 0x00010024
_08046D18: .4byte 0x0000011F
_08046D1C: .4byte 0x00010025
_08046D20: .4byte sub_08046834
_08046D24: .4byte 0x00010021

	thumb_func_start sub_08046D28
sub_08046D28: @ 0x08046D28
	push {r4, lr}
	sub sp, #4
	ldr r1, _08047114 @ =0x0808DC24
	mov r0, sp
	movs r2, #3
	bl sub_08072A10
	ldr r2, _08047118 @ =0x0808E92C
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #0x50
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0x58
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #9
	bl sub_08041018
	ldr r0, _0804711C @ =0x0001003F
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047120 @ =0x00010040
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	bl sub_08041008
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0xa0
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047124 @ =0x00010041
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r4, _08047128 @ =0x0000011B
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #9
	bl sub_08041018
	ldr r0, _0804712C @ =0x00010042
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047130 @ =0x00010043
	bl sub_08041058
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047134 @ =0x00010044
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	mov r0, sp
	movs r1, #3
	bl sub_08041F9C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08046EB2
	b _08047260
_08046EB2:
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x56
	bl sub_08040690
	ldr r0, _08047138 @ =0x00000125
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804713C @ =0x00010045
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #9
	bl sub_08041018
	ldr r0, _08047140 @ =0x00010046
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047144 @ =0x00010047
	bl sub_08041058
	movs r0, #9
	bl sub_08041018
	ldr r0, _08047148 @ =0x00010048
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804714C @ =0x00010049
	bl sub_08041058
	ldr r0, _08047150 @ =0x0001004A
	bl sub_08041058
	ldr r0, _08047154 @ =0x0001004B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #9
	bl sub_08041018
	ldr r0, _08047158 @ =0x0001004C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804715C @ =0x0001004D
	bl sub_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0x3c
	movs r2, #0x50
	movs r3, #0x20
	bl sub_08041938
	bl sub_08040FE8
	movs r0, #0x21
	bl sub_08041018
	ldr r0, _08047160 @ =0x0001004E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047164 @ =0x0001004F
	bl sub_08041058
	ldr r0, _08047168 @ =0x00010050
	bl sub_08041058
	bl sub_08041008
	movs r0, #3
	movs r1, #0x7c
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0xa0
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	bl sub_08040FE8
	movs r0, #9
	bl sub_08041018
	ldr r0, _0804716C @ =0x00010051
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08047170 @ =0x00010052
	bl sub_08041058
	movs r0, #0x21
	bl sub_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047174 @ =0x00010053
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047178 @ =0x00010054
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #1
	bl sub_080418C8
	movs r0, #9
	bl sub_08041018
	ldr r0, _0804717C @ =0x00010055
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047180 @ =0x00010056
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #1
	bl sub_080418C8
	movs r0, #9
	bl sub_08041018
	ldr r0, _08047184 @ =0x00010057
	bl sub_08041058
	movs r0, #0x21
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl sub_080418C8
	ldr r0, _08047188 @ =0x00010058
	bl sub_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	b _0804718C
	.align 2, 0
_08047114: .4byte 0x0808DC24
_08047118: .4byte 0x0808E92C
_0804711C: .4byte 0x0001003F
_08047120: .4byte 0x00010040
_08047124: .4byte 0x00010041
_08047128: .4byte 0x0000011B
_0804712C: .4byte 0x00010042
_08047130: .4byte 0x00010043
_08047134: .4byte 0x00010044
_08047138: .4byte 0x00000125
_0804713C: .4byte 0x00010045
_08047140: .4byte 0x00010046
_08047144: .4byte 0x00010047
_08047148: .4byte 0x00010048
_0804714C: .4byte 0x00010049
_08047150: .4byte 0x0001004A
_08047154: .4byte 0x0001004B
_08047158: .4byte 0x0001004C
_0804715C: .4byte 0x0001004D
_08047160: .4byte 0x0001004E
_08047164: .4byte 0x0001004F
_08047168: .4byte 0x00010050
_0804716C: .4byte 0x00010051
_08047170: .4byte 0x00010052
_08047174: .4byte 0x00010053
_08047178: .4byte 0x00010054
_0804717C: .4byte 0x00010055
_08047180: .4byte 0x00010056
_08047184: .4byte 0x00010057
_08047188: .4byte 0x00010058
_0804718C:
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x50
	movs r3, #0x20
	bl sub_08041938
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047250 @ =0x00010059
	bl sub_08041058
	ldr r0, _08047254 @ =0x0001005A
	bl sub_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #1
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #9
	bl sub_08041018
	ldr r0, _08047258 @ =0x0001005B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1f
	movs r1, #0x10
	bl sub_08042814
	movs r0, #9
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804725C @ =0x0001005C
	bl sub_08041058
	movs r0, #6
	bl sub_080406BC
	b _080472F8
	.align 2, 0
_08047250: .4byte 0x00010059
_08047254: .4byte 0x0001005A
_08047258: .4byte 0x0001005B
_0804725C: .4byte 0x0001005C
_08047260:
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08047300 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x5a
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047304 @ =0x0001005D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08047308 @ =0x0001005E
	bl sub_08041058
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #9
	bl sub_08041018
	ldr r0, _0804730C @ =0x0001005F
	bl sub_08041058
	ldr r0, _08047310 @ =0x00010060
	bl sub_08041058
	ldr r0, _08047314 @ =0x00010061
	bl sub_08041058
	movs r0, #0
	bl sub_080406FC
	movs r0, #1
	bl sub_080406FC
	movs r0, #2
	bl sub_080406FC
	movs r0, #3
	bl sub_080406FC
	movs r0, #6
	bl sub_080406D0
_080472F8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047300: .4byte 0x0000011F
_08047304: .4byte 0x0001005D
_08047308: .4byte 0x0001005E
_0804730C: .4byte 0x0001005F
_08047310: .4byte 0x00010060
_08047314: .4byte 0x00010061

	thumb_func_start sub_08047318
sub_08047318: @ 0x08047318
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #9
	bl sub_08041018
	ldr r0, _08047370 @ =0x00010062
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047374 @ =0x00010063
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08047378 @ =0x00010064
	bl sub_08041058
	ldr r0, _0804737C @ =0x00010065
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047380 @ =0x00010066
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08047370: .4byte 0x00010062
_08047374: .4byte 0x00010063
_08047378: .4byte 0x00010064
_0804737C: .4byte 0x00010065
_08047380: .4byte 0x00010066

	thumb_func_start sub_08047384
sub_08047384: @ 0x08047384
	push {lr}
	bl sub_080405B8
	ldr r0, _080473F4 @ =0x0808DEE4
	bl sub_0804115C
	ldr r2, _080473F8 @ =0x0808E7AC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _080473FC @ =0x0808EA4C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	ldr r2, _08047400 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #6
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08047408
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08047404 @ =sub_08047318
	bl sub_0804066C
	b _0804746C
	.align 2, 0
_080473F4: .4byte 0x0808DEE4
_080473F8: .4byte 0x0808E7AC
_080473FC: .4byte 0x0808EA4C
_08047400: .4byte 0x0808E6BC
_08047404: .4byte sub_08047318
_08047408:
	movs r0, #0
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047428
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08047424 @ =sub_08046854
	bl sub_0804066C
	b _0804746C
	.align 2, 0
_08047424: .4byte sub_08046854
_08047428:
	movs r0, #1
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047460
	movs r0, #2
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047460
	movs r0, #3
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047460
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _0804745C @ =sub_08046D28
	bl sub_0804066C
	b _0804746C
	.align 2, 0
_0804745C: .4byte sub_08046D28
_08047460:
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _080474AC @ =sub_08046CAC
	bl sub_0804066C
_0804746C:
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
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080474AC: .4byte sub_08046CAC

	thumb_func_start sub_080474B0
sub_080474B0: @ 0x080474B0
	push {lr}
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	ldr r0, _080474E4 @ =0x00000217
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0x18
	bl sub_080413C0
	bl sub_08041430
	pop {r0}
	bx r0
	.align 2, 0
_080474E4: .4byte 0x00000217

	thumb_func_start sub_080474E8
sub_080474E8: @ 0x080474E8
	push {r4, lr}
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	bl sub_080474B0
	bl sub_08040FE8
	movs r0, #0x12
	bl sub_08041018
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08041058
	ldr r0, _0804752C @ =0x00040001
	bl sub_08041058
	ldr r0, _08047530 @ =0x00040002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047538
	ldr r0, _08047534 @ =0x00040003
	bl sub_08041058
	b _08047854
	.align 2, 0
_0804752C: .4byte 0x00040001
_08047530: .4byte 0x00040002
_08047534: .4byte 0x00040003
_08047538:
	ldr r1, _080477BC @ =0x00040004
	movs r0, #3
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047548
	b _08047854
_08047548:
	movs r0, #0x10
	bl sub_080410A8
	bl sub_080474B0
	bl sub_08040FE8
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _080477C0 @ =0x00040005
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080477C4 @ =0x00040006
	bl sub_08041058
	ldr r0, _080477C8 @ =0x0000011F
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x38
	bl sub_08041894
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0x50
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _080477CC @ =0x00040007
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080477D0 @ =0x00040008
	bl sub_08041058
	ldr r0, _080477D4 @ =0x00040009
	bl sub_08041058
	bl sub_080474B0
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _080477D8 @ =0x0004000A
	bl sub_08041058
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x38
	bl sub_08041894
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080477DC @ =0x0004000B
	bl sub_08041058
	ldr r0, _080477E0 @ =0x0004000C
	bl sub_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _080477E4 @ =0x0004000D
	bl sub_08041058
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #1
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x38
	bl sub_08041894
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080477E8 @ =0x0004000E
	bl sub_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x38
	bl sub_08041894
	movs r0, #0xb4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	bl sub_08040FE8
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _080477EC @ =0x0004000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080477F0 @ =0x00040010
	bl sub_08041058
	ldr r0, _080477F4 @ =0x00040011
	bl sub_08041058
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _080477F8 @ =0x00040012
	bl sub_08041058
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x38
	bl sub_08041894
	movs r0, #0xb4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080477FC @ =0x00040013
	bl sub_08041058
	ldr r0, _08047800 @ =0x00040014
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08047804 @ =0x00040015
	bl sub_08041058
	ldr r0, _08047808 @ =0x00040016
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047814
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804780C @ =0x00040017
	bl sub_08041058
	ldr r0, _08047810 @ =0x00040018
	bl sub_08041058
	b _08047842
	.align 2, 0
_080477BC: .4byte 0x00040004
_080477C0: .4byte 0x00040005
_080477C4: .4byte 0x00040006
_080477C8: .4byte 0x0000011F
_080477CC: .4byte 0x00040007
_080477D0: .4byte 0x00040008
_080477D4: .4byte 0x00040009
_080477D8: .4byte 0x0004000A
_080477DC: .4byte 0x0004000B
_080477E0: .4byte 0x0004000C
_080477E4: .4byte 0x0004000D
_080477E8: .4byte 0x0004000E
_080477EC: .4byte 0x0004000F
_080477F0: .4byte 0x00040010
_080477F4: .4byte 0x00040011
_080477F8: .4byte 0x00040012
_080477FC: .4byte 0x00040013
_08047800: .4byte 0x00040014
_08047804: .4byte 0x00040015
_08047808: .4byte 0x00040016
_0804780C: .4byte 0x00040017
_08047810: .4byte 0x00040018
_08047814:
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x58
	movs r2, #0x40
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804785C @ =0x00040019
	bl sub_08041058
	ldr r0, _08047860 @ =0x0004001A
	bl sub_08041058
_08047842:
	movs r0, #0xe
	bl sub_080406E4
	movs r0, #7
	bl sub_0802D7CC
	movs r0, #0x19
	bl sub_0802D7CC
_08047854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804785C: .4byte 0x00040019
_08047860: .4byte 0x0004001A

	thumb_func_start sub_08047864
sub_08047864: @ 0x08047864
	push {lr}
	movs r0, #1
	movs r1, #0x50
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047900 @ =0x00040028
	bl sub_08041058
	ldr r0, _08047904 @ =0x00040029
	bl sub_08041058
	ldr r0, _08047908 @ =0x0004002A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	beq _08047920
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	ldr r0, _0804790C @ =0x00040041
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	ldr r0, _08047910 @ =0x00040042
	bl sub_08041058
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047914 @ =0x00040043
	bl sub_08041058
	ldr r0, _08047918 @ =0x00040044
	bl sub_08041058
	ldr r0, _0804791C @ =0x00040045
	bl sub_08041058
	movs r0, #0xf
	bl sub_080406FC
	movs r0, #0x11
	bl sub_080406FC
	movs r0, #0xe
	bl sub_080406FC
	movs r0, #0x10
	bl sub_080406D0
	b _08047B6C
	.align 2, 0
_08047900: .4byte 0x00040028
_08047904: .4byte 0x00040029
_08047908: .4byte 0x0004002A
_0804790C: .4byte 0x00040041
_08047910: .4byte 0x00040042
_08047914: .4byte 0x00040043
_08047918: .4byte 0x00040044
_0804791C: .4byte 0x00040045
_08047920:
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x54
	movs r2, #0x40
	bl sub_08041894
	movs r0, #0x56
	bl sub_08040690
	ldr r0, _08047B70 @ =0x00000125
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047B74 @ =0x0004002B
	bl sub_08041058
	ldr r0, _08047B78 @ =0x0004002C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	bl sub_080474B0
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047B7C @ =0x0004002D
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047B80 @ =0x0004002E
	bl sub_08041058
	movs r0, #0x78
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08047B84 @ =0x0004002F
	bl sub_08041058
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #1
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x38
	bl sub_08041894
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	bl sub_080474B0
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047B88 @ =0x00040030
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047B8C @ =0x00040031
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x88
	movs r2, #0x38
	bl sub_08041894
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047B90 @ =0x00040032
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047B94 @ =0x00040033
	bl sub_08041058
	ldr r0, _08047B98 @ =0x00040034
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x38
	bl sub_08041894
	ldr r0, _08047B9C @ =0x00000121
	bl sub_080410E0
	movs r0, #0x78
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047BA0 @ =0x00040035
	bl sub_08041058
	ldr r0, _08047BA4 @ =0x00040036
	bl sub_08041058
	ldr r0, _08047BA8 @ =0x00040037
	bl sub_08041058
	ldr r0, _08047BAC @ =0x00040038
	bl sub_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x50
	movs r2, #0x38
	bl sub_08041894
	movs r0, #0xb4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047BB0 @ =0x00040039
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08047BB4 @ =0x0004003A
	bl sub_08041058
	ldr r0, _08047BB8 @ =0x0004003B
	bl sub_08041058
	bl sub_080474B0
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047BBC @ =0x0004003C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08047BC0 @ =0x0004003D
	bl sub_08041058
	ldr r0, _08047BC4 @ =0x0004003E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047BC8 @ =0x0004003F
	bl sub_08041058
	movs r0, #0x10
	movs r1, #0x10
	bl sub_08042814
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047BCC @ =0x00040040
	bl sub_08041058
	bl sub_080474B0
	movs r0, #0x11
	bl sub_080406BC
_08047B6C:
	pop {r0}
	bx r0
	.align 2, 0
_08047B70: .4byte 0x00000125
_08047B74: .4byte 0x0004002B
_08047B78: .4byte 0x0004002C
_08047B7C: .4byte 0x0004002D
_08047B80: .4byte 0x0004002E
_08047B84: .4byte 0x0004002F
_08047B88: .4byte 0x00040030
_08047B8C: .4byte 0x00040031
_08047B90: .4byte 0x00040032
_08047B94: .4byte 0x00040033
_08047B98: .4byte 0x00040034
_08047B9C: .4byte 0x00000121
_08047BA0: .4byte 0x00040035
_08047BA4: .4byte 0x00040036
_08047BA8: .4byte 0x00040037
_08047BAC: .4byte 0x00040038
_08047BB0: .4byte 0x00040039
_08047BB4: .4byte 0x0004003A
_08047BB8: .4byte 0x0004003B
_08047BBC: .4byte 0x0004003C
_08047BC0: .4byte 0x0004003D
_08047BC4: .4byte 0x0004003E
_08047BC8: .4byte 0x0004003F
_08047BCC: .4byte 0x00040040

	thumb_func_start sub_08047BD0
sub_08047BD0: @ 0x08047BD0
	push {lr}
	bl sub_080407FC
	bl sub_080474B0
	bl sub_08040FE8
	movs r0, #0x12
	bl sub_08041018
	ldr r0, _08047BF4 @ =0x00040046
	bl sub_08041058
	ldr r0, _08047BF8 @ =0x00040047
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08047BF4: .4byte 0x00040046
_08047BF8: .4byte 0x00040047

	thumb_func_start sub_08047BFC
sub_08047BFC: @ 0x08047BFC
	push {lr}
	bl sub_080405B8
	ldr r0, _08047C70 @ =0x0808DF0C
	bl sub_0804115C
	ldr r2, _08047C74 @ =0x0808E84C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _08047C78 @ =0x0808EA4C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	ldr r2, _08047C7C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #0x11
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08047C84
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08047C80 @ =sub_08047BD0
	bl sub_0804066C
	b _08047CC4
	.align 2, 0
_08047C70: .4byte 0x0808DF0C
_08047C74: .4byte 0x0808E84C
_08047C78: .4byte 0x0808EA4C
_08047C7C: .4byte 0x0808E6BC
_08047C80: .4byte sub_08047BD0
_08047C84:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047CB4
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08047CB0 @ =sub_080474E8
	bl sub_0804066C
	movs r0, #0xe
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047CC4
	movs r0, #1
	bl sub_08040F18
	b _08047CC4
	.align 2, 0
_08047CB0: .4byte sub_080474E8
_08047CB4:
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _08047D04 @ =sub_08047864
	bl sub_0804066C
	bl sub_08040F0C
_08047CC4:
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
	pop {r0}
	bx r0
	.align 2, 0
_08047D04: .4byte sub_08047864

	thumb_func_start sub_08047D08
sub_08047D08: @ 0x08047D08
	push {lr}
	bl sub_080407FC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08047D64 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _08047D68 @ =0x00010030
	bl sub_08041058
_08047D46:
	bl sub_08041048
	ldr r0, _08047D6C @ =0x00010027
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08047D70
	cmp r0, #1
	beq _08047E0C
	b _08047E70
	.align 2, 0
_08047D64: .4byte 0x0000011F
_08047D68: .4byte 0x00010030
_08047D6C: .4byte 0x00010027
_08047D70:
	movs r0, #0x17
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047DF8 @ =0x00010031
	bl sub_08041058
	ldr r0, _08047DFC @ =0x00010032
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x2a
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08047E00 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _08047E04 @ =0x00010033
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047E08 @ =0x00010034
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_080406E4
	b _08047D46
	.align 2, 0
_08047DF8: .4byte 0x00010031
_08047DFC: .4byte 0x00010032
_08047E00: .4byte 0x00000129
_08047E04: .4byte 0x00010033
_08047E08: .4byte 0x00010034
_08047E0C:
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _08047E64 @ =0x00010035
	bl sub_08041058
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08047E68 @ =0x00000123
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047E6C @ =0x00010036
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	b _08047D46
	.align 2, 0
_08047E64: .4byte 0x00010035
_08047E68: .4byte 0x00000123
_08047E6C: .4byte 0x00010036
_08047E70:
	ldr r0, _08047E88 @ =0x0001002F
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08047E84
	b _08047D46
_08047E84:
	pop {r0}
	bx r0
	.align 2, 0
_08047E88: .4byte 0x0001002F

	thumb_func_start sub_08047E8C
sub_08047E8C: @ 0x08047E8C
	push {lr}
	bl sub_080407FC
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x58
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x17
	bl sub_08041018
	movs r0, #0xa0
	lsls r0, r0, #0xc
	bl sub_08041058
	ldr r0, _08047F34 @ =0x000A0001
	bl sub_08041058
	ldr r0, _08047F38 @ =0x000A0002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047F40
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x17
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08047F3C @ =0x000A0003
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	b _08048088
	.align 2, 0
_08047F34: .4byte 0x000A0001
_08047F38: .4byte 0x000A0002
_08047F3C: .4byte 0x000A0003
_08047F40:
	ldr r1, _08048008 @ =0x000A0004
	movs r0, #9
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047F50
	b _08048088
_08047F50:
	movs r0, #0x11
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _0804800C @ =0x000A0005
	bl sub_08041058
	ldr r0, _08048010 @ =0x000A0006
	bl sub_08041058
	ldr r0, _08048014 @ =0x000A0007
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048018 @ =0x000A0008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804801C @ =0x000A0009
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08048020 @ =0x00000123
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048024 @ =0x000A000A
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08048028 @ =0x000A000B
	bl sub_08041058
	ldr r0, _0804802C @ =0x000A000C
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048034
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _08048030 @ =0x000A000D
	bl sub_08041058
	b _08048064
	.align 2, 0
_08048008: .4byte 0x000A0004
_0804800C: .4byte 0x000A0005
_08048010: .4byte 0x000A0006
_08048014: .4byte 0x000A0007
_08048018: .4byte 0x000A0008
_0804801C: .4byte 0x000A0009
_08048020: .4byte 0x00000123
_08048024: .4byte 0x000A000A
_08048028: .4byte 0x000A000B
_0804802C: .4byte 0x000A000C
_08048030: .4byte 0x000A000D
_08048034:
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #2
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _0804808C @ =0x000A0010
	bl sub_08041058
	ldr r0, _08048090 @ =0x000A0011
	bl sub_08041058
_08048064:
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048094 @ =0x000A000E
	bl sub_08041058
	ldr r0, _08048098 @ =0x000A000F
	bl sub_08041058
	movs r0, #0x25
	bl sub_080406E4
	movs r0, #0xd
	bl sub_0802D7CC
_08048088:
	pop {r0}
	bx r0
	.align 2, 0
_0804808C: .4byte 0x000A0010
_08048090: .4byte 0x000A0011
_08048094: .4byte 0x000A000E
_08048098: .4byte 0x000A000F

	thumb_func_start sub_0804809C
sub_0804809C: @ 0x0804809C
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _080480D0 @ =0x000A0012
	bl sub_08041058
	ldr r0, _080480D4 @ =0x000A0013
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080480D8 @ =0x000A0014
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080480D0: .4byte 0x000A0012
_080480D4: .4byte 0x000A0013
_080480D8: .4byte 0x000A0014

	thumb_func_start sub_080480DC
sub_080480DC: @ 0x080480DC
	push {r4, lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x17
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048328 @ =0x000A001A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804832C @ =0x000A001B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048330 @ =0x000A001C
	bl sub_08041058
	movs r0, #0x18
	bl sub_08041018
	ldr r0, _08048334 @ =0x000A001D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x34
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _08048338 @ =0x000A001E
	bl sub_08041058
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x1c
	bl sub_08041894
	ldr r0, _0804833C @ =0x0000011F
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x18
	bl sub_08041018
	ldr r0, _08048340 @ =0x000A001F
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _08048344 @ =0x000A0020
	bl sub_08041058
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _08048348 @ =0x000A0021
	bl sub_08041058
	ldr r0, _0804834C @ =0x0000011B
	bl sub_080410E0
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x24
	movs r3, #8
	bl sub_08041938
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x34
	movs r3, #8
	bl sub_08041938
	movs r0, #0x18
	bl sub_08041018
	ldr r0, _08048350 @ =0x000A0022
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _08048354 @ =0x000A0023
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x18
	bl sub_08041018
	ldr r0, _08048358 @ =0x000A0024
	bl sub_08041058
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r4, _0804835C @ =0x00000123
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x17
	bl sub_08041018
	ldr r0, _08048360 @ =0x000A0025
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #0x18
	bl sub_08041018
	ldr r0, _08048364 @ =0x000A0026
	bl sub_08041058
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _08048368 @ =0x000A0027
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804836C @ =0x000A0028
	bl sub_08041058
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #1
	movs r1, #0xf0
	movs r2, #0x34
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x17
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048370 @ =0x000A0029
	bl sub_08041058
	ldr r0, _08048374 @ =0x000A002A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08048378 @ =0x000A002B
	bl sub_08041058
	movs r0, #0x39
	movs r1, #0x11
	bl sub_08042814
	movs r0, #0x17
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804837C @ =0x000A002C
	bl sub_08041058
	movs r0, #0x28
	bl sub_080406BC
	movs r0, #0x31
	bl sub_0802D7CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048328: .4byte 0x000A001A
_0804832C: .4byte 0x000A001B
_08048330: .4byte 0x000A001C
_08048334: .4byte 0x000A001D
_08048338: .4byte 0x000A001E
_0804833C: .4byte 0x0000011F
_08048340: .4byte 0x000A001F
_08048344: .4byte 0x000A0020
_08048348: .4byte 0x000A0021
_0804834C: .4byte 0x0000011B
_08048350: .4byte 0x000A0022
_08048354: .4byte 0x000A0023
_08048358: .4byte 0x000A0024
_0804835C: .4byte 0x00000123
_08048360: .4byte 0x000A0025
_08048364: .4byte 0x000A0026
_08048368: .4byte 0x000A0027
_0804836C: .4byte 0x000A0028
_08048370: .4byte 0x000A0029
_08048374: .4byte 0x000A002A
_08048378: .4byte 0x000A002B
_0804837C: .4byte 0x000A002C

	thumb_func_start sub_08048380
sub_08048380: @ 0x08048380
	push {lr}
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x34
	bl sub_08041894
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x17
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080483E0 @ =0x000A002D
	bl sub_08041058
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _080483E4 @ =0x00000123
	bl sub_080410E0
	ldr r0, _080483E8 @ =0x000A002E
	bl sub_08041058
	ldr r0, _080483EC @ =0x000A002F
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080483E0: .4byte 0x000A002D
_080483E4: .4byte 0x00000123
_080483E8: .4byte 0x000A002E
_080483EC: .4byte 0x000A002F

	thumb_func_start sub_080483F0
sub_080483F0: @ 0x080483F0
	push {lr}
	bl sub_080405B8
	ldr r0, _08048444 @ =0x0808DF34
	bl sub_0804115C
	ldr r2, _08048448 @ =0x0808E89C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x34
	bl sub_08041894
	ldr r2, _0804844C @ =0x0808EA8C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #0x28
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08048450
	movs r0, #1
	movs r1, #0x8c
	movs r2, #0x34
	bl sub_08041894
	b _0804845A
	.align 2, 0
_08048444: .4byte 0x0808DF34
_08048448: .4byte 0x0808E89C
_0804844C: .4byte 0x0808EA8C
_08048450:
	movs r0, #1
	movs r1, #0xf0
	movs r2, #0x34
	bl sub_08041894
_0804845A:
	movs r0, #1
	movs r1, #3
	bl sub_08041864
	ldr r2, _080484B0 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x1c
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080484B8
	movs r0, #2
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080484B8
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _080484B4 @ =sub_08047D08
	bl sub_0804066C
	b _0804851E
	.align 2, 0
_080484B0: .4byte 0x0808E6BC
_080484B4: .4byte sub_08047D08
_080484B8:
	movs r0, #0x28
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080484D8
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _080484D4 @ =sub_08048380
	bl sub_0804066C
	b _0804851E
	.align 2, 0
_080484D4: .4byte sub_08048380
_080484D8:
	movs r0, #0x25
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080484F8
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _080484F4 @ =sub_08047E8C
	bl sub_0804066C
	b _0804851E
	.align 2, 0
_080484F4: .4byte sub_08047E8C
_080484F8:
	movs r0, #0x11
	bl sub_080410A8
	movs r0, #0x26
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048518
	ldr r0, _08048514 @ =sub_0804809C
	bl sub_0804066C
	b _0804851E
	.align 2, 0
_08048514: .4byte sub_0804809C
_08048518:
	ldr r0, _0804855C @ =sub_080480DC
	bl sub_0804066C
_0804851E:
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
	pop {r0}
	bx r0
	.align 2, 0
_0804855C: .4byte sub_080480DC

	thumb_func_start sub_08048560
sub_08048560: @ 0x08048560
	push {lr}
	ldr r0, _080485CC @ =0x0000011B
	bl sub_080410E0
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
	bl sub_08040FE8
	movs r0, #8
	bl sub_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xd
	bl sub_08041058
	ldr r0, _080485D0 @ =0x00180001
	bl sub_08041058
	ldr r0, _080485D4 @ =0x00180002
	bl sub_0804106C
	bl sub_08041088
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
	bl sub_080418C8
	ldr r0, _080485D8 @ =0x00180003
	bl sub_08041058
	b _080486E0
	.align 2, 0
_080485CC: .4byte 0x0000011B
_080485D0: .4byte 0x00180001
_080485D4: .4byte 0x00180002
_080485D8: .4byte 0x00180003
_080485DC:
	ldr r1, _0804865C @ =0x00180004
	movs r0, #0x17
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080486E0
	movs r0, #0x14
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #8
	bl sub_08041018
	ldr r0, _08048660 @ =0x00180005
	bl sub_08041058
	ldr r0, _08048664 @ =0x00180006
	bl sub_08041058
	ldr r0, _08048668 @ =0x00180007
	bl sub_08041058
	ldr r0, _0804866C @ =0x00180008
	bl sub_08041058
	ldr r0, _08048670 @ =0x00180009
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048688
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048674 @ =0x0018000A
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08048678 @ =0x0018000B
	bl sub_08041058
	ldr r0, _0804867C @ =0x0018000C
	bl sub_08041058
	ldr r0, _08048680 @ =0x0018000D
	bl sub_08041058
	ldr r0, _08048684 @ =0x0018000E
	bl sub_08041058
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
	bl sub_080418C8
	ldr r0, _080486E4 @ =0x0018000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080425EC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080486E8 @ =0x0018000B
	bl sub_08041058
	ldr r0, _080486EC @ =0x0018000C
	bl sub_08041058
	ldr r0, _080486F0 @ =0x00180010
	bl sub_08041058
_080486D4:
	movs r0, #0x5e
	bl sub_080406E4
	movs r0, #1
	bl sub_0802D7CC
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
	bl sub_08040FE8
	movs r0, #8
	bl sub_08041018
	ldr r0, _08048750 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048754 @ =0x00180011
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	ldr r0, _08048758 @ =0x0018000B
	bl sub_08041058
	ldr r0, _0804875C @ =0x00180012
	bl sub_08041058
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
	bl sub_08040FE8
	movs r0, #8
	bl sub_08041018
	ldr r0, _080487D4 @ =0x00180018
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080487D8 @ =0x00180019
	bl sub_08041058
	ldr r0, _080487DC @ =0x0018001A
	bl sub_08041058
	ldr r0, _080487E0 @ =0x0018001B
	bl sub_08041058
	movs r0, #0x21
	movs r1, #0x14
	bl sub_08042814
	movs r0, #8
	bl sub_08041018
	ldr r0, _080487E4 @ =0x0018001C
	bl sub_08041058
	ldr r0, _080487E8 @ =0x0018001D
	bl sub_08041058
	ldr r0, _080487EC @ =0x0018001E
	bl sub_08041058
	ldr r0, _080487F0 @ =0x0018001F
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080487F4 @ =0x00180020
	bl sub_08041058
	movs r0, #0x61
	bl sub_080406BC
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
	bl sub_08040FE8
	movs r0, #8
	bl sub_08041018
	ldr r0, _08048838 @ =0x00180021
	bl sub_08041058
	ldr r0, _0804883C @ =0x00180022
	bl sub_08041058
	ldr r0, _08048840 @ =0x00180023
	bl sub_08041058
	ldr r0, _08048844 @ =0x00180024
	bl sub_08041058
	ldr r0, _08048848 @ =0x00180025
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804884C @ =0x00180026
	bl sub_08041058
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
	bl sub_080405B8
	ldr r0, _080488F8 @ =0x0808DF5C
	bl sub_0804115C
	ldr r0, _080488FC @ =0x08164DC8
	movs r1, #0
	movs r2, #2
	bl sub_08041464
	ldr r4, _08048900 @ =0x0808E79C
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _08048904 @ =0x0808E6BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7c
	movs r2, #0x48
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x61
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804890C
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08048908 @ =sub_080487F8
	bl sub_0804066C
	b _08048958
	.align 2, 0
_080488F8: .4byte 0x0808DF5C
_080488FC: .4byte 0x08164DC8
_08048900: .4byte 0x0808E79C
_08048904: .4byte 0x0808E6BC
_08048908: .4byte sub_080487F8
_0804890C:
	movs r0, #0x5f
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804892C
	movs r0, #0x14
	bl sub_080410A8
	ldr r0, _08048928 @ =sub_08048760
	bl sub_0804066C
	b _08048958
	.align 2, 0
_08048928: .4byte sub_08048760
_0804892C:
	movs r0, #0x5e
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804894C
	movs r0, #0x14
	bl sub_080410A8
	ldr r0, _08048948 @ =sub_080486F4
	bl sub_0804066C
	b _08048958
	.align 2, 0
_08048948: .4byte sub_080486F4
_0804894C:
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _080489A4 @ =sub_08048560
	bl sub_0804066C
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

	thumb_func_start sub_080489A8
sub_080489A8: @ 0x080489A8
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x20
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #2
	bl sub_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xb
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	movs r1, #0x58
	movs r2, #0x50
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08048C5C @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08048C60 @ =0x00060001
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08048C64 @ =0x00060002
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048C68 @ =0x00060003
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08048C6C @ =0x00060004
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048C70 @ =0x00060005
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08048C74 @ =0x00060006
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048C78 @ =0x00060007
	bl sub_08041058
	ldr r0, _08048C7C @ =0x00060008
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048C80 @ =0x00060009
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048C84 @ =0x0006000A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08048C88 @ =0x0006000B
	bl sub_08041058
	ldr r0, _08048C8C @ =0x0006000C
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08048CA4
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x20
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08048C90 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08048C94 @ =0x0006000D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048C98 @ =0x0006000E
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048C9C @ =0x0006000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08048CA0 @ =0x00060010
	bl sub_08041058
	b _08048E3A
	.align 2, 0
_08048C5C: .4byte 0x00000129
_08048C60: .4byte 0x00060001
_08048C64: .4byte 0x00060002
_08048C68: .4byte 0x00060003
_08048C6C: .4byte 0x00060004
_08048C70: .4byte 0x00060005
_08048C74: .4byte 0x00060006
_08048C78: .4byte 0x00060007
_08048C7C: .4byte 0x00060008
_08048C80: .4byte 0x00060009
_08048C84: .4byte 0x0006000A
_08048C88: .4byte 0x0006000B
_08048C8C: .4byte 0x0006000C
_08048C90: .4byte 0x0000011F
_08048C94: .4byte 0x0006000D
_08048C98: .4byte 0x0006000E
_08048C9C: .4byte 0x0006000F
_08048CA0: .4byte 0x00060010
_08048CA4:
	ldr r1, _08048D5C @ =0x00060011
	movs r0, #5
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048CB4
	b _08048E3A
_08048CB4:
	movs r0, #0x10
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048D60 @ =0x00060012
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048D64 @ =0x00060013
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048D68 @ =0x00060014
	bl sub_08041058
	ldr r0, _08048D6C @ =0x00060015
	bl sub_08041058
	ldr r0, _08048D70 @ =0x00060016
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048D7C
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048D74 @ =0x00060017
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048D78 @ =0x00060018
	bl sub_08041058
	b _08048DAC
	.align 2, 0
_08048D5C: .4byte 0x00060011
_08048D60: .4byte 0x00060012
_08048D64: .4byte 0x00060013
_08048D68: .4byte 0x00060014
_08048D6C: .4byte 0x00060015
_08048D70: .4byte 0x00060016
_08048D74: .4byte 0x00060017
_08048D78: .4byte 0x00060018
_08048D7C:
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048E40 @ =0x0006001F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048E44 @ =0x00060020
	bl sub_08041058
_08048DAC:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048E48 @ =0x00060019
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08048E4C @ =0x0006001A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048E50 @ =0x0006001B
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08048E54 @ =0x0006001C
	bl sub_08041058
	ldr r0, _08048E58 @ =0x0006001D
	bl sub_08041058
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08048E5C @ =0x0006001E
	bl sub_08041058
	movs r0, #0x16
	bl sub_080406E4
	movs r0, #7
	bl sub_0802D7CC
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_08048E3A:
	pop {r0}
	bx r0
	.align 2, 0
_08048E40: .4byte 0x0006001F
_08048E44: .4byte 0x00060020
_08048E48: .4byte 0x00060019
_08048E4C: .4byte 0x0006001A
_08048E50: .4byte 0x0006001B
_08048E54: .4byte 0x0006001C
_08048E58: .4byte 0x0006001D
_08048E5C: .4byte 0x0006001E

	thumb_func_start sub_08048E60
sub_08048E60: @ 0x08048E60
	push {lr}
_08048E62:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048EA4 @ =0x00060021
	bl sub_08041058
	ldr r0, _08048EA8 @ =0x00060022
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08048F3C
	cmp r0, #1
	bgt _08048EAC
	cmp r0, #0
	beq _08048EB4
	b _080490A4
	.align 2, 0
_08048EA4: .4byte 0x00060021
_08048EA8: .4byte 0x00060022
_08048EAC:
	cmp r0, #2
	bne _08048EB2
	b _08048FE8
_08048EB2:
	b _080490A4
_08048EB4:
	ldr r0, _08048F24 @ =0x00060023
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08048F28 @ =0x00060024
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048F2C @ =0x00060025
	bl sub_08041058
	ldr r0, _08048F30 @ =0x00060026
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048F34 @ =0x00060027
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08048F38 @ =0x00060028
	bl sub_08041058
	b _08048E62
	.align 2, 0
_08048F24: .4byte 0x00060023
_08048F28: .4byte 0x00060024
_08048F2C: .4byte 0x00060025
_08048F30: .4byte 0x00060026
_08048F34: .4byte 0x00060027
_08048F38: .4byte 0x00060028
_08048F3C:
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08048FD0 @ =0x00060029
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048FD4 @ =0x0006002A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048FD8 @ =0x0006002B
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08048FDC @ =0x0006002C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08048FE0 @ =0x0006002D
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08048FE4 @ =0x0006002E
	bl sub_08041058
	b _08048E62
	.align 2, 0
_08048FD0: .4byte 0x00060029
_08048FD4: .4byte 0x0006002A
_08048FD8: .4byte 0x0006002B
_08048FDC: .4byte 0x0006002C
_08048FE0: .4byte 0x0006002D
_08048FE4: .4byte 0x0006002E
_08048FE8:
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049088 @ =0x0006002F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804908C @ =0x00060030
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049090 @ =0x00060031
	bl sub_08041058
	ldr r0, _08049094 @ =0x00060032
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049098 @ =0x00060033
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804909C @ =0x00060034
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080490A0 @ =0x00060035
	bl sub_08041058
	b _08048E62
	.align 2, 0
_08049088: .4byte 0x0006002F
_0804908C: .4byte 0x00060030
_08049090: .4byte 0x00060031
_08049094: .4byte 0x00060032
_08049098: .4byte 0x00060033
_0804909C: .4byte 0x00060034
_080490A0: .4byte 0x00060035
_080490A4:
	ldr r0, _080490BC @ =0x00060036
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080490B8
	b _08048E62
_080490B8:
	pop {r0}
	bx r0
	.align 2, 0
_080490BC: .4byte 0x00060036

	thumb_func_start sub_080490C0
sub_080490C0: @ 0x080490C0
	push {r4, lr}
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080494B4 @ =0x00060037
	bl sub_08041058
	ldr r0, _080494B8 @ =0x00060038
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _080490E2
	b _08049560
_080490E2:
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0x5c
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0xb4
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0xa
	movs r3, #1
	bl sub_080418C8
	movs r0, #0x56
	bl sub_08040690
	ldr r0, _080494BC @ =0x00000125
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_080418C8
	ldr r0, _080494C0 @ =0x00060039
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080494C4 @ =0x0006003A
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080494C8 @ =0x0006003B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080494CC @ =0x0006003C
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _080494D0 @ =0x0006003D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080494D4 @ =0x0006003E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080494D8 @ =0x0006003F
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080494DC @ =0x00060040
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080494E0 @ =0x00060041
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080494E4 @ =0x00060042
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080494E8 @ =0x00060043
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _080494EC @ =0x00060044
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080494F0 @ =0x00060045
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080494F4 @ =0x00060046
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080494F8 @ =0x00060047
	bl sub_08041058
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x28
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080494FC @ =0x00060048
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08049500 @ =0x00060049
	bl sub_08041058
	ldr r0, _08049504 @ =0x0006004A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049508 @ =0x0006004B
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r4, _0804950C @ =0x0006004C
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08049510 @ =0x0006004E
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049514 @ =0x0006004F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049518 @ =0x00060050
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804951C @ =0x00060051
	bl sub_08041058
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x20
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049520 @ =0x00060052
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049524 @ =0x00060053
	bl sub_08041058
	ldr r0, _08049528 @ =0x0000011B
	bl sub_080410E0
	movs r0, #1
	movs r1, #0x3c
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #1
	movs r1, #0x3c
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	movs r3, #0xc
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804952C @ =0x00060054
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #8
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #2
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08049530 @ =0x00060055
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08049534 @ =0x00060056
	bl sub_08041058
	ldr r0, _08049538 @ =0x00060057
	bl sub_08041058
	ldr r0, _0804953C @ =0x00060058
	bl sub_08041058
	ldr r1, _08049540 @ =0x00460027
	movs r0, #0x6c
	bl sub_080427E0
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049544 @ =0x00060059
	bl sub_08041058
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
	b _08049548
	.align 2, 0
_080494B4: .4byte 0x00060037
_080494B8: .4byte 0x00060038
_080494BC: .4byte 0x00000125
_080494C0: .4byte 0x00060039
_080494C4: .4byte 0x0006003A
_080494C8: .4byte 0x0006003B
_080494CC: .4byte 0x0006003C
_080494D0: .4byte 0x0006003D
_080494D4: .4byte 0x0006003E
_080494D8: .4byte 0x0006003F
_080494DC: .4byte 0x00060040
_080494E0: .4byte 0x00060041
_080494E4: .4byte 0x00060042
_080494E8: .4byte 0x00060043
_080494EC: .4byte 0x00060044
_080494F0: .4byte 0x00060045
_080494F4: .4byte 0x00060046
_080494F8: .4byte 0x00060047
_080494FC: .4byte 0x00060048
_08049500: .4byte 0x00060049
_08049504: .4byte 0x0006004A
_08049508: .4byte 0x0006004B
_0804950C: .4byte 0x0006004C
_08049510: .4byte 0x0006004E
_08049514: .4byte 0x0006004F
_08049518: .4byte 0x00060050
_0804951C: .4byte 0x00060051
_08049520: .4byte 0x00060052
_08049524: .4byte 0x00060053
_08049528: .4byte 0x0000011B
_0804952C: .4byte 0x00060054
_08049530: .4byte 0x00060055
_08049534: .4byte 0x00060056
_08049538: .4byte 0x00060057
_0804953C: .4byte 0x00060058
_08049540: .4byte 0x00460027
_08049544: .4byte 0x00060059
_08049548:
	bl sub_08040BB8
	ldr r0, _0804955C @ =0x0006005B
	bl sub_08041058
	movs r0, #0x17
	bl sub_080406E4
	b _0804964C
	.align 2, 0
_0804955C: .4byte 0x0006005B
_08049560:
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0x5c
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08049654 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x5a
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08049658 @ =0x00060067
	bl sub_08041058
	ldr r0, _0804965C @ =0x00060068
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049660 @ =0x00060069
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049664 @ =0x0006006A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049668 @ =0x0006006B
	bl sub_08041058
	ldr r0, _0804966C @ =0x0006006C
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049670 @ =0x0006006D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049674 @ =0x0006006E
	bl sub_08041058
	movs r0, #0x16
	bl sub_080406FC
	movs r0, #0x17
	bl sub_080406FC
	movs r0, #0x18
	bl sub_080406FC
	movs r0, #0x19
	bl sub_080406D0
_0804964C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049654: .4byte 0x0000011F
_08049658: .4byte 0x00060067
_0804965C: .4byte 0x00060068
_08049660: .4byte 0x00060069
_08049664: .4byte 0x0006006A
_08049668: .4byte 0x0006006B
_0804966C: .4byte 0x0006006C
_08049670: .4byte 0x0006006D
_08049674: .4byte 0x0006006E

	thumb_func_start sub_08049678
sub_08049678: @ 0x08049678
	push {lr}
	movs r0, #0x18
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08049708
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x10
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080496F0 @ =0x0006005C
	bl sub_08041058
	ldr r0, _080496F4 @ =0x0006005D
	bl sub_08041058
	movs r0, #0xb
	movs r1, #0x10
	bl sub_08042814
	movs r0, #2
	bl sub_08041018
	ldr r0, _080496F8 @ =0x0006005E
	bl sub_08041058
	ldr r0, _080496FC @ =0x0006005F
	bl sub_08041058
	ldr r0, _08049700 @ =0x00060060
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049704 @ =0x00060061
	bl sub_08041058
	movs r0, #0x6c
	bl sub_08040B84
	movs r0, #0x19
	bl sub_080406BC
	b _08049784
	.align 2, 0
_080496F0: .4byte 0x0006005C
_080496F4: .4byte 0x0006005D
_080496F8: .4byte 0x0006005E
_080496FC: .4byte 0x0006005F
_08049700: .4byte 0x00060060
_08049704: .4byte 0x00060061
_08049708:
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08049788 @ =0x00060062
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804978C @ =0x00060063
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08049790 @ =0x00060064
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08049794 @ =0x00060065
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08049798 @ =0x00060066
	bl sub_08041058
	movs r0, #0x16
	bl sub_080406FC
	movs r0, #0x17
	bl sub_080406FC
	movs r0, #0x18
	bl sub_080406FC
	movs r0, #0x19
	bl sub_080406D0
_08049784:
	pop {r0}
	bx r0
	.align 2, 0
_08049788: .4byte 0x00060062
_0804978C: .4byte 0x00060063
_08049790: .4byte 0x00060064
_08049794: .4byte 0x00060065
_08049798: .4byte 0x00060066

	thumb_func_start sub_0804979C
sub_0804979C: @ 0x0804979C
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0x3c
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x20
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x5a
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049840 @ =0x0006006F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049844 @ =0x00060070
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049848 @ =0x00060071
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804984C @ =0x00060072
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08049840: .4byte 0x0006006F
_08049844: .4byte 0x00060070
_08049848: .4byte 0x00060071
_0804984C: .4byte 0x00060072

	thumb_func_start sub_08049850
sub_08049850: @ 0x08049850
	push {lr}
	bl sub_080405B8
	ldr r0, _080498F0 @ =0x0808DF84
	bl sub_0804115C
	ldr r0, _080498F4 @ =0x0808E5FC
	movs r1, #0x78
	movs r2, #0x45
	bl sub_080414B4
	ldr r2, _080498F8 @ =0x0808EA4C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x58
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _080498FC @ =0x0808E7BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x38
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _08049900 @ =0x0808E71C
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x64
	bl sub_08041894
	ldr r2, _08049904 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x19
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804990C
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08049908 @ =sub_0804979C
	bl sub_0804066C
	b _080499A8
	.align 2, 0
_080498F0: .4byte 0x0808DF84
_080498F4: .4byte 0x0808E5FC
_080498F8: .4byte 0x0808EA4C
_080498FC: .4byte 0x0808E7BC
_08049900: .4byte 0x0808E71C
_08049904: .4byte 0x0808E6BC
_08049908: .4byte sub_0804979C
_0804990C:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804995C
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _08049950 @ =sub_080489A8
	bl sub_0804066C
	movs r0, #0x16
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080499A8
	ldr r0, _08049954 @ =sub_08048E60
	bl sub_0804066C
	ldr r0, _08049958 @ =sub_080490C0
	bl sub_0804066C
	movs r0, #0x17
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080499A8
	movs r0, #0x6c
	bl sub_08040B34
	b _080499A8
	.align 2, 0
_08049950: .4byte sub_080489A8
_08049954: .4byte sub_08048E60
_08049958: .4byte sub_080490C0
_0804995C:
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x10
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08049998
	cmp r0, #1
	ble _080499A8
	cmp r0, #2
	beq _0804999E
	b _080499A8
_08049998:
	movs r0, #0x18
	bl sub_080406E4
_0804999E:
	ldr r0, _080499F8 @ =sub_08049678
	bl sub_0804066C
	bl sub_08040B28
_080499A8:
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
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080499F8: .4byte sub_08049678

	thumb_func_start sub_080499FC
sub_080499FC: @ 0x080499FC
	push {lr}
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	movs r0, #0xf0
	lsls r0, r0, #0xd
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049B84 @ =0x001E0001
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049B88 @ =0x001E0002
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08049B8C @ =0x001E0003
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049B90 @ =0x001E0004
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049B94 @ =0x001E0005
	bl sub_08041058
	ldr r0, _08049B98 @ =0x001E0006
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08049BAC
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08049B9C @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049BA0 @ =0x001E0007
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049BA4 @ =0x001E0008
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049BA8 @ =0x001E0009
	bl sub_08041058
	b _08049DA2
	.align 2, 0
_08049B84: .4byte 0x001E0001
_08049B88: .4byte 0x001E0002
_08049B8C: .4byte 0x001E0003
_08049B90: .4byte 0x001E0004
_08049B94: .4byte 0x001E0005
_08049B98: .4byte 0x001E0006
_08049B9C: .4byte 0x0000011F
_08049BA0: .4byte 0x001E0007
_08049BA4: .4byte 0x001E0008
_08049BA8: .4byte 0x001E0009
_08049BAC:
	ldr r1, _08049DA8 @ =0x001E000A
	movs r0, #0x1d
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049BBC
	b _08049DA2
_08049BBC:
	movs r0, #0x15
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049DAC @ =0x001E000B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049DB0 @ =0x001E000C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049DB4 @ =0x001E000D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049DB8 @ =0x001E000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049DBC @ =0x001E000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049DC0 @ =0x001E0010
	bl sub_08041058
	ldr r0, _08049DC4 @ =0x001E0011
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049CE8
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049DC8 @ =0x001E0017
	bl sub_08041058
_08049CE8:
	ldr r0, _08049DCC @ =0x001E0012
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049DD0 @ =0x001E0013
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049DD4 @ =0x001E0014
	bl sub_08041058
	ldr r0, _08049DD8 @ =0x001E0015
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049DDC @ =0x001E0016
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x77
	bl sub_080406E4
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_08049DA2:
	pop {r0}
	bx r0
	.align 2, 0
_08049DA8: .4byte 0x001E000A
_08049DAC: .4byte 0x001E000B
_08049DB0: .4byte 0x001E000C
_08049DB4: .4byte 0x001E000D
_08049DB8: .4byte 0x001E000E
_08049DBC: .4byte 0x001E000F
_08049DC0: .4byte 0x001E0010
_08049DC4: .4byte 0x001E0011
_08049DC8: .4byte 0x001E0017
_08049DCC: .4byte 0x001E0012
_08049DD0: .4byte 0x001E0013
_08049DD4: .4byte 0x001E0014
_08049DD8: .4byte 0x001E0015
_08049DDC: .4byte 0x001E0016

	thumb_func_start sub_08049DE0
sub_08049DE0: @ 0x08049DE0
	push {lr}
	movs r0, #0xd2
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08049E94 @ =0x001E001A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049E98 @ =0x001E001B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049E9C @ =0x001E001C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049EA0 @ =0x001E001D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08049EA4 @ =0x001E001E
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08049E94: .4byte 0x001E001A
_08049E98: .4byte 0x001E001B
_08049E9C: .4byte 0x001E001C
_08049EA0: .4byte 0x001E001D
_08049EA4: .4byte 0x001E001E

	thumb_func_start sub_08049EA8
sub_08049EA8: @ 0x08049EA8
	push {r4, lr}
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08049FCC @ =0x001E0018
	bl sub_08041058
	ldr r0, _08049FD0 @ =0x001E0019
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049FC4
	ldr r4, _08049FD4 @ =0x0000014B
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #2
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049FD8 @ =0x001E001F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049FDC @ =0x001E0020
	bl sub_08041058
	ldr r0, _08049FE0 @ =0x001E0021
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049FC4
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049FE4 @ =0x001E0022
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049FE8 @ =0x001E0023
	bl sub_08041058
	ldr r0, _08049FEC @ =0x001E0024
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049FC4
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049FF0 @ =0x001E0025
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049FF4 @ =0x001E0026
	bl sub_08041058
	ldr r0, _08049FF8 @ =0x001E0027
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049FC4
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08049FFC @ =0x001E0028
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804A000 @ =0x001E0029
	bl sub_08041058
	ldr r0, _0804A004 @ =0x001E002A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _0804A00C
_08049FC4:
	ldr r0, _0804A008 @ =sub_08049DE0
	bl sub_0804066C
	b _0804A1BE
	.align 2, 0
_08049FCC: .4byte 0x001E0018
_08049FD0: .4byte 0x001E0019
_08049FD4: .4byte 0x0000014B
_08049FD8: .4byte 0x001E001F
_08049FDC: .4byte 0x001E0020
_08049FE0: .4byte 0x001E0021
_08049FE4: .4byte 0x001E0022
_08049FE8: .4byte 0x001E0023
_08049FEC: .4byte 0x001E0024
_08049FF0: .4byte 0x001E0025
_08049FF4: .4byte 0x001E0026
_08049FF8: .4byte 0x001E0027
_08049FFC: .4byte 0x001E0028
_0804A000: .4byte 0x001E0029
_0804A004: .4byte 0x001E002A
_0804A008: .4byte sub_08049DE0
_0804A00C:
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A1C4 @ =0x001E002B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A1C8 @ =0x001E002C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A1CC @ =0x001E002D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A1D0 @ =0x001E002E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A1D4 @ =0x001E002F
	bl sub_08041058
	ldr r0, _0804A1D8 @ =0x001E0030
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A1DC @ =0x001E0031
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A1E0 @ =0x001E0032
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A1E4 @ =0x001E0033
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r1, _0804A1E8 @ =0x00460021
	movs r0, #0x7b
	bl sub_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A1EC @ =0x001E0034
	bl sub_08041058
	movs r0, #0x78
	bl sub_080406E4
_0804A1BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A1C4: .4byte 0x001E002B
_0804A1C8: .4byte 0x001E002C
_0804A1CC: .4byte 0x001E002D
_0804A1D0: .4byte 0x001E002E
_0804A1D4: .4byte 0x001E002F
_0804A1D8: .4byte 0x001E0030
_0804A1DC: .4byte 0x001E0031
_0804A1E0: .4byte 0x001E0032
_0804A1E4: .4byte 0x001E0033
_0804A1E8: .4byte 0x00460021
_0804A1EC: .4byte 0x001E0034

	thumb_func_start sub_0804A1F0
sub_0804A1F0: @ 0x0804A1F0
	push {lr}
	movs r0, #0x79
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804A202
	b _0804A39C
_0804A202:
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x15
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A378 @ =0x001E0038
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A37C @ =0x001E0039
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A380 @ =0x001E003A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A384 @ =0x001E003B
	bl sub_08041058
	movs r0, #0x35
	movs r1, #0x15
	bl sub_08042814
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A388 @ =0x001E003D
	bl sub_08041058
	ldr r0, _0804A38C @ =0x001E003E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A390 @ =0x001E003F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A394 @ =0x001E0040
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A398 @ =0x001E0041
	bl sub_08041058
	movs r0, #0x7b
	bl sub_08040B84
	movs r0, #0x7a
	bl sub_080406BC
	b _0804A472
	.align 2, 0
_0804A378: .4byte 0x001E0038
_0804A37C: .4byte 0x001E0039
_0804A380: .4byte 0x001E003A
_0804A384: .4byte 0x001E003B
_0804A388: .4byte 0x001E003D
_0804A38C: .4byte 0x001E003E
_0804A390: .4byte 0x001E003F
_0804A394: .4byte 0x001E0040
_0804A398: .4byte 0x001E0041
_0804A39C:
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A478 @ =0x001E0042
	bl sub_08041058
	ldr r0, _0804A47C @ =0x001E0043
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A480 @ =0x001E0044
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A484 @ =0x001E0045
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804A488 @ =0x001E0046
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804A48C @ =0x001E0047
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A490 @ =0x001E0048
	bl sub_08041058
	movs r0, #0x77
	bl sub_080406FC
	movs r0, #0x78
	bl sub_080406FC
	movs r0, #0x79
	bl sub_080406FC
	movs r0, #0x7a
	bl sub_080406D0
_0804A472:
	pop {r0}
	bx r0
	.align 2, 0
_0804A478: .4byte 0x001E0042
_0804A47C: .4byte 0x001E0043
_0804A480: .4byte 0x001E0044
_0804A484: .4byte 0x001E0045
_0804A488: .4byte 0x001E0046
_0804A48C: .4byte 0x001E0047
_0804A490: .4byte 0x001E0048

	thumb_func_start sub_0804A494
sub_0804A494: @ 0x0804A494
	push {lr}
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A578 @ =0x001E0049
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A57C @ =0x001E004A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A580 @ =0x001E004B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A584 @ =0x001E004C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A588 @ =0x001E004D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A58C @ =0x001E004E
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804A578: .4byte 0x001E0049
_0804A57C: .4byte 0x001E004A
_0804A580: .4byte 0x001E004B
_0804A584: .4byte 0x001E004C
_0804A588: .4byte 0x001E004D
_0804A58C: .4byte 0x001E004E

	thumb_func_start sub_0804A590
sub_0804A590: @ 0x0804A590
	push {lr}
	bl sub_080405B8
	ldr r0, _0804A684 @ =0x0808DFAC
	bl sub_0804115C
	ldr r2, _0804A688 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x40
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _0804A68C @ =0x0808E71C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xb0
	movs r2, #0x63
	bl sub_08041894
	ldr r2, _0804A690 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r2, _0804A694 @ =0x0808E6CC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x40
	movs r2, #0x68
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x7a
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A664
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x68
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
_0804A664:
	bl sub_080407FC
	movs r0, #0x7a
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804A69C
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _0804A698 @ =sub_0804A494
	bl sub_0804066C
	b _0804A722
	.align 2, 0
_0804A684: .4byte 0x0808DFAC
_0804A688: .4byte 0x0808E7BC
_0804A68C: .4byte 0x0808E71C
_0804A690: .4byte 0x0808E6BC
_0804A694: .4byte 0x0808E6CC
_0804A698: .4byte sub_0804A494
_0804A69C:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804A6FA
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _0804A6D8 @ =sub_080499FC
	bl sub_0804066C
	movs r0, #0x77
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A722
	ldr r0, _0804A6DC @ =sub_08049EA8
	bl sub_0804066C
	movs r0, #0x78
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A6E0
	movs r0, #0x7b
	bl sub_08040B34
	b _0804A722
	.align 2, 0
_0804A6D8: .4byte sub_080499FC
_0804A6DC: .4byte sub_08049EA8
_0804A6E0:
	movs r0, #0x77
	bl sub_080406FC
	movs r0, #0x78
	bl sub_080406FC
	movs r0, #0x79
	bl sub_080406FC
	movs r0, #0x7a
	bl sub_080406D0
	b _0804A722
_0804A6FA:
	movs r0, #0x15
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804A712
	cmp r0, #1
	ble _0804A722
	cmp r0, #2
	beq _0804A718
	b _0804A722
_0804A712:
	movs r0, #0x79
	bl sub_080406E4
_0804A718:
	ldr r0, _0804A770 @ =sub_0804A1F0
	bl sub_0804066C
	bl sub_08040B28
_0804A722:
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
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0804A770: .4byte sub_0804A1F0

	thumb_func_start sub_0804A774
sub_0804A774: @ 0x0804A774
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A7C8 @ =0x000B0018
	bl sub_08041058
	ldr r0, _0804A7CC @ =0x000B0019
	bl sub_08041058
	ldr r0, _0804A7D0 @ =0x000B001A
	bl sub_08041058
	ldr r0, _0804A7D4 @ =0x000B001B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A7D8 @ =0x000B001C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	pop {r0}
	bx r0
	.align 2, 0
_0804A7C8: .4byte 0x000B0018
_0804A7CC: .4byte 0x000B0019
_0804A7D0: .4byte 0x000B001A
_0804A7D4: .4byte 0x000B001B
_0804A7D8: .4byte 0x000B001C

	thumb_func_start sub_0804A7DC
sub_0804A7DC: @ 0x0804A7DC
	push {r4, lr}
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	movs r0, #0xb0
	lsls r0, r0, #0xc
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A914 @ =0x000B0001
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A918 @ =0x000B0002
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A91C @ =0x000B0003
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A920 @ =0x000B0004
	bl sub_08041058
	ldr r0, _0804A924 @ =0x000B0005
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A938
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0xa0
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804A928 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804A92C @ =0x000B0006
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804A930 @ =0x000B0007
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804A934 @ =0x000B0008
	bl sub_08041058
	b _0804AB0A
	.align 2, 0
_0804A914: .4byte 0x000B0001
_0804A918: .4byte 0x000B0002
_0804A91C: .4byte 0x000B0003
_0804A920: .4byte 0x000B0004
_0804A924: .4byte 0x000B0005
_0804A928: .4byte 0x0000011F
_0804A92C: .4byte 0x000B0006
_0804A930: .4byte 0x000B0007
_0804A934: .4byte 0x000B0008
_0804A938:
	ldr r1, _0804A9F4 @ =0x000B0009
	movs r0, #0xa
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804A948
	b _0804AB0A
_0804A948:
	movs r0, #0x11
	bl sub_080410A8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804A9F8 @ =0x000B000A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804A9FC @ =0x000B000B
	bl sub_08041058
	ldr r0, _0804AA00 @ =0x000B000C
	bl sub_08041058
	ldr r0, _0804AA04 @ =0x000B000D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AA08 @ =0x000B000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AA0C @ =0x000B000F
	bl sub_08041058
	ldr r0, _0804AA10 @ =0x000B0010
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804AA18
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804AA14 @ =0x000B0011
	bl sub_08041058
	b _0804AA2A
	.align 2, 0
_0804A9F4: .4byte 0x000B0009
_0804A9F8: .4byte 0x000B000A
_0804A9FC: .4byte 0x000B000B
_0804AA00: .4byte 0x000B000C
_0804AA04: .4byte 0x000B000D
_0804AA08: .4byte 0x000B000E
_0804AA0C: .4byte 0x000B000F
_0804AA10: .4byte 0x000B0010
_0804AA14: .4byte 0x000B0011
_0804AA18:
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804AB10 @ =0x000B0022
	bl sub_08041058
_0804AA2A:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804AB14 @ =0x000B0012
	bl sub_08041058
	ldr r0, _0804AB18 @ =0x000B0013
	bl sub_08041058
	ldr r0, _0804AB1C @ =0x000B0014
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AB20 @ =0x000B0015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AB24 @ =0x000B0016
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AB28 @ =0x000B0017
	bl sub_08041058
	ldr r4, _0804AB2C @ =sub_0804A774
	adds r0, r4, #0
	bl sub_0804066C
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AB30 @ =0x000B001D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AB34 @ =0x000B001E
	bl sub_08041058
	adds r0, r4, #0
	bl sub_0804066C
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AB38 @ =0x000B001F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804AB3C @ =0x000B0020
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AB40 @ =0x000B0021
	bl sub_08041058
	movs r0, #0x29
	bl sub_080406E4
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_0804AB0A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB10: .4byte 0x000B0022
_0804AB14: .4byte 0x000B0012
_0804AB18: .4byte 0x000B0013
_0804AB1C: .4byte 0x000B0014
_0804AB20: .4byte 0x000B0015
_0804AB24: .4byte 0x000B0016
_0804AB28: .4byte 0x000B0017
_0804AB2C: .4byte sub_0804A774
_0804AB30: .4byte 0x000B001D
_0804AB34: .4byte 0x000B001E
_0804AB38: .4byte 0x000B001F
_0804AB3C: .4byte 0x000B0020
_0804AB40: .4byte 0x000B0021

	thumb_func_start sub_0804AB44
sub_0804AB44: @ 0x0804AB44
	push {lr}
	bl sub_08040FE8
	movs r0, #0x2a
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804AC14
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804ABF0 @ =0x000B0023
	bl sub_08041058
	ldr r0, _0804ABF4 @ =0x000B0013
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804ABF8 @ =0x000B0024
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804ABFC @ =0x000B0025
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AC00 @ =0x000B001E
	bl sub_08041058
	ldr r0, _0804AC04 @ =sub_0804A774
	bl sub_0804066C
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AC08 @ =0x000B001F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804AC0C @ =0x000B0020
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AC10 @ =0x000B0021
	bl sub_08041058
	b _0804ACE4
	.align 2, 0
_0804ABF0: .4byte 0x000B0023
_0804ABF4: .4byte 0x000B0013
_0804ABF8: .4byte 0x000B0024
_0804ABFC: .4byte 0x000B0025
_0804AC00: .4byte 0x000B001E
_0804AC04: .4byte sub_0804A774
_0804AC08: .4byte 0x000B001F
_0804AC0C: .4byte 0x000B0020
_0804AC10: .4byte 0x000B0021
_0804AC14:
	movs r0, #2
	movs r1, #0xa8
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804ACE8 @ =0x000B0050
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804ACEC @ =0x000B0051
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804ACF0 @ =0x000B0052
	bl sub_08041058
	ldr r0, _0804ACF4 @ =0x000B004B
	bl sub_08041058
	ldr r0, _0804ACF8 @ =0x000B0053
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804ACFC @ =0x000B0054
	bl sub_08041058
	movs r0, #0x29
	bl sub_080406FC
	movs r0, #0x2a
	bl sub_080406FC
	movs r0, #0x2b
	bl sub_080406FC
	movs r0, #0x2c
	bl sub_080406FC
	movs r0, #0x2d
	bl sub_080406D0
_0804ACE4:
	pop {r0}
	bx r0
	.align 2, 0
_0804ACE8: .4byte 0x000B0050
_0804ACEC: .4byte 0x000B0051
_0804ACF0: .4byte 0x000B0052
_0804ACF4: .4byte 0x000B004B
_0804ACF8: .4byte 0x000B0053
_0804ACFC: .4byte 0x000B0054

	thumb_func_start sub_0804AD00
sub_0804AD00: @ 0x0804AD00
	push {lr}
	bl sub_08040FE8
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #2
	movs r1, #0xa0
	movs r2, #0x34
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804AE5C @ =0x00000129
	bl sub_080410E0
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AE60 @ =0x000B0032
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AE64 @ =0x000B0033
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AE68 @ =0x000B0034
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _0804AE6C @ =0x000B0035
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _0804AE70 @ =0x000B0036
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AE74 @ =0x000B0037
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AE78 @ =0x000B0038
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r1, _0804AE7C @ =0x00460029
	movs r0, #0x6e
	bl sub_080427E0
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AE80 @ =0x000B0039
	bl sub_08041058
	bl sub_08040BB8
	ldr r0, _0804AE84 @ =0x000B003A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AE88 @ =0x000B003B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AE8C @ =0x000B003C
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804AE5C: .4byte 0x00000129
_0804AE60: .4byte 0x000B0032
_0804AE64: .4byte 0x000B0033
_0804AE68: .4byte 0x000B0034
_0804AE6C: .4byte 0x000B0035
_0804AE70: .4byte 0x000B0036
_0804AE74: .4byte 0x000B0037
_0804AE78: .4byte 0x000B0038
_0804AE7C: .4byte 0x00460029
_0804AE80: .4byte 0x000B0039
_0804AE84: .4byte 0x000B003A
_0804AE88: .4byte 0x000B003B
_0804AE8C: .4byte 0x000B003C

	thumb_func_start sub_0804AE90
sub_0804AE90: @ 0x0804AE90
	push {lr}
	movs r0, #0x2c
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804AEA2
	b _0804AFEC
_0804AEA2:
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x11
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AFC4 @ =0x000B003D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AFC8 @ =0x000B003E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AFCC @ =0x000B003F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AFD0 @ =0x000B0040
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xc
	movs r1, #0x11
	bl sub_08042814
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AFD4 @ =0x000B0041
	bl sub_08041058
	ldr r0, _0804AFD8 @ =0x000B0042
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AFDC @ =0x000B0043
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AFE0 @ =0x000B0044
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804AFE4 @ =0x000B0045
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804AFE8 @ =0x000B0046
	bl sub_08041058
	movs r0, #0x6e
	bl sub_08040B84
	movs r0, #0x2d
	bl sub_080406BC
	b _0804B0F2
	.align 2, 0
_0804AFC4: .4byte 0x000B003D
_0804AFC8: .4byte 0x000B003E
_0804AFCC: .4byte 0x000B003F
_0804AFD0: .4byte 0x000B0040
_0804AFD4: .4byte 0x000B0041
_0804AFD8: .4byte 0x000B0042
_0804AFDC: .4byte 0x000B0043
_0804AFE0: .4byte 0x000B0044
_0804AFE4: .4byte 0x000B0045
_0804AFE8: .4byte 0x000B0046
_0804AFEC:
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804B0F8 @ =0x000B0047
	bl sub_08041058
	ldr r0, _0804B0FC @ =0x000B0048
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804B100 @ =0x000B0049
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804B104 @ =0x000B004A
	bl sub_08041058
	ldr r0, _0804B108 @ =0x000B004B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804B10C @ =0x000B004C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804B110 @ =0x000B004D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804B114 @ =0x000B004E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804B118 @ =0x000B004F
	bl sub_08041058
	movs r0, #0x29
	bl sub_080406FC
	movs r0, #0x2a
	bl sub_080406FC
	movs r0, #0x2b
	bl sub_080406FC
	movs r0, #0x2c
	bl sub_080406FC
	movs r0, #0x2d
	bl sub_080406D0
_0804B0F2:
	pop {r0}
	bx r0
	.align 2, 0
_0804B0F8: .4byte 0x000B0047
_0804B0FC: .4byte 0x000B0048
_0804B100: .4byte 0x000B0049
_0804B104: .4byte 0x000B004A
_0804B108: .4byte 0x000B004B
_0804B10C: .4byte 0x000B004C
_0804B110: .4byte 0x000B004D
_0804B114: .4byte 0x000B004E
_0804B118: .4byte 0x000B004F

	thumb_func_start sub_0804B11C
sub_0804B11C: @ 0x0804B11C
	push {lr}
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804B1A0 @ =0x000B0055
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804B1A4 @ =0x000B0056
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804B1A8 @ =0x000B0057
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804B1AC @ =0x000B0058
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804B1B0 @ =0x000B0059
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804B1A0: .4byte 0x000B0055
_0804B1A4: .4byte 0x000B0056
_0804B1A8: .4byte 0x000B0057
_0804B1AC: .4byte 0x000B0058
_0804B1B0: .4byte 0x000B0059

	thumb_func_start sub_0804B1B4
sub_0804B1B4: @ 0x0804B1B4
	push {lr}
	bl sub_080405B8
	ldr r0, _0804B234 @ =0x0808DFD4
	bl sub_0804115C
	ldr r2, _0804B238 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x38
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _0804B23C @ =0x0808E71C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xa0
	movs r2, #0x63
	bl sub_08041894
	ldr r2, _0804B240 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x2d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B248
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _0804B244 @ =sub_0804B11C
	bl sub_0804066C
	b _0804B2CC
	.align 2, 0
_0804B234: .4byte 0x0808DFD4
_0804B238: .4byte 0x0808E7BC
_0804B23C: .4byte 0x0808E71C
_0804B240: .4byte 0x0808E6BC
_0804B244: .4byte sub_0804B11C
_0804B248:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B2A4
	movs r0, #0x29
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B270
	movs r0, #0x19
	bl sub_080410A8
	ldr r0, _0804B26C @ =sub_0804A7DC
	bl sub_0804066C
	b _0804B2CC
	.align 2, 0
_0804B26C: .4byte sub_0804A7DC
_0804B270:
	movs r0, #0x11
	bl sub_080410A8
	movs r0, #0x2b
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B290
	ldr r0, _0804B28C @ =sub_0804AB44
	bl sub_0804066C
	b _0804B2CC
	.align 2, 0
_0804B28C: .4byte sub_0804AB44
_0804B290:
	ldr r0, _0804B2A0 @ =sub_0804AD00
	bl sub_0804066C
	movs r0, #0x6e
	bl sub_08040B34
	b _0804B2CC
	.align 2, 0
_0804B2A0: .4byte sub_0804AD00
_0804B2A4:
	movs r0, #0x11
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804B2BC
	cmp r0, #1
	ble _0804B2CC
	cmp r0, #2
	beq _0804B2C2
	b _0804B2CC
_0804B2BC:
	movs r0, #0x2c
	bl sub_080406E4
_0804B2C2:
	ldr r0, _0804B30C @ =sub_0804AE90
	bl sub_0804066C
	bl sub_08040B28
_0804B2CC:
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
	pop {r0}
	bx r0
	.align 2, 0
_0804B30C: .4byte sub_0804AE90

	thumb_func_start sub_0804B310
sub_0804B310: @ 0x0804B310
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	pop {r0}
	bx r0

	thumb_func_start sub_0804B430
sub_0804B430: @ 0x0804B430
	push {lr}
	bl sub_08040FE8
	movs r0, #0x31
	bl sub_08041018
	ldr r0, _0804B460 @ =0x00010026
	bl sub_08041058
_0804B442:
	bl sub_08041048
	ldr r0, _0804B464 @ =0x00010027
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804B468
	cmp r0, #1
	beq _0804B518
	b _0804B564
	.align 2, 0
_0804B460: .4byte 0x00010026
_0804B464: .4byte 0x00010027
_0804B468:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x31
	bl sub_08041018
	ldr r0, _0804B500 @ =0x00010028
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804B504 @ =0x00010029
	bl sub_08041058
	ldr r0, _0804B508 @ =0x0001002A
	bl sub_08041058
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x38
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804B50C @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x28
	bl sub_08041894
	ldr r0, _0804B510 @ =0x0001002B
	bl sub_08041058
	bl sub_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0804B4F8
	ldr r0, _0804B514 @ =0x0001002C
	bl sub_08041058
_0804B4F8:
	movs r0, #1
	bl sub_080406E4
	b _0804B442
	.align 2, 0
_0804B500: .4byte 0x00010028
_0804B504: .4byte 0x00010029
_0804B508: .4byte 0x0001002A
_0804B50C: .4byte 0x00000129
_0804B510: .4byte 0x0001002B
_0804B514: .4byte 0x0001002C
_0804B518:
	movs r0, #0x31
	bl sub_08041018
	ldr r0, _0804B55C @ =0x0001002D
	bl sub_08041058
	bl sub_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0804B442
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _0804B560 @ =0x0001002E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	b _0804B442
	.align 2, 0
_0804B55C: .4byte 0x0001002D
_0804B560: .4byte 0x0001002E
_0804B564:
	ldr r0, _0804B57C @ =0x0001002F
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B578
	b _0804B442
_0804B578:
	pop {r0}
	bx r0
	.align 2, 0
_0804B57C: .4byte 0x0001002F

	thumb_func_start sub_0804B580
sub_0804B580: @ 0x0804B580
	push {lr}
	bl sub_08040FE8
	movs r0, #0x31
	bl sub_08041018
	ldr r0, _0804B5C0 @ =0x00070018
	bl sub_08041058
_0804B592:
	bl sub_08041008
	ldr r0, _0804B5C4 @ =0x00070019
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804B5CC
	cmp r0, #1
	beq _0804B66C
	ldr r0, _0804B5C8 @ =0x00070023
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804B592
	b _0804B6D4
	.align 2, 0
_0804B5C0: .4byte 0x00070018
_0804B5C4: .4byte 0x00070019
_0804B5C8: .4byte 0x00070023
_0804B5CC:
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x28
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0xb4
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x31
	bl sub_08041018
	ldr r0, _0804B654 @ =0x0007001A
	bl sub_08041058
	ldr r0, _0804B658 @ =0x0007001B
	bl sub_08041058
	movs r0, #1
	movs r1, #0x88
	movs r2, #0x30
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804B65C @ =0x0007001C
	bl sub_08041058
	ldr r0, _0804B660 @ =0x0007001D
	bl sub_08041058
	ldr r0, _0804B664 @ =0x0007001E
	bl sub_08041058
	ldr r0, _0804B668 @ =0x0007001F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0x1b
	bl sub_080406E4
	b _0804B592
	.align 2, 0
_0804B654: .4byte 0x0007001A
_0804B658: .4byte 0x0007001B
_0804B65C: .4byte 0x0007001C
_0804B660: .4byte 0x0007001D
_0804B664: .4byte 0x0007001E
_0804B668: .4byte 0x0007001F
_0804B66C:
	bl sub_08040FE8
	movs r0, #0x31
	bl sub_08041018
	ldr r0, _0804B6C8 @ =0x00070020
	bl sub_08041058
	ldr r0, _0804B6CC @ =0x00070021
	bl sub_08041058
	bl sub_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0804B690
	b _0804B592
_0804B690:
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x28
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _0804B6D0 @ =0x00070022
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	b _0804B592
	.align 2, 0
_0804B6C8: .4byte 0x00070020
_0804B6CC: .4byte 0x00070021
_0804B6D0: .4byte 0x00070022
_0804B6D4:
	movs r0, #0
	bl sub_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804B6E0
sub_0804B6E0: @ 0x0804B6E0
	push {lr}
	bl sub_08040FE8
	movs r0, #0x31
	bl sub_08041018
	movs r0, #0x90
	lsls r0, r0, #0xc
	bl sub_08041058
	ldr r0, _0804B738 @ =0x00090001
	bl sub_08041058
	ldr r0, _0804B73C @ =0x00090002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B744
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _0804B740 @ =0x00090003
	bl sub_08041058
	b _0804B7CE
	.align 2, 0
_0804B738: .4byte 0x00090001
_0804B73C: .4byte 0x00090002
_0804B740: .4byte 0x00090003
_0804B744:
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r1, _0804B7D4 @ =0x00090005
	movs r0, #8
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804B7CE
	movs r0, #0x11
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x31
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804B7D8 @ =0x00000123
	bl sub_080410E0
	bl sub_0804B310
	ldr r0, _0804B7DC @ =0x00090006
	bl sub_08041058
	bl sub_0804B310
	ldr r0, _0804B7E0 @ =0x00090007
	bl sub_08041058
	ldr r0, _0804B7E4 @ =0x00090008
	bl sub_08041058
	bl sub_0804B310
	ldr r0, _0804B7E8 @ =0x00090009
	bl sub_08041058
	movs r0, #0x43
	movs r1, #0x11
	bl sub_08042814
	movs r0, #0x31
	bl sub_08041018
	ldr r0, _0804B7EC @ =0x0009000A
	bl sub_08041058
	ldr r0, _0804B7F0 @ =0x0009000B
	bl sub_08041058
	movs r0, #0x24
	bl sub_080406BC
	movs r0, #0
	bl sub_0802D7CC
_0804B7CE:
	pop {r0}
	bx r0
	.align 2, 0
_0804B7D4: .4byte 0x00090005
_0804B7D8: .4byte 0x00000123
_0804B7DC: .4byte 0x00090006
_0804B7E0: .4byte 0x00090007
_0804B7E4: .4byte 0x00090008
_0804B7E8: .4byte 0x00090009
_0804B7EC: .4byte 0x0009000A
_0804B7F0: .4byte 0x0009000B

	thumb_func_start sub_0804B7F4
sub_0804B7F4: @ 0x0804B7F4
	push {lr}
	bl sub_08040FE8
	movs r0, #0x31
	bl sub_08041018
	ldr r0, _0804B818 @ =0x0009000C
	bl sub_08041058
	ldr r0, _0804B81C @ =0x0009000D
	bl sub_08041058
	ldr r0, _0804B820 @ =0x0009000E
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804B818: .4byte 0x0009000C
_0804B81C: .4byte 0x0009000D
_0804B820: .4byte 0x0009000E

	thumb_func_start sub_0804B824
sub_0804B824: @ 0x0804B824
	push {lr}
	bl sub_08040FE8
	movs r0, #0x31
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804B860 @ =0x00000123
	bl sub_080410E0
	ldr r0, _0804B864 @ =0x0009000F
	bl sub_08041058
	ldr r0, _0804B868 @ =0x00090010
	bl sub_08041058
	ldr r0, _0804B86C @ =0x00090011
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804B860: .4byte 0x00000123
_0804B864: .4byte 0x0009000F
_0804B868: .4byte 0x00090010
_0804B86C: .4byte 0x00090011

	thumb_func_start sub_0804B870
sub_0804B870: @ 0x0804B870
	push {r4, lr}
	sub sp, #0xc
	bl sub_080405B8
	ldr r0, _0804B8FC @ =0x0808DFFC
	bl sub_0804115C
	ldr r2, _0804B900 @ =0x0808EA1C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08041894
	mov r1, sp
	ldr r0, _0804B904 @ =0x0808DC34
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	ldr r2, _0804B908 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x28
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B910
	movs r0, #1
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B910
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _0804B90C @ =sub_0804B430
	bl sub_0804066C
	b _0804B97E
	.align 2, 0
_0804B8FC: .4byte 0x0808DFFC
_0804B900: .4byte 0x0808EA1C
_0804B904: .4byte 0x0808DC34
_0804B908: .4byte 0x0808E6BC
_0804B90C: .4byte sub_0804B430
_0804B910:
	movs r0, #0x1a
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B93C
	movs r0, #0x1b
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B93C
	movs r0, #0x11
	bl sub_080410A8
	ldr r0, _0804B938 @ =sub_0804B580
	bl sub_0804066C
	b _0804B97E
	.align 2, 0
_0804B938: .4byte sub_0804B580
_0804B93C:
	movs r0, #0x1a
	bl sub_080410A8
	bl sub_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0804B95C
	ldr r0, _0804B958 @ =sub_0804B7F4
	bl sub_0804066C
	b _0804B97E
	.align 2, 0
_0804B958: .4byte sub_0804B7F4
_0804B95C:
	movs r0, #0x24
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B978
	ldr r0, _0804B974 @ =sub_0804B824
	bl sub_0804066C
	b _0804B97E
	.align 2, 0
_0804B974: .4byte sub_0804B824
_0804B978:
	ldr r0, _0804B9B8 @ =sub_0804B6E0
	bl sub_0804066C
_0804B97E:
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
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B9B8: .4byte sub_0804B6E0

	thumb_func_start sub_0804B9BC
sub_0804B9BC: @ 0x0804B9BC
	push {lr}
	bl sub_08040FE8
	movs r0, #0x24
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xd8
	lsls r0, r0, #0xd
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804BA18 @ =0x001B0001
	bl sub_08041058
	ldr r0, _0804BA1C @ =0x001B0002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BA24
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x24
	bl sub_08040690
	ldr r0, _0804BA20 @ =0x001B0003
	bl sub_08041058
	b _0804BB46
	.align 2, 0
_0804BA18: .4byte 0x001B0001
_0804BA1C: .4byte 0x001B0002
_0804BA20: .4byte 0x001B0003
_0804BA24:
	ldr r1, _0804BAC4 @ =0x001B0004
	movs r0, #0x1a
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804BA34
	b _0804BB46
_0804BA34:
	movs r0, #0x15
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x24
	bl sub_08041018
	ldr r0, _0804BAC8 @ =0x001B0005
	bl sub_08041058
	ldr r0, _0804BACC @ =0x001B0006
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804BAD0 @ =0x001B0007
	bl sub_08041058
	ldr r0, _0804BAD4 @ =0x001B0008
	bl sub_08041058
	ldr r0, _0804BAD8 @ =0x001B0009
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x24
	bl sub_08040690
	ldr r0, _0804BADC @ =0x001B000A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804BAE0 @ =0x001B000B
	bl sub_08041058
	ldr r0, _0804BAE4 @ =0x001B000C
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804BAEC
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x24
	bl sub_08040690
	ldr r0, _0804BAE8 @ =0x001B000D
	bl sub_08041058
	b _0804BB04
	.align 2, 0
_0804BAC4: .4byte 0x001B0004
_0804BAC8: .4byte 0x001B0005
_0804BACC: .4byte 0x001B0006
_0804BAD0: .4byte 0x001B0007
_0804BAD4: .4byte 0x001B0008
_0804BAD8: .4byte 0x001B0009
_0804BADC: .4byte 0x001B000A
_0804BAE0: .4byte 0x001B000B
_0804BAE4: .4byte 0x001B000C
_0804BAE8: .4byte 0x001B000D
_0804BAEC:
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x24
	bl sub_08040690
	ldr r0, _0804BB4C @ =0x001B0012
	bl sub_08041058
_0804BB04:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804BB50 @ =0x001B000E
	bl sub_08041058
	ldr r0, _0804BB54 @ =0x001B000F
	bl sub_08041058
	ldr r0, _0804BB58 @ =0x001B0010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x24
	bl sub_08040690
	ldr r0, _0804BB5C @ =0x001B0011
	bl sub_08041058
	movs r0, #0x6a
	bl sub_080406E4
	movs r0, #0x1c
	bl sub_0802D7CC
_0804BB46:
	pop {r0}
	bx r0
	.align 2, 0
_0804BB4C: .4byte 0x001B0012
_0804BB50: .4byte 0x001B000E
_0804BB54: .4byte 0x001B000F
_0804BB58: .4byte 0x001B0010
_0804BB5C: .4byte 0x001B0011

	thumb_func_start sub_0804BB60
sub_0804BB60: @ 0x0804BB60
	push {lr}
	bl sub_08040FE8
	movs r0, #0x24
	bl sub_08041018
	ldr r0, _0804BB9C @ =0x001B0013
	bl sub_08041058
	ldr r0, _0804BBA0 @ =0x001B0014
	bl sub_08041058
	ldr r0, _0804BBA4 @ =0x001B0015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x24
	bl sub_08040690
	ldr r0, _0804BBA8 @ =0x001B0011
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804BB9C: .4byte 0x001B0013
_0804BBA0: .4byte 0x001B0014
_0804BBA4: .4byte 0x001B0015
_0804BBA8: .4byte 0x001B0011

	thumb_func_start sub_0804BBAC
sub_0804BBAC: @ 0x0804BBAC
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x24
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804BC48 @ =0x001B0027
	bl sub_08041058
	ldr r0, _0804BC4C @ =0x001B0028
	bl sub_08041058
	ldr r0, _0804BC50 @ =0x001B0029
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804BC54 @ =0x001B002A
	bl sub_08041058
	movs r0, #0x18
	movs r1, #0x15
	bl sub_08042814
	movs r0, #0x24
	bl sub_08041018
	ldr r0, _0804BC58 @ =0x001B002B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804BC5C @ =0x001B002C
	bl sub_08041058
	ldr r0, _0804BC60 @ =0x001B002D
	bl sub_08041058
	movs r0, #0x6d
	bl sub_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_0804BC48: .4byte 0x001B0027
_0804BC4C: .4byte 0x001B0028
_0804BC50: .4byte 0x001B0029
_0804BC54: .4byte 0x001B002A
_0804BC58: .4byte 0x001B002B
_0804BC5C: .4byte 0x001B002C
_0804BC60: .4byte 0x001B002D

	thumb_func_start sub_0804BC64
sub_0804BC64: @ 0x0804BC64
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x24
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x24
	bl sub_08041018
	ldr r0, _0804BCB0 @ =0x001B002E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804BCB4 @ =0x001B002F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804BCB8 @ =0x001B0030
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804BCB0: .4byte 0x001B002E
_0804BCB4: .4byte 0x001B002F
_0804BCB8: .4byte 0x001B0030

	thumb_func_start sub_0804BCBC
sub_0804BCBC: @ 0x0804BCBC
	push {lr}
	bl sub_080405B8
	ldr r0, _0804BD50 @ =0x0808E024
	bl sub_0804115C
	ldr r2, _0804BD54 @ =0x0808E94C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7c
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _0804BD58 @ =0x0808E6CC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x88
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r2, _0804BD5C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x46
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x6d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804BD64
	movs r0, #0x1a
	bl sub_080410A8
	ldr r0, _0804BD60 @ =sub_0804BC64
	bl sub_0804066C
	b _0804BDAC
	.align 2, 0
_0804BD50: .4byte 0x0808E024
_0804BD54: .4byte 0x0808E94C
_0804BD58: .4byte 0x0808E6CC
_0804BD5C: .4byte 0x0808E6BC
_0804BD60: .4byte sub_0804BC64
_0804BD64:
	movs r0, #0x6a
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804BDA0
	movs r0, #0x15
	bl sub_080410A8
	movs r0, #0x6b
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804BD94
	ldr r0, _0804BD90 @ =sub_0804BBAC
	bl sub_0804066C
	b _0804BDAC
	.align 2, 0
_0804BD90: .4byte sub_0804BBAC
_0804BD94:
	ldr r0, _0804BD9C @ =sub_0804BB60
	bl sub_0804066C
	b _0804BDAC
	.align 2, 0
_0804BD9C: .4byte sub_0804BB60
_0804BDA0:
	movs r0, #0x1a
	bl sub_080410A8
	ldr r0, _0804BDEC @ =sub_0804B9BC
	bl sub_0804066C
_0804BDAC:
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
	pop {r0}
	bx r0
	.align 2, 0
_0804BDEC: .4byte sub_0804B9BC

	thumb_func_start sub_0804BDF0
sub_0804BDF0: @ 0x0804BDF0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804BE58 @ =0x0000021A
	bl sub_080410E0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	bl sub_08040690
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	bl sub_08040690
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	bl sub_08040690
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	bl sub_08040690
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	bl sub_08040690
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	bl sub_08040690
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BE58: .4byte 0x0000021A

	thumb_func_start sub_0804BE5C
sub_0804BE5C: @ 0x0804BE5C
	push {r4, lr}
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x48
	bl sub_08041894
	bl sub_080407FC
	ldr r0, _0804BF80 @ =0x0000011D
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	movs r4, #0x96
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	movs r0, #0xa0
	lsls r0, r0, #0xd
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804BF84 @ =0x00140001
	bl sub_08041058
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804BF88 @ =0x00140002
	bl sub_08041058
	ldr r0, _0804BF8C @ =0x00140003
	bl sub_08041058
	ldr r0, _0804BF90 @ =0x00140004
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BFA4
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804BF94 @ =0x00140005
	bl sub_08041058
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	subs r4, #8
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804BF98 @ =0x00140006
	bl sub_08041058
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804BF9C @ =0x00140007
	bl sub_08041058
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804BFA0 @ =0x00140008
	bl sub_08041058
	b _0804C13E
	.align 2, 0
_0804BF80: .4byte 0x0000011D
_0804BF84: .4byte 0x00140001
_0804BF88: .4byte 0x00140002
_0804BF8C: .4byte 0x00140003
_0804BF90: .4byte 0x00140004
_0804BF94: .4byte 0x00140005
_0804BF98: .4byte 0x00140006
_0804BF9C: .4byte 0x00140007
_0804BFA0: .4byte 0x00140008
_0804BFA4:
	ldr r1, _0804C0C0 @ =0x00140009
	movs r0, #0x13
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804BFB4
	b _0804C13E
_0804BFB4:
	movs r0, #0x13
	bl sub_080410A8
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804C0C4 @ =0x0014000A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804C0C8 @ =0x0014000C
	bl sub_08041058
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804C0CC @ =0x0014000D
	bl sub_08041058
	ldr r0, _0804C0D0 @ =0x0014000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804C0D4 @ =0x0014000F
	bl sub_08041058
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804C0D8 @ =0x00140010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804C0DC @ =0x00140011
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804C0E0 @ =0x00140012
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804C0E4 @ =0x00140013
	bl sub_08041058
	ldr r0, _0804C0E8 @ =0x00140014
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804C0F0
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _0804C0EC @ =0x00140015
	bl sub_08041058
	b _0804C114
	.align 2, 0
_0804C0C0: .4byte 0x00140009
_0804C0C4: .4byte 0x0014000A
_0804C0C8: .4byte 0x0014000C
_0804C0CC: .4byte 0x0014000D
_0804C0D0: .4byte 0x0014000E
_0804C0D4: .4byte 0x0014000F
_0804C0D8: .4byte 0x00140010
_0804C0DC: .4byte 0x00140011
_0804C0E0: .4byte 0x00140012
_0804C0E4: .4byte 0x00140013
_0804C0E8: .4byte 0x00140014
_0804C0EC: .4byte 0x00140015
_0804C0F0:
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804C144 @ =0x00140019
	bl sub_08041058
	ldr r0, _0804C148 @ =0x0014001A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
_0804C114:
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804C14C @ =0x00140016
	bl sub_08041058
	ldr r0, _0804C150 @ =0x00140017
	bl sub_08041058
	ldr r0, _0804C154 @ =0x00140018
	bl sub_08041058
	movs r0, #0x4e
	bl sub_080406E4
	movs r0, #9
	bl sub_0802D7CC
	movs r0, #0x2e
	bl sub_0802D7CC
_0804C13E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C144: .4byte 0x00140019
_0804C148: .4byte 0x0014001A
_0804C14C: .4byte 0x00140016
_0804C150: .4byte 0x00140017
_0804C154: .4byte 0x00140018

	thumb_func_start sub_0804C158
sub_0804C158: @ 0x0804C158
	push {lr}
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804C1A8 @ =0x0014001B
	bl sub_08041058
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804C1AC @ =0x0014001C
	bl sub_08041058
	ldr r0, _0804C1B0 @ =0x0014001D
	bl sub_08041058
	ldr r0, _0804C1B4 @ =0x0014001E
	bl sub_08041058
	ldr r0, _0804C1B8 @ =0x0014001F
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804C1A8: .4byte 0x0014001B
_0804C1AC: .4byte 0x0014001C
_0804C1B0: .4byte 0x0014001D
_0804C1B4: .4byte 0x0014001E
_0804C1B8: .4byte 0x0014001F

	thumb_func_start sub_0804C1BC
sub_0804C1BC: @ 0x0804C1BC
	push {lr}
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #3
	bl sub_0804BDF0
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	bl sub_0804CA08
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	bl sub_0804BDF0
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	bl sub_0804CA08
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #4
	bl sub_0804BDF0
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #4
	bl sub_0804CA08
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #6
	bl sub_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804C358 @ =0x0014002C
	bl sub_08041058
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804C35C @ =0x0014002D
	bl sub_08041058
	ldr r0, _0804C360 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x68
	movs r3, #0xc
	bl sub_08041938
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804C364 @ =0x0014002E
	bl sub_08041058
	ldr r0, _0804C368 @ =0x0014002F
	bl sub_08041058
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	bl sub_0804BDF0
	movs r0, #3
	bl sub_0804BDF0
	movs r0, #4
	bl sub_0804BDF0
	movs r0, #2
	bl sub_08041DB8
	movs r0, #3
	bl sub_08041DB8
	movs r0, #4
	bl sub_08041DB8
	movs r0, #0x78
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804C36C @ =0x00140030
	bl sub_08041058
	ldr r0, _0804C370 @ =0x00140031
	bl sub_08041058
	movs r0, #2
	movs r1, #0x13
	bl sub_08042814
	movs r0, #0x10
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804C374 @ =0x00140032
	bl sub_08041058
	movs r0, #0x51
	bl sub_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_0804C358: .4byte 0x0014002C
_0804C35C: .4byte 0x0014002D
_0804C360: .4byte 0x0000011B
_0804C364: .4byte 0x0014002E
_0804C368: .4byte 0x0014002F
_0804C36C: .4byte 0x00140030
_0804C370: .4byte 0x00140031
_0804C374: .4byte 0x00140032

	thumb_func_start sub_0804C378
sub_0804C378: @ 0x0804C378
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x10
	bl sub_08041018
	ldr r0, _0804C3AC @ =0x00140033
	bl sub_08041058
	ldr r0, _0804C3B0 @ =0x00140034
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804C3B4 @ =0x00140035
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804C3AC: .4byte 0x00140033
_0804C3B0: .4byte 0x00140034
_0804C3B4: .4byte 0x00140035

	thumb_func_start sub_0804C3B8
sub_0804C3B8: @ 0x0804C3B8
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _0804C4A0 @ =0x0808E04C
	bl sub_0804115C
	ldr r2, _0804C4A4 @ =0x0808E82C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x60
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _0804C4A8 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	ldr r4, _0804C4AC @ =0x0808E77C
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x38
	movs r2, #0x30
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x80
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xa4
	movs r2, #0x38
	bl sub_08041894
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	ldr r2, _0804C4B0 @ =0x0808E6BC
	movs r0, #5
	movs r1, #0
	bl sub_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #0x64
	movs r2, #0x48
	bl sub_08041894
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	movs r0, #0x51
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C4B8
	movs r0, #0x1a
	bl sub_080410A8
	ldr r0, _0804C4B4 @ =sub_0804C378
	bl sub_0804066C
	b _0804C500
	.align 2, 0
_0804C4A0: .4byte 0x0808E04C
_0804C4A4: .4byte 0x0808E82C
_0804C4A8: .4byte 0x0808EA6C
_0804C4AC: .4byte 0x0808E77C
_0804C4B0: .4byte 0x0808E6BC
_0804C4B4: .4byte sub_0804C378
_0804C4B8:
	movs r0, #0x4e
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C4F4
	movs r0, #0x13
	bl sub_080410A8
	movs r0, #0x4f
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C4E8
	ldr r0, _0804C4E4 @ =sub_0804C1BC
	bl sub_0804066C
	b _0804C500
	.align 2, 0
_0804C4E4: .4byte sub_0804C1BC
_0804C4E8:
	ldr r0, _0804C4F0 @ =sub_0804C158
	bl sub_0804066C
	b _0804C500
	.align 2, 0
_0804C4F0: .4byte sub_0804C158
_0804C4F4:
	movs r0, #0x1a
	bl sub_080410A8
	ldr r0, _0804C56C @ =sub_0804BE5C
	bl sub_0804066C
_0804C500:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #3
	bl sub_080417E0
	movs r0, #4
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C56C: .4byte sub_0804BE5C

	thumb_func_start sub_0804C570
sub_0804C570: @ 0x0804C570
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x52
	bl sub_08041894
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804C634 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x15
	bl sub_08041018
	movs r0, #0xe8
	lsls r0, r0, #0xd
	bl sub_08041058
	ldr r0, _0804C638 @ =0x001D0001
	bl sub_08041058
	ldr r0, _0804C63C @ =0x001D0002
	bl sub_08041058
	ldr r0, _0804C640 @ =0x001D0003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804C648
	movs r0, #4
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x42
	bl sub_08041894
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _0804C644 @ =0x001D0004
	bl sub_08041058
	b _0804C704
	.align 2, 0
_0804C634: .4byte 0x00000129
_0804C638: .4byte 0x001D0001
_0804C63C: .4byte 0x001D0002
_0804C640: .4byte 0x001D0003
_0804C644: .4byte 0x001D0004
_0804C648:
	ldr r1, _0804C6C4 @ =0x001D0005
	movs r0, #0x1c
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804C704
	movs r0, #0x15
	bl sub_080410A8
	movs r0, #4
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x42
	bl sub_08041894
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #0xb4
	bl sub_08040690
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x15
	bl sub_08041018
	ldr r0, _0804C6C8 @ =0x001D0006
	bl sub_08041058
	ldr r0, _0804C6CC @ =0x001D0007
	bl sub_08041058
	ldr r0, _0804C6D0 @ =0x001D0008
	bl sub_08041058
	ldr r0, _0804C6D4 @ =0x001D0009
	bl sub_08041058
	ldr r0, _0804C6D8 @ =0x001D000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804C6E0
	ldr r0, _0804C6DC @ =0x001D000B
	bl sub_08041058
	b _0804C6E6
	.align 2, 0
_0804C6C4: .4byte 0x001D0005
_0804C6C8: .4byte 0x001D0006
_0804C6CC: .4byte 0x001D0007
_0804C6D0: .4byte 0x001D0008
_0804C6D4: .4byte 0x001D0009
_0804C6D8: .4byte 0x001D000A
_0804C6DC: .4byte 0x001D000B
_0804C6E0:
	ldr r0, _0804C708 @ =0x001D000F
	bl sub_08041058
_0804C6E6:
	ldr r0, _0804C70C @ =0x001D000C
	bl sub_08041058
	ldr r0, _0804C710 @ =0x001D000D
	bl sub_08041058
	ldr r0, _0804C714 @ =0x001D000E
	bl sub_08041058
	movs r0, #0x73
	bl sub_080406E4
	movs r0, #6
	bl sub_0802D7CC
_0804C704:
	pop {r0}
	bx r0
	.align 2, 0
_0804C708: .4byte 0x001D000F
_0804C70C: .4byte 0x001D000C
_0804C710: .4byte 0x001D000D
_0804C714: .4byte 0x001D000E

	thumb_func_start sub_0804C718
sub_0804C718: @ 0x0804C718
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x15
	bl sub_08041018
	ldr r0, _0804C74C @ =0x001D0010
	bl sub_08041058
	ldr r0, _0804C750 @ =0x001D000D
	bl sub_08041058
	ldr r0, _0804C754 @ =0x001D000E
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804C74C: .4byte 0x001D0010
_0804C750: .4byte 0x001D000D
_0804C754: .4byte 0x001D000E

	thumb_func_start sub_0804C758
sub_0804C758: @ 0x0804C758
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x15
	bl sub_08041018
	ldr r0, _0804C7B0 @ =0x001D0021
	bl sub_08041058
	ldr r0, _0804C7B4 @ =0x001D0022
	bl sub_08041058
	ldr r0, _0804C7B8 @ =0x001D0023
	bl sub_08041058
	ldr r0, _0804C7BC @ =0x001D0024
	bl sub_08041058
	movs r0, #0xd
	movs r1, #0x15
	bl sub_08042814
	movs r0, #0x15
	bl sub_08041018
	ldr r0, _0804C7C0 @ =0x001D0025
	bl sub_08041058
	ldr r0, _0804C7C4 @ =0x001D0026
	bl sub_08041058
	movs r0, #0x76
	bl sub_080406BC
	pop {r0}
	bx r0
	.align 2, 0
_0804C7B0: .4byte 0x001D0021
_0804C7B4: .4byte 0x001D0022
_0804C7B8: .4byte 0x001D0023
_0804C7BC: .4byte 0x001D0024
_0804C7C0: .4byte 0x001D0025
_0804C7C4: .4byte 0x001D0026

	thumb_func_start sub_0804C7C8
sub_0804C7C8: @ 0x0804C7C8
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x52
	bl sub_08041894
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0x7c
	movs r2, #0x52
	bl sub_08041894
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804C860 @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x15
	bl sub_08041018
	ldr r0, _0804C864 @ =0x001D0027
	bl sub_08041058
	ldr r0, _0804C868 @ =0x001D0028
	bl sub_08041058
	ldr r0, _0804C86C @ =0x001D0029
	bl sub_08041058
	ldr r0, _0804C870 @ =0x001D002A
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804C860: .4byte 0x00000129
_0804C864: .4byte 0x001D0027
_0804C868: .4byte 0x001D0028
_0804C86C: .4byte 0x001D0029
_0804C870: .4byte 0x001D002A

	thumb_func_start sub_0804C874
sub_0804C874: @ 0x0804C874
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _0804C94C @ =0x0808E074
	bl sub_0804115C
	ldr r4, _0804C950 @ =0x0808E87C
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xd2
	movs r2, #0x58
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x48
	movs r2, #0x68
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r2, _0804C954 @ =0x0808E6CC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x80
	movs r2, #0x68
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r2, _0804C958 @ =0x0808E6BC
	movs r0, #4
	movs r1, #0
	bl sub_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	movs r0, #0x76
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C960
	movs r0, #0x1a
	bl sub_080410A8
	ldr r0, _0804C95C @ =sub_0804C7C8
	bl sub_0804066C
	b _0804C9A8
	.align 2, 0
_0804C94C: .4byte 0x0808E074
_0804C950: .4byte 0x0808E87C
_0804C954: .4byte 0x0808E6CC
_0804C958: .4byte 0x0808E6BC
_0804C95C: .4byte sub_0804C7C8
_0804C960:
	movs r0, #0x73
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C99C
	movs r0, #0x15
	bl sub_080410A8
	movs r0, #0x74
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804C990
	ldr r0, _0804C98C @ =sub_0804C758
	bl sub_0804066C
	b _0804C9A8
	.align 2, 0
_0804C98C: .4byte sub_0804C758
_0804C990:
	ldr r0, _0804C998 @ =sub_0804C718
	bl sub_0804066C
	b _0804C9A8
	.align 2, 0
_0804C998: .4byte sub_0804C718
_0804C99C:
	movs r0, #0x1a
	bl sub_080410A8
	ldr r0, _0804CA04 @ =sub_0804C570
	bl sub_0804066C
_0804C9A8:
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
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804CA04: .4byte sub_0804C570

	thumb_func_start sub_0804CA08
sub_0804CA08: @ 0x0804CA08
	push {lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0804CA28 @ =0x0808DC40
	ldr r2, [r1, #4]
	ldr r1, [r1]
	str r1, [sp]
	str r2, [sp, #4]
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0804CA28: .4byte 0x0808DC40

	thumb_func_start sub_0804CA2C
sub_0804CA2C: @ 0x0804CA2C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #5
	movs r2, #0x50
	bl sub_08041894
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	ldr r0, _0804CAD0 @ =0x0000012D
	bl sub_080410E0
	movs r4, #5
_0804CA5A:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #4
	bl sub_08040690
	adds r0, r5, #0
	movs r1, #1
	bl sub_08041808
	movs r0, #4
	bl sub_08040690
	subs r4, #1
	cmp r4, #0
	bge _0804CA5A
	adds r0, r5, #0
	movs r1, #0
	bl sub_08041808
	lsls r5, r6, #0x10
	movs r4, #5
_0804CA88:
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	movs r0, #4
	bl sub_08040690
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	movs r0, #4
	bl sub_08040690
	subs r4, #1
	cmp r4, #0
	bge _0804CA88
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	asrs r4, r5, #0x10
	movs r0, #5
	adds r1, r4, #0
	movs r2, #0x68
	movs r3, #0xc
	bl sub_08041938
	ldr r0, _0804CAD4 @ =0x0808E60C
	adds r1, r4, #0
	movs r2, #0x6a
	bl sub_080414B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CAD0: .4byte 0x0000012D
_0804CAD4: .4byte 0x0808E60C

	thumb_func_start sub_0804CAD8
sub_0804CAD8: @ 0x0804CAD8
	push {lr}
	ldr r0, _0804CBC8 @ =0x0000021A
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #0x11
	movs r3, #2
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #2
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl sub_080418C8
	movs r0, #0x20
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #2
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0x11
	movs r3, #2
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #2
	bl sub_080418C8
	movs r0, #0x20
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #2
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x11
	movs r3, #2
	bl sub_080418C8
	movs r0, #1
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x11
	movs r3, #2
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	pop {r0}
	bx r0
	.align 2, 0
_0804CBC8: .4byte 0x0000021A

	thumb_func_start sub_0804CBCC
sub_0804CBCC: @ 0x0804CBCC
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #4
	bl sub_0804CA08
	bl sub_080407FC
	bl sub_0804CAD8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804CC90 @ =0x00020001
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804CC94 @ =0x00020002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804CC9C
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804CC98 @ =0x00020003
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	b _0804D20A
	.align 2, 0
_0804CC90: .4byte 0x00020001
_0804CC94: .4byte 0x00020002
_0804CC98: .4byte 0x00020003
_0804CC9C:
	ldr r1, _0804D088 @ =0x00020005
	movs r0, #1
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804CCAC
	b _0804D20A
_0804CCAC:
	movs r0, #0x10
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D08C @ =0x00020006
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804D090 @ =0x00020007
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D094 @ =0x00020008
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804D098 @ =0x00020009
	bl sub_08041058
	ldr r0, _0804D09C @ =0x0002000A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r4, _0804D0A0 @ =0x00020004
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0A4 @ =0x0002000B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804D0A8 @ =0x0002000C
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0AC @ =0x0002000D
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804D0B0 @ =0x0002000E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0B4 @ =0x0002000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0B8 @ =0x00020010
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804D0BC @ =0x00020011
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0C0 @ =0x00020012
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0C4 @ =0x00020013
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0C8 @ =0x00020014
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0CC @ =0x00020015
	bl sub_08041058
	bl sub_08041008
	bl sub_0804CAD8
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #4
	bl sub_0804CA08
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0D0 @ =0x00020016
	bl sub_08041058
	ldr r0, _0804D0D4 @ =0x00020017
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D0D8 @ =0x00020018
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804D0DC @ =0x00020019
	bl sub_08041058
	ldr r0, _0804D0E0 @ =0x0002001A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	b _0804D0E4
	.align 2, 0
_0804D088: .4byte 0x00020005
_0804D08C: .4byte 0x00020006
_0804D090: .4byte 0x00020007
_0804D094: .4byte 0x00020008
_0804D098: .4byte 0x00020009
_0804D09C: .4byte 0x0002000A
_0804D0A0: .4byte 0x00020004
_0804D0A4: .4byte 0x0002000B
_0804D0A8: .4byte 0x0002000C
_0804D0AC: .4byte 0x0002000D
_0804D0B0: .4byte 0x0002000E
_0804D0B4: .4byte 0x0002000F
_0804D0B8: .4byte 0x00020010
_0804D0BC: .4byte 0x00020011
_0804D0C0: .4byte 0x00020012
_0804D0C4: .4byte 0x00020013
_0804D0C8: .4byte 0x00020014
_0804D0CC: .4byte 0x00020015
_0804D0D0: .4byte 0x00020016
_0804D0D4: .4byte 0x00020017
_0804D0D8: .4byte 0x00020018
_0804D0DC: .4byte 0x00020019
_0804D0E0: .4byte 0x0002001A
_0804D0E4:
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D1CC @ =0x0002001B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08041008
	bl sub_0804CAD8
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #4
	bl sub_0804CA08
	bl sub_08040FE8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _0804D1D0 @ =0x0002001C
	bl sub_08041058
	ldr r0, _0804D1D4 @ =0x0002001D
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804D1E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D1D8 @ =0x0002001E
	bl sub_08041058
	ldr r0, _0804D1DC @ =0x0002001F
	bl sub_08041058
	b _0804D1F8
	.align 2, 0
_0804D1CC: .4byte 0x0002001B
_0804D1D0: .4byte 0x0002001C
_0804D1D4: .4byte 0x0002001D
_0804D1D8: .4byte 0x0002001E
_0804D1DC: .4byte 0x0002001F
_0804D1E0:
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D210 @ =0x00020020
	bl sub_08041058
	ldr r0, _0804D214 @ =0x0002001F
	bl sub_08041058
_0804D1F8:
	movs r0, #7
	bl sub_080406E4
	movs r0, #7
	bl sub_0802D7CC
	movs r0, #0x17
	bl sub_0802D7CC
_0804D20A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D210: .4byte 0x00020020
_0804D214: .4byte 0x0002001F

	thumb_func_start sub_0804D218
sub_0804D218: @ 0x0804D218
	push {r4, lr}
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x68
	bl sub_08041894
	movs r0, #9
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804D234
	b _0804D458
_0804D234:
	ldr r2, _0804D264 @ =0x0808E7BC
	movs r0, #5
	movs r1, #0
	bl sub_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	ldr r0, _0804D268 @ =0x03004494
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804D27E
	cmp r0, #2
	bgt _0804D26C
	cmp r0, #1
	beq _0804D272
	b _0804D2BE
	.align 2, 0
_0804D264: .4byte 0x0808E7BC
_0804D268: .4byte 0x03004494
_0804D26C:
	cmp r0, #3
	beq _0804D296
	b _0804D2BE
_0804D272:
	movs r0, #1
	movs r1, #0x38
	bl sub_0804CA2C
	movs r0, #3
	b _0804D2A0
_0804D27E:
	movs r0, #2
	movs r1, #0x60
	bl sub_0804CA2C
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #1
	b _0804D2AC
_0804D296:
	movs r0, #3
	movs r1, #0x88
	bl sub_0804CA2C
	movs r0, #1
_0804D2A0:
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #2
_0804D2AC:
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #4
	bl sub_0804CA08
	b _0804D2E4
_0804D2BE:
	movs r0, #4
	movs r1, #0xb0
	bl sub_0804CA2C
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #1
	bl sub_0804CA08
_0804D2E4:
	movs r0, #0xc
	bl sub_08040690
	movs r0, #5
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #5
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804D42C @ =0x00020021
	bl sub_08041058
	movs r0, #5
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #5
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804D430 @ =0x00020022
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D434 @ =0x0000021A
	bl sub_080410E0
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D438 @ =0x00020023
	bl sub_08041058
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D43C @ =0x00020024
	bl sub_08041058
	movs r0, #6
	bl sub_08041018
	ldr r4, _0804D440 @ =0x00020004
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D444 @ =0x00020025
	bl sub_08041058
	movs r0, #0x36
	movs r1, #0x10
	bl sub_08042814
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D448 @ =0x00020026
	bl sub_08041058
	ldr r0, _0804D44C @ =0x00020027
	bl sub_08041058
	ldr r0, _0804D450 @ =0x00020028
	bl sub_08041058
	ldr r0, _0804D454 @ =0x00020029
	bl sub_08041058
	movs r0, #6
	bl sub_08041018
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #0xa
	bl sub_080406BC
	b _0804D55C
	.align 2, 0
_0804D42C: .4byte 0x00020021
_0804D430: .4byte 0x00020022
_0804D434: .4byte 0x0000021A
_0804D438: .4byte 0x00020023
_0804D43C: .4byte 0x00020024
_0804D440: .4byte 0x00020004
_0804D444: .4byte 0x00020025
_0804D448: .4byte 0x00020026
_0804D44C: .4byte 0x00020027
_0804D450: .4byte 0x00020028
_0804D454: .4byte 0x00020029
_0804D458:
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #3
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #2
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #4
	bl sub_0804CA08
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0804D564 @ =0x0002002A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804D568 @ =0x0002002B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D56C @ =0x0002002C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D570 @ =0x0002002D
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D574 @ =0x0002002E
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D578 @ =0x0002002F
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #7
	bl sub_080406FC
	movs r0, #9
	bl sub_080406FC
	movs r0, #8
	bl sub_080406FC
	movs r0, #0xa
	bl sub_080406D0
_0804D55C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D564: .4byte 0x0002002A
_0804D568: .4byte 0x0002002B
_0804D56C: .4byte 0x0002002C
_0804D570: .4byte 0x0002002D
_0804D574: .4byte 0x0002002E
_0804D578: .4byte 0x0002002F

	thumb_func_start sub_0804D57C
sub_0804D57C: @ 0x0804D57C
	push {r4, lr}
	movs r0, #1
	movs r1, #0x40
	movs r2, #0x50
	bl sub_08041894
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08041894
	movs r0, #4
	movs r1, #0xb2
	movs r2, #0x50
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #4
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #2
	bl sub_0804CA08
	bl sub_080407FC
	bl sub_08040FE8
	ldr r0, _0804D690 @ =0x0000021A
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D694 @ =0x00020030
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D698 @ =0x00020031
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r4, _0804D69C @ =0x00020004
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	ldr r0, _0804D6A0 @ =0x00020032
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	bl sub_08041018
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D690: .4byte 0x0000021A
_0804D694: .4byte 0x00020030
_0804D698: .4byte 0x00020031
_0804D69C: .4byte 0x00020004
_0804D6A0: .4byte 0x00020032

	thumb_func_start sub_0804D6A4
sub_0804D6A4: @ 0x0804D6A4
	push {r4, lr}
	movs r0, #1
	movs r1, #0x40
	movs r2, #0x50
	bl sub_08041894
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08041894
	movs r0, #4
	movs r1, #0xb2
	movs r2, #0x50
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #1
	bl sub_0804CA08
	movs r0, #4
	bl sub_08040690
	movs r0, #4
	bl sub_0804CA08
	movs r0, #8
	bl sub_08040690
	movs r0, #2
	bl sub_0804CA08
	bl sub_080407FC
	bl sub_08040FE8
	ldr r0, _0804D748 @ =0x0000021A
	bl sub_080410E0
	movs r0, #6
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D74C @ =0x00140020
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
_0804D71E:
	ldr r0, _0804D750 @ =0x00140021
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804D758
	cmp r0, #1
	bne _0804D736
	b _0804D84C
_0804D736:
	ldr r0, _0804D754 @ =0x0014002B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804D71E
	b _0804D8B4
	.align 2, 0
_0804D748: .4byte 0x0000021A
_0804D74C: .4byte 0x00140020
_0804D750: .4byte 0x00140021
_0804D754: .4byte 0x0014002B
_0804D758:
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D830 @ =0x00140022
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D834 @ =0x00140023
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D838 @ =0x00140024
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r4, _0804D83C @ =0x00140025
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D840 @ =0x00140026
	bl sub_08041058
	ldr r0, _0804D844 @ =0x00140027
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D848 @ =0x00140028
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	adds r0, r4, #0
	bl sub_08041058
	movs r0, #0x4f
	bl sub_080406E4
	b _0804D89A
	.align 2, 0
_0804D830: .4byte 0x00140022
_0804D834: .4byte 0x00140023
_0804D838: .4byte 0x00140024
_0804D83C: .4byte 0x00140025
_0804D840: .4byte 0x00140026
_0804D844: .4byte 0x00140027
_0804D848: .4byte 0x00140028
_0804D84C:
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D8A8 @ =0x00140029
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D8AC @ =0x0014002A
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804D8B0 @ =0x00140025
	bl sub_08041058
_0804D89A:
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	b _0804D71E
	.align 2, 0
_0804D8A8: .4byte 0x00140029
_0804D8AC: .4byte 0x0014002A
_0804D8B0: .4byte 0x00140025
_0804D8B4:
	movs r0, #0x17
	bl sub_0802D7CC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0804D8C0
sub_0804D8C0: @ 0x0804D8C0
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _0804D978 @ =0x0808E09C
	bl sub_0804115C
	ldr r4, _0804D97C @ =0x0808E77C
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x38
	movs r2, #0x50
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x60
	movs r2, #0x50
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x88
	movs r2, #0x50
	bl sub_08041894
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xb0
	movs r2, #0x50
	bl sub_08041894
	ldr r2, _0804D980 @ =0x0808EA4C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0x4e
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804D988
	movs r0, #0x4f
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804D988
	movs r0, #0x13
	bl sub_080410A8
	ldr r0, _0804D984 @ =sub_0804D6A4
	bl sub_0804066C
	b _0804D9FA
	.align 2, 0
_0804D978: .4byte 0x0808E09C
_0804D97C: .4byte 0x0808E77C
_0804D980: .4byte 0x0808EA4C
_0804D984: .4byte sub_0804D6A4
_0804D988:
	movs r0, #0xa
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804D9A8
	movs r0, #0x1a
	bl sub_080410A8
	ldr r0, _0804D9A4 @ =sub_0804D57C
	bl sub_0804066C
	b _0804D9FA
	.align 2, 0
_0804D9A4: .4byte sub_0804D57C
_0804D9A8:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804D9D8
	movs r0, #0x1a
	bl sub_080410A8
	ldr r0, _0804D9D4 @ =sub_0804CBCC
	bl sub_0804066C
	movs r0, #7
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804D9FA
	movs r0, #0
	bl sub_08040F18
	b _0804D9FA
	.align 2, 0
_0804D9D4: .4byte sub_0804CBCC
_0804D9D8:
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _0804DA70 @ =0x03004494
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D9EC
	movs r0, #9
	bl sub_080406E4
_0804D9EC:
	ldr r0, _0804DA74 @ =sub_0804D218
	bl sub_0804066C
	bl sub_08040F0C
	bl sub_08041560
_0804D9FA:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #1
	bl sub_080417E0
	movs r0, #2
	bl sub_080417E0
	movs r0, #3
	bl sub_080417E0
	movs r0, #4
	bl sub_080417E0
	movs r0, #0
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_08041DB8
	movs r0, #2
	bl sub_08041DB8
	movs r0, #3
	bl sub_08041DB8
	movs r0, #4
	bl sub_08041DB8
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DA70: .4byte 0x03004494
_0804DA74: .4byte sub_0804D218

	thumb_func_start sub_0804DA78
sub_0804DA78: @ 0x0804DA78
	push {lr}
	bl sub_08040FE8
	movs r0, #0xd
	bl sub_08041058
	movs r0, #0xe
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804DA90
sub_0804DA90: @ 0x0804DA90
	push {lr}
	bl sub_08040FE8
	ldr r0, _0804DAE0 @ =0x00180013
	bl sub_08041058
	ldr r0, _0804DAE4 @ =0x00180014
	bl sub_08041058
_0804DAA2:
	ldr r0, _0804DAE8 @ =0x00180015
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DAF0
	movs r0, #0x97
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	movs r0, #0
	bl sub_080417E0
	ldr r0, _0804DAEC @ =0x00180016
	bl sub_08041058
	movs r0, #0x5f
	bl sub_080406E4
	b _0804DB00
	.align 2, 0
_0804DAE0: .4byte 0x00180013
_0804DAE4: .4byte 0x00180014
_0804DAE8: .4byte 0x00180015
_0804DAEC: .4byte 0x00180016
_0804DAF0:
	ldr r0, _0804DB04 @ =0x00180017
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DAA2
_0804DB00:
	pop {r0}
	bx r0
	.align 2, 0
_0804DB04: .4byte 0x00180017

	thumb_func_start sub_0804DB08
sub_0804DB08: @ 0x0804DB08
	push {lr}
	bl sub_080405B8
	ldr r0, _0804DB5C @ =0x0808E0C4
	bl sub_0804115C
	ldr r2, _0804DB60 @ =0x0808E8CC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	movs r0, #0x5e
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804DB68
	movs r0, #0x5f
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DB68
	movs r0, #0x14
	bl sub_080410A8
	ldr r0, _0804DB64 @ =sub_0804DA90
	bl sub_0804066C
	b _0804DB74
	.align 2, 0
_0804DB5C: .4byte 0x0808E0C4
_0804DB60: .4byte 0x0808E8CC
_0804DB64: .4byte sub_0804DA90
_0804DB68:
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804DB9C @ =sub_0804DA78
	bl sub_0804066C
_0804DB74:
	movs r0, #0x1d
	bl sub_0802D7CC
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0804DB9C: .4byte sub_0804DA78

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
	bl sub_080418C8
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
	bl sub_08040690
	movs r0, #0
	bl sub_08041DE0
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	bl sub_0804DBA0
	bl sub_08040FE8
	movs r0, #0x22
	bl sub_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _0804DD04 @ =0x002E0014
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804DD08 @ =0x002E0015
	bl sub_08041058
	ldr r0, _0804DD0C @ =0x002E0016
	bl sub_08041058
_0804DC6A:
	ldr r0, _0804DD10 @ =0x002E0017
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DD34
	ldr r0, _0804DD14 @ =0x002E0018
	bl sub_08041058
	ldr r0, _0804DD18 @ =0x002E0019
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804DD1C @ =0x002E001A
	bl sub_08041058
	ldr r0, _0804DD20 @ =0x002E001B
	bl sub_08041058
	ldr r0, _0804DD24 @ =0x002E001C
	bl sub_08041058
	ldr r0, _0804DD28 @ =0x002E001D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804DD2C @ =0x002E001E
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl sub_08040690
	bl sub_08040FE8
	ldr r0, _0804DD30 @ =0x002E001F
	bl sub_08041058
	movs r0, #0xab
	bl sub_080406E4
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
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DC6A
_0804DD44:
	movs r0, #0xa
	bl sub_0802D7CC
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
	bl sub_08040690
	movs r0, #0
	bl sub_08041DE0
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	bl sub_0804DBA0
	bl sub_08040FE8
	movs r0, #0x22
	bl sub_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xc
	bl sub_08041058
	bl sub_0804DBA0
	ldr r0, _0804DDC0 @ =0x000C0001
	bl sub_08041058
	ldr r0, _0804DDC4 @ =0x000C0002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804DDCC
	ldr r0, _0804DDC8 @ =0x000C0003
	bl sub_08041058
	b _0804DE84
	.align 2, 0
_0804DDC0: .4byte 0x000C0001
_0804DDC4: .4byte 0x000C0002
_0804DDC8: .4byte 0x000C0003
_0804DDCC:
	ldr r1, _0804DE38 @ =0x000C0004
	movs r0, #0xb
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804DE84
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x22
	bl sub_08041018
	ldr r0, _0804DE3C @ =0x000C0005
	bl sub_08041058
	ldr r0, _0804DE40 @ =0x000C0006
	bl sub_08041058
	ldr r0, _0804DE44 @ =0x000C0007
	bl sub_08041058
	ldr r0, _0804DE48 @ =0x000C0008
	bl sub_08041058
	ldr r0, _0804DE4C @ =0x000C0009
	bl sub_08041058
	ldr r0, _0804DE50 @ =0x000C000A
	bl sub_08041058
	ldr r0, _0804DE54 @ =0x000C000B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804DE60
	ldr r0, _0804DE58 @ =0x000C000C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804DE5C @ =0x000C000D
	bl sub_08041058
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
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804DE8C @ =0x000C000F
	bl sub_08041058
_0804DE78:
	movs r0, #0x2e
	bl sub_080406E4
	movs r0, #0xa
	bl sub_0802D7CC
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
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804DF38
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x22
	bl sub_08041018
	ldr r0, _0804DF1C @ =0x000C0010
	bl sub_08041058
	ldr r0, _0804DF20 @ =0x000C0011
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804DF24 @ =0x000C0012
	bl sub_08041058
	ldr r0, _0804DF28 @ =0x000C0013
	bl sub_08041058
	ldr r0, _0804DF2C @ =0x000C0014
	bl sub_08041058
	movs r0, #0x38
	movs r1, #0x12
	bl sub_08042814
	movs r0, #0x22
	bl sub_08041018
	ldr r0, _0804DF30 @ =0x000C0015
	bl sub_08041058
	ldr r0, _0804DF34 @ =0x000C0016
	bl sub_08041058
	movs r0, #0x31
	bl sub_080406BC
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
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x22
	bl sub_08041018
	ldr r0, _0804DF94 @ =0x000C0017
	bl sub_08041058
	ldr r0, _0804DF98 @ =0x000C0018
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804DF9C @ =0x000C0019
	bl sub_08041058
	ldr r0, _0804DFA0 @ =0x000C001A
	bl sub_08041058
	movs r0, #0x2f
	bl sub_080406FC
	movs r0, #0x30
	bl sub_080406FC
	movs r0, #0x2e
	bl sub_080406FC
	movs r0, #0x31
	bl sub_080406D0
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
	bl sub_08040690
	movs r0, #0
	bl sub_08041DE0
	movs r0, #0
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	bl sub_0804DBA0
	bl sub_08040FE8
	movs r0, #0x22
	bl sub_08041018
	ldr r0, _0804DFFC @ =0x000C001B
	bl sub_08041058
	ldr r0, _0804E000 @ =0x000C001C
	bl sub_08041058
	ldr r0, _0804E004 @ =0x000C001D
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804DFFC: .4byte 0x000C001B
_0804E000: .4byte 0x000C001C
_0804E004: .4byte 0x000C001D

	thumb_func_start sub_0804E008
sub_0804E008: @ 0x0804E008
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _0804E0A4 @ =0x0808E0EC
	bl sub_0804115C
	ldr r4, _0804E0A8 @ =0x0808E93C
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _0804E0AC @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x7c
	movs r2, #0x38
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0xaa
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E0B4
	movs r0, #0xab
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E0B4
	movs r0, #0x18
	bl sub_080410A8
	ldr r0, _0804E0B0 @ =sub_0804DBF4
	bl sub_0804066C
	b _0804E126
	.align 2, 0
_0804E0A4: .4byte 0x0808E0EC
_0804E0A8: .4byte 0x0808E93C
_0804E0AC: .4byte 0x0808E6BC
_0804E0B0: .4byte sub_0804DBF4
_0804E0B4:
	movs r0, #0x31
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E0D4
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804E0D0 @ =sub_0804DFA4
	bl sub_0804066C
	b _0804E126
	.align 2, 0
_0804E0D0: .4byte sub_0804DFA4
_0804E0D4:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E104
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804E100 @ =sub_0804DD54
	bl sub_0804066C
	movs r0, #0x2e
	bl sub_08040714
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
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E11C
	movs r0, #0x2f
	bl sub_080406E4
_0804E11C:
	ldr r0, _0804E168 @ =sub_0804DE90
	bl sub_0804066C
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

	thumb_func_start sub_0804E16C
sub_0804E16C: @ 0x0804E16C
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r4, _0804E220 @ =0x00000145
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x20
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x20
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x20
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804E224 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x25
	bl sub_08041018
	movs r0, #0xe0
	lsls r0, r0, #0xc
	bl sub_08041058
	ldr r0, _0804E228 @ =0x000E0001
	bl sub_08041058
	ldr r0, _0804E22C @ =0x000E0002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E234
	ldr r0, _0804E230 @ =0x000E0003
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	b _0804E314
	.align 2, 0
_0804E220: .4byte 0x00000145
_0804E224: .4byte 0x0000011F
_0804E228: .4byte 0x000E0001
_0804E22C: .4byte 0x000E0002
_0804E230: .4byte 0x000E0003
_0804E234:
	ldr r1, _0804E2AC @ =0x000E0004
	movs r0, #0xd
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E314
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x25
	bl sub_08041018
	ldr r0, _0804E2B0 @ =0x000E0005
	bl sub_08041058
	ldr r0, _0804E2B4 @ =0x000E0006
	bl sub_08041058
	ldr r0, _0804E2B8 @ =0x000E0007
	bl sub_08041058
	ldr r0, _0804E2BC @ =0x000E0008
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E2CC
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E2C0 @ =0x000E0009
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E2C4 @ =0x000E000A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E2C8 @ =0x000E000B
	bl sub_08041058
	b _0804E308
	.align 2, 0
_0804E2AC: .4byte 0x000E0004
_0804E2B0: .4byte 0x000E0005
_0804E2B4: .4byte 0x000E0006
_0804E2B8: .4byte 0x000E0007
_0804E2BC: .4byte 0x000E0008
_0804E2C0: .4byte 0x000E0009
_0804E2C4: .4byte 0x000E000A
_0804E2C8: .4byte 0x000E000B
_0804E2CC:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E31C @ =0x000E000C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E320 @ =0x000E000D
	bl sub_08041058
	ldr r0, _0804E324 @ =0x000E000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E328 @ =0x000E000F
	bl sub_08041058
_0804E308:
	movs r0, #0x36
	bl sub_080406E4
	movs r0, #0x21
	bl sub_0802D7CC
_0804E314:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E31C: .4byte 0x000E000C
_0804E320: .4byte 0x000E000D
_0804E324: .4byte 0x000E000E
_0804E328: .4byte 0x000E000F

	thumb_func_start sub_0804E32C
sub_0804E32C: @ 0x0804E32C
	push {r4, lr}
	bl sub_08040FE8
	movs r0, #0x25
	bl sub_08041018
	movs r0, #0x37
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E3CC
	ldr r0, _0804E3B8 @ =0x000E0010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E3BC @ =0x000E0011
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x32
	movs r1, #0x12
	bl sub_08042814
	movs r0, #0x25
	bl sub_08041018
	ldr r0, _0804E3C0 @ =0x000E0012
	bl sub_08041058
	ldr r0, _0804E3C4 @ =0x000E0013
	bl sub_08041058
	movs r0, #0x39
	bl sub_080406E4
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r4, _0804E3C8 @ =0x00000145
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x20
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0x39
	bl sub_080406BC
	b _0804E414
	.align 2, 0
_0804E3B8: .4byte 0x000E0010
_0804E3BC: .4byte 0x000E0011
_0804E3C0: .4byte 0x000E0012
_0804E3C4: .4byte 0x000E0013
_0804E3C8: .4byte 0x00000145
_0804E3CC:
	ldr r0, _0804E41C @ =0x000E0014
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E420 @ =0x000E0015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E424 @ =0x000E0016
	bl sub_08041058
	ldr r0, _0804E428 @ =0x000E0017
	bl sub_08041058
	movs r0, #0x36
	bl sub_080406FC
	movs r0, #0x37
	bl sub_080406FC
	movs r0, #0x38
	bl sub_080406FC
	movs r0, #0x39
	bl sub_080406D0
_0804E414:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E41C: .4byte 0x000E0014
_0804E420: .4byte 0x000E0015
_0804E424: .4byte 0x000E0016
_0804E428: .4byte 0x000E0017

	thumb_func_start sub_0804E42C
sub_0804E42C: @ 0x0804E42C
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r4, _0804E4B8 @ =0x00000145
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x20
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x20
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x20
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x25
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E4BC @ =0x000E0018
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E4C0 @ =0x000E0019
	bl sub_08041058
	ldr r0, _0804E4C4 @ =0x000E001A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804E4C8 @ =0x000E001B
	bl sub_08041058
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E4B8: .4byte 0x00000145
_0804E4BC: .4byte 0x000E0018
_0804E4C0: .4byte 0x000E0019
_0804E4C4: .4byte 0x000E001A
_0804E4C8: .4byte 0x000E001B

	thumb_func_start sub_0804E4CC
sub_0804E4CC: @ 0x0804E4CC
	push {lr}
	bl sub_080405B8
	ldr r0, _0804E538 @ =0x0808E114
	bl sub_0804115C
	ldr r2, _0804E53C @ =0x0808E95C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x62
	bl sub_08041894
	ldr r2, _0804E540 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x32
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x39
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E548
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804E544 @ =sub_0804E42C
	bl sub_0804066C
	b _0804E59A
	.align 2, 0
_0804E538: .4byte 0x0808E114
_0804E53C: .4byte 0x0808E95C
_0804E540: .4byte 0x0808E6BC
_0804E544: .4byte sub_0804E42C
_0804E548:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E578
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804E574 @ =sub_0804E16C
	bl sub_0804066C
	movs r0, #0x36
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E59A
	movs r0, #7
	bl sub_08040F18
	b _0804E59A
	.align 2, 0
_0804E574: .4byte sub_0804E16C
_0804E578:
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804E590
	movs r0, #0x37
	bl sub_080406E4
_0804E590:
	ldr r0, _0804E5CC @ =sub_0804E32C
	bl sub_0804066C
	bl sub_08040F0C
_0804E59A:
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
_0804E5CC: .4byte sub_0804E32C

	thumb_func_start sub_0804E5D0
sub_0804E5D0: @ 0x0804E5D0
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x8c
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _0804E618 @ =0x00230001
	bl sub_08041058
	ldr r0, _0804E61C @ =0x00230002
	bl sub_08041058
_0804E5EE:
	ldr r0, _0804E620 @ =0x00230003
	bl sub_08041058
	ldr r0, _0804E624 @ =0x00230004
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E62C
	ldr r0, _0804E628 @ =0x00230006
	bl sub_0804106C
	bl sub_08041088
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
	bl sub_080406E4
_0804E632:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E638
sub_0804E638: @ 0x0804E638
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	ldr r0, _0804E660 @ =0x00230005
	bl sub_08041058
	movs r0, #0x87
	bl sub_080406FC
	movs r0, #0x8a
	bl sub_080406FC
	movs r0, #0x8b
	bl sub_080406FC
	pop {r0}
	bx r0
	.align 2, 0
_0804E660: .4byte 0x00230005

	thumb_func_start sub_0804E664
sub_0804E664: @ 0x0804E664
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x8c
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _0804E688 @ =0x0023001D
	bl sub_08041058
	ldr r0, _0804E68C @ =0x0023001E
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804E688: .4byte 0x0023001D
_0804E68C: .4byte 0x0023001E

	thumb_func_start sub_0804E690
sub_0804E690: @ 0x0804E690
	push {lr}
	bl sub_080405B8
	ldr r0, _0804E6B8 @ =0x0808E13C
	bl sub_0804115C
	movs r0, #0x8b
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E6C0
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804E6BC @ =sub_0804E664
	bl sub_0804066C
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
	bl sub_080410A8
	ldr r0, _0804E6EC @ =sub_0804E5D0
	bl sub_0804066C
	movs r0, #0x87
	bl sub_08040714
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
	bl sub_080410A8
	ldr r0, _0804E72C @ =sub_0804E638
	bl sub_0804066C
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

	thumb_func_start sub_0804E730
sub_0804E730: @ 0x0804E730
	push {lr}
	movs r0, #0
	movs r1, #0x78
	movs r2, #0xa0
	bl sub_08041894
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x2c
	bl sub_08041018
	movs r0, #0xb4
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _0804E784 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x40
	movs r3, #0x14
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	pop {r0}
	bx r0
	.align 2, 0
_0804E784: .4byte 0x0000011B

	thumb_func_start sub_0804E788
sub_0804E788: @ 0x0804E788
	push {lr}
	bl sub_0804E730
	ldr r0, _0804E7B8 @ =0x002D0001
	bl sub_08041058
	ldr r0, _0804E7BC @ =0x002D0002
	bl sub_08041058
	ldr r0, _0804E7C0 @ =0x002D0003
	bl sub_08041058
	ldr r0, _0804E7C4 @ =0x002D0004
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E7CC
	ldr r0, _0804E7C8 @ =0x002D0005
	bl sub_08041058
	b _0804E892
	.align 2, 0
_0804E7B8: .4byte 0x002D0001
_0804E7BC: .4byte 0x002D0002
_0804E7C0: .4byte 0x002D0003
_0804E7C4: .4byte 0x002D0004
_0804E7C8: .4byte 0x002D0005
_0804E7CC:
	ldr r1, _0804E828 @ =0x002D0006
	movs r0, #0x2c
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804E892
	movs r0, #0x18
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x2c
	bl sub_08041018
	ldr r0, _0804E82C @ =0x002D0007
	bl sub_08041058
	ldr r0, _0804E830 @ =0x002D0008
	bl sub_08041058
	ldr r0, _0804E834 @ =0x002D0009
	bl sub_08041058
	ldr r0, _0804E838 @ =0x002D000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E84C
	ldr r0, _0804E83C @ =0x002D000B
	bl sub_08041058
	ldr r0, _0804E840 @ =0x002D000C
	bl sub_08041058
	ldr r0, _0804E844 @ =0x002D000D
	bl sub_08041058
	ldr r0, _0804E848 @ =0x002D000E
	bl sub_08041058
	b _0804E886
	.align 2, 0
_0804E828: .4byte 0x002D0006
_0804E82C: .4byte 0x002D0007
_0804E830: .4byte 0x002D0008
_0804E834: .4byte 0x002D0009
_0804E838: .4byte 0x002D000A
_0804E83C: .4byte 0x002D000B
_0804E840: .4byte 0x002D000C
_0804E844: .4byte 0x002D000D
_0804E848: .4byte 0x002D000E
_0804E84C:
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0xb4
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _0804E898 @ =0x002D000F
	bl sub_08041058
	ldr r0, _0804E89C @ =0x002D0010
	bl sub_08041058
	ldr r0, _0804E8A0 @ =0x002D0011
	bl sub_08041058
	ldr r0, _0804E8A4 @ =0x002D0012
	bl sub_08041058
_0804E886:
	movs r0, #0xa6
	bl sub_080406E4
	movs r0, #0x11
	bl sub_0802D7CC
_0804E892:
	pop {r0}
	bx r0
	.align 2, 0
_0804E898: .4byte 0x002D000F
_0804E89C: .4byte 0x002D0010
_0804E8A0: .4byte 0x002D0011
_0804E8A4: .4byte 0x002D0012

	thumb_func_start sub_0804E8A8
sub_0804E8A8: @ 0x0804E8A8
	push {r4, lr}
	ldr r0, _0804E924 @ =0x002D0013
	bl sub_08041058
	ldr r0, _0804E928 @ =0x002D0014
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E908
	ldr r4, _0804E92C @ =0x0000014B
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _0804E930 @ =0x002D0018
	bl sub_08041058
	ldr r0, _0804E934 @ =0x002D0019
	bl sub_08041058
	ldr r0, _0804E938 @ =0x002D001A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804E908
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _0804E93C @ =0x002D001B
	bl sub_08041058
	ldr r0, _0804E940 @ =0x002D001C
	bl sub_08041058
	ldr r0, _0804E944 @ =0x002D001D
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804E954
_0804E908:
	movs r0, #0xd2
	bl sub_080410E0
	ldr r0, _0804E948 @ =0x002D0015
	bl sub_08041058
	ldr r0, _0804E94C @ =0x002D0016
	bl sub_08041058
	ldr r0, _0804E950 @ =0x002D0017
	bl sub_08041058
	b _0804E992
	.align 2, 0
_0804E924: .4byte 0x002D0013
_0804E928: .4byte 0x002D0014
_0804E92C: .4byte 0x0000014B
_0804E930: .4byte 0x002D0018
_0804E934: .4byte 0x002D0019
_0804E938: .4byte 0x002D001A
_0804E93C: .4byte 0x002D001B
_0804E940: .4byte 0x002D001C
_0804E944: .4byte 0x002D001D
_0804E948: .4byte 0x002D0015
_0804E94C: .4byte 0x002D0016
_0804E950: .4byte 0x002D0017
_0804E954:
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _0804E998 @ =0x002D001E
	bl sub_08041058
	ldr r0, _0804E99C @ =0x002D001F
	bl sub_08041058
	ldr r0, _0804E9A0 @ =0x002D0020
	bl sub_08041058
	movs r0, #0x12
	movs r1, #0x18
	bl sub_08042814
	movs r0, #0x2c
	bl sub_08041018
	ldr r0, _0804E9A4 @ =0x002D0021
	bl sub_08041058
	ldr r0, _0804E9A8 @ =0x002D0022
	bl sub_08041058
	movs r0, #0xa7
	bl sub_080406E4
	movs r0, #0xa9
	bl sub_080406BC
_0804E992:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E998: .4byte 0x002D001E
_0804E99C: .4byte 0x002D001F
_0804E9A0: .4byte 0x002D0020
_0804E9A4: .4byte 0x002D0021
_0804E9A8: .4byte 0x002D0022

	thumb_func_start sub_0804E9AC
sub_0804E9AC: @ 0x0804E9AC
	push {lr}
	bl sub_0804E730
	ldr r0, _0804E9D0 @ =0x002D0024
	bl sub_08041058
	ldr r0, _0804E9D4 @ =0x002D0025
	bl sub_08041058
	ldr r0, _0804E9D8 @ =0x002D0026
	bl sub_08041058
	ldr r0, _0804E9DC @ =0x002D0027
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804E9D0: .4byte 0x002D0024
_0804E9D4: .4byte 0x002D0025
_0804E9D8: .4byte 0x002D0026
_0804E9DC: .4byte 0x002D0027

	thumb_func_start sub_0804E9E0
sub_0804E9E0: @ 0x0804E9E0
	push {lr}
	bl sub_080405B8
	ldr r0, _0804EA4C @ =0x0808E164
	bl sub_0804115C
	ldr r2, _0804EA50 @ =0x0808E9CC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r2, _0804EA54 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x2a
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0xa9
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804EA5C
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804EA58 @ =sub_0804E9AC
	bl sub_0804066C
	b _0804EA9E
	.align 2, 0
_0804EA4C: .4byte 0x0808E164
_0804EA50: .4byte 0x0808E9CC
_0804EA54: .4byte 0x0808E6BC
_0804EA58: .4byte sub_0804E9AC
_0804EA5C:
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804EAD0 @ =sub_0804E788
	bl sub_0804066C
	movs r0, #0xa6
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804EA9E
	ldr r0, _0804EAD4 @ =sub_0804E8A8
	bl sub_0804066C
	movs r0, #0xa7
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804EA9E
	movs r0, #0xa6
	bl sub_080406FC
	movs r0, #0xa7
	bl sub_080406FC
	movs r0, #0xa8
	bl sub_080406FC
	movs r0, #0xa9
	bl sub_080406D0
_0804EA9E:
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
_0804EAD0: .4byte sub_0804E788
_0804EAD4: .4byte sub_0804E8A8

	thumb_func_start sub_0804EAD8
sub_0804EAD8: @ 0x0804EAD8
	push {lr}
	bl sub_08040FE8
	movs r0, #0x27
	bl sub_08041018
	ldr r0, _0804EB7C @ =0x00230008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EB80 @ =0x00230009
	bl sub_08041058
	ldr r1, _0804EB84 @ =0x00230007
	movs r0, #0x22
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804EB76
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x27
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EB88 @ =0x0023000A
	bl sub_08041058
	ldr r0, _0804EB8C @ =0x0023000B
	bl sub_08041058
	ldr r0, _0804EB90 @ =0x0023000C
	bl sub_08041058
	ldr r0, _0804EB94 @ =0x0023000D
	bl sub_08041058
	ldr r0, _0804EB98 @ =0x0023000E
	bl sub_08041058
	ldr r0, _0804EB9C @ =0x0023000F
	bl sub_08041058
	ldr r1, _0804EBA0 @ =0x00460032
	movs r0, #0x79
	bl sub_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x27
	bl sub_08041018
	ldr r0, _0804EBA4 @ =0x00230010
	bl sub_08041058
	movs r0, #0x88
	bl sub_080406E4
	movs r0, #5
	bl sub_0802D7CC
_0804EB76:
	pop {r0}
	bx r0
	.align 2, 0
_0804EB7C: .4byte 0x00230008
_0804EB80: .4byte 0x00230009
_0804EB84: .4byte 0x00230007
_0804EB88: .4byte 0x0023000A
_0804EB8C: .4byte 0x0023000B
_0804EB90: .4byte 0x0023000C
_0804EB94: .4byte 0x0023000D
_0804EB98: .4byte 0x0023000E
_0804EB9C: .4byte 0x0023000F
_0804EBA0: .4byte 0x00460032
_0804EBA4: .4byte 0x00230010

	thumb_func_start sub_0804EBA8
sub_0804EBA8: @ 0x0804EBA8
	push {lr}
	movs r0, #0x8a
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804EC54
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x27
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EC34 @ =0x00230011
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EC38 @ =0x00230012
	bl sub_08041058
	ldr r0, _0804EC3C @ =0x00230013
	bl sub_08041058
	ldr r0, _0804EC40 @ =0x00230014
	bl sub_08041058
	ldr r0, _0804EC44 @ =0x00230015
	bl sub_08041058
	ldr r0, _0804EC48 @ =0x00230016
	bl sub_08041058
	ldr r0, _0804EC4C @ =0x00230017
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EC50 @ =0x00230018
	bl sub_08041058
	movs r0, #0x79
	bl sub_08040B84
	movs r0, #0x8b
	bl sub_080406BC
	b _0804EC94
	.align 2, 0
_0804EC34: .4byte 0x00230011
_0804EC38: .4byte 0x00230012
_0804EC3C: .4byte 0x00230013
_0804EC40: .4byte 0x00230014
_0804EC44: .4byte 0x00230015
_0804EC48: .4byte 0x00230016
_0804EC4C: .4byte 0x00230017
_0804EC50: .4byte 0x00230018
_0804EC54:
	bl sub_08040FE8
	movs r0, #0x27
	bl sub_08041018
	ldr r0, _0804EC98 @ =0x00230019
	bl sub_08041058
	ldr r0, _0804EC9C @ =0x0023001A
	bl sub_08041058
	ldr r0, _0804ECA0 @ =0x0023001B
	bl sub_08041058
	ldr r0, _0804ECA4 @ =0x0023001C
	bl sub_08041058
	movs r0, #0x87
	bl sub_080406FC
	movs r0, #0x88
	bl sub_080406FC
	movs r0, #0x89
	bl sub_080406FC
	movs r0, #0x8a
	bl sub_080406FC
	movs r0, #0x8b
	bl sub_080406D0
_0804EC94:
	pop {r0}
	bx r0
	.align 2, 0
_0804EC98: .4byte 0x00230019
_0804EC9C: .4byte 0x0023001A
_0804ECA0: .4byte 0x0023001B
_0804ECA4: .4byte 0x0023001C

	thumb_func_start sub_0804ECA8
sub_0804ECA8: @ 0x0804ECA8
	push {lr}
	bl sub_080405B8
	ldr r0, _0804ED00 @ =0x0808E18C
	bl sub_0804115C
	ldr r2, _0804ED04 @ =0x0808E97C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08041894
	bl sub_080407FC
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804ED12
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804ED08 @ =sub_0804EAD8
	bl sub_0804066C
	movs r0, #0x88
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804ED0C
	movs r0, #0x79
	bl sub_08040B34
	b _0804ED3A
	.align 2, 0
_0804ED00: .4byte 0x0808E18C
_0804ED04: .4byte 0x0808E97C
_0804ED08: .4byte sub_0804EAD8
_0804ED0C:
	bl sub_080405AC
	b _0804ED3A
_0804ED12:
	movs r0, #0x16
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804ED2A
	cmp r0, #1
	ble _0804ED3A
	cmp r0, #2
	beq _0804ED30
	b _0804ED3A
_0804ED2A:
	movs r0, #0x8a
	bl sub_080406E4
_0804ED30:
	ldr r0, _0804ED5C @ =sub_0804EBA8
	bl sub_0804066C
	bl sub_080405AC
_0804ED3A:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0804ED5C: .4byte sub_0804EBA8

	thumb_func_start sub_0804ED60
sub_0804ED60: @ 0x0804ED60
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl sub_08041894
	bl sub_080407FC
	ldr r0, _0804EE24 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x40
	movs r2, #0x60
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	movs r4, #0x96
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_080410E0
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	movs r0, #0x98
	lsls r0, r0, #0xd
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EE28 @ =0x00130001
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EE2C @ =0x00130002
	bl sub_08041058
	ldr r0, _0804EE30 @ =0x00130003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804EE3C
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804EE34 @ =0x00130004
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EE38 @ =0x00130005
	bl sub_08041058
	b _0804F098
	.align 2, 0
_0804EE24: .4byte 0x0000011B
_0804EE28: .4byte 0x00130001
_0804EE2C: .4byte 0x00130002
_0804EE30: .4byte 0x00130003
_0804EE34: .4byte 0x00130004
_0804EE38: .4byte 0x00130005
_0804EE3C:
	ldr r1, _0804EFE0 @ =0x00130006
	movs r0, #0x12
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804EE4C
	b _0804F098
_0804EE4C:
	movs r0, #0x13
	bl sub_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804EFE4 @ =0x00130007
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EFE8 @ =0x00130008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EFEC @ =0x00130009
	bl sub_08041058
	movs r0, #0x1f
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804EFF0 @ =0x0013000B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804EFF4 @ =0x0013000C
	bl sub_08041058
	ldr r0, _0804EFF8 @ =0x0013000D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804EFFC @ =0x0013000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F000 @ =0x0013000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x30
	movs r3, #0x30
	bl sub_08041938
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0x42
	bl sub_08041830
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x48
	movs r3, #0x28
	bl sub_08041938
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804F004 @ =0x00130010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F008 @ =0x00130011
	bl sub_08041058
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804F00C @ =0x00130012
	bl sub_08041058
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F010 @ =0x00130013
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804F014 @ =0x00130014
	bl sub_08041058
	ldr r0, _0804F018 @ =0x00130015
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F020
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _0804F01C @ =0x00130016
	bl sub_08041058
	b _0804F044
	.align 2, 0
_0804EFE0: .4byte 0x00130006
_0804EFE4: .4byte 0x00130007
_0804EFE8: .4byte 0x00130008
_0804EFEC: .4byte 0x00130009
_0804EFF0: .4byte 0x0013000B
_0804EFF4: .4byte 0x0013000C
_0804EFF8: .4byte 0x0013000D
_0804EFFC: .4byte 0x0013000E
_0804F000: .4byte 0x0013000F
_0804F004: .4byte 0x00130010
_0804F008: .4byte 0x00130011
_0804F00C: .4byte 0x00130012
_0804F010: .4byte 0x00130013
_0804F014: .4byte 0x00130014
_0804F018: .4byte 0x00130015
_0804F01C: .4byte 0x00130016
_0804F020:
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F0A0 @ =0x0013001B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F0A4 @ =0x0013001C
	bl sub_08041058
_0804F044:
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F0A8 @ =0x00130017
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804F0AC @ =0x00130018
	bl sub_08041058
	ldr r0, _0804F0B0 @ =0x00130019
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F0B4 @ =0x0013001A
	bl sub_08041058
	movs r0, #0x4a
	bl sub_080406E4
	movs r0, #9
	bl sub_0802D7CC
	movs r0, #0x12
	bl sub_0802D7CC
_0804F098:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0A0: .4byte 0x0013001B
_0804F0A4: .4byte 0x0013001C
_0804F0A8: .4byte 0x00130017
_0804F0AC: .4byte 0x00130018
_0804F0B0: .4byte 0x00130019
_0804F0B4: .4byte 0x0013001A

	thumb_func_start sub_0804F0B8
sub_0804F0B8: @ 0x0804F0B8
	push {lr}
	movs r0, #0x4b
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804F0CA
	b _0804F228
_0804F0CA:
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x40
	movs r2, #0x60
	bl sub_08041894
	movs r0, #1
	movs r1, #0x42
	bl sub_08041830
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F200 @ =0x0013001D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804F204 @ =0x0013001E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804F208 @ =0x0013001F
	bl sub_08041058
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F20C @ =0x00130020
	bl sub_08041058
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804F210 @ =0x00130021
	bl sub_08041058
	ldr r0, _0804F214 @ =0x00130022
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804F218 @ =0x00130023
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0x60
	movs r3, #8
	bl sub_08041938
	movs r0, #0x78
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F21C @ =0x00130024
	bl sub_08041058
	ldr r0, _0804F220 @ =0x00130025
	bl sub_08041058
	movs r0, #0x19
	movs r1, #0x13
	bl sub_08042814
	movs r0, #0x1f
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F224 @ =0x00130026
	bl sub_08041058
	movs r0, #0x4d
	bl sub_080406BC
	b _0804F2BA
	.align 2, 0
_0804F200: .4byte 0x0013001D
_0804F204: .4byte 0x0013001E
_0804F208: .4byte 0x0013001F
_0804F20C: .4byte 0x00130020
_0804F210: .4byte 0x00130021
_0804F214: .4byte 0x00130022
_0804F218: .4byte 0x00130023
_0804F21C: .4byte 0x00130024
_0804F220: .4byte 0x00130025
_0804F224: .4byte 0x00130026
_0804F228:
	movs r0, #0
	movs r1, #0x40
	movs r2, #0x60
	bl sub_08041894
	movs r0, #1
	movs r1, #0x42
	bl sub_08041830
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F2C0 @ =0x00130027
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804F2C4 @ =0x00130028
	bl sub_08041058
	ldr r0, _0804F2C8 @ =0x00130029
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x38
	bl sub_08041018
	ldr r0, _0804F2CC @ =0x0013002A
	bl sub_08041058
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F2D0 @ =0x0013002B
	bl sub_08041058
	ldr r0, _0804F2D4 @ =0x0013002C
	bl sub_08041058
	ldr r0, _0804F2D8 @ =0x0013002D
	bl sub_08041058
	movs r0, #0x4b
	bl sub_080406FC
	movs r0, #0x4c
	bl sub_080406FC
	movs r0, #0x4a
	bl sub_080406FC
	movs r0, #0x4d
	bl sub_080406D0
_0804F2BA:
	pop {r0}
	bx r0
	.align 2, 0
_0804F2C0: .4byte 0x00130027
_0804F2C4: .4byte 0x00130028
_0804F2C8: .4byte 0x00130029
_0804F2CC: .4byte 0x0013002A
_0804F2D0: .4byte 0x0013002B
_0804F2D4: .4byte 0x0013002C
_0804F2D8: .4byte 0x0013002D

	thumb_func_start sub_0804F2DC
sub_0804F2DC: @ 0x0804F2DC
	push {lr}
	movs r0, #1
	movs r1, #0x42
	bl sub_08041830
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #1
	bl sub_08041808
	movs r0, #5
	movs r1, #1
	bl sub_08041808
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x1f
	bl sub_08041018
	ldr r0, _0804F320 @ =0x0013002E
	bl sub_08041058
	ldr r0, _0804F324 @ =0x0013002F
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804F320: .4byte 0x0013002E
_0804F324: .4byte 0x0013002F

	thumb_func_start sub_0804F328
sub_0804F328: @ 0x0804F328
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _0804F42C @ =0x0808E1B4
	bl sub_0804115C
	ldr r4, _0804F430 @ =0x0808E6DC
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x78
	movs r2, #0x48
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r2, _0804F434 @ =0x0808E90C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x48
	bl sub_08041894
	ldr r2, _0804F438 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	ldr r2, _0804F43C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x64
	movs r2, #0x48
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0x78
	movs r2, #0x48
	bl sub_08041894
	movs r0, #4
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	bl sub_08041808
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #0x88
	movs r2, #0x48
	bl sub_08041894
	movs r0, #5
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	bl sub_08041808
	movs r0, #0x4d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804F444
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804F440 @ =sub_0804F2DC
	bl sub_0804066C
	b _0804F496
	.align 2, 0
_0804F42C: .4byte 0x0808E1B4
_0804F430: .4byte 0x0808E6DC
_0804F434: .4byte 0x0808E90C
_0804F438: .4byte 0x0808EA6C
_0804F43C: .4byte 0x0808E6BC
_0804F440: .4byte sub_0804F2DC
_0804F444:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F474
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804F470 @ =sub_0804ED60
	bl sub_0804066C
	movs r0, #0x4a
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804F496
	movs r0, #8
	bl sub_08040F18
	b _0804F496
	.align 2, 0
_0804F470: .4byte sub_0804ED60
_0804F474:
	movs r0, #0x13
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804F48C
	movs r0, #0x4b
	bl sub_080406E4
_0804F48C:
	ldr r0, _0804F500 @ =sub_0804F0B8
	bl sub_0804066C
	bl sub_08040F0C
_0804F496:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
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
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F500: .4byte sub_0804F0B8

	thumb_func_start sub_0804F504
sub_0804F504: @ 0x0804F504
	push {lr}
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	movs r0, #0x88
	lsls r0, r0, #0xd
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F640 @ =0x00110001
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F644 @ =0x00110002
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F648 @ =0x00110003
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F64C @ =0x00110004
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804F650 @ =0x00110005
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804F664
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804F654 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F658 @ =0x00110006
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F65C @ =0x00110007
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F660 @ =0x00110008
	bl sub_08041058
	b _0804F85E
	.align 2, 0
_0804F640: .4byte 0x00110001
_0804F644: .4byte 0x00110002
_0804F648: .4byte 0x00110003
_0804F64C: .4byte 0x00110004
_0804F650: .4byte 0x00110005
_0804F654: .4byte 0x0000011F
_0804F658: .4byte 0x00110006
_0804F65C: .4byte 0x00110007
_0804F660: .4byte 0x00110008
_0804F664:
	ldr r1, _0804F770 @ =0x00110009
	movs r0, #0x10
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F674
	b _0804F85E
_0804F674:
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F774 @ =0x0011000A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F778 @ =0x0011000B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804F77C @ =0x0011000C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F780 @ =0x0011000D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F784 @ =0x0011000E
	bl sub_08041058
	ldr r0, _0804F788 @ =0x0011000F
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F798
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _0804F78C @ =0x00110010
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F790 @ =0x00110011
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F794 @ =0x00110012
	bl sub_08041058
	b _0804F7DA
	.align 2, 0
_0804F770: .4byte 0x00110009
_0804F774: .4byte 0x0011000A
_0804F778: .4byte 0x0011000B
_0804F77C: .4byte 0x0011000C
_0804F780: .4byte 0x0011000D
_0804F784: .4byte 0x0011000E
_0804F788: .4byte 0x0011000F
_0804F78C: .4byte 0x00110010
_0804F790: .4byte 0x00110011
_0804F794: .4byte 0x00110012
_0804F798:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F864 @ =0x00110019
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F868 @ =0x0011001A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F86C @ =0x0011001B
	bl sub_08041058
_0804F7DA:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F870 @ =0x00110013
	bl sub_08041058
	ldr r0, _0804F874 @ =0x00110014
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F878 @ =0x00110015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F87C @ =0x00110016
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804F880 @ =0x00110017
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F884 @ =0x00110018
	bl sub_08041058
	movs r0, #0x42
	bl sub_080406E4
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_0804F85E:
	pop {r0}
	bx r0
	.align 2, 0
_0804F864: .4byte 0x00110019
_0804F868: .4byte 0x0011001A
_0804F86C: .4byte 0x0011001B
_0804F870: .4byte 0x00110013
_0804F874: .4byte 0x00110014
_0804F878: .4byte 0x00110015
_0804F87C: .4byte 0x00110016
_0804F880: .4byte 0x00110017
_0804F884: .4byte 0x00110018

	thumb_func_start sub_0804F888
sub_0804F888: @ 0x0804F888
	push {lr}
	bl sub_08040FE8
	movs r0, #0x43
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804F89C
	b _0804F9FC
_0804F89C:
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F9CC @ =0x0011001C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F9D0 @ =0x0011001D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F9D4 @ =0x0011001E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F9D8 @ =0x0011001F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F9DC @ =0x00110020
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F9E0 @ =0x00110021
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F9E4 @ =0x00110022
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r1, _0804F9E8 @ =0x0046002A
	movs r0, #0x6f
	bl sub_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F9EC @ =0x00110023
	bl sub_08041058
	bl sub_08040BB8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804F9F0 @ =0x00110024
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804F9F4 @ =0x00110025
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804F9F8 @ =0x00110026
	bl sub_08041058
	b _0804FAAA
	.align 2, 0
_0804F9CC: .4byte 0x0011001C
_0804F9D0: .4byte 0x0011001D
_0804F9D4: .4byte 0x0011001E
_0804F9D8: .4byte 0x0011001F
_0804F9DC: .4byte 0x00110020
_0804F9E0: .4byte 0x00110021
_0804F9E4: .4byte 0x00110022
_0804F9E8: .4byte 0x0046002A
_0804F9EC: .4byte 0x00110023
_0804F9F0: .4byte 0x00110024
_0804F9F4: .4byte 0x00110025
_0804F9F8: .4byte 0x00110026
_0804F9FC:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FAB0 @ =0x00110038
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FAB4 @ =0x00110039
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FAB8 @ =0x0011003A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0804FABC @ =0x00110034
	bl sub_08041058
	ldr r0, _0804FAC0 @ =0x00110035
	bl sub_08041058
	ldr r0, _0804FAC4 @ =0x00110036
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FAC8 @ =0x00110037
	bl sub_08041058
	movs r0, #0x42
	bl sub_080406FC
	movs r0, #0x43
	bl sub_080406FC
	movs r0, #0x44
	bl sub_080406FC
	movs r0, #0x45
	bl sub_080406D0
_0804FAAA:
	pop {r0}
	bx r0
	.align 2, 0
_0804FAB0: .4byte 0x00110038
_0804FAB4: .4byte 0x00110039
_0804FAB8: .4byte 0x0011003A
_0804FABC: .4byte 0x00110034
_0804FAC0: .4byte 0x00110035
_0804FAC4: .4byte 0x00110036
_0804FAC8: .4byte 0x00110037

	thumb_func_start sub_0804FACC
sub_0804FACC: @ 0x0804FACC
	push {lr}
	movs r0, #0x44
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804FADE
	b _0804FC14
_0804FADE:
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FBEC @ =0x00110027
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FBF0 @ =0x00110028
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FBF4 @ =0x00110029
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FBF8 @ =0x0011002A
	bl sub_08041058
	movs r0, #0
	movs r1, #0x12
	bl sub_08042814
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FBFC @ =0x0011002B
	bl sub_08041058
	ldr r0, _0804FC00 @ =0x0011002C
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804FC04 @ =0x0011002D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FC08 @ =0x0011002E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804FC0C @ =0x0011002F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FC10 @ =0x00110030
	bl sub_08041058
	movs r0, #0x6f
	bl sub_08040B84
	movs r0, #0x45
	bl sub_080406BC
	b _0804FCAE
	.align 2, 0
_0804FBEC: .4byte 0x00110027
_0804FBF0: .4byte 0x00110028
_0804FBF4: .4byte 0x00110029
_0804FBF8: .4byte 0x0011002A
_0804FBFC: .4byte 0x0011002B
_0804FC00: .4byte 0x0011002C
_0804FC04: .4byte 0x0011002D
_0804FC08: .4byte 0x0011002E
_0804FC0C: .4byte 0x0011002F
_0804FC10: .4byte 0x00110030
_0804FC14:
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FCB4 @ =0x00110031
	bl sub_08041058
	ldr r0, _0804FCB8 @ =0x00110032
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FCBC @ =0x00110033
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FCC0 @ =0x00110034
	bl sub_08041058
	ldr r0, _0804FCC4 @ =0x00110035
	bl sub_08041058
	ldr r0, _0804FCC8 @ =0x00110036
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FCCC @ =0x00110037
	bl sub_08041058
	movs r0, #0x42
	bl sub_080406FC
	movs r0, #0x43
	bl sub_080406FC
	movs r0, #0x44
	bl sub_080406FC
	movs r0, #0x45
	bl sub_080406D0
_0804FCAE:
	pop {r0}
	bx r0
	.align 2, 0
_0804FCB4: .4byte 0x00110031
_0804FCB8: .4byte 0x00110032
_0804FCBC: .4byte 0x00110033
_0804FCC0: .4byte 0x00110034
_0804FCC4: .4byte 0x00110035
_0804FCC8: .4byte 0x00110036
_0804FCCC: .4byte 0x00110037

	thumb_func_start sub_0804FCD0
sub_0804FCD0: @ 0x0804FCD0
	push {lr}
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FD70 @ =0x0011003B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FD74 @ =0x0011003C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FD78 @ =0x0011003D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0804FD7C @ =0x0011003E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0804FD80 @ =0x0011003F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0804FD84 @ =0x00110040
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0804FD70: .4byte 0x0011003B
_0804FD74: .4byte 0x0011003C
_0804FD78: .4byte 0x0011003D
_0804FD7C: .4byte 0x0011003E
_0804FD80: .4byte 0x0011003F
_0804FD84: .4byte 0x00110040

	thumb_func_start sub_0804FD88
sub_0804FD88: @ 0x0804FD88
	push {lr}
	bl sub_080405B8
	ldr r0, _0804FE08 @ =0x0808E1DC
	bl sub_0804115C
	ldr r2, _0804FE0C @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xbc
	movs r2, #0x62
	bl sub_08041894
	ldr r2, _0804FE10 @ =0x0808E70C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x62
	bl sub_08041894
	ldr r2, _0804FE14 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x44
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804FE1C
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804FE18 @ =sub_0804FCD0
	bl sub_0804066C
	b _0804FEC2
	.align 2, 0
_0804FE08: .4byte 0x0808E1DC
_0804FE0C: .4byte 0x0808E7BC
_0804FE10: .4byte 0x0808E70C
_0804FE14: .4byte 0x0808E6BC
_0804FE18: .4byte sub_0804FCD0
_0804FE1C:
	movs r0, #0x43
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804FE58
	movs r0, #0x12
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804FE42
	cmp r0, #1
	ble _0804FEC2
	cmp r0, #2
	beq _0804FE48
	b _0804FEC2
_0804FE42:
	movs r0, #0x44
	bl sub_080406E4
_0804FE48:
	ldr r0, _0804FE54 @ =sub_0804FACC
	bl sub_0804066C
	bl sub_08040B28
	b _0804FEC2
	.align 2, 0
_0804FE54: .4byte sub_0804FACC
_0804FE58:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804FE88
	movs r0, #0x1c
	bl sub_080410A8
	ldr r0, _0804FE84 @ =sub_0804F504
	bl sub_0804066C
	movs r0, #0x42
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804FEC2
	movs r0, #0xc
	bl sub_08040F18
	b _0804FEC2
	.align 2, 0
_0804FE84: .4byte sub_0804F504
_0804FE88:
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804FEB8
	movs r0, #0x43
	bl sub_080406E4
	ldr r0, _0804FEB4 @ =sub_0804F888
	bl sub_0804066C
	bl sub_08040F0C
	movs r0, #0x6f
	bl sub_08040B34
	b _0804FEC2
	.align 2, 0
_0804FEB4: .4byte sub_0804F888
_0804FEB8:
	ldr r0, _0804FF00 @ =sub_0804F888
	bl sub_0804066C
	bl sub_08040F0C
_0804FEC2:
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
	pop {r0}
	bx r0
	.align 2, 0
_0804FF00: .4byte sub_0804F888

	thumb_func_start sub_0804FF04
sub_0804FF04: @ 0x0804FF04
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x14
	bl sub_08041018
	movs r0, #0x88
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _0804FF7C @ =0x00220001
	bl sub_08041058
	ldr r0, _0804FF80 @ =0x00220002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804FF88
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _0804FF84 @ =0x00220003
	bl sub_08041058
	b _080500B8
	.align 2, 0
_0804FF7C: .4byte 0x00220001
_0804FF80: .4byte 0x00220002
_0804FF84: .4byte 0x00220003
_0804FF88:
	ldr r1, _0805001C @ =0x00220004
	movs r0, #0x21
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804FF98
	b _080500B8
_0804FF98:
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x14
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08050020 @ =0x00220005
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08050024 @ =0x00220006
	bl sub_08041058
	ldr r0, _08050028 @ =0x00220007
	bl sub_08041058
	ldr r0, _0805002C @ =0x00220008
	bl sub_08041058
	ldr r0, _08050030 @ =0x00220009
	bl sub_08041058
	ldr r0, _08050034 @ =0x0022000A
	bl sub_08041058
	ldr r0, _08050038 @ =0x0022000B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050044
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805003C @ =0x0022000C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08050040 @ =0x0022000D
	bl sub_08041058
	b _08050080
	.align 2, 0
_0805001C: .4byte 0x00220004
_08050020: .4byte 0x00220005
_08050024: .4byte 0x00220006
_08050028: .4byte 0x00220007
_0805002C: .4byte 0x00220008
_08050030: .4byte 0x00220009
_08050034: .4byte 0x0022000A
_08050038: .4byte 0x0022000B
_0805003C: .4byte 0x0022000C
_08050040: .4byte 0x0022000D
_08050044:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _080500BC @ =0x00220011
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _080500C0 @ =0x00220012
	bl sub_08041058
	ldr r0, _080500C4 @ =0x00220013
	bl sub_08041058
_08050080:
	ldr r0, _080500C8 @ =0x0022000E
	bl sub_08041058
	ldr r0, _080500CC @ =0x0022000F
	bl sub_08041058
	ldr r1, _080500D0 @ =0x00460030
	movs r0, #0x77
	bl sub_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x14
	bl sub_08041018
	ldr r0, _080500D4 @ =0x00220010
	bl sub_08041058
	movs r0, #0x84
	bl sub_080406E4
	movs r0, #0x29
	bl sub_0802D7CC
_080500B8:
	pop {r0}
	bx r0
	.align 2, 0
_080500BC: .4byte 0x00220011
_080500C0: .4byte 0x00220012
_080500C4: .4byte 0x00220013
_080500C8: .4byte 0x0022000E
_080500CC: .4byte 0x0022000F
_080500D0: .4byte 0x00460030
_080500D4: .4byte 0x00220010
