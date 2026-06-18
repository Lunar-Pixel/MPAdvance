	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0802006C
sub_0802006C: @ 0x0802006C
	push {lr}
	ldr r0, _08020090 @ =0x030013D0
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r1, #6
	ldrsh r0, [r2, r1]
	ldr r1, _08020094 @ =0x080846FC
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_08020090: .4byte 0x030013D0
_08020094: .4byte 0x080846FC

	thumb_func_start sub_08020098
sub_08020098: @ 0x08020098
	bx lr
	.align 2, 0

	thumb_func_start sub_0802009C
sub_0802009C: @ 0x0802009C
	push {r4, r5, r6, lr}
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _0802018C @ =0x030013D0
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x58
	ldrh r0, [r0]
	movs r1, #0x28
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x5a
	ldrh r2, [r2]
	movs r4, #0x60
	subs r2, r4, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_08009A70
	ldr r1, _08020190 @ =0x06010000
	adds r0, r6, #0
	bl sub_08009A78
	ldr r0, [r5]
	ldr r1, [r0, #0x60]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08020194 @ =0x08084690
	ldr r0, _08020198 @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0802019C @ =0x080846A0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r6, [r0, #0x28]
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x58
	ldrh r0, [r0]
	movs r1, #0xc8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x5a
	ldrh r0, [r2]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r1, _080201A0 @ =0x06010400
	adds r0, r6, #0
	bl sub_08009A78
	ldr r0, [r5]
	ldr r1, [r0, #0x68]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _080201A4 @ =0x080D7B68
	ldr r2, _080201A8 @ =0x080D7B20
	adds r0, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r6, [r0, #0x2c]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _080201AC @ =0x08084704
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802018C: .4byte 0x030013D0
_08020190: .4byte 0x06010000
_08020194: .4byte 0x08084690
_08020198: .4byte 0x03004488
_0802019C: .4byte 0x080846A0
_080201A0: .4byte 0x06010400
_080201A4: .4byte 0x080D7B68
_080201A8: .4byte 0x080D7B20
_080201AC: .4byte 0x08084704

	thumb_func_start sub_080201B0
sub_080201B0: @ 0x080201B0
	bx lr
	.align 2, 0

	thumb_func_start sub_080201B4
sub_080201B4: @ 0x080201B4
	push {r4, lr}
	ldr r4, _080201D0 @ =0x030013D0
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080201D0: .4byte 0x030013D0

	thumb_func_start sub_080201D4
sub_080201D4: @ 0x080201D4
	push {r4, r5, r6, r7, lr}
	movs r0, #3
	movs r1, #0x81
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r4, _080202B0 @ =0x030013D0
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r3, #0
	adds r0, #0x88
	ldr r2, [r0]
	subs r0, #0x2e
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x50]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _080202B4 @ =0x080C0284
	ldr r2, _080202B8 @ =0x080C0268
	adds r0, r5, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x30]
	movs r6, #0
	adds r7, r4, #0
	movs r4, #0
_08020240:
	movs r0, #3
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	movs r2, #0x54
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0xe0
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x50]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _080202B4 @ =0x080C0284
	ldr r2, _080202B8 @ =0x080C0268
	movs r3, #4
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x38
	adds r0, r0, r1
	str r5, [r0]
	adds r4, #0xc
	adds r6, #1
	cmp r6, #4
	ble _08020240
	ldr r0, _080202B0 @ =0x030013D0
	ldr r0, [r0]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _080202BC @ =0x0808470C
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080202B0: .4byte 0x030013D0
_080202B4: .4byte 0x080C0284
_080202B8: .4byte 0x080C0268
_080202BC: .4byte 0x0808470C

	thumb_func_start sub_080202C0
sub_080202C0: @ 0x080202C0
	push {r4, r5, r6, r7, lr}
	ldr r4, _08020394 @ =0x030013D0
	ldr r3, [r4]
	ldr r0, [r3, #0x30]
	adds r1, r3, #0
	adds r1, #0x84
	movs r2, #2
	ldrsh r1, [r1, r2]
	adds r2, r3, #0
	adds r2, #0x58
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0x88
	movs r5, #2
	ldrsh r2, [r2, r5]
	adds r3, #0x5a
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	movs r5, #0
	ldr r0, [r4]
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r5, r0
	bge _08020336
	adds r6, r4, #0
	movs r7, #0
_08020302:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x38
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, #0x38
	adds r0, r0, r4
	ldr r0, [r0]
	movs r2, #0x54
	subs r2, r2, r7
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #8
	bl sub_08009A70
	adds r7, #0xc
	adds r5, #1
	ldr r0, [r6]
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r5, r0
	blt _08020302
_08020336:
	movs r5, #0
	ldr r4, _08020394 @ =0x030013D0
	ldr r0, [r4]
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #5
	subs r0, r0, r1
	cmp r5, r0
	bge _080203C4
	movs r6, #0
_0802034A:
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x7e
	ldrb r1, [r0]
	movs r0, #5
	subs r0, r0, r1
	cmp r5, r0
	bge _08020398
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r1, r1, r5
	lsls r1, r1, #2
	subs r0, #0x45
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, #0x38
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x54
	subs r2, r2, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xe0
	bl sub_08009A70
	b _080203B0
	.align 2, 0
_08020394: .4byte 0x030013D0
_08020398:
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x38
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	bl sub_08009A34
_080203B0:
	adds r6, #0xc
	adds r5, #1
	ldr r4, _080203CC @ =0x030013D0
	ldr r0, [r4]
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #5
	subs r0, r0, r1
	cmp r5, r0
	blt _0802034A
_080203C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080203CC: .4byte 0x030013D0

	thumb_func_start sub_080203D0
sub_080203D0: @ 0x080203D0
	push {r4, r5, lr}
	ldr r4, _080203F8 @ =0x030013D0
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	bl sub_08009A00
	movs r5, #0
_080203DE:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x38
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #4
	ble _080203DE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080203F8: .4byte 0x030013D0

	thumb_func_start sub_080203FC
sub_080203FC: @ 0x080203FC
	push {lr}
	ldr r0, _0802041C @ =0x030013D0
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08020416
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_08020416:
	pop {r0}
	bx r0
	.align 2, 0
_0802041C: .4byte 0x030013D0

	thumb_func_start sub_08020420
sub_08020420: @ 0x08020420
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0xbf
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _08020490 @ =0x030013D0
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x58
	ldrh r0, [r0]
	movs r1, #0x28
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x5a
	ldrh r0, [r2]
	movs r2, #0x60
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x50]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08020494 @ =0x080C0284
	ldr r2, _08020498 @ =0x080C0268
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x34]
	ldr r0, _0802049C @ =sub_080203FC
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020490: .4byte 0x030013D0
_08020494: .4byte 0x080C0284
_08020498: .4byte 0x080C0268
_0802049C: .4byte sub_080203FC

	thumb_func_start sub_080204A0
sub_080204A0: @ 0x080204A0
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x54
	movs r2, #0x64
	bl sub_08009A70
	ldr r5, _08020500 @ =0x030013D0
	ldr r0, [r5]
	ldr r1, [r0, #0x54]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08020504 @ =0x080B8664
	ldr r0, _08020508 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0802050C @ =0x080B8660
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x18]
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_08009ACC
	ldr r0, [r5]
	str r4, [r0, #0x4c]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _08020510 @ =sub_08020514
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020500: .4byte 0x030013D0
_08020504: .4byte 0x080B8664
_08020508: .4byte 0x03004400
_0802050C: .4byte 0x080B8660
_08020510: .4byte sub_08020514

	thumb_func_start sub_08020514
sub_08020514: @ 0x08020514
	bx lr
	.align 2, 0

	thumb_func_start sub_08020518
sub_08020518: @ 0x08020518
	push {r4, lr}
	ldr r4, _08020534 @ =0x030013D0
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020534: .4byte 0x030013D0

	thumb_func_start sub_08020538
sub_08020538: @ 0x08020538
	push {r4, lr}
	sub sp, #4
	ldr r4, _08020568 @ =0x030013D0
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	movs r1, #0x44
	str r1, [sp]
	movs r1, #0xd
	movs r2, #0x54
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r4]
	strh r0, [r1, #0xe]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020568: .4byte 0x030013D0

	thumb_func_start sub_0802056C
sub_0802056C: @ 0x0802056C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08020590 @ =0x030013D0
_08020572:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #0
	ble _08020572
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020590: .4byte 0x030013D0

	thumb_func_start sub_08020594
sub_08020594: @ 0x08020594
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r5, _0802079C @ =0x030013D4
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0xb4
	bl sub_08007EFC
	ldr r0, _080207A0 @ =0x08084880
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r0, #0
	bl sub_08020C64
	adds r0, r4, #0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #2]
	movs r0, #1
	bl sub_08020C64
	ldr r0, _080207A4 @ =0x08084890
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #4]
	movs r0, #0
	bl sub_08020FF8
	adds r0, r4, #0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #6]
	movs r0, #1
	bl sub_08020FF8
	ldr r0, _080207A8 @ =0x0808489C
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	ldr r0, _080207AC @ =0x080848A8
	ldr r0, [r0]
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldr r1, _080207B0 @ =sub_080215EC
	bl sub_08007BA0
	ldr r0, _080207B4 @ =0x080848B8
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldr r6, _080207B8 @ =sub_08021820
	adds r1, r6, #0
	bl sub_08007BA0
	movs r0, #0
	bl sub_0802161C
	adds r0, r4, #0
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xe]
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	adds r1, r6, #0
	bl sub_08007BA0
	movs r0, #1
	bl sub_0802161C
	ldr r0, _080207BC @ =sub_08021A04
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x10]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	ldr r1, _080207C0 @ =sub_08021AAC
	bl sub_08007BA0
	ldr r1, _080207C4 @ =0x080847D8
	ldr r4, _080207C8 @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080207CC @ =0x05000200
	bl sub_08008308
	ldr r1, _080207D0 @ =0x080847E8
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x98
	str r0, [r2]
	adds r1, #0x9c
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r0, _080207D4 @ =0x080D552C
	ldr r1, _080207D8 @ =0x05000220
	bl sub_08008308
	ldr r0, _080207DC @ =0x080D565C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xa0
	str r0, [r2]
	adds r1, #0xa4
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r1, _080207E0 @ =0x08085A50
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xa8
	str r0, [r2]
	adds r1, #0xac
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r4, _080207E4 @ =0x06010800
	ldr r0, _080207E8 @ =0x080D5CD4
	ldr r1, _080207EC @ =0x05000240
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x68]
	ldr r0, _080207F0 @ =0x080D5E34
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _080207F4 @ =0x080CAC38
	ldr r1, _080207F8 @ =0x05000260
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x6c]
	ldr r0, _080207FC @ =0x080CAD1C
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08020800 @ =0x080B85E8
	ldr r6, _08020804 @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08020808 @ =0x05000280
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x70]
	ldr r1, _0802080C @ =0x080B8624
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _08020810 @ =0x0808473C
	bl sub_0800B02C
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1e
	movs r2, #4
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802079C: .4byte 0x030013D4
_080207A0: .4byte 0x08084880
_080207A4: .4byte 0x08084890
_080207A8: .4byte 0x0808489C
_080207AC: .4byte 0x080848A8
_080207B0: .4byte sub_080215EC
_080207B4: .4byte 0x080848B8
_080207B8: .4byte sub_08021820
_080207BC: .4byte sub_08021A04
_080207C0: .4byte sub_08021AAC
_080207C4: .4byte 0x080847D8
_080207C8: .4byte 0x03004488
_080207CC: .4byte 0x05000200
_080207D0: .4byte 0x080847E8
_080207D4: .4byte 0x080D552C
_080207D8: .4byte 0x05000220
_080207DC: .4byte 0x080D565C
_080207E0: .4byte 0x08085A50
_080207E4: .4byte 0x06010800
_080207E8: .4byte 0x080D5CD4
_080207EC: .4byte 0x05000240
_080207F0: .4byte 0x080D5E34
_080207F4: .4byte 0x080CAC38
_080207F8: .4byte 0x05000260
_080207FC: .4byte 0x080CAD1C
_08020800: .4byte 0x080B85E8
_08020804: .4byte 0x03004400
_08020808: .4byte 0x05000280
_0802080C: .4byte 0x080B8624
_08020810: .4byte 0x0808473C

	thumb_func_start sub_08020814
sub_08020814: @ 0x08020814
	push {r4, lr}
	ldr r1, _08020834 @ =0x0808486C
	ldr r4, _08020838 @ =0x030013D4
	ldr r0, [r4]
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0x18]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08020834: .4byte 0x0808486C
_08020838: .4byte 0x030013D4

	thumb_func_start sub_0802083C
sub_0802083C: @ 0x0802083C
	ldr r1, _08020850 @ =0x030013D4
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0x19]
	ldr r0, [r1]
	strb r3, [r0, #0x1a]
	ldr r0, [r1]
	strh r3, [r0, #0x1c]
	bx lr
	.align 2, 0
_08020850: .4byte 0x030013D4

	thumb_func_start sub_08020854
sub_08020854: @ 0x08020854
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #0
	movs r6, #0
_0802085E:
	movs r5, #0
	cmp r7, #0
	bne _08020870
	bl sub_08029994
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r3, #0
	b _08020892
_08020870:
	ldr r0, _080208C0 @ =0x030013D4
	ldr r1, [r0]
	adds r1, r1, r6
	adds r1, #0x43
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x12
	bl sub_080711AC
	lsls r0, r0, #0x18
	lsls r3, r7, #2
	cmp r0, #0
	bne _08020892
	movs r5, #5
_08020892:
	ldr r0, _080208C0 @ =0x030013D4
	ldr r1, [r0]
	adds r2, r1, r6
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r4, [r1]
	mov r8, r0
	cmp r5, #0
	beq _080208C4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	ble _080208B6
	adds r4, r0, #0
_080208B6:
	adds r1, r2, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	b _080208F0
	.align 2, 0
_080208C0: .4byte 0x030013D4
_080208C4:
	adds r1, r2, #0
	adds r1, #0x42
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r3
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl sub_08070FCC
	subs r4, r4, r0
	cmp r4, #0
	bge _080208F0
	movs r4, #0
_080208F0:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r6
	adds r0, #0x40
	strh r4, [r0]
	adds r6, #4
	adds r7, #1
	cmp r7, #1
	ble _0802085E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802090C
sub_0802090C: @ 0x0802090C
	push {r4, r5, r6, lr}
	ldr r6, _08020920 @ =0x030013D4
	ldr r0, [r6]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _08020924
	cmp r0, #1
	beq _08020964
	b _0802097C
	.align 2, 0
_08020920: .4byte 0x030013D4
_08020924:
	bl sub_08008174
	ldr r4, _08020960 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x3a
	bl sub_0806F5DC
	ldr r0, [r6]
	strb r5, [r0, #0x1a]
	b _0802097C
	.align 2, 0
_08020960: .4byte 0x030024E0
_08020964:
	bl sub_080003D0
	cmp r0, #0
	beq _0802097C
	ldr r2, _08020984 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08020988 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_0802083C
_0802097C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020984: .4byte 0x030024E0
_08020988: .4byte 0x0000FDFF

	thumb_func_start sub_0802098C
sub_0802098C: @ 0x0802098C
	push {r4, r5, r6, lr}
	ldr r4, _080209A4 @ =0x030013D4
	ldr r2, [r4]
	ldrb r0, [r2, #0x1a]
	cmp r0, #1
	beq _08020A14
	cmp r0, #1
	bgt _080209A8
	cmp r0, #0
	beq _080209B2
	b _08020A36
	.align 2, 0
_080209A4: .4byte 0x030013D4
_080209A8:
	cmp r0, #2
	beq _08020A22
	cmp r0, #3
	beq _08020A30
	b _08020A36
_080209B2:
	adds r2, #0xb0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	bl sub_08020CD0
	movs r0, #1
	bl sub_08020CD0
	movs r0, #0
	bl sub_0802106C
	movs r0, #1
	bl sub_0802106C
	bl sub_0802129C
	movs r3, #0
	adds r5, r4, #0
	movs r4, #0
	movs r6, #0
_080209E2:
	ldr r1, [r5]
	lsls r2, r3, #2
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x40
	strh r6, [r0]
	adds r1, #0x42
	strb r4, [r1]
	ldr r0, [r5]
	adds r0, r0, r2
	adds r0, #0x43
	strb r4, [r0]
	adds r3, #1
	cmp r3, #1
	ble _080209E2
	bl sub_08021ACC
	ldr r0, _08020A10 @ =0x030013D4
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x1a]
	b _08020A36
	.align 2, 0
_08020A10: .4byte 0x030013D4
_08020A14:
	movs r0, #1
	bl sub_08020D18
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0x1a]
	b _08020A36
_08020A22:
	movs r0, #0
	bl sub_08020D18
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #0x1a]
	b _08020A36
_08020A30:
	movs r0, #2
	bl sub_0802083C
_08020A36:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08020A3C
sub_08020A3C: @ 0x08020A3C
	push {r4, r5, lr}
	ldr r5, _08020A54 @ =0x030013D4
	ldr r1, [r5]
	ldrb r4, [r1, #0x1a]
	cmp r4, #1
	beq _08020A94
	cmp r4, #1
	bgt _08020A58
	cmp r4, #0
	beq _08020A5E
	b _08020B06
	.align 2, 0
_08020A54: .4byte 0x030013D4
_08020A58:
	cmp r4, #2
	beq _08020AC8
	b _08020B06
_08020A5E:
	bl sub_08005934
	ldr r0, _08020A90 @ =0x080847B0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #3
	bl sub_08029924
	movs r0, #0
	bl sub_08020D3C
	movs r0, #1
	bl sub_08020D3C
	bl sub_08021CF8
	ldr r1, [r5]
	strh r4, [r1, #0x1c]
	movs r0, #1
	strb r0, [r1, #0x1a]
	b _08020B06
	.align 2, 0
_08020A90: .4byte 0x080847B0
_08020A94:
	adds r0, r1, #0
	adds r0, #0xb0
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08020B06
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020B06
	bl sub_08005934
	ldr r0, _08020AC4 @ =0x080847C0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #0x1a]
	b _08020B06
	.align 2, 0
_08020AC4: .4byte 0x080847C0
_08020AC8:
	adds r0, r1, #0
	adds r0, #0xb0
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08020B06
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020B06
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020B06
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020B06
	adds r0, r1, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020B06
	bl sub_08021B28
	movs r0, #3
	bl sub_0802083C
_08020B06:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08020B0C
sub_08020B0C: @ 0x08020B0C
	push {r4, lr}
	sub sp, #4
	ldr r4, _08020B20 @ =0x030013D4
	ldr r1, [r4]
	ldrb r2, [r1, #0x1a]
	cmp r2, #0
	beq _08020B24
	cmp r2, #1
	beq _08020B78
	b _08020BB6
	.align 2, 0
_08020B20: .4byte 0x030013D4
_08020B24:
	ldrh r0, [r1, #0x1c]
	adds r0, #1
	strh r0, [r1, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _08020BB6
	strh r2, [r1, #0x1c]
	bl sub_08005934
	ldr r0, [r4]
	movs r2, #0x26
	ldrsh r1, [r0, r2]
	movs r3, #0x36
	ldrsh r0, [r0, r3]
	cmp r1, r0
	blt _08020B58
	ldr r0, _08020B54 @ =0x080847D0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _08020B62
	.align 2, 0
_08020B54: .4byte 0x080847D0
_08020B58:
	ldr r0, _08020B70 @ =0x080847C8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_08020B62:
	bl sub_08005A2C
	ldr r0, _08020B74 @ =0x030013D4
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x1a]
	b _08020BB6
	.align 2, 0
_08020B70: .4byte 0x080847C8
_08020B74: .4byte 0x030013D4
_08020B78:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _08020BC0 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #4
	bl sub_0802083C
	ldr r0, [r4]
	movs r2, #0x26
	ldrsh r1, [r0, r2]
	movs r3, #0x36
	ldrsh r0, [r0, r3]
	cmp r1, r0
	blt _08020BAE
	bl sub_080193B4
_08020BAE:
	ldr r0, _08020BC4 @ =0x030056F0
	movs r1, #4
	bl sub_0806F774
_08020BB6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020BC0: .4byte 0x030024E0
_08020BC4: .4byte 0x030056F0

	thumb_func_start sub_08020BC8
sub_08020BC8: @ 0x08020BC8
	push {r4, lr}
	bl sub_080003D0
	cmp r0, #0
	beq _08020C5A
	bl sub_080058A4
	bl sub_0800B17C
	ldr r4, _08020C60 @ =0x030013D4
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #6
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	adds r0, #0x98
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0xa0
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0xa8
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x18]
_08020C5A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020C60: .4byte 0x030013D4

	thumb_func_start sub_08020C64
sub_08020C64: @ 0x08020C64
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08020C84 @ =0x030013D4
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020C84: .4byte 0x030013D4

	thumb_func_start sub_08020C88
sub_08020C88: @ 0x08020C88
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08020CC8 @ =0x030013D4
	ldr r1, [r6]
	lsrs r0, r0, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08020CCC @ =0x08084880
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r5, #1]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020CC8: .4byte 0x030013D4
_08020CCC: .4byte 0x08084880

	thumb_func_start sub_08020CD0
sub_08020CD0: @ 0x08020CD0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08020CF0 @ =0x030013D4
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	adds r1, #0x20
	movs r2, #0
	strb r2, [r1]
	movs r1, #0
	bl sub_08020C88
	pop {r0}
	bx r0
	.align 2, 0
_08020CF0: .4byte 0x030013D4

	thumb_func_start sub_08020CF4
sub_08020CF4: @ 0x08020CF4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08020D14 @ =0x030013D4
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	adds r1, #0x20
	movs r2, #0
	strb r2, [r1]
	movs r1, #1
	bl sub_08020C88
	pop {r0}
	bx r0
	.align 2, 0
_08020D14: .4byte 0x030013D4

	thumb_func_start sub_08020D18
sub_08020D18: @ 0x08020D18
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08020D38 @ =0x030013D4
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	adds r1, #0x20
	movs r2, #1
	strb r2, [r1]
	movs r1, #2
	bl sub_08020C88
	pop {r0}
	bx r0
	.align 2, 0
_08020D38: .4byte 0x030013D4

	thumb_func_start sub_08020D3C
sub_08020D3C: @ 0x08020D3C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08020D5C @ =0x030013D4
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	adds r1, #0x20
	movs r2, #0
	strb r2, [r1]
	movs r1, #3
	bl sub_08020C88
	pop {r0}
	bx r0
	.align 2, 0
_08020D5C: .4byte 0x030013D4

	thumb_func_start sub_08020D60
sub_08020D60: @ 0x08020D60
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020D88
	ldr r3, _08020D84 @ =0x030013D4
	ldr r2, [r3]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r1, #0x6c
	strh r1, [r0, #0x22]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r2, r2, r0
	movs r0, #0xbc
	b _08020D9E
	.align 2, 0
_08020D84: .4byte 0x030013D4
_08020D88:
	ldr r3, _08020DF0 @ =0x030013D4
	ldr r2, [r3]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r1, #0x6c
	strh r1, [r0, #0x22]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r2, r2, r0
	movs r0, #0x96
_08020D9E:
	strh r0, [r2, #0x24]
	adds r5, r3, #0
	ldr r1, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	movs r0, #0xd8
	lsls r0, r0, #7
	strh r0, [r1, #0x2c]
	ldrb r0, [r4]
	bl sub_08020CF4
	ldr r1, [r5]
	ldrb r2, [r4]
	lsls r3, r2, #2
	adds r0, r1, #0
	adds r0, #0x48
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08020DF4 @ =0x08084818
	lsls r2, r2, #4
	adds r1, r1, r2
	adds r1, #0x21
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020DF0: .4byte 0x030013D4
_08020DF4: .4byte 0x08084818

	thumb_func_start sub_08020DF8
sub_08020DF8: @ 0x08020DF8
	bx lr
	.align 2, 0

	thumb_func_start sub_08020DFC
sub_08020DFC: @ 0x08020DFC
	push {lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08020E28
	ldr r0, _08020E24 @ =0x030013D4
	ldr r2, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r1, #0x6c
	strh r1, [r0, #0x22]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r2, r2, r0
	movs r0, #0xbc
	b _08020E3E
	.align 2, 0
_08020E24: .4byte 0x030013D4
_08020E28:
	ldr r0, _08020E4C @ =0x030013D4
	ldr r2, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r1, #0x6c
	strh r1, [r0, #0x22]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r2, r2, r0
	movs r0, #0x96
_08020E3E:
	strh r0, [r2, #0x24]
	ldrb r0, [r3]
	bl sub_08020CF4
	pop {r0}
	bx r0
	.align 2, 0
_08020E4C: .4byte 0x030013D4

	thumb_func_start sub_08020E50
sub_08020E50: @ 0x08020E50
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	ldr r0, _08020F38 @ =0x030013D4
	ldr r2, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #4
	adds r1, r2, r1
	ldrh r0, [r1, #0x2c]
	adds r0, #0x11
	strh r0, [r1, #0x2c]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r2, r0
	adds r0, #0x40
	ldrh r0, [r0]
	asrs r0, r0, #7
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r2, #0
	adds r0, #0xb0
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08020E9E
	lsls r0, r1, #4
	adds r0, r2, r0
	adds r1, r0, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	bne _08020E9E
	movs r0, #1
	strb r0, [r1]
_08020E9E:
	ldrh r0, [r4, #2]
	movs r1, #7
	subs r1, r1, r6
	bl sub_08071064
	cmp r0, #0
	beq _08020EAE
	b _08020FD0
_08020EAE:
	ldr r5, _08020F38 @ =0x030013D4
	ldr r1, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x21
	ldrb r2, [r1]
	adds r3, r2, #1
	adds r0, r3, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r3, r0
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020EE4
	ldr r0, [r5]
	ldrb r1, [r4]
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020EE4
	ldr r0, _08020F3C @ =0x00000145
	bl sub_0806F5DC
_08020EE4:
	ldr r5, _08020F38 @ =0x030013D4
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xb0
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08020F48
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	bne _08020F48
	bl sub_080212BC
	ldr r0, [r5]
	ldrb r1, [r4]
	lsls r2, r1, #2
	adds r0, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _08020F40 @ =0x08084868
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldrb r0, [r4]
	bl sub_080210BC
	ldrb r0, [r4]
	bl sub_08020CF4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020FD0
	ldr r0, _08020F44 @ =0x00000151
	bl sub_0806F5DC
	b _08020FD0
	.align 2, 0
_08020F38: .4byte 0x030013D4
_08020F3C: .4byte 0x00000145
_08020F40: .4byte 0x08084868
_08020F44: .4byte 0x00000151
_08020F48:
	ldr r5, _08020FE8 @ =0x030013D4
	ldr r1, [r5]
	ldrb r2, [r4]
	lsls r3, r2, #2
	adds r0, r1, #0
	adds r0, #0x48
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08020FEC @ =0x08084818
	lsls r2, r2, #4
	adds r1, r1, r2
	adds r1, #0x21
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r2, [r5]
	ldrb r1, [r4]
	lsls r3, r1, #2
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08020FF0 @ =0x08084838
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, #0x21
	ldrb r1, [r2]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r1, [r5]
	ldrb r2, [r4]
	lsls r3, r2, #2
	adds r0, r1, #0
	adds r0, #0x50
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08020FF4 @ =0x08084848
	lsls r2, r2, #4
	adds r1, r1, r2
	adds r1, #0x21
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r1, #3
	bl sub_08009A0C
	cmp r6, #3
	bls _08020FD0
	ldr r0, [r5]
	ldrb r2, [r4]
	lsls r1, r2, #4
	adds r0, r0, r1
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020FD0
	adds r0, r2, #0
	bl sub_08021C3C
_08020FD0:
	ldr r0, _08020FE8 @ =0x030013D4
	ldr r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x2c]
	lsrs r0, r0, #8
	strh r0, [r1, #0x22]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020FE8: .4byte 0x030013D4
_08020FEC: .4byte 0x08084818
_08020FF0: .4byte 0x08084838
_08020FF4: .4byte 0x08084848

	thumb_func_start sub_08020FF8
sub_08020FF8: @ 0x08020FF8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0802101C @ =0x030013D4
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802101C: .4byte 0x030013D4

	thumb_func_start sub_08021020
sub_08021020: @ 0x08021020
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08021064 @ =0x030013D4
	ldr r1, [r6]
	lsrs r0, r0, #0x17
	adds r1, #4
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, #4
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08021068 @ =0x08084890
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r5, #1]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021064: .4byte 0x030013D4
_08021068: .4byte 0x08084890

	thumb_func_start sub_0802106C
sub_0802106C: @ 0x0802106C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08021094 @ =0x030013D4
	ldr r0, [r0]
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08021020
	adds r0, r4, #0
	bl sub_08021644
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021094: .4byte 0x030013D4

	thumb_func_start sub_08021098
sub_08021098: @ 0x08021098
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080210B8 @ =0x030013D4
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	adds r1, #0x2a
	movs r2, #0
	strb r2, [r1]
	movs r1, #1
	bl sub_08021020
	pop {r0}
	bx r0
	.align 2, 0
_080210B8: .4byte 0x030013D4

	thumb_func_start sub_080210BC
sub_080210BC: @ 0x080210BC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08021114 @ =0x030013D4
	ldr r0, [r5]
	lsls r2, r4, #4
	adds r0, r0, r2
	adds r0, #0x2a
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x78
	adds r0, r0, r2
	str r3, [r0]
	adds r0, r1, #0
	adds r0, #0x7c
	adds r0, r0, r2
	str r3, [r0]
	adds r2, r1, r2
	ldrh r0, [r2, #0x22]
	adds r0, #0xc
	adds r1, r2, #0
	adds r1, #0x82
	strh r0, [r1]
	ldrh r0, [r2, #0x24]
	subs r0, #0x10
	adds r1, #2
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x80
	strh r3, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08021020
	adds r0, r4, #0
	bl sub_0802166C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08021114: .4byte 0x030013D4

	thumb_func_start sub_08021118
sub_08021118: @ 0x08021118
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08021144
	ldr r0, _08021140 @ =0x030013D4
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r1, #0x78
	strh r1, [r0, #0x26]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r2, r2, r0
	movs r0, #0xac
	b _0802115A
	.align 2, 0
_08021140: .4byte 0x030013D4
_08021144:
	ldr r0, _0802118C @ =0x030013D4
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r1, #0x78
	strh r1, [r0, #0x26]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r2, r2, r0
	movs r0, #0x86
_0802115A:
	strh r0, [r2, #0x28]
	ldrb r0, [r4]
	bl sub_08021098
	ldr r0, _0802118C @ =0x030013D4
	ldr r2, [r0]
	ldrb r1, [r4]
	lsls r3, r1, #2
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08021190 @ =0x08084838
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, #0x21
	ldrb r1, [r2]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802118C: .4byte 0x030013D4
_08021190: .4byte 0x08084838

	thumb_func_start sub_08021194
sub_08021194: @ 0x08021194
	bx lr
	.align 2, 0

	thumb_func_start sub_08021198
sub_08021198: @ 0x08021198
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldr r0, _08021294 @ =0x030013D4
	mov r8, r0
	ldr r5, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r5, r0
	adds r0, #0x40
	ldrh r6, [r0]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r6, r6, r3
	lsls r1, r1, #4
	adds r3, r5, #0
	adds r3, #0x78
	adds r1, r3, r1
	ldr r0, [r1]
	adds r0, r0, r6
	str r0, [r1]
	ldrb r4, [r7]
	lsls r4, r4, #4
	adds r0, r5, r4
	adds r0, #0x80
	ldrh r0, [r0]
	lsls r0, r0, #1
	subs r0, #1
	ldr r1, _08021298 @ =0x000009CC
	muls r0, r1, r0
	movs r1, #0x78
	str r3, [sp]
	bl sub_08070FCC
	subs r6, r6, r0
	adds r2, r5, #0
	adds r2, #0x7c
	adds r4, r2, r4
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	ldrb r1, [r7]
	lsls r1, r1, #4
	ldr r3, [sp]
	adds r3, r3, r1
	ldr r6, [r3]
	adds r1, r5, r1
	adds r3, r1, #0
	adds r3, #0x82
	asrs r0, r6, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r1, #0x26]
	ldrb r1, [r7]
	lsls r1, r1, #4
	adds r2, r2, r1
	ldr r2, [r2]
	lsls r2, r2, #8
	adds r1, r5, r1
	adds r0, r1, #0
	adds r0, #0x84
	asrs r2, r2, #0x10
	ldrh r0, [r0]
	subs r0, r0, r2
	strh r0, [r1, #0x28]
	ldrb r2, [r7]
	lsls r0, r2, #4
	adds r5, r5, r0
	movs r0, #0x28
	ldrsh r1, [r5, r0]
	movs r3, #0x24
	ldrsh r0, [r5, r3]
	cmp r1, r0
	ble _08021286
	cmp r2, #0
	bne _0802124E
	movs r0, #0xa3
	lsls r0, r0, #1
	bl sub_0806F5DC
_0802124E:
	mov r0, r8
	ldr r2, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #4
	adds r1, r2, #0
	adds r1, #0x7c
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldrb r0, [r7]
	lsls r0, r0, #4
	adds r0, r2, r0
	ldrh r1, [r0, #0x24]
	strh r1, [r0, #0x28]
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r2, #0x50
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #9
	bl sub_08009AFC
	ldrb r0, [r7]
	bl sub_08021098
	ldrb r0, [r7]
	bl sub_08021914
_08021286:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021294: .4byte 0x030013D4
_08021298: .4byte 0x000009CC

	thumb_func_start sub_0802129C
sub_0802129C: @ 0x0802129C
	push {lr}
	ldr r0, _080212B4 @ =0x030013D4
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _080212B8 @ =0x0808489C
	ldr r1, [r1]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_080212B4: .4byte 0x030013D4
_080212B8: .4byte 0x0808489C

	thumb_func_start sub_080212BC
sub_080212BC: @ 0x080212BC
	push {lr}
	ldr r0, _080212D4 @ =0x030013D4
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _080212D8 @ =0x0808489C
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_080212D4: .4byte 0x030013D4
_080212D8: .4byte 0x0808489C

	thumb_func_start sub_080212DC
sub_080212DC: @ 0x080212DC
	push {r4, lr}
	bl sub_0800B2BC
	ldr r4, _080212FC @ =0x030013D4
	ldr r1, [r4]
	adds r1, #0x74
	strh r0, [r1]
	bl sub_0800B2C8
	ldr r1, [r4]
	adds r1, #0x76
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080212FC: .4byte 0x030013D4

	thumb_func_start sub_08021300
sub_08021300: @ 0x08021300
	push {lr}
	movs r0, #0
	movs r1, #0x6c
	bl sub_0800B278
	ldr r0, _08021324 @ =0x030013D4
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08021328 @ =0x0808489C
	ldr r1, [r1, #8]
	bl sub_08007B84
	bl sub_080212DC
	pop {r0}
	bx r0
	.align 2, 0
_08021324: .4byte 0x030013D4
_08021328: .4byte 0x0808489C

	thumb_func_start sub_0802132C
sub_0802132C: @ 0x0802132C
	push {lr}
	ldr r0, _08021358 @ =0x030013D4
	ldr r1, [r0]
	movs r2, #0x26
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	subs r2, #0x70
	movs r3, #0x28
	ldrsh r0, [r1, r3]
	adds r1, r0, #0
	subs r1, #0x50
	cmp r1, #0x6c
	ble _08021348
	movs r1, #0x6c
_08021348:
	adds r0, r2, #0
	bl sub_0800B278
	bl sub_080212DC
	pop {r0}
	bx r0
	.align 2, 0
_08021358: .4byte 0x030013D4

	thumb_func_start sub_0802135C
sub_0802135C: @ 0x0802135C
	push {lr}
	bl sub_080212DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021368
sub_08021368: @ 0x08021368
	push {r4, r5, r6, r7, lr}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r4, _08021538 @ =0x030013D4
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r2, #0x22]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r2, [r2, #0x24]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _0802153C @ =0x06010000
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r4]
	adds r0, #0x9c
	ldr r1, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08021540 @ =0x080847F8
	ldr r0, _08021544 @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _08021548 @ =0x08084808
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r5, _0802154C @ =0x08084818
	ldr r0, [r4]
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrb r3, [r0]
	adds r0, r7, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x48]
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r2, #0x32]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r2, [r2, #0x34]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _08021550 @ =0x06010400
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r4]
	adds r0, #0xa4
	ldr r1, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08021554 @ =0x080D5634
	ldr r2, _08021558 @ =0x080D560C
	ldr r0, [r4]
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r5, #0x10
	adds r0, r0, r5
	ldrb r3, [r0]
	adds r0, r7, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x4c]
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r2, #0x22]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r2, [r2, #0x24]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x6c]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r5, _0802155C @ =0x080CAD0C
	ldr r6, _08021560 @ =0x080CACE0
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x60]
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r2, #0x32]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r2, [r2, #0x34]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x6c]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x64]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08021564 @ =0x080848A8
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021538: .4byte 0x030013D4
_0802153C: .4byte 0x06010000
_08021540: .4byte 0x080847F8
_08021544: .4byte 0x03004488
_08021548: .4byte 0x08084808
_0802154C: .4byte 0x08084818
_08021550: .4byte 0x06010400
_08021554: .4byte 0x080D5634
_08021558: .4byte 0x080D560C
_0802155C: .4byte 0x080CAD0C
_08021560: .4byte 0x080CACE0
_08021564: .4byte 0x080848A8

	thumb_func_start sub_08021568
sub_08021568: @ 0x08021568
	push {r4, r5, lr}
	ldr r4, _080215E8 @ =0x030013D4
	ldr r3, [r4]
	ldr r0, [r3, #0x48]
	adds r2, r3, #0
	adds r2, #0x74
	ldrh r1, [r3, #0x22]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x76
	adds r2, r2, r3
	mov ip, r2
	ldrh r2, [r3, #0x24]
	mov r5, ip
	ldrh r3, [r5]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r3, [r4]
	ldr r0, [r3, #0x4c]
	adds r2, r3, #0
	adds r2, #0x74
	ldrh r1, [r3, #0x32]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x76
	adds r2, r2, r3
	mov ip, r2
	ldrh r2, [r3, #0x34]
	mov r5, ip
	ldrh r3, [r5]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r4]
	ldr r0, [r1, #0x60]
	ldr r2, [r1, #0x48]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r5, #8
	ldrsh r2, [r2, r5]
	bl sub_08009A70
	ldr r1, [r4]
	ldr r0, [r1, #0x64]
	ldr r2, [r1, #0x4c]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r5, #8
	ldrsh r2, [r2, r5]
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080215E8: .4byte 0x030013D4

	thumb_func_start sub_080215EC
sub_080215EC: @ 0x080215EC
	push {r4, lr}
	ldr r4, _08021618 @ =0x030013D4
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021618: .4byte 0x030013D4

	thumb_func_start sub_0802161C
sub_0802161C: @ 0x0802161C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08021640 @ =0x030013D4
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0xc
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021640: .4byte 0x030013D4

	thumb_func_start sub_08021644
sub_08021644: @ 0x08021644
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _08021664 @ =0x030013D4
	ldr r1, [r1]
	lsrs r0, r0, #0x17
	adds r1, #0xc
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08021668 @ =0x080848B8
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_08021664: .4byte 0x030013D4
_08021668: .4byte 0x080848B8

	thumb_func_start sub_0802166C
sub_0802166C: @ 0x0802166C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080216A0 @ =0x030013D4
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #8
	bl sub_08009AFC
	ldr r0, [r5]
	lsls r4, r4, #1
	adds r0, #0xc
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080216A4 @ =0x080848B8
	ldr r1, [r1, #8]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080216A0: .4byte 0x030013D4
_080216A4: .4byte 0x080848B8

	thumb_func_start sub_080216A8
sub_080216A8: @ 0x080216A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	mov r8, r0
	ldr r2, _0802176C @ =0x08084848
	ldr r6, _08021770 @ =0x030013D4
	ldr r0, [r6]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #3
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r3, [r6]
	mov r7, r8
	ldrb r2, [r7]
	lsls r2, r2, #4
	adds r2, r3, r2
	adds r0, r3, #0
	adds r0, #0x74
	ldrh r1, [r2, #0x22]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x76
	ldrh r2, [r2, #0x24]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x68]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08021774 @ =0x080D5E08
	ldr r2, _08021778 @ =0x080D5DD4
	ldr r5, _0802177C @ =0x08084838
	ldr r3, [r6]
	ldrb r0, [r7]
	lsls r0, r0, #4
	adds r3, r3, r0
	adds r3, #0x21
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r2, [r6]
	ldrb r1, [r7]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r0, r1
	str r4, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r2, #0xc
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, _08021780 @ =0x080848B8
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802176C: .4byte 0x08084848
_08021770: .4byte 0x030013D4
_08021774: .4byte 0x080D5E08
_08021778: .4byte 0x080D5DD4
_0802177C: .4byte 0x08084838
_08021780: .4byte 0x080848B8

	thumb_func_start sub_08021784
sub_08021784: @ 0x08021784
	push {r4, r5, lr}
	bl sub_08007BD4
	ldr r1, _080217D0 @ =0x030013D4
	ldr r4, [r1]
	ldrb r3, [r0]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r3, r3, #4
	adds r3, r4, r3
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r1, [r3, #0x22]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, #0x76
	ldrh r2, [r3, #0x24]
	ldrh r5, [r4]
	ldr r4, _080217D4 @ =0x080848B0
	ldr r3, _080217D8 @ =0x03004488
	ldrb r3, [r3]
	lsls r3, r3, #1
	adds r3, r3, r4
	subs r2, r2, r5
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080217D0: .4byte 0x030013D4
_080217D4: .4byte 0x080848B0
_080217D8: .4byte 0x03004488

	thumb_func_start sub_080217DC
sub_080217DC: @ 0x080217DC
	push {r4, lr}
	bl sub_08007BD4
	ldr r1, _0802181C @ =0x030013D4
	ldr r4, [r1]
	ldrb r3, [r0]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r3, r3, #4
	adds r3, r4, r3
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r1, [r3, #0x26]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, #0x76
	ldrh r2, [r3, #0x28]
	ldrh r3, [r4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802181C: .4byte 0x030013D4

	thumb_func_start sub_08021820
sub_08021820: @ 0x08021820
	push {lr}
	bl sub_08007BD4
	ldr r1, _0802183C @ =0x030013D4
	ldr r1, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x50
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802183C: .4byte 0x030013D4

	thumb_func_start sub_08021840
sub_08021840: @ 0x08021840
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r5, [r6, #8]
	ldrb r0, [r6]
	cmp r0, #1
	beq _080218CC
	cmp r0, #1
	bgt _08021904
	cmp r0, #0
	bne _08021904
	ldrb r1, [r6, #0xc]
	movs r0, #3
	bl sub_080099E0
	adds r5, r0, #0
	str r5, [r6, #8]
	cmp r5, #0
	beq _080218F8
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	ldr r4, _080218C0 @ =0x030013D4
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x74
	ldrh r1, [r6, #2]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x76
	ldrh r2, [r6, #4]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x6c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _080218C4 @ =0x080CAD0C
	ldr r2, _080218C8 @ =0x080CACE0
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r6]
	b _0802190E
	.align 2, 0
_080218C0: .4byte 0x030013D4
_080218C4: .4byte 0x080CAD0C
_080218C8: .4byte 0x080CACE0
_080218CC:
	ldr r0, _08021900 @ =0x030013D4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x74
	ldrh r1, [r6, #2]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x76
	ldrh r2, [r6, #4]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldrb r0, [r5, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802190E
_080218F8:
	movs r0, #2
	strb r0, [r6]
	b _0802190E
	.align 2, 0
_08021900: .4byte 0x030013D4
_08021904:
	ldr r0, [r6, #8]
	bl sub_08009A00
	bl sub_08007A64
_0802190E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08021914
sub_08021914: @ 0x08021914
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08021944 @ =sub_08021840
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080219F0
	bl sub_08007BBC
	adds r2, r0, #0
	movs r0, #0
	strb r0, [r2]
	strb r5, [r2, #1]
	cmp r5, #0
	bne _08021948
	movs r0, #0x7e
	b _0802194A
	.align 2, 0
_08021944: .4byte sub_08021840
_08021948:
	movs r0, #0xbe
_0802194A:
	strb r0, [r2, #0xc]
	ldr r6, _080219FC @ =0x030013D4
	ldr r1, [r6]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r0, r1, r0
	ldrh r0, [r0, #0x26]
	adds r0, #2
	movs r3, #0
	mov r8, r3
	strh r0, [r2, #2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x28]
	strh r0, [r2, #4]
	ldr r7, _08021A00 @ =sub_08021840
	adds r0, r7, #0
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _080219F0
	adds r0, r4, #0
	bl sub_08007BBC
	adds r2, r0, #0
	mov r0, r8
	strb r0, [r2]
	strb r5, [r2, #1]
	ldr r1, [r6]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r0, r1, r0
	ldrh r0, [r0, #0x26]
	adds r0, #8
	strh r0, [r2, #2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x28]
	adds r0, #2
	strh r0, [r2, #4]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08007AD8
	adds r0, r7, #0
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _080219F0
	adds r0, r4, #0
	bl sub_08007BBC
	adds r2, r0, #0
	mov r3, r8
	strb r3, [r2]
	strb r5, [r2, #1]
	ldr r1, [r6]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r0, r1, r0
	ldrh r0, [r0, #0x26]
	adds r0, #0xe
	strh r0, [r2, #2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x28]
	subs r0, #2
	strh r0, [r2, #4]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08007AD8
_080219F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080219FC: .4byte 0x030013D4
_08021A00: .4byte sub_08021840

	thumb_func_start sub_08021A04
sub_08021A04: @ 0x08021A04
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08021A8C @ =0x030013D4
_08021A0A:
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _08021A90 @ =0x080848C4
	lsls r5, r6, #1
	adds r0, r5, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x70]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _08021A94 @ =0x080B8664
	ldr r0, _08021A98 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r0, _08021A9C @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #0x1c]
	ldr r0, _08021AA0 @ =0x080848C8
	adds r5, r5, r0
	ldrb r3, [r5]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x58
	adds r0, r0, r1
	str r4, [r0]
	adds r6, #1
	cmp r6, #1
	ble _08021A0A
	ldr r0, _08021A8C @ =0x030013D4
	ldr r0, [r0]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _08021AA4 @ =sub_08021AA8
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021A8C: .4byte 0x030013D4
_08021A90: .4byte 0x080848C4
_08021A94: .4byte 0x080B8664
_08021A98: .4byte 0x03004400
_08021A9C: .4byte 0x080B8660
_08021AA0: .4byte 0x080848C8
_08021AA4: .4byte sub_08021AA8

	thumb_func_start sub_08021AA8
sub_08021AA8: @ 0x08021AA8
	bx lr
	.align 2, 0

	thumb_func_start sub_08021AAC
sub_08021AAC: @ 0x08021AAC
	push {r4, lr}
	ldr r4, _08021AC8 @ =0x030013D4
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021AC8: .4byte 0x030013D4

	thumb_func_start sub_08021ACC
sub_08021ACC: @ 0x08021ACC
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _08021B1C @ =0x030013D4
_08021AD4:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x58
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, #0x58
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08021B20 @ =0x080848C8
	lsls r4, r5, #1
	adds r1, r4, r1
	ldrh r1, [r1]
	ldr r2, _08021B24 @ =0x080848C4
	adds r2, r4, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0x45
	str r3, [sp]
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	adds r1, #0x12
	adds r1, r1, r4
	strh r0, [r1]
	adds r5, #1
	cmp r5, #1
	ble _08021AD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021B1C: .4byte 0x030013D4
_08021B20: .4byte 0x080848C8
_08021B24: .4byte 0x080848C4

	thumb_func_start sub_08021B28
sub_08021B28: @ 0x08021B28
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08021B4C @ =0x030013D4
_08021B2E:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #1
	ble _08021B2E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08021B4C: .4byte 0x030013D4

	thumb_func_start sub_08021B50
sub_08021B50: @ 0x08021B50
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6]
	cmp r7, #0
	beq _08021B64
	cmp r7, #1
	beq _08021BEC
	b _08021C30
_08021B64:
	ldr r5, _08021BE0 @ =0x030013D4
	ldr r1, [r5]
	ldrb r0, [r6, #2]
	lsls r0, r0, #4
	adds r0, r1, r0
	ldrh r0, [r0, #0x22]
	strh r0, [r6, #6]
	ldrb r0, [r6, #2]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x24]
	adds r0, #2
	strh r0, [r6, #8]
	ldrb r1, [r6, #1]
	movs r0, #3
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x74
	ldrh r1, [r6, #6]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x76
	ldrh r2, [r6, #8]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x6c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08021BE4 @ =0x080CAD0C
	ldr r2, _08021BE8 @ =0x080CACE0
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r6, #0xc]
	strh r7, [r6, #4]
	movs r0, #1
	strb r0, [r6]
	b _08021C30
	.align 2, 0
_08021BE0: .4byte 0x030013D4
_08021BE4: .4byte 0x080CAD0C
_08021BE8: .4byte 0x080CACE0
_08021BEC:
	ldr r0, [r6, #0xc]
	ldrh r2, [r6, #4]
	adds r2, #1
	strh r2, [r6, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x11
	ldrh r1, [r6, #6]
	subs r1, r1, r2
	ldr r2, _08021C38 @ =0x030013D4
	ldr r3, [r2]
	adds r2, r3, #0
	adds r2, #0x74
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x76
	ldrh r2, [r6, #8]
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r6, #0xc]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08021C30
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_08021C30:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021C38: .4byte 0x030013D4

	thumb_func_start sub_08021C3C
sub_08021C3C: @ 0x08021C3C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08021C64 @ =sub_08021B50
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r1, r0, #0
	movs r0, #0
	strb r0, [r1]
	cmp r5, #0
	bne _08021C68
	movs r0, #0x7f
	b _08021C6A
	.align 2, 0
_08021C64: .4byte sub_08021B50
_08021C68:
	movs r0, #0xbf
_08021C6A:
	strb r0, [r1, #1]
	movs r4, #0
	strb r5, [r1, #2]
	ldr r0, _08021C90 @ =sub_08021B50
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r1, r0, #0
	strb r4, [r1]
	cmp r5, #0
	bne _08021C94
	movs r0, #0x7f
	b _08021C96
	.align 2, 0
_08021C90: .4byte sub_08021B50
_08021C94:
	movs r0, #0xbf
_08021C96:
	strb r0, [r1, #1]
	strb r5, [r1, #2]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl sub_08007AD8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021CAC
sub_08021CAC: @ 0x08021CAC
	push {r4, lr}
	ldr r4, _08021CE8 @ =0x030013D4
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0xb2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08021CEC
	adds r2, #0xb0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	bl sub_0802996C
	bl sub_08007A64
	ldr r1, [r4]
	adds r1, #0xb0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _08021CF0
	.align 2, 0
_08021CE8: .4byte 0x030013D4
_08021CEC:
	bl sub_08020854
_08021CF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021CF8
sub_08021CF8: @ 0x08021CF8
	push {lr}
	ldr r0, _08021D20 @ =sub_08021CAC
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r0, _08021D24 @ =0x030013D4
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0xb2
	movs r0, #0
	strh r0, [r1]
	adds r2, #0xb0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08021D20: .4byte sub_08021CAC
_08021D24: .4byte 0x030013D4

	thumb_func_start sub_08021D28
sub_08021D28: @ 0x08021D28
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r6, _08021EA0 @ =0x030013D8
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r6]
	movs r0, #0
	movs r2, #0x74
	bl sub_08007EFC
	ldr r0, _08021EA4 @ =0x0808496C
	ldr r0, [r0]
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08021EA8 @ =sub_080228D4
	bl sub_08007BA0
	ldr r0, _08021EAC @ =sub_08022A20
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #4]
	movs r2, #4
	ldrsh r0, [r1, r2]
	ldr r1, _08021EB0 @ =sub_08022B64
	bl sub_08007BA0
	ldr r0, _08021EB4 @ =sub_08022CAC
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #6]
	movs r2, #6
	ldrsh r0, [r1, r2]
	ldr r1, _08021EB8 @ =sub_08022DB4
	bl sub_08007BA0
	ldr r0, _08021EBC @ =sub_0802290C
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #2]
	ldr r0, _08021EC0 @ =0x080E02B8
	ldr r1, _08021EC4 @ =0x05000200
	bl sub_08008308
	ldr r0, _08021EC8 @ =0x080E03EC
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x54]
	ldr r0, [sp, #4]
	str r0, [r1, #0x58]
	ldr r4, _08021ECC @ =0x06010C00
	ldr r0, _08021ED0 @ =0x080C2284
	ldr r1, _08021ED4 @ =0x05000220
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x64]
	ldr r0, _08021ED8 @ =0x080C24BC
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _08021EDC @ =0x080CAC38
	ldr r1, _08021EE0 @ =0x05000280
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x68]
	ldr r0, _08021EE4 @ =0x080CAD1C
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08021EE8 @ =0x080B85E8
	ldr r5, _08021EEC @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08021EF0 @ =0x050002A0
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x6c]
	ldr r1, _08021EF4 @ =0x080B8624
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _08021EF8 @ =0x080C11F8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _08021EFC @ =0x080C127C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _08021F00 @ =0x080C1EF0
	ldr r1, _08021F04 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _08021F08 @ =0x080C2188
	ldr r1, _08021F0C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1c
	bl sub_08000268
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1d
	movs r2, #4
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_08007CE8
	ldr r1, [r6]
	str r0, [r1, #0x24]
	ldr r0, _08021F10 @ =sub_08022968
	movs r1, #0xff
	bl sub_08009460
	ldr r1, [r6]
	movs r0, #0xa6
	lsls r0, r0, #8
	str r0, [r1, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r1, #0x20]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021EA0: .4byte 0x030013D8
_08021EA4: .4byte 0x0808496C
_08021EA8: .4byte sub_080228D4
_08021EAC: .4byte sub_08022A20
_08021EB0: .4byte sub_08022B64
_08021EB4: .4byte sub_08022CAC
_08021EB8: .4byte sub_08022DB4
_08021EBC: .4byte sub_0802290C
_08021EC0: .4byte 0x080E02B8
_08021EC4: .4byte 0x05000200
_08021EC8: .4byte 0x080E03EC
_08021ECC: .4byte 0x06010C00
_08021ED0: .4byte 0x080C2284
_08021ED4: .4byte 0x05000220
_08021ED8: .4byte 0x080C24BC
_08021EDC: .4byte 0x080CAC38
_08021EE0: .4byte 0x05000280
_08021EE4: .4byte 0x080CAD1C
_08021EE8: .4byte 0x080B85E8
_08021EEC: .4byte 0x03004400
_08021EF0: .4byte 0x050002A0
_08021EF4: .4byte 0x080B8624
_08021EF8: .4byte 0x080C11F8
_08021EFC: .4byte 0x080C127C
_08021F00: .4byte 0x080C1EF0
_08021F04: .4byte 0x0600F800
_08021F08: .4byte 0x080C2188
_08021F0C: .4byte 0x0600F000
_08021F10: .4byte sub_08022968

	thumb_func_start sub_08021F14
sub_08021F14: @ 0x08021F14
	push {r4, lr}
	ldr r1, _08021F34 @ =0x08084908
	ldr r4, _08021F38 @ =0x030013D8
	ldr r0, [r4]
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08021F34: .4byte 0x08084908
_08021F38: .4byte 0x030013D8

	thumb_func_start sub_08021F3C
sub_08021F3C: @ 0x08021F3C
	ldr r1, _08021F50 @ =0x030013D8
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0xd]
	ldr r0, [r1]
	strb r3, [r0, #0xe]
	ldr r0, [r1]
	strh r3, [r0, #0x10]
	bx lr
	.align 2, 0
_08021F50: .4byte 0x030013D8

	thumb_func_start sub_08021F54
sub_08021F54: @ 0x08021F54
	push {r4, r5, lr}
	ldr r5, _08021F68 @ =0x030013D8
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _08021F6C
	cmp r0, #1
	beq _08021FCC
	b _08021FE4
	.align 2, 0
_08021F68: .4byte 0x030013D8
_08021F6C:
	bl sub_08008174
	ldr r4, _08021FC0 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08021FC4 @ =0x00001F03
	strh r0, [r4, #8]
	ldr r0, _08021FC8 @ =0x00001E02
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #0xc4
	lsls r0, r0, #4
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	bl sub_08004124
	adds r0, r4, #0
	adds r0, #0x4f
	movs r4, #1
	strb r4, [r0]
	movs r0, #0x3b
	bl sub_0806F5DC
	ldr r0, [r5]
	strb r4, [r0, #0xe]
	b _08021FE4
	.align 2, 0
_08021FC0: .4byte 0x030024E0
_08021FC4: .4byte 0x00001F03
_08021FC8: .4byte 0x00001E02
_08021FCC:
	bl sub_080003D0
	cmp r0, #0
	beq _08021FE4
	ldr r2, _08021FEC @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08021FF0 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_08021F3C
_08021FE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08021FEC: .4byte 0x030024E0
_08021FF0: .4byte 0x0000FDFF

	thumb_func_start sub_08021FF4
sub_08021FF4: @ 0x08021FF4
	push {r4, r5, lr}
	ldr r5, _08022008 @ =0x030013D8
	ldr r0, [r5]
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	beq _0802200C
	cmp r4, #1
	beq _08022032
	b _08022038
	.align 2, 0
_08022008: .4byte 0x030013D8
_0802200C:
	bl sub_08022DF0
	ldr r0, [r5]
	strb r4, [r0, #0x15]
	movs r2, #0
	adds r3, r5, #0
	movs r4, #0
	adds r1, r3, #0
_0802201C:
	ldr r0, [r3]
	adds r0, #0x16
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
	cmp r2, #3
	ble _0802201C
	ldr r1, [r1]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _08022038
_08022032:
	movs r0, #2
	bl sub_08021F3C
_08022038:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08022040
sub_08022040: @ 0x08022040
	push {r4, r5, lr}
	ldr r4, _08022060 @ =0x030013D8
	ldr r3, [r4]
	ldrb r0, [r3, #0x14]
	adds r5, r4, #0
	cmp r0, #0
	bne _0802210A
	ldrb r2, [r3, #0xe]
	cmp r2, #1
	beq _08022076
	cmp r2, #1
	bgt _08022064
	cmp r2, #0
	beq _0802206A
	b _0802210A
	.align 2, 0
_08022060: .4byte 0x030013D8
_08022064:
	cmp r2, #2
	beq _080220EC
	b _0802210A
_0802206A:
	bl sub_08022330
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _0802210A
_08022076:
	ldr r1, _08022088 @ =0x030024B0
	ldrh r0, [r1]
	ands r2, r0
	adds r4, r1, #0
	cmp r2, #0
	beq _0802208C
	movs r0, #2
	strb r0, [r3, #0xe]
	b _0802210A
	.align 2, 0
_08022088: .4byte 0x030024B0
_0802208C:
	ldrh r1, [r4, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080220B6
	ldr r0, _080220AC @ =0x00000147
	bl sub_0806F5DC
	ldrh r1, [r4, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080220B0
	bl sub_08022300
	b _0802210A
	.align 2, 0
_080220AC: .4byte 0x00000147
_080220B0:
	bl sub_08022318
	b _0802210A
_080220B6:
	ldrh r1, [r4, #4]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0802210A
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080220D4
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	beq _080220D4
	bl sub_080222E8
	b _0802210A
_080220D4:
	ldrh r1, [r4, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802210A
	ldr r0, [r5]
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bhi _0802210A
	bl sub_080222D0
	b _0802210A
_080220EC:
	bl sub_08022374
	ldr r0, [r4]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, _08022110 @ =sub_08022968
	bl sub_080094F4
	bl sub_08022E4C
	movs r0, #3
	bl sub_08021F3C
_0802210A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022110: .4byte sub_08022968

	thumb_func_start sub_08022114
sub_08022114: @ 0x08022114
	push {r4, lr}
	sub sp, #4
	ldr r4, _0802212C @ =0x030013D8
	ldr r2, [r4]
	ldrb r0, [r2, #0xe]
	cmp r0, #1
	beq _08022168
	cmp r0, #1
	bgt _08022130
	cmp r0, #0
	beq _0802213A
	b _0802221E
	.align 2, 0
_0802212C: .4byte 0x030013D8
_08022130:
	cmp r0, #2
	beq _08022190
	cmp r0, #3
	beq _08022210
	b _0802221E
_0802213A:
	ldrb r1, [r2, #0x16]
	lsls r1, r1, #0xc
	ldrb r0, [r2, #0x17]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #4
	orrs r1, r0
	ldrb r0, [r2, #0x19]
	orrs r0, r1
	lsls r0, r0, #0x10
	ldr r1, _08022164 @ =0x44440000
	cmp r0, r1
	bne _0802215A
	bl sub_080193B4
_0802215A:
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _0802221E
	.align 2, 0
_08022164: .4byte 0x44440000
_08022168:
	movs r0, #2
	strb r0, [r2, #0xe]
	ldr r0, _08022184 @ =0x03004494
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022188
	movs r0, #0xa4
	lsls r0, r0, #1
	bl sub_0806F5DC
	bl sub_08022A00
	b _0802221E
	.align 2, 0
_08022184: .4byte 0x03004494
_08022188:
	movs r0, #0x3c
	bl sub_08002B98
	b _0802221E
_08022190:
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802221E
	bl sub_08005934
	ldr r0, _080221B8 @ =0x03004494
	ldrb r0, [r0]
	cmp r0, #1
	bne _080221C0
	ldr r0, _080221BC @ =0x080848EC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _080221CA
	.align 2, 0
_080221B8: .4byte 0x03004494
_080221BC: .4byte 0x080848EC
_080221C0:
	ldr r0, _08022200 @ =0x080848F4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_080221CA:
	bl sub_08005A2C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1c
	bl sub_0800031C
	ldr r2, _08022204 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08022208 @ =0x030013D8
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #0xe]
	ldr r0, _0802220C @ =0x030056F0
	movs r1, #4
	bl sub_0806F774
	b _0802221E
	.align 2, 0
_08022200: .4byte 0x080848F4
_08022204: .4byte 0x030024E0
_08022208: .4byte 0x030013D8
_0802220C: .4byte 0x030056F0
_08022210:
	bl sub_080003D0
	cmp r0, #0
	beq _0802221E
	movs r0, #4
	bl sub_08021F3C
_0802221E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08022228
sub_08022228: @ 0x08022228
	push {r4, lr}
	bl sub_080058A4
	ldr r4, _08022278 @ =0x030013D8
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #6
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	bl sub_08007CF8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022278: .4byte 0x030013D8

	thumb_func_start sub_0802227C
sub_0802227C: @ 0x0802227C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080222B0 @ =0x030013D8
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080222B4 @ =0x0808496C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080222B0: .4byte 0x030013D8
_080222B4: .4byte 0x0808496C

	thumb_func_start sub_080222B8
sub_080222B8: @ 0x080222B8
	push {lr}
	ldr r0, _080222CC @ =0x030013D8
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0x14]
	movs r0, #1
	bl sub_0802227C
	pop {r0}
	bx r0
	.align 2, 0
_080222CC: .4byte 0x030013D8

	thumb_func_start sub_080222D0
sub_080222D0: @ 0x080222D0
	push {lr}
	ldr r0, _080222E4 @ =0x030013D8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x14]
	movs r0, #2
	bl sub_0802227C
	pop {r0}
	bx r0
	.align 2, 0
_080222E4: .4byte 0x030013D8

	thumb_func_start sub_080222E8
sub_080222E8: @ 0x080222E8
	push {lr}
	ldr r0, _080222FC @ =0x030013D8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x14]
	movs r0, #3
	bl sub_0802227C
	pop {r0}
	bx r0
	.align 2, 0
_080222FC: .4byte 0x030013D8

	thumb_func_start sub_08022300
sub_08022300: @ 0x08022300
	push {lr}
	ldr r0, _08022314 @ =0x030013D8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x14]
	movs r0, #4
	bl sub_0802227C
	pop {r0}
	bx r0
	.align 2, 0
_08022314: .4byte 0x030013D8

	thumb_func_start sub_08022318
sub_08022318: @ 0x08022318
	push {lr}
	ldr r0, _0802232C @ =0x030013D8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x14]
	movs r0, #5
	bl sub_0802227C
	pop {r0}
	bx r0
	.align 2, 0
_0802232C: .4byte 0x030013D8

	thumb_func_start sub_08022330
sub_08022330: @ 0x08022330
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0802236C @ =0x030013D8
_08022336:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	adds r4, #1
	cmp r4, #3
	ble _08022336
	ldr r0, _0802236C @ =0x030013D8
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	movs r1, #1
	bl sub_08009A34
	ldr r2, _08022370 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802236C: .4byte 0x030013D8
_08022370: .4byte 0x030024E0

	thumb_func_start sub_08022374
sub_08022374: @ 0x08022374
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080223AC @ =0x030013D8
_0802237A:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #3
	ble _0802237A
	ldr r0, _080223AC @ =0x030013D8
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	movs r1, #0
	bl sub_08009A34
	ldr r2, _080223B0 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _080223B4 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080223AC: .4byte 0x030013D8
_080223B0: .4byte 0x030024E0
_080223B4: .4byte 0x0000FBFF

	thumb_func_start sub_080223B8
sub_080223B8: @ 0x080223B8
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	movs r4, #0
	ldr r5, _080224C8 @ =0x030013D8
_080223C2:
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r2, [r5]
	ldr r1, [r2, #0x1c]
	asrs r1, r1, #8
	lsls r0, r4, #4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #0x20]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x64]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	adds r0, r7, #0
	ldr r1, _080224CC @ =0x080C2480
	ldr r2, _080224D0 @ =0x080C2438
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009B6C
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x28
	adds r0, r0, r1
	str r7, [r0]
	adds r4, #1
	cmp r4, #3
	ble _080223C2
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r4, _080224C8 @ =0x030013D8
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x20]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x64]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r5, _080224CC @ =0x080C2480
	ldr r6, _080224D0 @ =0x080C2438
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009B6C
	ldr r0, [r4]
	str r7, [r0, #0x3c]
	movs r0, #2
	movs r1, #0x20
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x20]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x64]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xa
	bl sub_08009ACC
	ldr r0, [r4]
	str r7, [r0, #0x38]
	bl sub_080222B8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080224C8: .4byte 0x030013D8
_080224CC: .4byte 0x080C2480
_080224D0: .4byte 0x080C2438

	thumb_func_start sub_080224D4
sub_080224D4: @ 0x080224D4
	push {r4, lr}
	movs r4, #0
_080224D8:
	ldr r0, _08022508 @ =0x030013D8
	ldr r3, [r0]
	lsls r1, r4, #2
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	lsls r2, r4, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r4, #1
	cmp r4, #3
	ble _080224D8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022508: .4byte 0x030013D8

	thumb_func_start sub_0802250C
sub_0802250C: @ 0x0802250C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08022530 @ =0x030013D8
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r7, r0, #0
	ldrb r3, [r7]
	mov r8, r3
	cmp r3, #0
	beq _08022534
	cmp r3, #1
	beq _08022578
	b _080225A0
	.align 2, 0
_08022530: .4byte 0x030013D8
_08022534:
	ldr r5, [r5]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	ldrb r4, [r5, #0x15]
	lsls r4, r4, #4
	ldr r6, _08022574 @ =0x0808495C
	ldrh r2, [r7, #2]
	adds r3, r2, #1
	strh r3, [r7, #2]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xf
	adds r2, r2, r6
	adds r1, r1, r4
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x38]
	movs r3, #8
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	ldrh r0, [r7, #2]
	cmp r0, #7
	bls _080225A0
	movs r0, #1
	strb r0, [r7]
	mov r0, r8
	strh r0, [r7, #2]
	b _080225A0
	.align 2, 0
_08022574: .4byte 0x0808495C
_08022578:
	ldr r1, [r5]
	ldrb r0, [r1, #0x15]
	adds r0, #1
	strb r0, [r1, #0x15]
	ldr r3, [r5]
	ldr r0, [r3, #0x38]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r3, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	bl sub_080222B8
_080225A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080225AC
sub_080225AC: @ 0x080225AC
	push {r4, r5, r6, r7, lr}
	ldr r4, _080225C8 @ =0x030013D8
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldrb r7, [r6]
	cmp r7, #0
	beq _080225CC
	cmp r7, #1
	beq _0802260C
	b _08022634
	.align 2, 0
_080225C8: .4byte 0x030013D8
_080225CC:
	ldr r4, [r4]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r4, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r5, _08022608 @ =0x0808495C
	ldrh r2, [r6, #2]
	adds r3, r2, #1
	strh r3, [r6, #2]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xf
	adds r2, r2, r5
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r4, #0x38]
	movs r3, #8
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	ldrh r0, [r6, #2]
	cmp r0, #7
	bls _08022634
	movs r0, #1
	strb r0, [r6]
	strh r7, [r6, #2]
	b _08022634
	.align 2, 0
_08022608: .4byte 0x0808495C
_0802260C:
	ldr r1, [r4]
	ldrb r0, [r1, #0x15]
	subs r0, #1
	strb r0, [r1, #0x15]
	ldr r3, [r4]
	ldr r0, [r3, #0x38]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r3, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	bl sub_080222B8
_08022634:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802263C
sub_0802263C: @ 0x0802263C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08022658 @ =0x030013D8
	ldr r0, [r7]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #0
	beq _0802265C
	cmp r6, #1
	beq _080226B0
	b _08022778
	.align 2, 0
_08022658: .4byte 0x030013D8
_0802265C:
	ldr r3, [r7]
	ldr r0, [r3, #0x3c]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r3, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	asrs r2, r2, #8
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r7]
	ldr r0, [r0, #0x3c]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r7]
	ldr r4, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x16
	ldrb r1, [r1, #0x15]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0xa
	bl sub_08071064
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08009AFC
	strh r6, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _08022778
_080226B0:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0802271C
	ldr r3, [r7]
	ldr r0, [r3, #0x3c]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r3, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r7]
	ldr r3, [r2, #0x3c]
	ldrb r0, [r2, #0x15]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x28
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x3c]
	ldrb r0, [r2, #0x15]
	lsls r0, r0, #2
	adds r1, r1, r0
	str r3, [r1]
	ldr r0, [r2, #0x3c]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r5, #2]
	bl sub_080222B8
	ldr r0, [r7]
	adds r4, r0, #0
	adds r4, #0x16
	ldrb r0, [r0, #0x15]
	adds r4, r4, r0
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl sub_08071064
	strb r0, [r4]
	b _08022778
_0802271C:
	ldr r3, [r7]
	ldrb r2, [r3, #0x15]
	lsls r1, r2, #2
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	asrs r2, r2, #8
	ldr r4, _08022780 @ =0x0808491C
	ldrh r3, [r5, #2]
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r3, [r7]
	ldr r0, [r3, #0x3c]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r3, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	asrs r2, r2, #8
	ldrh r3, [r5, #2]
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrh r3, [r3]
	subs r3, #0x10
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_08022778:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022780: .4byte 0x0808491C

	thumb_func_start sub_08022784
sub_08022784: @ 0x08022784
	push {r4, r5, r6, lr}
	ldr r4, _080227A0 @ =0x030013D8
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #0
	beq _080227A4
	cmp r5, #1
	beq _080227F8
	b _080228C4
	.align 2, 0
_080227A0: .4byte 0x030013D8
_080227A4:
	ldr r3, [r4]
	ldr r0, [r3, #0x3c]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r3, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	asrs r2, r2, #8
	subs r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	ldr r4, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x16
	ldrb r1, [r1, #0x15]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #9
	movs r1, #0xa
	bl sub_08071064
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08009AFC
	strh r5, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	b _080228C4
_080227F8:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08022864
	ldr r3, [r4]
	ldr r0, [r3, #0x3c]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r3, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r4]
	ldr r3, [r2, #0x3c]
	ldrb r0, [r2, #0x15]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x28
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x3c]
	ldrb r0, [r2, #0x15]
	lsls r0, r0, #2
	adds r1, r1, r0
	str r3, [r1]
	ldr r0, [r2, #0x3c]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r6, #2]
	bl sub_080222B8
	ldr r0, [r4]
	adds r4, r0, #0
	adds r4, #0x16
	ldrb r0, [r0, #0x15]
	adds r4, r4, r0
	ldrb r0, [r4]
	adds r0, #9
	movs r1, #0xa
	bl sub_08071064
	strb r0, [r4]
	b _080228C4
_08022864:
	ldr r3, [r4]
	ldrb r2, [r3, #0x15]
	lsls r1, r2, #2
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	ldr r5, _080228CC @ =0x0808491C
	ldrh r3, [r6, #2]
	lsls r3, r3, #1
	adds r3, r3, r5
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r3, [r4]
	ldr r0, [r3, #0x3c]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrb r2, [r3, #0x15]
	lsls r2, r2, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x20]
	asrs r2, r2, #8
	ldrh r4, [r6, #2]
	lsls r4, r4, #1
	adds r4, r4, r5
	ldr r5, _080228D0 @ =0x0000FFF0
	adds r3, r5, #0
	ldrh r4, [r4]
	adds r3, r3, r4
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_080228C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080228CC: .4byte 0x0808491C
_080228D0: .4byte 0x0000FFF0

	thumb_func_start sub_080228D4
sub_080228D4: @ 0x080228D4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08022908 @ =0x030013D8
_080228DA:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #3
	ble _080228DA
	ldr r4, _08022908 @ =0x030013D8
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x38]
	bl sub_08009A00
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022908: .4byte 0x030013D8

	thumb_func_start sub_0802290C
sub_0802290C: @ 0x0802290C
	push {r4, r5, r6, lr}
	sub sp, #4
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _0802295C @ =0x030013D8
	ldr r0, [r4]
	ldr r1, [r0, #0x24]
	ldr r2, _08022960 @ =0x010000A0
	mov r0, sp
	bl CpuSet
	ldr r0, [r4]
	ldr r6, [r0, #0x24]
	movs r4, #0
	ldr r5, _08022964 @ =0x08084984
_08022930:
	ldr r0, _0802295C @ =0x030013D8
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	asrs r0, r0, #8
	adds r0, r0, r4
	adds r0, #0x9f
	movs r1, #0xa0
	bl sub_08071064
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r5]
	strh r1, [r0]
	adds r5, #2
	adds r4, #1
	cmp r4, #0xf
	ble _08022930
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802295C: .4byte 0x030013D8
_08022960: .4byte 0x010000A0
_08022964: .4byte 0x08084984

	thumb_func_start sub_08022968
sub_08022968: @ 0x08022968
	ldr r0, _08022990 @ =0x030013D8
	ldr r2, [r0]
	ldr r1, [r2, #0x24]
	ldr r0, _08022994 @ =0x030024E0
	movs r3, #0x9f
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r0, #0x4c
	strh r1, [r0]
	ldr r1, _08022998 @ =0x040000B0
	ldr r0, [r2, #0x24]
	str r0, [r1]
	ldr r0, _0802299C @ =0x04000052
	str r0, [r1, #4]
	ldr r0, _080229A0 @ =0xA2400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08022990: .4byte 0x030013D8
_08022994: .4byte 0x030024E0
_08022998: .4byte 0x040000B0
_0802299C: .4byte 0x04000052
_080229A0: .4byte 0xA2400001

	thumb_func_start sub_080229A4
sub_080229A4: @ 0x080229A4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080229D8 @ =0x030013D8
	ldr r0, [r5]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _080229DC @ =0x08084A34
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080229D8: .4byte 0x030013D8
_080229DC: .4byte 0x08084A34

	thumb_func_start sub_080229E0
sub_080229E0: @ 0x080229E0
	push {lr}
	ldr r0, _080229FC @ =0x030013D8
	ldr r1, [r0]
	adds r1, #0x70
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080229A4
	pop {r0}
	bx r0
	.align 2, 0
_080229FC: .4byte 0x030013D8

	thumb_func_start sub_08022A00
sub_08022A00: @ 0x08022A00
	push {lr}
	ldr r0, _08022A1C @ =0x030013D8
	ldr r1, [r0]
	adds r1, #0x70
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_080229A4
	pop {r0}
	bx r0
	.align 2, 0
_08022A1C: .4byte 0x030013D8

	thumb_func_start sub_08022A20
sub_08022A20: @ 0x08022A20
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x48
	bl sub_08009A70
	ldr r5, _08022A6C @ =0x030013D8
	ldr r0, [r5]
	ldr r1, [r0, #0x64]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08022A70 @ =0x080C2480
	ldr r2, _08022A74 @ =0x080C2438
	adds r0, r4, #0
	movs r3, #0xb
	bl sub_08009ACC
	ldr r0, [r5]
	str r4, [r0, #0x40]
	bl sub_080229E0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022A6C: .4byte 0x030013D8
_08022A70: .4byte 0x080C2480
_08022A74: .4byte 0x080C2438

	thumb_func_start sub_08022A78
sub_08022A78: @ 0x08022A78
	bx lr
	.align 2, 0

	thumb_func_start sub_08022A7C
sub_08022A7C: @ 0x08022A7C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r3, [r4]
	cmp r3, #1
	beq _08022AC0
	cmp r3, #1
	bgt _08022A94
	cmp r3, #0
	beq _08022A9E
	b _08022B5C
_08022A94:
	cmp r3, #2
	beq _08022B08
	cmp r3, #3
	beq _08022B58
	b _08022B5C
_08022A9E:
	ldr r1, _08022ABC @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r2, #0
	movs r0, #0xbf
	mov r5, ip
	strh r0, [r5]
	adds r1, #0x4e
	strb r2, [r1]
	movs r0, #1
	strb r0, [r4]
	strh r3, [r4, #2]
	b _08022B5C
	.align 2, 0
_08022ABC: .4byte 0x030024E0
_08022AC0:
	ldr r2, _08022AFC @ =0x030024E0
	ldr r1, _08022B00 @ =0x080849A4
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	adds r2, #0x4e
	strb r0, [r2]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08022B5C
	ldr r0, _08022B04 @ =0x030013D8
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	movs r1, #0xc
	bl sub_08009AFC
	bl sub_08022C4C
	movs r0, #2
	strb r0, [r4]
	movs r0, #0
	strh r0, [r4, #2]
	b _08022B5C
	.align 2, 0
_08022AFC: .4byte 0x030024E0
_08022B00: .4byte 0x080849A4
_08022B04: .4byte 0x030013D8
_08022B08:
	ldr r5, _08022B4C @ =0x030024E0
	ldr r1, _08022B50 @ =0x080849AC
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x43
	bls _08022B5C
	ldr r0, _08022B54 @ =0x030013D8
	ldr r0, [r0]
	ldr r0, [r0, #0x4c]
	movs r1, #1
	bl sub_08009AFC
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xb4
	bl sub_08007AC0
	movs r0, #3
	strb r0, [r4]
	b _08022B5C
	.align 2, 0
_08022B4C: .4byte 0x030024E0
_08022B50: .4byte 0x080849AC
_08022B54: .4byte 0x030013D8
_08022B58:
	bl sub_080229E0
_08022B5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08022B64
sub_08022B64: @ 0x08022B64
	push {lr}
	ldr r0, _08022B74 @ =0x030013D8
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08022B74: .4byte 0x030013D8

	thumb_func_start sub_08022B78
sub_08022B78: @ 0x08022B78
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r4, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	beq _08022BFC
	cmp r0, #1
	bgt _08022B92
	cmp r0, #0
	beq _08022B98
	b _08022C28
_08022B92:
	cmp r0, #2
	beq _08022C16
	b _08022C28
_08022B98:
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	cmp r4, #0
	bne _08022BAC
	bl sub_08007A64
	b _08022C42
_08022BAC:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #6
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _08022BF0 @ =0x030013D8
	ldr r0, [r0]
	ldr r1, [r0, #0x64]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08022BF4 @ =0x080C2480
	ldr r2, _08022BF8 @ =0x080C2438
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r5, #8]
	b _08022C24
	.align 2, 0
_08022BF0: .4byte 0x030013D8
_08022BF4: .4byte 0x080C2480
_08022BF8: .4byte 0x080C2438
_08022BFC:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08022C28
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A34
	movs r0, #0x14
	bl sub_08007AC0
	movs r0, #2
	b _08022C26
_08022C16:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	bl sub_08009BA0
_08022C24:
	movs r0, #1
_08022C26:
	strb r0, [r5]
_08022C28:
	ldr r0, _08022C48 @ =0x030013D8
	ldr r0, [r0]
	adds r0, #0x70
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08022C42
	adds r0, r4, #0
	bl sub_08009A00
	bl sub_08007A64
_08022C42:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022C48: .4byte 0x030013D8

	thumb_func_start sub_08022C4C
sub_08022C4C: @ 0x08022C4C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022CA0 @ =0x030013D8
	ldr r1, [r0]
	adds r1, #0x70
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r7, #0
	ldr r5, _08022CA4 @ =0x080848FC
	movs r6, #2
_08022C64:
	ldr r0, _08022CA8 @ =sub_08022B78
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldrh r1, [r5]
	strh r1, [r0, #4]
	ldrh r1, [r5, #2]
	strh r1, [r0, #6]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08007AD8
	adds r7, #0x14
	adds r5, #4
	subs r6, #1
	cmp r6, #0
	bge _08022C64
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022CA0: .4byte 0x030013D8
_08022CA4: .4byte 0x080848FC
_08022CA8: .4byte sub_08022B78

	thumb_func_start sub_08022CAC
sub_08022CAC: @ 0x08022CAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x48
	bl sub_08009A70
	ldr r1, _08022D88 @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _08022D8C @ =0x030013D8
	ldr r0, [r4]
	ldr r1, [r0, #0x58]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08022D90 @ =0x080E03DC
	ldr r2, _08022D94 @ =0x080E03C4
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x4c]
	movs r6, #0
	adds r7, r4, #0
	ldr r0, _08022D98 @ =0x080B8664
	mov r8, r0
_08022D0A:
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _08022D9C @ =0x08084A40
	lsls r4, r6, #1
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x6c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #5
	bl sub_08009AB4
	ldr r0, _08022DA0 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _08022DA4 @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #0x20]
	ldr r0, _08022DA8 @ =0x08084A44
	adds r4, r4, r0
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_08009ACC
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x44
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #1
	ble _08022D0A
	ldr r0, _08022D8C @ =0x030013D8
	ldr r0, [r0]
	movs r2, #6
	ldrsh r0, [r0, r2]
	ldr r1, _08022DAC @ =sub_08022DB0
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022D88: .4byte 0x06010000
_08022D8C: .4byte 0x030013D8
_08022D90: .4byte 0x080E03DC
_08022D94: .4byte 0x080E03C4
_08022D98: .4byte 0x080B8664
_08022D9C: .4byte 0x08084A40
_08022DA0: .4byte 0x03004400
_08022DA4: .4byte 0x080B8660
_08022DA8: .4byte 0x08084A44
_08022DAC: .4byte sub_08022DB0

	thumb_func_start sub_08022DB0
sub_08022DB0: @ 0x08022DB0
	bx lr
	.align 2, 0

	thumb_func_start sub_08022DB4
sub_08022DB4: @ 0x08022DB4
	push {r4, r5, lr}
	ldr r4, _08022DEC @ =0x030013D8
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	bl sub_08009A00
	movs r5, #0
_08022DC2:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #8
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #1
	ble _08022DC2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022DEC: .4byte 0x030013D8

	thumb_func_start sub_08022DF0
sub_08022DF0: @ 0x08022DF0
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _08022E40 @ =0x030013D8
_08022DF8:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08022E44 @ =0x08084A44
	lsls r4, r5, #1
	adds r1, r4, r1
	ldrh r1, [r1]
	ldr r2, _08022E48 @ =0x08084A40
	adds r2, r4, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0x40
	str r3, [sp]
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	adds r1, #8
	adds r1, r1, r4
	strh r0, [r1]
	adds r5, #1
	cmp r5, #1
	ble _08022DF8
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022E40: .4byte 0x030013D8
_08022E44: .4byte 0x08084A44
_08022E48: .4byte 0x08084A40

	thumb_func_start sub_08022E4C
sub_08022E4C: @ 0x08022E4C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08022E70 @ =0x030013D8
_08022E52:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #1
	ble _08022E52
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022E70: .4byte 0x030013D8

	thumb_func_start sub_08022E74
sub_08022E74: @ 0x08022E74
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r6, _08023010 @ =0x030013DC
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r6]
	movs r0, #0
	movs r2, #0x78
	bl sub_08007EFC
	ldr r0, _08023014 @ =0x08084C7C
	ldr r5, [r0]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r4, _08023018 @ =sub_08023CA0
	adds r1, r4, #0
	bl sub_08007BA0
	movs r0, #0
	bl sub_08023700
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #2]
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r1, r4, #0
	bl sub_08007BA0
	movs r0, #1
	bl sub_08023700
	ldr r0, _0802301C @ =sub_08023CC0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #4]
	movs r2, #4
	ldrsh r0, [r1, r2]
	ldr r1, _08023020 @ =sub_08023EB8
	bl sub_08007BA0
	ldr r1, _08023024 @ =0x08084B34
	ldr r4, _08023028 @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802302C @ =0x05000200
	bl sub_08008308
	ldr r1, _08023030 @ =0x08084B44
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x50]
	ldr r0, [sp, #4]
	str r0, [r1, #0x54]
	ldr r0, _08023034 @ =0x080E162C
	ldr r1, _08023038 @ =0x05000220
	bl sub_08008308
	ldr r0, _0802303C @ =0x080E18D4
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x58]
	ldr r0, [sp, #4]
	str r0, [r1, #0x5c]
	ldr r1, _08023040 @ =0x08085A50
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x60]
	ldr r0, [sp, #4]
	str r0, [r1, #0x64]
	ldr r4, _08023044 @ =0x06011000
	ldr r0, _08023048 @ =0x080C5268
	ldr r1, _0802304C @ =0x05000240
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x44]
	ldr r0, _08023050 @ =0x080C54A0
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _08023054 @ =0x080CAC38
	ldr r1, _08023058 @ =0x05000260
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x48]
	ldr r0, _0802305C @ =0x080CAD1C
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08023060 @ =0x080B85E8
	ldr r5, _08023064 @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08023068 @ =0x05000280
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x4c]
	ldr r1, _0802306C @ =0x080B8624
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _08023070 @ =0x080C2808
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _08023074 @ =0x080C286C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _08023078 @ =0x080C4C64
	ldr r1, _0802307C @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _08023080 @ =0x080C5150
	ldr r1, _08023084 @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1c
	bl sub_08000268
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1d
	movs r2, #3
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023010: .4byte 0x030013DC
_08023014: .4byte 0x08084C7C
_08023018: .4byte sub_08023CA0
_0802301C: .4byte sub_08023CC0
_08023020: .4byte sub_08023EB8
_08023024: .4byte 0x08084B34
_08023028: .4byte 0x03004488
_0802302C: .4byte 0x05000200
_08023030: .4byte 0x08084B44
_08023034: .4byte 0x080E162C
_08023038: .4byte 0x05000220
_0802303C: .4byte 0x080E18D4
_08023040: .4byte 0x08085A50
_08023044: .4byte 0x06011000
_08023048: .4byte 0x080C5268
_0802304C: .4byte 0x05000240
_08023050: .4byte 0x080C54A0
_08023054: .4byte 0x080CAC38
_08023058: .4byte 0x05000260
_0802305C: .4byte 0x080CAD1C
_08023060: .4byte 0x080B85E8
_08023064: .4byte 0x03004400
_08023068: .4byte 0x05000280
_0802306C: .4byte 0x080B8624
_08023070: .4byte 0x080C2808
_08023074: .4byte 0x080C286C
_08023078: .4byte 0x080C4C64
_0802307C: .4byte 0x0600F800
_08023080: .4byte 0x080C5150
_08023084: .4byte 0x0600F000

	thumb_func_start sub_08023088
sub_08023088: @ 0x08023088
	push {r4, lr}
	ldr r1, _080230A8 @ =0x08084B90
	ldr r4, _080230AC @ =0x030013DC
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #8]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080230A8: .4byte 0x08084B90
_080230AC: .4byte 0x030013DC

	thumb_func_start sub_080230B0
sub_080230B0: @ 0x080230B0
	ldr r1, _080230C4 @ =0x030013DC
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #9]
	ldr r0, [r1]
	strb r3, [r0, #0xa]
	ldr r0, [r1]
	strh r3, [r0, #0xc]
	bx lr
	.align 2, 0
_080230C4: .4byte 0x030013DC

	thumb_func_start sub_080230C8
sub_080230C8: @ 0x080230C8
	push {r4, r5, r6, lr}
	ldr r6, _080230DC @ =0x030013DC
	ldr r0, [r6]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080230E0
	cmp r0, #1
	beq _08023138
	b _08023150
	.align 2, 0
_080230DC: .4byte 0x030013DC
_080230E0:
	bl sub_08008174
	ldr r4, _0802312C @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08023130 @ =0x00001F03
	strh r0, [r4, #8]
	ldr r0, _08023134 @ =0x00001E02
	strh r0, [r4, #6]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x3c
	bl sub_0806F5DC
	ldr r0, [r6]
	strb r5, [r0, #0xa]
	b _08023150
	.align 2, 0
_0802312C: .4byte 0x030024E0
_08023130: .4byte 0x00001F03
_08023134: .4byte 0x00001E02
_08023138:
	bl sub_080003D0
	cmp r0, #0
	beq _08023150
	ldr r2, _08023158 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0802315C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_080230B0
_08023150:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023158: .4byte 0x030024E0
_0802315C: .4byte 0x0000FDFF

	thumb_func_start sub_08023160
sub_08023160: @ 0x08023160
	push {r4, lr}
	ldr r4, _08023174 @ =0x030013DC
	ldr r0, [r4]
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	beq _08023178
	cmp r1, #1
	beq _080231A4
	b _080231AA
	.align 2, 0
_08023174: .4byte 0x030013DC
_08023178:
	adds r0, #0x68
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x69
	strb r1, [r0]
	bl sub_08023F30
	bl sub_08005934
	ldr r0, _080231A0 @ =0x08084AD8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xa]
	b _080231AA
	.align 2, 0
_080231A0: .4byte 0x08084AD8
_080231A4:
	movs r0, #2
	bl sub_080230B0
_080231AA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080231B0
sub_080231B0: @ 0x080231B0
	push {r4, lr}
	ldr r1, _080231CC @ =0x030013DC
	ldr r0, [r1]
	ldrb r0, [r0, #0xa]
	adds r4, r1, #0
	cmp r0, #0xd
	bls _080231C0
	b _08023632
_080231C0:
	lsls r0, r0, #2
	ldr r1, _080231D0 @ =_080231D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080231CC: .4byte 0x030013DC
_080231D0: .4byte _080231D4
_080231D4: @ jump table
	.4byte _0802320C @ case 0
	.4byte _08023228 @ case 1
	.4byte _0802323E @ case 2
	.4byte _080232A4 @ case 3
	.4byte _080232D8 @ case 4
	.4byte _08023320 @ case 5
	.4byte _08023334 @ case 6
	.4byte _08023348 @ case 7
	.4byte _080233D8 @ case 8
	.4byte _08023410 @ case 9
	.4byte _08023458 @ case 10
	.4byte _08023530 @ case 11
	.4byte _08023580 @ case 12
	.4byte _08023628 @ case 13
_0802320C:
	ldr r0, [r4]
	adds r0, #0x6a
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x6b
	strb r1, [r0]
	movs r0, #1
	bl sub_08023798
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xa]
	b _08023632
_08023228:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023236
	b _08023632
_08023236:
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0xa]
	b _08023632
_0802323E:
	ldr r1, [r4]
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bhi _08023250
	b _08023632
_08023250:
	movs r0, #0xa
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0802326A
	movs r0, #2
	bl sub_0800B828
	ldr r1, [r4]
	adds r0, #8
	b _08023288
_0802326A:
	cmp r0, #0
	blt _0802327E
	cmp r0, #2
	bgt _0802327E
	movs r0, #3
	bl sub_0800B828
	ldr r1, [r4]
	adds r0, #5
	b _08023288
_0802327E:
	movs r0, #5
	bl sub_0800B828
	ldr r1, _080232A0 @ =0x030013DC
	ldr r1, [r1]
_08023288:
	adds r1, #0x6b
	strb r0, [r1]
	ldr r4, _080232A0 @ =0x030013DC
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	movs r1, #1
	bl sub_08009AFC
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #0xa]
	b _08023632
	.align 2, 0
_080232A0: .4byte 0x030013DC
_080232A4:
	ldr r0, [r4]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080232B2
	b _08023632
_080232B2:
	adds r0, r1, #0
	movs r1, #2
	bl sub_08009AFC
	ldr r0, _080232D4 @ =0x00000153
	bl sub_0806F6A8
	movs r0, #0xf2
	bl sub_0806F5DC
	movs r0, #1
	bl sub_080237BC
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #0xa]
	b _08023632
	.align 2, 0
_080232D4: .4byte 0x00000153
_080232D8:
	ldr r4, _0802331C @ =0x030013DC
	ldr r0, [r4]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0x10]
	cmp r0, #2
	bne _080232FE
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080232FE
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	movs r1, #0xff
	bl sub_08009B40
_080232FE:
	ldr r0, _0802331C @ =0x030013DC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802330E
	b _08023632
_0802330E:
	movs r0, #5
	strb r0, [r1, #0xa]
	movs r0, #0x1e
	bl sub_08002B98
	b _08023632
	.align 2, 0
_0802331C: .4byte 0x030013DC
_08023320:
	movs r0, #0
	bl sub_08023798
	ldr r0, _08023330 @ =0x030013DC
	ldr r1, [r0]
	movs r0, #6
	strb r0, [r1, #0xa]
	b _08023632
	.align 2, 0
_08023330: .4byte 0x030013DC
_08023334:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023342
	b _08023632
_08023342:
	movs r0, #7
	strb r0, [r1, #0xa]
	b _08023632
_08023348:
	movs r0, #0xa
	bl sub_0800B828
	ldr r4, _080233D0 @ =0x030013DC
	ldr r1, [r4]
	adds r1, #0x6a
	strb r0, [r1]
	ldr r0, _080233D4 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08023364
	b _08023632
_08023364:
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x6a
	adds r0, #0x6b
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080233AC
	movs r0, #5
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x69
	ldrb r1, [r1]
	lsls r1, r1, #1
	cmp r0, r1
	bge _080233AC
	adds r0, r2, #0
	adds r0, #0x6b
	ldrb r1, [r0]
	movs r0, #0xa
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800B828
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x6b
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r1, #0x6a
	strb r0, [r1]
_080233AC:
	ldr r4, _080233D0 @ =0x030013DC
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	movs r1, #0
	bl sub_08009B40
	bl sub_080240A4
	ldr r1, [r4]
	movs r0, #8
	strb r0, [r1, #0xa]
	b _08023632
	.align 2, 0
_080233D0: .4byte 0x030013DC
_080233D4: .4byte 0x030024B0
_080233D8:
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080233E6
	b _08023632
_080233E6:
	ldr r0, _0802340C @ =0x00000157
	bl sub_0806F6A8
	movs r0, #0xf2
	bl sub_0806F5DC
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	movs r1, #2
	bl sub_08009AFC
	movs r0, #0
	bl sub_080237BC
	ldr r1, [r4]
	movs r0, #9
	strb r0, [r1, #0xa]
	b _08023632
	.align 2, 0
_0802340C: .4byte 0x00000157
_08023410:
	ldr r4, _08023454 @ =0x030013DC
	ldr r0, [r4]
	ldr r1, [r0, #0x10]
	ldrb r0, [r1, #0x10]
	cmp r0, #2
	bne _08023436
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08023436
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	movs r1, #0xff
	bl sub_08009B40
_08023436:
	ldr r4, _08023454 @ =0x030013DC
	ldr r0, [r4]
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023444
	b _08023632
_08023444:
	movs r0, #0x1e
	bl sub_08002B98
	ldr r1, [r4]
	movs r0, #0xa
	strb r0, [r1, #0xa]
	b _08023632
	.align 2, 0
_08023454: .4byte 0x030013DC
_08023458:
	ldr r0, [r4]
	adds r0, #0x6c
	movs r1, #2
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x6a
	adds r2, r1, #0
	adds r2, #0x6b
	ldrb r3, [r0]
	ldrb r0, [r2]
	cmp r3, r0
	bls _08023478
	adds r1, #0x6c
	movs r0, #0
	b _08023480
_08023478:
	cmp r3, r0
	bhs _08023482
	adds r1, #0x6c
	movs r0, #1
_08023480:
	strb r0, [r1]
_08023482:
	ldr r4, _080234D0 @ =0x030013DC
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x6c
	ldrb r0, [r2]
	cmp r0, #1
	bhi _0802351C
	adds r1, #0x68
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x64]
	movs r2, #0
	bl sub_08009BE4
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080234E0
	ldr r0, [r1, #0x10]
	ldr r3, _080234D4 @ =0x08085A40
	ldr r1, _080234D8 @ =0x03004488
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldr r1, [r3]
	ldr r3, _080234DC @ =0x08085A60
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_08009ACC
	b _080234FA
	.align 2, 0
_080234D0: .4byte 0x030013DC
_080234D4: .4byte 0x08085A40
_080234D8: .4byte 0x03004488
_080234DC: .4byte 0x08085A60
_080234E0:
	ldr r0, [r1, #0x10]
	ldr r3, _0802350C @ =0x08085A40
	ldr r1, _08023510 @ =0x03004488
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldr r1, [r3]
	ldr r3, _08023514 @ =0x08085A60
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #1
	bl sub_08009ACC
_080234FA:
	ldr r4, _08023518 @ =0x030013DC
	ldr r0, [r4]
	adds r0, #0x6c
	ldrb r0, [r0]
	bl sub_08023814
	ldr r1, [r4]
	movs r0, #0xb
	b _0802351E
	.align 2, 0
_0802350C: .4byte 0x08085A40
_08023510: .4byte 0x03004488
_08023514: .4byte 0x08085A60
_08023518: .4byte 0x030013DC
_0802351C:
	movs r0, #0xc
_0802351E:
	strb r0, [r1, #0xa]
	ldr r0, _0802352C @ =0x030013DC
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0xc]
	b _08023632
	.align 2, 0
_0802352C: .4byte 0x030013DC
_08023530:
	ldr r1, [r4]
	ldr r2, [r1, #0x10]
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0802353E
	b _08023632
_0802353E:
	ldr r1, [r1, #0x54]
	adds r0, r2, #0
	movs r2, #0
	bl sub_08009BE4
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	ldr r3, _08023574 @ =0x08084B54
	ldr r1, _08023578 @ =0x03004488
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldr r1, [r3]
	ldr r3, _0802357C @ =0x08084B64
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_08009ACC
	ldr r1, [r4]
	movs r2, #0
	movs r0, #0xc
	strb r0, [r1, #0xa]
	ldr r0, [r4]
	strh r2, [r0, #0xc]
	b _08023632
	.align 2, 0
_08023574: .4byte 0x08084B54
_08023578: .4byte 0x03004488
_0802357C: .4byte 0x08084B64
_08023580:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023632
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023632
	bl sub_08005934
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080235B4
	cmp r0, #1
	beq _080235C0
	ldr r0, _080235B0 @ =0x08084B14
	b _080235D0
	.align 2, 0
_080235B0: .4byte 0x08084B14
_080235B4:
	ldr r1, _080235BC @ =0x08084B28
	adds r0, r2, #0
	adds r0, #0x68
	b _080235C6
	.align 2, 0
_080235BC: .4byte 0x08084B28
_080235C0:
	ldr r1, _08023608 @ =0x08084B1C
	adds r0, r2, #0
	adds r0, #0x69
_080235C6:
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
_080235D0:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r4, _0802360C @ =0x030013DC
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x6c
	ldrb r0, [r1]
	cmp r0, #1
	bhi _08023610
	adds r1, r0, #0
	adds r0, r2, #0
	adds r0, #0x68
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _08023610
	cmp r1, #0
	bne _08023600
	bl sub_080193B4
_08023600:
	ldr r1, [r4]
	movs r0, #0xd
	strb r0, [r1, #0xa]
	b _08023632
	.align 2, 0
_08023608: .4byte 0x08084B1C
_0802360C: .4byte 0x030013DC
_08023610:
	ldr r0, _08023624 @ =0x030013DC
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0xa]
	bl sub_080237E0
	movs r0, #1
	bl sub_080237E0
	b _08023632
	.align 2, 0
_08023624: .4byte 0x030013DC
_08023628:
	bl sub_08023F7C
	movs r0, #3
	bl sub_080230B0
_08023632:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08023638
sub_08023638: @ 0x08023638
	push {r4, lr}
	sub sp, #4
	ldr r4, _08023650 @ =0x030013DC
	ldr r1, [r4]
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	beq _08023660
	cmp r0, #1
	bgt _08023654
	cmp r0, #0
	beq _0802365A
	b _080236A6
	.align 2, 0
_08023650: .4byte 0x030013DC
_08023654:
	cmp r0, #2
	beq _08023698
	b _080236A6
_0802365A:
	movs r0, #1
	strb r0, [r1, #0xa]
	b _080236A6
_08023660:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1c
	bl sub_0800031C
	ldr r2, _08023690 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0xa]
	ldr r0, _08023694 @ =0x030056F0
	movs r1, #4
	bl sub_0806F774
	b _080236A6
	.align 2, 0
_08023690: .4byte 0x030024E0
_08023694: .4byte 0x030056F0
_08023698:
	bl sub_080003D0
	cmp r0, #0
	beq _080236A6
	movs r0, #4
	bl sub_080230B0
_080236A6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080236B0
sub_080236B0: @ 0x080236B0
	push {r4, lr}
	bl sub_080058A4
	ldr r4, _080236FC @ =0x030013DC
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl sub_08007CF8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080236FC: .4byte 0x030013DC

	thumb_func_start sub_08023700
sub_08023700: @ 0x08023700
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08023720 @ =0x030013DC
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023720: .4byte 0x030013DC

	thumb_func_start sub_08023724
sub_08023724: @ 0x08023724
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0802376C @ =0x030013DC
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	ldr r0, [r6]
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08023770 @ =0x08084C7C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802376C: .4byte 0x030013DC
_08023770: .4byte 0x08084C7C

	thumb_func_start sub_08023774
sub_08023774: @ 0x08023774
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08023794 @ =0x030013DC
	ldr r1, [r1]
	lsls r2, r0, #2
	adds r1, r1, r2
	adds r1, #0x70
	movs r2, #0
	strb r2, [r1]
	movs r1, #1
	bl sub_08023724
	pop {r0}
	bx r0
	.align 2, 0
_08023794: .4byte 0x030013DC

	thumb_func_start sub_08023798
sub_08023798: @ 0x08023798
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080237B8 @ =0x030013DC
	ldr r1, [r1]
	lsls r2, r0, #2
	adds r1, r1, r2
	adds r1, #0x70
	movs r2, #1
	strb r2, [r1]
	movs r1, #2
	bl sub_08023724
	pop {r0}
	bx r0
	.align 2, 0
_080237B8: .4byte 0x030013DC

	thumb_func_start sub_080237BC
sub_080237BC: @ 0x080237BC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080237DC @ =0x030013DC
	ldr r1, [r1]
	lsls r2, r0, #2
	adds r1, r1, r2
	adds r1, #0x70
	movs r2, #1
	strb r2, [r1]
	movs r1, #3
	bl sub_08023724
	pop {r0}
	bx r0
	.align 2, 0
_080237DC: .4byte 0x030013DC

	thumb_func_start sub_080237E0
sub_080237E0: @ 0x080237E0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r2, _08023810 @ =0x030013DC
	ldr r0, [r2]
	lsls r3, r4, #2
	adds r0, r0, r3
	adds r0, #0x70
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x18
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_08009A34
	adds r0, r4, #0
	bl sub_08023774
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023810: .4byte 0x030013DC

	thumb_func_start sub_08023814
sub_08023814: @ 0x08023814
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0802382C
	ldr r0, _08023828 @ =0x0000014B
	bl sub_0806F5DC
	b _08023834
	.align 2, 0
_08023828: .4byte 0x0000014B
_0802382C:
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0806F5DC
_08023834:
	ldr r0, _08023850 @ =0x030013DC
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, r0, r1
	adds r0, #0x70
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08023724
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023850: .4byte 0x030013DC

	thumb_func_start sub_08023854
sub_08023854: @ 0x08023854
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r5, r0, #0
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0x31
	movs r2, #0x45
	bl sub_08009A70
	ldr r4, _08023908 @ =0x030013DC
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r6, _0802390C @ =0x080C5464
	ldr r0, _08023910 @ =0x080C5410
	mov r8, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0xb
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	str r7, [r1]
	movs r0, #2
	movs r1, #0x7f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0x31
	movs r2, #0x45
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0xd
	bl sub_08009ACC
	ldr r1, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x20
	adds r1, r1, r0
	str r7, [r1]
	ldrb r0, [r5]
	bl sub_08023774
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023908: .4byte 0x030013DC
_0802390C: .4byte 0x080C5464
_08023910: .4byte 0x080C5410

	thumb_func_start sub_08023914
sub_08023914: @ 0x08023914
	bx lr
	.align 2, 0

	thumb_func_start sub_08023918
sub_08023918: @ 0x08023918
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _08023940 @ =0x030013DC
	ldr r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r4, [r1]
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _08023936
	b _08023A9A
_08023936:
	lsls r0, r0, #2
	ldr r1, _08023944 @ =_08023948
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023940: .4byte 0x030013DC
_08023944: .4byte _08023948
_08023948: @ jump table
	.4byte _0802395C @ case 0
	.4byte _08023984 @ case 1
	.4byte _080239BC @ case 2
	.4byte _08023A04 @ case 3
	.4byte _08023A78 @ case 4
_0802395C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #0x45
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08009AFC
	bl sub_080241A0
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #1
	strb r0, [r5, #1]
	b _08023A9A
_08023984:
	movs r0, #6
	ldrsh r1, [r4, r0]
	ldr r2, _080239B8 @ =0x08084C58
	ldrh r0, [r5, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, #0x45
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08023A9A
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5, #1]
	b _08023A9A
	.align 2, 0
_080239B8: .4byte 0x08084C58
_080239BC:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08009AFC
	ldr r4, _080239E8 @ =0x030013DC
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	movs r1, #0
	bl sub_08009B40
	ldrb r0, [r5]
	cmp r0, #1
	bne _080239F0
	ldr r0, _080239EC @ =0x00000153
	bl sub_0806F5DC
	b _080239F6
	.align 2, 0
_080239E8: .4byte 0x030013DC
_080239EC: .4byte 0x00000153
_080239F0:
	ldr r0, _08023A00 @ =0x00000157
	bl sub_0806F5DC
_080239F6:
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #3
	strb r0, [r5, #1]
	b _08023A9A
	.align 2, 0
_08023A00: .4byte 0x00000157
_08023A04:
	ldr r0, _08023A68 @ =0x030013DC
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0x10]
	cmp r0, #3
	bne _08023A20
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08023A20
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009AFC
_08023A20:
	ldrh r0, [r5, #2]
	lsls r1, r0, #2
	ldr r0, _08023A6C @ =0x08084BA8
	adds r2, r1, r0
	ldrb r0, [r5]
	cmp r0, #1
	bne _08023A32
	ldr r0, _08023A70 @ =0x08084C18
	adds r2, r1, r0
_08023A32:
	ldrh r1, [r2]
	adds r1, #0x31
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #2]
	adds r2, #0x45
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldr r2, _08023A74 @ =0x08084BA4
	ldrb r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	blo _08023A9A
	movs r0, #4
	strb r0, [r5, #1]
	b _08023A9A
	.align 2, 0
_08023A68: .4byte 0x030013DC
_08023A6C: .4byte 0x08084BA8
_08023A70: .4byte 0x08084C18
_08023A74: .4byte 0x08084BA4
_08023A78:
	ldr r1, _08023AA0 @ =0x08084B8C
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #0x28
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08009AFC
	ldrb r0, [r5]
	bl sub_08023774
_08023A9A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023AA0: .4byte 0x08084B8C

	thumb_func_start sub_08023AA4
sub_08023AA4: @ 0x08023AA4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6, #1]
	cmp r7, #1
	beq _08023B78
	cmp r7, #1
	bgt _08023ABC
	cmp r7, #0
	beq _08023AC4
	b _08023C20
_08023ABC:
	cmp r7, #2
	bne _08023AC2
	b _08023BFC
_08023AC2:
	b _08023C20
_08023AC4:
	ldr r5, _08023B74 @ =0x030013DC
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r5]
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r0, #0x20
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, #0x18
	adds r1, r1, r2
	ldr r2, [r1]
	movs r3, #6
	ldrsh r1, [r2, r3]
	ldrh r2, [r2, #8]
	subs r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009BA0
	ldr r1, [r5]
	ldrb r3, [r6]
	lsls r2, r3, #2
	adds r0, r1, #0
	adds r0, #0x18
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, #0x6a
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #6
	ldrsh r1, [r0, r2]
	ldrh r2, [r0, #8]
	subs r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r4, [r1]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009B84
	movs r0, #1
	strb r0, [r6, #1]
	strh r7, [r6, #2]
	b _08023C20
	.align 2, 0
_08023B74: .4byte 0x030013DC
_08023B78:
	ldr r4, _08023BF4 @ =0x030013DC
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08023B96
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009A34
_08023B96:
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x24]
	ldr r2, _08023BF8 @ =0x08084C68
	ldrh r1, [r6, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08023C20
	movs r0, #0
	strh r0, [r6, #2]
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	bl sub_08009B9C
	movs r0, #2
	strb r0, [r6, #1]
	b _08023C20
	.align 2, 0
_08023BF4: .4byte 0x030013DC
_08023BF8: .4byte 0x08084C68
_08023BFC:
	ldr r0, _08023C28 @ =0x030013DC
	ldr r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08023C20
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009A34
	ldrb r0, [r6]
	bl sub_08023774
_08023C20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023C28: .4byte 0x030013DC

	thumb_func_start sub_08023C2C
sub_08023C2C: @ 0x08023C2C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r5, _08023C9C @ =0x030013DC
	ldr r3, [r5]
	ldrb r2, [r4]
	adds r0, r3, #0
	adds r0, #0x68
	adds r0, r0, r2
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #0x28
	adds r3, r3, r0
	ldr r0, [r3]
	ldrh r1, [r4, #2]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_08009A34
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _08023C94
	ldr r3, [r5]
	ldrb r2, [r4]
	adds r0, r3, #0
	adds r0, #0x68
	adds r0, r0, r2
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #0x28
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #1
	bl sub_08009A34
	ldrb r0, [r4]
	bl sub_08023774
_08023C94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023C9C: .4byte 0x030013DC

	thumb_func_start sub_08023CA0
sub_08023CA0: @ 0x08023CA0
	push {lr}
	bl sub_08007BD4
	ldr r1, _08023CBC @ =0x030013DC
	ldr r1, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08023CBC: .4byte 0x030013DC

	thumb_func_start sub_08023CC0
sub_08023CC0: @ 0x08023CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #2
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0xb0
	movs r2, #0x60
	bl sub_08009A70
	ldr r1, _08023E74 @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r4, _08023E78 @ =0x030013DC
	ldr r0, [r4]
	ldr r1, [r0, #0x54]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	ldr r1, _08023E7C @ =0x08084B54
	ldr r0, _08023E80 @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _08023E84 @ =0x08084B64
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x10]
	movs r0, #2
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x47
	movs r2, #0x60
	bl sub_08009A70
	ldr r1, _08023E88 @ =0x06010400
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	ldr r1, _08023E8C @ =0x080E18C0
	ldr r2, _08023E90 @ =0x080E18A4
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x14]
	movs r0, #0
	mov sl, r0
	movs r1, #1
	mov sb, r1
_08023D7E:
	movs r2, #0
	mov r8, r2
	ldr r7, _08023E94 @ =0x08084B76
	add r7, sl
	ldr r6, _08023E98 @ =0x08084B74
	add r6, sl
	mov r4, sl
_08023D8C:
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #0
	ldrsh r2, [r7, r0]
	adds r0, r5, #0
	bl sub_08009A70
	ldr r1, _08023E78 @ =0x030013DC
	ldr r0, [r1]
	ldr r1, [r0, #0x44]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08023E9C @ =0x080C5464
	ldr r2, _08023EA0 @ =0x080C5410
	movs r3, #0xa
	bl sub_08009ACC
	ldr r2, _08023E78 @ =0x030013DC
	ldr r0, [r2]
	adds r0, #0x28
	adds r0, r0, r4
	str r5, [r0]
	adds r7, #4
	adds r6, #4
	adds r4, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #2
	ble _08023D8C
	movs r2, #0xc
	add sl, r2
	subs r0, #2
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bge _08023D7E
	movs r2, #0
	mov sb, r2
	ldr r4, _08023E78 @ =0x030013DC
	ldr r6, _08023EA4 @ =0x080B8664
_08023DFA:
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x54
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x4c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r0, _08023EA8 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r0, r2, r6
	ldr r1, [r0]
	ldr r0, _08023EAC @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #0x24]
	adds r0, r5, #0
	movs r3, #0x12
	bl sub_08009ACC
	ldr r0, [r4]
	mov r2, sb
	lsls r1, r2, #2
	adds r0, #0x40
	adds r0, r0, r1
	str r5, [r0]
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0
	ble _08023DFA
	ldr r0, _08023E78 @ =0x030013DC
	ldr r0, [r0]
	movs r2, #4
	ldrsh r0, [r0, r2]
	ldr r1, _08023EB0 @ =sub_08023EB4
	bl sub_08007B84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023E74: .4byte 0x06010000
_08023E78: .4byte 0x030013DC
_08023E7C: .4byte 0x08084B54
_08023E80: .4byte 0x03004488
_08023E84: .4byte 0x08084B64
_08023E88: .4byte 0x06010400
_08023E8C: .4byte 0x080E18C0
_08023E90: .4byte 0x080E18A4
_08023E94: .4byte 0x08084B76
_08023E98: .4byte 0x08084B74
_08023E9C: .4byte 0x080C5464
_08023EA0: .4byte 0x080C5410
_08023EA4: .4byte 0x080B8664
_08023EA8: .4byte 0x03004400
_08023EAC: .4byte 0x080B8660
_08023EB0: .4byte sub_08023EB4

	thumb_func_start sub_08023EB4
sub_08023EB4: @ 0x08023EB4
	bx lr
	.align 2, 0

	thumb_func_start sub_08023EB8
sub_08023EB8: @ 0x08023EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08023F2C @ =0x030013DC
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	bl sub_08009A00
	movs r6, #0
	movs r7, #0
	mov r8, r4
_08023ED6:
	adds r4, r7, #0
	movs r5, #2
_08023EDA:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08023EDA
	adds r7, #0xc
	adds r6, #1
	cmp r6, #1
	ble _08023ED6
	movs r6, #0
	ldr r4, _08023F2C @ =0x030013DC
_08023EFC:
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	lsls r1, r6, #1
	adds r0, #6
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r6, #1
	cmp r6, #0
	ble _08023EFC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023F2C: .4byte 0x030013DC

	thumb_func_start sub_08023F30
sub_08023F30: @ 0x08023F30
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _08023F78 @ =0x030013DC
_08023F38:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x42
	str r1, [sp]
	movs r1, #0x12
	movs r2, #0x54
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	lsls r2, r5, #1
	adds r1, #6
	adds r1, r1, r2
	strh r0, [r1]
	adds r5, #1
	cmp r5, #0
	ble _08023F38
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023F78: .4byte 0x030013DC

	thumb_func_start sub_08023F7C
sub_08023F7C: @ 0x08023F7C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08023FA0 @ =0x030013DC
_08023F82:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #0
	ble _08023F82
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023FA0: .4byte 0x030013DC

	thumb_func_start sub_08023FA4
sub_08023FA4: @ 0x08023FA4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08023FB8
	cmp r0, #1
	beq _08024034
	b _0802409E
_08023FB8:
	movs r6, #0
	adds r7, r5, #4
_08023FBC:
	movs r0, #2
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0xb0
	movs r2, #0x60
	bl sub_08009A70
	ldr r0, _08024024 @ =0x030013DC
	ldr r0, [r0]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _08024028 @ =0x080CAD0C
	ldr r2, _0802402C @ =0x080CACE0
	movs r3, #0
	bl sub_08009ACC
	cmp r6, #0
	beq _08024012
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r4, #0x24]
	ldr r1, _08024030 @ =0xFFFFFF00
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08009E84
_08024012:
	stm r7!, {r4}
	adds r6, #1
	cmp r6, #1
	ble _08023FBC
	movs r1, #0
	movs r0, #1
	strb r0, [r5]
	strb r1, [r5, #1]
	b _0802409E
	.align 2, 0
_08024024: .4byte 0x030013DC
_08024028: .4byte 0x080CAD0C
_0802402C: .4byte 0x080CACE0
_08024030: .4byte 0xFFFFFF00
_08024034:
	ldr r0, [r5, #4]
	ldrb r2, [r5, #1]
	lsrs r2, r2, #2
	movs r1, #0xb0
	subs r1, r1, r2
	movs r2, #0x60
	bl sub_08009A70
	ldr r0, [r5, #8]
	ldrb r1, [r5, #1]
	lsrs r1, r1, #2
	adds r1, #0xb0
	movs r2, #0x60
	bl sub_08009A70
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	ldr r2, [r5, #4]
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802408C
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08024084
	ldr r0, [r1, #0x24]
	bl sub_08009E54
	ldr r0, [r5, #4]
	bl sub_08009A00
	ldr r0, [r5, #8]
	bl sub_08009A00
	bl sub_08007A64
	b _0802409E
_08024084:
	adds r0, r2, #0
	movs r1, #0
	bl sub_08009A34
_0802408C:
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802409E
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009A34
_0802409E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080240A4
sub_080240A4: @ 0x080240A4
	push {lr}
	ldr r0, _080240C0 @ =sub_08023FA4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080240C0: .4byte sub_08023FA4

	thumb_func_start sub_080240C4
sub_080240C4: @ 0x080240C4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080240D8
	cmp r0, #1
	beq _08024154
	b _0802419A
_080240D8:
	movs r6, #0
	adds r7, r5, #4
_080240DC:
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #0x4d
	bl sub_08009A70
	ldr r0, _08024144 @ =0x030013DC
	ldr r0, [r0]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _08024148 @ =0x080CAD0C
	ldr r2, _0802414C @ =0x080CACE0
	movs r3, #0
	bl sub_08009ACC
	cmp r6, #0
	beq _08024132
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r4, #0x24]
	ldr r1, _08024150 @ =0xFFFFFF00
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08009E84
_08024132:
	stm r7!, {r4}
	adds r6, #1
	cmp r6, #1
	ble _080240DC
	movs r1, #0
	movs r0, #1
	strb r0, [r5]
	strb r1, [r5, #1]
	b _0802419A
	.align 2, 0
_08024144: .4byte 0x030013DC
_08024148: .4byte 0x080CAD0C
_0802414C: .4byte 0x080CACE0
_08024150: .4byte 0xFFFFFF00
_08024154:
	ldr r2, [r5, #4]
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08024188
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08024180
	ldr r0, [r1, #0x24]
	bl sub_08009E54
	ldr r0, [r5, #4]
	bl sub_08009A00
	ldr r0, [r5, #8]
	bl sub_08009A00
	bl sub_08007A64
	b _0802419A
_08024180:
	adds r0, r2, #0
	movs r1, #0
	bl sub_08009A34
_08024188:
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802419A
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009A34
_0802419A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080241A0
sub_080241A0: @ 0x080241A0
	push {lr}
	ldr r0, _080241BC @ =sub_080240C4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080241BC: .4byte sub_080240C4

	thumb_func_start sub_080241C0
sub_080241C0: @ 0x080241C0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _080242FC @ =0x030013E0
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r4]
	movs r2, #0x86
	lsls r2, r2, #1
	movs r0, #0
	bl sub_08007EFC
	movs r4, #0
	ldr r5, _08024300 @ =0x08084FA0
_080241DC:
	ldr r0, [r5]
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r7, _080242FC @ =0x030013E0
	ldr r1, [r7]
	lsls r2, r4, #1
	adds r1, r1, r2
	strh r0, [r1]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08024C90
	adds r4, #1
	cmp r4, #9
	ble _080241DC
	ldr r0, _08024304 @ =0x08084FBC
	ldr r0, [r0]
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	movs r6, #0
	strh r0, [r1, #0x14]
	movs r2, #0x14
	ldrsh r0, [r1, r2]
	ldr r1, _08024308 @ =sub_080256D4
	bl sub_08007BA0
	ldr r0, _0802430C @ =sub_080256F8
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #0x16]
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	ldr r1, _08024310 @ =sub_08025798
	bl sub_08007BA0
	ldr r0, _08024314 @ =sub_08025B44
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #0x1c]
	ldr r4, _08024318 @ =0x06010000
	ldr r0, _0802431C @ =0x080C6A9C
	ldr r1, _08024320 @ =0x05000200
	bl sub_08008308
	ldr r0, [r7]
	adds r0, #0xd4
	str r4, [r0]
	ldr r0, _08024324 @ =0x080C6C54
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _08024328 @ =0x080CAC38
	ldr r1, _0802432C @ =0x05000220
	bl sub_08008308
	ldr r0, [r7]
	adds r0, #0xd8
	str r4, [r0]
	ldr r0, _08024330 @ =0x080CAD1C
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08024334 @ =0x080B85E8
	ldr r5, _08024338 @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802433C @ =0x05000240
	bl sub_08008308
	ldr r0, [r7]
	adds r0, #0xdc
	str r4, [r0]
	ldr r1, _08024340 @ =0x080B8624
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _08024344 @ =0x080C5AE4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _08024348 @ =0x080C5B08
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0802434C @ =0x080C6794
	ldr r1, _08024350 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	str r6, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1e
	bl sub_08000268
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1d
	movs r2, #1
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080242FC: .4byte 0x030013E0
_08024300: .4byte 0x08084FA0
_08024304: .4byte 0x08084FBC
_08024308: .4byte sub_080256D4
_0802430C: .4byte sub_080256F8
_08024310: .4byte sub_08025798
_08024314: .4byte sub_08025B44
_08024318: .4byte 0x06010000
_0802431C: .4byte 0x080C6A9C
_08024320: .4byte 0x05000200
_08024324: .4byte 0x080C6C54
_08024328: .4byte 0x080CAC38
_0802432C: .4byte 0x05000220
_08024330: .4byte 0x080CAD1C
_08024334: .4byte 0x080B85E8
_08024338: .4byte 0x03004400
_0802433C: .4byte 0x05000240
_08024340: .4byte 0x080B8624
_08024344: .4byte 0x080C5AE4
_08024348: .4byte 0x080C5B08
_0802434C: .4byte 0x080C6794
_08024350: .4byte 0x0600F800

	thumb_func_start sub_08024354
sub_08024354: @ 0x08024354
	push {r4, lr}
	ldr r1, _08024378 @ =0x08084D40
	ldr r4, _0802437C @ =0x030013E0
	ldr r0, [r4]
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	adds r0, #0x20
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08024378: .4byte 0x08084D40
_0802437C: .4byte 0x030013E0

	thumb_func_start sub_08024380
sub_08024380: @ 0x08024380
	ldr r2, _08024398 @ =0x030013E0
	ldr r1, [r2]
	adds r1, #0x21
	movs r3, #0
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0x22
	strb r3, [r0]
	ldr r0, [r2]
	strh r3, [r0, #0x24]
	bx lr
	.align 2, 0
_08024398: .4byte 0x030013E0

	thumb_func_start sub_0802439C
sub_0802439C: @ 0x0802439C
	push {r4, r5, r6, lr}
	ldr r6, _080243B0 @ =0x030013E0
	ldr r0, [r6]
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _080243B4
	cmp r0, #1
	beq _080243FC
	b _08024414
	.align 2, 0
_080243B0: .4byte 0x030013E0
_080243B4:
	bl sub_08008174
	ldr r4, _080243F4 @ =0x030024E0
	ldr r0, _080243F8 @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x3d
	bl sub_0806F5DC
	ldr r0, [r6]
	adds r0, #0x22
	strb r5, [r0]
	b _08024414
	.align 2, 0
_080243F4: .4byte 0x030024E0
_080243F8: .4byte 0x00001F03
_080243FC:
	bl sub_080003D0
	cmp r0, #0
	beq _08024414
	ldr r2, _0802441C @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08024420 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_08024380
_08024414:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802441C: .4byte 0x030024E0
_08024420: .4byte 0x0000FDFF

	thumb_func_start sub_08024424
sub_08024424: @ 0x08024424
	push {r4, r5, r6, r7, lr}
	movs r0, #0xa
	bl sub_0800B828
	ldr r2, _08024494 @ =0x030013E0
	ldr r1, [r2]
	adds r1, #0xe2
	strb r0, [r1]
	movs r5, #1
	adds r7, r2, #0
_08024438:
	ldr r2, _08024494 @ =0x030013E0
	ldr r0, [r2]
	adds r0, #0xf4
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	movs r4, #0
_0802444E:
	ldr r3, [r7]
	adds r1, r3, #0
	adds r1, #0xe2
	ldrb r0, [r1]
	cmp r4, r0
	beq _080244B0
	cmp r5, #1
	ble _08024468
	adds r0, r3, #0
	adds r0, #0xe3
	ldrb r0, [r0]
	cmp r4, r0
	beq _080244B0
_08024468:
	cmp r5, #2
	ble _08024476
	adds r0, r3, #0
	adds r0, #0xe4
	ldrb r0, [r0]
	cmp r4, r0
	beq _080244B0
_08024476:
	subs r0, r5, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r4, r0
	ble _08024498
	adds r2, r3, #0
	adds r2, #0xf4
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r3, #0
	adds r0, #0xf5
	b _080244AC
	.align 2, 0
_08024494: .4byte 0x030013E0
_08024498:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080244DC @ =0x00000101
	adds r0, r3, r2
_080244AC:
	adds r0, r0, r1
	strb r4, [r0]
_080244B0:
	adds r4, #1
	cmp r4, #9
	ble _0802444E
	ldr r4, _080244E0 @ =0x030013E0
	ldr r0, [r4]
	adds r3, r0, #0
	adds r3, #0xf4
	movs r6, #0x80
	lsls r6, r6, #1
	adds r2, r0, r6
	ldrb r1, [r3]
	ldrb r0, [r2]
	cmp r1, r0
	bne _08024504
	movs r0, #2
	bl sub_0800B828
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080244E4
	ldr r0, [r4]
	b _0802458A
	.align 2, 0
_080244DC: .4byte 0x00000101
_080244E0: .4byte 0x030013E0
_080244E4:
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	bl sub_0800B828
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0xe2
	adds r2, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08024500 @ =0x00000101
	adds r1, r1, r3
	b _080245A0
	.align 2, 0
_08024500: .4byte 0x00000101
_08024504:
	cmp r1, r0
	bls _0802454C
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [r4]
	adds r1, r3, #0
	adds r1, #0xf4
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	bge _0802452E
	adds r0, r2, #0
	b _0802458E
_0802452E:
	adds r0, r3, r6
	ldrb r0, [r0]
	bl sub_0800B828
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0xe2
	adds r2, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08024548 @ =0x00000101
	adds r1, r1, r3
	b _080245A0
	.align 2, 0
_08024548: .4byte 0x00000101
_0802454C:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [r4]
	adds r1, r3, r6
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	bge _08024588
	adds r0, r2, #0
	bl sub_0800B828
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0xe2
	adds r2, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08024584 @ =0x00000101
	adds r1, r1, r3
	b _080245A0
	.align 2, 0
_08024584: .4byte 0x00000101
_08024588:
	adds r0, r3, #0
_0802458A:
	adds r0, #0xf4
	ldrb r0, [r0]
_0802458E:
	bl sub_0800B828
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0xe2
	adds r2, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0xf5
_080245A0:
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	adds r5, #1
	cmp r5, #3
	bgt _080245AE
	b _08024438
_080245AE:
	movs r4, #0
	movs r5, #0
	ldr r3, _08024620 @ =0x030013E0
_080245B4:
	ldr r1, [r3]
	adds r2, r1, #0
	adds r2, #0xe2
	ldrb r0, [r2]
	cmp r5, r0
	beq _080245E6
	adds r0, r1, #0
	adds r0, #0xe3
	ldrb r0, [r0]
	cmp r5, r0
	beq _080245E6
	adds r0, r1, #0
	adds r0, #0xe4
	ldrb r0, [r0]
	cmp r5, r0
	beq _080245E6
	adds r0, r1, #0
	adds r0, #0xe5
	ldrb r0, [r0]
	cmp r5, r0
	beq _080245E6
	adds r0, r4, #4
	adds r0, r2, r0
	strb r5, [r0]
	adds r4, #1
_080245E6:
	adds r5, #1
	cmp r5, #9
	ble _080245B4
	movs r5, #4
	ldr r6, _08024620 @ =0x030013E0
_080245F0:
	movs r0, #6
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #4
	ldr r0, [r6]
	adds r0, #0xe2
	adds r1, r0, r4
	ldrb r2, [r1]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, #0xe2
	adds r0, r0, r5
	strb r2, [r0]
	adds r5, #1
	cmp r5, #5
	ble _080245F0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024620: .4byte 0x030013E0

	thumb_func_start sub_08024624
sub_08024624: @ 0x08024624
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r4, _0802465C @ =0x030013E0
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x28
_08024634:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802463C
	b _08024816
_0802463C:
	adds r1, #0xc
	adds r5, #1
	cmp r5, #9
	ble _08024634
	ldr r0, [r4]
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _08024650
	b _08024816
_08024650:
	lsls r0, r0, #2
	ldr r1, _08024660 @ =_08024664
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802465C: .4byte 0x030013E0
_08024660: .4byte _08024664
_08024664: @ jump table
	.4byte _080246A0 @ case 0
	.4byte _08024738 @ case 1
	.4byte _08024738 @ case 2
	.4byte _08024738 @ case 3
	.4byte _08024738 @ case 4
	.4byte _08024738 @ case 5
	.4byte _08024738 @ case 6
	.4byte _08024738 @ case 7
	.4byte _08024738 @ case 8
	.4byte _08024738 @ case 9
	.4byte _08024738 @ case 10
	.4byte _08024780 @ case 11
	.4byte _080247B0 @ case 12
	.4byte _080247C4 @ case 13
	.4byte _080247E0 @ case 14
_080246A0:
	bl sub_08024424
	movs r5, #0
	ldr r0, _0802472C @ =0x030013E0
	mov r8, r0
	movs r7, #0x80
	lsls r7, r7, #0x18
	movs r6, #0x80
	lsls r6, r6, #0x12
_080246B2:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08024CFC
	mov r1, r8
	ldr r0, [r1]
	lsls r4, r5, #2
	adds r0, #0xa0
	adds r0, r0, r4
	ldr r0, [r0]
	lsrs r1, r6, #0x18
	bl sub_08009AFC
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r4
	ldr r0, [r0]
	lsrs r2, r7, #0x18
	movs r1, #3
	bl sub_08009A0C
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r7, r7, r0
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #9
	ble _080246B2
	ldr r1, _08024730 @ =0x030024E0
	adds r3, r1, #0
	adds r3, #0x4a
	movs r2, #0
	movs r0, #0
	strh r0, [r3]
	adds r1, #0x4e
	movs r0, #0x10
	strb r0, [r1]
	ldr r4, _0802472C @ =0x030013E0
	ldr r0, [r4]
	adds r0, #0xe0
	strb r2, [r0]
	ldr r0, [r4]
	adds r0, #0xe1
	strb r2, [r0]
	bl sub_08025A0C
	bl sub_08005934
	ldr r0, _08024734 @ =0x08084D00
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #1
	strb r1, [r0]
	b _08024816
	.align 2, 0
_0802472C: .4byte 0x030013E0
_08024730: .4byte 0x030024E0
_08024734: .4byte 0x08084D00
_08024738:
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r0, [r0]
	subs r5, r0, #1
	cmp r5, #0
	beq _08024758
	subs r0, #2
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r1, #0x29
	ldrb r0, [r1]
	cmp r0, #0
	bne _08024816
_08024758:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080259BC
	cmp r5, #9
	bne _08024774
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #0xb
	strb r1, [r0]
	movs r0, #0x1e
	bl sub_08002B98
	b _08024816
_08024774:
	ldr r1, [r4]
	adds r1, #0x22
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08024816
_08024780:
	ldr r0, [r4]
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024816
	movs r5, #0
_0802478C:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08024D48
	adds r5, #1
	cmp r5, #9
	ble _0802478C
	ldr r0, _080247AC @ =0x030013E0
	ldr r0, [r0]
	adds r0, #0x22
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #0x3c
	bl sub_08002B98
	b _08024816
	.align 2, 0
_080247AC: .4byte 0x030013E0
_080247B0:
	ldr r0, [r4]
	adds r0, #0xe0
	ldrb r0, [r0]
	bl sub_08024DF0
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #0xd
	strb r1, [r0]
	b _08024816
_080247C4:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	adds r1, #0xe2
	adds r1, r1, r0
	ldrb r1, [r1]
	bl sub_08025964
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #0xe
	strb r1, [r0]
	b _08024816
_080247E0:
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0xe0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, #0x29
	ldrb r5, [r0]
	cmp r5, #0
	bne _08024816
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #3
	movs r2, #0x80
	bl sub_08009A0C
	ldr r0, [r4]
	adds r0, #0xec
	strb r5, [r0]
	movs r0, #2
	bl sub_08024380
_08024816:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08024820
sub_08024820: @ 0x08024820
	push {r4, r5, lr}
	movs r2, #0
	ldr r4, _0802485C @ =0x030013E0
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x28
_0802482C:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08024834
	b _08024B44
_08024834:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0802483C
	b _08024B44
_0802483C:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #9
	ble _0802482C
	ldr r0, [r4]
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #8
	bls _08024850
	b _08024B44
_08024850:
	lsls r0, r0, #2
	ldr r1, _08024860 @ =_08024864
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802485C: .4byte 0x030013E0
_08024860: .4byte _08024864
_08024864: @ jump table
	.4byte _08024888 @ case 0
	.4byte _080248A4 @ case 1
	.4byte _080248E0 @ case 2
	.4byte _08024992 @ case 3
	.4byte _080249A4 @ case 4
	.4byte _080249DE @ case 5
	.4byte _08024A84 @ case 6
	.4byte _08024AE0 @ case 7
	.4byte _08024B32 @ case 8
_08024888:
	ldr r1, [r4]
	adds r1, #0xe0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0xe0
	ldrb r0, [r0]
	bl sub_08024DB8
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #1
	b _08024B42
_080248A4:
	ldr r1, [r4]
	adds r1, #0xf1
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	beq _080248C6
	b _08024B44
_080248C6:
	bl sub_08005934
	ldr r0, _080248DC @ =0x08084D2C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	b _08024B44
	.align 2, 0
_080248DC: .4byte 0x08084D2C
_080248E0:
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080248EE
	b _08024B44
_080248EE:
	ldr r2, _08024914 @ =0x030024B0
	ldrh r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08024918
	adds r0, r3, #0
	adds r0, #0xf1
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08024918
	adds r1, r3, #0
	adds r1, #0x22
	movs r0, #3
	strb r0, [r1]
	b _08024B44
	.align 2, 0
_08024914: .4byte 0x030024B0
_08024918:
	ldrh r1, [r2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08024924
	b _08024B44
_08024924:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024954
	ldr r1, [r4]
	adds r3, r1, #0
	adds r3, #0xec
	ldrb r0, [r3]
	cmp r0, #1
	beq _08024946
	adds r0, r1, #0
	adds r0, #0xf1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08024954
_08024946:
	movs r0, #0
	strb r0, [r3]
	ldr r1, [r4]
	adds r1, #0xf1
	ldrb r0, [r1]
	movs r2, #1
	b _08024988
_08024954:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024960
	b _08024B44
_08024960:
	ldr r1, [r4]
	adds r3, r1, #0
	adds r3, #0xec
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802497C
	adds r0, r1, #0
	adds r0, #0xf1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802497C
	b _08024B44
_0802497C:
	movs r2, #1
	movs r0, #1
	strb r0, [r3]
	ldr r1, [r4]
	adds r1, #0xf1
	ldrb r0, [r1]
_08024988:
	orrs r0, r2
	strb r0, [r1]
	bl sub_08025AE8
	b _08024B44
_08024992:
	bl sub_08025B04
	ldr r0, _080249A0 @ =0x030013E0
	ldr r0, [r0]
	adds r0, #0x22
	movs r1, #4
	b _08024B42
	.align 2, 0
_080249A0: .4byte 0x030013E0
_080249A4:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	adds r1, #0xe2
	adds r1, r1, r0
	ldrb r1, [r1]
	bl sub_08025964
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0xa0
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #3
	movs r2, #0x80
	bl sub_08009A0C
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #5
	strb r1, [r0]
	movs r0, #0x3c
	bl sub_08002B98
	b _08024B44
_080249DE:
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0xe2
	adds r2, r1, r0
	subs r0, #1
	adds r1, r1, r0
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bls _08024A02
	adds r0, r3, #0
	adds r0, #0xec
	ldrb r0, [r0]
	cmp r0, #1
	beq _08024A10
_08024A02:
	cmp r2, r1
	bhs _08024A2C
	adds r0, r3, #0
	adds r0, #0xec
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024A2C
_08024A10:
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0806F5DC
	ldr r0, _08024A28 @ =0x030013E0
	ldr r1, [r0]
	adds r1, #0xe1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08024B0C
	.align 2, 0
_08024A28: .4byte 0x030013E0
_08024A2C:
	ldr r0, [r4]
	adds r0, #0x22
	movs r2, #0
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r4]
	strh r2, [r0, #0x24]
	ldr r2, _08024A74 @ =0x030024E0
	adds r1, r2, #0
	adds r1, #0x4a
	movs r0, #0x90
	strh r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08024A78 @ =0x000088A8
	strh r0, [r2, #0x3c]
	subs r1, #0xe
	ldr r0, _08024A7C @ =0x00002048
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #2
	movs r0, #0xdf
	strb r0, [r1]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08024A80 @ =0x0000014B
	bl sub_0806F5DC
	b _08024B44
	.align 2, 0
_08024A74: .4byte 0x030024E0
_08024A78: .4byte 0x000088A8
_08024A7C: .4byte 0x00002048
_08024A80: .4byte 0x0000014B
_08024A84:
	ldr r0, [r4]
	ldrh r1, [r0, #0x24]
	adds r1, #1
	strh r1, [r0, #0x24]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x12
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08024AA8
	ldr r1, _08024AA4 @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4e
	movs r0, #0
	b _08024AB0
	.align 2, 0
_08024AA4: .4byte 0x030024E0
_08024AA8:
	ldr r1, _08024AD8 @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4e
	movs r0, #8
_08024AB0:
	strb r0, [r2]
	adds r3, r1, #0
	ldr r1, [r4]
	ldrh r0, [r1, #0x24]
	cmp r0, #0x3f
	bls _08024B44
	adds r1, #0x22
	movs r2, #0
	movs r0, #7
	strb r0, [r1]
	ldr r0, [r4]
	strh r2, [r0, #0x24]
	adds r0, r3, #0
	adds r0, #0x4a
	strh r2, [r0]
	ldrh r1, [r3]
	ldr r0, _08024ADC @ =0x0000DFFF
	ands r0, r1
	strh r0, [r3]
	b _08024B44
	.align 2, 0
_08024AD8: .4byte 0x030024E0
_08024ADC: .4byte 0x0000DFFF
_08024AE0:
	bl sub_08005934
	ldr r1, _08024B18 @ =0x08084D34
	ldr r4, _08024B1C @ =0x030013E0
	ldr r0, [r4]
	adds r0, #0xe0
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	adds r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #2
	bls _08024B20
_08024B0C:
	bl sub_08025A68
	movs r0, #3
	bl sub_08024380
	b _08024B44
	.align 2, 0
_08024B18: .4byte 0x08084D34
_08024B1C: .4byte 0x030013E0
_08024B20:
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08024E60
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #8
	b _08024B42
_08024B32:
	ldr r0, [r4]
	adds r0, #0xe0
	ldrb r0, [r0]
	bl sub_08024E28
	ldr r0, [r4]
	adds r0, #0x22
	movs r1, #0
_08024B42:
	strb r1, [r0]
_08024B44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024B4C
sub_08024B4C: @ 0x08024B4C
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08024B68 @ =0x030013E0
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x22
	ldrb r1, [r1]
	cmp r1, #1
	beq _08024BEE
	cmp r1, #1
	bgt _08024B6C
	cmp r1, #0
	beq _08024B72
	b _08024C36
	.align 2, 0
_08024B68: .4byte 0x030013E0
_08024B6C:
	cmp r1, #2
	beq _08024C28
	b _08024C36
_08024B72:
	adds r0, #0xe1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024BE0
	ldr r4, _08024BCC @ =0x030024E0
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #0xfe
	strh r0, [r1]
	subs r1, #6
	movs r0, #0x1f
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08024BD0 @ =0x00000828
	strh r0, [r4, #0x3c]
	subs r1, #6
	ldr r0, _08024BD4 @ =0x00007898
	strh r0, [r1]
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r1, r4, #0
	adds r1, #0x4e
	movs r0, #8
	strb r0, [r1]
	bl sub_08005934
	ldr r0, _08024BD8 @ =0x08084D24
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldrh r1, [r4]
	ldr r0, _08024BDC @ =0x0000DFFF
	ands r0, r1
	strh r0, [r4]
	b _08024BE4
	.align 2, 0
_08024BCC: .4byte 0x030024E0
_08024BD0: .4byte 0x00000828
_08024BD4: .4byte 0x00007898
_08024BD8: .4byte 0x08084D24
_08024BDC: .4byte 0x0000DFFF
_08024BE0:
	bl sub_080193B4
_08024BE4:
	ldr r0, [r5]
	adds r0, #0x22
	movs r1, #1
	strb r1, [r0]
	b _08024C36
_08024BEE:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1e
	bl sub_0800031C
	ldr r2, _08024C20 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r5]
	adds r0, #0x22
	movs r1, #2
	strb r1, [r0]
	ldr r0, _08024C24 @ =0x030056F0
	movs r1, #4
	bl sub_0806F774
	b _08024C36
	.align 2, 0
_08024C20: .4byte 0x030024E0
_08024C24: .4byte 0x030056F0
_08024C28:
	bl sub_080003D0
	cmp r0, #0
	beq _08024C36
	movs r0, #4
	bl sub_08024380
_08024C36:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024C40
sub_08024C40: @ 0x08024C40
	push {r4, r5, lr}
	bl sub_080058A4
	movs r4, #0
	ldr r5, _08024C8C @ =0x030013E0
_08024C4A:
	ldr r0, [r5]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r4, #1
	cmp r4, #9
	ble _08024C4A
	ldr r4, _08024C8C @ =0x030013E0
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08024C8C: .4byte 0x030013E0

	thumb_func_start sub_08024C90
sub_08024C90: @ 0x08024C90
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08024CB0 @ =0x030013E0
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024CB0: .4byte 0x030013E0

	thumb_func_start sub_08024CB4
sub_08024CB4: @ 0x08024CB4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08024CF4 @ =0x030013E0
	ldr r1, [r6]
	lsrs r0, r0, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08024CF8 @ =0x08084FA0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r5, #1]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024CF4: .4byte 0x030013E0
_08024CF8: .4byte 0x08084FA0

	thumb_func_start sub_08024CFC
sub_08024CFC: @ 0x08024CFC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08024D1C @ =0x030013E0
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, #0x28
	movs r1, #0
	strb r1, [r2]
	bl sub_08024CB4
	pop {r0}
	bx r0
	.align 2, 0
_08024D1C: .4byte 0x030013E0

	thumb_func_start sub_08024D20
sub_08024D20: @ 0x08024D20
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08024D44 @ =0x030013E0
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, #0x28
	movs r1, #0
	strb r1, [r2]
	movs r1, #1
	bl sub_08024CB4
	pop {r0}
	bx r0
	.align 2, 0
_08024D44: .4byte 0x030013E0

	thumb_func_start sub_08024D48
sub_08024D48: @ 0x08024D48
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08024DAC @ =0x030013E0
	mov r8, r0
	ldr r1, [r0]
	lsls r6, r5, #1
	adds r4, r6, r5
	lsls r4, r4, #2
	adds r1, r1, r4
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08024DB0 @ =0x00000149
	bl sub_0806F5DC
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r1, [r0]
	adds r2, #0x30
	adds r2, r2, r4
	ldr r2, [r2]
	ldr r0, _08024DB4 @ =0x08084D8C
	adds r6, r6, r0
	ldrh r3, [r6]
	adds r3, #0xc4
	movs r0, #0x20
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_08024E98
	adds r0, r5, #0
	movs r1, #2
	bl sub_08024CB4
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024DAC: .4byte 0x030013E0
_08024DB0: .4byte 0x00000149
_08024DB4: .4byte 0x08084D8C

	thumb_func_start sub_08024DB8
sub_08024DB8: @ 0x08024DB8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08024DE8 @ =0x030013E0
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08024DEC @ =0x00000149
	bl sub_0806F5DC
	adds r0, r4, #0
	movs r1, #3
	bl sub_08024CB4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024DE8: .4byte 0x030013E0
_08024DEC: .4byte 0x00000149

	thumb_func_start sub_08024DF0
sub_08024DF0: @ 0x08024DF0
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08024E20 @ =0x030013E0
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08024E24 @ =0x00000149
	bl sub_0806F5DC
	adds r0, r4, #0
	movs r1, #4
	bl sub_08024CB4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024E20: .4byte 0x030013E0
_08024E24: .4byte 0x00000149

	thumb_func_start sub_08024E28
sub_08024E28: @ 0x08024E28
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08024E58 @ =0x030013E0
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08024E5C @ =0x00000149
	bl sub_0806F5DC
	adds r0, r4, #0
	movs r1, #5
	bl sub_08024CB4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024E58: .4byte 0x030013E0
_08024E5C: .4byte 0x00000149

	thumb_func_start sub_08024E60
sub_08024E60: @ 0x08024E60
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08024E90 @ =0x030013E0
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08024E94 @ =0x00000149
	bl sub_0806F5DC
	adds r0, r4, #0
	movs r1, #6
	bl sub_08024CB4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024E90: .4byte 0x030013E0
_08024E94: .4byte 0x00000149

	thumb_func_start sub_08024E98
sub_08024E98: @ 0x08024E98
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	mov sb, r1
	mov sl, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r8, r1
	lsls r0, r0, #0x18
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r1, _08024F08 @ =0x030013E0
	ldr r1, [r1]
	lsrs r0, r0, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r4, r0, #0
	mov r0, sb
	str r0, [r4, #4]
	mov r1, sl
	str r1, [r4, #8]
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	subs r5, r5, r0
	subs r6, r6, r1
	adds r0, r5, #0
	muls r0, r5, r0
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	bl sub_08070FCC
	movs r1, #0
	strh r0, [r4, #0x14]
	strh r1, [r4, #2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024F08: .4byte 0x030013E0

	thumb_func_start sub_08024F0C
sub_08024F0C: @ 0x08024F0C
	push {r4, r5, lr}
	bl sub_08007BD4
	ldr r1, _08024F50 @ =0x030013E0
	ldr r5, [r1]
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r3, r5, #0
	adds r3, #0x2c
	adds r3, r3, r1
	ldr r4, _08024F54 @ =0x08084D54
	lsls r2, r2, #2
	adds r2, r2, r4
	ldrh r1, [r2]
	str r1, [r3]
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r5, #0x30
	adds r5, r5, r1
	lsls r2, r2, #2
	adds r4, #2
	adds r2, r2, r4
	ldrh r1, [r2]
	str r1, [r5]
	ldrb r0, [r0]
	bl sub_08024D20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08024F50: .4byte 0x030013E0
_08024F54: .4byte 0x08084D54

	thumb_func_start sub_08024F58
sub_08024F58: @ 0x08024F58
	bx lr
	.align 2, 0

	thumb_func_start sub_08024F5C
sub_08024F5C: @ 0x08024F5C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	movs r6, #0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _08024F76
	ldrh r2, [r4, #2]
	adds r0, r2, #1
	ldrh r3, [r4, #0x14]
	cmp r0, r3
	ble _08024F7E
_08024F76:
	ldr r5, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r6, #1
	b _08024FA8
_08024F7E:
	subs r1, r3, r2
	ldr r0, [r4, #4]
	muls r0, r1, r0
	ldr r1, [r4, #0xc]
	muls r1, r2, r1
	adds r0, r0, r1
	adds r1, r3, #0
	bl Div
	adds r5, r0, #0
	ldrh r1, [r4, #0x14]
	ldrh r3, [r4, #2]
	subs r2, r1, r3
	ldr r0, [r4, #8]
	muls r0, r2, r0
	ldr r2, [r4, #0x10]
	muls r2, r3, r2
	adds r0, r0, r2
	bl Div
	adds r3, r0, #0
_08024FA8:
	ldr r0, _08024FE0 @ =0x030013E0
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r0, r1
	str r5, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x30
	adds r2, r2, r0
	str r3, [r2]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	cmp r6, #0
	beq _08024FDA
	ldrb r0, [r4]
	bl sub_08024D20
_08024FDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024FE0: .4byte 0x030013E0

	thumb_func_start sub_08024FE4
sub_08024FE4: @ 0x08024FE4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6, #1]
	cmp r7, #1
	beq _08025090
	cmp r7, #1
	bgt _08024FFC
	cmp r7, #0
	beq _08025004
	b _08025156
_08024FFC:
	cmp r7, #2
	bne _08025002
	b _08025150
_08025002:
	b _08025156
_08025004:
	movs r0, #3
	movs r1, #0x81
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0xd4
	movs r2, #0x34
	bl sub_08009A70
	ldr r5, _08025084 @ =0x030013E0
	ldr r0, [r5]
	adds r0, #0xd4
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08025088 @ =0x080C6C18
	ldr r2, _0802508C @ =0x080C6BDC
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	str r4, [r6, #0x18]
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0xa0
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #3
	movs r2, #0x80
	bl sub_08009A0C
	ldr r2, [r5]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	movs r0, #0xc4
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x30
	adds r2, r2, r0
	movs r0, #0x20
	str r0, [r2]
	strh r7, [r6, #2]
	movs r0, #1
	strb r0, [r6, #1]
	b _08025156
	.align 2, 0
_08025084: .4byte 0x030013E0
_08025088: .4byte 0x080C6C18
_0802508C: .4byte 0x080C6BDC
_08025090:
	ldr r7, _08025148 @ =0x030013E0
	ldr r3, [r7]
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r4, r3, #0
	adds r4, #0x2c
	adds r1, r4, r1
	ldr r5, _0802514C @ =0x08084DA0
	ldrh r2, [r6, #2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0xc4
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #0x30
	adds r3, r3, r0
	ldrh r1, [r6, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r5, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r6, #0x18]
	ldrb r2, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r1, [r4]
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r6, #2]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r5, #4
	adds r2, r2, r5
	ldrh r2, [r2]
	adds r2, #0x34
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025156
	ldr r2, [r7]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	movs r0, #0x88
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x30
	adds r2, r2, r0
	movs r0, #0x20
	str r0, [r2]
	movs r0, #2
	strb r0, [r6, #1]
	ldr r0, [r6, #0x18]
	bl sub_08009A00
	movs r0, #0x14
	bl sub_08007AC0
	b _08025156
	.align 2, 0
_08025148: .4byte 0x030013E0
_0802514C: .4byte 0x08084DA0
_08025150:
	ldrb r0, [r6]
	bl sub_08024D20
_08025156:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802515C
sub_0802515C: @ 0x0802515C
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6, #1]
	cmp r7, #1
	beq _08025208
	cmp r7, #1
	bgt _08025174
	cmp r7, #0
	beq _0802517C
	b _080252CE
_08025174:
	cmp r7, #2
	bne _0802517A
	b _080252C8
_0802517A:
	b _080252CE
_0802517C:
	movs r0, #3
	movs r1, #0x81
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0xd4
	movs r2, #0x34
	bl sub_08009A70
	ldr r5, _080251FC @ =0x030013E0
	ldr r0, [r5]
	adds r0, #0xd4
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08025200 @ =0x080C6C18
	ldr r2, _08025204 @ =0x080C6BDC
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	str r4, [r6, #0x18]
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0xa0
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #3
	movs r2, #0x80
	bl sub_08009A0C
	ldr r2, [r5]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	movs r0, #0xc4
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x30
	adds r2, r2, r0
	movs r0, #0x20
	str r0, [r2]
	strh r7, [r6, #2]
	movs r0, #1
	strb r0, [r6, #1]
	b _080252CE
	.align 2, 0
_080251FC: .4byte 0x030013E0
_08025200: .4byte 0x080C6C18
_08025204: .4byte 0x080C6BDC
_08025208:
	ldr r7, _080252C0 @ =0x030013E0
	ldr r3, [r7]
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r4, r3, #0
	adds r4, #0x2c
	adds r1, r4, r1
	ldr r5, _080252C4 @ =0x08084E00
	ldrh r2, [r6, #2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0xc4
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #0x30
	adds r3, r3, r0
	ldrh r1, [r6, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r5, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r6, #0x18]
	ldrb r2, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r1, [r4]
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r6, #2]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r5, #4
	adds r2, r2, r5
	ldrh r2, [r2]
	adds r2, #0x34
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x14
	bls _080252CE
	ldr r2, [r7]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	movs r0, #0x48
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x30
	adds r2, r2, r0
	movs r0, #0x20
	str r0, [r2]
	movs r0, #0x14
	bl sub_08007AC0
	ldr r0, [r6, #0x18]
	bl sub_08009A00
	movs r0, #2
	strb r0, [r6, #1]
	b _080252CE
	.align 2, 0
_080252C0: .4byte 0x030013E0
_080252C4: .4byte 0x08084E00
_080252C8:
	ldrb r0, [r6]
	bl sub_08024D20
_080252CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080252D4
sub_080252D4: @ 0x080252D4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6, #1]
	cmp r7, #1
	beq _0802536C
	cmp r7, #1
	bgt _080252EC
	cmp r7, #0
	beq _080252F4
	b _08025432
_080252EC:
	cmp r7, #2
	bne _080252F2
	b _0802542C
_080252F2:
	b _08025432
_080252F4:
	movs r0, #3
	movs r1, #0x81
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x98
	movs r2, #0x34
	bl sub_08009A70
	ldr r5, _08025360 @ =0x030013E0
	ldr r0, [r5]
	adds r0, #0xd4
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08025364 @ =0x080C6C18
	ldr r2, _08025368 @ =0x080C6BDC
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	str r4, [r6, #0x18]
	ldr r2, [r5]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	movs r0, #0x88
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x30
	adds r2, r2, r0
	movs r0, #0x20
	str r0, [r2]
	strh r7, [r6, #2]
	movs r0, #1
	strb r0, [r6, #1]
	b _08025432
	.align 2, 0
_08025360: .4byte 0x030013E0
_08025364: .4byte 0x080C6C18
_08025368: .4byte 0x080C6BDC
_0802536C:
	ldr r7, _08025424 @ =0x030013E0
	ldr r3, [r7]
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r4, r3, #0
	adds r4, #0x2c
	adds r1, r4, r1
	ldr r5, _08025428 @ =0x08084E7E
	ldrh r2, [r6, #2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x88
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #0x30
	adds r3, r3, r0
	ldrh r1, [r6, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r5, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r6, #0x18]
	ldrb r2, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r1, [r4]
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r6, #2]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r5, #4
	adds r2, r2, r5
	ldrh r2, [r2]
	adds r2, #0x34
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025432
	ldr r2, [r7]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	movs r0, #0x48
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x30
	adds r2, r2, r0
	movs r0, #0x20
	str r0, [r2]
	movs r0, #0xa
	bl sub_08007AC0
	ldr r0, [r6, #0x18]
	bl sub_08009A00
	movs r0, #2
	strb r0, [r6, #1]
	b _08025432
	.align 2, 0
_08025424: .4byte 0x030013E0
_08025428: .4byte 0x08084E7E
_0802542C:
	ldrb r0, [r6]
	bl sub_08024D20
_08025432:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08025438
sub_08025438: @ 0x08025438
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r6, [r7, #1]
	cmp r6, #1
	beq _080254D4
	cmp r6, #1
	bgt _08025454
	cmp r6, #0
	beq _0802545C
	b _080255E6
_08025454:
	cmp r6, #2
	bne _0802545A
	b _080255E0
_0802545A:
	b _080255E6
_0802545C:
	movs r0, #3
	movs r1, #0x81
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x58
	movs r2, #0x34
	bl sub_08009A70
	ldr r5, _080254C8 @ =0x030013E0
	ldr r0, [r5]
	adds r0, #0xd4
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _080254CC @ =0x080C6C18
	ldr r2, _080254D0 @ =0x080C6BDC
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	str r4, [r7, #0x18]
	ldr r2, [r5]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	movs r0, #0x48
	str r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x30
	adds r2, r2, r0
	movs r0, #0x20
	str r0, [r2]
	strh r6, [r7, #2]
	movs r0, #1
	strb r0, [r7, #1]
	b _080255E6
	.align 2, 0
_080254C8: .4byte 0x030013E0
_080254CC: .4byte 0x080C6C18
_080254D0: .4byte 0x080C6BDC
_080254D4:
	ldr r0, _080255D4 @ =0x030013E0
	mov r8, r0
	ldr r1, [r0]
	mov ip, r1
	ldrb r0, [r7]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	mov r4, ip
	adds r4, #0x2c
	adds r3, r4, r3
	ldr r5, _080255D8 @ =0x08084EDE
	ldrh r0, [r7, #2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	mov r6, ip
	adds r6, #0xe0
	ldrb r1, [r6]
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r5
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0x48
	str r0, [r3]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r3, ip
	adds r3, #0x30
	adds r3, r3, r0
	ldrh r0, [r7, #2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldrb r1, [r6]
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r0, r5, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r7, #0x18]
	ldrb r2, [r7]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r1, [r4]
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r7, #2]
	lsls r4, r2, #1
	adds r4, r4, r2
	lsls r4, r4, #1
	ldrb r3, [r6]
	subs r3, #1
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #5
	adds r4, r4, r2
	adds r5, #4
	adds r4, r4, r5
	ldrh r2, [r4]
	adds r2, #0x34
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080255E6
	mov r0, r8
	ldr r4, [r0]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r2, _080255DC @ =0x08084D7C
	adds r3, r4, #0
	adds r3, #0xe0
	ldrb r0, [r3]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x30
	adds r1, r1, r0
	ldrb r0, [r3]
	subs r0, #1
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xa
	bl sub_08007AC0
	ldr r0, [r7, #0x18]
	bl sub_08009A00
	movs r0, #2
	strb r0, [r7, #1]
	b _080255E6
	.align 2, 0
_080255D4: .4byte 0x030013E0
_080255D8: .4byte 0x08084EDE
_080255DC: .4byte 0x08084D7C
_080255E0:
	ldrb r0, [r7]
	bl sub_08024D20
_080255E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080255F0
sub_080255F0: @ 0x080255F0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _08025680 @ =0x030013E0
	movs r6, #0
_080255F8:
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r7]
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r0, r6
	ldr r1, [r0]
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x30
	adds r2, r2, r6
	ldr r2, [r2]
	adds r2, #0x14
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xd4
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	adds r3, r5, #2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	ldr r1, _08025684 @ =0x080C6C18
	ldr r2, _08025688 @ =0x080C6BDC
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r7]
	lsls r1, r5, #2
	adds r0, #0xa0
	adds r0, r0, r1
	str r4, [r0]
	adds r6, #0xc
	adds r5, #1
	cmp r5, #9
	ble _080255F8
	ldr r0, _08025680 @ =0x030013E0
	ldr r0, [r0]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0802568C @ =0x08084FBC
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025680: .4byte 0x030013E0
_08025684: .4byte 0x080C6C18
_08025688: .4byte 0x080C6BDC
_0802568C: .4byte 0x08084FBC

	thumb_func_start sub_08025690
sub_08025690: @ 0x08025690
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
_08025696:
	ldr r0, _080256D0 @ =0x030013E0
	ldr r2, [r0]
	lsls r1, r5, #2
	adds r0, r2, #0
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r4
	ldr r1, [r1]
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x30
	adds r2, r2, r4
	ldr r2, [r2]
	adds r2, #0x14
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r4, #0xc
	adds r5, #1
	cmp r5, #9
	ble _08025696
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080256D0: .4byte 0x030013E0

	thumb_func_start sub_080256D4
sub_080256D4: @ 0x080256D4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080256F4 @ =0x030013E0
_080256DA:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #9
	ble _080256DA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080256F4: .4byte 0x030013E0

	thumb_func_start sub_080256F8
sub_080256F8: @ 0x080256F8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08025778 @ =0x030013E0
_080256FE:
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0802577C @ =0x08084FC4
	lsls r4, r6, #1
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xdc
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08025780 @ =0x080B8664
	ldr r0, _08025784 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r0, _08025788 @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #0x28]
	ldr r0, _0802578C @ =0x08084FC8
	adds r4, r4, r0
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_08009ACC
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0xcc
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #1
	ble _080256FE
	ldr r0, _08025778 @ =0x030013E0
	ldr r0, [r0]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _08025790 @ =sub_08025794
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025778: .4byte 0x030013E0
_0802577C: .4byte 0x08084FC4
_08025780: .4byte 0x080B8664
_08025784: .4byte 0x03004400
_08025788: .4byte 0x080B8660
_0802578C: .4byte 0x08084FC8
_08025790: .4byte sub_08025794

	thumb_func_start sub_08025794
sub_08025794: @ 0x08025794
	bx lr
	.align 2, 0

	thumb_func_start sub_08025798
sub_08025798: @ 0x08025798
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080257C8 @ =0x030013E0
_0802579E:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0xcc
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	lsls r1, r4, #1
	adds r0, #0x18
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r4, #1
	cmp r4, #1
	ble _0802579E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080257C8: .4byte 0x030013E0

	thumb_func_start sub_080257CC
sub_080257CC: @ 0x080257CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldr r0, _08025804 @ =0x030013E0
	ldr r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r1, #0xa0
	adds r1, r1, r0
	ldr r1, [r1]
	mov sb, r1
	ldr r0, [r1, #0x24]
	str r0, [sp]
	ldrb r0, [r7, #2]
	cmp r0, #4
	bls _080257FA
	b _08025950
_080257FA:
	lsls r0, r0, #2
	ldr r1, _08025808 @ =_0802580C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025804: .4byte 0x030013E0
_08025808: .4byte _0802580C
_0802580C: @ jump table
	.4byte _08025820 @ case 0
	.4byte _0802584C @ case 1
	.4byte _08025894 @ case 2
	.4byte _080258EA @ case 3
	.4byte _08025938 @ case 4
_08025820:
	bl sub_08009DDC
	str r0, [sp]
	mov r0, sb
	ldr r1, [sp]
	bl sub_08009B9C
	mov r0, sb
	movs r1, #1
	bl sub_08009B84
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, [sp]
	adds r1, r2, #0
	bl sub_08009E84
	movs r1, #0
	movs r0, #1
	strb r0, [r7, #2]
	strh r1, [r7, #4]
	b _08025950
_0802584C:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	ldrh r6, [r7, #4]
	ldrb r5, [r7, #3]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08070FCC
	muls r0, r6, r0
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0x20
	adds r1, r5, #0
	bl sub_08070FCC
	muls r0, r6, r0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r6, r5
	blo _080258D6
	movs r0, #2
	strb r0, [r7, #2]
	movs r0, #0
	strh r0, [r7, #4]
	ldrb r1, [r7, #1]
	mov r0, sb
	bl sub_08009AFC
	b _080258D6
_08025894:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	ldrh r5, [r7, #4]
	ldrb r4, [r7, #3]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r1, r4, #0
	bl sub_08070FCC
	adds r0, r0, r4
	muls r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r6, r4, r5
	movs r0, #0x20
	adds r1, r4, #0
	bl sub_08070FCC
	muls r0, r6, r0
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r5, r4
	blo _080258D6
	movs r0, #3
	strb r0, [r7, #2]
	movs r0, #0
	strh r0, [r7, #4]
	b _08025950
_080258D6:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp]
	bl sub_08009E84
	b _08025950
_080258EA:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	ldrb r1, [r7, #3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	blo _08025916
	mov r0, sb
	movs r1, #0
	bl sub_08009B84
	mov r0, sb
	movs r1, #0
	bl sub_08009B9C
	ldr r0, [sp]
	bl sub_08009E54
	movs r0, #4
	strb r0, [r7, #2]
	b _08025950
_08025916:
	ldrh r4, [r7, #4]
	subs r4, r1, r4
	movs r0, #0x40
	bl sub_08070FCC
	adds r2, r4, #0
	muls r2, r0, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp]
	adds r1, r2, #0
	bl sub_08009E84
	b _08025950
_08025938:
	ldr r0, _08025960 @ =0x030013E0
	ldr r1, [r0]
	ldrb r2, [r7]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	bl sub_08007A64
_08025950:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025960: .4byte 0x030013E0

	thumb_func_start sub_08025964
sub_08025964: @ 0x08025964
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080259B4 @ =sub_080257CC
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strh r1, [r0, #4]
	strb r5, [r0]
	adds r4, #2
	strb r4, [r0, #1]
	movs r1, #8
	strb r1, [r0, #3]
	movs r0, #0xa5
	lsls r0, r0, #1
	bl sub_0806F5DC
	ldr r0, _080259B8 @ =0x030013E0
	ldr r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080259B4: .4byte sub_080257CC
_080259B8: .4byte 0x030013E0

	thumb_func_start sub_080259BC
sub_080259BC: @ 0x080259BC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08025A04 @ =sub_080257CC
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r2, #0
	movs r1, #0
	strh r1, [r0, #4]
	strb r4, [r0]
	strb r2, [r0, #1]
	movs r1, #4
	strb r1, [r0, #3]
	movs r0, #0xa5
	lsls r0, r0, #1
	bl sub_0806F5DC
	ldr r0, _08025A08 @ =0x030013E0
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025A04: .4byte sub_080257CC
_08025A08: .4byte 0x030013E0

	thumb_func_start sub_08025A0C
sub_08025A0C: @ 0x08025A0C
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _08025A5C @ =0x030013E0
_08025A14:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08025A60 @ =0x08084FC8
	lsls r4, r5, #1
	adds r1, r4, r1
	ldrh r1, [r1]
	ldr r2, _08025A64 @ =0x08084FC4
	adds r2, r4, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0x41
	str r3, [sp]
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	adds r1, #0x18
	adds r1, r1, r4
	strh r0, [r1]
	adds r5, #1
	cmp r5, #1
	ble _08025A14
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025A5C: .4byte 0x030013E0
_08025A60: .4byte 0x08084FC8
_08025A64: .4byte 0x08084FC4

	thumb_func_start sub_08025A68
sub_08025A68: @ 0x08025A68
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08025A8C @ =0x030013E0
_08025A6E:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0xcc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #1
	ble _08025A6E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025A8C: .4byte 0x030013E0

	thumb_func_start sub_08025A90
sub_08025A90: @ 0x08025A90
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08025AC4 @ =0x030013E0
	ldr r0, [r5]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	ldr r1, _08025AC8 @ =0x08084FCC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025AC4: .4byte 0x030013E0
_08025AC8: .4byte 0x08084FCC

	thumb_func_start sub_08025ACC
sub_08025ACC: @ 0x08025ACC
	push {lr}
	ldr r0, _08025AE4 @ =0x030013E0
	ldr r0, [r0]
	adds r0, #0xf0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08025A90
	pop {r0}
	bx r0
	.align 2, 0
_08025AE4: .4byte 0x030013E0

	thumb_func_start sub_08025AE8
sub_08025AE8: @ 0x08025AE8
	push {lr}
	ldr r0, _08025B00 @ =0x030013E0
	ldr r0, [r0]
	adds r0, #0xf0
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08025A90
	pop {r0}
	bx r0
	.align 2, 0
_08025B00: .4byte 0x030013E0

	thumb_func_start sub_08025B04
sub_08025B04: @ 0x08025B04
	push {lr}
	ldr r0, _08025B1C @ =0x030013E0
	ldr r0, [r0]
	adds r0, #0xf0
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_08025A90
	pop {r0}
	bx r0
	.align 2, 0
_08025B1C: .4byte 0x030013E0

	thumb_func_start sub_08025B20
sub_08025B20: @ 0x08025B20
	push {r4, lr}
	ldr r4, _08025B40 @ =0x030013E0
	ldr r0, [r4]
	adds r0, #0xc8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	adds r0, #0xc8
	ldr r0, [r0]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025B40: .4byte 0x030013E0

	thumb_func_start sub_08025B44
sub_08025B44: @ 0x08025B44
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0x28
	bl sub_08009A70
	ldr r5, _08025BB4 @ =0x030013E0
	ldr r0, [r5]
	adds r0, #0xd4
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08025BB8 @ =0x080C6C18
	ldr r2, _08025BBC @ =0x080C6BDC
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_08009ACC
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	adds r0, r4, #0
	movs r1, #8
	movs r2, #8
	bl sub_08009C14
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xc8
	str r4, [r0]
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	ldr r1, _08025BC0 @ =sub_08025B20
	bl sub_08007BA0
	bl sub_08025ACC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025BB4: .4byte 0x030013E0
_08025BB8: .4byte 0x080C6C18
_08025BBC: .4byte 0x080C6BDC
_08025BC0: .4byte sub_08025B20

	thumb_func_start sub_08025BC4
sub_08025BC4: @ 0x08025BC4
	bx lr
	.align 2, 0

	thumb_func_start sub_08025BC8
sub_08025BC8: @ 0x08025BC8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #1
	beq _08025C2E
	cmp r6, #1
	bgt _08025BE0
	cmp r6, #0
	beq _08025BE6
	b _08025C78
_08025BE0:
	cmp r6, #2
	beq _08025C74
	b _08025C78
_08025BE6:
	ldr r4, _08025C64 @ =0x030013E0
	ldr r0, [r4]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xc8
	ldr r0, [r0]
	ldr r2, _08025C68 @ =0x0203A310
	adds r1, #0xec
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xc8
	ldr r0, [r0]
	ldr r2, _08025C6C @ =0x0203A314
	adds r1, #0xec
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0x90
	bl sub_08009A70
	movs r0, #1
	strb r0, [r5]
	strh r6, [r5, #2]
_08025C2E:
	ldr r0, _08025C70 @ =0x0203A304
	ldrh r1, [r5, #2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, _08025C64 @ =0x030013E0
	ldr r0, [r0]
	adds r0, #0xc8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08025C78
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5]
	b _08025C78
	.align 2, 0
_08025C64: .4byte 0x030013E0
_08025C68: .4byte 0x0203A310
_08025C6C: .4byte 0x0203A314
_08025C70: .4byte 0x0203A304
_08025C74:
	bl sub_08025ACC
_08025C78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025C80
sub_08025C80: @ 0x08025C80
	push {lr}
	ldr r0, _08025C98 @ =0x030013E0
	ldr r0, [r0]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	bl sub_08025ACC
	pop {r0}
	bx r0
	.align 2, 0
_08025C98: .4byte 0x030013E0

	thumb_func_start sub_08025C9C
sub_08025C9C: @ 0x08025C9C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _08025E38 @ =0x030013E4
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0xb8
	bl sub_08007EFC
	ldr r0, _08025E3C @ =0x08085220
	ldr r0, [r0]
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #2]
	ldr r0, _08025E40 @ =0x08085230
	ldr r0, [r0]
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1]
	ldr r0, _08025E44 @ =sub_080265EC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x24]
	movs r2, #0x24
	ldrsh r0, [r1, r2]
	ldr r1, _08025E48 @ =sub_08026744
	bl sub_08007BA0
	ldr r0, _08025E4C @ =sub_08026BA0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x28]
	movs r4, #0
_08025CFA:
	ldr r0, _08025E50 @ =sub_080268AC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r6, _08025E38 @ =0x030013E4
	ldr r1, [r6]
	lsls r2, r4, #1
	adds r1, #4
	adds r1, r1, r2
	strh r0, [r1]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080267FC
	adds r4, #1
	cmp r4, #0xf
	ble _08025CFA
	ldr r1, _08025E54 @ =0x080851AC
	ldr r4, _08025E58 @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08025E5C @ =0x05000200
	bl sub_08008308
	ldr r1, _08025E60 @ =0x080851BC
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0x90
	str r0, [r2]
	adds r1, #0x94
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r0, _08025E64 @ =0x080E2ECC
	ldr r1, _08025E68 @ =0x05000220
	bl sub_08008308
	ldr r0, _08025E6C @ =0x080E314C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0x98
	str r0, [r2]
	adds r1, #0x9c
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r4, _08025E70 @ =0x06010800
	ldr r0, _08025E74 @ =0x080E1CE0
	ldr r1, _08025E78 @ =0x05000240
	bl sub_08008308
	ldr r0, [r6]
	adds r0, #0x80
	str r4, [r0]
	ldr r0, _08025E7C @ =0x080E1DF4
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _08025E80 @ =0x080CAC38
	ldr r1, _08025E84 @ =0x050002C0
	bl sub_08008308
	ldr r0, [r6]
	adds r0, #0x88
	str r4, [r0]
	ldr r0, _08025E88 @ =0x080CAD1C
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08025E8C @ =0x080B85E8
	ldr r5, _08025E90 @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08025E94 @ =0x050002E0
	bl sub_08008308
	ldr r0, [r6]
	adds r0, #0x8c
	str r4, [r0]
	ldr r1, _08025E98 @ =0x080B8624
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _08025E9C @ =0x080C7500
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _08025EA0 @ =0x080C75C4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _08025EA4 @ =0x080C7FD8
	ldr r1, _08025EA8 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _08025EAC @ =0x080C82CC
	ldr r1, _08025EB0 @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1d
	movs r2, #6
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1c
	bl sub_08000268
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025E38: .4byte 0x030013E4
_08025E3C: .4byte 0x08085220
_08025E40: .4byte 0x08085230
_08025E44: .4byte sub_080265EC
_08025E48: .4byte sub_08026744
_08025E4C: .4byte sub_08026BA0
_08025E50: .4byte sub_080268AC
_08025E54: .4byte 0x080851AC
_08025E58: .4byte 0x03004488
_08025E5C: .4byte 0x05000200
_08025E60: .4byte 0x080851BC
_08025E64: .4byte 0x080E2ECC
_08025E68: .4byte 0x05000220
_08025E6C: .4byte 0x080E314C
_08025E70: .4byte 0x06010800
_08025E74: .4byte 0x080E1CE0
_08025E78: .4byte 0x05000240
_08025E7C: .4byte 0x080E1DF4
_08025E80: .4byte 0x080CAC38
_08025E84: .4byte 0x050002C0
_08025E88: .4byte 0x080CAD1C
_08025E8C: .4byte 0x080B85E8
_08025E90: .4byte 0x03004400
_08025E94: .4byte 0x050002E0
_08025E98: .4byte 0x080B8624
_08025E9C: .4byte 0x080C7500
_08025EA0: .4byte 0x080C75C4
_08025EA4: .4byte 0x080C7FD8
_08025EA8: .4byte 0x0600F800
_08025EAC: .4byte 0x080C82CC
_08025EB0: .4byte 0x0600F000

	thumb_func_start sub_08025EB4
sub_08025EB4: @ 0x08025EB4
	push {r4, lr}
	ldr r1, _08025ED8 @ =0x0808520C
	ldr r4, _08025EDC @ =0x030013E4
	ldr r0, [r4]
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	adds r0, #0x2c
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08025ED8: .4byte 0x0808520C
_08025EDC: .4byte 0x030013E4

	thumb_func_start sub_08025EE0
sub_08025EE0: @ 0x08025EE0
	ldr r2, _08025EF8 @ =0x030013E4
	ldr r1, [r2]
	adds r1, #0x2d
	movs r3, #0
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0x2e
	strb r3, [r0]
	ldr r0, [r2]
	strh r3, [r0, #0x30]
	bx lr
	.align 2, 0
_08025EF8: .4byte 0x030013E4

	thumb_func_start sub_08025EFC
sub_08025EFC: @ 0x08025EFC
	push {r4, r5, r6, lr}
	ldr r6, _08025F10 @ =0x030013E4
	ldr r0, [r6]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025F14
	cmp r0, #1
	beq _08025F6C
	b _08025F84
	.align 2, 0
_08025F10: .4byte 0x030013E4
_08025F14:
	bl sub_08008174
	ldr r4, _08025F60 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08025F64 @ =0x00001F03
	strh r0, [r4, #8]
	ldr r0, _08025F68 @ =0x00001E02
	strh r0, [r4, #6]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x3e
	bl sub_0806F5DC
	ldr r0, [r6]
	adds r0, #0x2e
	strb r5, [r0]
	b _08025F84
	.align 2, 0
_08025F60: .4byte 0x030024E0
_08025F64: .4byte 0x00001F03
_08025F68: .4byte 0x00001E02
_08025F6C:
	bl sub_080003D0
	cmp r0, #0
	beq _08025F84
	ldr r2, _08025F8C @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08025F90 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_08025EE0
_08025F84:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025F8C: .4byte 0x030024E0
_08025F90: .4byte 0x0000FDFF

	thumb_func_start sub_08025F94
sub_08025F94: @ 0x08025F94
	push {r4, r5, lr}
	ldr r5, _08025FAC @ =0x030013E4
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x2e
	ldrb r1, [r1]
	cmp r1, #0
	beq _08025FB0
	cmp r1, #1
	beq _0802601C
	b _08026022
	.align 2, 0
_08025FAC: .4byte 0x030013E4
_08025FB0:
	adds r0, #0xa1
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0xa0
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0xa7
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0xa2
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0xa6
	strb r1, [r0]
	bl sub_08026788
	movs r4, #0
	adds r1, r5, #0
_08025FD4:
	ldr r0, [r1]
	adds r0, #0xa8
	adds r0, r0, r4
	strb r4, [r0]
	adds r4, #1
	cmp r4, #0xf
	ble _08025FD4
	movs r4, #0
	ldr r5, _08026018 @ =0x030013E4
_08025FE6:
	movs r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5]
	adds r1, #0xa8
	adds r2, r1, r4
	ldrb r3, [r2]
	adds r1, r1, r0
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r1, [r5]
	adds r1, #0xa8
	adds r1, r1, r0
	strb r3, [r1]
	adds r4, #1
	cmp r4, #0xf
	ble _08025FE6
	ldr r0, _08026018 @ =0x030013E4
	ldr r0, [r0]
	adds r0, #0x2e
	movs r1, #1
	strb r1, [r0]
	b _08026022
	.align 2, 0
_08026018: .4byte 0x030013E4
_0802601C:
	movs r0, #2
	bl sub_08025EE0
_08026022:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08026028
sub_08026028: @ 0x08026028
	push {r4, r5, lr}
	ldr r2, _0802604C @ =0x030013E4
	ldr r0, [r2]
	adds r0, #0xa5
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r5, r2, #0
	cmp r0, #5
	bls _08026042
	b _080261F6
_08026042:
	lsls r0, r0, #2
	ldr r1, _08026050 @ =_08026054
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802604C: .4byte 0x030013E4
_08026050: .4byte _08026054
_08026054: @ jump table
	.4byte _0802606C @ case 0
	.4byte _0802607C @ case 1
	.4byte _080260B0 @ case 2
	.4byte _080260E8 @ case 3
	.4byte _080261C0 @ case 4
	.4byte _080261EC @ case 5
_0802606C:
	bl sub_08005934
	ldr r0, _08026078 @ =0x030013E4
	ldr r0, [r0]
	b _080261B8
	.align 2, 0
_08026078: .4byte 0x030013E4
_0802607C:
	ldr r0, [r5]
	adds r0, #0xa4
	movs r1, #0
	strb r1, [r0]
	bl sub_08026360
	bl sub_08026520
	ldr r1, _080260AC @ =0x08085158
	ldr r0, [r5]
	adds r0, #0xa6
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, [r5]
	adds r0, #0x2e
	movs r1, #2
	strb r1, [r0]
	b _080261F6
	.align 2, 0
_080260AC: .4byte 0x08085158
_080260B0:
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080260C6
	adds r1, r2, #0
	adds r1, #0x2e
	movs r0, #3
	strb r0, [r1]
	b _080261F6
_080260C6:
	ldr r0, _080260E4 @ =0x030024B0
	ldrh r1, [r0]
	movs r3, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080260D6
	b _080261F6
_080260D6:
	adds r0, r2, #0
	adds r0, #0xa5
	strb r3, [r0]
	ldr r0, [r5]
	adds r0, #0xa4
	strb r3, [r0]
	b _080261F6
	.align 2, 0
_080260E4: .4byte 0x030024B0
_080260E8:
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0xa0
	ldrb r1, [r1]
	adds r0, #0xa7
	strb r1, [r0]
	ldr r1, _08026120 @ =0x080851EC
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xa6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802612E
	cmp r0, #1
	bne _0802614C
	adds r0, r2, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	cmp r0, #1
	bne _08026124
	adds r1, r2, #0
	adds r1, #0xa1
	ldrb r0, [r1]
	adds r0, #8
	b _0802614A
	.align 2, 0
_08026120: .4byte 0x080851EC
_08026124:
	adds r1, r2, #0
	adds r1, #0xa1
	ldrb r0, [r1]
	subs r0, #4
	b _0802614A
_0802612E:
	adds r0, r2, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	cmp r0, #1
	bne _08026142
	adds r1, r2, #0
	adds r1, #0xa1
	ldrb r0, [r1]
	subs r0, #2
	b _0802614A
_08026142:
	adds r1, r2, #0
	adds r1, #0xa1
	ldrb r0, [r1]
	adds r0, #1
_0802614A:
	strb r0, [r1]
_0802614C:
	adds r4, r5, #0
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xa1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08026160
	movs r0, #0
	strb r0, [r1]
_08026160:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r1, #0xa0
	strb r0, [r1]
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xa0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x10
	ble _08026182
	movs r0, #0x10
	strb r0, [r1]
_08026182:
	ldr r0, [r4]
	adds r3, r0, #0
	adds r3, #0xa0
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r2, r0, #0
	adds r2, #0xa2
	ldrb r0, [r2]
	cmp r1, r0
	ble _0802619A
	ldrb r0, [r3]
	strb r0, [r2]
_0802619A:
	ldr r1, [r4]
	adds r1, #0xa6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080261B6
	ldr r0, [r4]
	adds r0, #0x2e
	movs r1, #4
	strb r1, [r0]
	b _080261F6
_080261B6:
	ldr r0, [r5]
_080261B8:
	adds r0, #0x2e
	movs r1, #1
	strb r1, [r0]
	b _080261F6
_080261C0:
	bl sub_08005A2C
	ldr r4, _080261E8 @ =0x030013E4
	ldr r0, [r4]
	adds r0, #0xa0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _080261D8
	bl sub_080193B4
_080261D8:
	ldr r0, [r4]
	adds r0, #0x2e
	movs r1, #5
	strb r1, [r0]
	movs r0, #0x3c
	bl sub_08002B98
	b _080261F6
	.align 2, 0
_080261E8: .4byte 0x030013E4
_080261EC:
	bl sub_080267D4
	movs r0, #3
	bl sub_08025EE0
_080261F6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080261FC
sub_080261FC: @ 0x080261FC
	push {r4, lr}
	sub sp, #4
	ldr r4, _08026218 @ =0x030013E4
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x2e
	ldrb r1, [r2]
	cmp r1, #1
	beq _08026234
	cmp r1, #1
	bgt _0802621C
	cmp r1, #0
	beq _08026226
	b _0802628E
	.align 2, 0
_08026218: .4byte 0x030013E4
_0802621C:
	cmp r1, #2
	beq _08026248
	cmp r1, #3
	beq _08026280
	b _0802628E
_08026226:
	bl sub_0802637C
	ldr r0, [r4]
	adds r0, #0x2e
	movs r1, #1
	strb r1, [r0]
	b _0802628E
_08026234:
	adds r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802628E
	movs r0, #2
	strb r0, [r2]
	movs r0, #0x78
	bl sub_08002B98
	b _0802628E
_08026248:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1c
	bl sub_0800031C
	ldr r2, _08026278 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	adds r0, #0x2e
	movs r1, #3
	strb r1, [r0]
	ldr r0, _0802627C @ =0x030056F0
	movs r1, #4
	bl sub_0806F774
	b _0802628E
	.align 2, 0
_08026278: .4byte 0x030024E0
_0802627C: .4byte 0x030056F0
_08026280:
	bl sub_080003D0
	cmp r0, #0
	beq _0802628E
	movs r0, #4
	bl sub_08025EE0
_0802628E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026298
sub_08026298: @ 0x08026298
	push {r4, r5, lr}
	bl sub_080058A4
	ldr r4, _08026304 @ =0x030013E4
	ldr r0, [r4]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	movs r5, #0
_080262CA:
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #0xf
	ble _080262CA
	ldr r4, _08026304 @ =0x030013E4
	ldr r0, [r4]
	adds r0, #0x90
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0x98
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0x2c
	movs r1, #1
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026304: .4byte 0x030013E4

	thumb_func_start sub_08026308
sub_08026308: @ 0x08026308
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802633C @ =0x030013E4
	ldr r0, [r5]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r1, _08026340 @ =0x08085220
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802633C: .4byte 0x030013E4
_08026340: .4byte 0x08085220

	thumb_func_start sub_08026344
sub_08026344: @ 0x08026344
	push {lr}
	ldr r0, _0802635C @ =0x030013E4
	ldr r0, [r0]
	adds r0, #0xa3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_08026308
	pop {r0}
	bx r0
	.align 2, 0
_0802635C: .4byte 0x030013E4

	thumb_func_start sub_08026360
sub_08026360: @ 0x08026360
	push {lr}
	ldr r0, _08026378 @ =0x030013E4
	ldr r0, [r0]
	adds r0, #0xa3
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_08026308
	pop {r0}
	bx r0
	.align 2, 0
_08026378: .4byte 0x030013E4

	thumb_func_start sub_0802637C
sub_0802637C: @ 0x0802637C
	push {lr}
	ldr r0, _08026394 @ =0x030013E4
	ldr r0, [r0]
	adds r0, #0xa3
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_08026308
	pop {r0}
	bx r0
	.align 2, 0
_08026394: .4byte 0x030013E4

	thumb_func_start sub_08026398
sub_08026398: @ 0x08026398
	push {lr}
	bl sub_08026344
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080263A4
sub_080263A4: @ 0x080263A4
	bx lr
	.align 2, 0

	thumb_func_start sub_080263A8
sub_080263A8: @ 0x080263A8
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _080263C8 @ =0x030013E4
	ldr r3, [r0]
	ldr r2, [r3, #0x38]
	ldrb r0, [r5]
	cmp r0, #1
	beq _0802643A
	cmp r0, #1
	bgt _080263CC
	cmp r0, #0
	beq _080263D2
	b _0802646A
	.align 2, 0
_080263C8: .4byte 0x030013E4
_080263CC:
	cmp r0, #2
	beq _08026466
	b _0802646A
_080263D2:
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802646A
	adds r1, r3, #0
	adds r1, #0xa0
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r0, r3, #0
	adds r0, #0xa2
	ldrb r3, [r0]
	cmp r4, r3
	bge _08026416
	adds r0, r4, #0
	cmp r0, #9
	ble _080263FC
	adds r0, r2, #0
	movs r1, #2
	bl sub_08009AFC
	b _08026430
_080263FC:
	subs r0, r3, r4
	cmp r0, #1
	ble _0802640C
	adds r0, r2, #0
	movs r1, #4
	bl sub_08009AFC
	b _08026430
_0802640C:
	adds r0, r2, #0
	movs r1, #3
	bl sub_08009AFC
	b _08026430
_08026416:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #9
	ble _08026428
	adds r0, r2, #0
	movs r1, #1
	bl sub_08009AFC
	b _08026430
_08026428:
	adds r0, r2, #0
	movs r1, #2
	bl sub_08009AFC
_08026430:
	movs r1, #0
	movs r0, #1
	strb r0, [r5]
	strh r1, [r5, #2]
	b _0802646A
_0802643A:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _0802646A
	ldr r0, [r3, #0x38]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802646A
	adds r0, r2, #0
	movs r1, #0
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r5]
	movs r0, #0xb4
	bl sub_08007AC0
	b _0802646A
_08026466:
	bl sub_08026344
_0802646A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08026470
sub_08026470: @ 0x08026470
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _0802648C @ =0x030013E4
	ldr r0, [r0]
	ldr r4, [r0, #0x38]
	ldrb r1, [r5]
	cmp r1, #0
	beq _08026490
	cmp r1, #1
	beq _080264C4
	b _080264D0
	.align 2, 0
_0802648C: .4byte 0x030013E4
_08026490:
	adds r0, #0xa0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _080264AE
	adds r0, r4, #0
	movs r1, #5
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	b _080264BE
_080264AE:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
_080264BE:
	movs r0, #1
	strb r0, [r5]
	b _080264D0
_080264C4:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080264D0
	bl sub_08026344
_080264D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080264D8
sub_080264D8: @ 0x080264D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802650C @ =0x030013E4
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08026510 @ =0x08085230
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802650C: .4byte 0x030013E4
_08026510: .4byte 0x08085230

	thumb_func_start sub_08026514
sub_08026514: @ 0x08026514
	push {lr}
	movs r0, #1
	bl sub_080264D8
	pop {r0}
	bx r0

	thumb_func_start sub_08026520
sub_08026520: @ 0x08026520
	push {lr}
	movs r0, #2
	bl sub_080264D8
	pop {r0}
	bx r0

	thumb_func_start sub_0802652C
sub_0802652C: @ 0x0802652C
	push {lr}
	bl sub_08026514
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026538
sub_08026538: @ 0x08026538
	bx lr
	.align 2, 0

	thumb_func_start sub_0802653C
sub_0802653C: @ 0x0802653C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _0802655C @ =0x030013E4
	ldr r1, [r0]
	ldr r4, [r1, #0x34]
	ldrb r0, [r5]
	cmp r0, #1
	beq _080265A4
	cmp r0, #1
	bgt _08026560
	cmp r0, #0
	beq _08026566
	b _080265E2
	.align 2, 0
_0802655C: .4byte 0x030013E4
_08026560:
	cmp r0, #2
	beq _080265C0
	b _080265E2
_08026566:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _080265C0
	adds r0, r1, #0
	adds r0, #0xa5
	ldrb r0, [r0]
	cmp r0, #0
	beq _080265E2
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	ldr r4, _080265A0 @ =0x08085198
	movs r0, #4
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_0806F5DC
	b _080265E2
	.align 2, 0
_080265A0: .4byte 0x08085198
_080265A4:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080265E2
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009B40
	movs r0, #2
	b _080265E0
_080265C0:
	ldr r0, _080265E8 @ =0x030013E4
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080265E2
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #0
_080265E0:
	strb r0, [r5]
_080265E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080265E8: .4byte 0x030013E4

	thumb_func_start sub_080265EC
sub_080265EC: @ 0x080265EC
	push {r4, r5, r6, r7, lr}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #0x50
	bl sub_08009A70
	ldr r1, _08026710 @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r4, _08026714 @ =0x030013E4
	ldr r0, [r4]
	adds r0, #0x94
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	ldr r1, _08026718 @ =0x080851CC
	ldr r0, _0802671C @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _08026720 @ =0x080851DC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x34]
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x54
	bl sub_08009A70
	ldr r1, _08026724 @ =0x06010400
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r0, [r4]
	adds r0, #0x9c
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	ldr r1, _08026728 @ =0x080E312C
	ldr r2, _0802672C @ =0x080E30DC
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x38]
	movs r6, #0
	ldr r7, _08026730 @ =0x080B8664
_080266A2:
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0x8c
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r0, _08026734 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r0, r2, r7
	ldr r1, [r0]
	ldr r0, _08026738 @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #0x2c]
	adds r0, r5, #0
	movs r3, #0x15
	bl sub_08009ACC
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x7c
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #0
	ble _080266A2
	ldr r0, _08026714 @ =0x030013E4
	ldr r0, [r0]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	ldr r1, _0802673C @ =sub_08026740
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026710: .4byte 0x06010000
_08026714: .4byte 0x030013E4
_08026718: .4byte 0x080851CC
_0802671C: .4byte 0x03004488
_08026720: .4byte 0x080851DC
_08026724: .4byte 0x06010400
_08026728: .4byte 0x080E312C
_0802672C: .4byte 0x080E30DC
_08026730: .4byte 0x080B8664
_08026734: .4byte 0x03004400
_08026738: .4byte 0x080B8660
_0802673C: .4byte sub_08026740

	thumb_func_start sub_08026740
sub_08026740: @ 0x08026740
	bx lr
	.align 2, 0

	thumb_func_start sub_08026744
sub_08026744: @ 0x08026744
	push {r4, r5, lr}
	ldr r4, _08026784 @ =0x030013E4
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x38]
	bl sub_08009A00
	movs r5, #0
_0802675A:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x7c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #0x26
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #0
	ble _0802675A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026784: .4byte 0x030013E4

	thumb_func_start sub_08026788
sub_08026788: @ 0x08026788
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _080267D0 @ =0x030013E4
_08026790:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x7c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, #0x7c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x42
	str r1, [sp]
	movs r1, #0x15
	movs r2, #8
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	lsls r2, r5, #1
	adds r1, #0x26
	adds r1, r1, r2
	strh r0, [r1]
	adds r5, #1
	cmp r5, #0
	ble _08026790
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080267D0: .4byte 0x030013E4

	thumb_func_start sub_080267D4
sub_080267D4: @ 0x080267D4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080267F8 @ =0x030013E4
_080267DA:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x7c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #0
	ble _080267DA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080267F8: .4byte 0x030013E4

	thumb_func_start sub_080267FC
sub_080267FC: @ 0x080267FC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08026820 @ =0x030013E4
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026820: .4byte 0x030013E4

	thumb_func_start sub_08026824
sub_08026824: @ 0x08026824
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08026864 @ =0x030013E4
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #4
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	ldr r0, [r6]
	adds r0, #4
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08026868 @ =0x080852A4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026864: .4byte 0x030013E4
_08026868: .4byte 0x080852A4

	thumb_func_start sub_0802686C
sub_0802686C: @ 0x0802686C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_08026824
	pop {r0}
	bx r0

	thumb_func_start sub_0802687C
sub_0802687C: @ 0x0802687C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_08026824
	pop {r0}
	bx r0

	thumb_func_start sub_0802688C
sub_0802688C: @ 0x0802688C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl sub_08026824
	pop {r0}
	bx r0

	thumb_func_start sub_0802689C
sub_0802689C: @ 0x0802689C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl sub_08026824
	pop {r0}
	bx r0

	thumb_func_start sub_080268AC
sub_080268AC: @ 0x080268AC
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802692E
	movs r5, #0
	ldr r7, _0802693C @ =0x030013E4
_080268BE:
	movs r0, #3
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, _08026940 @ =0x0808523C
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0x80
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _08026944 @ =0x080E1DD8
	ldr r2, _08026948 @ =0x080E1DBC
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r7]
	lsls r1, r5, #2
	adds r0, #0x3c
	adds r0, r0, r1
	str r4, [r0]
	adds r5, #1
	cmp r5, #0xf
	ble _080268BE
	ldr r0, _0802693C @ =0x030013E4
	ldr r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r1, #4
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _0802694C @ =sub_08026950
	bl sub_08007BA0
_0802692E:
	ldrb r0, [r6]
	bl sub_0802686C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802693C: .4byte 0x030013E4
_08026940: .4byte 0x0808523C
_08026944: .4byte 0x080E1DD8
_08026948: .4byte 0x080E1DBC
_0802694C: .4byte sub_08026950

	thumb_func_start sub_08026950
sub_08026950: @ 0x08026950
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08026970 @ =0x030013E4
_08026956:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #0
	ble _08026956
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026970: .4byte 0x030013E4

	thumb_func_start sub_08026974
sub_08026974: @ 0x08026974
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r5, _080269C4 @ =0x030013E4
	ldr r1, [r5]
	ldrb r3, [r4]
	adds r0, r1, #0
	adds r0, #0xa8
	adds r0, r0, r3
	ldrb r2, [r0]
	adds r1, #0xa0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080269BC
	adds r0, r3, #0
	bl sub_0802687C
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0xa0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xa8
	ldrb r4, [r4]
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	bl sub_08007AC0
_080269BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080269C4: .4byte 0x030013E4

	thumb_func_start sub_080269C8
sub_080269C8: @ 0x080269C8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _080269F0 @ =0x030013E4
	ldr r0, [r0]
	ldrb r2, [r4]
	lsls r1, r2, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r5, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08026A5C
	cmp r0, #1
	bgt _080269F4
	cmp r0, #0
	beq _080269FA
	b _08026A9A
	.align 2, 0
_080269F0: .4byte 0x030013E4
_080269F4:
	cmp r0, #2
	beq _08026A94
	b _08026A9A
_080269FA:
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x40
	bl sub_08009A0C
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, _08026A38 @ =0x0808523C
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x77
	bgt _08026A40
	ldr r0, _08026A3C @ =0x080851A0
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	bl sub_08009AFC
	b _08026A4E
	.align 2, 0
_08026A38: .4byte 0x0808523C
_08026A3C: .4byte 0x080851A0
_08026A40:
	ldr r0, _08026A58 @ =0x080851A6
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	bl sub_08009AFC
_08026A4E:
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #1
	strb r0, [r4, #1]
	b _08026A9A
	.align 2, 0
_08026A58: .4byte 0x080851A6
_08026A5C:
	movs r0, #6
	ldrsh r1, [r5, r0]
	ldr r2, _08026A90 @ =0x0808525C
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, #0x84
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08026A9A
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #2
	strb r0, [r4, #1]
	b _08026A9A
	.align 2, 0
_08026A90: .4byte 0x0808525C
_08026A94:
	adds r0, r2, #0
	bl sub_0802688C
_08026A9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08026AA0
sub_08026AA0: @ 0x08026AA0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r6, _08026B1C @ =0x030013E4
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #6
	ldrsh r1, [r0, r2]
	ldr r4, _08026B20 @ =0x0808527C
	ldrh r2, [r5, #2]
	lsrs r2, r2, #5
	movs r3, #3
	ands r2, r3
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2]
	adds r2, #0x6c
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldr r1, [r6]
	ldrb r3, [r5]
	adds r0, r1, #0
	adds r0, #0xa8
	adds r0, r0, r3
	ldrb r2, [r0]
	adds r1, #0xa0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _08026B14
	adds r0, r3, #0
	bl sub_0802689C
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r5, [r5]
	adds r0, r0, r5
	ldrb r2, [r0]
	adds r1, #0xa0
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r2, r2, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	bl sub_08007AC0
_08026B14:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026B1C: .4byte 0x030013E4
_08026B20: .4byte 0x0808527C

	thumb_func_start sub_08026B24
sub_08026B24: @ 0x08026B24
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _08026B4C @ =0x030013E4
	ldr r0, [r0]
	ldrb r2, [r4]
	lsls r1, r2, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08026B5E
	cmp r0, #1
	bgt _08026B50
	cmp r0, #0
	beq _08026B56
	b _08026B9A
	.align 2, 0
_08026B4C: .4byte 0x030013E4
_08026B50:
	cmp r0, #2
	beq _08026B94
	b _08026B9A
_08026B56:
	strh r0, [r4, #2]
	movs r0, #1
	strb r0, [r4, #1]
	b _08026B9A
_08026B5E:
	movs r0, #6
	ldrsh r1, [r3, r0]
	ldr r2, _08026B90 @ =0x08085284
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, #0x6c
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_08009A70
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08026B9A
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #2
	strb r0, [r4, #1]
	b _08026B9A
	.align 2, 0
_08026B90: .4byte 0x08085284
_08026B94:
	adds r0, r2, #0
	bl sub_0802686C
_08026B9A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08026BA0
sub_08026BA0: @ 0x08026BA0
	push {lr}
	ldr r1, _08026BBC @ =0x030024E0
	ldr r0, _08026BC0 @ =0x080852B4
	ldrh r0, [r0]
	strh r0, [r1, #0x16]
	ldr r0, _08026BC4 @ =0x030013E4
	ldr r0, [r0]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	ldr r1, _08026BC8 @ =sub_08026BCC
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_08026BBC: .4byte 0x030024E0
_08026BC0: .4byte 0x080852B4
_08026BC4: .4byte 0x030013E4
_08026BC8: .4byte sub_08026BCC

	thumb_func_start sub_08026BCC
sub_08026BCC: @ 0x08026BCC
	push {lr}
	bl sub_08007BD4
	ldr r3, _08026BF0 @ =0x030024E0
	ldr r2, _08026BF4 @ =0x080852B4
	ldr r1, [r0, #4]
	lsrs r1, r1, #5
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r3, #0x16]
	ldr r1, [r0, #4]
	adds r1, #1
	movs r2, #0xff
	ands r1, r2
	str r1, [r0, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08026BF0: .4byte 0x030024E0
_08026BF4: .4byte 0x080852B4

	thumb_func_start sub_08026BF8
sub_08026BF8: @ 0x08026BF8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r5, _08026D64 @ =0x030013E8
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0x7c
	bl sub_08007EFC
	ldr r0, _08026D68 @ =0x08085660
	ldr r0, [r0]
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08026D6C @ =sub_08027774
	bl sub_08007BA0
	ldr r0, _08026D70 @ =sub_08027794
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #2]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r1, _08026D74 @ =sub_08027964
	bl sub_08007BA0
	ldr r0, _08026D78 @ =sub_08027AB0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	ldr r0, _08026D7C @ =sub_08027D60
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	ldr r1, _08026D80 @ =0x0808538C
	ldr r4, _08026D84 @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08026D88 @ =0x05000200
	bl sub_08008308
	ldr r1, _08026D8C @ =0x0808539C
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x58]
	ldr r0, [sp, #4]
	str r0, [r1, #0x5c]
	ldr r0, _08026D90 @ =0x080DDB0C
	ldr r1, _08026D94 @ =0x05000220
	bl sub_08008308
	ldr r0, _08026D98 @ =0x080DE1B0
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x60]
	ldr r0, [sp, #4]
	str r0, [r1, #0x64]
	ldr r4, _08026D9C @ =0x06011400
	ldr r0, _08026DA0 @ =0x080C9BE0
	ldr r1, _08026DA4 @ =0x05000240
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x4c]
	ldr r0, _08026DA8 @ =0x080C9D48
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _08026DAC @ =0x080CAC38
	ldr r1, _08026DB0 @ =0x050002A0
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x50]
	ldr r0, _08026DB4 @ =0x080CAD1C
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08026DB8 @ =0x080B85E8
	ldr r6, _08026DBC @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08026DC0 @ =0x050002C0
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x54]
	ldr r1, _08026DC4 @ =0x080B8624
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _08026DC8 @ =0x080C837C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _08026DCC @ =0x080C83E0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _08026DD0 @ =0x080C97A8
	ldr r1, _08026DD4 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1e
	movs r2, #3
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026D64: .4byte 0x030013E8
_08026D68: .4byte 0x08085660
_08026D6C: .4byte sub_08027774
_08026D70: .4byte sub_08027794
_08026D74: .4byte sub_08027964
_08026D78: .4byte sub_08027AB0
_08026D7C: .4byte sub_08027D60
_08026D80: .4byte 0x0808538C
_08026D84: .4byte 0x03004488
_08026D88: .4byte 0x05000200
_08026D8C: .4byte 0x0808539C
_08026D90: .4byte 0x080DDB0C
_08026D94: .4byte 0x05000220
_08026D98: .4byte 0x080DE1B0
_08026D9C: .4byte 0x06011400
_08026DA0: .4byte 0x080C9BE0
_08026DA4: .4byte 0x05000240
_08026DA8: .4byte 0x080C9D48
_08026DAC: .4byte 0x080CAC38
_08026DB0: .4byte 0x050002A0
_08026DB4: .4byte 0x080CAD1C
_08026DB8: .4byte 0x080B85E8
_08026DBC: .4byte 0x03004400
_08026DC0: .4byte 0x050002C0
_08026DC4: .4byte 0x080B8624
_08026DC8: .4byte 0x080C837C
_08026DCC: .4byte 0x080C83E0
_08026DD0: .4byte 0x080C97A8
_08026DD4: .4byte 0x0600F800

	thumb_func_start sub_08026DD8
sub_08026DD8: @ 0x08026DD8
	push {r4, lr}
	ldr r1, _08026DF8 @ =0x08085400
	ldr r4, _08026DFC @ =0x030013E8
	ldr r0, [r4]
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08026DF8: .4byte 0x08085400
_08026DFC: .4byte 0x030013E8

	thumb_func_start sub_08026E00
sub_08026E00: @ 0x08026E00
	ldr r1, _08026E14 @ =0x030013E8
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0xd]
	ldr r0, [r1]
	strb r3, [r0, #0xe]
	ldr r0, [r1]
	strh r3, [r0, #0x10]
	bx lr
	.align 2, 0
_08026E14: .4byte 0x030013E8

	thumb_func_start sub_08026E18
sub_08026E18: @ 0x08026E18
	push {r4, r5, r6, lr}
	ldr r6, _08026E2C @ =0x030013E8
	ldr r0, [r6]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _08026E30
	cmp r0, #1
	beq _08026E78
	b _08026E90
	.align 2, 0
_08026E2C: .4byte 0x030013E8
_08026E30:
	bl sub_08008174
	ldr r4, _08026E70 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r0, r4, #0
	adds r0, #0x4f
	movs r5, #1
	strb r5, [r0]
	ldr r0, _08026E74 @ =0x00001F03
	strh r0, [r4, #8]
	movs r0, #0x3f
	bl sub_0806F5DC
	ldr r0, [r6]
	strb r5, [r0, #0xe]
	b _08026E90
	.align 2, 0
_08026E70: .4byte 0x030024E0
_08026E74: .4byte 0x00001F03
_08026E78:
	bl sub_080003D0
	cmp r0, #0
	beq _08026E90
	ldr r2, _08026E98 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08026E9C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_08026E00
_08026E90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026E98: .4byte 0x030024E0
_08026E9C: .4byte 0x0000FDFF

	thumb_func_start sub_08026EA0
sub_08026EA0: @ 0x08026EA0
	push {r4, r5, lr}
	ldr r5, _08026EB4 @ =0x030013E8
	ldr r0, [r5]
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	beq _08026EB8
	cmp r4, #1
	beq _08026EE6
	b _08026EFE
	.align 2, 0
_08026EB4: .4byte 0x030013E8
_08026EB8:
	bl sub_08027F18
	ldr r0, [r5]
	adds r0, #0x68
	strb r4, [r0]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	adds r4, r2, #0
_08026ECA:
	ldr r0, [r2]
	adds r0, #0x6a
	adds r0, r0, r1
	strb r3, [r0]
	adds r1, #1
	cmp r1, #4
	ble _08026ECA
	ldr r0, [r4]
	adds r0, #0x69
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	strb r1, [r0, #0xe]
	b _08026EFE
_08026EE6:
	bl sub_08005934
	ldr r0, _08026F04 @ =0x08085344
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #2
	bl sub_08026E00
_08026EFE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026F04: .4byte 0x08085344

	thumb_func_start sub_08026F08
sub_08026F08: @ 0x08026F08
	push {r4, r5, lr}
	ldr r1, _08026F24 @ =0x030013E8
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	adds r5, r1, #0
	cmp r0, #0xb
	bls _08026F18
	b _080271C4
_08026F18:
	lsls r0, r0, #2
	ldr r1, _08026F28 @ =_08026F2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026F24: .4byte 0x030013E8
_08026F28: .4byte _08026F2C
_08026F2C: @ jump table
	.4byte _08026F5C @ case 0
	.4byte _08026F7A @ case 1
	.4byte _08026FC0 @ case 2
	.4byte _08027020 @ case 3
	.4byte _08027048 @ case 4
	.4byte _08027066 @ case 5
	.4byte _08027090 @ case 6
	.4byte _080270D0 @ case 7
	.4byte _08027108 @ case 8
	.4byte _08027168 @ case 9
	.4byte _08027182 @ case 10
	.4byte _080271BA @ case 11
_08026F5C:
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _08026F6E
	adds r0, r1, #0
	movs r1, #5
	bl sub_08009AFC
_08026F6E:
	bl sub_08027340
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _080271C4
_08026F7A:
	ldr r0, _08026FBC @ =0x030013E8
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _08026F96
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08026F96
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009AFC
_08026F96:
	ldr r4, _08026FBC @ =0x030013E8
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026FA6
	b _080271C4
_08026FA6:
	adds r0, r1, #0
	adds r0, #0x69
	ldrb r0, [r0]
	bl sub_08027EB4
	bl sub_08027E8C
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0xe]
	b _080271C4
	.align 2, 0
_08026FBC: .4byte 0x030013E8
_08026FC0:
	ldr r1, _08026FD4 @ =0x030024B0
	ldrh r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08026FD8
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #0xe]
	b _080271C4
	.align 2, 0
_08026FD4: .4byte 0x030024B0
_08026FD8:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08026FF0
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x69
	ldrb r0, [r4]
	cmp r0, #0
	beq _08026FF0
	adds r0, #2
	b _0802700C
_08026FF0:
	ldrh r1, [r1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08026FFC
	b _080271C4
_08026FFC:
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x69
	ldrb r0, [r4]
	cmp r0, #2
	bne _0802700A
	b _080271C4
_0802700A:
	adds r0, #1
_0802700C:
	movs r1, #3
	bl sub_08071064
	strb r0, [r4]
	ldr r0, [r5]
	adds r0, #0x69
	ldrb r0, [r0]
	bl sub_08027EB4
	b _080271C4
_08027020:
	bl sub_08027EF0
	ldr r4, _08027044 @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	movs r1, #0
	bl sub_08009B40
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #0xe]
	b _080271C4
	.align 2, 0
_08027044: .4byte 0x030013E8
_08027048:
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08027056
	b _080271C4
_08027056:
	adds r0, r1, #0
	movs r1, #1
	bl sub_08009AFC
	ldr r1, [r5]
	movs r0, #5
	strb r0, [r1, #0xe]
	b _080271C4
_08027066:
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08027074
	b _080271C4
_08027074:
	adds r0, r1, #0
	movs r1, #2
	bl sub_08009AFC
	movs r0, #0xa7
	lsls r0, r0, #1
	bl sub_0806F5DC
	bl sub_0802735C
	ldr r1, [r5]
	movs r0, #6
	strb r0, [r1, #0xe]
	b _080271C4
_08027090:
	ldr r4, _080270CC @ =0x030013E8
	ldr r0, [r4]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _080270B6
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080270B6
	adds r0, r1, #0
	movs r1, #4
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	movs r1, #0xff
	bl sub_08009B40
_080270B6:
	ldr r0, _080270CC @ =0x030013E8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _080270C6
	b _080271C4
_080270C6:
	movs r0, #7
	strb r0, [r1, #0xe]
	b _080271C4
	.align 2, 0
_080270CC: .4byte 0x030013E8
_080270D0:
	bl sub_08027D1C
	ldr r3, _08027104 @ =0x030013E8
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x69
	ldrb r2, [r0]
	cmp r2, #1
	bne _080270F8
	adds r1, #0x74
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x68
	adds r0, #0x6a
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r2, [r0]
_080270F8:
	ldr r0, [r3]
	movs r1, #0
	strh r1, [r0, #0x10]
	movs r1, #8
	strb r1, [r0, #0xe]
	b _080271C4
	.align 2, 0
_08027104: .4byte 0x030013E8
_08027108:
	ldr r0, [r5]
	adds r0, #0x78
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080271C4
	bl sub_08005934
	ldr r0, [r5]
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #1
	bne _08027144
	bl sub_08027A1C
	ldr r1, _08027140 @ =0x08085380
	ldr r0, [r5]
	adds r0, #0x74
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _08027152
	.align 2, 0
_08027140: .4byte 0x08085380
_08027144:
	bl sub_08027A3C
	ldr r0, _08027160 @ =0x08085368
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_08027152:
	ldr r0, _08027164 @ =0x030013E8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #9
	strb r0, [r1, #0xe]
	b _080271C4
	.align 2, 0
_08027160: .4byte 0x08085368
_08027164: .4byte 0x030013E8
_08027168:
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080271C4
	movs r0, #0xa
	strb r0, [r1, #0xe]
	movs r0, #0x3c
	bl sub_08002B98
	b _080271C4
_08027182:
	bl sub_08005A2C
	ldr r2, _080271B0 @ =0x030013E8
	ldr r1, [r2]
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080271A6
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #2
	bls _080271B4
_080271A6:
	ldr r1, [r2]
	movs r0, #0xb
	strb r0, [r1, #0xe]
	b _080271C4
	.align 2, 0
_080271B0: .4byte 0x030013E8
_080271B4:
	movs r0, #0
	strb r0, [r1, #0xe]
	b _080271C4
_080271BA:
	bl sub_08027F74
	movs r0, #3
	bl sub_08026E00
_080271C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080271CC
sub_080271CC: @ 0x080271CC
	push {r4, lr}
	sub sp, #4
	ldr r4, _080271E4 @ =0x030013E8
	ldr r1, [r4]
	ldrb r0, [r1, #0xe]
	cmp r0, #2
	beq _0802722C
	cmp r0, #2
	bgt _080271E8
	cmp r0, #0
	beq _080271F2
	b _0802728E
	.align 2, 0
_080271E4: .4byte 0x030013E8
_080271E8:
	cmp r0, #3
	beq _08027244
	cmp r0, #4
	beq _08027280
	b _0802728E
_080271F2:
	bl sub_08005934
	ldr r0, [r4]
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #2
	bls _08027210
	bl sub_08027A7C
	bl sub_080193B4
	ldr r0, _0802720C @ =0x08085370
	b _08027216
	.align 2, 0
_0802720C: .4byte 0x08085370
_08027210:
	bl sub_08027A5C
	ldr r0, _08027228 @ =0x08085378
_08027216:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0xe]
	b _0802728E
	.align 2, 0
_08027228: .4byte 0x08085378
_0802722C:
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0802728E
	movs r0, #3
	strb r0, [r1, #0xe]
	movs r0, #0xb4
	bl sub_08002B98
	b _0802728E
_08027244:
	bl sub_08005A2C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _08027278 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #0xe]
	ldr r0, _0802727C @ =0x030056F0
	movs r1, #4
	bl sub_0806F774
	b _0802728E
	.align 2, 0
_08027278: .4byte 0x030024E0
_0802727C: .4byte 0x030056F0
_08027280:
	bl sub_080003D0
	cmp r0, #0
	beq _0802728E
	movs r0, #4
	bl sub_08026E00
_0802728E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027298
sub_08027298: @ 0x08027298
	push {r4, lr}
	bl sub_080058A4
	ldr r4, _080272E4 @ =0x030013E8
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl sub_08007CF8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080272E4: .4byte 0x030013E8

	thumb_func_start sub_080272E8
sub_080272E8: @ 0x080272E8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802731C @ =0x030013E8
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08027320 @ =0x08085660
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802731C: .4byte 0x030013E8
_08027320: .4byte 0x08085660

	thumb_func_start sub_08027324
sub_08027324: @ 0x08027324
	push {lr}
	ldr r0, _0802733C @ =0x030013E8
	ldr r0, [r0]
	adds r0, #0x70
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_080272E8
	pop {r0}
	bx r0
	.align 2, 0
_0802733C: .4byte 0x030013E8

	thumb_func_start sub_08027340
sub_08027340: @ 0x08027340
	push {lr}
	ldr r0, _08027358 @ =0x030013E8
	ldr r0, [r0]
	adds r0, #0x70
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_080272E8
	pop {r0}
	bx r0
	.align 2, 0
_08027358: .4byte 0x030013E8

	thumb_func_start sub_0802735C
sub_0802735C: @ 0x0802735C
	push {lr}
	ldr r0, _08027374 @ =0x030013E8
	ldr r0, [r0]
	adds r0, #0x70
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_080272E8
	pop {r0}
	bx r0
	.align 2, 0
_08027374: .4byte 0x030013E8

	thumb_func_start sub_08027378
sub_08027378: @ 0x08027378
	push {lr}
	ldr r0, _08027390 @ =0x030013E8
	ldr r0, [r0]
	adds r0, #0x70
	movs r1, #1
	strb r1, [r0]
	movs r0, #4
	bl sub_080272E8
	pop {r0}
	bx r0
	.align 2, 0
_08027390: .4byte 0x030013E8

	thumb_func_start sub_08027394
sub_08027394: @ 0x08027394
	push {r4, r5, r6, lr}
	bl sub_08009DDC
	adds r6, r0, #0
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08009A70
	ldr r5, _080273F4 @ =0x030013E8
	ldr r0, [r5]
	ldr r1, [r0, #0x4c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08009B9C
	ldr r1, _080273F8 @ =0x080C9D18
	ldr r2, _080273FC @ =0x080C9CDC
	adds r0, r4, #0
	movs r3, #9
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x28]
	bl sub_08027324
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080273F4: .4byte 0x030013E8
_080273F8: .4byte 0x080C9D18
_080273FC: .4byte 0x080C9CDC

	thumb_func_start sub_08027400
sub_08027400: @ 0x08027400
	bx lr
	.align 2, 0

	thumb_func_start sub_08027404
sub_08027404: @ 0x08027404
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08027418
	cmp r0, #1
	beq _08027478
	b _08027502
_08027418:
	ldr r4, _08027474 @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	movs r1, #9
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	movs r1, #0xf0
	movs r2, #0x58
	bl sub_08009A70
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x24]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x24]
	movs r1, #0x68
	bl sub_08009E9C
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	movs r1, #1
	bl sub_08009B84
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	movs r1, #3
	movs r2, #0xc0
	bl sub_08009A0C
	movs r0, #1
	strb r0, [r5]
	b _08027502
	.align 2, 0
_08027474: .4byte 0x030013E8
_08027478:
	ldrh r1, [r5, #2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0x3c
	bl sub_08070FCC
	adds r0, #0xf0
	ldr r7, _08027508 @ =0x030013E8
	ldr r1, [r7]
	ldr r1, [r1, #0x28]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0x58
	bl sub_08009A70
	ldrh r0, [r5, #2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	movs r1, #0x68
	subs r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r1, #0xa
	bl sub_080711AC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080274C2
	adds r0, r4, #0
	movs r1, #0x58
	bl sub_08028194
_080274C2:
	ldr r0, [r7]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x24]
	adds r1, r6, #0
	bl sub_08009E9C
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08027502
	ldr r0, [r7]
	ldr r0, [r0, #0x28]
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08009A70
	ldr r0, [r7]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x24]
	movs r1, #0
	bl sub_08009E9C
	ldr r0, [r7]
	ldr r0, [r0, #0x28]
	movs r1, #0
	bl sub_08009B84
	bl sub_08027324
_08027502:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027508: .4byte 0x030013E8

	thumb_func_start sub_0802750C
sub_0802750C: @ 0x0802750C
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r2, [r4]
	cmp r2, #0
	beq _08027520
	cmp r2, #1
	beq _08027540
	b _08027608
_08027520:
	ldr r0, _0802753C @ =0x030013E8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x72
	strh r2, [r1]
	ldr r0, [r0, #0x28]
	movs r1, #0xa
	bl sub_08009AFC
	bl sub_080280D0
	movs r0, #1
	strb r0, [r4]
	b _08027608
	.align 2, 0
_0802753C: .4byte 0x030013E8
_08027540:
	ldr r0, _0802755C @ =0x030013E8
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0x69
	ldrb r2, [r2]
	adds r4, r0, #0
	cmp r2, #1
	beq _08027566
	cmp r2, #1
	bgt _08027560
	cmp r2, #0
	beq _08027578
	b _08027608
	.align 2, 0
_0802755C: .4byte 0x030013E8
_08027560:
	cmp r2, #2
	beq _08027588
	b _08027608
_08027566:
	adds r0, r3, #0
	adds r0, #0x72
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08027574 @ =0x08085414
	b _08027592
	.align 2, 0
_08027574: .4byte 0x08085414
_08027578:
	adds r0, r3, #0
	adds r0, #0x72
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08027584 @ =0x08085494
	b _08027592
	.align 2, 0
_08027584: .4byte 0x08085494
_08027588:
	adds r0, r3, #0
	adds r0, #0x72
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _080275F4 @ =0x08085514
_08027592:
	adds r2, r0, r1
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	ldrh r1, [r2]
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #2]
	adds r2, #0x58
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0]
	lsls r0, r0, #1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	subs r2, r2, r0
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x24]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x72
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08027608
	adds r0, r1, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #1
	bne _080275FC
	ldr r0, _080275F8 @ =0x0000014F
	bl sub_0806F5DC
	b _08027604
	.align 2, 0
_080275F4: .4byte 0x08085514
_080275F8: .4byte 0x0000014F
_080275FC:
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_0806F5DC
_08027604:
	bl sub_08027378
_08027608:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027610
sub_08027610: @ 0x08027610
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r2, [r5]
	cmp r2, #0
	beq _08027624
	cmp r2, #1
	beq _08027698
	b _0802776C
_08027624:
	ldr r4, _08027668 @ =0x030013E8
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x72
	strh r2, [r0]
	ldr r0, [r1, #0x28]
	ldr r3, _0802766C @ =0x08085654
	adds r1, #0x69
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #1
	bne _08027670
	ldr r0, [r1, #0x28]
	movs r1, #3
	movs r2, #0xe1
	bl sub_08009A0C
	bl sub_080280D0
	b _08027692
	.align 2, 0
_08027668: .4byte 0x030013E8
_0802766C: .4byte 0x08085654
_08027670:
	ldr r0, [r1, #0x2c]
	ldr r2, [r1, #0x28]
	movs r6, #6
	ldrsh r1, [r2, r6]
	movs r3, #8
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl sub_08009BA0
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	movs r1, #1
	bl sub_08009A34
_08027692:
	movs r0, #1
	strb r0, [r5]
	b _0802776C
_08027698:
	ldr r4, _080276C8 @ =0x030013E8
	ldr r0, [r4]
	ldr r3, [r0, #0x2c]
	ldrh r2, [r3]
	ldr r1, _080276CC @ =0x00008001
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _080276B2
	adds r0, r3, #0
	movs r1, #0
	bl sub_08009A34
_080276B2:
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x69
	ldrb r1, [r1]
	cmp r1, #1
	beq _080276E4
	cmp r1, #1
	bgt _080276D0
	cmp r1, #0
	beq _080276D6
	b _0802776C
	.align 2, 0
_080276C8: .4byte 0x030013E8
_080276CC: .4byte 0x00008001
_080276D0:
	cmp r1, #2
	beq _080276F4
	b _0802776C
_080276D6:
	adds r0, #0x72
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _080276E0 @ =0x08085594
	b _080276FC
	.align 2, 0
_080276E0: .4byte 0x08085594
_080276E4:
	adds r0, #0x72
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _080276F0 @ =0x080855D4
	b _080276FC
	.align 2, 0
_080276F0: .4byte 0x080855D4
_080276F4:
	adds r0, #0x72
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08027754 @ =0x08085614
_080276FC:
	adds r6, r0, r1
	ldr r5, _08027758 @ =0x030013E8
	ldr r1, [r5]
	ldr r0, [r1, #0x28]
	ldr r2, _0802775C @ =0x08085654
	adds r1, #0x69
	ldrb r3, [r1]
	lsls r3, r3, #2
	adds r4, r3, r2
	ldrh r1, [r6]
	ldrh r4, [r4]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #2
	adds r3, r3, r2
	ldrh r2, [r6, #2]
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0x72
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802776C
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #1
	bne _08027760
	ldr r0, [r2, #0x28]
	movs r1, #9
	bl sub_08009AFC
	b _08027768
	.align 2, 0
_08027754: .4byte 0x08085614
_08027758: .4byte 0x030013E8
_0802775C: .4byte 0x08085654
_08027760:
	ldr r0, [r2, #0x28]
	movs r1, #0
	bl sub_08009A34
_08027768:
	bl sub_08027324
_0802776C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027774
sub_08027774: @ 0x08027774
	push {r4, lr}
	ldr r4, _08027790 @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027790: .4byte 0x030013E8

	thumb_func_start sub_08027794
sub_08027794: @ 0x08027794
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #3
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08009A70
	ldr r1, _08027924 @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _08027928 @ =0x030013E8
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802792C @ =0x080853AC
	ldr r0, _08027930 @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _08027934 @ =0x080853BC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x14]
	movs r6, #0
	mov sb, r4
	ldr r7, _08027938 @ =0x080853E6
	ldr r0, _0802793C @ =0x080853CC
	adds r0, #6
	mov r8, r0
_08027806:
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	lsls r4, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r5, #0
	bl sub_08009A70
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #0x4c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	mov r2, r8
	ldrb r3, [r2]
	adds r0, r5, #0
	ldr r1, _08027940 @ =0x080C9D18
	ldr r2, _08027944 @ =0x080C9CDC
	bl sub_08009ACC
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x1c
	adds r0, r0, r4
	str r5, [r0]
	adds r7, #4
	movs r2, #2
	add r8, r2
	adds r6, #1
	cmp r6, #2
	ble _08027806
	movs r0, #3
	movs r1, #0xdf
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08009A70
	ldr r4, _08027928 @ =0x030013E8
	ldr r0, [r4]
	ldr r1, [r0, #0x4c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08027940 @ =0x080C9D18
	ldr r2, _08027944 @ =0x080C9CDC
	adds r0, r5, #0
	movs r3, #8
	bl sub_08009ACC
	ldr r0, [r4]
	str r5, [r0, #0x2c]
	movs r6, #0
	adds r7, r4, #0
	ldr r0, _08027948 @ =0x080B8664
	mov r8, r0
_080278A4:
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0802794C @ =0x080853DE
	lsls r4, r6, #1
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x54]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #6
	bl sub_08009AB4
	ldr r0, _08027950 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _08027954 @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #0x30]
	ldr r0, _08027958 @ =0x080853E2
	adds r4, r4, r0
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_08009ACC
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x44
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #1
	ble _080278A4
	ldr r0, _08027928 @ =0x030013E8
	ldr r0, [r0]
	movs r2, #2
	ldrsh r0, [r0, r2]
	ldr r1, _0802795C @ =sub_08027960
	bl sub_08007B84
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027924: .4byte 0x06010000
_08027928: .4byte 0x030013E8
_0802792C: .4byte 0x080853AC
_08027930: .4byte 0x03004488
_08027934: .4byte 0x080853BC
_08027938: .4byte 0x080853E6
_0802793C: .4byte 0x080853CC
_08027940: .4byte 0x080C9D18
_08027944: .4byte 0x080C9CDC
_08027948: .4byte 0x080B8664
_0802794C: .4byte 0x080853DE
_08027950: .4byte 0x03004400
_08027954: .4byte 0x080B8660
_08027958: .4byte 0x080853E2
_0802795C: .4byte sub_08027960

	thumb_func_start sub_08027960
sub_08027960: @ 0x08027960
	bx lr
	.align 2, 0

	thumb_func_start sub_08027964
sub_08027964: @ 0x08027964
	push {r4, r5, lr}
	ldr r4, _080279BC @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	bl sub_08009A00
	movs r5, #0
_08027972:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #2
	ble _08027972
	ldr r4, _080279BC @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl sub_08009A00
	movs r5, #0
_08027992:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #1
	ble _08027992
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080279BC: .4byte 0x030013E8

	thumb_func_start sub_080279C0
sub_080279C0: @ 0x080279C0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080279F4 @ =0x030013E8
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _080279F8 @ =0x08085674
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080279F4: .4byte 0x030013E8
_080279F8: .4byte 0x08085674

	thumb_func_start sub_080279FC
sub_080279FC: @ 0x080279FC
	push {lr}
	ldr r0, _08027A18 @ =0x030013E8
	ldr r1, [r0]
	adds r1, #0x78
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_080279C0
	pop {r0}
	bx r0
	.align 2, 0
_08027A18: .4byte 0x030013E8

	thumb_func_start sub_08027A1C
sub_08027A1C: @ 0x08027A1C
	push {lr}
	ldr r0, _08027A38 @ =0x030013E8
	ldr r1, [r0]
	adds r1, #0x78
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080279C0
	pop {r0}
	bx r0
	.align 2, 0
_08027A38: .4byte 0x030013E8

	thumb_func_start sub_08027A3C
sub_08027A3C: @ 0x08027A3C
	push {lr}
	ldr r0, _08027A58 @ =0x030013E8
	ldr r1, [r0]
	adds r1, #0x78
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_080279C0
	pop {r0}
	bx r0
	.align 2, 0
_08027A58: .4byte 0x030013E8

	thumb_func_start sub_08027A5C
sub_08027A5C: @ 0x08027A5C
	push {lr}
	ldr r0, _08027A78 @ =0x030013E8
	ldr r1, [r0]
	adds r1, #0x78
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_080279C0
	pop {r0}
	bx r0
	.align 2, 0
_08027A78: .4byte 0x030013E8

	thumb_func_start sub_08027A7C
sub_08027A7C: @ 0x08027A7C
	push {lr}
	ldr r0, _08027A98 @ =0x030013E8
	ldr r1, [r0]
	adds r1, #0x78
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #4
	bl sub_080279C0
	pop {r0}
	bx r0
	.align 2, 0
_08027A98: .4byte 0x030013E8

	thumb_func_start sub_08027A9C
sub_08027A9C: @ 0x08027A9C
	push {lr}
	ldr r0, _08027AAC @ =0x030013E8
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08027AAC: .4byte 0x030013E8

	thumb_func_start sub_08027AB0
sub_08027AB0: @ 0x08027AB0
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0xe0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x32
	bl sub_08009A70
	ldr r1, _08027B18 @ =0x06010400
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _08027B1C @ =0x030013E8
	ldr r0, [r5]
	ldr r1, [r0, #0x64]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08027B20 @ =0x080DE198
	ldr r2, _08027B24 @ =0x080DE160
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x18]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08027B28 @ =sub_08027A9C
	bl sub_08007BA0
	bl sub_080279FC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027B18: .4byte 0x06010400
_08027B1C: .4byte 0x030013E8
_08027B20: .4byte 0x080DE198
_08027B24: .4byte 0x080DE160
_08027B28: .4byte sub_08027A9C

	thumb_func_start sub_08027B2C
sub_08027B2C: @ 0x08027B2C
	bx lr
	.align 2, 0

	thumb_func_start sub_08027B30
sub_08027B30: @ 0x08027B30
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08027B70
	cmp r0, #1
	bgt _08027B48
	cmp r0, #0
	beq _08027B4E
	b _08027BA0
_08027B48:
	cmp r0, #2
	beq _08027B9C
	b _08027BA0
_08027B4E:
	ldr r4, _08027B6C @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #2
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _08027BA0
	.align 2, 0
_08027B6C: .4byte 0x030013E8
_08027B70:
	ldr r4, _08027B98 @ =0x030013E8
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08027BA0
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #2
	strb r0, [r5]
	b _08027BA0
	.align 2, 0
_08027B98: .4byte 0x030013E8
_08027B9C:
	bl sub_080279FC
_08027BA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027BA8
sub_08027BA8: @ 0x08027BA8
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08027BE8
	cmp r0, #1
	bgt _08027BC0
	cmp r0, #0
	beq _08027BC6
	b _08027C18
_08027BC0:
	cmp r0, #2
	beq _08027C14
	b _08027C18
_08027BC6:
	ldr r4, _08027BE4 @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #2
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _08027C18
	.align 2, 0
_08027BE4: .4byte 0x030013E8
_08027BE8:
	ldr r4, _08027C10 @ =0x030013E8
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08027C18
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #2
	strb r0, [r5]
	b _08027C18
	.align 2, 0
_08027C10: .4byte 0x030013E8
_08027C14:
	bl sub_080279FC
_08027C18:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027C20
sub_08027C20: @ 0x08027C20
	push {r4, lr}
	ldr r4, _08027C44 @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #0xff
	bl sub_08009B40
	bl sub_080279FC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027C44: .4byte 0x030013E8

	thumb_func_start sub_08027C48
sub_08027C48: @ 0x08027C48
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08027C88
	cmp r0, #1
	bgt _08027C60
	cmp r0, #0
	beq _08027C66
	b _08027CB8
_08027C60:
	cmp r0, #2
	beq _08027CB4
	b _08027CB8
_08027C66:
	ldr r4, _08027C84 @ =0x030013E8
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _08027CB8
	.align 2, 0
_08027C84: .4byte 0x030013E8
_08027C88:
	ldr r4, _08027CB0 @ =0x030013E8
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08027CB8
	adds r0, r1, #0
	movs r1, #4
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #2
	strb r0, [r5]
	b _08027CB8
	.align 2, 0
_08027CB0: .4byte 0x030013E8
_08027CB4:
	bl sub_080279FC
_08027CB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027CC0
sub_08027CC0: @ 0x08027CC0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08027CF4 @ =0x030013E8
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08027CF8 @ =0x08085688
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027CF4: .4byte 0x030013E8
_08027CF8: .4byte 0x08085688

	thumb_func_start sub_08027CFC
sub_08027CFC: @ 0x08027CFC
	push {lr}
	ldr r0, _08027D18 @ =0x030013E8
	ldr r1, [r0]
	adds r1, #0x78
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08027CC0
	pop {r0}
	bx r0
	.align 2, 0
_08027D18: .4byte 0x030013E8

	thumb_func_start sub_08027D1C
sub_08027D1C: @ 0x08027D1C
	push {lr}
	ldr r0, _08027D38 @ =0x030013E8
	ldr r1, [r0]
	adds r1, #0x78
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08027CC0
	pop {r0}
	bx r0
	.align 2, 0
_08027D38: .4byte 0x030013E8

	thumb_func_start sub_08027D3C
sub_08027D3C: @ 0x08027D3C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08027D5C @ =0x030013E8
_08027D42:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x30
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #4
	ble _08027D42
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027D5C: .4byte 0x030013E8

	thumb_func_start sub_08027D60
sub_08027D60: @ 0x08027D60
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08027DD0 @ =0x030013E8
_08027D66:
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r1, _08027DD4 @ =0x080853F6
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #8
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x4c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _08027DD8 @ =0x080C9D18
	ldr r2, _08027DDC @ =0x080C9CDC
	movs r3, #1
	bl sub_08009ACC
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r0, #0x30
	adds r0, r0, r1
	str r4, [r0]
	adds r5, #1
	cmp r5, #4
	ble _08027D66
	ldr r0, _08027DD0 @ =0x030013E8
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08027DE0 @ =sub_08027D3C
	bl sub_08007BA0
	bl sub_08027CFC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027DD0: .4byte 0x030013E8
_08027DD4: .4byte 0x080853F6
_08027DD8: .4byte 0x080C9D18
_08027DDC: .4byte 0x080C9CDC
_08027DE0: .4byte sub_08027D3C

	thumb_func_start sub_08027DE4
sub_08027DE4: @ 0x08027DE4
	bx lr
	.align 2, 0

	thumb_func_start sub_08027DE8
sub_08027DE8: @ 0x08027DE8
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _08027E2E
	cmp r0, #1
	bgt _08027E00
	cmp r0, #0
	beq _08027E06
	b _08027E84
_08027E00:
	cmp r0, #2
	beq _08027E80
	b _08027E84
_08027E06:
	ldr r0, _08027E78 @ =0x030013E8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r3, [r0]
	lsls r2, r3, #2
	subs r0, #0x38
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _08027E7C @ =0x080853F2
	adds r1, #0x6a
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4]
_08027E2E:
	ldr r5, _08027E78 @ =0x030013E8
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x30
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r4, #2]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_08009A34
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _08027E84
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x30
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
	movs r0, #2
	strb r0, [r4]
	b _08027E84
	.align 2, 0
_08027E78: .4byte 0x030013E8
_08027E7C: .4byte 0x080853F2
_08027E80:
	bl sub_08027CFC
_08027E84:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027E8C
sub_08027E8C: @ 0x08027E8C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08027EB0 @ =0x030013E8
_08027E92:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	adds r4, #1
	cmp r4, #2
	ble _08027E92
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027EB0: .4byte 0x030013E8

	thumb_func_start sub_08027EB4
sub_08027EB4: @ 0x08027EB4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08027EE8 @ =0x080853CC
_08027EBA:
	ldr r0, _08027EEC @ =0x030013E8
	ldr r1, [r0]
	lsls r2, r4, #2
	adds r0, r1, #0
	adds r0, #0x1c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, #0x69
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	bl sub_08009AFC
	adds r4, #1
	cmp r4, #2
	ble _08027EBA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027EE8: .4byte 0x080853CC
_08027EEC: .4byte 0x030013E8

	thumb_func_start sub_08027EF0
sub_08027EF0: @ 0x08027EF0
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08027F14 @ =0x030013E8
_08027EF6:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #2
	ble _08027EF6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027F14: .4byte 0x030013E8

	thumb_func_start sub_08027F18
sub_08027F18: @ 0x08027F18
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _08027F68 @ =0x030013E8
_08027F20:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08027F6C @ =0x080853E2
	lsls r4, r5, #1
	adds r1, r4, r1
	ldrh r1, [r1]
	ldr r2, _08027F70 @ =0x080853DE
	adds r2, r4, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0x41
	str r3, [sp]
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	adds r1, #4
	adds r1, r1, r4
	strh r0, [r1]
	adds r5, #1
	cmp r5, #1
	ble _08027F20
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027F68: .4byte 0x030013E8
_08027F6C: .4byte 0x080853E2
_08027F70: .4byte 0x080853DE

	thumb_func_start sub_08027F74
sub_08027F74: @ 0x08027F74
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08027F98 @ =0x030013E8
_08027F7A:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #1
	ble _08027F7A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027F98: .4byte 0x030013E8

	thumb_func_start sub_08027F9C
sub_08027F9C: @ 0x08027F9C
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08027FB0
	cmp r0, #1
	beq _08028048
	b _080280C8
_08027FB0:
	ldr r0, _08028038 @ =0x030013E8
	ldr r1, [r0]
	ldr r0, [r1, #0x28]
	ldrh r0, [r0, #6]
	strh r0, [r5, #2]
	ldr r0, [r1, #0x28]
	ldrh r0, [r0, #8]
	strh r0, [r5, #4]
	movs r6, #0
	adds r7, r5, #0
	adds r7, #8
_08027FC6:
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	movs r0, #2
	ldrsh r1, [r5, r0]
	ldrh r2, [r5, #4]
	adds r2, #6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _08028038 @ =0x030013E8
	ldr r0, [r0]
	ldr r1, [r0, #0x50]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #5
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _0802803C @ =0x080CAD0C
	ldr r2, _08028040 @ =0x080CACE0
	movs r3, #0
	bl sub_08009ACC
	cmp r6, #0
	beq _08028024
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r4, #0x24]
	ldr r1, _08028044 @ =0xFFFFFF00
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08009E84
_08028024:
	stm r7!, {r4}
	adds r6, #1
	cmp r6, #1
	ble _08027FC6
	movs r1, #0
	movs r0, #1
	strb r0, [r5]
	strb r1, [r5, #1]
	b _080280C8
	.align 2, 0
_08028038: .4byte 0x030013E8
_0802803C: .4byte 0x080CAD0C
_08028040: .4byte 0x080CACE0
_08028044: .4byte 0xFFFFFF00
_08028048:
	ldr r0, [r5, #8]
	ldrb r2, [r5, #1]
	lsrs r2, r2, #2
	ldrh r1, [r5, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #4]
	adds r2, #6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r5, #0xc]
	ldrb r1, [r5, #1]
	lsrs r1, r1, #2
	ldrh r2, [r5, #2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #4]
	adds r2, #6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	ldr r2, [r5, #8]
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080280B6
	ldr r1, [r5, #0xc]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080280AE
	ldr r0, [r1, #0x24]
	bl sub_08009E54
	ldr r0, [r5, #8]
	bl sub_08009A00
	ldr r0, [r5, #0xc]
	bl sub_08009A00
	bl sub_08007A64
	b _080280C8
_080280AE:
	adds r0, r2, #0
	movs r1, #0
	bl sub_08009A34
_080280B6:
	ldr r1, [r5, #0xc]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080280C8
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009A34
_080280C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080280D0
sub_080280D0: @ 0x080280D0
	push {lr}
	ldr r0, _080280EC @ =sub_08027F9C
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080280EC: .4byte sub_08027F9C

	thumb_func_start sub_080280F0
sub_080280F0: @ 0x080280F0
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08028104
	cmp r0, #1
	beq _08028174
	b _0802818E
_08028104:
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r0, #4
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _08028164 @ =0x030013E8
	ldr r0, [r0]
	ldr r1, [r0, #0x50]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #5
	bl sub_08009AB4
	ldr r1, _08028168 @ =0x080CAD0C
	ldr r2, _0802816C @ =0x080CACE0
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r4, #0x24]
	ldr r1, _08028170 @ =0xFFFFFF00
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08009E84
	str r4, [r5, #8]
	movs r0, #1
	strb r0, [r5]
	b _0802818E
	.align 2, 0
_08028164: .4byte 0x030013E8
_08028168: .4byte 0x080CAD0C
_0802816C: .4byte 0x080CACE0
_08028170: .4byte 0xFFFFFF00
_08028174:
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802818E
	ldr r0, [r1, #0x24]
	bl sub_08009E54
	ldr r0, [r5, #8]
	bl sub_08009A00
	bl sub_08007A64
_0802818E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08028194
sub_08028194: @ 0x08028194
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080281C8 @ =sub_080280F0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r5, [r0, #2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #6
	strh r4, [r0, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080281C8: .4byte sub_080280F0

	thumb_func_start sub_080281CC
sub_080281CC: @ 0x080281CC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r6, _08028354 @ =0x030013EC
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r6]
	movs r0, #0
	movs r2, #0xbc
	bl sub_08007EFC
	ldr r0, _08028358 @ =0x080859C4
	ldr r0, [r0]
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r0, #0
	bl sub_08028718
	ldr r0, _0802835C @ =0x080859D8
	ldr r0, [r0]
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #4]
	movs r0, #0
	bl sub_08028BF8
	ldr r0, _08028360 @ =0x080859E4
	ldr r0, [r0]
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #8]
	ldr r0, _08028364 @ =0x08085A10
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0xa]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldr r1, _08028368 @ =sub_08029304
	bl sub_08007BA0
	ldr r0, _0802836C @ =0x08085A24
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0xc]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldr r1, _08028370 @ =sub_08029568
	bl sub_08007BA0
	movs r0, #0
	bl sub_08029334
	ldr r0, _08028374 @ =sub_08029740
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x10]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	ldr r1, _08028378 @ =sub_080297C0
	bl sub_08007BA0
	ldr r1, _0802837C @ =0x080856D0
	ldr r4, _08028380 @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08028384 @ =0x05000200
	bl sub_08008308
	ldr r1, _08028388 @ =0x080856E0
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0xa0
	str r0, [r2]
	adds r1, #0xa4
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r1, _0802838C @ =0x08085A50
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0xb0
	str r0, [r2]
	adds r1, #0xb4
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r4, _08028390 @ =0x06010400
	ldr r0, _08028394 @ =0x080D5CD4
	ldr r1, _08028398 @ =0x05000220
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x6c]
	ldr r0, _0802839C @ =0x080D5E34
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _080283A0 @ =0x080CAA94
	ldr r1, _080283A4 @ =0x05000240
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x70]
	ldr r0, _080283A8 @ =0x080CAB38
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, _080283AC @ =0x080CAC38
	ldr r1, _080283B0 @ =0x05000260
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x74]
	ldr r0, _080283B4 @ =0x080CAD1C
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _080283B8 @ =0x080B85E8
	ldr r5, _080283BC @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080283C0 @ =0x05000280
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x78]
	ldr r1, _080283C4 @ =0x080B8624
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _080283C8 @ =0x080856BC
	bl sub_0800B02C
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028354: .4byte 0x030013EC
_08028358: .4byte 0x080859C4
_0802835C: .4byte 0x080859D8
_08028360: .4byte 0x080859E4
_08028364: .4byte 0x08085A10
_08028368: .4byte sub_08029304
_0802836C: .4byte 0x08085A24
_08028370: .4byte sub_08029568
_08028374: .4byte sub_08029740
_08028378: .4byte sub_080297C0
_0802837C: .4byte 0x080856D0
_08028380: .4byte 0x03004488
_08028384: .4byte 0x05000200
_08028388: .4byte 0x080856E0
_0802838C: .4byte 0x08085A50
_08028390: .4byte 0x06010400
_08028394: .4byte 0x080D5CD4
_08028398: .4byte 0x05000220
_0802839C: .4byte 0x080D5E34
_080283A0: .4byte 0x080CAA94
_080283A4: .4byte 0x05000240
_080283A8: .4byte 0x080CAB38
_080283AC: .4byte 0x080CAC38
_080283B0: .4byte 0x05000260
_080283B4: .4byte 0x080CAD1C
_080283B8: .4byte 0x080B85E8
_080283BC: .4byte 0x03004400
_080283C0: .4byte 0x05000280
_080283C4: .4byte 0x080B8624
_080283C8: .4byte 0x080856BC

	thumb_func_start sub_080283CC
sub_080283CC: @ 0x080283CC
	push {r4, lr}
	ldr r1, _080283EC @ =0x0808574C
	ldr r4, _080283F0 @ =0x030013EC
	ldr r0, [r4]
	ldrb r0, [r0, #0x15]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0x14]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080283EC: .4byte 0x0808574C
_080283F0: .4byte 0x030013EC

	thumb_func_start sub_080283F4
sub_080283F4: @ 0x080283F4
	ldr r1, _08028408 @ =0x030013EC
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0x15]
	ldr r0, [r1]
	strb r3, [r0, #0x16]
	ldr r0, [r1]
	strh r3, [r0, #0x18]
	bx lr
	.align 2, 0
_08028408: .4byte 0x030013EC

	thumb_func_start sub_0802840C
sub_0802840C: @ 0x0802840C
	push {r4, r5, r6, r7, lr}
	ldr r6, _0802844C @ =0x030013EC
	movs r5, #0
	movs r7, #0
_08028414:
	bl sub_08029994
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [r6]
	adds r1, r3, r5
	ldrh r4, [r1, #0x3c]
	cmp r2, #0
	beq _08028450
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	ble _08028440
	adds r4, r0, #0
	ldr r0, [r3, #0x60]
	movs r1, #1
	bl sub_08009A34
_08028440:
	ldr r0, [r6]
	adds r0, r0, r5
	adds r0, #0x3e
	movs r1, #0
	strb r1, [r0]
	b _08028458
	.align 2, 0
_0802844C: .4byte 0x030013EC
_08028450:
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08028458:
	ldr r0, [r6]
	adds r0, r0, r5
	strh r4, [r0, #0x3c]
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _08028414
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802846C
sub_0802846C: @ 0x0802846C
	push {r4, lr}
	ldr r4, _08028480 @ =0x030013EC
	ldr r0, [r4]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _08028484
	cmp r0, #1
	beq _080284D8
	b _080284F0
	.align 2, 0
_08028480: .4byte 0x030013EC
_08028484:
	bl sub_08008174
	ldr r2, _080284C8 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080284CC @ =0x00001E02
	strh r0, [r2, #6]
	adds r1, r2, #0
	adds r1, #0x4a
	ldr r0, _080284D0 @ =0x00003F44
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080284D4 @ =0x00000A06
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	strb r1, [r0, #0x16]
	b _080284F0
	.align 2, 0
_080284C8: .4byte 0x030024E0
_080284CC: .4byte 0x00001E02
_080284D0: .4byte 0x00003F44
_080284D4: .4byte 0x00000A06
_080284D8:
	bl sub_080003D0
	cmp r0, #0
	beq _080284F0
	ldr r2, _080284F8 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _080284FC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_080283F4
_080284F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080284F8: .4byte 0x030024E0
_080284FC: .4byte 0x0000FEFF

	thumb_func_start sub_08028500
sub_08028500: @ 0x08028500
	push {r4, r5, r6, lr}
	ldr r4, _08028514 @ =0x030013EC
	ldr r2, [r4]
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	beq _08028518
	cmp r0, #3
	beq _0802856E
	b _08028574
	.align 2, 0
_08028514: .4byte 0x030013EC
_08028518:
	adds r2, #0xb8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	bl sub_08028784
	movs r0, #0
	bl sub_08028C6C
	bl sub_08028ECC
	movs r2, #0
	adds r3, r4, #0
	movs r4, #0
	movs r5, #0
	adds r6, r3, #0
_0802853E:
	ldr r0, [r3]
	lsls r1, r2, #2
	adds r0, r0, r1
	strh r5, [r0, #0x3c]
	adds r0, #0x3e
	strb r4, [r0]
	ldr r0, [r3]
	adds r0, r0, r1
	adds r0, #0x3f
	strb r4, [r0]
	adds r2, #1
	cmp r2, #0
	ble _0802853E
	ldr r1, [r6]
	adds r1, #0xb8
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r6]
	movs r0, #3
	strb r0, [r1, #0x16]
	b _08028574
_0802856E:
	movs r0, #2
	bl sub_080283F4
_08028574:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802857C
sub_0802857C: @ 0x0802857C
	push {r4, r5, lr}
	ldr r5, _080285A4 @ =0x030013EC
	ldr r2, [r5]
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	bne _08028608
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r4, [r0]
	cmp r4, #0
	bne _08028608
	ldrb r0, [r2, #0x16]
	cmp r0, #1
	beq _080285D4
	cmp r0, #1
	bgt _080285A8
	cmp r0, #0
	beq _080285AE
	b _08028608
	.align 2, 0
_080285A4: .4byte 0x030013EC
_080285A8:
	cmp r0, #2
	beq _08028602
	b _08028608
_080285AE:
	ldr r0, _080285D0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08028608
	movs r0, #3
	bl sub_08029924
	movs r0, #0
	bl sub_080287C4
	ldr r1, [r5]
	strh r4, [r1, #0x18]
	movs r0, #1
	strb r0, [r1, #0x16]
	b _08028608
	.align 2, 0
_080285D0: .4byte 0x030024B0
_080285D4:
	ldrh r0, [r2, #0x18]
	adds r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080285FC
	adds r2, #0xb8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	strh r4, [r1, #0x18]
	movs r0, #2
	strb r0, [r1, #0x16]
	bl sub_0802996C
	b _08028608
_080285FC:
	bl sub_0802840C
	b _08028608
_08028602:
	movs r0, #3
	bl sub_080283F4
_08028608:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028610
sub_08028610: @ 0x08028610
	push {lr}
	sub sp, #4
	ldr r0, _08028628 @ =0x030013EC
	ldr r1, [r0]
	ldrb r0, [r1, #0x16]
	cmp r0, #1
	beq _0802865E
	cmp r0, #1
	bgt _0802862C
	cmp r0, #0
	beq _08028636
	b _0802869E
	.align 2, 0
_08028628: .4byte 0x030013EC
_0802862C:
	cmp r0, #2
	beq _0802866A
	cmp r0, #3
	beq _0802867C
	b _0802869E
_08028636:
	adds r0, r1, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08028652
	movs r0, #1
	strb r0, [r1, #0x16]
	bl sub_080193B4
	movs r0, #0
	bl sub_08028804
	b _0802869E
_08028652:
	movs r0, #2
	strb r0, [r1, #0x16]
	movs r0, #0
	bl sub_080287E4
	b _08028674
_0802865E:
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	bne _0802869E
	movs r0, #3
	strb r0, [r1, #0x16]
	b _0802869E
_0802866A:
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	bne _0802869E
	movs r0, #3
	strb r0, [r1, #0x16]
_08028674:
	movs r0, #0x3c
	bl sub_08002B98
	b _0802869E
_0802867C:
	movs r0, #0
	str r0, [sp]
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _080286A4 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #4
	bl sub_080283F4
_0802869E:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080286A4: .4byte 0x030024E0

	thumb_func_start sub_080286A8
sub_080286A8: @ 0x080286A8
	push {r4, lr}
	bl sub_080003D0
	cmp r0, #0
	beq _0802870E
	bl sub_0800B17C
	ldr r4, _08028714 @ =0x030013EC
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	adds r0, #0xa0
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0xb0
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x14]
_0802870E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028714: .4byte 0x030013EC

	thumb_func_start sub_08028718
sub_08028718: @ 0x08028718
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08028738 @ =0x030013EC
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028738: .4byte 0x030013EC

	thumb_func_start sub_0802873C
sub_0802873C: @ 0x0802873C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0802877C @ =0x030013EC
	ldr r1, [r6]
	lsrs r0, r0, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08028780 @ =0x080859C4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r5, #1]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802877C: .4byte 0x030013EC
_08028780: .4byte 0x080859C4

	thumb_func_start sub_08028784
sub_08028784: @ 0x08028784
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080287A0 @ =0x030013EC
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x1c]
	movs r1, #0
	bl sub_0802873C
	pop {r0}
	bx r0
	.align 2, 0
_080287A0: .4byte 0x030013EC

	thumb_func_start sub_080287A4
sub_080287A4: @ 0x080287A4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080287C0 @ =0x030013EC
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x1c]
	movs r1, #1
	bl sub_0802873C
	pop {r0}
	bx r0
	.align 2, 0
_080287C0: .4byte 0x030013EC

	thumb_func_start sub_080287C4
sub_080287C4: @ 0x080287C4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080287E0 @ =0x030013EC
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x1c]
	movs r1, #2
	bl sub_0802873C
	pop {r0}
	bx r0
	.align 2, 0
_080287E0: .4byte 0x030013EC

	thumb_func_start sub_080287E4
sub_080287E4: @ 0x080287E4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08028800 @ =0x030013EC
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	movs r2, #1
	strb r2, [r1, #0x1c]
	movs r1, #3
	bl sub_0802873C
	pop {r0}
	bx r0
	.align 2, 0
_08028800: .4byte 0x030013EC

	thumb_func_start sub_08028804
sub_08028804: @ 0x08028804
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08028820 @ =0x030013EC
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	movs r2, #1
	strb r2, [r1, #0x1c]
	movs r1, #4
	bl sub_0802873C
	pop {r0}
	bx r0
	.align 2, 0
_08028820: .4byte 0x030013EC

	thumb_func_start sub_08028824
sub_08028824: @ 0x08028824
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r5, _0802888C @ =0x030013EC
	ldr r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r3, #0
	movs r1, #0x6c
	strh r1, [r0, #0x1e]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r1, #0x58
	strh r1, [r0, #0x20]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r2, r2, r0
	strb r3, [r2, #0x1d]
	ldr r1, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	movs r0, #0xd8
	lsls r0, r0, #7
	strh r0, [r1, #0x28]
	ldrb r0, [r4]
	bl sub_080287A4
	ldr r1, [r5]
	ldrb r2, [r4]
	lsls r3, r2, #2
	adds r0, r1, #0
	adds r0, #0x44
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08028890 @ =0x08085710
	lsls r2, r2, #4
	adds r1, r1, r2
	ldrb r1, [r1, #0x1d]
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802888C: .4byte 0x030013EC
_08028890: .4byte 0x08085710

	thumb_func_start sub_08028894
sub_08028894: @ 0x08028894
	bx lr
	.align 2, 0

	thumb_func_start sub_08028898
sub_08028898: @ 0x08028898
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	ldr r0, _08028978 @ =0x030013EC
	ldr r2, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #4
	adds r1, r2, r1
	ldrh r0, [r1, #0x28]
	adds r0, #0x11
	strh r0, [r1, #0x28]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r2, r0
	ldrh r0, [r0, #0x3c]
	asrs r0, r0, #7
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r2, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080288E0
	lsls r0, r1, #4
	adds r1, r2, r0
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	bne _080288E0
	movs r0, #1
	strb r0, [r1, #0x1c]
_080288E0:
	ldrh r0, [r4, #2]
	movs r1, #7
	subs r1, r1, r6
	bl sub_08071064
	cmp r0, #0
	beq _080288F0
	b _08028A0E
_080288F0:
	ldr r5, _08028978 @ =0x030013EC
	ldr r1, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r2, [r1, #0x1d]
	adds r3, r2, #1
	adds r0, r3, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r3, r0
	strb r0, [r1, #0x1d]
	ldr r1, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	cmp r0, #0
	bne _0802891C
	ldr r0, _0802897C @ =0x00000145
	bl sub_0806F5DC
_0802891C:
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802898E
	ldrb r3, [r4]
	lsls r0, r3, #4
	adds r0, r2, r0
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _0802898E
	lsls r1, r3, #2
	adds r0, r2, #0
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _08028980 @ =0x08085740
	lsls r1, r3, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldrb r0, [r4]
	bl sub_08028CBC
	ldrb r0, [r4]
	bl sub_080287A4
	ldr r1, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r1, [r1, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _08028984
	subs r0, #0xae
	bl sub_0806F5DC
	bl sub_08028F78
	b _08028A0E
	.align 2, 0
_08028978: .4byte 0x030013EC
_0802897C: .4byte 0x00000145
_08028980: .4byte 0x08085740
_08028984:
	movs r0, #0xac
	lsls r0, r0, #1
	bl sub_0806F5DC
	b _08028A0E
_0802898E:
	ldr r5, _08028A24 @ =0x030013EC
	ldr r1, [r5]
	ldrb r2, [r4]
	lsls r3, r2, #2
	adds r0, r1, #0
	adds r0, #0x44
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08028A28 @ =0x08085710
	lsls r2, r2, #4
	adds r1, r1, r2
	ldrb r1, [r1, #0x1d]
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r2, [r5]
	ldrb r1, [r4]
	lsls r3, r1, #2
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08028A2C @ =0x08085720
	lsls r1, r1, #4
	adds r2, r2, r1
	ldrb r1, [r2, #0x1d]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r1, [r5]
	ldrb r2, [r4]
	lsls r3, r2, #2
	adds r0, r1, #0
	adds r0, #0x4c
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08028A30 @ =0x08085730
	lsls r2, r2, #4
	adds r1, r1, r2
	ldrb r1, [r1, #0x1d]
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r1, #3
	bl sub_08009A0C
	cmp r6, #3
	bls _08028A0E
	ldr r0, [r5]
	ldrb r2, [r4]
	lsls r1, r2, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1d]
	cmp r0, #0
	bne _08028A0E
	adds r0, r2, #0
	bl sub_080298C0
_08028A0E:
	ldr r0, _08028A24 @ =0x030013EC
	ldr r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x28]
	lsrs r0, r0, #8
	strh r0, [r1, #0x1e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028A24: .4byte 0x030013EC
_08028A28: .4byte 0x08085710
_08028A2C: .4byte 0x08085720
_08028A30: .4byte 0x08085730

	thumb_func_start sub_08028A34
sub_08028A34: @ 0x08028A34
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6, #1]
	cmp r7, #1
	beq _08028AA4
	cmp r7, #1
	bgt _08028A4C
	cmp r7, #0
	beq _08028A52
	b _08028AD2
_08028A4C:
	cmp r7, #2
	beq _08028ACC
	b _08028AD2
_08028A52:
	ldr r4, _08028A98 @ =0x030013EC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #1
	bl sub_08009A34
	ldr r3, [r4]
	ldr r0, [r3, #0x64]
	adds r2, r3, #0
	adds r2, #0x7c
	ldrh r1, [r3, #0x1e]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, r3, #0
	adds r4, #0x7e
	ldrh r2, [r3, #0x20]
	ldrh r5, [r4]
	ldr r4, _08028A9C @ =0x08085742
	ldr r3, _08028AA0 @ =0x03004488
	ldrb r3, [r3]
	lsls r3, r3, #1
	adds r3, r3, r4
	subs r2, r2, r5
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	movs r0, #1
	strb r0, [r6, #1]
	strh r7, [r6, #2]
	b _08028AD2
	.align 2, 0
_08028A98: .4byte 0x030013EC
_08028A9C: .4byte 0x08085742
_08028AA0: .4byte 0x03004488
_08028AA4:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _08028AD2
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6, #1]
	ldr r0, _08028AC8 @ =0x030013EC
	ldr r0, [r0]
	ldr r0, [r0, #0x64]
	movs r1, #0
	bl sub_08009A34
	b _08028AD2
	.align 2, 0
_08028AC8: .4byte 0x030013EC
_08028ACC:
	ldrb r0, [r6]
	bl sub_080287A4
_08028AD2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08028AD8
sub_08028AD8: @ 0x08028AD8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7, #1]
	cmp r0, #4
	bls _08028AEC
	b _08028BEE
_08028AEC:
	lsls r0, r0, #2
	ldr r1, _08028AF8 @ =_08028AFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08028AF8: .4byte _08028AFC
_08028AFC: @ jump table
	.4byte _08028B10 @ case 0
	.4byte _08028B1C @ case 1
	.4byte _08028B40 @ case 2
	.4byte _08028BB8 @ case 3
	.4byte _08028BE8 @ case 4
_08028B10:
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #1
	strb r0, [r7, #1]
	b _08028BEE
_08028B1C:
	ldr r4, _08028BB0 @ =0x030013EC
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r4, [r0, #0x68]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	movs r1, #0
	movs r0, #2
	strb r0, [r7, #1]
	strh r1, [r7, #2]
_08028B40:
	ldr r0, _08028BB0 @ =0x030013EC
	mov r8, r0
	ldr r3, [r0]
	ldr r0, [r3, #0x68]
	ldr r6, _08028BB4 @ =0x08085760
	ldrh r1, [r7, #2]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	adds r5, r4, r6
	adds r1, r3, #0
	adds r1, #0x7c
	ldrh r2, [r1]
	subs r2, #0xa0
	ldrh r1, [r5]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #2
	adds r4, r4, r2
	adds r3, #0x7e
	ldrh r3, [r3]
	subs r3, #0x10
	ldrh r2, [r4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x68]
	ldr r0, [r0, #0x24]
	ldrh r2, [r7, #2]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r6, #4
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x65
	bls _08028BEE
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #3
	strb r0, [r7, #1]
	b _08028BEE
	.align 2, 0
_08028BB0: .4byte 0x030013EC
_08028BB4: .4byte 0x08085760
_08028BB8:
	ldr r4, _08028BE4 @ =0x030013EC
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #0
	bl sub_08009B9C
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #4
	strb r0, [r7, #1]
	b _08028BEE
	.align 2, 0
_08028BE4: .4byte 0x030013EC
_08028BE8:
	ldrb r0, [r7]
	bl sub_080287A4
_08028BEE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08028BF8
sub_08028BF8: @ 0x08028BF8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08028C1C @ =0x030013EC
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028C1C: .4byte 0x030013EC

	thumb_func_start sub_08028C20
sub_08028C20: @ 0x08028C20
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08028C64 @ =0x030013EC
	ldr r1, [r6]
	lsrs r0, r0, #0x17
	adds r1, #4
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, #4
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08028C68 @ =0x080859D8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r5, #1]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028C64: .4byte 0x030013EC
_08028C68: .4byte 0x080859D8

	thumb_func_start sub_08028C6C
sub_08028C6C: @ 0x08028C6C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08028C94 @ =0x030013EC
	ldr r0, [r0]
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, #0x26
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08028C20
	adds r0, r4, #0
	bl sub_0802935C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028C94: .4byte 0x030013EC

	thumb_func_start sub_08028C98
sub_08028C98: @ 0x08028C98
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08028CB8 @ =0x030013EC
	ldr r1, [r1]
	lsls r2, r0, #4
	adds r1, r1, r2
	adds r1, #0x26
	movs r2, #0
	strb r2, [r1]
	movs r1, #1
	bl sub_08028C20
	pop {r0}
	bx r0
	.align 2, 0
_08028CB8: .4byte 0x030013EC

	thumb_func_start sub_08028CBC
sub_08028CBC: @ 0x08028CBC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08028D14 @ =0x030013EC
	ldr r0, [r5]
	lsls r2, r4, #4
	adds r0, r0, r2
	adds r0, #0x26
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x80
	adds r0, r0, r2
	str r3, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	adds r0, r0, r2
	str r3, [r0]
	adds r2, r1, r2
	ldrh r0, [r2, #0x1e]
	adds r0, #0xc
	adds r1, r2, #0
	adds r1, #0x8a
	strh r0, [r1]
	ldrh r0, [r2, #0x20]
	subs r0, #0x10
	adds r1, #2
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x88
	strh r3, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08028C20
	adds r0, r4, #0
	bl sub_08029384
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028D14: .4byte 0x030013EC

	thumb_func_start sub_08028D18
sub_08028D18: @ 0x08028D18
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r5, _08028D64 @ =0x030013EC
	ldr r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r2, r0
	movs r1, #0x78
	strh r1, [r0, #0x22]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r2, r2, r0
	movs r0, #0x48
	strh r0, [r2, #0x24]
	ldrb r0, [r4]
	bl sub_08028C98
	ldr r2, [r5]
	ldrb r1, [r4]
	lsls r3, r1, #2
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, _08028D68 @ =0x08085720
	lsls r1, r1, #4
	adds r2, r2, r1
	ldrb r1, [r2, #0x1d]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028D64: .4byte 0x030013EC
_08028D68: .4byte 0x08085720

	thumb_func_start sub_08028D6C
sub_08028D6C: @ 0x08028D6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08028D70
sub_08028D70: @ 0x08028D70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _08028DAC @ =0x030013EC
	ldr r2, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r0, #0x88
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r1, [r2, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _08028DB0
	movs r0, #0xc0
	lsls r0, r0, #3
	mov sb, r0
	b _08028DBA
	.align 2, 0
_08028DAC: .4byte 0x030013EC
_08028DB0:
	ldrh r0, [r2, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r1, r1, r0
	mov sb, r1
_08028DBA:
	ldr r4, _08028EC4 @ =0x030013EC
	ldr r7, [r4]
	ldrb r1, [r6]
	lsls r1, r1, #4
	movs r3, #0x80
	adds r3, r3, r7
	mov sl, r3
	add r1, sl
	ldr r0, [r1]
	add r0, sb
	str r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #4
	mov r8, r0
	adds r0, r7, r0
	adds r0, #0x88
	ldrh r0, [r0]
	lsls r0, r0, #1
	subs r0, #1
	ldr r1, _08028EC8 @ =0x000009CC
	muls r0, r1, r0
	movs r1, #0x78
	bl sub_08070FCC
	mov r1, sb
	subs r5, r1, r0
	adds r0, r7, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08028DFC
	movs r5, #0
_08028DFC:
	adds r2, r7, #0
	adds r2, #0x84
	mov r3, r8
	adds r1, r2, r3
	ldr r0, [r1]
	adds r0, r0, r5
	str r0, [r1]
	ldrb r1, [r6]
	lsls r1, r1, #4
	mov r3, sl
	adds r0, r3, r1
	ldr r5, [r0]
	adds r1, r7, r1
	adds r3, r1, #0
	adds r3, #0x8a
	asrs r0, r5, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r1, #0x22]
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r2, r2, r1
	ldr r0, [r2]
	lsls r2, r0, #8
	asrs r5, r2, #8
	movs r0, #0xc0
	lsls r0, r0, #3
	cmp sb, r0
	bne _08028E5C
	asrs r0, r2, #0x10
	adds r2, r7, r1
	adds r1, r2, #0
	adds r1, #0x8c
	ldrh r1, [r1]
	adds r1, #0x10
	cmp r0, r1
	ble _08028E5C
	lsls r5, r1, #8
	adds r1, r2, #0
	adds r1, #0x26
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0xb8
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
_08028E5C:
	ldr r4, [r4]
	ldrb r1, [r6]
	lsls r1, r1, #4
	adds r1, r4, r1
	adds r0, r1, #0
	adds r0, #0x8c
	asrs r2, r5, #8
	ldrh r0, [r0]
	subs r0, r0, r2
	strh r0, [r1, #0x24]
	ldrb r0, [r6]
	lsls r2, r0, #4
	adds r0, r4, r2
	movs r3, #0x24
	ldrsh r1, [r0, r3]
	movs r3, #0x20
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _08028EB4
	adds r0, r4, #0
	adds r0, #0x84
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #4
	adds r0, r4, r0
	ldrh r1, [r0, #0x20]
	strh r1, [r0, #0x24]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #9
	bl sub_08009AFC
	ldrb r0, [r6]
	bl sub_08028C98
	ldrb r0, [r6]
	bl sub_0802965C
_08028EB4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028EC4: .4byte 0x030013EC
_08028EC8: .4byte 0x000009CC

	thumb_func_start sub_08028ECC
sub_08028ECC: @ 0x08028ECC
	push {lr}
	ldr r0, _08028EE4 @ =0x030013EC
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08028EE8 @ =0x080859E4
	ldr r1, [r1]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_08028EE4: .4byte 0x030013EC
_08028EE8: .4byte 0x080859E4

	thumb_func_start sub_08028EEC
sub_08028EEC: @ 0x08028EEC
	push {r4, lr}
	bl sub_0800B2BC
	ldr r4, _08028F0C @ =0x030013EC
	ldr r1, [r4]
	adds r1, #0x7c
	strh r0, [r1]
	bl sub_0800B2C8
	ldr r1, [r4]
	adds r1, #0x7e
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028F0C: .4byte 0x030013EC

	thumb_func_start sub_08028F10
sub_08028F10: @ 0x08028F10
	push {lr}
	movs r0, #0
	movs r1, #8
	bl sub_0800B278
	ldr r0, _08028F34 @ =0x030013EC
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08028F38 @ =0x080859E4
	ldr r1, [r1, #8]
	bl sub_08007B84
	bl sub_08028EEC
	pop {r0}
	bx r0
	.align 2, 0
_08028F34: .4byte 0x030013EC
_08028F38: .4byte 0x080859E4

	thumb_func_start sub_08028F3C
sub_08028F3C: @ 0x08028F3C
	push {lr}
	ldr r0, _08028F68 @ =0x030013EC
	ldr r1, [r0]
	movs r2, #0x22
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	subs r2, #0x70
	movs r3, #0x24
	ldrsh r0, [r1, r3]
	adds r1, r0, #0
	subs r1, #0x50
	cmp r1, #8
	ble _08028F58
	movs r1, #8
_08028F58:
	adds r0, r2, #0
	bl sub_0800B278
	bl sub_08028EEC
	pop {r0}
	bx r0
	.align 2, 0
_08028F68: .4byte 0x030013EC

	thumb_func_start sub_08028F6C
sub_08028F6C: @ 0x08028F6C
	push {lr}
	bl sub_08028EEC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028F78
sub_08028F78: @ 0x08028F78
	push {r4, lr}
	ldr r4, _08028F9C @ =0x030013EC
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	movs r1, #9
	bl sub_08009AFC
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08028FA0 @ =0x08085A10
	ldr r1, [r1, #8]
	bl sub_08007B84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028F9C: .4byte 0x030013EC
_08028FA0: .4byte 0x08085A10

	thumb_func_start sub_08028FA4
sub_08028FA4: @ 0x08028FA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _080291D4 @ =0x030013EC
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x7e
	ldrh r2, [r2, #0x20]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _080291D8 @ =0x06010000
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r5]
	adds r0, #0xa4
	ldr r1, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _080291DC @ =0x080856F0
	ldr r0, _080291E0 @ =0x03004488
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _080291E4 @ =0x08085700
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r3, _080291E8 @ =0x08085710
	ldr r0, [r5]
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r7, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x44]
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x7e
	ldrh r2, [r2, #0x20]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x74]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r4, _080291EC @ =0x080CAD0C
	ldr r6, _080291F0 @ =0x080CACE0
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x58]
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x7e
	ldrh r2, [r2, #0x20]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x74]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #2
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x60]
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x7e
	ldrh r2, [r2, #0x20]
	ldrh r4, [r0]
	ldr r3, _080291F4 @ =0x08085742
	mov r6, r8
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r3
	subs r2, r2, r4
	ldrh r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x70]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r4, _080291F8 @ =0x080CAB2C
	ldr r6, _080291FC @ =0x080CAB18
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x64]
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	movs r1, #0xa0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x7e
	ldrh r0, [r2]
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x70]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x68]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08029200 @ =0x08085A10
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080291D4: .4byte 0x030013EC
_080291D8: .4byte 0x06010000
_080291DC: .4byte 0x080856F0
_080291E0: .4byte 0x03004488
_080291E4: .4byte 0x08085700
_080291E8: .4byte 0x08085710
_080291EC: .4byte 0x080CAD0C
_080291F0: .4byte 0x080CACE0
_080291F4: .4byte 0x08085742
_080291F8: .4byte 0x080CAB2C
_080291FC: .4byte 0x080CAB18
_08029200: .4byte 0x08085A10

	thumb_func_start sub_08029204
sub_08029204: @ 0x08029204
	push {r4, r5, lr}
	ldr r4, _0802925C @ =0x030013EC
	ldr r3, [r4]
	ldr r0, [r3, #0x44]
	adds r2, r3, #0
	adds r2, #0x7c
	ldrh r1, [r3, #0x1e]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x7e
	adds r2, r2, r3
	mov ip, r2
	ldrh r2, [r3, #0x20]
	mov r5, ip
	ldrh r3, [r5]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r4]
	ldr r0, [r1, #0x58]
	ldr r2, [r1, #0x44]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r5, #8
	ldrsh r2, [r2, r5]
	bl sub_08009A70
	ldr r1, [r4]
	ldr r0, [r1, #0x60]
	ldr r2, [r1, #0x44]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r5, #8
	ldrsh r2, [r2, r5]
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802925C: .4byte 0x030013EC

	thumb_func_start sub_08029260
sub_08029260: @ 0x08029260
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r6, _080292F4 @ =0x030013EC
	ldr r3, [r6]
	ldr r0, [r3, #0x44]
	ldr r5, _080292F8 @ =0x080859F0
	ldr r1, _080292FC @ =0x03004488
	mov r8, r1
	ldrb r4, [r1]
	lsls r4, r4, #2
	adds r1, r4, r5
	ldrh r1, [r1]
	ldrh r2, [r3, #0x22]
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x7c
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, #2
	adds r4, r4, r5
	ldrh r2, [r4]
	ldrh r4, [r3, #0x24]
	adds r2, r2, r4
	adds r3, #0x7e
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r6]
	ldr r0, [r2, #0x58]
	ldr r1, [r2, #0x44]
	movs r5, #6
	ldrsh r1, [r1, r5]
	adds r2, #0x7e
	ldrh r3, [r2]
	movs r2, #0x58
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r6]
	ldr r0, [r1, #0x60]
	ldr r4, [r1, #0x44]
	ldr r3, _08029300 @ =0x08085A00
	mov r1, r8
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r1, r2, r3
	ldrh r1, [r1]
	ldrh r5, [r4, #6]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #2
	adds r2, r2, r3
	ldrh r2, [r2]
	ldrh r4, [r4, #8]
	adds r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080292F4: .4byte 0x030013EC
_080292F8: .4byte 0x080859F0
_080292FC: .4byte 0x03004488
_08029300: .4byte 0x08085A00

	thumb_func_start sub_08029304
sub_08029304: @ 0x08029304
	push {r4, lr}
	ldr r4, _08029330 @ =0x030013EC
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029330: .4byte 0x030013EC

	thumb_func_start sub_08029334
sub_08029334: @ 0x08029334
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08029358 @ =0x030013EC
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0xc
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029358: .4byte 0x030013EC

	thumb_func_start sub_0802935C
sub_0802935C: @ 0x0802935C
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0802937C @ =0x030013EC
	ldr r1, [r1]
	lsrs r0, r0, #0x17
	adds r1, #0xc
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _08029380 @ =0x08085A24
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0802937C: .4byte 0x030013EC
_08029380: .4byte 0x08085A24

	thumb_func_start sub_08029384
sub_08029384: @ 0x08029384
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r6, _080293BC @ =0x030013EC
	ldr r2, [r6]
	lsls r4, r5, #2
	adds r0, r2, r4
	ldrh r1, [r0, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _080293C0
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #3
	movs r2, #0x81
	bl sub_08009A0C
	ldr r0, [r6]
	adds r0, #0x4c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #5
	bl sub_08009AFC
	b _080293CE
	.align 2, 0
_080293BC: .4byte 0x030013EC
_080293C0:
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #8
	bl sub_08009AFC
_080293CE:
	ldr r0, _080293EC @ =0x030013EC
	ldr r0, [r0]
	lsls r1, r5, #1
	adds r0, #0xc
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080293F0 @ =0x08085A24
	ldr r1, [r1, #8]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080293EC: .4byte 0x030013EC
_080293F0: .4byte 0x08085A24

	thumb_func_start sub_080293F4
sub_080293F4: @ 0x080293F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	mov r8, r0
	ldr r2, _080294B4 @ =0x08085730
	ldr r6, _080294B8 @ =0x030013EC
	ldr r0, [r6]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #3
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r3, [r6]
	mov r7, r8
	ldrb r2, [r7]
	lsls r2, r2, #4
	adds r2, r3, r2
	adds r0, r3, #0
	adds r0, #0x7c
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x7e
	ldrh r2, [r2, #0x20]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x6c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _080294BC @ =0x080D5E08
	ldr r2, _080294C0 @ =0x080D5DD4
	ldr r5, _080294C4 @ =0x08085720
	ldr r3, [r6]
	ldrb r0, [r7]
	lsls r0, r0, #4
	adds r3, r3, r0
	ldrb r0, [r3, #0x1d]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r2, [r6]
	ldrb r1, [r7]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r0, r1
	str r4, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r2, #0xc
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, _080294C8 @ =0x08085A24
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080294B4: .4byte 0x08085730
_080294B8: .4byte 0x030013EC
_080294BC: .4byte 0x080D5E08
_080294C0: .4byte 0x080D5DD4
_080294C4: .4byte 0x08085720
_080294C8: .4byte 0x08085A24

	thumb_func_start sub_080294CC
sub_080294CC: @ 0x080294CC
	push {r4, r5, lr}
	bl sub_08007BD4
	ldr r1, _08029518 @ =0x030013EC
	ldr r4, [r1]
	ldrb r3, [r0]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r3, r3, #4
	adds r3, r4, r3
	adds r2, r4, #0
	adds r2, #0x7c
	ldrh r1, [r3, #0x1e]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, #0x7e
	ldrh r2, [r3, #0x20]
	ldrh r5, [r4]
	ldr r4, _0802951C @ =0x08085A1C
	ldr r3, _08029520 @ =0x03004488
	ldrb r3, [r3]
	lsls r3, r3, #1
	adds r3, r3, r4
	subs r2, r2, r5
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029518: .4byte 0x030013EC
_0802951C: .4byte 0x08085A1C
_08029520: .4byte 0x03004488

	thumb_func_start sub_08029524
sub_08029524: @ 0x08029524
	push {r4, lr}
	bl sub_08007BD4
	ldr r1, _08029564 @ =0x030013EC
	ldr r4, [r1]
	ldrb r3, [r0]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r3, r3, #4
	adds r3, r4, r3
	adds r2, r4, #0
	adds r2, #0x7c
	ldrh r1, [r3, #0x22]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, #0x7e
	ldrh r2, [r3, #0x24]
	ldrh r3, [r4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029564: .4byte 0x030013EC

	thumb_func_start sub_08029568
sub_08029568: @ 0x08029568
	push {lr}
	bl sub_08007BD4
	ldr r1, _08029584 @ =0x030013EC
	ldr r1, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x4c
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08029584: .4byte 0x030013EC

	thumb_func_start sub_08029588
sub_08029588: @ 0x08029588
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r5, [r6, #8]
	ldrb r0, [r6]
	cmp r0, #1
	beq _08029614
	cmp r0, #1
	bgt _0802964C
	cmp r0, #0
	bne _0802964C
	ldrb r1, [r6, #0xc]
	movs r0, #3
	bl sub_080099E0
	adds r5, r0, #0
	str r5, [r6, #8]
	cmp r5, #0
	beq _08029640
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	ldr r4, _08029608 @ =0x030013EC
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x7c
	ldrh r1, [r6, #2]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x7e
	ldrh r2, [r6, #4]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x74]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _0802960C @ =0x080CAD0C
	ldr r2, _08029610 @ =0x080CACE0
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r6]
	b _08029656
	.align 2, 0
_08029608: .4byte 0x030013EC
_0802960C: .4byte 0x080CAD0C
_08029610: .4byte 0x080CACE0
_08029614:
	ldr r0, _08029648 @ =0x030013EC
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x7c
	ldrh r1, [r6, #2]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x7e
	ldrh r2, [r6, #4]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldrb r0, [r5, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08029656
_08029640:
	movs r0, #2
	strb r0, [r6]
	b _08029656
	.align 2, 0
_08029648: .4byte 0x030013EC
_0802964C:
	ldr r0, [r6, #8]
	bl sub_08009A00
	bl sub_08007A64
_08029656:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802965C
sub_0802965C: @ 0x0802965C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r7, _08029738 @ =sub_08029588
	adds r0, r7, #0
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0802972C
	bl sub_08007BBC
	adds r2, r0, #0
	movs r0, #0
	strb r0, [r2]
	strb r5, [r2, #1]
	movs r0, #0x7e
	strb r0, [r2, #0xc]
	ldr r6, _0802973C @ =0x030013EC
	ldr r1, [r6]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r0, r1, r0
	ldrh r0, [r0, #0x22]
	adds r0, #2
	movs r3, #0
	mov r8, r3
	strh r0, [r2, #2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x24]
	strh r0, [r2, #4]
	adds r0, r7, #0
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0802972C
	adds r0, r4, #0
	bl sub_08007BBC
	adds r2, r0, #0
	mov r0, r8
	strb r0, [r2]
	strb r5, [r2, #1]
	ldr r1, [r6]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r0, r1, r0
	ldrh r0, [r0, #0x22]
	adds r0, #8
	strh r0, [r2, #2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x24]
	adds r0, #2
	strh r0, [r2, #4]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08007AD8
	adds r0, r7, #0
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0802972C
	adds r0, r4, #0
	bl sub_08007BBC
	adds r2, r0, #0
	mov r3, r8
	strb r3, [r2]
	strb r5, [r2, #1]
	ldr r1, [r6]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r0, r1, r0
	ldrh r0, [r0, #0x22]
	adds r0, #0xe
	strh r0, [r2, #2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x24]
	subs r0, #2
	strh r0, [r2, #4]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08007AD8
_0802972C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029738: .4byte sub_08029588
_0802973C: .4byte 0x030013EC

	thumb_func_start sub_08029740
sub_08029740: @ 0x08029740
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x68
	bl sub_08009A70
	ldr r5, _080297A8 @ =0x030013EC
	ldr r0, [r5]
	ldr r1, [r0, #0x78]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _080297AC @ =0x080B8664
	ldr r0, _080297B0 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _080297B4 @ =0x080B8660
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x34]
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	ldr r0, [r5]
	str r4, [r0, #0x54]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _080297B8 @ =sub_080297BC
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080297A8: .4byte 0x030013EC
_080297AC: .4byte 0x080B8664
_080297B0: .4byte 0x03004400
_080297B4: .4byte 0x080B8660
_080297B8: .4byte sub_080297BC

	thumb_func_start sub_080297BC
sub_080297BC: @ 0x080297BC
	bx lr
	.align 2, 0

	thumb_func_start sub_080297C0
sub_080297C0: @ 0x080297C0
	push {lr}
	ldr r0, _080297D0 @ =0x030013EC
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080297D0: .4byte 0x030013EC

	thumb_func_start sub_080297D4
sub_080297D4: @ 0x080297D4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6]
	cmp r7, #0
	beq _080297E8
	cmp r7, #1
	beq _08029870
	b _080298B4
_080297E8:
	ldr r5, _08029864 @ =0x030013EC
	ldr r1, [r5]
	ldrb r0, [r6, #2]
	lsls r0, r0, #4
	adds r0, r1, r0
	ldrh r0, [r0, #0x1e]
	strh r0, [r6, #6]
	ldrb r0, [r6, #2]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0x20]
	adds r0, #2
	strh r0, [r6, #8]
	ldrb r1, [r6, #1]
	movs r0, #3
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x7c
	ldrh r1, [r6, #6]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x7e
	ldrh r2, [r6, #8]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x74]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08029868 @ =0x080CAD0C
	ldr r2, _0802986C @ =0x080CACE0
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r6, #0xc]
	strh r7, [r6, #4]
	movs r0, #1
	strb r0, [r6]
	b _080298B4
	.align 2, 0
_08029864: .4byte 0x030013EC
_08029868: .4byte 0x080CAD0C
_0802986C: .4byte 0x080CACE0
_08029870:
	ldr r0, [r6, #0xc]
	ldrh r2, [r6, #4]
	adds r2, #1
	strh r2, [r6, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x11
	ldrh r1, [r6, #6]
	subs r1, r1, r2
	ldr r2, _080298BC @ =0x030013EC
	ldr r3, [r2]
	adds r2, r3, #0
	adds r2, #0x7c
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0x7e
	ldrh r2, [r6, #8]
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r6, #0xc]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080298B4
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_080298B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080298BC: .4byte 0x030013EC

	thumb_func_start sub_080298C0
sub_080298C0: @ 0x080298C0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _08029920 @ =sub_080297D4
	adds r0, r4, #0
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	movs r6, #0x7f
	strb r6, [r0, #1]
	strb r5, [r0, #2]
	adds r0, r4, #0
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08007BBC
	mov r1, r8
	strb r1, [r0]
	strb r6, [r0, #1]
	strb r5, [r0, #2]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08007AD8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029920: .4byte sub_080297D4

	thumb_func_start sub_08029924
sub_08029924: @ 0x08029924
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r4, _08029960 @ =0x030013AC
	ldrb r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08029944
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #2]
	ldr r0, _08029964 @ =sub_080299A4
	movs r1, #0
	bl sub_08009460
_08029944:
	ldrb r1, [r4, #2]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #2]
	strh r5, [r4]
	ldrh r1, [r4, #2]
	ldr r0, _08029968 @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029960: .4byte 0x030013AC
_08029964: .4byte sub_080299A4
_08029968: .4byte 0xFFFFFC3F

	thumb_func_start sub_0802996C
sub_0802996C: @ 0x0802996C
	push {lr}
	ldr r2, _0802998C @ =0x030013AC
	ldrb r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08029988
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, _08029990 @ =sub_080299A4
	bl sub_080094F4
_08029988:
	pop {r0}
	bx r0
	.align 2, 0
_0802998C: .4byte 0x030013AC
_08029990: .4byte sub_080299A4

	thumb_func_start sub_08029994
sub_08029994: @ 0x08029994
	ldr r0, _080299A0 @ =0x030013AC
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	bx lr
	.align 2, 0
_080299A0: .4byte 0x030013AC

	thumb_func_start sub_080299A4
sub_080299A4: @ 0x080299A4
	push {r4, r5, lr}
	ldr r3, _08029A1C @ =0x030013AC
	ldrh r1, [r3, #2]
	ldr r5, _08029A20 @ =0xFFFFFC3F
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r3, #2]
	ldr r0, [r3]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x1b
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r3, #2]
	movs r4, #0x3f
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #2]
	ldr r0, [r3]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x1b
	cmp r0, #0x10
	bls _080299E0
	ands r2, r4
	movs r0, #0x20
	orrs r2, r0
	strb r2, [r3, #2]
_080299E0:
	ldr r0, _08029A24 @ =0x030024B0
	ldrh r1, [r0]
	ldrh r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _08029A16
	ldr r0, [r3]
	lsls r2, r0, #0xa
	lsrs r0, r2, #0x1b
	cmp r0, #0x10
	bhi _08029A0E
	ldr r1, _08029A28 @ =0x08085A70
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #6
	ldrh r2, [r3, #2]
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
_08029A0E:
	ldrb r1, [r3, #2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3, #2]
_08029A16:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029A1C: .4byte 0x030013AC
_08029A20: .4byte 0xFFFFFC3F
_08029A24: .4byte 0x030024B0
_08029A28: .4byte 0x08085A70

	thumb_func_start sub_08029A2C
sub_08029A2C: @ 0x08029A2C
	push {r4, lr}
	ldr r4, _08029A80 @ =0x030013B0
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08029A48
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _08029A84 @ =sub_08029AC0
	movs r1, #0
	bl sub_08009460
_08029A48:
	movs r0, #0
	strh r0, [r4, #2]
	ldrb r1, [r4]
	subs r0, #0x1f
	ands r0, r1
	ldrb r2, [r4, #1]
	movs r1, #0xf
	ands r1, r2
	movs r2, #0x1f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029A80: .4byte 0x030013B0
_08029A84: .4byte sub_08029AC0

	thumb_func_start sub_08029A88
sub_08029A88: @ 0x08029A88
	push {lr}
	ldr r2, _08029AA8 @ =0x030013B0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08029AA4
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08029AAC @ =sub_08029AC0
	bl sub_080094F4
_08029AA4:
	pop {r0}
	bx r0
	.align 2, 0
_08029AA8: .4byte 0x030013B0
_08029AAC: .4byte sub_08029AC0

	thumb_func_start sub_08029AB0
sub_08029AB0: @ 0x08029AB0
	ldr r0, _08029ABC @ =0x030013B0
	ldr r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	bx lr
	.align 2, 0
_08029ABC: .4byte 0x030013B0

	thumb_func_start sub_08029AC0
sub_08029AC0: @ 0x08029AC0
	push {r4, r5, r6, lr}
	ldr r1, _08029B04 @ =0x030013B0
	ldrb r2, [r1]
	movs r0, #0x1f
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0x44
	bls _08029AE2
	movs r0, #0x44
	strh r0, [r3, #2]
_08029AE2:
	ldr r0, _08029B08 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _08029AF0
	b _08029D2E
_08029AF0:
	ldr r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08029B7A
	cmp r0, #1
	bgt _08029B0C
	cmp r0, #0
	beq _08029B16
	b _08029CB4
	.align 2, 0
_08029B04: .4byte 0x030013B0
_08029B08: .4byte 0x030024B0
_08029B0C:
	cmp r0, #2
	beq _08029B48
	cmp r0, #3
	beq _08029BC2
	b _08029CB4
_08029B16:
	ldrb r5, [r3, #1]
	movs r2, #3
	ands r2, r5
	cmp r2, #1
	beq _08029B28
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08029B3C
_08029B28:
	cmp r2, #0
	beq _08029B44
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08029B44
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08029B40
_08029B3C:
	movs r4, #1
	b _08029BA2
_08029B40:
	movs r4, #3
	b _08029BB0
_08029B44:
	movs r0, #0x80
	b _08029C08
_08029B48:
	ldrb r5, [r3, #1]
	movs r2, #3
	ands r2, r5
	cmp r2, #0
	beq _08029B5A
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08029B6E
_08029B5A:
	cmp r2, #1
	beq _08029B76
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08029B76
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08029B72
_08029B6E:
	movs r4, #1
	b _08029BEA
_08029B72:
	movs r4, #3
	b _08029BFC
_08029B76:
	movs r0, #0x40
	b _08029C08
_08029B7A:
	ldrb r5, [r3, #1]
	movs r2, #3
	ands r2, r5
	cmp r2, #1
	beq _08029B8C
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08029BA0
_08029B8C:
	cmp r2, #0
	beq _08029BBE
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08029BBE
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08029BAE
_08029BA0:
	movs r4, #2
_08029BA2:
	ldrb r1, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	b _08029C10
_08029BAE:
	movs r4, #0
_08029BB0:
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r5
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #1]
	b _08029C10
_08029BBE:
	movs r0, #0x10
	b _08029C08
_08029BC2:
	ldrb r5, [r3, #1]
	adds r2, r5, #0
	ands r2, r0
	cmp r2, #0
	beq _08029BD4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08029BE8
_08029BD4:
	cmp r2, #1
	beq _08029C06
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08029C06
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08029BFA
_08029BE8:
	movs r4, #2
_08029BEA:
	ldrb r0, [r3, #1]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r3, #1]
	b _08029C10
_08029BFA:
	movs r4, #0
_08029BFC:
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r5
	strb r0, [r3, #1]
	b _08029C10
_08029C06:
	movs r0, #0x20
_08029C08:
	ands r0, r1
	cmp r0, #0
	bne _08029CB4
	b _08029D2E
_08029C10:
	ldr r2, [r3]
	lsls r1, r2, #0x14
	lsls r0, r2, #0x16
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08029C36
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1d
	movs r1, #1
	lsls r1, r0
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
_08029C36:
	ldr r0, [r3]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	ldrb r1, [r3, #1]
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #1]
	ldr r1, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1c
	movs r0, #1
	lsls r0, r4
	orrs r1, r0
	lsls r1, r1, #4
	movs r6, #0xf
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	lsls r4, r4, #5
	ldrb r1, [r3]
	movs r5, #0x1f
	adds r2, r5, #0
	ands r2, r1
	orrs r2, r4
	strb r2, [r3]
	movs r1, #0xf0
	ands r0, r1
	cmp r0, #0xf0
	bne _08029D2E
	ldrh r0, [r3, #2]
	cmp r0, #0x44
	bhi _08029C96
	ldr r1, _08029CB0 @ =0x08085A80
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
_08029C96:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
	movs r0, #0
	strh r0, [r3, #2]
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	b _08029D2E
	.align 2, 0
_08029CB0: .4byte 0x08085A80
_08029CB4:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08029CD8
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08029CCE
	ldrb r0, [r3]
	movs r1, #0x1f
	ands r1, r0
	movs r0, #0x20
	b _08029CFA
_08029CCE:
	ldrb r0, [r3]
	movs r1, #0x1f
	ands r1, r0
	movs r0, #0x60
	b _08029CFA
_08029CD8:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08029CFE
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08029CF2
	ldrb r1, [r3]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r3]
	b _08029CFE
_08029CF2:
	ldrb r0, [r3]
	movs r1, #0x1f
	ands r1, r0
	movs r0, #0x40
_08029CFA:
	orrs r1, r0
	strb r1, [r3]
_08029CFE:
	ldr r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1d
	movs r1, #1
	lsls r1, r0
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	movs r1, #0
	strh r1, [r3, #2]
	subs r1, #4
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
_08029D2E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08029D34
sub_08029D34: @ 0x08029D34
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08029D7E
	ldr r0, [r4, #4]
	movs r2, #8
	ldrsh r1, [r4, r2]
	ldr r3, _08029D84 @ =0x08085AC4
	ldrh r2, [r4, #2]
	lsls r2, r2, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	ldrh r3, [r4, #0xa]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08029D7E
	ldr r0, [r4, #4]
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	movs r0, #1
	strb r0, [r4]
_08029D7E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029D84: .4byte 0x08085AC4

	thumb_func_start sub_08029D88
sub_08029D88: @ 0x08029D88
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	mov sl, r0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r1, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _08029E04 @ =sub_08029D34
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	bl sub_08007968
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xc
	bl sub_08007EFC
	mov r0, sl
	movs r1, #1
	bl sub_08009A34
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, sl
	adds r1, r4, #0
	bl sub_08009AFC
	mov r0, r8
	strh r0, [r6, #8]
	mov r0, sb
	strh r0, [r6, #0xa]
	mov r0, sl
	str r0, [r6, #4]
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08029E04: .4byte sub_08029D34

	thumb_func_start sub_08029E08
sub_08029E08: @ 0x08029E08
	push {r4, r5, r6, lr}
	ldr r4, _08029F48 @ =0x06010000
	ldr r1, _08029F4C @ =0x080FE2DC
	ldr r5, _08029F50 @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08029F54 @ =0x05000260
	bl sub_08008308
	ldr r6, _08029F58 @ =0x030013AC
	ldr r0, [r6]
	str r4, [r0, #0x1c]
	ldr r1, _08029F5C @ =0x080FE2E0
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, [r6]
	str r4, [r0, #0x20]
	ldr r1, _08029F60 @ =0x080FE2E8
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, _08029F64 @ =0x081018C8
	ldr r1, _08029F68 @ =0x05000200
	bl sub_08008308
	ldr r0, [r6]
	str r4, [r0, #0x18]
	ldr r0, _08029F6C @ =0x08101AA4
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _08029F70 @ =0x081006C0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _08029F74 @ =0x08100BC0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _08029F78 @ =0x081007DC
	ldr r1, _08029F7C @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r5, _08029F80 @ =0x030024E0
	ldr r0, _08029F84 @ =0x00001F03
	strh r0, [r5, #8]
	ldr r0, _08029F88 @ =0x080B4BD4
	ldr r1, _08029F8C @ =0x05000040
	bl sub_08008308
	ldr r0, _08029F90 @ =0x080B4CD4
	ldr r1, [r6]
	movs r2, #0xd2
	lsls r2, r2, #1
	adds r1, r1, r2
	bl sub_08008374
	bl sub_080057D0
	ldr r0, _08029F94 @ =0x08085C14
	ldr r1, _08029F98 @ =0x0600F000
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r4, #0
	bl sub_08007EA4
	ldr r0, _08029F9C @ =0x08085D14
	ldr r1, _08029FA0 @ =0x0600E800
	adds r2, r4, #0
	bl sub_08007EA4
	ldr r0, [r6]
	adds r0, #0x5c
	ldrb r0, [r0]
	ldr r1, _08029FA4 @ =0x02034BF0
	ldr r1, [r1, #4]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1a
	bl sub_0802A874
	ldr r0, _08029FA8 @ =0x00001E0E
	strh r0, [r5, #6]
	ldr r0, _08029FAC @ =0x08101930
	ldr r1, _08029FB0 @ =0x00000121
	bl sub_08009554
	ldr r0, _08029FB4 @ =0x080B4CB8
	movs r1, #0x22
	bl sub_08009554
	ldr r0, _08029FB8 @ =sub_0802A588
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #8]
	ldr r0, _08029FBC @ =sub_0802AB58
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0xa]
	ldr r0, _08029FC0 @ =sub_0802AC20
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0xc]
	ldr r0, _08029FC4 @ =sub_0802AF48
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0xe]
	ldr r0, _08029FC8 @ =sub_0802A9A4
	movs r1, #0x46
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x10]
	ldr r0, _08029FCC @ =sub_0802AD44
	movs r1, #0x47
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x12]
	ldr r0, _08029FD0 @ =sub_0802B0A0
	movs r1, #0x48
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x14]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029F48: .4byte 0x06010000
_08029F4C: .4byte 0x080FE2DC
_08029F50: .4byte 0x03004400
_08029F54: .4byte 0x05000260
_08029F58: .4byte 0x030013AC
_08029F5C: .4byte 0x080FE2E0
_08029F60: .4byte 0x080FE2E8
_08029F64: .4byte 0x081018C8
_08029F68: .4byte 0x05000200
_08029F6C: .4byte 0x08101AA4
_08029F70: .4byte 0x081006C0
_08029F74: .4byte 0x08100BC0
_08029F78: .4byte 0x081007DC
_08029F7C: .4byte 0x0600F800
_08029F80: .4byte 0x030024E0
_08029F84: .4byte 0x00001F03
_08029F88: .4byte 0x080B4BD4
_08029F8C: .4byte 0x05000040
_08029F90: .4byte 0x080B4CD4
_08029F94: .4byte 0x08085C14
_08029F98: .4byte 0x0600F000
_08029F9C: .4byte 0x08085D14
_08029FA0: .4byte 0x0600E800
_08029FA4: .4byte 0x02034BF0
_08029FA8: .4byte 0x00001E0E
_08029FAC: .4byte 0x08101930
_08029FB0: .4byte 0x00000121
_08029FB4: .4byte 0x080B4CB8
_08029FB8: .4byte sub_0802A588
_08029FBC: .4byte sub_0802AB58
_08029FC0: .4byte sub_0802AC20
_08029FC4: .4byte sub_0802AF48
_08029FC8: .4byte sub_0802A9A4
_08029FCC: .4byte sub_0802AD44
_08029FD0: .4byte sub_0802B0A0

	thumb_func_start sub_08029FD4
sub_08029FD4: @ 0x08029FD4
	push {r4, lr}
	ldr r0, _0802A030 @ =0x08101930
	bl sub_080095E0
	ldr r0, _0802A034 @ =0x080B4CB8
	bl sub_080095E0
	ldr r4, _0802A038 @ =0x030013AC
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A030: .4byte 0x08101930
_0802A034: .4byte 0x080B4CB8
_0802A038: .4byte 0x030013AC

	thumb_func_start sub_0802A03C
sub_0802A03C: @ 0x0802A03C
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r5, _0802A078 @ =0x030013AC
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	bl sub_08029E08
	movs r0, #1
	bl sub_08002B98
	ldr r5, _0802A07C @ =0x08085BF4
_0802A068:
	ldr r0, _0802A078 @ =0x030013AC
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0802A080
	subs r0, #1
	strh r0, [r1, #6]
	b _0802A08C
	.align 2, 0
_0802A078: .4byte 0x030013AC
_0802A07C: .4byte 0x08085BF4
_0802A080:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0802A08C:
	ldr r4, _0802A0A0 @ =0x030013AC
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0802A0A4
	movs r0, #1
	bl sub_08002B98
	b _0802A068
	.align 2, 0
_0802A0A0: .4byte 0x030013AC
_0802A0A4:
	bl sub_08029FD4
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	bl sub_08007CF8
	movs r0, #3
	bl sub_08008790
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802A0C4
sub_0802A0C4: @ 0x0802A0C4
	ldr r1, _0802A0D8 @ =0x030013AC
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3]
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0802A0D8: .4byte 0x030013AC

	thumb_func_start sub_0802A0DC
sub_0802A0DC: @ 0x0802A0DC
	push {lr}
	bl sub_08008174
	ldr r2, _0802A130 @ =0x030024E0
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r1, r0
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r1, r0
	ldr r0, _0802A134 @ =0x000008E8
	strh r0, [r2, #0x3e]
	adds r3, r2, #0
	adds r3, #0x42
	ldr r0, _0802A138 @ =0x00008898
	strh r0, [r3]
	adds r3, #3
	movs r0, #0x3f
	strb r0, [r3]
	adds r3, #1
	movs r0, #0xfb
	strb r0, [r3]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
	adds r1, r2, #0
	adds r1, #0x4f
	movs r0, #1
	strb r0, [r1]
	bl sub_0803B840
	movs r0, #1
	bl sub_0802A0C4
	pop {r0}
	bx r0
	.align 2, 0
_0802A130: .4byte 0x030024E0
_0802A134: .4byte 0x000008E8
_0802A138: .4byte 0x00008898

	thumb_func_start sub_0802A13C
sub_0802A13C: @ 0x0802A13C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802A160 @ =0x030013AC
	mov sb, r0
	ldr r3, [r0]
	ldrb r0, [r3, #1]
	cmp r0, #1
	bne _0802A154
	b _0802A320
_0802A154:
	cmp r0, #1
	bgt _0802A164
	cmp r0, #0
	beq _0802A172
	b _0802A3C2
	.align 2, 0
_0802A160: .4byte 0x030013AC
_0802A164:
	cmp r0, #2
	bne _0802A16A
	b _0802A332
_0802A16A:
	cmp r0, #3
	bne _0802A170
	b _0802A3BC
_0802A170:
	b _0802A3C2
_0802A172:
	ldr r1, _0802A190 @ =0x030024B0
	ldrh r2, [r1]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0802A194
	movs r0, #0xce
	bl sub_0806F5DC
	mov r2, sb
	ldr r1, [r2]
	movs r0, #3
	strb r0, [r1, #1]
	b _0802A3C2
	.align 2, 0
_0802A190: .4byte 0x030024B0
_0802A194:
	movs r4, #1
	mov sl, r4
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0802A1B0
	movs r0, #0xcd
	bl sub_0806F5DC
	mov r0, sb
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0802A3C2
_0802A1B0:
	ldrh r1, [r1, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A210
	movs r0, #0xcb
	bl sub_0806F5DC
	ldr r5, _0802A204 @ =0x02034BF0
	ldr r4, [r5, #4]
	lsls r4, r4, #0xd
	lsrs r4, r4, #0x1a
	adds r0, r4, #1
	movs r1, #0x31
	bl sub_08071064
	adds r7, r0, #0
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0802A540
	ldr r1, _0802A208 @ =0x08085AD0
	lsls r0, r7, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_0802B1A0
	movs r1, #0x3f
	ands r1, r7
	lsls r1, r1, #0xd
	ldr r0, [r5, #4]
	ldr r2, _0802A20C @ =0xFFF81FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1]
	mov r2, sl
	strb r2, [r0, #1]
	b _0802A3C2
	.align 2, 0
_0802A204: .4byte 0x02034BF0
_0802A208: .4byte 0x08085AD0
_0802A20C: .4byte 0xFFF81FFF
_0802A210:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802A268
	movs r0, #0xcb
	bl sub_0806F5DC
	ldr r5, _0802A25C @ =0x02034BF0
	ldr r4, [r5, #4]
	lsls r4, r4, #0xd
	lsrs r4, r4, #0x1a
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #0x31
	bl sub_08071064
	adds r7, r0, #0
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0802A4B4
	ldr r1, _0802A260 @ =0x08085AD0
	lsls r0, r7, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_0802B1A0
	movs r1, #0x3f
	ands r1, r7
	lsls r1, r1, #0xd
	ldr r0, [r5, #4]
	ldr r2, _0802A264 @ =0xFFF81FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	b _0802A306
	.align 2, 0
_0802A25C: .4byte 0x02034BF0
_0802A260: .4byte 0x08085AD0
_0802A264: .4byte 0xFFF81FFF
_0802A268:
	movs r0, #0x88
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0802A2B0
	movs r0, #0xcb
	bl sub_0806F5DC
	ldr r5, _0802A2A4 @ =0x08085B94
	ldr r2, _0802A2A8 @ =0x08085AD0
	mov r8, r2
	ldr r6, _0802A2AC @ =0x02034BF0
	ldr r4, [r6, #4]
	lsls r4, r4, #0xd
	lsrs r4, r4, #0x1a
	lsls r0, r4, #2
	add r0, r8
	ldrb r0, [r0, #1]
	adds r0, #5
	movs r1, #6
	bl sub_08071064
	adds r0, r0, r5
	ldrb r7, [r0]
	adds r5, r7, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802A4C8
	b _0802A2EC
	.align 2, 0
_0802A2A4: .4byte 0x08085B94
_0802A2A8: .4byte 0x08085AD0
_0802A2AC: .4byte 0x02034BF0
_0802A2B0:
	movs r0, #0x88
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0802A2BC
	b _0802A3C2
_0802A2BC:
	movs r0, #0xcb
	bl sub_0806F5DC
	ldr r5, _0802A310 @ =0x08085B94
	ldr r2, _0802A314 @ =0x08085AD0
	mov r8, r2
	ldr r6, _0802A318 @ =0x02034BF0
	ldr r4, [r6, #4]
	lsls r4, r4, #0xd
	lsrs r4, r4, #0x1a
	lsls r0, r4, #2
	add r0, r8
	ldrb r0, [r0, #1]
	adds r0, #1
	movs r1, #6
	bl sub_08071064
	adds r0, r0, r5
	ldrb r7, [r0]
	adds r5, r7, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802A554
_0802A2EC:
	lsls r0, r5, #2
	add r0, r8
	ldrb r0, [r0, #1]
	bl sub_0802B1A0
	movs r1, #0x3f
	ands r1, r5
	lsls r1, r1, #0xd
	ldr r0, [r6, #4]
	ldr r2, _0802A31C @ =0xFFF81FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
_0802A306:
	mov r4, sb
	ldr r0, [r4]
	mov r1, sl
	strb r1, [r0, #1]
	b _0802A3C2
	.align 2, 0
_0802A310: .4byte 0x08085B94
_0802A314: .4byte 0x08085AD0
_0802A318: .4byte 0x02034BF0
_0802A31C: .4byte 0xFFF81FFF
_0802A320:
	adds r0, r3, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	bne _0802A3C2
	strb r0, [r3, #1]
	b _0802A3C2
_0802A332:
	ldr r4, _0802A360 @ =0x02034BF0
	ldrb r2, [r4, #2]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	ldr r5, _0802A364 @ =0x08085AD0
	ldr r1, [r4, #4]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1a
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _0802A368
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r4, #2]
	ldr r0, [r3, #0x44]
	movs r1, #0
	bl sub_08009A34
	b _0802A3AA
	.align 2, 0
_0802A360: .4byte 0x02034BF0
_0802A364: .4byte 0x08085AD0
_0802A368:
	movs r0, #0x3f
	ands r1, r0
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #2]
	ldr r0, [r3, #0x44]
	movs r1, #1
	bl sub_08009A34
	mov r2, sb
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	ldr r3, [r4, #4]
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x1a
	lsls r3, r3, #2
	adds r3, r3, r5
	ldr r4, _0802A3B4 @ =0x0000FFFD
	adds r1, r4, #0
	ldrb r2, [r3, #2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r4, #5
	adds r2, r4, #0
	ldrb r3, [r3, #3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0802A3AA:
	ldr r0, _0802A3B8 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #1]
	b _0802A3C2
	.align 2, 0
_0802A3B4: .4byte 0x0000FFFD
_0802A3B8: .4byte 0x030013AC
_0802A3BC:
	movs r0, #2
	bl sub_0802A0C4
_0802A3C2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802A3D0
sub_0802A3D0: @ 0x0802A3D0
	push {lr}
	bl sub_0803B868
	ldr r0, _0802A3E4 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #2]
	pop {r0}
	bx r0
	.align 2, 0
_0802A3E4: .4byte 0x030013AC

	thumb_func_start sub_0802A3E8
sub_0802A3E8: @ 0x0802A3E8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802A41C @ =0x030013AC
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #6]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0802A420 @ =0x08085C00
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802A41C: .4byte 0x030013AC
_0802A420: .4byte 0x08085C00

	thumb_func_start sub_0802A424
sub_0802A424: @ 0x0802A424
	push {lr}
	ldr r0, _0802A440 @ =0x030013AC
	ldr r1, [r0]
	adds r1, #0x24
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0802A3E8
	pop {r0}
	bx r0
	.align 2, 0
_0802A440: .4byte 0x030013AC

	thumb_func_start sub_0802A444
sub_0802A444: @ 0x0802A444
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r6, _0802A4B0 @ =0x030013AC
	ldr r0, [r6]
	movs r1, #8
	ldrsh r0, [r0, r1]
	str r3, [sp]
	bl sub_08007BBC
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0x5d
	ldrb r2, [r2]
	adds r1, #0x62
	strb r2, [r1]
	ldr r1, [r6]
	adds r1, #0x61
	movs r2, #1
	mov r8, r2
	movs r2, #1
	strb r2, [r1]
	strb r4, [r0, #1]
	strb r5, [r0, #2]
	movs r1, #4
	strb r1, [r0, #3]
	ldr r3, [sp]
	strb r3, [r0, #4]
	ldr r1, [r6]
	adds r1, #0x24
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0802A3E8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802A4B0: .4byte 0x030013AC

	thumb_func_start sub_0802A4B4
sub_0802A4B4: @ 0x0802A4B4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	bl sub_0802A444
	pop {r0}
	bx r0

	thumb_func_start sub_0802A4C8
sub_0802A4C8: @ 0x0802A4C8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	bl sub_0802A444
	pop {r0}
	bx r0

	thumb_func_start sub_0802A4DC
sub_0802A4DC: @ 0x0802A4DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r6, _0802A53C @ =0x030013AC
	ldr r0, [r6]
	movs r1, #8
	ldrsh r0, [r0, r1]
	str r3, [sp]
	bl sub_08007BBC
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0x5d
	ldrb r2, [r2]
	adds r1, #0x62
	strb r2, [r1]
	ldr r1, [r6]
	adds r1, #0x61
	movs r2, #2
	strb r2, [r1]
	strb r4, [r0, #1]
	strb r5, [r0, #2]
	movs r1, #4
	strb r1, [r0, #3]
	ldr r3, [sp]
	strb r3, [r0, #4]
	ldr r1, [r6]
	adds r1, #0x24
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0802A3E8
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802A53C: .4byte 0x030013AC

	thumb_func_start sub_0802A540
sub_0802A540: @ 0x0802A540
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	bl sub_0802A4DC
	pop {r0}
	bx r0

	thumb_func_start sub_0802A554
sub_0802A554: @ 0x0802A554
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	bl sub_0802A4DC
	pop {r0}
	bx r0

	thumb_func_start sub_0802A568
sub_0802A568: @ 0x0802A568
	push {r4, lr}
	ldr r4, _0802A584 @ =0x030013AC
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A584: .4byte 0x030013AC

	thumb_func_start sub_0802A588
sub_0802A588: @ 0x0802A588
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802A61C @ =0x030013AC
	ldr r1, [r0]
	adds r1, #0x5e
	movs r2, #0
	strb r2, [r1]
	movs r6, #0
	mov r8, r0
	ldr r7, _0802A620 @ =0x08085BA4
_0802A59E:
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r5, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x18]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802A624 @ =0x08085BB4
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _0802A628 @ =0x08101A7C
	ldr r2, _0802A62C @ =0x08101A40
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x30
	adds r0, r0, r5
	str r4, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #3
	ble _0802A59E
	ldr r0, _0802A61C @ =0x030013AC
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0802A630 @ =sub_0802A568
	bl sub_08007BA0
	bl sub_0802A424
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A61C: .4byte 0x030013AC
_0802A620: .4byte 0x08085BA4
_0802A624: .4byte 0x08085BB4
_0802A628: .4byte 0x08101A7C
_0802A62C: .4byte 0x08101A40
_0802A630: .4byte sub_0802A568

	thumb_func_start sub_0802A634
sub_0802A634: @ 0x0802A634
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A638
sub_0802A638: @ 0x0802A638
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802A64C
	cmp r0, #1
	beq _0802A6E4
	b _0802A744
_0802A64C:
	ldr r5, _0802A6A8 @ =0x030013AC
	ldr r1, [r5]
	adds r1, #0x5c
	ldrb r0, [r1]
	movs r2, #1
	eors r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x5c
	ldrb r0, [r0]
	ldrb r1, [r4, #2]
	bl sub_0802A874
	ldr r3, _0802A6AC @ =0x030024E0
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	movs r0, #0x1e
	subs r0, r0, r1
	lsls r0, r0, #8
	movs r6, #0xf8
	lsls r6, r6, #5
	adds r1, r6, #0
	ands r0, r1
	movs r1, #0xe
	orrs r0, r1
	strh r0, [r3, #6]
	adds r2, #0x5e
	movs r0, #0x10
	strb r0, [r2]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802A6B4
	ldr r0, [r5]
	ldr r0, [r0, #0x38]
	ldr r2, _0802A6B0 @ =0x08085BA4
	ldrh r1, [r2, #8]
	subs r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	b _0802A6CA
	.align 2, 0
_0802A6A8: .4byte 0x030013AC
_0802A6AC: .4byte 0x030024E0
_0802A6B0: .4byte 0x08085BA4
_0802A6B4:
	ldr r0, [r5]
	ldr r0, [r0, #0x30]
	ldr r2, _0802A718 @ =0x08085BA4
	movs r6, #0
	ldrsh r1, [r2, r6]
	ldrh r2, [r2, #2]
	subs r2, #2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0802A6CA:
	ldr r0, _0802A71C @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	ldr r1, _0802A720 @ =0x08085AD0
	ldrb r2, [r4, #2]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	bl sub_08009A70
	movs r0, #1
	strb r0, [r4]
_0802A6E4:
	ldr r3, _0802A71C @ =0x030013AC
	ldr r1, [r3]
	adds r1, #0x5e
	ldrb r0, [r1]
	ldrb r2, [r4, #3]
	subs r0, r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, #0x5e
	ldrb r1, [r0]
	cmp r1, #0
	bne _0802A744
	strb r1, [r0]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802A724
	ldr r0, [r3]
	ldr r0, [r0, #0x38]
	ldr r2, _0802A718 @ =0x08085BA4
	movs r3, #8
	ldrsh r1, [r2, r3]
	movs r6, #0xa
	ldrsh r2, [r2, r6]
	bl sub_08009A70
	b _0802A736
	.align 2, 0
_0802A718: .4byte 0x08085BA4
_0802A71C: .4byte 0x030013AC
_0802A720: .4byte 0x08085AD0
_0802A724:
	ldr r0, [r3]
	ldr r0, [r0, #0x30]
	ldr r2, _0802A74C @ =0x08085BA4
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r6, #2
	ldrsh r2, [r2, r6]
	bl sub_08009A70
_0802A736:
	bl sub_0802A424
	ldr r0, _0802A750 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0x61
	movs r1, #0
	strb r1, [r0]
_0802A744:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802A74C: .4byte 0x08085BA4
_0802A750: .4byte 0x030013AC

	thumb_func_start sub_0802A754
sub_0802A754: @ 0x0802A754
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r4, [r6]
	cmp r4, #0
	beq _0802A768
	cmp r4, #1
	beq _0802A7E0
	b _0802A864
_0802A768:
	ldr r5, _0802A7A8 @ =0x030013AC
	ldr r1, [r5]
	adds r1, #0x5c
	ldrb r0, [r1]
	movs r2, #1
	eors r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x5c
	ldrb r0, [r0]
	ldrb r1, [r6, #2]
	bl sub_0802A874
	ldr r0, [r5]
	adds r0, #0x5e
	strb r4, [r0]
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0802A7B0
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	ldr r2, _0802A7AC @ =0x08085BA4
	ldrh r1, [r2, #0xc]
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xe
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	b _0802A7C6
	.align 2, 0
_0802A7A8: .4byte 0x030013AC
_0802A7AC: .4byte 0x08085BA4
_0802A7B0:
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	ldr r2, _0802A834 @ =0x08085BA4
	movs r3, #4
	ldrsh r1, [r2, r3]
	ldrh r2, [r2, #6]
	adds r2, #2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0802A7C6:
	ldr r0, _0802A838 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	ldr r1, _0802A83C @ =0x08085AD0
	ldrb r2, [r6, #2]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	bl sub_08009A70
	movs r0, #1
	strb r0, [r6]
_0802A7E0:
	ldr r5, _0802A838 @ =0x030013AC
	ldr r0, [r5]
	adds r0, #0x5e
	ldrb r1, [r6, #3]
	ldrb r2, [r0]
	adds r1, r1, r2
	strb r1, [r0]
	ldr r1, [r5]
	adds r4, r1, #0
	adds r4, #0x5e
	ldrb r0, [r4]
	cmp r0, #0xf
	bls _0802A864
	ldr r3, _0802A840 @ =0x030024E0
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	movs r0, #0x1e
	subs r0, r0, r1
	lsls r0, r0, #8
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r1, r2, #0
	ands r0, r1
	movs r1, #0xe
	movs r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
	strb r2, [r4]
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0802A844
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	ldr r2, _0802A834 @ =0x08085BA4
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	movs r3, #0xe
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	b _0802A856
	.align 2, 0
_0802A834: .4byte 0x08085BA4
_0802A838: .4byte 0x030013AC
_0802A83C: .4byte 0x08085AD0
_0802A840: .4byte 0x030024E0
_0802A844:
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	ldr r2, _0802A86C @ =0x08085BA4
	movs r3, #4
	ldrsh r1, [r2, r3]
	movs r3, #6
	ldrsh r2, [r2, r3]
	bl sub_08009A70
_0802A856:
	bl sub_0802A424
	ldr r0, _0802A870 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0x61
	movs r1, #0
	strb r1, [r0]
_0802A864:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802A86C: .4byte 0x08085BA4
_0802A870: .4byte 0x030013AC

	thumb_func_start sub_0802A874
sub_0802A874: @ 0x0802A874
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0802A960 @ =0x08085B9C
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r7, [r0]
	movs r5, #0
	str r5, [sp, #4]
	ldr r2, _0802A964 @ =0x01000200
	add r0, sp, #4
	adds r1, r7, #0
	bl CpuFastSet
	ldr r1, _0802A968 @ =0x08085C0C
	str r5, [sp]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004A24
	adds r7, #0x40
	ldr r0, _0802A96C @ =0x08085AD0
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrb r6, [r4]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08006908
	bl sub_08006828
	adds r1, r0, #0
	str r5, [sp]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	adds r0, r6, #0
	movs r1, #0
	bl sub_08006908
	bl sub_08006828
	movs r1, #0
	bl sub_080045FC
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r4, #6
	adds r7, r7, r0
	ldr r1, _0802A970 @ =0x08085C10
	str r5, [sp]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004A24
	adds r7, #0x40
	adds r4, #2
	ldr r5, _0802A974 @ =0x030013AC
	ldr r1, [r5]
	lsls r4, r4, #3
	movs r0, #0xf0
	subs r0, r0, r4
	asrs r0, r0, #1
	adds r1, #0x5d
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_08036670
	cmp r0, #0
	beq _0802A956
	ldr r0, [r5]
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r7, #0
	movs r2, #0x20
	bl sub_08007EA4
	ldr r0, [r5]
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	movs r2, #0x20
	bl sub_08007EA4
	ldr r0, [r5]
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x40
	movs r2, #0x20
	bl sub_08007EA4
	ldr r0, [r5]
	movs r1, #0xa1
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x60
	movs r2, #0x20
	bl sub_08007EA4
_0802A956:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A960: .4byte 0x08085B9C
_0802A964: .4byte 0x01000200
_0802A968: .4byte 0x08085C0C
_0802A96C: .4byte 0x08085AD0
_0802A970: .4byte 0x08085C10
_0802A974: .4byte 0x030013AC

	thumb_func_start sub_0802A978
sub_0802A978: @ 0x0802A978
	push {r4, lr}
	ldr r4, _0802A99C @ =0x030013AC
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A99C: .4byte 0x030013AC

	thumb_func_start sub_0802A9A0
sub_0802A9A0: @ 0x0802A9A0
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A9A4
sub_0802A9A4: @ 0x0802A9A4
	push {r4, r5, r6, r7, lr}
	movs r0, #3
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r6, _0802AA18 @ =0x08085AD0
	ldr r5, _0802AA1C @ =0x02034BF0
	ldr r0, [r5, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1a
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	adds r0, r7, #0
	bl sub_08009A70
	ldr r4, _0802AA20 @ =0x030013AC
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802AA24 @ =0x08101A7C
	ldr r2, _0802AA28 @ =0x08101A40
	adds r0, r7, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x2c]
	movs r4, #1
	rsbs r4, r4, #0
	ldrb r0, [r5, #2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _0802AA4A
	movs r2, #0
	ldrb r1, [r6]
	subs r0, #1
	cmp r1, r0
	bne _0802AA2C
	movs r4, #0
	b _0802AA4A
	.align 2, 0
_0802AA18: .4byte 0x08085AD0
_0802AA1C: .4byte 0x02034BF0
_0802AA20: .4byte 0x030013AC
_0802AA24: .4byte 0x08101A7C
_0802AA28: .4byte 0x08101A40
_0802AA2C:
	adds r2, #1
	cmp r2, #0x30
	bgt _0802AA4A
	ldr r1, _0802AA84 @ =0x08085AD0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _0802AA88 @ =0x02034BF0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	subs r0, #1
	cmp r1, r0
	bne _0802AA2C
	adds r4, r2, #0
_0802AA4A:
	movs r0, #3
	movs r1, #0x30
	bl sub_080099E0
	adds r7, r0, #0
	cmp r4, #0
	blt _0802AA94
	movs r1, #1
	bl sub_08009A34
	ldr r1, _0802AA84 @ =0x08085AD0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, _0802AA8C @ =0x0000FFFD
	adds r1, r2, #0
	ldrb r3, [r0, #2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _0802AA90 @ =0x0000FFF8
	adds r2, r3, #0
	ldrb r0, [r0, #3]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	b _0802AA9C
	.align 2, 0
_0802AA84: .4byte 0x08085AD0
_0802AA88: .4byte 0x02034BF0
_0802AA8C: .4byte 0x0000FFFD
_0802AA90: .4byte 0x0000FFF8
_0802AA94:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009A34
_0802AA9C:
	ldr r4, _0802AB2C @ =0x030013AC
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r5, _0802AB30 @ =0x08101A7C
	ldr r6, _0802AB34 @ =0x08101A40
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #5
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x44]
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #8
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x58]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0802AB38 @ =sub_0802A978
	bl sub_08007BA0
	ldr r0, [r4]
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	ldr r1, _0802AB3C @ =sub_0802A9A0
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AB2C: .4byte 0x030013AC
_0802AB30: .4byte 0x08101A7C
_0802AB34: .4byte 0x08101A40
_0802AB38: .4byte sub_0802A978
_0802AB3C: .4byte sub_0802A9A0

	thumb_func_start sub_0802AB40
sub_0802AB40: @ 0x0802AB40
	push {lr}
	ldr r0, _0802AB50 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802AB50: .4byte 0x030013AC

	thumb_func_start sub_0802AB54
sub_0802AB54: @ 0x0802AB54
	bx lr
	.align 2, 0

	thumb_func_start sub_0802AB58
sub_0802AB58: @ 0x0802AB58
	push {r4, r5, r6, lr}
	movs r0, #3
	movs r1, #0x20
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r6, _0802ABF0 @ =0x02034BF0
	movs r1, #0xe
	ldrsh r0, [r6, r1]
	adds r0, #0x78
	movs r1, #0xba
	muls r0, r1, r0
	movs r1, #0xdc
	lsls r1, r1, #3
	bl sub_08070FCC
	adds r4, r0, #0
	adds r4, #0xc
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	adds r0, #0x50
	movs r1, #0x6a
	muls r0, r1, r0
	movs r1, #0x8a
	lsls r1, r1, #3
	bl sub_08070FCC
	adds r2, r0, #0
	adds r2, #6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r4, _0802ABF4 @ =0x030013AC
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802ABF8 @ =0x08101A7C
	ldr r2, _0802ABFC @ =0x08101A40
	adds r0, r5, #0
	movs r3, #3
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x40]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0802AC00 @ =sub_0802AB40
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0802AC04 @ =sub_0802AB54
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802ABF0: .4byte 0x02034BF0
_0802ABF4: .4byte 0x030013AC
_0802ABF8: .4byte 0x08101A7C
_0802ABFC: .4byte 0x08101A40
_0802AC00: .4byte sub_0802AB40
_0802AC04: .4byte sub_0802AB54

	thumb_func_start sub_0802AC08
sub_0802AC08: @ 0x0802AC08
	push {lr}
	ldr r0, _0802AC18 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802AC18: .4byte 0x030013AC

	thumb_func_start sub_0802AC1C
sub_0802AC1C: @ 0x0802AC1C
	bx lr
	.align 2, 0

	thumb_func_start sub_0802AC20
sub_0802AC20: @ 0x0802AC20
	push {r4, r5, r6, lr}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0802ACBC @ =0x02034BF0
	ldr r6, [r0, #0x1c]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, #0x10
	movs r1, #0xba
	muls r0, r1, r0
	movs r1, #0xdc
	lsls r1, r1, #3
	bl sub_08070FCC
	adds r4, r0, #0
	adds r4, #0x14
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r0, #0x10
	movs r1, #0x6a
	muls r0, r1, r0
	movs r1, #0x8a
	lsls r1, r1, #3
	bl sub_08070FCC
	adds r2, r0, #0
	adds r2, #0xa
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r4, _0802ACC0 @ =0x030013AC
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802ACC4 @ =0x08101A7C
	ldr r2, _0802ACC8 @ =0x08101A40
	adds r0, r5, #0
	movs r3, #4
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x28]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0802ACCC @ =sub_0802AC08
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0802ACD0 @ =sub_0802AC1C
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802ACBC: .4byte 0x02034BF0
_0802ACC0: .4byte 0x030013AC
_0802ACC4: .4byte 0x08101A7C
_0802ACC8: .4byte 0x08101A40
_0802ACCC: .4byte sub_0802AC08
_0802ACD0: .4byte sub_0802AC1C

	thumb_func_start sub_0802ACD4
sub_0802ACD4: @ 0x0802ACD4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0802ACF4 @ =0x030013AC
_0802ACDA:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x48
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #2
	ble _0802ACDA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802ACF4: .4byte 0x030013AC

	thumb_func_start sub_0802ACF8
sub_0802ACF8: @ 0x0802ACF8
	push {lr}
	ldr r0, _0802AD24 @ =0x02034BF0
	ldrb r1, [r0, #2]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	ldr r2, _0802AD28 @ =0x08085AD0
	ldr r0, [r0, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1a
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #1
	cmp r1, r0
	bne _0802AD30
	ldr r0, _0802AD2C @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0xb
	bl sub_08009AFC
	b _0802AD3C
	.align 2, 0
_0802AD24: .4byte 0x02034BF0
_0802AD28: .4byte 0x08085AD0
_0802AD2C: .4byte 0x030013AC
_0802AD30:
	ldr r0, _0802AD40 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #7
	bl sub_08009AFC
_0802AD3C:
	pop {r0}
	bx r0
	.align 2, 0
_0802AD40: .4byte 0x030013AC

	thumb_func_start sub_0802AD44
sub_0802AD44: @ 0x0802AD44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0802ADE4 @ =0x030013AC
	mov r8, r0
	ldr r7, _0802ADE8 @ =0x08085BBC
_0802AD52:
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r5, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _0802ADEC @ =0x080FE2F8
	ldr r0, _0802ADF0 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r0, _0802ADF4 @ =0x080FE2EC
	adds r2, r2, r0
	ldr r2, [r2]
	ldr r3, _0802ADF8 @ =0x08085BC8
	lsls r0, r6, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x48
	adds r0, r0, r5
	str r4, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #2
	ble _0802AD52
	ldr r4, _0802ADE4 @ =0x030013AC
	ldr r0, [r4]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _0802ADFC @ =sub_0802ACD4
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _0802AE00 @ =sub_0802ACF8
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ADE4: .4byte 0x030013AC
_0802ADE8: .4byte 0x08085BBC
_0802ADEC: .4byte 0x080FE2F8
_0802ADF0: .4byte 0x03004400
_0802ADF4: .4byte 0x080FE2EC
_0802ADF8: .4byte 0x08085BC8
_0802ADFC: .4byte sub_0802ACD4
_0802AE00: .4byte sub_0802ACF8

	thumb_func_start sub_0802AE04
sub_0802AE04: @ 0x0802AE04
	push {lr}
	ldr r0, _0802AE38 @ =0x030013AC
	ldr r2, [r0]
	adds r3, r2, #0
	adds r3, #0x60
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802AE34
	adds r0, r2, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AE34
	ldr r1, _0802AE3C @ =0x040000B0
	adds r0, r2, #0
	adds r0, #0x66
	str r0, [r1]
	ldr r0, _0802AE40 @ =0x04000018
	str r0, [r1, #4]
	ldr r0, _0802AE44 @ =0xA2400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strb r0, [r3]
_0802AE34:
	pop {r0}
	bx r0
	.align 2, 0
_0802AE38: .4byte 0x030013AC
_0802AE3C: .4byte 0x040000B0
_0802AE40: .4byte 0x04000018
_0802AE44: .4byte 0xA2400001

	thumb_func_start sub_0802AE48
sub_0802AE48: @ 0x0802AE48
	push {lr}
	ldr r0, _0802AE54 @ =sub_0802AE04
	bl sub_080094F4
	pop {r0}
	bx r0
	.align 2, 0
_0802AE54: .4byte sub_0802AE04

	thumb_func_start sub_0802AE58
sub_0802AE58: @ 0x0802AE58
	push {r4, r5, r6, r7, lr}
	ldr r3, _0802AE80 @ =0x030013AC
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x5e
	ldrb r2, [r0]
	movs r0, #0x98
	subs r4, r0, r2
	adds r1, #0x61
	ldrb r0, [r1]
	adds r6, r3, #0
	cmp r0, #1
	beq _0802AE88
	ldr r7, _0802AE84 @ =0x030024E0
	cmp r0, #1
	ble _0802AF2A
	cmp r0, #2
	beq _0802AEDC
	b _0802AF2A
	.align 2, 0
_0802AE80: .4byte 0x030013AC
_0802AE84: .4byte 0x030024E0
_0802AE88:
	subs r4, #1
	movs r3, #0
	ldr r7, _0802AED4 @ =0x030024E0
	cmp r3, r4
	bge _0802AEAE
	adds r5, r6, #0
_0802AE94:
	ldr r0, [r5]
	lsls r2, r3, #1
	adds r1, r0, #0
	adds r1, #0x64
	adds r1, r1, r2
	adds r0, #0x5d
	ldrb r0, [r0]
	rsbs r0, r0, #0
	ldrh r2, [r1]
	strh r0, [r1]
	adds r3, #1
	cmp r3, r4
	blt _0802AE94
_0802AEAE:
	adds r3, r4, #0
	cmp r3, #0x9f
	bgt _0802AF22
	ldr r4, _0802AED8 @ =0x030013AC
_0802AEB6:
	ldr r0, [r4]
	lsls r2, r3, #1
	adds r1, r0, #0
	adds r1, #0x64
	adds r1, r1, r2
	adds r0, #0x62
	ldrb r0, [r0]
	rsbs r0, r0, #0
	ldrh r2, [r1]
	strh r0, [r1]
	adds r3, #1
	cmp r3, #0x9f
	ble _0802AEB6
	b _0802AF22
	.align 2, 0
_0802AED4: .4byte 0x030024E0
_0802AED8: .4byte 0x030013AC
_0802AEDC:
	adds r4, #1
	movs r3, #0
	cmp r3, r4
	bge _0802AF00
	adds r5, r6, #0
_0802AEE6:
	ldr r0, [r5]
	lsls r2, r3, #1
	adds r1, r0, #0
	adds r1, #0x64
	adds r1, r1, r2
	adds r0, #0x62
	ldrb r0, [r0]
	rsbs r0, r0, #0
	ldrh r2, [r1]
	strh r0, [r1]
	adds r3, #1
	cmp r3, r4
	blt _0802AEE6
_0802AF00:
	adds r3, r4, #0
	cmp r3, #0x9f
	bgt _0802AF22
	ldr r4, _0802AF44 @ =0x030013AC
_0802AF08:
	ldr r0, [r4]
	lsls r2, r3, #1
	adds r1, r0, #0
	adds r1, #0x64
	adds r1, r1, r2
	adds r0, #0x5d
	ldrb r0, [r0]
	rsbs r0, r0, #0
	ldrh r2, [r1]
	strh r0, [r1]
	adds r3, #1
	cmp r3, #0x9f
	ble _0802AF08
_0802AF22:
	ldr r0, [r6]
	adds r0, #0x60
	movs r1, #1
	strb r1, [r0]
_0802AF2A:
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x5d
	ldrb r1, [r1]
	rsbs r1, r1, #0
	strh r1, [r7, #0xe]
	adds r0, #0x5e
	ldrb r0, [r0]
	subs r0, #0x88
	strh r0, [r7, #0x16]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AF44: .4byte 0x030013AC

	thumb_func_start sub_0802AF48
sub_0802AF48: @ 0x0802AF48
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r4, _0802AFB4 @ =0x030013AC
	ldr r6, _0802AFB8 @ =0x030024E0
	ldr r7, _0802AFBC @ =sub_0802AE58
	adds r5, r4, #0
_0802AF54:
	ldr r0, [r5]
	lsls r2, r3, #1
	adds r1, r0, #0
	adds r1, #0x64
	adds r1, r1, r2
	adds r0, #0x5d
	ldrb r0, [r0]
	rsbs r0, r0, #0
	ldrh r2, [r1]
	strh r0, [r1]
	adds r3, #1
	cmp r3, #0x9f
	ble _0802AF54
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xe]
	adds r0, r1, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	subs r0, #0x88
	strh r0, [r6, #0x16]
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	adds r1, r7, #0
	bl sub_08007B84
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0802AFC0 @ =sub_0802AE48
	bl sub_08007BA0
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x5d
	ldrb r1, [r1]
	adds r0, #0x62
	strb r1, [r0]
	ldr r0, _0802AFC4 @ =sub_0802AE04
	movs r1, #0xff
	bl sub_08009460
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AFB4: .4byte 0x030013AC
_0802AFB8: .4byte 0x030024E0
_0802AFBC: .4byte sub_0802AE58
_0802AFC0: .4byte sub_0802AE48
_0802AFC4: .4byte sub_0802AE04

	thumb_func_start sub_0802AFC8
sub_0802AFC8: @ 0x0802AFC8
	push {lr}
	ldr r0, _0802AFD8 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802AFD8: .4byte 0x030013AC

	thumb_func_start sub_0802AFDC
sub_0802AFDC: @ 0x0802AFDC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802AFE0
sub_0802AFE0: @ 0x0802AFE0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #1
	beq _0802B048
	cmp r6, #1
	bgt _0802AFF8
	cmp r6, #0
	beq _0802AFFE
	b _0802B092
_0802AFF8:
	cmp r6, #2
	beq _0802B084
	b _0802B092
_0802AFFE:
	ldr r1, _0802B038 @ =0x08085BD0
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802B03C @ =0x05000020
	bl sub_08008348
	ldr r4, _0802B040 @ =0x030013AC
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r1, #0x78
	bl sub_08009A70
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	ldr r2, _0802B044 @ =0x08085BE8
	ldrb r1, [r5, #1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r5]
	strh r6, [r5, #2]
	b _0802B092
	.align 2, 0
_0802B038: .4byte 0x08085BD0
_0802B03C: .4byte 0x05000020
_0802B040: .4byte 0x030013AC
_0802B044: .4byte 0x08085BE8
_0802B048:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r0
	asrs r2, r1, #3
	subs r2, #0x10
	ldr r0, _0802B080 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x78
	bl sub_08009A70
	ldrh r0, [r5, #2]
	cmp r0, #7
	bls _0802B092
	movs r0, #2
	strb r0, [r5]
	movs r0, #0
	strh r0, [r5, #2]
	b _0802B092
	.align 2, 0
_0802B080: .4byte 0x030013AC
_0802B084:
	ldr r0, _0802B098 @ =0x030013AC
	ldr r0, [r0]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0802B09C @ =sub_0802AFDC
	bl sub_08007B84
_0802B092:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802B098: .4byte 0x030013AC
_0802B09C: .4byte sub_0802AFDC

	thumb_func_start sub_0802B0A0
sub_0802B0A0: @ 0x0802B0A0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r6, _0802B174 @ =0x030013AC
	ldr r0, [r6]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	ldr r0, _0802B178 @ =0x08085AD0
	mov sl, r0
	ldr r1, _0802B17C @ =0x02034BF0
	mov sb, r1
	ldr r0, [r1, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1a
	lsls r0, r0, #2
	add r0, sl
	ldrb r5, [r0, #1]
	movs r0, #3
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #9
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x20]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _0802B180 @ =0x080FE2F8
	ldr r0, _0802B184 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0802B188 @ =0x080FE2F4
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r3, _0802B18C @ =0x08085BE8
	lsls r0, r5, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r6]
	str r4, [r0, #0x54]
	ldr r0, _0802B190 @ =0x08085BD0
	lsls r5, r5, #2
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r1, _0802B194 @ =0x05000020
	bl sub_08008348
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	strh r0, [r1, #2]
	mov r1, sb
	ldr r0, [r1, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1a
	lsls r0, r0, #2
	add r0, sl
	ldrb r0, [r0, #1]
	mov r1, r8
	strb r0, [r1, #1]
	ldr r0, [r6]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0802B198 @ =sub_0802AFC8
	bl sub_08007BA0
	ldr r0, [r6]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0802B19C @ =sub_0802AFDC
	bl sub_08007B84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802B174: .4byte 0x030013AC
_0802B178: .4byte 0x08085AD0
_0802B17C: .4byte 0x02034BF0
_0802B180: .4byte 0x080FE2F8
_0802B184: .4byte 0x03004400
_0802B188: .4byte 0x080FE2F4
_0802B18C: .4byte 0x08085BE8
_0802B190: .4byte 0x08085BD0
_0802B194: .4byte 0x05000020
_0802B198: .4byte sub_0802AFC8
_0802B19C: .4byte sub_0802AFDC

	thumb_func_start sub_0802B1A0
sub_0802B1A0: @ 0x0802B1A0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r5, _0802B1D4 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, r4
	beq _0802B1CE
	movs r0, #0
	strb r4, [r1, #1]
	strb r0, [r1]
	strh r0, [r1, #2]
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0802B1D8 @ =sub_0802AFE0
	bl sub_08007B84
_0802B1CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B1D4: .4byte 0x030013AC
_0802B1D8: .4byte sub_0802AFE0

	thumb_func_start sub_0802B1DC
sub_0802B1DC: @ 0x0802B1DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	ldr r1, _0802B4B0 @ =0x08085F64
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r1
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0802B21A
	ldr r5, _0802B4B4 @ =0x0807F048
	adds r4, r0, #0
	lsls r4, r4, #3
	adds r0, r4, r5
	ldr r0, [r0]
	ldr r1, _0802B4B8 @ =0x05000260
	bl sub_08008308
	adds r5, #4
	adds r4, r4, r5
	ldr r0, [r4]
	ldr r1, _0802B4BC @ =0x06010000
	bl sub_08008374
_0802B21A:
	ldr r6, _0802B4C0 @ =0x06010200
	ldr r1, _0802B4C4 @ =0x080FE2DC
	ldr r4, _0802B4C8 @ =0x03004400
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802B4CC @ =0x05000240
	bl sub_08008308
	ldr r7, _0802B4D0 @ =0x030013B0
	ldr r0, [r7]
	str r6, [r0, #0x20]
	ldr r1, _0802B4D4 @ =0x080FE2E0
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_08008374
	adds r6, r0, r6
	ldr r0, _0802B4D8 @ =0x08102680
	ldr r1, _0802B4DC @ =0x05000200
	bl sub_08008308
	ldr r0, [r7]
	str r6, [r0, #0x1c]
	ldr r0, _0802B4E0 @ =0x081029D8
	adds r1, r6, #0
	bl sub_08008374
	adds r6, r6, r0
	ldr r0, _0802B4E4 @ =0x08103120
	ldr r1, _0802B4E8 @ =0x05000280
	bl sub_08008308
	ldr r0, [r7]
	str r6, [r0, #0x24]
	ldr r0, _0802B4EC @ =0x081031A0
	adds r1, r6, #0
	bl sub_08008374
	ldr r0, _0802B4F0 @ =0x08102370
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0802B4F4 @ =0x0810253C
	ldr r1, _0802B4F8 @ =0x0600C000
	bl sub_08008374
	ldr r0, _0802B4FC @ =0x081023B4
	ldr r1, _0802B500 @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r4, _0802B504 @ =0x030024E0
	movs r5, #0
	ldr r0, _0802B508 @ =0x00001E0D
	strh r0, [r4, #4]
	ldr r0, _0802B50C @ =0x08102498
	ldr r1, _0802B510 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0802B514 @ =0x00001F0F
	strh r0, [r4, #8]
	ldr r0, [r7]
	adds r0, #0x8d
	strb r5, [r0]
	ldr r0, [r7]
	adds r0, #0x8e
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, #0x8c
	strb r5, [r0]
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802B2D4
	bl sub_0800692C
	ldr r1, [r7]
	adds r1, #0x8c
	strb r0, [r1]
_0802B2D4:
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #0x8e
	ldrb r1, [r1]
	adds r0, #0x8f
	strb r1, [r0]
	bl sub_080057D0
	movs r5, #0
_0802B2E6:
	ldr r0, _0802B4D0 @ =0x030013B0
	ldr r4, [r0]
	adds r1, r4, #0
	adds r1, #0x8c
	subs r0, r5, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #0x32
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #2
	movs r1, #3
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x8e
	adds r0, r5, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r4, r0, #0
	adds r4, #0xf
	adds r3, r4, #0
	cmp r4, #0
	bge _0802B33C
	adds r3, r0, #0
	adds r3, #0x1e
_0802B33C:
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0802BED8
	adds r5, #1
	cmp r5, #5
	ble _0802B2E6
	movs r5, #0
_0802B356:
	ldr r0, _0802B4D0 @ =0x030013B0
	ldr r4, [r0]
	adds r1, r4, #0
	adds r1, #0x8c
	subs r0, r5, #1
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #0x32
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x8e
	adds r0, r5, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r4, r0, #0
	adds r4, #0xf
	adds r3, r4, #0
	cmp r4, #0
	bge _0802B3A0
	adds r3, r0, #0
	adds r3, #0x1e
_0802B3A0:
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0802BED8
	adds r5, #1
	cmp r5, #5
	ble _0802B356
	movs r5, #0
_0802B3BA:
	ldr r0, _0802B4D0 @ =0x030013B0
	mov r8, r0
	ldr r4, [r0]
	adds r1, r4, #0
	adds r1, #0x8c
	adds r0, r5, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #0x32
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #3
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x8e
	adds r0, r5, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r4, r0, #0
	adds r4, #0xf
	adds r3, r4, #0
	cmp r4, #0
	bge _0802B412
	adds r3, r0, #0
	adds r3, #0x1e
_0802B412:
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0802BED8
	adds r5, #1
	cmp r5, #5
	ble _0802B3BA
	ldr r2, _0802B504 @ =0x030024E0
	ldr r1, _0802B518 @ =0x080861E0
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0x8d
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #8
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r1, r3, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2, #6]
	movs r3, #1
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r0, #0
_0802B456:
	lsls r0, r5, #7
	ldr r1, _0802B51C @ =0x0600D000
	adds r2, r0, r1
	adds r5, #1
	movs r4, #0x17
_0802B460:
	adds r0, r3, #0
	orrs r0, r6
	strh r0, [r2]
	adds r3, #1
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r3, #0
	orrs r0, r6
	strh r0, [r1]
	adds r3, #1
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bge _0802B460
	cmp r5, #2
	ble _0802B456
	ldr r6, _0802B520 @ =0x06008020
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802B52C
	ldr r6, _0802B524 @ =0x06008620
	ldr r0, _0802B528 @ =0x08085EF4
	ldr r0, [r0, #4]
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	b _0802B568
	.align 2, 0
_0802B4B0: .4byte 0x08085F64
_0802B4B4: .4byte 0x0807F048
_0802B4B8: .4byte 0x05000260
_0802B4BC: .4byte 0x06010000
_0802B4C0: .4byte 0x06010200
_0802B4C4: .4byte 0x080FE2DC
_0802B4C8: .4byte 0x03004400
_0802B4CC: .4byte 0x05000240
_0802B4D0: .4byte 0x030013B0
_0802B4D4: .4byte 0x080FE2E0
_0802B4D8: .4byte 0x08102680
_0802B4DC: .4byte 0x05000200
_0802B4E0: .4byte 0x081029D8
_0802B4E4: .4byte 0x08103120
_0802B4E8: .4byte 0x05000280
_0802B4EC: .4byte 0x081031A0
_0802B4F0: .4byte 0x08102370
_0802B4F4: .4byte 0x0810253C
_0802B4F8: .4byte 0x0600C000
_0802B4FC: .4byte 0x081023B4
_0802B500: .4byte 0x0600F000
_0802B504: .4byte 0x030024E0
_0802B508: .4byte 0x00001E0D
_0802B50C: .4byte 0x08102498
_0802B510: .4byte 0x0600F800
_0802B514: .4byte 0x00001F0F
_0802B518: .4byte 0x080861E0
_0802B51C: .4byte 0x0600D000
_0802B520: .4byte 0x06008020
_0802B524: .4byte 0x06008620
_0802B528: .4byte 0x08085EF4
_0802B52C:
	movs r5, #0
	ldr r4, _0802B5EC @ =0x08085F6C
_0802B530:
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r6, r6, r2
	adds r5, #1
	cmp r5, #2
	ble _0802B530
_0802B568:
	ldr r1, _0802B5F0 @ =0x030024E0
	ldr r0, _0802B5F4 @ =0x00001A08
	strh r0, [r1, #2]
	ldr r0, _0802B5F8 @ =sub_0802BD44
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r4, _0802B5FC @ =0x030013B0
	ldr r1, [r4]
	strh r0, [r1, #8]
	ldr r0, _0802B600 @ =sub_0802BEBC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xa]
	ldr r0, _0802B604 @ =sub_0802C164
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xc]
	ldr r0, _0802B608 @ =sub_0802C2A8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xe]
	ldr r0, _0802B60C @ =sub_0802C37C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x10]
	ldr r0, _0802B610 @ =sub_0802C458
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x12]
	ldr r0, _0802B614 @ =sub_0802C534
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x14]
	ldr r0, _0802B618 @ =sub_0802C62C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x16]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B5EC: .4byte 0x08085F6C
_0802B5F0: .4byte 0x030024E0
_0802B5F4: .4byte 0x00001A08
_0802B5F8: .4byte sub_0802BD44
_0802B5FC: .4byte 0x030013B0
_0802B600: .4byte sub_0802BEBC
_0802B604: .4byte sub_0802C164
_0802B608: .4byte sub_0802C2A8
_0802B60C: .4byte sub_0802C37C
_0802B610: .4byte sub_0802C458
_0802B614: .4byte sub_0802C534
_0802B618: .4byte sub_0802C62C

	thumb_func_start sub_0802B61C
sub_0802B61C: @ 0x0802B61C
	push {r4, lr}
	ldr r4, _0802B678 @ =0x030013B0
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B678: .4byte 0x030013B0

	thumb_func_start sub_0802B67C
sub_0802B67C: @ 0x0802B67C
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r4, _0802B6E8 @ =0x030013B0
	movs r0, #0xa0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0xa0
	bl sub_08007EFC
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x90
	ldr r3, _0802B6EC @ =0x02034BF0
	movs r4, #0x89
	lsls r4, r4, #2
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r4, #4
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	subs r4, #0x18
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	bl sub_0802B1DC
	movs r0, #1
	bl sub_08002B98
	ldr r5, _0802B6F0 @ =0x080861E8
_0802B6D6:
	ldr r0, _0802B6E8 @ =0x030013B0
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0802B6F4
	subs r0, #1
	strh r0, [r1, #6]
	b _0802B700
	.align 2, 0
_0802B6E8: .4byte 0x030013B0
_0802B6EC: .4byte 0x02034BF0
_0802B6F0: .4byte 0x080861E8
_0802B6F4:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0802B700:
	ldr r4, _0802B714 @ =0x030013B0
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0802B718
	movs r0, #1
	bl sub_08002B98
	b _0802B6D6
	.align 2, 0
_0802B714: .4byte 0x030013B0
_0802B718:
	bl sub_0802B61C
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	bl sub_08007CF8
	movs r0, #3
	bl sub_08008790
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802B738
sub_0802B738: @ 0x0802B738
	ldr r1, _0802B74C @ =0x030013B0
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3]
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0802B74C: .4byte 0x030013B0

	thumb_func_start sub_0802B750
sub_0802B750: @ 0x0802B750
	push {r4, r5, lr}
	bl sub_08008174
	ldr r4, _0802B794 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	movs r5, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802B79C
	ldr r0, _0802B798 @ =0x0000FFD8
	b _0802B79E
	.align 2, 0
_0802B794: .4byte 0x030024E0
_0802B798: .4byte 0x0000FFD8
_0802B79C:
	ldr r0, _0802B7C0 @ =0x0000FFD0
_0802B79E:
	strh r0, [r4, #0xa]
	ldr r4, _0802B7C4 @ =0x030024E0
	ldr r0, _0802B7C8 @ =0x0000FFF4
	strh r0, [r4, #0x12]
	bl sub_0802C8EC
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_0803B840
	movs r0, #1
	bl sub_0802B738
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B7C0: .4byte 0x0000FFD0
_0802B7C4: .4byte 0x030024E0
_0802B7C8: .4byte 0x0000FFF4

	thumb_func_start sub_0802B7CC
sub_0802B7CC: @ 0x0802B7CC
	push {r4, r5, r6, r7, lr}
	ldr r5, _0802B7E4 @ =0x030013B0
	ldr r1, [r5]
	ldrb r4, [r1, #1]
	cmp r4, #1
	beq _0802B7F6
	cmp r4, #1
	bgt _0802B7E8
	cmp r4, #0
	bne _0802B7E2
	b _0802BC66
_0802B7E2:
	b _0802BC72
	.align 2, 0
_0802B7E4: .4byte 0x030013B0
_0802B7E8:
	cmp r4, #2
	bne _0802B7EE
	b _0802BC4C
_0802B7EE:
	cmp r4, #3
	bne _0802B7F4
	b _0802BC6C
_0802B7F4:
	b _0802BC72
_0802B7F6:
	adds r0, r1, #0
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802B804
	b _0802BC72
_0802B804:
	ldr r4, _0802B820 @ =0x030024B0
	ldrh r1, [r4]
	movs r6, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802B824
	movs r0, #0xce
	bl sub_0806F5DC
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _0802BC72
	.align 2, 0
_0802B820: .4byte 0x030024B0
_0802B824:
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0802B830
	b _0802BA90
_0802B830:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0802B83A
	b _0802B958
_0802B83A:
	movs r0, #0xcb
	bl sub_0806F5DC
	bl sub_0802BD18
	ldr r0, [r5]
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802B864
	adds r4, r5, #0
_0802B852:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802B852
_0802B864:
	ldr r7, _0802B954 @ =0x030013B0
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	adds r0, #0x2d
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #2
	movs r1, #3
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	adds r0, #5
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0xf
	adds r3, r1, #0
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r1, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802BED8
	movs r0, #1
	bl sub_08002B98
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	adds r0, #0x31
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r5, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r0, #5
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0xf
	adds r3, r1, #0
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r1, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802BED8
	movs r0, #1
	bl sub_08002B98
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	adds r0, #0x35
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #4
	movs r1, #3
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	adds r0, #5
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0xf
	b _0802BA70
	.align 2, 0
_0802B954: .4byte 0x030013B0
_0802B958:
	movs r0, #0xcb
	bl sub_0806F5DC
	bl sub_0802BCEC
	ldr r0, [r5]
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802B982
	adds r4, r5, #0
_0802B970:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802B970
_0802B982:
	ldr r7, _0802BA8C @ =0x030013B0
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	adds r0, #0x32
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #2
	movs r1, #3
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	adds r0, #0xa
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0x14
	adds r3, r1, #0
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r1, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802BED8
	movs r0, #1
	bl sub_08002B98
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	adds r0, #0x36
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r5, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r0, #0xa
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0x14
	adds r3, r1, #0
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r1, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802BED8
	movs r0, #1
	bl sub_08002B98
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	adds r0, #0x3a
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #4
	movs r1, #3
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	adds r0, #0xa
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0x14
_0802BA70:
	adds r3, r1, #0
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r1, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802BED8
	movs r0, #1
	bl sub_08002B98
	b _0802BC72
	.align 2, 0
_0802BA8C: .4byte 0x030013B0
_0802BA90:
	ldrh r1, [r4, #2]
	movs r0, #0xcc
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802BA9E
	b _0802BC72
_0802BA9E:
	movs r0, #0xcb
	bl sub_0806F5DC
	ldrh r1, [r4, #2]
	movs r0, #0x88
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802BB78
	ldr r0, [r5]
	ldr r0, [r0, #0x54]
	movs r1, #0x6f
	movs r2, #0x43
	bl sub_08009A70
	ldr r4, [r5]
	adds r4, #0x8d
	ldrb r0, [r4]
	adds r0, #2
	movs r1, #3
	bl sub_08071064
	strb r0, [r4]
	ldr r4, [r5]
	adds r4, #0x8c
	ldrb r0, [r4]
	adds r0, #0x2e
	movs r1, #0x32
	bl sub_08071064
	strb r0, [r4]
	ldr r2, _0802BB6C @ =0x030024E0
	ldr r1, _0802BB70 @ =0x080861E0
	ldr r0, [r5]
	adds r0, #0x8d
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #8
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r2, #6]
	movs r5, #0
_0802BAFC:
	ldr r0, _0802BB74 @ =0x030013B0
	ldr r4, [r0]
	adds r1, r4, #0
	adds r1, #0x8c
	subs r0, r5, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #0x32
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #2
	movs r1, #3
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x8e
	adds r0, r5, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r4, r0, #0
	adds r4, #0xf
	adds r3, r4, #0
	cmp r4, #0
	bge _0802BB52
	adds r3, r0, #0
	adds r3, #0x1e
_0802BB52:
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0802BED8
	adds r5, #1
	cmp r5, #5
	ble _0802BAFC
	b _0802BC32
	.align 2, 0
_0802BB6C: .4byte 0x030024E0
_0802BB70: .4byte 0x080861E0
_0802BB74: .4byte 0x030013B0
_0802BB78:
	ldr r0, [r5]
	ldr r0, [r0, #0x58]
	movs r1, #0x6f
	movs r2, #0x94
	bl sub_08009A70
	ldr r4, [r5]
	adds r4, #0x8d
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #3
	bl sub_08071064
	strb r0, [r4]
	ldr r4, [r5]
	adds r4, #0x8c
	ldrb r0, [r4]
	adds r0, #0x36
	movs r1, #0x32
	bl sub_08071064
	strb r0, [r4]
	ldr r2, _0802BC40 @ =0x030024E0
	ldr r1, _0802BC44 @ =0x080861E0
	ldr r0, [r5]
	adds r0, #0x8d
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #8
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r2, #6]
	movs r5, #0
_0802BBC4:
	ldr r0, _0802BC48 @ =0x030013B0
	ldr r4, [r0]
	adds r1, r4, #0
	adds r1, #0x8c
	adds r0, r5, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #0x32
	movs r1, #0x32
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #3
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x8e
	adds r0, r5, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #6
	bl sub_08071064
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r4, r0, #0
	adds r4, #0xf
	adds r3, r4, #0
	cmp r4, #0
	bge _0802BC1A
	adds r3, r0, #0
	adds r3, #0x1e
_0802BC1A:
	asrs r3, r3, #4
	lsls r3, r3, #4
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0802BED8
	adds r5, #1
	cmp r5, #5
	ble _0802BBC4
_0802BC32:
	ldr r0, _0802BC48 @ =0x030013B0
	ldr r1, [r0]
	movs r0, #6
	strh r0, [r1, #6]
	movs r0, #2
	strb r0, [r1, #1]
	b _0802BC72
	.align 2, 0
_0802BC40: .4byte 0x030024E0
_0802BC44: .4byte 0x080861E0
_0802BC48: .4byte 0x030013B0
_0802BC4C:
	ldr r0, [r1, #0x54]
	movs r1, #0x6f
	movs r2, #0x47
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x58]
	movs r1, #0x6f
	movs r2, #0x90
	bl sub_08009A70
	ldr r1, [r5]
	strh r4, [r1, #6]
_0802BC66:
	movs r0, #1
	strb r0, [r1, #1]
	b _0802BC72
_0802BC6C:
	movs r0, #2
	bl sub_0802B738
_0802BC72:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802BC78
sub_0802BC78: @ 0x0802BC78
	push {lr}
	bl sub_0803B868
	ldr r0, _0802BC8C @ =0x030013B0
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #2]
	pop {r0}
	bx r0
	.align 2, 0
_0802BC8C: .4byte 0x030013B0

	thumb_func_start sub_0802BC90
sub_0802BC90: @ 0x0802BC90
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802BCC4 @ =0x030013B0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0802BCC8 @ =0x080861F4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BCC4: .4byte 0x030013B0
_0802BCC8: .4byte 0x080861F4

	thumb_func_start sub_0802BCCC
sub_0802BCCC: @ 0x0802BCCC
	push {lr}
	ldr r0, _0802BCE8 @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0x88
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0802BC90
	pop {r0}
	bx r0
	.align 2, 0
_0802BCE8: .4byte 0x030013B0

	thumb_func_start sub_0802BCEC
sub_0802BCEC: @ 0x0802BCEC
	push {r4, lr}
	ldr r4, _0802BD14 @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	movs r1, #0x6f
	movs r2, #0x92
	bl sub_08009A70
	ldr r1, [r4]
	adds r1, #0x88
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0802BC90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802BD14: .4byte 0x030013B0

	thumb_func_start sub_0802BD18
sub_0802BD18: @ 0x0802BD18
	push {r4, lr}
	ldr r4, _0802BD40 @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	movs r1, #0x6f
	movs r2, #0x45
	bl sub_08009A70
	ldr r1, [r4]
	adds r1, #0x88
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0802BC90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802BD40: .4byte 0x030013B0

	thumb_func_start sub_0802BD44
sub_0802BD44: @ 0x0802BD44
	push {lr}
	ldr r0, _0802BD60 @ =0x030013B0
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x18]
	adds r0, r1, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	lsls r0, r0, #4
	strh r0, [r1, #0x1a]
	bl sub_0802BCCC
	pop {r0}
	bx r0
	.align 2, 0
_0802BD60: .4byte 0x030013B0

	thumb_func_start sub_0802BD64
sub_0802BD64: @ 0x0802BD64
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BD68
sub_0802BD68: @ 0x0802BD68
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #0
	beq _0802BD7C
	cmp r6, #1
	beq _0802BDE0
	b _0802BDF2
_0802BD7C:
	ldr r7, _0802BDDC @ =0x030013B0
	ldr r4, [r7]
	ldrh r1, [r4, #0x1a]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r2, r1, r0
	adds r0, r2, #0
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r2, r0
	strh r0, [r4, #0x1a]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802BDF2
	adds r4, #0x8c
	ldrb r0, [r4]
	adds r0, #0x33
	movs r1, #0x32
	bl sub_08071064
	strb r0, [r4]
	ldr r4, [r7]
	adds r4, #0x8e
	ldrb r0, [r4]
	adds r0, #7
	movs r1, #6
	bl sub_08071064
	strb r0, [r4]
	ldr r0, [r7]
	adds r4, r0, #0
	adds r4, #0x8f
	ldrb r1, [r4]
	adds r2, r1, #0
	adds r2, #0x11
	adds r0, r2, #0
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	strb r0, [r4]
	strh r6, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _0802BDF2
	.align 2, 0
_0802BDDC: .4byte 0x030013B0
_0802BDE0:
	ldr r0, _0802BDF8 @ =0x030013B0
	ldr r0, [r0]
	ldr r0, [r0, #0x58]
	movs r1, #0x6f
	movs r2, #0x90
	bl sub_08009A70
	bl sub_0802BCCC
_0802BDF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BDF8: .4byte 0x030013B0

	thumb_func_start sub_0802BDFC
sub_0802BDFC: @ 0x0802BDFC
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _0802BE56
	cmp r0, #1
	bgt _0802BE14
	cmp r0, #0
	beq _0802BE1A
	b _0802BE96
_0802BE14:
	cmp r0, #2
	beq _0802BE84
	b _0802BE96
_0802BE1A:
	ldr r5, _0802BE80 @ =0x030013B0
	ldr r4, [r5]
	adds r4, #0x8c
	ldrb r0, [r4]
	adds r0, #0x31
	movs r1, #0x32
	bl sub_08071064
	strb r0, [r4]
	ldr r4, [r5]
	adds r4, #0x8e
	ldrb r0, [r4]
	adds r0, #5
	movs r1, #6
	bl sub_08071064
	strb r0, [r4]
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x8f
	ldrb r1, [r3]
	adds r2, r1, #0
	adds r2, #0xf
	adds r0, r2, #0
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	strb r0, [r3]
	movs r0, #1
	strb r0, [r6]
_0802BE56:
	ldr r0, _0802BE80 @ =0x030013B0
	ldr r3, [r0]
	ldrh r1, [r3, #0x1a]
	adds r2, r1, #0
	adds r2, #0xf0
	adds r0, r2, #0
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r2, r0
	strh r0, [r3, #0x1a]
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802BE96
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _0802BE96
	.align 2, 0
_0802BE80: .4byte 0x030013B0
_0802BE84:
	ldr r0, _0802BE9C @ =0x030013B0
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	movs r1, #0x6f
	movs r2, #0x47
	bl sub_08009A70
	bl sub_0802BCCC
_0802BE96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802BE9C: .4byte 0x030013B0

	thumb_func_start sub_0802BEA0
sub_0802BEA0: @ 0x0802BEA0
	ldr r0, _0802BEB4 @ =0x030013B0
	ldr r1, [r0]
	ldrh r0, [r1, #0x18]
	ldrb r1, [r1, #0x1a]
	ldr r2, _0802BEB8 @ =0x030024E0
	subs r0, #0x28
	strh r0, [r2, #0xe]
	subs r1, #0x50
	strh r1, [r2, #0x16]
	bx lr
	.align 2, 0
_0802BEB4: .4byte 0x030013B0
_0802BEB8: .4byte 0x030024E0

	thumb_func_start sub_0802BEBC
sub_0802BEBC: @ 0x0802BEBC
	push {lr}
	ldr r0, _0802BED0 @ =0x030013B0
	ldr r0, [r0]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0802BED4 @ =sub_0802BEA0
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0802BED0: .4byte 0x030013B0
_0802BED4: .4byte sub_0802BEA0

	thumb_func_start sub_0802BED8
sub_0802BED8: @ 0x0802BED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r5, r1, #3
	lsls r1, r1, #8
	ldr r0, _0802BF70 @ =0x06000020
	adds r6, r1, r0
	movs r0, #0
	mov sb, r0
	str r0, [sp, #4]
	ldr r2, _0802BF74 @ =0x01000140
	add r0, sp, #4
	adds r1, r6, #0
	bl CpuFastSet
	ldr r1, _0802BF78 @ =0x030013B0
	mov r8, r1
	ldr r0, [r1]
	adds r0, #0x90
	ldr r1, _0802BF7C @ =0x08085F00
	lsls r4, r4, #1
	adds r4, r4, r1
	ldrh r4, [r4]
	adds r1, r4, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802BF4C
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x98
	adds r1, r4, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802BF84
_0802BF4C:
	ldr r1, _0802BF80 @ =0x08085F64
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	b _0802BF92
	.align 2, 0
_0802BF70: .4byte 0x06000020
_0802BF74: .4byte 0x01000140
_0802BF78: .4byte 0x030013B0
_0802BF7C: .4byte 0x08085F00
_0802BF80: .4byte 0x08085F64
_0802BF84:
	ldr r1, _0802BFD8 @ =0x0808620C
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004A24
_0802BF92:
	adds r5, #1
	ldr r1, _0802BFDC @ =0x08086200
	lsls r0, r7, #2
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #7
	ldr r0, [r0]
	adds r2, r0, r1
	movs r0, #0x80
	lsls r0, r0, #5
	adds r4, r0, #0
	movs r3, #0x13
_0802BFAA:
	adds r0, r5, #0
	orrs r0, r4
	strh r0, [r2]
	adds r5, #1
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r5, #0
	orrs r0, r4
	strh r0, [r1]
	adds r5, #1
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _0802BFAA
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BFD8: .4byte 0x0808620C
_0802BFDC: .4byte 0x08086200

	thumb_func_start sub_0802BFE0
sub_0802BFE0: @ 0x0802BFE0
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0802C024 @ =0x030013B0
_0802BFE6:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #4
	ble _0802BFE6
	movs r4, #0
	ldr r5, _0802C024 @ =0x030013B0
_0802BFFE:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #4
	ble _0802BFFE
	ldr r0, _0802C024 @ =0x030013B0
	ldr r0, [r0]
	ldr r0, [r0, #0x50]
	bl sub_08009A00
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C024: .4byte 0x030013B0

	thumb_func_start sub_0802C028
sub_0802C028: @ 0x0802C028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0802C0EC @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	mov sl, r0
	adds r7, r4, #0
	mov sb, r0
	mov r8, r0
_0802C048:
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	add r0, sl
	movs r1, #0x32
	bl sub_08071064
	adds r6, r0, #0
	adds r0, r4, #0
	adds r0, #0x28
	add r0, r8
	ldr r0, [r0]
	ldrh r2, [r4, #0x1a]
	movs r1, #0xf
	ands r2, r1
	subs r2, #0x50
	mov r1, sb
	subs r2, r1, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #8
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0x28
	add r0, r8
	ldr r5, [r0]
	ldr r4, _0802C0F0 @ =0x08085E2C
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	bl sub_0800693C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AFC
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x3c
	add r0, r8
	ldr r0, [r0]
	ldrh r2, [r1, #0x1a]
	movs r1, #0xf
	ands r2, r1
	subs r2, #0x58
	mov r1, sb
	subs r2, r1, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xd7
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0x90
	ldr r2, _0802C0F4 @ =0x08085F00
	lsls r1, r6, #1
	adds r1, r1, r2
	ldrh r4, [r1]
	adds r1, r4, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802C0F8
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	beq _0802C0F8
	ldr r0, [r7]
	adds r0, #0x3c
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _0802C106
	.align 2, 0
_0802C0EC: .4byte 0x030013B0
_0802C0F0: .4byte 0x08085E2C
_0802C0F4: .4byte 0x08085F00
_0802C0F8:
	ldr r0, [r7]
	adds r0, #0x3c
	add r0, r8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0802C106:
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _0802C160 @ =0x08085F00
	lsls r1, r6, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	cmp r0, r1
	bne _0802C13E
	ldr r0, [r7]
	ldr r0, [r0, #0x50]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r7]
	ldr r0, [r1, #0x50]
	ldrh r2, [r1, #0x1a]
	movs r1, #0xf
	ands r2, r1
	subs r2, #0x52
	mov r1, sb
	subs r2, r1, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xcd
	bl sub_08009A70
_0802C13E:
	movs r0, #0x10
	add sb, r0
	movs r1, #4
	add r8, r1
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #4
	bgt _0802C152
	b _0802C048
_0802C152:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C160: .4byte 0x08085F00

	thumb_func_start sub_0802C164
sub_0802C164: @ 0x0802C164
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0802C270 @ =0x030013B0
_0802C16A:
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x50
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _0802C274 @ =0x08102964
	ldr r2, _0802C278 @ =0x081028E4
	movs r3, #2
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r6]
	lsls r1, r4, #2
	adds r0, #0x28
	adds r0, r0, r1
	str r5, [r0]
	adds r4, #1
	cmp r4, #4
	ble _0802C16A
	movs r4, #0
	ldr r6, _0802C270 @ =0x030013B0
_0802C1BE:
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0xd7
	movs r2, #0x58
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _0802C274 @ =0x08102964
	ldr r2, _0802C278 @ =0x081028E4
	movs r3, #0xc
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r6]
	lsls r1, r4, #2
	adds r0, #0x3c
	adds r0, r0, r1
	str r5, [r0]
	adds r4, #1
	cmp r4, #4
	ble _0802C1BE
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0xcd
	movs r2, #0x52
	bl sub_08009A70
	ldr r4, _0802C270 @ =0x030013B0
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802C274 @ =0x08102964
	ldr r2, _0802C278 @ =0x081028E4
	adds r0, r5, #0
	movs r3, #0xb
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x50]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0802C27C @ =sub_0802BFE0
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0802C280 @ =sub_0802C028
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C270: .4byte 0x030013B0
_0802C274: .4byte 0x08102964
_0802C278: .4byte 0x081028E4
_0802C27C: .4byte sub_0802BFE0
_0802C280: .4byte sub_0802C028

	thumb_func_start sub_0802C284
sub_0802C284: @ 0x0802C284
	push {r4, lr}
	ldr r4, _0802C2A0 @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C2A0: .4byte 0x030013B0

	thumb_func_start sub_0802C2A4
sub_0802C2A4: @ 0x0802C2A4
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C2A8
sub_0802C2A8: @ 0x0802C2A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0802C33C @ =0x030013B0
	mov r8, r0
	ldr r7, _0802C340 @ =0x080861BC
_0802C2B6:
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r5, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802C344 @ =0x080861C4
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _0802C348 @ =0x08102964
	ldr r2, _0802C34C @ =0x081028E4
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x54
	adds r0, r0, r5
	str r4, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #1
	ble _0802C2B6
	ldr r4, _0802C33C @ =0x030013B0
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0802C350 @ =sub_0802C284
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0802C354 @ =sub_0802C2A4
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C33C: .4byte 0x030013B0
_0802C340: .4byte 0x080861BC
_0802C344: .4byte 0x080861C4
_0802C348: .4byte 0x08102964
_0802C34C: .4byte 0x081028E4
_0802C350: .4byte sub_0802C284
_0802C354: .4byte sub_0802C2A4

	thumb_func_start sub_0802C358
sub_0802C358: @ 0x0802C358
	push {r4, lr}
	ldr r4, _0802C374 @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x5c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C374: .4byte 0x030013B0

	thumb_func_start sub_0802C378
sub_0802C378: @ 0x0802C378
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C37C
sub_0802C37C: @ 0x0802C37C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0802C41C @ =0x030013B0
	mov r8, r0
	ldr r7, _0802C420 @ =0x080861C8
_0802C38A:
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r5, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x20]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0802C424 @ =0x080FE2F8
	ldr r0, _0802C428 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r0, _0802C42C @ =0x080FE2EC
	adds r2, r2, r0
	ldr r2, [r2]
	ldr r3, _0802C430 @ =0x080861D0
	lsls r0, r6, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x5c
	adds r0, r0, r5
	str r4, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #1
	ble _0802C38A
	ldr r4, _0802C41C @ =0x030013B0
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0802C434 @ =sub_0802C358
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0802C438 @ =sub_0802C378
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C41C: .4byte 0x030013B0
_0802C420: .4byte 0x080861C8
_0802C424: .4byte 0x080FE2F8
_0802C428: .4byte 0x03004400
_0802C42C: .4byte 0x080FE2EC
_0802C430: .4byte 0x080861D0
_0802C434: .4byte sub_0802C358
_0802C438: .4byte sub_0802C378

	thumb_func_start sub_0802C43C
sub_0802C43C: @ 0x0802C43C
	push {lr}
	ldr r0, _0802C450 @ =0x030013B0
	ldr r0, [r0]
	ldr r0, [r0, #0x64]
	cmp r0, #0
	beq _0802C44C
	bl sub_08009A00
_0802C44C:
	pop {r0}
	bx r0
	.align 2, 0
_0802C450: .4byte 0x030013B0

	thumb_func_start sub_0802C454
sub_0802C454: @ 0x0802C454
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C458
sub_0802C458: @ 0x0802C458
	push {r4, r5, lr}
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _0802C484
	ldr r4, _0802C490 @ =0x08085F64
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, r5
	bne _0802C498
_0802C484:
	ldr r0, _0802C494 @ =0x030013B0
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0x64]
	b _0802C4DC
	.align 2, 0
_0802C490: .4byte 0x08085F64
_0802C494: .4byte 0x030013B0
_0802C498:
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0xc
	bl sub_08009A70
	ldr r1, _0802C4FC @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r2, _0802C500 @ =0x0814348C
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, _0802C504 @ =0x030013B0
	ldr r0, [r0]
	str r4, [r0, #0x64]
_0802C4DC:
	ldr r4, _0802C504 @ =0x030013B0
	ldr r0, [r4]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _0802C508 @ =sub_0802C43C
	bl sub_08007BA0
	ldr r0, [r4]
	movs r2, #0x12
	ldrsh r0, [r0, r2]
	ldr r1, _0802C50C @ =sub_0802C454
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C4FC: .4byte 0x06010000
_0802C500: .4byte 0x0814348C
_0802C504: .4byte 0x030013B0
_0802C508: .4byte sub_0802C43C
_0802C50C: .4byte sub_0802C454

	thumb_func_start sub_0802C510
sub_0802C510: @ 0x0802C510
	push {r4, lr}
	ldr r4, _0802C52C @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C52C: .4byte 0x030013B0

	thumb_func_start sub_0802C530
sub_0802C530: @ 0x0802C530
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C534
sub_0802C534: @ 0x0802C534
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0802C5C8 @ =0x030013B0
	mov r8, r0
	ldr r7, _0802C5CC @ =0x080861D4
_0802C542:
	movs r0, #1
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r5, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x24]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0802C5D0 @ =0x080861DC
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _0802C5D4 @ =0x08103194
	ldr r2, _0802C5D8 @ =0x08103188
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x68
	adds r0, r0, r5
	str r4, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #1
	ble _0802C542
	ldr r4, _0802C5C8 @ =0x030013B0
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0802C5DC @ =sub_0802C510
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0802C5E0 @ =sub_0802C530
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C5C8: .4byte 0x030013B0
_0802C5CC: .4byte 0x080861D4
_0802C5D0: .4byte 0x080861DC
_0802C5D4: .4byte 0x08103194
_0802C5D8: .4byte 0x08103188
_0802C5DC: .4byte sub_0802C510
_0802C5E0: .4byte sub_0802C530

	thumb_func_start sub_0802C5E4
sub_0802C5E4: @ 0x0802C5E4
	push {r4, lr}
	ldr r4, _0802C624 @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x74]
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x7c]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C624: .4byte 0x030013B0

	thumb_func_start sub_0802C628
sub_0802C628: @ 0x0802C628
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C62C
sub_0802C62C: @ 0x0802C62C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #1
	movs r1, #0x41
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0xba
	movs r2, #0x42
	bl sub_08009A70
	ldr r5, _0802C804 @ =0x030013B0
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r4, _0802C808 @ =0x08102964
	ldr r6, _0802C80C @ =0x081028E4
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #0xe
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x70]
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0xcf
	movs r2, #0x42
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x1c]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #0x19
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x74]
	adds r0, #0x90
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08071064
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08070FCC
	str r0, [sp]
	movs r6, #0
	mov r8, r5
	movs r5, #0xc0
	lsls r5, r5, #0x10
_0802C6F0:
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	asrs r1, r5, #0x10
	adds r0, r7, #0
	movs r2, #0x42
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	lsls r4, r6, #2
	mov r1, sp
	adds r0, r4, r1
	ldr r3, [r0]
	adds r3, #0xf
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	ldr r1, _0802C808 @ =0x08102964
	ldr r2, _0802C80C @ =0x081028E4
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x80
	adds r0, r0, r4
	str r7, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #1
	ble _0802C6F0
	movs r0, #0x32
	str r0, [sp]
	movs r1, #0xa
	bl sub_08071064
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x32
	movs r1, #0xa
	bl sub_08070FCC
	movs r0, #5
	str r0, [sp]
	movs r6, #0
	ldr r1, _0802C804 @ =0x030013B0
	mov r8, r1
	movs r5, #0xd7
	lsls r5, r5, #0x10
_0802C778:
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	asrs r1, r5, #0x10
	adds r0, r7, #0
	movs r2, #0x42
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	lsls r4, r6, #2
	mov r1, sp
	adds r0, r4, r1
	ldr r3, [r0]
	adds r3, #0xf
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	ldr r1, _0802C808 @ =0x08102964
	ldr r2, _0802C80C @ =0x081028E4
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x78
	adds r0, r0, r4
	str r7, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #1
	ble _0802C778
	ldr r4, _0802C804 @ =0x030013B0
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _0802C810 @ =sub_0802C5E4
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _0802C814 @ =sub_0802C628
	bl sub_08007B84
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C804: .4byte 0x030013B0
_0802C808: .4byte 0x08102964
_0802C80C: .4byte 0x081028E4
_0802C810: .4byte sub_0802C5E4
_0802C814: .4byte sub_0802C628

	thumb_func_start sub_0802C818
sub_0802C818: @ 0x0802C818
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrh r1, [r6, #2]
	adds r1, #1
	strh r1, [r6, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0802C83C
	adds r0, #0xf
_0802C83C:
	asrs r4, r0, #4
	adds r1, r4, #0
	adds r1, #0xf0
	ldr r5, _0802C8D8 @ =0x030013B0
	ldr r0, [r5]
	ldr r0, [r0, #0x70]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	ldr r2, _0802C8DC @ =0x00000105
	adds r1, r4, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0x80
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0xf6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0x84
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0xfc
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x78]
	ldr r2, _0802C8E0 @ =0x0000010D
	adds r1, r4, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x7c]
	ldr r2, _0802C8E4 @ =0x00000113
	adds r1, r4, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldrh r0, [r6, #2]
	cmp r0, #0xf
	bls _0802C8D2
	movs r0, #0
	strh r0, [r6, #2]
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _0802C8E8 @ =sub_0802C628
	bl sub_08007B84
_0802C8D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C8D8: .4byte 0x030013B0
_0802C8DC: .4byte 0x00000105
_0802C8E0: .4byte 0x0000010D
_0802C8E4: .4byte 0x00000113
_0802C8E8: .4byte sub_0802C628

	thumb_func_start sub_0802C8EC
sub_0802C8EC: @ 0x0802C8EC
	push {r4, lr}
	ldr r4, _0802C914 @ =0x030013B0
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _0802C918 @ =sub_0802C818
	bl sub_08007B84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C914: .4byte 0x030013B0
_0802C918: .4byte sub_0802C818

	thumb_func_start sub_0802C91C
sub_0802C91C: @ 0x0802C91C
	push {lr}
	lsls r0, r0, #0x18
	ldr r3, _0802C944 @ =0x02034E08
	ldr r2, _0802C948 @ =0x08086BA8
	ldr r1, _0802C94C @ =0x03004400
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C950
	movs r0, #0
	b _0802C952
	.align 2, 0
_0802C944: .4byte 0x02034E08
_0802C948: .4byte 0x08086BA8
_0802C94C: .4byte 0x03004400
_0802C950:
	movs r0, #1
_0802C952:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C958
sub_0802C958: @ 0x0802C958
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r6, _0802CA4C @ =0x06010200
	ldr r1, _0802CA50 @ =0x080FE2DC
	ldr r4, _0802CA54 @ =0x03004400
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802CA58 @ =0x05000240
	bl sub_08008308
	ldr r5, _0802CA5C @ =0x030013B4
	ldr r0, [r5]
	str r6, [r0, #0x18]
	ldr r1, _0802CA60 @ =0x080FE2E0
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_08008374
	adds r6, r0, r6
	ldr r0, _0802CA64 @ =0x08102680
	ldr r1, _0802CA68 @ =0x05000200
	bl sub_08008308
	ldr r0, [r5]
	str r6, [r0, #0x14]
	ldr r0, _0802CA6C @ =0x081029D8
	adds r1, r6, #0
	bl sub_08008374
	ldr r0, _0802CA70 @ =0x08101CF8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0802CA74 @ =0x08101F98
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0802CA78 @ =0x08101D5C
	ldr r1, _0802CA7C @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r4, _0802CA80 @ =0x030024E0
	ldr r0, _0802CA84 @ =0x00001F03
	strh r0, [r4, #8]
	ldr r0, _0802CA88 @ =0x08101ECC
	ldr r1, _0802CA8C @ =0x0600E800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0802CA90 @ =0x00005D01
	strh r0, [r4, #4]
	bl sub_080057D0
	ldr r3, _0802CA94 @ =0x0600D800
	movs r4, #1
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	movs r5, #0x33
_0802C9E6:
	movs r2, #0xc
_0802C9E8:
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r4, #1
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bge _0802C9E8
	adds r3, #0x26
	subs r5, #1
	cmp r5, #0
	bge _0802C9E6
	bl sub_08004460
	ldr r6, _0802CA98 @ =0x06004020
	movs r5, #0
	ldr r1, _0802CA9C @ =0x08086A58
	mov r8, r1
	ldr r7, _0802CAA0 @ =0x08086BA8
_0802CA0E:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_0802C91C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802CAA4
	ldr r0, _0802CA54 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #3
	movs r3, #0
	bl sub_08004D94
	b _0802CAB2
	.align 2, 0
_0802CA4C: .4byte 0x06010200
_0802CA50: .4byte 0x080FE2DC
_0802CA54: .4byte 0x03004400
_0802CA58: .4byte 0x05000240
_0802CA5C: .4byte 0x030013B4
_0802CA60: .4byte 0x080FE2E0
_0802CA64: .4byte 0x08102680
_0802CA68: .4byte 0x05000200
_0802CA6C: .4byte 0x081029D8
_0802CA70: .4byte 0x08101CF8
_0802CA74: .4byte 0x08101F98
_0802CA78: .4byte 0x08101D5C
_0802CA7C: .4byte 0x0600F800
_0802CA80: .4byte 0x030024E0
_0802CA84: .4byte 0x00001F03
_0802CA88: .4byte 0x08101ECC
_0802CA8C: .4byte 0x0600E800
_0802CA90: .4byte 0x00005D01
_0802CA94: .4byte 0x0600D800
_0802CA98: .4byte 0x06004020
_0802CA9C: .4byte 0x08086A58
_0802CAA0: .4byte 0x08086BA8
_0802CAA4:
	str r0, [sp]
	adds r0, r6, #0
	ldr r1, _0802CBB4 @ =0x08086BAC
	movs r2, #4
	movs r3, #0
	bl sub_08004A24
_0802CAB2:
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #0x33
	ble _0802CA0E
	bl sub_0800446C
	ldr r1, _0802CBB8 @ =0x030024E0
	ldr r0, _0802CBBC @ =0x00009B06
	strh r0, [r1, #6]
	ldr r3, _0802CBC0 @ =0x0600C89C
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	movs r5, #0xc
_0802CAD2:
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r4, #1
	adds r3, #2
	subs r5, #1
	cmp r5, #0
	bge _0802CAD2
	ldr r3, _0802CBC4 @ =0x0600C8E2
	ldr r1, _0802CBB8 @ =0x030024E0
	mov r8, r1
	ldr r7, _0802CBC8 @ =sub_0802D1C0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	movs r5, #3
_0802CAF2:
	movs r2, #0xb
_0802CAF4:
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r4, #1
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bge _0802CAF4
	adds r3, #0x28
	subs r5, #1
	cmp r5, #0
	bge _0802CAF2
	ldr r3, _0802CBCC @ =0x0600CA1A
	movs r5, #0
	movs r1, #0x80
	lsls r1, r1, #5
	adds r6, r1, #0
_0802CB16:
	adds r5, #1
	movs r2, #0xf
_0802CB1A:
	adds r0, r4, #0
	orrs r0, r6
	strh r0, [r3]
	adds r4, #1
	adds r1, r3, #0
	adds r1, #0x40
	adds r0, r4, #0
	orrs r0, r6
	strh r0, [r1]
	adds r4, #1
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bge _0802CB1A
	adds r3, #0x60
	cmp r5, #3
	ble _0802CB16
	ldr r0, _0802CBD0 @ =0x00005904
	mov r1, r8
	strh r0, [r1, #2]
	adds r0, r7, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r4, _0802CBD4 @ =0x030013B4
	ldr r1, [r4]
	strh r0, [r1, #8]
	ldr r0, _0802CBD8 @ =sub_0802D254
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xa]
	ldr r0, _0802CBDC @ =sub_0802D380
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xc]
	ldr r0, _0802CBE0 @ =sub_0802D548
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xe]
	ldr r0, _0802CBE4 @ =sub_0802D828
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r4, [r4]
	strh r0, [r4, #0x10]
	ldr r0, _0802CBE8 @ =0x02034BF0
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	subs r5, r0, #7
	cmp r5, #0x24
	ble _0802CB9A
	movs r5, #0x25
_0802CB9A:
	cmp r5, #0
	bgt _0802CBA0
	movs r5, #0
_0802CBA0:
	adds r0, r4, #0
	adds r0, #0x55
	strb r5, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CBB4: .4byte 0x08086BAC
_0802CBB8: .4byte 0x030024E0
_0802CBBC: .4byte 0x00009B06
_0802CBC0: .4byte 0x0600C89C
_0802CBC4: .4byte 0x0600C8E2
_0802CBC8: .4byte sub_0802D1C0
_0802CBCC: .4byte 0x0600CA1A
_0802CBD0: .4byte 0x00005904
_0802CBD4: .4byte 0x030013B4
_0802CBD8: .4byte sub_0802D254
_0802CBDC: .4byte sub_0802D380
_0802CBE0: .4byte sub_0802D548
_0802CBE4: .4byte sub_0802D828
_0802CBE8: .4byte 0x02034BF0

	thumb_func_start sub_0802CBEC
sub_0802CBEC: @ 0x0802CBEC
	push {r4, lr}
	ldr r4, _0802CC28 @ =0x030013B4
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CC28: .4byte 0x030013B4

	thumb_func_start sub_0802CC2C
sub_0802CC2C: @ 0x0802CC2C
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r4, _0802CC6C @ =0x030013B4
	movs r0, #0x5c
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0x5c
	bl sub_08007EFC
	bl sub_0802C958
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0802CC8E
	ldr r5, _0802CC70 @ =0x08086BB8
_0802CC5C:
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0802CC74
	subs r0, #1
	strh r0, [r1, #6]
	b _0802CC80
	.align 2, 0
_0802CC6C: .4byte 0x030013B4
_0802CC70: .4byte 0x08086BB8
_0802CC74:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0802CC80:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0802CC5C
_0802CC8E:
	bl sub_0802CBEC
	movs r0, #1
	bl sub_08002B98
	ldr r0, _0802CCB0 @ =0x030013B4
	ldr r0, [r0]
	bl sub_08007CF8
	movs r0, #3
	bl sub_08008790
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802CCB0: .4byte 0x030013B4

	thumb_func_start sub_0802CCB4
sub_0802CCB4: @ 0x0802CCB4
	ldr r1, _0802CCC8 @ =0x030013B4
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3]
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0802CCC8: .4byte 0x030013B4

	thumb_func_start sub_0802CCCC
sub_0802CCCC: @ 0x0802CCCC
	push {r4, lr}
	bl sub_08008174
	ldr r0, _0802CD50 @ =0x030024E0
	mov ip, r0
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r1, r0
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r1, r0
	ldr r3, _0802CD54 @ =0x0000FF6F
	mov r0, ip
	strh r3, [r0, #0xc]
	ldr r2, _0802CD58 @ =0x0000FFFC
	strh r2, [r0, #0x14]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r1, r0
	ldr r0, _0802CD5C @ =0x0000FFF8
	mov r4, ip
	strh r0, [r4, #0xe]
	subs r0, #8
	strh r0, [r4, #0x16]
	movs r0, #0x87
	lsls r0, r0, #4
	strh r0, [r4, #0x3e]
	adds r4, #0x42
	ldr r0, _0802CD60 @ =0x00001088
	strh r0, [r4]
	adds r4, #3
	movs r0, #0x3f
	strb r0, [r4]
	adds r4, #1
	movs r0, #0x3b
	strb r0, [r4]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r4, #0
	orrs r1, r0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	orrs r1, r0
	mov r0, ip
	strh r1, [r0]
	strh r3, [r0, #0xa]
	strh r2, [r0, #0x12]
	mov r1, ip
	adds r1, #0x4f
	movs r0, #1
	strb r0, [r1]
	bl sub_0802DAD0
	bl sub_0803B840
	movs r0, #1
	bl sub_0802CCB4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CD50: .4byte 0x030024E0
_0802CD54: .4byte 0x0000FF6F
_0802CD58: .4byte 0x0000FFFC
_0802CD5C: .4byte 0x0000FFF8
_0802CD60: .4byte 0x00001088

	thumb_func_start sub_0802CD64
sub_0802CD64: @ 0x0802CD64
	push {r4, r5, r6, lr}
	ldr r1, _0802CD8C @ =0x030024B0
	ldrh r0, [r1, #2]
	movs r2, #0xc0
	ands r2, r0
	adds r3, r1, #0
	cmp r2, #0
	bne _0802CD94
	ldr r1, _0802CD90 @ =0x030013B4
	ldr r0, [r1]
	adds r0, #0x58
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, #0x59
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, #0x5a
	strb r2, [r0]
	adds r4, r1, #0
	b _0802CE00
	.align 2, 0
_0802CD8C: .4byte 0x030024B0
_0802CD90: .4byte 0x030013B4
_0802CD94:
	ldr r1, _0802CDB8 @ =0x030013B4
	ldr r2, [r1]
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #1
	bhi _0802CDF8
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802CDBC
	adds r1, r2, #0
	adds r1, #0x5a
	movs r0, #1
	b _0802CDC2
	.align 2, 0
_0802CDB8: .4byte 0x030013B4
_0802CDBC:
	adds r1, r2, #0
	adds r1, #0x5a
	movs r0, #0
_0802CDC2:
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0x58
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x58
	ldr r1, _0802CDF4 @ =0x08086BB4
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0802CE00
	movs r0, #0
	strb r0, [r2]
	ldr r1, [r4]
	adds r1, #0x59
	ldrb r0, [r1]
	adds r0, #1
	b _0802CDFE
	.align 2, 0
_0802CDF4: .4byte 0x08086BB4
_0802CDF8:
	adds r1, r2, #0
	adds r1, #0x5a
	movs r0, #1
_0802CDFE:
	strb r0, [r1]
_0802CE00:
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	cmp r0, #4
	bls _0802CE0A
	b _0802D106
_0802CE0A:
	lsls r0, r0, #2
	ldr r1, _0802CE14 @ =_0802CE18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802CE14: .4byte _0802CE18
_0802CE18: @ jump table
	.4byte _0802CE2C @ case 0
	.4byte _0802CE50 @ case 1
	.4byte _0802D08C @ case 2
	.4byte _0802D0A0 @ case 3
	.4byte _0802D100 @ case 4
_0802CE2C:
	ldr r0, _0802CE48 @ =0x02034BF0
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	bl sub_0802C91C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CE40
	b _0802D090
_0802CE40:
	ldr r0, _0802CE4C @ =0x030013B4
	ldr r1, [r0]
	b _0802D0F2
	.align 2, 0
_0802CE48: .4byte 0x02034BF0
_0802CE4C: .4byte 0x030013B4
_0802CE50:
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802CE70
	movs r0, #0xce
	bl sub_0806F5DC
	ldr r0, _0802CE6C @ =0x030013B4
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _0802D106
	.align 2, 0
_0802CE6C: .4byte 0x030013B4
_0802CE70:
	ldr r1, _0802CED8 @ =0x02034BF0
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x17
	lsrs r2, r0, #0x1a
	adds r6, r2, #0
	ldr r0, [r4]
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	beq _0802CF54
	ldrh r1, [r3, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802CEE4
	cmp r2, #0
	ble _0802CEE4
	movs r0, #0xcb
	bl sub_0806F5DC
	ldrh r2, [r5, #6]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x1a
	subs r1, #1
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #3
	ldr r0, _0802CEDC @ =0xFFFFFE07
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #6]
	lsls r0, r0, #0x17
	lsrs r1, r0, #0x1a
	ldr r0, [r4]
	adds r0, #0x55
	ldrb r2, [r0]
	cmp r1, r2
	bge _0802CEC0
	strb r1, [r0]
_0802CEC0:
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	ldr r2, _0802CEE0 @ =0x08086B28
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r2, #2]
	subs r2, #2
	b _0802D078
	.align 2, 0
_0802CED8: .4byte 0x02034BF0
_0802CEDC: .4byte 0xFFFFFE07
_0802CEE0: .4byte 0x08086B28
_0802CEE4:
	ldr r0, [r4]
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CF54
	ldrh r1, [r3, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802CF54
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	cmp r0, #0x32
	bgt _0802CF54
	movs r0, #0xcb
	bl sub_0806F5DC
	ldrh r2, [r5, #6]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1a
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CF4C @ =0xFFFFFE07
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #6]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1a
	ldr r0, [r4]
	adds r3, r0, #0
	adds r3, #0x55
	ldrb r2, [r3]
	adds r0, r2, #0
	adds r0, #0xf
	cmp r1, r0
	blt _0802CF36
	adds r0, r2, #1
	strb r0, [r3]
_0802CF36:
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	ldr r2, _0802CF50 @ =0x08086B28
	movs r3, #4
	ldrsh r1, [r2, r3]
	ldrh r2, [r2, #6]
	adds r2, #2
	b _0802D078
	.align 2, 0
_0802CF4C: .4byte 0xFFFFFE07
_0802CF50: .4byte 0x08086B28
_0802CF54:
	ldrh r1, [r3]
	movs r0, #0x88
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802CFE8
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bgt _0802CF6C
	b _0802D106
_0802CF6C:
	movs r0, #0xcb
	bl sub_0806F5DC
	ldrh r2, [r5, #6]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1a
	cmp r0, #0xe
	ble _0802CF94
	subs r0, #0xf
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CF90 @ =0xFFFFFE07
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #6]
	b _0802CF9A
	.align 2, 0
_0802CF90: .4byte 0xFFFFFE07
_0802CF94:
	ldr r0, _0802CFB0 @ =0xFFFFFE07
	ands r0, r2
	strh r0, [r5, #6]
_0802CF9A:
	ldr r1, _0802CFB4 @ =0x030013B4
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x55
	ldrb r0, [r2]
	adds r4, r1, #0
	cmp r0, #0xe
	bls _0802CFB8
	subs r0, #0xf
	b _0802CFBA
	.align 2, 0
_0802CFB0: .4byte 0xFFFFFE07
_0802CFB4: .4byte 0x030013B4
_0802CFB8:
	movs r0, #0
_0802CFBA:
	strb r0, [r2]
	ldr r0, _0802CFE0 @ =0x02034BF0
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	cmp r6, r0
	beq _0802CFCE
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
_0802CFCE:
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	ldr r2, _0802CFE4 @ =0x08086B28
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r2, #2]
	subs r2, #4
	b _0802D078
	.align 2, 0
_0802CFE0: .4byte 0x02034BF0
_0802CFE4: .4byte 0x08086B28
_0802CFE8:
	movs r0, #0x88
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802CFF4
	b _0802D106
_0802CFF4:
	adds r4, r5, #0
	ldrh r0, [r4, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	cmp r0, #0x32
	ble _0802D002
	b _0802D106
_0802D002:
	movs r0, #0xcb
	bl sub_0806F5DC
	ldrh r2, [r4, #6]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1a
	cmp r0, #0x24
	bgt _0802D028
	adds r0, #0xf
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #3
	ldr r1, _0802D024 @ =0xFFFFFE07
	ands r1, r2
	orrs r1, r0
	strh r1, [r4, #6]
	b _0802D036
	.align 2, 0
_0802D024: .4byte 0xFFFFFE07
_0802D028:
	ldr r0, _0802D04C @ =0xFFFFFE07
	ands r0, r2
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0802D036:
	ldr r1, _0802D050 @ =0x030013B4
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x55
	ldrb r0, [r2]
	adds r4, r1, #0
	cmp r0, #0x15
	bhi _0802D054
	adds r0, #0xf
	b _0802D056
	.align 2, 0
_0802D04C: .4byte 0xFFFFFE07
_0802D050: .4byte 0x030013B4
_0802D054:
	movs r0, #0x25
_0802D056:
	strb r0, [r2]
	ldr r0, _0802D084 @ =0x02034BF0
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	cmp r6, r0
	beq _0802D06A
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
_0802D06A:
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	ldr r2, _0802D088 @ =0x08086B28
	movs r3, #4
	ldrsh r1, [r2, r3]
	ldrh r2, [r2, #6]
	adds r2, #4
_0802D078:
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _0802D106
	.align 2, 0
_0802D084: .4byte 0x02034BF0
_0802D088: .4byte 0x08086B28
_0802D08C:
	bl sub_0802D180
_0802D090:
	ldr r0, _0802D09C @ =0x030013B4
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _0802D106
	.align 2, 0
_0802D09C: .4byte 0x030013B4
_0802D0A0:
	ldr r0, _0802D0C0 @ =0x02034BF0
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	bl sub_0802C91C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802D0C4
	movs r0, #1
	bl sub_0802D608
	bl sub_0802D1A0
	b _0802D0CC
	.align 2, 0
_0802D0C0: .4byte 0x02034BF0
_0802D0C4:
	ldr r0, _0802D0F8 @ =0x030013B4
	ldr r1, [r0]
	movs r0, #3
	strh r0, [r1, #6]
_0802D0CC:
	ldr r5, _0802D0F8 @ =0x030013B4
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	ldr r4, _0802D0FC @ =0x08086B28
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x24]
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	ldr r1, [r5]
_0802D0F2:
	movs r0, #1
	strb r0, [r1, #1]
	b _0802D106
	.align 2, 0
_0802D0F8: .4byte 0x030013B4
_0802D0FC: .4byte 0x08086B28
_0802D100:
	movs r0, #2
	bl sub_0802CCB4
_0802D106:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802D10C
sub_0802D10C: @ 0x0802D10C
	push {lr}
	bl sub_0803B868
	ldr r0, _0802D120 @ =0x030013B4
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #2]
	pop {r0}
	bx r0
	.align 2, 0
_0802D120: .4byte 0x030013B4

	thumb_func_start sub_0802D124
sub_0802D124: @ 0x0802D124
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802D158 @ =0x030013B4
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0802D15C @ =0x08086BC4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D158: .4byte 0x030013B4
_0802D15C: .4byte 0x08086BC4

	thumb_func_start sub_0802D160
sub_0802D160: @ 0x0802D160
	push {lr}
	ldr r0, _0802D17C @ =0x030013B4
	ldr r1, [r0]
	adds r1, #0x4c
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0802D124
	pop {r0}
	bx r0
	.align 2, 0
_0802D17C: .4byte 0x030013B4

	thumb_func_start sub_0802D180
sub_0802D180: @ 0x0802D180
	push {lr}
	ldr r0, _0802D19C @ =0x030013B4
	ldr r1, [r0]
	adds r1, #0x4c
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0802D124
	pop {r0}
	bx r0
	.align 2, 0
_0802D19C: .4byte 0x030013B4

	thumb_func_start sub_0802D1A0
sub_0802D1A0: @ 0x0802D1A0
	push {lr}
	ldr r0, _0802D1BC @ =0x030013B4
	ldr r1, [r0]
	adds r1, #0x4c
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0802D124
	pop {r0}
	bx r0
	.align 2, 0
_0802D1BC: .4byte 0x030013B4

	thumb_func_start sub_0802D1C0
sub_0802D1C0: @ 0x0802D1C0
	push {lr}
	ldr r0, _0802D1DC @ =0x030013B4
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x50
	movs r0, #0x91
	strh r0, [r2]
	adds r1, #0x52
	movs r0, #4
	strh r0, [r1]
	bl sub_0802D160
	pop {r0}
	bx r0
	.align 2, 0
_0802D1DC: .4byte 0x030013B4

	thumb_func_start sub_0802D1E0
sub_0802D1E0: @ 0x0802D1E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0802D1E4
sub_0802D1E4: @ 0x0802D1E4
	push {lr}
	ldr r0, _0802D200 @ =0x030013B4
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x50
	movs r0, #0x91
	strh r0, [r2]
	adds r1, #0x52
	movs r0, #4
	strh r0, [r1]
	bl sub_0802D160
	pop {r0}
	bx r0
	.align 2, 0
_0802D200: .4byte 0x030013B4

	thumb_func_start sub_0802D204
sub_0802D204: @ 0x0802D204
	push {lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0
	beq _0802D218
	cmp r2, #1
	beq _0802D238
	b _0802D23C
_0802D218:
	ldr r0, _0802D234 @ =0x030013B4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802D23C
	strh r2, [r1]
	movs r0, #1
	strb r0, [r3]
	b _0802D23C
	.align 2, 0
_0802D234: .4byte 0x030013B4
_0802D238:
	bl sub_0802D160
_0802D23C:
	pop {r0}
	bx r0

	thumb_func_start sub_0802D240
sub_0802D240: @ 0x0802D240
	push {lr}
	ldr r0, _0802D250 @ =0x030013B4
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802D250: .4byte 0x030013B4

	thumb_func_start sub_0802D254
sub_0802D254: @ 0x0802D254
	push {r4, r5, lr}
	ldr r1, _0802D2F0 @ =0x030024E0
	ldr r5, _0802D2F4 @ =0x030013B4
	ldr r3, [r5]
	adds r2, r3, #0
	adds r2, #0x50
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r1, #0xc]
	adds r4, r3, #0
	adds r4, #0x52
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r1, #0x14]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r1, #0xa]
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r1, #0x12]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	ldr r1, _0802D2F8 @ =sub_0802D308
	bl sub_08007B84
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0802D2FC @ =sub_0802D240
	bl sub_08007BA0
	movs r0, #0
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r1, #0x67
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x52
	ldrh r2, [r2]
	adds r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r1, _0802D300 @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r2, _0802D304 @ =0x0814348C
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x28]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D2F0: .4byte 0x030024E0
_0802D2F4: .4byte 0x030013B4
_0802D2F8: .4byte sub_0802D308
_0802D2FC: .4byte sub_0802D240
_0802D300: .4byte 0x06010000
_0802D304: .4byte 0x0814348C

	thumb_func_start sub_0802D308
sub_0802D308: @ 0x0802D308
	push {r4, lr}
	ldr r1, _0802D350 @ =0x030024E0
	ldr r0, _0802D354 @ =0x030013B4
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0x50
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r1, #0xc]
	movs r0, #0x52
	adds r0, r0, r3
	mov ip, r0
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r1, #0x14]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r1, #0xa]
	mov r4, ip
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r1, #0x12]
	ldr r0, [r3, #0x28]
	ldrh r1, [r2]
	adds r1, #0x67
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4]
	adds r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D350: .4byte 0x030024E0
_0802D354: .4byte 0x030013B4

	thumb_func_start sub_0802D358
sub_0802D358: @ 0x0802D358
	push {r4, lr}
	ldr r4, _0802D37C @ =0x030013B4
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D37C: .4byte 0x030013B4

	thumb_func_start sub_0802D380
sub_0802D380: @ 0x0802D380
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0802D470 @ =0x02034BF0
	ldrh r2, [r0, #6]
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x1a
	ldr r4, _0802D474 @ =0x030013B4
	ldr r0, [r4]
	adds r0, #0x55
	ldrb r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x13
	movs r0, #0x80
	lsls r0, r0, #0xd
	adds r2, r2, r0
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #8
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x14]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802D478 @ =0x08102964
	ldr r2, _0802D47C @ =0x081028E4
	adds r0, r5, #0
	movs r3, #0xd
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x1c]
	movs r6, #0
	mov r8, r4
	ldr r7, _0802D480 @ =0x08086B28
_0802D3EA:
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r4, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r5, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802D484 @ =0x08086B30
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r5, #0
	ldr r1, _0802D478 @ =0x08102964
	ldr r2, _0802D47C @ =0x081028E4
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x20
	adds r0, r0, r4
	str r5, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #1
	ble _0802D3EA
	ldr r4, _0802D474 @ =0x030013B4
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0802D488 @ =sub_0802D490
	bl sub_08007B84
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0802D48C @ =sub_0802D358
	bl sub_08007BA0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D470: .4byte 0x02034BF0
_0802D474: .4byte 0x030013B4
_0802D478: .4byte 0x08102964
_0802D47C: .4byte 0x081028E4
_0802D480: .4byte 0x08086B28
_0802D484: .4byte 0x08086B30
_0802D488: .4byte sub_0802D490
_0802D48C: .4byte sub_0802D358

	thumb_func_start sub_0802D490
sub_0802D490: @ 0x0802D490
	push {r4, lr}
	ldr r4, _0802D4DC @ =0x030013B4
	ldr r3, [r4]
	ldr r0, [r3, #0x1c]
	ldr r1, _0802D4E0 @ =0x02034BF0
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x1a
	adds r3, #0x55
	ldrb r1, [r3]
	subs r2, r2, r1
	lsls r2, r2, #0x13
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r2, r2, r1
	asrs r2, r2, #0x10
	movs r1, #8
	bl sub_08009A70
	ldr r1, _0802D4E4 @ =0x030024E0
	ldr r0, _0802D4E8 @ =0x0000FFF8
	strh r0, [r1, #0xe]
	ldr r4, [r4]
	adds r2, r4, #0
	adds r2, #0x55
	ldrb r0, [r2]
	lsls r0, r0, #3
	subs r0, #0x10
	strh r0, [r1, #0x16]
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802D4EC
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl sub_08009A34
	b _0802D4F4
	.align 2, 0
_0802D4DC: .4byte 0x030013B4
_0802D4E0: .4byte 0x02034BF0
_0802D4E4: .4byte 0x030024E0
_0802D4E8: .4byte 0x0000FFF8
_0802D4EC:
	ldr r0, [r4, #0x20]
	movs r1, #0
	bl sub_08009A34
_0802D4F4:
	ldr r0, _0802D50C @ =0x030013B4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x55
	ldrb r0, [r0]
	cmp r0, #0x24
	bhi _0802D510
	ldr r0, [r1, #0x24]
	movs r1, #1
	bl sub_08009A34
	b _0802D518
	.align 2, 0
_0802D50C: .4byte 0x030013B4
_0802D510:
	ldr r0, [r1, #0x24]
	movs r1, #0
	bl sub_08009A34
_0802D518:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D520
sub_0802D520: @ 0x0802D520
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0802D540 @ =0x030013B4
_0802D526:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #1
	ble _0802D526
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D540: .4byte 0x030013B4

	thumb_func_start sub_0802D544
sub_0802D544: @ 0x0802D544
	bx lr
	.align 2, 0

	thumb_func_start sub_0802D548
sub_0802D548: @ 0x0802D548
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0802D5E8 @ =0x030013B4
	mov r8, r0
	ldr r7, _0802D5EC @ =0x08086B34
_0802D556:
	movs r0, #0
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r5, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x18]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0802D5F0 @ =0x080FE2F8
	ldr r0, _0802D5F4 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r0, _0802D5F8 @ =0x080FE2EC
	adds r2, r2, r0
	ldr r2, [r2]
	ldr r3, _0802D5FC @ =0x08086B3C
	lsls r0, r6, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x2c
	adds r0, r0, r5
	str r4, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #1
	ble _0802D556
	ldr r4, _0802D5E8 @ =0x030013B4
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0802D600 @ =sub_0802D520
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0802D604 @ =sub_0802D544
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D5E8: .4byte 0x030013B4
_0802D5EC: .4byte 0x08086B34
_0802D5F0: .4byte 0x080FE2F8
_0802D5F4: .4byte 0x03004400
_0802D5F8: .4byte 0x080FE2EC
_0802D5FC: .4byte 0x08086B3C
_0802D600: .4byte sub_0802D520
_0802D604: .4byte sub_0802D544

	thumb_func_start sub_0802D608
sub_0802D608: @ 0x0802D608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r4, #0
	str r4, [sp, #4]
	ldr r0, _0802D798 @ =0x060094A0
	mov r8, r0
	ldr r2, _0802D79C @ =0x01000068
	add r0, sp, #4
	mov r1, r8
	bl CpuFastSet
	str r4, [sp, #8]
	add r0, sp, #8
	ldr r1, _0802D7A0 @ =0x06009640
	mov sb, r1
	ldr r2, _0802D7A4 @ =0x01000180
	bl CpuFastSet
	str r4, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _0802D7A8 @ =0x06009C40
	ldr r2, _0802D7AC @ =0x01000400
	bl CpuFastSet
	bl sub_08004460
	ldr r5, _0802D7B0 @ =0x08086A58
	ldr r7, _0802D7B4 @ =0x08086BA8
	ldr r0, _0802D7B8 @ =0x03004400
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, _0802D7BC @ =0x02034BF0
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08006828
	adds r1, r0, #0
	str r4, [sp]
	mov r0, r8
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	mov r8, r5
	adds r6, r7, #0
	mov r5, sb
_0802D686:
	ldr r0, _0802D7B8 @ =0x03004400
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, _0802D7BC @ =0x02034BF0
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	ble _0802D686
	bl sub_0800446C
	movs r4, #0
	ldr r1, _0802D7B0 @ =0x08086A58
	mov sb, r1
	ldr r0, _0802D7B4 @ =0x08086BA8
	mov r8, r0
	ldr r5, _0802D7A8 @ =0x06009C40
_0802D6DC:
	ldr r6, _0802D7B8 @ =0x03004400
	ldrb r1, [r6, #0x14]
	lsls r1, r1, #2
	add r1, r8
	ldr r7, _0802D7BC @ =0x02034BF0
	ldrh r0, [r7, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #3
	ble _0802D6DC
	mov r0, sl
	cmp r0, #0
	beq _0802D72E
	movs r0, #1
	bl sub_08002B98
_0802D72E:
	ldr r4, _0802D7C0 @ =0x0807F048
	ldr r1, _0802D7B0 @ =0x08086A58
	mov r8, r1
	ldr r5, _0802D7B4 @ =0x08086BA8
	ldrb r1, [r6, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r0, [r7, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0802D7C4 @ =0x05000260
	bl sub_08008308
	ldrb r1, [r6, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r0, [r7, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1a
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0802D7C8 @ =0x06010000
	bl sub_08008374
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D798: .4byte 0x060094A0
_0802D79C: .4byte 0x01000068
_0802D7A0: .4byte 0x06009640
_0802D7A4: .4byte 0x01000180
_0802D7A8: .4byte 0x06009C40
_0802D7AC: .4byte 0x01000400
_0802D7B0: .4byte 0x08086A58
_0802D7B4: .4byte 0x08086BA8
_0802D7B8: .4byte 0x03004400
_0802D7BC: .4byte 0x02034BF0
_0802D7C0: .4byte 0x0807F048
_0802D7C4: .4byte 0x05000260
_0802D7C8: .4byte 0x06010000

	thumb_func_start sub_0802D7CC
sub_0802D7CC: @ 0x0802D7CC
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802D7E0 @ =0x02034E08
	bl sub_0800B844
	pop {r0}
	bx r0
	.align 2, 0
_0802D7E0: .4byte 0x02034E08

	thumb_func_start sub_0802D7E4
sub_0802D7E4: @ 0x0802D7E4
	push {r4, lr}
	ldr r4, _0802D820 @ =0x030013B4
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x38]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D820: .4byte 0x030013B4

	thumb_func_start sub_0802D824
sub_0802D824: @ 0x0802D824
	bx lr
	.align 2, 0

	thumb_func_start sub_0802D828
sub_0802D828: @ 0x0802D828
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #2
	movs r1, #0x41
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0x8d
	bl sub_08009A70
	ldr r5, _0802DA00 @ =0x030013B4
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r4, _0802DA04 @ =0x08102964
	ldr r6, _0802DA08 @ =0x081028E4
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #0xe
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x34]
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0x19
	movs r2, #0x8d
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #0x19
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r7, [r0, #0x38]
	ldr r0, _0802DA0C @ =0x02034E08
	movs r1, #0
	movs r2, #0x34
	bl sub_0800B8A4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08071064
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08070FCC
	str r0, [sp]
	movs r6, #0
	mov r8, r5
	movs r5, #0xa0
	lsls r5, r5, #0xc
_0802D8EC:
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	asrs r1, r5, #0x10
	adds r0, r7, #0
	movs r2, #0x8d
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	lsls r4, r6, #2
	mov r1, sp
	adds r0, r4, r1
	ldr r3, [r0]
	adds r3, #0xf
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	ldr r1, _0802DA04 @ =0x08102964
	ldr r2, _0802DA08 @ =0x081028E4
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x44
	adds r0, r0, r4
	str r7, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #1
	ble _0802D8EC
	movs r0, #0x34
	str r0, [sp]
	movs r1, #0xa
	bl sub_08071064
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x34
	movs r1, #0xa
	bl sub_08070FCC
	movs r0, #5
	str r0, [sp]
	movs r6, #0
	ldr r1, _0802DA00 @ =0x030013B4
	mov r8, r1
	movs r5, #0x84
	lsls r5, r5, #0xe
_0802D974:
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	asrs r1, r5, #0x10
	adds r0, r7, #0
	movs r2, #0x8d
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	lsls r4, r6, #2
	mov r1, sp
	adds r0, r4, r1
	ldr r3, [r0]
	adds r3, #0xf
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	ldr r1, _0802DA04 @ =0x08102964
	ldr r2, _0802DA08 @ =0x081028E4
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x3c
	adds r0, r0, r4
	str r7, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #1
	ble _0802D974
	ldr r4, _0802DA00 @ =0x030013B4
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0802DA10 @ =sub_0802D7E4
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0802DA14 @ =sub_0802D824
	bl sub_08007B84
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DA00: .4byte 0x030013B4
_0802DA04: .4byte 0x08102964
_0802DA08: .4byte 0x081028E4
_0802DA0C: .4byte 0x02034E08
_0802DA10: .4byte sub_0802D7E4
_0802DA14: .4byte sub_0802D824

	thumb_func_start sub_0802DA18
sub_0802DA18: @ 0x0802DA18
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x34
	muls r0, r1, r0
	asrs r4, r0, #4
	adds r1, r4, #0
	subs r1, #0x30
	ldr r5, _0802DAC8 @ =0x030013B4
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x38]
	adds r1, r4, #0
	subs r1, #0x1b
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	adds r1, r4, #0
	subs r1, #0x2a
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	adds r1, r4, #0
	subs r1, #0x24
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	adds r1, r4, #0
	subs r1, #0x13
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	adds r1, r4, #0
	subs r1, #0xd
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldrh r0, [r6, #2]
	cmp r0, #0xf
	bls _0802DAC0
	movs r0, #0
	strh r0, [r6, #2]
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0802DACC @ =sub_0802D824
	bl sub_08007B84
_0802DAC0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802DAC8: .4byte 0x030013B4
_0802DACC: .4byte sub_0802D824

	thumb_func_start sub_0802DAD0
sub_0802DAD0: @ 0x0802DAD0
	push {r4, lr}
	ldr r4, _0802DAF8 @ =0x030013B4
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0802DAFC @ =sub_0802DA18
	bl sub_08007B84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802DAF8: .4byte 0x030013B4
_0802DAFC: .4byte sub_0802DA18

	thumb_func_start sub_0802DB00
sub_0802DB00: @ 0x0802DB00
	push {lr}
	ldr r0, _0802DB4C @ =0x030013B8
	ldr r2, [r0]
	ldr r1, _0802DB50 @ =0x00010018
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DB82
	ldr r3, _0802DB54 @ =0x00010019
	adds r0, r2, r3
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r3, #7
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802DB60
	ldr r1, _0802DB58 @ =0x0001001A
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0xb
	adds r0, #0x18
	adds r0, r2, r0
	subs r3, #5
	adds r1, r2, r3
	ldrb r1, [r1]
	lsls r1, r1, #0xb
	ldr r2, _0802DB5C @ =0x06000020
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08007EA4
	b _0802DB76
	.align 2, 0
_0802DB4C: .4byte 0x030013B8
_0802DB50: .4byte 0x00010018
_0802DB54: .4byte 0x00010019
_0802DB58: .4byte 0x0001001A
_0802DB5C: .4byte 0x06000020
_0802DB60:
	ldr r1, _0802DB88 @ =0x0001001B
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #0xb
	ldr r0, _0802DB8C @ =0x06000020
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0
	bl sub_08007EFC
_0802DB76:
	ldr r0, _0802DB90 @ =0x030013B8
	ldr r0, [r0]
	ldr r3, _0802DB94 @ =0x00010018
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
_0802DB82:
	pop {r0}
	bx r0
	.align 2, 0
_0802DB88: .4byte 0x0001001B
_0802DB8C: .4byte 0x06000020
_0802DB90: .4byte 0x030013B8
_0802DB94: .4byte 0x00010018

	thumb_func_start sub_0802DB98
sub_0802DB98: @ 0x0802DB98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802DBC4 @ =0x030013B8
	ldr r0, [r0]
	ldr r1, _0802DBC8 @ =0x0001001C
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0802DBCC @ =0x02034DE8
	movs r2, #0x44
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DBD4
	ldr r0, _0802DBD0 @ =0x08086BE0
	ldr r4, [r0, #4]
	b _0802DBD8
	.align 2, 0
_0802DBC4: .4byte 0x030013B8
_0802DBC8: .4byte 0x0001001C
_0802DBCC: .4byte 0x02034DE8
_0802DBD0: .4byte 0x08086BE0
_0802DBD4:
	ldr r0, _0802DE50 @ =0x08086BE0
	ldr r4, [r0]
_0802DBD8:
	ldr r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _0802DE54 @ =0x030013B8
	mov sb, r2
	cmp r0, r1
	beq _0802DC0C
	mov r8, sb
	ldr r7, _0802DE58 @ =0x0001001C
	ldr r6, _0802DE5C @ =0x00010020
	adds r5, r1, #0
_0802DBEE:
	mov r0, r8
	ldr r2, [r0]
	adds r3, r2, r7
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r2, r6
	adds r2, r2, r1
	ldm r4!, {r0}
	str r0, [r2]
	ldr r0, [r4]
	cmp r0, r5
	bne _0802DBEE
_0802DC0C:
	mov r1, sb
	ldr r2, [r1]
	ldr r0, _0802DE58 @ =0x0001001C
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, _0802DE5C @ =0x00010020
	adds r2, r2, r1
	adds r2, r2, r0
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2]
	movs r5, #0
	mov r2, sb
	ldr r0, [r2]
	ldr r2, _0802DE60 @ =0x00010138
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r5, r0
	bge _0802DC98
	mov r8, r1
	mov sl, sb
_0802DC3E:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _0802DE64 @ =0x00010139
	adds r0, r0, r2
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r5, #1
	mov ip, r5
	cmp r1, #0x24
	beq _0802DC88
	cmp r1, #0x25
	beq _0802DC88
	adds r0, r1, #0
	lsls r0, r0, #2
	ldr r1, _0802DE68 @ =0x08086E30
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r4]
	cmp r0, r8
	beq _0802DC88
	mov r7, sl
	ldr r6, _0802DE58 @ =0x0001001C
	ldr r5, _0802DE5C @ =0x00010020
_0802DC6C:
	ldr r3, [r7]
	adds r2, r3, r6
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r3, r3, r5
	adds r3, r3, r0
	ldm r4!, {r0}
	str r0, [r3]
	ldr r0, [r4]
	cmp r0, r8
	bne _0802DC6C
_0802DC88:
	mov r5, ip
	mov r2, sb
	ldr r0, [r2]
	ldr r1, _0802DE60 @ =0x00010138
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r5, r0
	blt _0802DC3E
_0802DC98:
	movs r0, #0xa
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, _0802DE6C @ =0x08086F48
	adds r0, r0, r2
	ldr r4, [r0]
	ldr r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802DCDA
	ldr r0, _0802DE54 @ =0x030013B8
	mov r8, r0
	ldr r7, _0802DE58 @ =0x0001001C
	ldr r6, _0802DE5C @ =0x00010020
	adds r5, r1, #0
_0802DCBC:
	mov r1, r8
	ldr r2, [r1]
	adds r3, r2, r7
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r2, r6
	adds r2, r2, r1
	ldm r4!, {r0}
	str r0, [r2]
	ldr r0, [r4]
	cmp r0, r5
	bne _0802DCBC
_0802DCDA:
	ldr r2, _0802DE54 @ =0x030013B8
	mov sb, r2
	ldr r2, [r2]
	ldr r0, _0802DE58 @ =0x0001001C
	mov r8, r0
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r7, _0802DE5C @ =0x00010020
	adds r2, r2, r7
	adds r2, r2, r0
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r2]
	ldr r0, _0802DE70 @ =0x02034E14
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x31
	bgt _0802DDD8
	ldr r0, _0802DE74 @ =0x08086F80
	ldr r4, [r0]
	ldr r0, [r4]
	lsls r5, r5, #2
	mov sl, r5
	cmp r0, r6
	beq _0802DD3E
	adds r5, r6, #0
_0802DD1E:
	mov r1, sb
	ldr r2, [r1]
	mov r0, r8
	adds r3, r2, r0
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r2, r7
	adds r2, r2, r1
	ldm r4!, {r0}
	str r0, [r2]
	ldr r0, [r4]
	cmp r0, r5
	bne _0802DD1E
_0802DD3E:
	movs r0, #8
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _0802DE78 @ =0x08086FC8
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802DD80
	ldr r2, _0802DE54 @ =0x030013B8
	mov r8, r2
	ldr r7, _0802DE58 @ =0x0001001C
	ldr r6, _0802DE5C @ =0x00010020
	adds r5, r1, #0
_0802DD62:
	mov r0, r8
	ldr r2, [r0]
	adds r3, r2, r7
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r2, r6
	adds r2, r2, r1
	ldm r4!, {r0}
	str r0, [r2]
	ldr r0, [r4]
	cmp r0, r5
	bne _0802DD62
_0802DD80:
	ldr r0, _0802DE7C @ =0x08087020
	add r0, sl
	ldr r4, [r0]
	ldr r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _0802DE54 @ =0x030013B8
	mov sb, r2
	cmp r0, r1
	beq _0802DDBA
	mov r8, sb
	ldr r7, _0802DE58 @ =0x0001001C
	ldr r6, _0802DE5C @ =0x00010020
	adds r5, r1, #0
_0802DD9C:
	mov r0, r8
	ldr r2, [r0]
	adds r3, r2, r7
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r2, r6
	adds r2, r2, r1
	ldm r4!, {r0}
	str r0, [r2]
	ldr r0, [r4]
	cmp r0, r5
	bne _0802DD9C
_0802DDBA:
	ldr r0, _0802DE54 @ =0x030013B8
	ldr r2, [r0]
	ldr r1, _0802DE58 @ =0x0001001C
	adds r3, r2, r1
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, _0802DE5C @ =0x00010020
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
_0802DDD8:
	ldr r1, _0802DE80 @ =0x08087108
	ldr r0, _0802DE84 @ =0x03004400
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802DE16
	ldr r2, _0802DE54 @ =0x030013B8
	mov r8, r2
	ldr r7, _0802DE58 @ =0x0001001C
	ldr r6, _0802DE5C @ =0x00010020
	adds r5, r1, #0
_0802DDF8:
	mov r0, r8
	ldr r2, [r0]
	adds r3, r2, r7
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r2, r6
	adds r2, r2, r1
	ldm r4!, {r0}
	str r0, [r2]
	ldr r0, [r4]
	cmp r0, r5
	bne _0802DDF8
_0802DE16:
	bl sub_08031C50
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DEF2
	ldr r0, _0802DE54 @ =0x030013B8
	ldr r2, [r0]
	ldr r1, _0802DE58 @ =0x0001001C
	adds r3, r2, r1
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, _0802DE5C @ =0x00010020
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
	ldr r1, _0802DE88 @ =0x02034BF0
	ldr r2, _0802DE8C @ =0x00000236
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802DE94
	ldr r0, _0802DE90 @ =0x08087130
	ldr r4, [r0, #8]
	b _0802DEC0
	.align 2, 0
_0802DE50: .4byte 0x08086BE0
_0802DE54: .4byte 0x030013B8
_0802DE58: .4byte 0x0001001C
_0802DE5C: .4byte 0x00010020
_0802DE60: .4byte 0x00010138
_0802DE64: .4byte 0x00010139
_0802DE68: .4byte 0x08086E30
_0802DE6C: .4byte 0x08086F48
_0802DE70: .4byte 0x02034E14
_0802DE74: .4byte 0x08086F80
_0802DE78: .4byte 0x08086FC8
_0802DE7C: .4byte 0x08087020
_0802DE80: .4byte 0x08087108
_0802DE84: .4byte 0x03004400
_0802DE88: .4byte 0x02034BF0
_0802DE8C: .4byte 0x00000236
_0802DE90: .4byte 0x08087130
_0802DE94:
	ldr r4, _0802DEB4 @ =0x08087BB0
	movs r2, #0x89
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	ldrh r1, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bls _0802DEBC
	ldr r0, _0802DEB8 @ =0x08087130
	ldr r4, [r0]
	b _0802DEC0
	.align 2, 0
_0802DEB4: .4byte 0x08087BB0
_0802DEB8: .4byte 0x08087130
_0802DEBC:
	ldr r0, _0802DF2C @ =0x08087130
	ldr r4, [r0, #4]
_0802DEC0:
	ldr r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802DEF2
	ldr r0, _0802DF30 @ =0x030013B8
	mov r8, r0
	ldr r7, _0802DF34 @ =0x0001001C
	ldr r6, _0802DF38 @ =0x00010020
	adds r5, r1, #0
_0802DED4:
	mov r1, r8
	ldr r2, [r1]
	adds r3, r2, r7
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r2, r6
	adds r2, r2, r1
	ldm r4!, {r0}
	str r0, [r2]
	ldr r0, [r4]
	cmp r0, r5
	bne _0802DED4
_0802DEF2:
	ldr r2, _0802DF30 @ =0x030013B8
	mov r8, r2
	ldr r7, _0802DF34 @ =0x0001001C
	ldr r6, _0802DF38 @ =0x00010020
	movs r5, #9
	movs r4, #1
	rsbs r4, r4, #0
_0802DF00:
	mov r0, r8
	ldr r2, [r0]
	adds r3, r2, r7
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r2, r6
	adds r2, r2, r1
	str r4, [r2]
	subs r5, #1
	cmp r5, #0
	bge _0802DF00
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DF2C: .4byte 0x08087130
_0802DF30: .4byte 0x030013B8
_0802DF34: .4byte 0x0001001C
_0802DF38: .4byte 0x00010020

	thumb_func_start sub_0802DF3C
sub_0802DF3C: @ 0x0802DF3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0802E054 @ =0x030013B8
	ldr r1, [r0]
	ldr r2, _0802E058 @ =0x00010138
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1]
	movs r6, #0
	ldr r3, _0802E05C @ =0x02034BF0
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r3, r2
	adds r4, r0, #0
	ldr r0, _0802E060 @ =0x080FE908
	mov sl, r0
	ldr r2, _0802E064 @ =0x03004400
	mov sb, r2
	ldrb r0, [r1]
	cmp r6, r0
	bge _0802DFA8
	ldr r2, _0802E068 @ =0x00000221
	adds r2, r2, r3
	mov r8, r2
	adds r7, r1, #0
_0802DF76:
	mov r3, r8
	adds r5, r6, r3
	ldrb r0, [r5]
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0802DFA0
	ldr r2, [r4]
	ldr r0, _0802E058 @ =0x00010138
	adds r3, r2, r0
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _0802E06C @ =0x00010139
	adds r2, r2, r3
	adds r2, r2, r1
	ldrb r0, [r5]
	strb r0, [r2]
_0802DFA0:
	adds r6, #1
	ldrb r0, [r7]
	cmp r6, r0
	blt _0802DF76
_0802DFA8:
	ldr r7, _0802E070 @ =0x06010000
	mov r1, sb
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, _0802E074 @ =0x05000200
	bl sub_08008308
	ldr r4, _0802E054 @ =0x030013B8
	ldr r0, [r4]
	str r7, [r0, #0x14]
	ldr r1, _0802E078 @ =0x080FE90C
	mov r2, sb
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r7, #0
	bl sub_08008374
	ldr r0, _0802E07C @ =0x081033D4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0802E080 @ =0x08103904
	ldr r1, _0802E084 @ =0x0600C000
	bl sub_08008374
	ldr r0, _0802E088 @ =0x08103524
	ldr r1, _0802E08C @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r1, _0802E090 @ =0x030024E0
	ldr r0, _0802E094 @ =0x00001F0F
	strh r0, [r1, #8]
	bl sub_0802DB98
	bl sub_080057D0
	ldr r3, _0802E098 @ =0x0600F000
	mov ip, r3
	movs r3, #1
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r7, r0, #0
_0802E00C:
	adds r5, r6, #1
	movs r1, #0x1f
	mov r8, r1
_0802E012:
	adds r0, r3, #0
	orrs r0, r7
	mov r2, ip
	strh r0, [r2]
	adds r3, #1
	mov r1, ip
	adds r1, #0x40
	adds r0, r3, #0
	orrs r0, r7
	strh r0, [r1]
	adds r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	movs r1, #2
	add ip, r1
	mov r2, r8
	cmp r2, #0
	bge _0802E012
	movs r0, #0x40
	add ip, r0
	adds r6, r5, #0
	cmp r6, #0xf
	ble _0802E00C
	movs r1, #0
	mov r8, r1
	movs r6, #0
	adds r5, r4, #0
	ldr r0, [r5]
	ldr r2, _0802E09C @ =0x0001001C
	adds r0, r0, r2
	b _0802E1BC
	.align 2, 0
_0802E054: .4byte 0x030013B8
_0802E058: .4byte 0x00010138
_0802E05C: .4byte 0x02034BF0
_0802E060: .4byte 0x080FE908
_0802E064: .4byte 0x03004400
_0802E068: .4byte 0x00000221
_0802E06C: .4byte 0x00010139
_0802E070: .4byte 0x06010000
_0802E074: .4byte 0x05000200
_0802E078: .4byte 0x080FE90C
_0802E07C: .4byte 0x081033D4
_0802E080: .4byte 0x08103904
_0802E084: .4byte 0x0600C000
_0802E088: .4byte 0x08103524
_0802E08C: .4byte 0x0600F800
_0802E090: .4byte 0x030024E0
_0802E094: .4byte 0x00001F0F
_0802E098: .4byte 0x0600F000
_0802E09C: .4byte 0x0001001C
_0802E0A0:
	ldr r3, _0802E208 @ =0x030013B8
	ldr r1, [r3]
	lsls r4, r6, #2
	ldr r2, _0802E20C @ =0x00010020
	adds r0, r1, r2
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0802E1B2
	mov r3, r8
	lsls r0, r3, #0xb
	adds r0, #0x18
	adds r7, r1, r0
	movs r0, #1
	add r8, r0
	adds r0, r2, #0
	bl sub_08006828
	movs r1, #0
	bl sub_080045FC
	ldr r1, [r5]
	ldr r2, _0802E210 @ =0x00010100
	adds r1, r1, r2
	adds r1, r1, r6
	movs r3, #0
	mov sb, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldr r1, _0802E20C @ =0x00010020
	adds r0, r0, r1
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	mov r2, sb
	str r2, [sp]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	ldr r1, [r5]
	ldr r3, _0802E210 @ =0x00010100
	adds r0, r1, r3
	adds r0, r0, r6
	ldrb r5, [r0]
	ldr r0, _0802E20C @ =0x00010020
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r2, _0802E214 @ =0x08086F80
	mov sl, r2
	ldr r0, [r2]
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _0802E1B2
	lsls r0, r5, #6
	adds r7, r7, r0
	ldr r0, _0802E218 @ =0x02034E14
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x32
	subs r4, r0, r4
	cmp r4, #9
	ble _0802E154
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08070FCC
	lsls r0, r0, #2
	ldr r3, _0802E21C @ =0x0808713C
	adds r0, r0, r3
	ldr r1, [r0]
	mov r0, sb
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004A24
	adds r5, #1
	adds r7, #0x40
_0802E154:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08071064
	lsls r0, r0, #2
	ldr r1, _0802E21C @ =0x0808713C
	adds r0, r0, r1
	ldr r1, [r0]
	mov r2, sb
	str r2, [sp]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004A24
	adds r5, #1
	adds r7, #0x40
	mov r3, sl
	ldr r0, [r3, #4]
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	mov r1, sl
	ldr r0, [r1, #4]
	ldr r0, [r0]
	bl sub_08006828
	movs r1, #0
	bl sub_080045FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	ldr r2, _0802E208 @ =0x030013B8
	ldr r0, [r2]
	ldr r3, _0802E210 @ =0x00010100
	adds r0, r0, r3
	adds r0, r0, r6
	strb r5, [r0]
_0802E1B2:
	adds r6, #1
	ldr r5, _0802E208 @ =0x030013B8
	ldr r0, [r5]
	ldr r1, _0802E220 @ =0x0001001C
	adds r0, r0, r1
_0802E1BC:
	ldrb r0, [r0]
	cmp r6, r0
	bge _0802E1C4
	b _0802E0A0
_0802E1C4:
	ldr r1, _0802E224 @ =0x030024E0
	ldr r0, _0802E228 @ =0x00001E02
	strh r0, [r1, #6]
	ldr r0, _0802E22C @ =sub_0802E510
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r4, _0802E208 @ =0x030013B8
	ldr r1, [r4]
	strh r0, [r1, #8]
	ldr r0, _0802E230 @ =sub_0802E744
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xa]
	ldr r0, _0802E234 @ =0x08103508
	movs r1, #1
	bl sub_08009554
	ldr r0, _0802E238 @ =sub_0802DB00
	movs r1, #0xf0
	bl sub_08009460
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E208: .4byte 0x030013B8
_0802E20C: .4byte 0x00010020
_0802E210: .4byte 0x00010100
_0802E214: .4byte 0x08086F80
_0802E218: .4byte 0x02034E14
_0802E21C: .4byte 0x0808713C
_0802E220: .4byte 0x0001001C
_0802E224: .4byte 0x030024E0
_0802E228: .4byte 0x00001E02
_0802E22C: .4byte sub_0802E510
_0802E230: .4byte sub_0802E744
_0802E234: .4byte 0x08103508
_0802E238: .4byte sub_0802DB00

	thumb_func_start sub_0802E23C
sub_0802E23C: @ 0x0802E23C
	push {r4, lr}
	ldr r4, _0802E268 @ =0x030013B8
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, _0802E26C @ =0x08103508
	bl sub_080095E0
	ldr r0, _0802E270 @ =sub_0802DB00
	bl sub_080094F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E268: .4byte 0x030013B8
_0802E26C: .4byte 0x08103508
_0802E270: .4byte sub_0802DB00

	thumb_func_start sub_0802E274
sub_0802E274: @ 0x0802E274
	push {r4, r5, lr}
	ldr r0, _0802E2B0 @ =0x00007FFF
	bl sub_080081A0
	ldr r5, _0802E2B4 @ =0x030013B8
	ldr r4, _0802E2B8 @ =0x00010288
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	bl sub_0802DF3C
	movs r0, #1
	bl sub_08002B98
	ldr r5, _0802E2BC @ =0x0808718C
_0802E29E:
	ldr r0, _0802E2B4 @ =0x030013B8
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0802E2C0
	subs r0, #1
	strh r0, [r1, #6]
	b _0802E2CC
	.align 2, 0
_0802E2B0: .4byte 0x00007FFF
_0802E2B4: .4byte 0x030013B8
_0802E2B8: .4byte 0x00010288
_0802E2BC: .4byte 0x0808718C
_0802E2C0:
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0802E2CC:
	ldr r4, _0802E2E0 @ =0x030013B8
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E2E4
	movs r0, #1
	bl sub_08002B98
	b _0802E29E
	.align 2, 0
_0802E2E0: .4byte 0x030013B8
_0802E2E4:
	bl sub_0802E23C
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802E300
sub_0802E300: @ 0x0802E300
	ldr r1, _0802E314 @ =0x030013B8
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3, #1]
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0802E314: .4byte 0x030013B8

	thumb_func_start sub_0802E318
sub_0802E318: @ 0x0802E318
	push {lr}
	bl sub_08008174
	ldr r1, _0802E348 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x4f
	movs r0, #1
	strb r0, [r1]
	movs r0, #9
	bl sub_0806F5DC
	bl sub_0803B8C0
	movs r0, #1
	bl sub_0802E300
	pop {r0}
	bx r0
	.align 2, 0
_0802E348: .4byte 0x030024E0

	thumb_func_start sub_0802E34C
sub_0802E34C: @ 0x0802E34C
	push {r4, lr}
	ldr r4, _0802E364 @ =0x030013B8
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _0802E37A
	cmp r0, #1
	bgt _0802E368
	cmp r0, #0
	beq _0802E36E
	b _0802E38E
	.align 2, 0
_0802E364: .4byte 0x030013B8
_0802E368:
	cmp r0, #2
	beq _0802E388
	b _0802E38E
_0802E36E:
	bl sub_0802E4E0
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0802E38E
_0802E37A:
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802E38E
	movs r0, #2
	strb r0, [r1, #2]
	b _0802E38E
_0802E388:
	movs r0, #2
	bl sub_0802E300
_0802E38E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802E394
sub_0802E394: @ 0x0802E394
	ldr r0, _0802E3B0 @ =0x030024E0
	ldr r1, _0802E3B4 @ =0x0203A318
	ldrh r2, [r1]
	adds r0, #0x4c
	strh r2, [r0]
	ldr r2, _0802E3B8 @ =0x040000D4
	adds r1, #2
	str r1, [r2]
	ldr r0, _0802E3BC @ =0x04000052
	str r0, [r2, #4]
	ldr r0, _0802E3C0 @ =0xA2400001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bx lr
	.align 2, 0
_0802E3B0: .4byte 0x030024E0
_0802E3B4: .4byte 0x0203A318
_0802E3B8: .4byte 0x040000D4
_0802E3BC: .4byte 0x04000052
_0802E3C0: .4byte 0xA2400001

	thumb_func_start sub_0802E3C4
sub_0802E3C4: @ 0x0802E3C4
	push {r4, r5, lr}
	ldr r5, _0802E3DC @ =0x030013B8
	ldr r1, [r5]
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _0802E41C
	cmp r0, #1
	bgt _0802E3E0
	cmp r0, #0
	beq _0802E3E6
	b _0802E43E
	.align 2, 0
_0802E3DC: .4byte 0x030013B8
_0802E3E0:
	cmp r0, #2
	beq _0802E42A
	b _0802E43E
_0802E3E6:
	ldr r4, _0802E410 @ =0x030024E0
	adds r1, r4, #0
	adds r1, #0x4a
	ldr r0, _0802E414 @ =0x00000844
	strh r0, [r1]
	ldr r0, _0802E418 @ =sub_0802E394
	movs r1, #0xff
	bl sub_08009460
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	bl sub_0802E6E4
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #2]
	b _0802E43E
	.align 2, 0
_0802E410: .4byte 0x030024E0
_0802E414: .4byte 0x00000844
_0802E418: .4byte sub_0802E394
_0802E41C:
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0802E43E
	movs r0, #2
	strb r0, [r1, #2]
	b _0802E43E
_0802E42A:
	ldr r0, _0802E444 @ =0x030024E0
	adds r0, #0x4a
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0802E448 @ =sub_0802E394
	bl sub_080094F4
	movs r0, #3
	bl sub_0802E300
_0802E43E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802E444: .4byte 0x030024E0
_0802E448: .4byte sub_0802E394

	thumb_func_start sub_0802E44C
sub_0802E44C: @ 0x0802E44C
	push {r4, lr}
	ldr r4, _0802E460 @ =0x030013B8
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0802E464
	cmp r0, #1
	beq _0802E47C
	b _0802E47E
	.align 2, 0
_0802E460: .4byte 0x030013B8
_0802E464:
	ldr r0, _0802E478 @ =0x030056F0
	movs r1, #4
	bl sub_0806F774
	bl sub_0803B868
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0802E47E
	.align 2, 0
_0802E478: .4byte 0x030056F0
_0802E47C:
	strb r0, [r1]
_0802E47E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802E484
sub_0802E484: @ 0x0802E484
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802E4B8 @ =0x030013B8
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0802E4BC @ =0x0808719C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802E4B8: .4byte 0x030013B8
_0802E4BC: .4byte 0x0808719C

	thumb_func_start sub_0802E4C0
sub_0802E4C0: @ 0x0802E4C0
	push {lr}
	ldr r0, _0802E4DC @ =0x030013B8
	ldr r2, [r0]
	ldrb r1, [r2, #0xc]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0
	bl sub_0802E484
	pop {r0}
	bx r0
	.align 2, 0
_0802E4DC: .4byte 0x030013B8

	thumb_func_start sub_0802E4E0
sub_0802E4E0: @ 0x0802E4E0
	push {lr}
	ldr r0, _0802E4F8 @ =0x030013B8
	ldr r2, [r0]
	ldrb r0, [r2, #0xc]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #1
	bl sub_0802E484
	pop {r0}
	bx r0
	.align 2, 0
_0802E4F8: .4byte 0x030013B8

	thumb_func_start sub_0802E4FC
sub_0802E4FC: @ 0x0802E4FC
	push {lr}
	ldr r0, _0802E50C @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802E50C: .4byte 0x030013B8

	thumb_func_start sub_0802E510
sub_0802E510: @ 0x0802E510
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	ldr r5, _0802E57C @ =0x030013B8
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802E580 @ =0x080FE914
	ldr r0, _0802E584 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0802E588 @ =0x080FE910
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x10]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0802E58C @ =sub_0802E4FC
	bl sub_08007BA0
	bl sub_0802E4C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802E57C: .4byte 0x030013B8
_0802E580: .4byte 0x080FE914
_0802E584: .4byte 0x03004400
_0802E588: .4byte 0x080FE910
_0802E58C: .4byte sub_0802E4FC

	thumb_func_start sub_0802E590
sub_0802E590: @ 0x0802E590
	bx lr
	.align 2, 0

	thumb_func_start sub_0802E594
sub_0802E594: @ 0x0802E594
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r4, [r5]
	cmp r4, #1
	beq _0802E5E8
	cmp r4, #1
	bgt _0802E5AC
	cmp r4, #0
	beq _0802E5B6
	b _0802E680
_0802E5AC:
	cmp r4, #2
	beq _0802E624
	cmp r4, #3
	beq _0802E67C
	b _0802E680
_0802E5B6:
	ldr r1, _0802E5E0 @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0x85
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _0802E5E4 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #1
	bl sub_08009A34
	strh r4, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _0802E680
	.align 2, 0
_0802E5E0: .4byte 0x030024E0
_0802E5E4: .4byte 0x030013B8
_0802E5E8:
	ldrh r0, [r5, #2]
	asrs r3, r0, #1
	ldr r2, _0802E620 @ =0x030024E0
	movs r0, #0x10
	subs r0, r0, r3
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ands r3, r1
	orrs r0, r3
	adds r2, #0x4c
	strh r0, [r2]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0802E680
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5]
	movs r0, #0x78
	bl sub_08007AC0
	b _0802E680
	.align 2, 0
_0802E620: .4byte 0x030024E0
_0802E624:
	ldrh r0, [r5, #2]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0802E630
	adds r0, #0x1f
_0802E630:
	asrs r0, r0, #5
	ldr r6, _0802E674 @ =0x030024E0
	adds r3, r0, #0
	adds r3, #0x10
	rsbs r0, r0, #0
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ands r3, r1
	orrs r0, r3
	adds r1, r6, #0
	adds r1, #0x4c
	movs r4, #0
	strh r0, [r1]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0802E680
	strh r4, [r5, #2]
	movs r0, #3
	strb r0, [r5]
	ldr r0, _0802E678 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	bl sub_08009A34
	adds r0, r6, #0
	adds r0, #0x4a
	strh r4, [r0]
	b _0802E680
	.align 2, 0
_0802E674: .4byte 0x030024E0
_0802E678: .4byte 0x030013B8
_0802E67C:
	bl sub_0802E4C0
_0802E680:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802E688
sub_0802E688: @ 0x0802E688
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802E6BC @ =0x030013B8
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0802E6C0 @ =0x080871A4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802E6BC: .4byte 0x030013B8
_0802E6C0: .4byte 0x080871A4

	thumb_func_start sub_0802E6C4
sub_0802E6C4: @ 0x0802E6C4
	push {lr}
	ldr r0, _0802E6E0 @ =0x030013B8
	ldr r2, [r0]
	ldrb r1, [r2, #0xc]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0
	bl sub_0802E688
	pop {r0}
	bx r0
	.align 2, 0
_0802E6E0: .4byte 0x030013B8

	thumb_func_start sub_0802E6E4
sub_0802E6E4: @ 0x0802E6E4
	push {lr}
	ldr r0, _0802E6FC @ =0x030013B8
	ldr r2, [r0]
	ldrb r0, [r2, #0xc]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #1
	bl sub_0802E688
	pop {r0}
	bx r0
	.align 2, 0
_0802E6FC: .4byte 0x030013B8

	thumb_func_start sub_0802E700
sub_0802E700: @ 0x0802E700
	ldr r2, _0802E724 @ =0x030024E0
	ldr r0, _0802E728 @ =0x030013B8
	ldr r1, [r0]
	ldr r3, _0802E72C @ =0x00010148
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	ldr r2, _0802E730 @ =0x040000B0
	ldr r0, _0802E734 @ =0x0001014A
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _0802E738 @ =0x04000018
	str r0, [r2, #4]
	ldr r0, _0802E73C @ =0xA2400001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bx lr
	.align 2, 0
_0802E724: .4byte 0x030024E0
_0802E728: .4byte 0x030013B8
_0802E72C: .4byte 0x00010148
_0802E730: .4byte 0x040000B0
_0802E734: .4byte 0x0001014A
_0802E738: .4byte 0x04000018
_0802E73C: .4byte 0xA2400001

	thumb_func_start sub_0802E740
sub_0802E740: @ 0x0802E740
	bx lr
	.align 2, 0

	thumb_func_start sub_0802E744
sub_0802E744: @ 0x0802E744
	push {lr}
	ldr r0, _0802E764 @ =0x030013B8
	ldr r2, [r0]
	ldr r0, _0802E768 @ =0x0001001E
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldr r1, _0802E76C @ =sub_0802E740
	bl sub_08007BA0
	bl sub_0802E6C4
	pop {r0}
	bx r0
	.align 2, 0
_0802E764: .4byte 0x030013B8
_0802E768: .4byte 0x0001001E
_0802E76C: .4byte sub_0802E740

	thumb_func_start sub_0802E770
sub_0802E770: @ 0x0802E770
	bx lr
	.align 2, 0

	thumb_func_start sub_0802E774
sub_0802E774: @ 0x0802E774
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0802E7E8 @ =0x03004400
	mov sl, r0
	ldr r1, _0802E7EC @ =0x030013B8
	mov r8, r1
	ldr r7, _0802E7F0 @ =0x00010148
	ldr r2, _0802E7F4 @ =0x08087108
	mov sb, r2
	movs r5, #0
	ldr r0, _0802E7F8 @ =0x00010100
	mov ip, r0
_0802E794:
	mov r2, r8
	ldr r1, [r2]
	ldr r2, _0802E7FC @ =0x0001001E
	adds r0, r1, r2
	ldrh r0, [r0]
	lsrs r0, r0, #2
	adds r2, r0, r6
	cmp r2, #0x9f
	bgt _0802E7B0
	adds r0, r1, r7
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
_0802E7B0:
	adds r0, r2, #0
	subs r0, #0xa0
	asrs r4, r0, #4
	mov r0, r8
	ldr r3, [r0]
	lsls r0, r4, #2
	ldr r2, _0802E800 @ =0x00010020
	adds r1, r3, r2
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2, #0xe]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _0802E804
	adds r2, r3, r7
	adds r2, r2, r5
	mov r1, ip
	adds r0, r3, r1
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #3
	subs r0, #0xd8
	b _0802E81A
	.align 2, 0
_0802E7E8: .4byte 0x03004400
_0802E7EC: .4byte 0x030013B8
_0802E7F0: .4byte 0x00010148
_0802E7F4: .4byte 0x08087108
_0802E7F8: .4byte 0x00010100
_0802E7FC: .4byte 0x0001001E
_0802E800: .4byte 0x00010020
_0802E804:
	adds r2, r3, r7
	adds r2, r2, r5
	mov r1, ip
	adds r0, r3, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	lsls r1, r1, #3
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
_0802E81A:
	ldrh r1, [r2]
	strh r0, [r2]
	adds r5, #2
	adds r6, #1
	cmp r6, #0x9f
	ble _0802E794
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802E834
sub_0802E834: @ 0x0802E834
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	bl sub_0802E774
	ldrb r5, [r7]
	cmp r5, #1
	beq _0802E8A8
	cmp r5, #1
	bgt _0802E850
	cmp r5, #0
	beq _0802E858
	b _0802E98A
_0802E850:
	cmp r5, #2
	bne _0802E856
	b _0802E980
_0802E856:
	b _0802E98A
_0802E858:
	ldr r4, _0802E894 @ =0x030013B8
	ldr r3, [r4]
	ldr r1, _0802E898 @ =0x0001001E
	adds r0, r3, r1
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	lsrs r1, r0, #4
	adds r2, r1, #0
	adds r2, #0xa
	adds r0, r2, #0
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	ldr r2, _0802E89C @ =0x0001001B
	adds r1, r3, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r3, _0802E8A0 @ =0x00010018
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	strb r1, [r7]
	ldr r0, _0802E8A4 @ =sub_0802E700
	movs r1, #0xf0
	bl sub_08009460
	b _0802E98A
	.align 2, 0
_0802E894: .4byte 0x030013B8
_0802E898: .4byte 0x0001001E
_0802E89C: .4byte 0x0001001B
_0802E8A0: .4byte 0x00010018
_0802E8A4: .4byte sub_0802E700
_0802E8A8:
	movs r6, #1
	ldr r0, _0802E954 @ =0x030024B0
	ldrh r1, [r0, #2]
	ldr r0, _0802E958 @ =0x000003F3
	ands r0, r1
	cmp r0, #0
	beq _0802E8B8
	movs r6, #8
_0802E8B8:
	ldr r3, _0802E95C @ =0x030013B8
	ldr r4, [r3]
	ldr r0, _0802E960 @ =0x0001001E
	mov ip, r0
	adds r1, r4, r0
	ldrh r0, [r1]
	lsrs r2, r0, #6
	adds r0, r0, r6
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	adds r6, r3, #0
	cmp r2, r0
	bge _0802E92A
	ldr r1, _0802E964 @ =0x00010019
	adds r2, r4, r1
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r2, [r6]
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, r1, #2
	ldr r3, _0802E968 @ =0x00010020
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802E900
	ldr r4, _0802E96C @ =0x0001001A
	adds r1, r2, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802E900:
	ldr r4, [r6]
	mov r1, ip
	adds r0, r4, r1
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	lsrs r1, r0, #4
	adds r2, r1, #0
	adds r2, #0xa
	adds r0, r2, #0
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	ldr r2, _0802E970 @ =0x0001001B
	adds r1, r4, r2
	strb r0, [r1]
	ldr r0, [r6]
	ldr r3, _0802E974 @ =0x00010018
	adds r0, r0, r3
	strb r5, [r0]
_0802E92A:
	ldr r0, [r6]
	ldr r3, _0802E960 @ =0x0001001E
	adds r2, r0, r3
	ldrh r1, [r2]
	ldr r4, _0802E978 @ =0x0001001C
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #6
	cmp r1, r0
	blt _0802E946
	strh r0, [r2]
	movs r0, #2
	strb r0, [r7]
_0802E946:
	ldr r0, _0802E97C @ =0x030024E0
	ldr r1, [r6]
	adds r1, r1, r3
	ldrh r1, [r1]
	lsrs r1, r1, #2
	strh r1, [r0, #0x16]
	b _0802E98A
	.align 2, 0
_0802E954: .4byte 0x030024B0
_0802E958: .4byte 0x000003F3
_0802E95C: .4byte 0x030013B8
_0802E960: .4byte 0x0001001E
_0802E964: .4byte 0x00010019
_0802E968: .4byte 0x00010020
_0802E96C: .4byte 0x0001001A
_0802E970: .4byte 0x0001001B
_0802E974: .4byte 0x00010018
_0802E978: .4byte 0x0001001C
_0802E97C: .4byte 0x030024E0
_0802E980:
	ldr r0, _0802E990 @ =sub_0802E700
	bl sub_080094F4
	bl sub_0802E6C4
_0802E98A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E990: .4byte sub_0802E700

	thumb_func_start sub_0802E994
sub_0802E994: @ 0x0802E994
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _0802EAB4 @ =0x08090EEC
	ldr r1, _0802EAB8 @ =0x05000220
	bl sub_08008308
	ldr r0, _0802EABC @ =0x080912C4
	add r1, sp, #4
	bl sub_08008380
	ldr r5, _0802EAC0 @ =0x030013BC
	ldr r1, [r5]
	str r0, [r1, #0x10]
	ldr r0, [sp, #4]
	str r0, [r1, #0x14]
	ldr r1, _0802EAC4 @ =0x080839CC
	ldr r4, _0802EAC8 @ =0x03004400
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802EACC @ =0x05000200
	bl sub_08008308
	ldr r1, _0802EAD0 @ =0x080839EC
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #8]
	ldr r0, [sp, #4]
	str r0, [r1, #0xc]
	ldr r4, _0802EAD4 @ =0x06010800
	ldr r0, _0802EAD8 @ =0x0809EC3C
	ldr r1, _0802EADC @ =0x05000240
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x48]
	ldr r0, _0802EAE0 @ =0x0809EDEC
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _0802EAE4 @ =0x0809F11C
	ldr r1, _0802EAE8 @ =0x05000280
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x4c]
	ldr r0, _0802EAEC @ =0x0809F188
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, _0802EAF0 @ =0x0809F32C
	ldr r1, _0802EAF4 @ =0x050002A0
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x50]
	ldr r0, _0802EAF8 @ =0x0809F3C0
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, [r5]
	str r4, [r0, #0x54]
	ldr r0, _0802EAFC @ =0x0809D620
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0802EB00 @ =0x0809DB44
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0802EB04 @ =0x0809D6E4
	ldr r1, _0802EB08 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0802EB0C @ =0x0809DA08
	ldr r1, _0802EB10 @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0802EB14 @ =sub_0802F134
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x18]
	ldr r0, _0802EB18 @ =sub_0802F36C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x1a]
	ldr r0, _0802EB1C @ =sub_0802F578
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x24]
	bl sub_0802F798
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #3
	movs r1, #0x1d
	movs r2, #6
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802EAB4: .4byte 0x08090EEC
_0802EAB8: .4byte 0x05000220
_0802EABC: .4byte 0x080912C4
_0802EAC0: .4byte 0x030013BC
_0802EAC4: .4byte 0x080839CC
_0802EAC8: .4byte 0x03004400
_0802EACC: .4byte 0x05000200
_0802EAD0: .4byte 0x080839EC
_0802EAD4: .4byte 0x06010800
_0802EAD8: .4byte 0x0809EC3C
_0802EADC: .4byte 0x05000240
_0802EAE0: .4byte 0x0809EDEC
_0802EAE4: .4byte 0x0809F11C
_0802EAE8: .4byte 0x05000280
_0802EAEC: .4byte 0x0809F188
_0802EAF0: .4byte 0x0809F32C
_0802EAF4: .4byte 0x050002A0
_0802EAF8: .4byte 0x0809F3C0
_0802EAFC: .4byte 0x0809D620
_0802EB00: .4byte 0x0809DB44
_0802EB04: .4byte 0x0809D6E4
_0802EB08: .4byte 0x0600F800
_0802EB0C: .4byte 0x0809DA08
_0802EB10: .4byte 0x0600F000
_0802EB14: .4byte sub_0802F134
_0802EB18: .4byte sub_0802F36C
_0802EB1C: .4byte sub_0802F578

	thumb_func_start sub_0802EB20
sub_0802EB20: @ 0x0802EB20
	push {r4, lr}
	bl sub_080058A4
	ldr r4, _0802EB84 @ =0x030013BC
	ldr r0, [r4]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_08007CF8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802EB84: .4byte 0x030013BC

	thumb_func_start sub_0802EB88
sub_0802EB88: @ 0x0802EB88
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r4, _0802EBC0 @ =0x030013BC
	movs r0, #0x58
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0x58
	bl sub_08007EFC
	bl sub_0802E994
	movs r0, #1
	bl sub_08002B98
	ldr r5, _0802EBC4 @ =0x080871CC
_0802EBB0:
	ldr r0, _0802EBC0 @ =0x030013BC
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0802EBC8
	subs r0, #1
	strh r0, [r1, #6]
	b _0802EBD4
	.align 2, 0
_0802EBC0: .4byte 0x030013BC
_0802EBC4: .4byte 0x080871CC
_0802EBC8:
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0802EBD4:
	ldr r4, _0802EBE8 @ =0x030013BC
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802EBEC
	movs r0, #1
	bl sub_08002B98
	b _0802EBB0
	.align 2, 0
_0802EBE8: .4byte 0x030013BC
_0802EBEC:
	bl sub_0802EB20
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802EC08
sub_0802EC08: @ 0x0802EC08
	ldr r1, _0802EC1C @ =0x030013BC
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3, #1]
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0802EC1C: .4byte 0x030013BC

	thumb_func_start sub_0802EC20
sub_0802EC20: @ 0x0802EC20
	push {r4, r5, lr}
	ldr r5, _0802EC34 @ =0x030013BC
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0802EC38
	cmp r0, #2
	beq _0802EC88
	b _0802EC8E
	.align 2, 0
_0802EC34: .4byte 0x030013BC
_0802EC38:
	bl sub_08008174
	ldr r4, _0802EC7C @ =0x030024E0
	ldr r0, _0802EC80 @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _0802EC84 @ =0x00001E02
	strh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_0803B840
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #2]
	b _0802EC8E
	.align 2, 0
_0802EC7C: .4byte 0x030024E0
_0802EC80: .4byte 0x00001F03
_0802EC84: .4byte 0x00001E02
_0802EC88:
	movs r0, #1
	bl sub_0802EC08
_0802EC8E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802EC94
sub_0802EC94: @ 0x0802EC94
	push {r4, lr}
	ldr r4, _0802ECA8 @ =0x030013BC
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0802ECAC
	cmp r0, #1
	beq _0802ECC4
	b _0802ECC6
	.align 2, 0
_0802ECA8: .4byte 0x030013BC
_0802ECAC:
	ldr r0, _0802ECC0 @ =0x030056F0
	movs r1, #2
	bl sub_0806F774
	bl sub_0803B868
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0802ECC6
	.align 2, 0
_0802ECC0: .4byte 0x030056F0
_0802ECC4:
	strb r0, [r1]
_0802ECC6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802ECCC
sub_0802ECCC: @ 0x0802ECCC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0802ECE8 @ =0x030013BC
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	adds r4, r1, #0
	cmp r0, #5
	bls _0802ECDE
	b _0802EEF4
_0802ECDE:
	lsls r0, r0, #2
	ldr r1, _0802ECEC @ =_0802ECF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802ECE8: .4byte 0x030013BC
_0802ECEC: .4byte _0802ECF0
_0802ECF0: @ jump table
	.4byte _0802ED08 @ case 0
	.4byte _0802ED1C @ case 1
	.4byte _0802ED70 @ case 2
	.4byte _0802EDB8 @ case 3
	.4byte _0802EE54 @ case 4
	.4byte _0802EE18 @ case 5
_0802ED08:
	movs r0, #0xb
	bl sub_0806F5DC
	ldr r0, _0802ED18 @ =0x030013BC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #2]
	b _0802EEF4
	.align 2, 0
_0802ED18: .4byte 0x030013BC
_0802ED1C:
	ldr r0, _0802ED4C @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x20
	beq _0802ED60
	bl sub_08005934
	ldr r0, _0802ED50 @ =0x08089594
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _0802ED54 @ =0x02031050
	ldr r1, _0802ED58 @ =0x000008A4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802ED60
	ldr r0, _0802ED5C @ =0x030013BC
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #2]
	b _0802EEF4
	.align 2, 0
_0802ED4C: .4byte 0x03004400
_0802ED50: .4byte 0x08089594
_0802ED54: .4byte 0x02031050
_0802ED58: .4byte 0x000008A4
_0802ED5C: .4byte 0x030013BC
_0802ED60:
	ldr r0, _0802ED6C @ =0x030013BC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #2]
	b _0802EEF4
	.align 2, 0
_0802ED6C: .4byte 0x030013BC
_0802ED70:
	ldr r0, [r4]
	ldr r2, [r0, #0x54]
	ldr r0, _0802EDA4 @ =0xF9FF0000
	adds r2, r2, r0
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x10
	mov r0, sp
	movs r1, #2
	movs r3, #6
	bl sub_0800A16C
	mov r0, sp
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802EDA8
	movs r0, #0x24
	bl sub_08008790
	movs r0, #4
	bl sub_0802EC08
	b _0802EEF4
	.align 2, 0
_0802EDA4: .4byte 0xF9FF0000
_0802EDA8:
	ldr r0, _0802EDB4 @ =0x03004400
	strb r2, [r0, #0xe]
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #2]
	b _0802EEF4
	.align 2, 0
_0802EDB4: .4byte 0x03004400
_0802EDB8:
	ldr r1, _0802EE04 @ =0x080839CC
	ldr r5, _0802EE08 @ =0x03004400
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802EE0C @ =0x05000200
	bl sub_08008308
	ldr r4, _0802EE10 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_08007CF8
	ldr r1, _0802EE14 @ =0x080839EC
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r4]
	str r0, [r1, #8]
	ldr r0, [sp, #4]
	str r0, [r1, #0xc]
	movs r0, #1
	bl sub_08002B98
	bl sub_0802F0AC
	bl sub_0802F318
	ldr r1, [r4]
	movs r0, #5
	strb r0, [r1, #2]
	b _0802EEF4
	.align 2, 0
_0802EE04: .4byte 0x080839CC
_0802EE08: .4byte 0x03004400
_0802EE0C: .4byte 0x05000200
_0802EE10: .4byte 0x030013BC
_0802EE14: .4byte 0x080839EC
_0802EE18:
	ldr r0, [r4]
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne _0802EEF4
	ldr r0, _0802EE48 @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r0, #8
	bl sub_08005BE0
	movs r0, #3
	bl sub_08008790
	movs r0, #2
	bl sub_0802EC08
	ldr r0, _0802EE4C @ =0x02031050
	ldr r1, _0802EE50 @ =0x000008A4
	adds r0, r0, r1
	str r4, [r0]
	b _0802EEF4
	.align 2, 0
_0802EE48: .4byte 0x03004400
_0802EE4C: .4byte 0x02031050
_0802EE50: .4byte 0x000008A4
_0802EE54:
	bl sub_08005934
	ldr r0, _0802EE7C @ =0x080895EC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0802EE86
	cmp r1, #0
	bgt _0802EE80
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802EE94
	b _0802EEF0
	.align 2, 0
_0802EE7C: .4byte 0x080895EC
_0802EE80:
	cmp r1, #1
	beq _0802EE94
	b _0802EEF0
_0802EE86:
	movs r0, #3
	bl sub_08008790
	movs r0, #4
	bl sub_0802EC08
	b _0802EEF0
_0802EE94:
	ldr r0, _0802EEB8 @ =0x080895FC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0802EEC2
	cmp r1, #0
	bgt _0802EEBC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802EED0
	b _0802EEF0
	.align 2, 0
_0802EEB8: .4byte 0x080895FC
_0802EEBC:
	cmp r1, #1
	beq _0802EED0
	b _0802EEF0
_0802EEC2:
	ldr r0, _0802EECC @ =0x030013BC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #2]
	b _0802EEF0
	.align 2, 0
_0802EECC: .4byte 0x030013BC
_0802EED0:
	ldr r0, _0802EEFC @ =0x0808960C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EEF0
	movs r0, #0x24
	bl sub_08008790
	movs r0, #4
	bl sub_0802EC08
_0802EEF0:
	bl sub_08005A2C
_0802EEF4:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802EEFC: .4byte 0x0808960C

	thumb_func_start sub_0802EF00
sub_0802EF00: @ 0x0802EF00
	push {r4, lr}
	ldr r4, _0802EF18 @ =0x030013BC
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _0802EF70
	cmp r0, #1
	bgt _0802EF1C
	cmp r0, #0
	beq _0802EF22
	b _0802EFD0
	.align 2, 0
_0802EF18: .4byte 0x030013BC
_0802EF1C:
	cmp r0, #2
	beq _0802EFB8
	b _0802EFD0
_0802EF22:
	bl sub_08005934
	ldr r0, _0802EF54 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x20
	beq _0802EF9E
	ldr r0, _0802EF58 @ =0x080895A0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0802EF9E
	cmp r1, #0
	bgt _0802EF5C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802EF60
	b _0802EFD0
	.align 2, 0
_0802EF54: .4byte 0x03004400
_0802EF58: .4byte 0x080895A0
_0802EF5C:
	cmp r1, #1
	bne _0802EFD0
_0802EF60:
	ldr r0, _0802EF6C @ =0x030013BC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #2]
	b _0802EFD0
	.align 2, 0
_0802EF6C: .4byte 0x030013BC
_0802EF70:
	ldr r0, _0802EF94 @ =0x080895B0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0802EF9E
	cmp r1, #0
	bgt _0802EF98
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802EFA6
	b _0802EFD0
	.align 2, 0
_0802EF94: .4byte 0x080895B0
_0802EF98:
	cmp r1, #1
	beq _0802EFA6
	b _0802EFD0
_0802EF9E:
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #2]
	b _0802EFD0
_0802EFA6:
	ldr r0, _0802EFB4 @ =0x080895DC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0802EFD0
	.align 2, 0
_0802EFB4: .4byte 0x080895DC
_0802EFB8:
	ldr r0, _0802EFD8 @ =0x080895E4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0802F338
	movs r0, #3
	bl sub_0802EC08
_0802EFD0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802EFD8: .4byte 0x080895E4

	thumb_func_start sub_0802EFDC
sub_0802EFDC: @ 0x0802EFDC
	push {r4, lr}
	ldr r4, _0802EFF4 @ =0x030013BC
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _0802F01A
	cmp r0, #1
	bgt _0802EFF8
	cmp r0, #0
	beq _0802F002
	b _0802F04A
	.align 2, 0
_0802EFF4: .4byte 0x030013BC
_0802EFF8:
	cmp r0, #2
	beq _0802F02C
	cmp r0, #3
	beq _0802F038
	b _0802F04A
_0802F002:
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0802F04A
	bl sub_0802F544
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0802F04A
_0802F01A:
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0802F04A
	movs r0, #2
	strb r0, [r1, #2]
	b _0802F04A
_0802F02C:
	bl sub_0802F100
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #2]
	b _0802F04A
_0802F038:
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802F04A
	movs r0, #4
	bl sub_0802EC08
_0802F04A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802F050
sub_0802F050: @ 0x0802F050
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802F084 @ =0x030013BC
	ldr r0, [r5]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	ldr r1, _0802F088 @ =0x080871E0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F084: .4byte 0x030013BC
_0802F088: .4byte 0x080871E0

	thumb_func_start sub_0802F08C
sub_0802F08C: @ 0x0802F08C
	push {lr}
	ldr r0, _0802F0A8 @ =0x030013BC
	ldr r1, [r0]
	adds r1, #0x28
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0802F050
	pop {r0}
	bx r0
	.align 2, 0
_0802F0A8: .4byte 0x030013BC

	thumb_func_start sub_0802F0AC
sub_0802F0AC: @ 0x0802F0AC
	push {r4, lr}
	ldr r4, _0802F0F0 @ =0x030013BC
	ldr r1, [r4]
	adds r1, #0x28
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0xc]
	movs r2, #0
	bl sub_08009BBC
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	ldr r3, _0802F0F4 @ =0x080839DC
	ldr r1, _0802F0F8 @ =0x03004400
	ldrb r2, [r1, #0xe]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldr r1, [r3]
	ldr r3, _0802F0FC @ =0x080839FC
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #1
	bl sub_08009ACC
	movs r0, #1
	bl sub_0802F050
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802F0F0: .4byte 0x030013BC
_0802F0F4: .4byte 0x080839DC
_0802F0F8: .4byte 0x03004400
_0802F0FC: .4byte 0x080839FC

	thumb_func_start sub_0802F100
sub_0802F100: @ 0x0802F100
	push {lr}
	ldr r0, _0802F11C @ =0x030013BC
	ldr r1, [r0]
	adds r1, #0x28
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0802F050
	pop {r0}
	bx r0
	.align 2, 0
_0802F11C: .4byte 0x030013BC

	thumb_func_start sub_0802F120
sub_0802F120: @ 0x0802F120
	push {lr}
	ldr r0, _0802F130 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802F130: .4byte 0x030013BC

	thumb_func_start sub_0802F134
sub_0802F134: @ 0x0802F134
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _0802F1A8 @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _0802F1AC @ =0x030013BC
	ldr r0, [r5]
	ldr r1, [r0, #0xc]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0802F1B0 @ =0x080839DC
	ldr r0, _0802F1B4 @ =0x03004400
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0802F1B8 @ =0x080839FC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x2c]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	ldr r1, _0802F1BC @ =sub_0802F120
	bl sub_08007BA0
	bl sub_0802F08C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F1A8: .4byte 0x06010000
_0802F1AC: .4byte 0x030013BC
_0802F1B0: .4byte 0x080839DC
_0802F1B4: .4byte 0x03004400
_0802F1B8: .4byte 0x080839FC
_0802F1BC: .4byte sub_0802F120

	thumb_func_start sub_0802F1C0
sub_0802F1C0: @ 0x0802F1C0
	bx lr
	.align 2, 0

	thumb_func_start sub_0802F1C4
sub_0802F1C4: @ 0x0802F1C4
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _0802F1E4 @ =0x030013BC
	ldr r0, [r0]
	ldr r5, [r0, #0x2c]
	ldrb r0, [r6]
	cmp r0, #1
	beq _0802F216
	cmp r0, #1
	bgt _0802F1E8
	cmp r0, #0
	beq _0802F1F2
	b _0802F25E
	.align 2, 0
_0802F1E4: .4byte 0x030013BC
_0802F1E8:
	cmp r0, #2
	beq _0802F244
	cmp r0, #3
	beq _0802F25A
	b _0802F25E
_0802F1F2:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r6]
	b _0802F25E
_0802F216:
	movs r0, #6
	ldrsh r4, [r5, r0]
	adds r4, #1
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	cmp r4, #0x28
	bne _0802F25E
	adds r0, r5, #0
	movs r1, #5
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #2
	strb r0, [r6]
	b _0802F25E
_0802F244:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #3
	strb r0, [r6]
	b _0802F25E
_0802F25A:
	bl sub_0802F08C
_0802F25E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802F264
sub_0802F264: @ 0x0802F264
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _0802F284 @ =0x030013BC
	ldr r0, [r0]
	ldr r4, [r0, #0x2c]
	ldrb r0, [r5]
	cmp r0, #1
	beq _0802F2A4
	cmp r0, #1
	bgt _0802F288
	cmp r0, #0
	beq _0802F28E
	b _0802F2B6
	.align 2, 0
_0802F284: .4byte 0x030013BC
_0802F288:
	cmp r0, #4
	beq _0802F2B2
	b _0802F2B6
_0802F28E:
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _0802F2B6
_0802F2A4:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802F2B6
	movs r0, #4
	strb r0, [r5]
	b _0802F2B6
_0802F2B2:
	bl sub_0802F08C
_0802F2B6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802F2BC
sub_0802F2BC: @ 0x0802F2BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802F2F0 @ =0x030013BC
	ldr r0, [r5]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	ldr r1, _0802F2F4 @ =0x080871EC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F2F0: .4byte 0x030013BC
_0802F2F4: .4byte 0x080871EC

	thumb_func_start sub_0802F2F8
sub_0802F2F8: @ 0x0802F2F8
	push {lr}
	ldr r0, _0802F314 @ =0x030013BC
	ldr r1, [r0]
	adds r1, #0x28
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0802F2BC
	pop {r0}
	bx r0
	.align 2, 0
_0802F314: .4byte 0x030013BC

	thumb_func_start sub_0802F318
sub_0802F318: @ 0x0802F318
	push {lr}
	ldr r0, _0802F334 @ =0x030013BC
	ldr r1, [r0]
	adds r1, #0x28
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0802F2BC
	pop {r0}
	bx r0
	.align 2, 0
_0802F334: .4byte 0x030013BC

	thumb_func_start sub_0802F338
sub_0802F338: @ 0x0802F338
	push {lr}
	ldr r0, _0802F354 @ =0x030013BC
	ldr r1, [r0]
	adds r1, #0x28
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0802F2BC
	pop {r0}
	bx r0
	.align 2, 0
_0802F354: .4byte 0x030013BC

	thumb_func_start sub_0802F358
sub_0802F358: @ 0x0802F358
	push {lr}
	ldr r0, _0802F368 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802F368: .4byte 0x030013BC

	thumb_func_start sub_0802F36C
sub_0802F36C: @ 0x0802F36C
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x60
	bl sub_08009A70
	ldr r1, _0802F3D4 @ =0x06010400
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _0802F3D8 @ =0x030013BC
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0802F3DC @ =0x080912A8
	ldr r2, _0802F3E0 @ =0x0809126C
	adds r0, r4, #0
	movs r3, #3
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x30]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	ldr r1, _0802F3E4 @ =sub_0802F358
	bl sub_08007BA0
	bl sub_0802F2F8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F3D4: .4byte 0x06010400
_0802F3D8: .4byte 0x030013BC
_0802F3DC: .4byte 0x080912A8
_0802F3E0: .4byte 0x0809126C
_0802F3E4: .4byte sub_0802F358

	thumb_func_start sub_0802F3E8
sub_0802F3E8: @ 0x0802F3E8
	bx lr
	.align 2, 0

	thumb_func_start sub_0802F3EC
sub_0802F3EC: @ 0x0802F3EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	mov r8, r0
	cmp r0, #0
	beq _0802F406
	cmp r0, #1
	beq _0802F454
	b _0802F458
_0802F406:
	ldr r0, _0802F450 @ =0x030013BC
	ldr r0, [r0]
	ldr r6, [r0, #0x30]
	movs r0, #6
	ldrsh r5, [r6, r0]
	adds r5, #1
	movs r0, #8
	ldrsh r4, [r6, r0]
	ldrh r0, [r7, #2]
	lsls r0, r0, #1
	adds r0, #1
	movs r1, #0x18
	bl sub_08070FCC
	subs r0, #2
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x33
	bls _0802F458
	movs r0, #1
	strb r0, [r7]
	mov r0, r8
	strh r0, [r7, #2]
	b _0802F458
	.align 2, 0
_0802F450: .4byte 0x030013BC
_0802F454:
	bl sub_0802F2F8
_0802F458:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802F464
sub_0802F464: @ 0x0802F464
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0802F4A4
	cmp r0, #1
	bgt _0802F47C
	cmp r0, #0
	beq _0802F482
	b _0802F4DE
_0802F47C:
	cmp r0, #2
	beq _0802F4C4
	b _0802F4DE
_0802F482:
	strh r0, [r5, #2]
	ldr r4, _0802F4A0 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	movs r1, #5
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _0802F4DE
	.align 2, 0
_0802F4A0: .4byte 0x030013BC
_0802F4A4:
	ldr r0, _0802F4C0 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802F4DE
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5]
	b _0802F4DE
	.align 2, 0
_0802F4C0: .4byte 0x030013BC
_0802F4C4:
	ldr r4, _0802F4E4 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	movs r1, #0xff
	bl sub_08009B40
	bl sub_0802F2F8
_0802F4DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F4E4: .4byte 0x030013BC

	thumb_func_start sub_0802F4E8
sub_0802F4E8: @ 0x0802F4E8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802F51C @ =0x030013BC
	ldr r0, [r5]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	ldr r1, _0802F520 @ =0x080871F8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F51C: .4byte 0x030013BC
_0802F520: .4byte 0x080871F8

	thumb_func_start sub_0802F524
sub_0802F524: @ 0x0802F524
	push {lr}
	ldr r0, _0802F540 @ =0x030013BC
	ldr r1, [r0]
	adds r1, #0x28
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0802F4E8
	pop {r0}
	bx r0
	.align 2, 0
_0802F540: .4byte 0x030013BC

	thumb_func_start sub_0802F544
sub_0802F544: @ 0x0802F544
	push {lr}
	ldr r0, _0802F560 @ =0x030013BC
	ldr r1, [r0]
	adds r1, #0x28
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0802F4E8
	pop {r0}
	bx r0
	.align 2, 0
_0802F560: .4byte 0x030013BC

	thumb_func_start sub_0802F564
sub_0802F564: @ 0x0802F564
	push {lr}
	ldr r0, _0802F574 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0802F574: .4byte 0x030013BC

	thumb_func_start sub_0802F578
sub_0802F578: @ 0x0802F578
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r2, #0x70
	bl sub_08009A70
	ldr r5, _0802F5D8 @ =0x030013BC
	ldr r0, [r5]
	ldr r1, [r0, #0x4c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0802F5DC @ =0x0809F17C
	ldr r2, _0802F5E0 @ =0x0809F170
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x44]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	ldr r1, _0802F5E4 @ =sub_0802F564
	bl sub_08007BA0
	bl sub_0802F524
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F5D8: .4byte 0x030013BC
_0802F5DC: .4byte 0x0809F17C
_0802F5E0: .4byte 0x0809F170
_0802F5E4: .4byte sub_0802F564

	thumb_func_start sub_0802F5E8
sub_0802F5E8: @ 0x0802F5E8
	bx lr
	.align 2, 0

	thumb_func_start sub_0802F5EC
sub_0802F5EC: @ 0x0802F5EC
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _0802F62C
	cmp r0, #1
	bgt _0802F604
	cmp r0, #0
	beq _0802F60E
	b _0802F6D0
_0802F604:
	cmp r0, #2
	beq _0802F668
	cmp r0, #3
	beq _0802F6CC
	b _0802F6D0
_0802F60E:
	movs r0, #0xfd
	bl sub_0806F5DC
	ldr r0, _0802F628 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	movs r1, #1
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r6]
	b _0802F6D0
	.align 2, 0
_0802F628: .4byte 0x030013BC
_0802F62C:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl sub_080711AC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F646
	bl sub_0802F6F8
_0802F646:
	ldr r1, _0802F664 @ =0x030013BC
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	movs r2, #6
	ldrsh r0, [r0, r2]
	subs r4, r0, #2
	cmp r4, #0x8c
	bgt _0802F65E
	movs r0, #2
	strb r0, [r6]
	movs r0, #0
	strh r0, [r6, #4]
_0802F65E:
	ldr r0, [r1]
	b _0802F6B8
	.align 2, 0
_0802F664: .4byte 0x030013BC
_0802F668:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl sub_080711AC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F682
	bl sub_0802F6F8
_0802F682:
	ldr r7, _0802F6C8 @ =0x030013BC
	ldr r0, [r7]
	ldr r0, [r0, #0x44]
	movs r1, #6
	ldrsh r5, [r0, r1]
	ldrh r0, [r6, #4]
	adds r1, r0, #1
	strh r1, [r6, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0x28
	bl sub_08070FCC
	subs r0, #2
	adds r4, r5, r0
	cmp r4, r5
	ble _0802F6B6
	adds r4, r5, #0
	movs r0, #3
	strb r0, [r6]
	ldr r0, [r7]
	ldr r0, [r0, #0x44]
	movs r1, #0
	bl sub_08009AFC
_0802F6B6:
	ldr r0, [r7]
_0802F6B8:
	ldr r0, [r0, #0x44]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	b _0802F6D0
	.align 2, 0
_0802F6C8: .4byte 0x030013BC
_0802F6CC:
	bl sub_0802F524
_0802F6D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802F6D8
sub_0802F6D8: @ 0x0802F6D8
	push {lr}
	bl sub_08007BD4
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802F6F2
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_0802F6F2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802F6F8
sub_0802F6F8: @ 0x0802F6F8
	push {r4, r5, r6, lr}
	ldr r0, _0802F758 @ =sub_0802F6D8
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #2
	movs r1, #0x7f
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _0802F75C @ =0x030013BC
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r3, #8
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x50]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #5
	bl sub_08009AB4
	ldr r1, _0802F760 @ =0x0809F3B8
	ldr r2, _0802F764 @ =0x0809F39C
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	str r4, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F758: .4byte sub_0802F6D8
_0802F75C: .4byte 0x030013BC
_0802F760: .4byte 0x0809F3B8
_0802F764: .4byte 0x0809F39C

	thumb_func_start sub_0802F768
sub_0802F768: @ 0x0802F768
	push {r4, lr}
	ldr r4, _0802F794 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x38]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802F794: .4byte 0x030013BC

	thumb_func_start sub_0802F798
sub_0802F798: @ 0x0802F798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _0802F880 @ =0x030013BC
	mov r8, r0
	movs r1, #0
	mov sl, r1
	ldr r2, _0802F884 @ =0x080871AC
	mov sb, r2
_0802F7B0:
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r6, r7, #2
	mov r3, sb
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #2
	ldrsh r2, [r3, r0]
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r0, _0802F888 @ =0x080871BC
	lsls r5, r7, #1
	adds r0, r5, r0
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _0802F88C @ =0x0809EDC8
	ldr r2, _0802F890 @ =0x0809EDB8
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x34
	adds r0, r0, r6
	str r4, [r0]
	ldr r0, _0802F894 @ =sub_0802F89C
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	mov r3, r8
	ldr r1, [r3]
	adds r1, #0x1c
	adds r1, r1, r5
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _0802F894 @ =sub_0802F89C
	bl sub_08007B84
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0x1c
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r7, [r0]
	movs r2, #0
	strb r2, [r0, #1]
	movs r3, #0
	strh r3, [r0, #2]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x1c
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl sub_08007AD8
	movs r3, #0x14
	add sl, r3
	movs r0, #4
	add sb, r0
	adds r7, #1
	cmp r7, #3
	ble _0802F7B0
	ldr r0, _0802F880 @ =0x030013BC
	ldr r0, [r0]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	ldr r1, _0802F898 @ =sub_0802F768
	bl sub_08007BA0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F880: .4byte 0x030013BC
_0802F884: .4byte 0x080871AC
_0802F888: .4byte 0x080871BC
_0802F88C: .4byte 0x0809EDC8
_0802F890: .4byte 0x0809EDB8
_0802F894: .4byte sub_0802F89C
_0802F898: .4byte sub_0802F768

	thumb_func_start sub_0802F89C
sub_0802F89C: @ 0x0802F89C
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0802F8C8
	ldr r0, _0802F8D0 @ =0x030013BC
	ldr r0, [r0]
	ldrb r1, [r4]
	lsls r2, r1, #2
	adds r0, #0x34
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _0802F8D4 @ =0x080871C4
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r4, #1]
_0802F8C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802F8D0: .4byte 0x030013BC
_0802F8D4: .4byte 0x080871C4

	thumb_func_start sub_0802F8D8
sub_0802F8D8: @ 0x0802F8D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802F98C @ =0x02034DE8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800B844
	adds r0, r5, #0
	adds r0, #0x44
	adds r1, r4, #0
	bl sub_0800B844
	ldr r0, _0802F990 @ =0xFFFFFE08
	adds r6, r5, r0
	movs r1, #8
	ldrsb r1, [r6, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802F984
	adds r4, r5, #0
	adds r4, #0x2c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0800B844
	movs r0, #8
	ldrsb r0, [r6, r0]
	cmp r0, #0x26
	bne _0802F92A
	adds r0, r4, #0
	movs r1, #0x24
	bl sub_0800B844
	adds r0, r4, #0
	movs r1, #0x25
	bl sub_0800B844
_0802F92A:
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r4, r6, #0
	cmp r1, r0
	bge _0802F950
	ldr r2, _0802F994 @ =0x00000221
	adds r5, r4, r2
	movs r3, #8
	ldrsb r3, [r4, r3]
	adds r2, r0, #0
_0802F942:
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, r3
	beq _0802F984
	adds r1, #1
	cmp r1, r2
	blt _0802F942
_0802F950:
	adds r3, r4, #0
	movs r0, #0x88
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0802F994 @ =0x00000221
	adds r1, r3, r2
	adds r0, r0, r1
	ldrb r1, [r3, #8]
	strb r1, [r0]
	movs r0, #8
	ldrsb r0, [r3, r0]
	cmp r0, #0x31
	bne _0802F97C
	ldrb r0, [r3, #5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #5]
_0802F97C:
	ldrb r0, [r4, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #5]
_0802F984:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F98C: .4byte 0x02034DE8
_0802F990: .4byte 0xFFFFFE08
_0802F994: .4byte 0x00000221

	thumb_func_start sub_0802F998
sub_0802F998: @ 0x0802F998
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r3, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _0802F9CC
	ldr r0, _0802F9D0 @ =0x02034BF0
	ldrb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r2, [r0, #8]
	ldr r1, [r0, #0x1c]
	ldrh r2, [r1, #2]
	movs r1, #0xfc
	lsls r1, r1, #1
	ands r1, r2
	lsrs r1, r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800B844
_0802F9CC:
	pop {r0}
	bx r0
	.align 2, 0
_0802F9D0: .4byte 0x02034BF0

	thumb_func_start sub_0802F9D4
sub_0802F9D4: @ 0x0802F9D4
	push {r4, r5, r6, lr}
	ldr r5, _0802FA30 @ =0x02031050
	ldr r0, _0802FA34 @ =0x000008A4
	adds r6, r5, r0
	ldr r0, [r6]
	cmp r0, #0
	beq _0802FA50
	ldr r1, _0802FA38 @ =0x00000A5C
	adds r0, r5, r1
	ldr r4, _0802FA3C @ =0x02034BF0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r4, #0
	bl sub_08007EA4
	ldr r2, _0802FA40 @ =0x000008A8
	adds r0, r5, r2
	ldr r1, _0802FA44 @ =0x020335D0
	movs r2, #0xda
	lsls r2, r2, #1
	bl sub_08007EA4
	ldr r2, _0802FA48 @ =0x03004400
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	movs r1, #0
	strb r0, [r2, #0xe]
	str r1, [r6]
	movs r5, #0
_0802FA10:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802FA28
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0802FA4C @ =0x02034DD8
	bl sub_0800B844
_0802FA28:
	adds r5, #1
	cmp r5, #0x7b
	ble _0802FA10
	b _0802FB8A
	.align 2, 0
_0802FA30: .4byte 0x02031050
_0802FA34: .4byte 0x000008A4
_0802FA38: .4byte 0x00000A5C
_0802FA3C: .4byte 0x02034BF0
_0802FA40: .4byte 0x000008A8
_0802FA44: .4byte 0x020335D0
_0802FA48: .4byte 0x03004400
_0802FA4C: .4byte 0x02034DD8
_0802FA50:
	ldr r4, _0802FB90 @ =0x02034BF0
	movs r2, #0x93
	lsls r2, r2, #2
	movs r0, #0
	adds r1, r4, #0
	bl sub_08007EFC
	ldr r3, _0802FB94 @ =0x03004400
	ldrb r1, [r3, #0xe]
	movs r5, #3
	ands r1, r5
	lsls r1, r1, #4
	ldrb r2, [r4, #7]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #7]
	ldr r1, _0802FB98 @ =0x08087BD0
	ldrb r0, [r3, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ands r1, r5
	ldrb r2, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r1, _0802FB9C @ =0x08087BD8
	ldrb r0, [r3, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	movs r0, #0xff
	strb r0, [r4, #9]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #8]
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r5, #0
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r4, r4, r3
	movs r2, #0xff
_0802FAB6:
	adds r1, r5, r4
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r5, #1
	cmp r5, #2
	ble _0802FAB6
	movs r5, #0
_0802FAC6:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802FADE
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0802FBA0 @ =0x02034DD8
	bl sub_0800B844
_0802FADE:
	adds r5, #1
	cmp r5, #0x7b
	ble _0802FAC6
	ldr r2, _0802FB90 @ =0x02034BF0
	ldr r0, _0802FBA4 @ =0x02031050
	ldr r4, _0802FBA8 @ =0x00000894
	adds r3, r0, r4
	movs r0, #0x89
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r5, #1
_0802FAF4:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r5, #1
	cmp r5, #0
	bge _0802FAF4
	ldr r1, _0802FB90 @ =0x02034BF0
	ldr r0, _0802FBA4 @ =0x02031050
	ldr r4, _0802FBAC @ =0x0000089C
	adds r3, r0, r4
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r5, #1
_0802FB0E:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r5, #1
	cmp r5, #0
	bge _0802FB0E
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r4, r2, r1
	movs r0, #0
	strh r0, [r4]
	movs r3, #0x89
	lsls r3, r3, #2
	adds r5, r2, r3
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x30
	bls _0802FB46
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
_0802FB46:
	adds r6, r5, #0
	ldr r4, _0802FBB0 @ =0x08087BB0
	movs r5, #7
_0802FB4C:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r4]
	cmp r0, r3
	blo _0802FB6C
	movs r0, #1
	ldrh r1, [r4, #2]
	lsls r0, r1
	ldrh r1, [r6, #0x14]
	orrs r0, r1
	strh r0, [r6, #0x14]
_0802FB6C:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0802FB4C
	ldr r2, _0802FB90 @ =0x02034BF0
	movs r3, #0x8e
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r4, #0x8d
	lsls r4, r4, #2
	adds r0, r2, r4
	strb r1, [r0]
	bl sub_080069F8
_0802FB8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FB90: .4byte 0x02034BF0
_0802FB94: .4byte 0x03004400
_0802FB98: .4byte 0x08087BD0
_0802FB9C: .4byte 0x08087BD8
_0802FBA0: .4byte 0x02034DD8
_0802FBA4: .4byte 0x02031050
_0802FBA8: .4byte 0x00000894
_0802FBAC: .4byte 0x0000089C
_0802FBB0: .4byte 0x08087BB0

	thumb_func_start sub_0802FBB4
sub_0802FBB4: @ 0x0802FBB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _0802FBD6
	ldr r1, _0802FF08 @ =0x02034BF0
	movs r0, #0xff
	strb r0, [r1, #8]
_0802FBD6:
	ldr r1, _0802FF0C @ =0x08087380
	ldr r4, _0802FF10 @ =0x03004400
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802FF14 @ =0x05000200
	bl sub_08008308
	ldr r1, _0802FF18 @ =0x08087390
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	bl sub_08008380
	ldr r7, _0802FF1C @ =0x030013C0
	ldr r1, [r7]
	str r0, [r1, #0x30]
	ldr r0, [sp]
	str r0, [r1, #0x34]
	ldr r0, _0802FF20 @ =0x080F9C58
	mov r1, sp
	bl sub_08008380
	ldr r1, [r7]
	str r0, [r1, #0x38]
	ldr r0, [sp]
	str r0, [r1, #0x3c]
	ldr r0, _0802FF24 @ =0x080912C4
	mov r1, sp
	bl sub_08008380
	ldr r1, [r7]
	str r0, [r1, #0x60]
	ldr r0, [sp]
	str r0, [r1, #0x64]
	ldr r1, _0802FF28 @ =0x080FE2E4
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	bl sub_08008380
	ldr r1, [r7]
	str r0, [r1, #0x50]
	ldr r0, [sp]
	str r0, [r1, #0x54]
	ldr r1, _0802FF2C @ =0x080839EC
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	bl sub_08008380
	ldr r1, [r7]
	str r0, [r1, #0x58]
	ldr r0, [sp]
	str r0, [r1, #0x5c]
	ldr r6, _0802FF30 @ =0x06012E80
	ldr r1, _0802FF34 @ =0x080FE2DC
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802FF38 @ =0x05000240
	bl sub_08008308
	ldr r0, [r7]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	str r6, [r0]
	ldr r1, _0802FF3C @ =0x080FE2E0
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_08008374
	adds r6, r0, r6
	ldr r0, _0802FF40 @ =0x080ABB98
	ldr r4, _0802FF44 @ =0x05000260
	adds r1, r4, #0
	bl sub_08008308
	ldr r2, _0802FF08 @ =0x02034BF0
	mov r8, r2
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	beq _0802FC9E
	ldr r0, _0802FF48 @ =0x080ABBDC
	adds r1, r4, #0
	bl sub_08008308
_0802FC9E:
	ldr r0, [r7]
	movs r4, #0xae
	lsls r4, r4, #1
	adds r0, r0, r4
	str r6, [r0]
	ldr r0, _0802FF4C @ =0x080AC098
	adds r1, r6, #0
	bl sub_08008374
	adds r6, r6, r0
	ldr r0, [r7]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r6, [r0]
	ldr r0, _0802FF50 @ =0x080B6DBC
	adds r1, r6, #0
	bl sub_08008374
	adds r6, r6, r0
	ldr r0, _0802FF54 @ =0x080FCBDC
	ldr r1, _0802FF58 @ =0x05000360
	bl sub_08008308
	ldr r0, [r7]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r0, r2
	str r6, [r0]
	ldr r0, _0802FF5C @ =0x080FCC20
	adds r1, r6, #0
	bl sub_08008374
	adds r6, r6, r0
	ldr r0, [r7]
	adds r4, #0xc
	adds r0, r0, r4
	str r6, [r0]
	ldr r0, _0802FF60 @ =0x080B4AC8
	adds r1, r6, #0
	bl sub_08008374
	adds r6, r6, r0
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	beq _0802FD46
	ldr r4, _0802FF64 @ =0x08087AA0
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_0800693C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0802FF68 @ =0x05000380
	bl sub_08008308
	ldr r0, [r7]
	movs r5, #0xb6
	lsls r5, r5, #1
	adds r0, r0, r5
	str r6, [r0]
	ldr r4, _0802FF6C @ =0x08087AC4
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_0800693C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r7]
	adds r1, r1, r5
	ldr r1, [r1]
	bl sub_08008374
_0802FD46:
	ldr r3, _0802FF70 @ =0x08087460
	ldr r2, _0802FF74 @ =0x0000022F
	add r2, r8
	mov r7, r8
	ldrb r1, [r7, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r0, r1, #1
	orrs r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _0802FF78 @ =0x05000180
	bl sub_08008308
	ldr r0, _0802FF7C @ =0x080AB888
	ldr r1, _0802FF80 @ =0x06009C00
	bl sub_08008374
	ldr r0, _0802FF84 @ =0x080ABA94
	ldr r1, _0802FF88 @ =0x0600E800
	movs r2, #0xe0
	movs r3, #0xc
	bl sub_080083CC
	ldr r1, _0802FF8C @ =0x030024E0
	ldr r0, _0802FF90 @ =0x00001D09
	strh r0, [r1, #4]
	movs r4, #0
	ldr r0, _0802FF94 @ =0x080B4BD4
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #1
	mov ip, r1
	ldr r2, _0802FF98 @ =0xFFFFC000
	adds r6, r2, #0
	movs r7, #0xe0
	lsls r7, r7, #1
	mov sl, r7
	ldr r0, _0802FF9C @ =0x0600E812
	mov r8, r0
	movs r5, #2
_0802FD9E:
	mov r2, sl
	add r2, r8
	movs r3, #0xb
_0802FDA4:
	mov r1, ip
	adds r0, r4, r1
	orrs r0, r6
	strh r0, [r2]
	adds r4, #1
	adds r1, r2, #0
	adds r1, #0x40
	mov r7, ip
	adds r0, r4, r7
	orrs r0, r6
	strh r0, [r1]
	adds r4, #1
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _0802FDA4
	movs r0, #0x80
	add sl, r0
	subs r5, #1
	cmp r5, #0
	bge _0802FD9E
	ldr r1, _0802FFA0 @ =0x050001C0
	mov r0, sb
	bl sub_08008308
	ldr r0, _0802FFA4 @ =0x080B4CD4
	ldr r1, _0802FFA8 @ =0x0600A900
	bl sub_08008374
	ldr r2, _0802FFAC @ =0x0600B080
	movs r3, #8
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r6, r1, #0
	ldr r7, _0802FFB0 @ =0xFFFFE000
	adds r4, r7, #0
	movs r5, #0x14
_0802FDEE:
	adds r0, r3, r6
	orrs r0, r4
	strh r0, [r2]
	adds r3, #1
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r3, r6
	orrs r0, r4
	strh r0, [r1]
	adds r3, #1
	adds r2, #2
	subs r5, #1
	cmp r5, #0
	bge _0802FDEE
	ldr r0, _0802FFB4 @ =0x0808D48C
	bl sub_0800B02C
	ldr r0, _0802FFB8 @ =sub_08034A80
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r4, _0802FF1C @ =0x030013C0
	ldr r1, [r4]
	strh r0, [r1, #8]
	ldr r0, _0802FFBC @ =sub_080353E4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xa]
	ldr r0, _0802FFC0 @ =sub_0803639C
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xc]
	ldr r0, _0802FFC4 @ =sub_080364E0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xe]
	ldr r0, _0802FFC8 @ =sub_08036A6C
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x10]
	ldr r0, _0802FFCC @ =sub_0803709C
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x14]
	ldr r0, _0802FFD0 @ =sub_08037690
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x16]
	ldr r0, _0802FFD4 @ =sub_08037BB8
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x18]
	ldr r0, _0802FFD8 @ =sub_080380F0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x1a]
	ldr r0, _0802FFDC @ =sub_080386C0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x2e]
	ldr r0, _0802FFE0 @ =sub_080395D4
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x22]
	ldr r0, _0802FFE4 @ =sub_080399D4
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x24]
	ldr r0, _0802FFE8 @ =sub_08039D94
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x26]
	ldr r0, _0802FFEC @ =sub_0803A3C0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x28]
	ldr r0, _0802FFF0 @ =sub_0803A7F4
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x2a]
	ldr r0, _0802FFF4 @ =sub_0803ADCC
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x2c]
	ldr r0, _0802FF08 @ =0x02034BF0
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _0802FEFC
	b _0802FFF8
_0802FEFC:
	bl sub_08005824
	movs r0, #1
	bl sub_08005A88
	b _0803003C
	.align 2, 0
_0802FF08: .4byte 0x02034BF0
_0802FF0C: .4byte 0x08087380
_0802FF10: .4byte 0x03004400
_0802FF14: .4byte 0x05000200
_0802FF18: .4byte 0x08087390
_0802FF1C: .4byte 0x030013C0
_0802FF20: .4byte 0x080F9C58
_0802FF24: .4byte 0x080912C4
_0802FF28: .4byte 0x080FE2E4
_0802FF2C: .4byte 0x080839EC
_0802FF30: .4byte 0x06012E80
_0802FF34: .4byte 0x080FE2DC
_0802FF38: .4byte 0x05000240
_0802FF3C: .4byte 0x080FE2E0
_0802FF40: .4byte 0x080ABB98
_0802FF44: .4byte 0x05000260
_0802FF48: .4byte 0x080ABBDC
_0802FF4C: .4byte 0x080AC098
_0802FF50: .4byte 0x080B6DBC
_0802FF54: .4byte 0x080FCBDC
_0802FF58: .4byte 0x05000360
_0802FF5C: .4byte 0x080FCC20
_0802FF60: .4byte 0x080B4AC8
_0802FF64: .4byte 0x08087AA0
_0802FF68: .4byte 0x05000380
_0802FF6C: .4byte 0x08087AC4
_0802FF70: .4byte 0x08087460
_0802FF74: .4byte 0x0000022F
_0802FF78: .4byte 0x05000180
_0802FF7C: .4byte 0x080AB888
_0802FF80: .4byte 0x06009C00
_0802FF84: .4byte 0x080ABA94
_0802FF88: .4byte 0x0600E800
_0802FF8C: .4byte 0x030024E0
_0802FF90: .4byte 0x00001D09
_0802FF94: .4byte 0x080B4BD4
_0802FF98: .4byte 0xFFFFC000
_0802FF9C: .4byte 0x0600E812
_0802FFA0: .4byte 0x050001C0
_0802FFA4: .4byte 0x080B4CD4
_0802FFA8: .4byte 0x0600A900
_0802FFAC: .4byte 0x0600B080
_0802FFB0: .4byte 0xFFFFE000
_0802FFB4: .4byte 0x0808D48C
_0802FFB8: .4byte sub_08034A80
_0802FFBC: .4byte sub_080353E4
_0802FFC0: .4byte sub_0803639C
_0802FFC4: .4byte sub_080364E0
_0802FFC8: .4byte sub_08036A6C
_0802FFCC: .4byte sub_0803709C
_0802FFD0: .4byte sub_08037690
_0802FFD4: .4byte sub_08037BB8
_0802FFD8: .4byte sub_080380F0
_0802FFDC: .4byte sub_080386C0
_0802FFE0: .4byte sub_080395D4
_0802FFE4: .4byte sub_080399D4
_0802FFE8: .4byte sub_08039D94
_0802FFEC: .4byte sub_0803A3C0
_0802FFF0: .4byte sub_0803A7F4
_0802FFF4: .4byte sub_0803ADCC
_0802FFF8:
	ldr r1, _0803006C @ =0x080FFB08
	ldr r4, _08030070 @ =0x03004400
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08030074 @ =0x050001A0
	bl sub_08008308
	ldr r1, _08030078 @ =0x08087B30
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r4, #0x14]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, _0803007C @ =0x0600C000
	bl sub_08008374
	ldr r1, _08030080 @ =0x080FFB1C
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08030084 @ =0x0600E000
	movs r2, #0
	movs r3, #0xd
	bl sub_080083CC
	ldr r1, _08030088 @ =0x030024E0
	ldr r0, _0803008C @ =0x00001C0C
	strh r0, [r1, #2]
_0803003C:
	ldr r0, _08030090 @ =0x02034BF0
	ldrb r1, [r0, #0xb]
	adds r2, r0, #0
	cmp r1, #9
	bne _080300D0
	ldr r0, [r2, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _080300D0
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	subs r0, #0x32
	cmp r0, #7
	bhi _080300D0
	lsls r0, r0, #2
	ldr r1, _08030094 @ =_08030098
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803006C: .4byte 0x080FFB08
_08030070: .4byte 0x03004400
_08030074: .4byte 0x050001A0
_08030078: .4byte 0x08087B30
_0803007C: .4byte 0x0600C000
_08030080: .4byte 0x080FFB1C
_08030084: .4byte 0x0600E000
_08030088: .4byte 0x030024E0
_0803008C: .4byte 0x00001C0C
_08030090: .4byte 0x02034BF0
_08030094: .4byte _08030098
_08030098: @ jump table
	.4byte _080300B8 @ case 0
	.4byte _080300C8 @ case 1
	.4byte _080300C8 @ case 2
	.4byte _080300B8 @ case 3
	.4byte _080300C8 @ case 4
	.4byte _080300B8 @ case 5
	.4byte _080300C8 @ case 6
	.4byte _080300B8 @ case 7
_080300B8:
	ldrb r0, [r2]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	b _080300D0
_080300C8:
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_080300D0:
	bl sub_0803A2F4
	ldr r2, _0803014C @ =0x030013C0
	ldr r1, [r2]
	ldr r3, _08030150 @ =0x02034BF0
	ldr r0, [r3, #0x1c]
	ldrh r0, [r0, #0x14]
	ldr r4, _08030154 @ =0x00000684
	adds r1, r1, r4
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _08030158 @ =0x03004400
	ldrb r0, [r0, #9]
	ldr r7, _0803015C @ =0x000001CD
	adds r1, r1, r7
	strb r0, [r1]
	ldrb r0, [r3, #0xb]
	cmp r0, #0x13
	bne _08030106
	movs r5, #0
_080300F8:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08033AA0
	adds r5, #1
	cmp r5, #2
	ble _080300F8
_08030106:
	ldr r0, _08030150 @ =0x02034BF0
	ldr r1, _08030160 @ =0x00000237
	adds r4, r0, r1
	movs r1, #0
	strb r1, [r4]
	movs r2, #0x89
	lsls r2, r2, #2
	adds r0, r0, r2
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x30
	bls _08030128
	movs r0, #1
	strb r0, [r4]
_08030128:
	ldr r0, _08030158 @ =0x03004400
	ldrb r1, [r0, #0xa]
	cmp r1, #6
	bgt _08030134
	cmp r1, #4
	bge _0803013A
_08030134:
	ldr r0, [r0]
	bl sub_0800B80C
_0803013A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803014C: .4byte 0x030013C0
_08030150: .4byte 0x02034BF0
_08030154: .4byte 0x00000684
_08030158: .4byte 0x03004400
_0803015C: .4byte 0x000001CD
_08030160: .4byte 0x00000237
