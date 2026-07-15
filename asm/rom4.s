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
	bl m4aSongNumStart
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
	bl TestBit_0800B87C
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
	bl TestBit_0800B87C
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

	thumb_func_start EventInit_080405B8
EventInit_080405B8: @ 0x080405B8
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

	thumb_func_start RunEventScript_0804066C
RunEventScript_0804066C: @ 0x0804066C
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

	thumb_func_start EventSleep_08040690
EventSleep_08040690: @ 0x08040690
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

	thumb_func_start SetEventFlag_080406BC
SetEventFlag_080406BC: @ 0x080406BC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl EventSetFlag_080406E4
	bl sub_080406AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start UnsetEventFlag_080406D0
UnsetEventFlag_080406D0: @ 0x080406D0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl EventUnsetFlag_080406D0
	bl sub_080406AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EventSetFlag_080406E4
EventSetFlag_080406E4: @ 0x080406E4
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

	thumb_func_start EventUnsetFlag_080406D0
EventUnsetFlag_080406D0: @ 0x080406FC
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

	thumb_func_start TestQuestFlag_08040714
TestQuestFlag_08040714: @ 0x08040714
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0804072C @ =0x020335F8
	bl TestBit_0800B87C
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

	thumb_func_start GetCharacterID_080408B8
GetCharacterID_080408B8: @ 0x080408B8
	ldr r0, _080408C0 @ =0x03004400
	ldrb r0, [r0, #0xe]
	bx lr
	.align 2, 0
_080408C0: .4byte 0x03004400

	thumb_func_start EventQuestTitle_080408C4
EventQuestTitle_080408C4: @ 0x080408C4
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
	bl PlayJingle_08041100
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

	thumb_func_start EventQuestFailRetry_08040A6C
EventQuestFailRetry_08040A6C: @ 0x08040A6C
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
	bl EventBGMPlay_080410A8
	movs r0, #0x35
	bl EventWinSpeakerSet_08041018
	ldr r0, _08040AB4 @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r0, #8
	bl sub_08005BE0
	ldr r4, _08040AB8 @ =0x02034BF0
	ldrb r1, [r4, #0xd]
	movs r0, #0
	bl sub_08005C10
	movs r0, #0x42
	bl EventWinMesSet_08041058
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08040ABC
	movs r0, #0x48
	bl EventWinMesSet_08041058
	b _08040AFC
	.align 2, 0
_08040AB4: .4byte 0x03004400
_08040AB8: .4byte 0x02034BF0
_08040ABC:
	movs r0, #0x43
	bl EventWinMesSet_08041058
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08040AD0
	movs r0, #0x53
	bl EventWinMesSet_08041058
	b _08040AD6
_08040AD0:
	movs r0, #0x44
	bl EventWinMesSet_08041058
_08040AD6:
	movs r0, #0x45
	bl EventWinChoice_0804106C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040AFC
	movs r0, #0x46
	bl EventWinMesSet_08041058
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

	thumb_func_start EventQuestBegin_080406D0
EventQuestBegin_080406D0: @ 0x08040B34
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

	thumb_func_start EventSetMinigame_08040B84
EventSetMinigame_08040B84: @ 0x08040B84
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
	bl memcpy
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
	bl m4aSongNumStart
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
	bl m4aSongNumStop
	ldr r0, _08040DD0 @ =0x0000012B
	bl m4aSongNumStart
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
	bl __divsi3
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
	bl __modsi3
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

	thumb_func_start EventWinInit_08040fe8
EventWinInit_08040fe8: @ 0x08040FE8
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
	bl EventWinSpeakerSet_08041018
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

	thumb_func_start EventWinSpeakerSet_08041018
EventWinSpeakerSet_08041018: @ 0x08041018
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

	thumb_func_start EventWinMesSet_08041058
EventWinMesSet_08041058: @ 0x08041058
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005AA0
	adds r0, r4, #0
	bl sub_080062D0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EventWinChoice_0804106C
EventWinChoice_0804106C: @ 0x0804106C
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

	thumb_func_start EventWinChoiceGet_08041088
EventWinChoiceGet_08041088: @ 0x08041088
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

	thumb_func_start EventBGMPlay_080410A8
EventBGMPlay_080410A8: @ 0x080410A8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080410BC @ =0x020335D0
	strh r0, [r1, #0xa]
	bl m4aSongNumStartOrContinue
	pop {r0}
	bx r0
	.align 2, 0
_080410BC: .4byte 0x020335D0

	thumb_func_start StopSongID_080410C0
StopSongID_080410C0: @ 0x080410C0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStop
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
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080410F0
sub_080410F0: @ 0x080410F0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStop
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start PlayJingle_08041100
PlayJingle_08041100: @ 0x08041100
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0804111C @ =0x020335D0
	ldrh r0, [r0, #0xa]
	bl m4aSongNumStop
	adds r0, r4, #0
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804111C: .4byte 0x020335D0

	thumb_func_start ContinueSong_08041120
ContinueSong_08041120: @ 0x08041120
	push {lr}
	movs r0, #1
	bl sub_080077D4
	ldr r0, _08041134 @ =0x020335D0
	ldrh r0, [r0, #0xa]
	bl m4aSongNumStartOrContinue
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
	bl PlayJingle_08041100
	bl sub_08041138
	bl ContinueSong_08041120
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start LoadBuildingBG_0804115C
LoadBuildingBG_0804115C: @ 0x0804115C
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
	bl memset
	add r5, sp, #4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	bl memset
	add r4, sp, #8
	ldr r1, _08041224 @ =0x0808DABC
	adds r0, r4, #0
	movs r2, #2
	bl memcpy
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

	thumb_func_start DisplayGFX_080414B4
DisplayGFX_080414B4: @ 0x080414B4
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

	thumb_func_start LoadCharSprite_080415A0
LoadCharSprite_080415A0: @ 0x080415A0
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

	thumb_func_start EventPlaceChara_08041894
EventPlaceChara_08041894: @ 0x08041894
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

	thumb_func_start EventAnimateChara_080418C8
EventAnimateChara_080418C8: @ 0x080418C8
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
	bl __divsi3
	mov sl, r0
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
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
	bl m4aSongNumStart
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
	bl m4aSongNumStart
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

