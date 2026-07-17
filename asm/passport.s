	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0806424C
sub_0806424C: @ 0x0806424C
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x10
	bl sub_080099E0
	adds r4, r0, #0
	ldr r5, _080642B0 @ =0x030044C8
	ldr r0, [r5]
	adds r0, #0x86
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _080642B4 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _080642B8 @ =0x0814F490
	ldr r2, _080642BC @ =0x0814F468
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _080642C0 @ =sub_08064520
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	adds r1, #0x88
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	str r4, [r0]
	movs r1, #0x78
	strh r1, [r0, #4]
	movs r1, #0xd0
	strh r1, [r0, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080642B0: .4byte 0x030044C8
_080642B4: .4byte 0x06010000
_080642B8: .4byte 0x0814F490
_080642BC: .4byte 0x0814F468
_080642C0: .4byte sub_08064520

	thumb_func_start sub_080642C4
sub_080642C4: @ 0x080642C4
	push {r4, r5, lr}
	ldr r4, _0806430C @ =0x030044C8
	ldr r0, [r4]
	adds r0, #0x88
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x88
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080642F6
	adds r0, r1, #0
	bl sub_08007A08
	ldr r0, [r4]
	adds r0, #0x88
	ldr r1, _08064310 @ =0x0000FFFF
	strh r1, [r0]
_080642F6:
	ldr r0, [r5]
	cmp r0, #0
	beq _08064304
	bl sub_08009A00
	movs r0, #0
	str r0, [r5]
_08064304:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806430C: .4byte 0x030044C8
_08064310: .4byte 0x0000FFFF

	thumb_func_start sub_08064314
sub_08064314: @ 0x08064314
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r0, _08064394 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x88
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r2, #4
	ldrsh r1, [r0, r2]
	lsls r5, r1, #0x10
	movs r2, #6
	ldrsh r4, [r0, r2]
	lsls r6, r4, #0x10
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl __divsi3
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl __divsi3
	str r0, [sp, #0xc]
	movs r2, #0
	mov sb, r2
	mov r0, r8
	cmp r0, #0
	bne _08064398
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r7, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0x40
	mov sl, r1
	b _0806439E
	.align 2, 0
_08064394: .4byte 0x030044C8
_08064398:
	movs r4, #0
	movs r2, #0x10
	mov sl, r2
_0806439E:
	ldr r0, [sp]
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
_080643AA:
	ldr r2, [sp, #8]
	adds r5, r2, r5
	ldr r1, [sp, #0xc]
	adds r0, r6, r1
	adds r6, r0, #0
	mov r2, r8
	cmp r2, #0
	bne _080643E0
	mov r1, sb
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	ldr r1, _080643DC @ =0x0807F240
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r1, r0, #8
	subs r1, r6, r1
	b _080643E2
	.align 2, 0
_080643DC: .4byte 0x0807F240
_080643E0:
	adds r1, r0, #0
_080643E2:
	asrs r0, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_080644AC
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _080643FC
	movs r0, #1
	bl ProcSleep_08002B98
	b _080643AA
_080643FC:
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	ldr r2, [sp, #0x14]
	asrs r1, r2, #0x10
	bl sub_080644AC
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08064418
sub_08064418: @ 0x08064418
	push {lr}
	bl sub_0806424C
	movs r0, #0xd5
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08064488
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x3c
	movs r3, #0
	bl sub_08064314
	movs r0, #1
	bl sub_08064488
	movs r0, #0xa
	bl ProcSleep_08002B98
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08064448
sub_08064448: @ 0x08064448
	push {lr}
	movs r0, #0xd6
	bl m4aSongNumStart
	movs r0, #1
	movs r1, #0xff
	bl sub_080644D8
	movs r0, #0
	bl sub_08064488
	movs r0, #0x78
	movs r1, #0x60
	movs r2, #0x3c
	movs r3, #1
	bl sub_08064314
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r0, #0x78
	movs r2, #0x1e
	movs r3, #1
	bl sub_08064314
	bl sub_080642C4
	movs r0, #0xa
	bl ProcSleep_08002B98
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08064488
sub_08064488: @ 0x08064488
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080644A8 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x88
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0, #0xd]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080644A8: .4byte 0x030044C8

	thumb_func_start sub_080644AC
sub_080644AC: @ 0x080644AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _080644D4 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x88
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080644D4: .4byte 0x030044C8

	thumb_func_start sub_080644D8
sub_080644D8: @ 0x080644D8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08064514 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x88
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0806450C
	ldr r1, _08064518 @ =0x0814F490
	ldr r2, _0806451C @ =0x0814F468
	adds r3, r5, #0
	bl sub_08009ACC
	ldr r0, [r4]
	adds r1, r6, #0
	bl sub_08009B40
	strb r5, [r4, #9]
_0806450C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064514: .4byte 0x030044C8
_08064518: .4byte 0x0814F490
_0806451C: .4byte 0x0814F468

	thumb_func_start sub_08064520
sub_08064520: @ 0x08064520
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r3, _080645BC @ =0x0807F240
	ldrb r1, [r4, #8]
	lsls r1, r1, #1
	adds r0, r1, r3
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r2, r2, #0xa
	movs r0, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r2, #0x10
	orrs r5, r0
	ldr r0, [r4]
	ldrh r1, [r4, #4]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r5, #0x10
	ldrh r3, [r4, #6]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08064578
	ldrb r0, [r4, #9]
	cmp r0, #1
	beq _08064578
	ldrb r0, [r4, #8]
	adds r0, #2
	strb r0, [r4, #8]
_08064578:
	ldrb r0, [r4, #9]
	adds r2, r0, #0
	cmp r2, #0
	bne _080645C4
	ldrh r0, [r4, #0xa]
	ldr r6, _080645C0 @ =0x0000FFFF
	adds r1, r0, r6
	strh r1, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080645C4
	bl sub_0800B818
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	adds r0, #2
	movs r1, #0
	bl sub_080644D8
	bl sub_0800B818
	movs r1, #7
	ands r1, r0
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r4, #0xa]
	b _080645DE
	.align 2, 0
_080645BC: .4byte 0x0807F240
_080645C0: .4byte 0x0000FFFF
_080645C4:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080645DE
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080645DE
	movs r0, #0
	movs r1, #0xff
	bl sub_080644D8
_080645DE:
	ldrb r0, [r4, #0xc]
	subs r0, #1
	strb r0, [r4, #0xc]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08064666
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x10
	bl sub_0800B828
	ldr r1, [r4]
	ldr r2, _0806466C @ =0x0000FFF8
	adds r0, r0, r2
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldrh r1, [r1, #8]
	lsls r1, r1, #0x10
	lsrs r5, r0, #0x10
	orrs r5, r1
	movs r0, #1
	movs r1, #0x11
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, _08064670 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x84
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r6, _08064674 @ =0x06010000
	adds r1, r1, r6
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08064678 @ =0x0814F2A0
	ldr r2, _0806467C @ =0x0814F28C
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _08064680 @ =sub_08064684
	movs r1, #0x91
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	str r4, [r0]
	movs r1, #0x20
	strb r1, [r0, #4]
_08064666:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806466C: .4byte 0x0000FFF8
_08064670: .4byte 0x030044C8
_08064674: .4byte 0x06010000
_08064678: .4byte 0x0814F2A0
_0806467C: .4byte 0x0814F28C
_08064680: .4byte sub_08064684

	thumb_func_start sub_08064684
sub_08064684: @ 0x08064684
	push {lr}
	bl sub_08007BD4
	adds r2, r0, #0
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r1, #1
	strh r1, [r0, #8]
	ldrb r0, [r2, #4]
	subs r0, #1
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080646AA
	ldr r0, [r2]
	bl sub_08009A00
	bl sub_08007A64
_080646AA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080646B0
sub_080646B0: @ 0x080646B0
	push {lr}
	ldr r0, _080646C4 @ =0x081208D8
	ldr r1, _080646C8 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	bl LoadTileMap_080083CC
	pop {r0}
	bx r0
	.align 2, 0
_080646C4: .4byte 0x081208D8
_080646C8: .4byte 0x0600F000

	thumb_func_start sub_080646CC
sub_080646CC: @ 0x080646CC
	ldr r2, _080646E0 @ =0x030024E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r2, #0xe]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	strh r1, [r2, #0x16]
	bx lr
	.align 2, 0
_080646E0: .4byte 0x030024E0

	thumb_func_start sub_080646E4
sub_080646E4: @ 0x080646E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r1, _08064764 @ =0x030024E0
	mov r8, r1
	ldrh r1, [r1, #0xe]
	rsbs r1, r1, #0
	lsls r6, r1, #0x10
	mov r2, r8
	ldrh r4, [r2, #0x16]
	rsbs r4, r4, #0
	lsls r7, r4, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	adds r1, r5, #0
	bl __divsi3
	str r0, [sp]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	adds r1, r5, #0
	bl __divsi3
	str r0, [sp, #4]
	mov r4, r8
_08064734:
	ldr r2, [sp]
	adds r6, r2, r6
	ldr r0, [sp, #4]
	adds r7, r0, r7
	asrs r0, r6, #0x10
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	asrs r0, r7, #0x10
	rsbs r0, r0, #0
	strh r0, [r4, #0x16]
	movs r0, #0x28
	movs r1, #0x40
	bl sub_080653F8
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08064768
	movs r0, #1
	bl ProcSleep_08002B98
	b _08064734
	.align 2, 0
_08064764: .4byte 0x030024E0
_08064768:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r4, #0x16]
	movs r0, #0x28
	movs r1, #0x40
	bl sub_080653F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08064794
sub_08064794: @ 0x08064794
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	ldr r1, _080647B4 @ =0x0600F000
	ldr r2, _080647B8 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	ldr r0, _080647BC @ =0x030024E0
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080647B4: .4byte 0x0600F000
_080647B8: .4byte 0x01000140
_080647BC: .4byte 0x030024E0

	thumb_func_start sub_080647C0
sub_080647C0: @ 0x080647C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0806485C @ =0x030044C8
	ldr r3, [r4]
	adds r3, #0xac
	ldr r5, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _08064860 @ =0x0809024F
	adds r6, r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	mov r8, r0
	ldr r1, _08064864 @ =0x030024E0
	movs r2, #0
	strh r2, [r1, #0xc]
	ldr r0, _08064868 @ =0x0000FF88
	strh r0, [r1, #0x14]
	str r2, [sp]
	ldr r1, [r3]
	ldr r2, _0806486C @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	movs r0, #0
	mov sb, r4
_08064800:
	movs r4, #0
	adds r7, r0, #1
_08064804:
	adds r0, r4, #0
	movs r1, #5
	bl __modsi3
	cmp r0, #0
	bne _08064812
	adds r5, #2
_08064812:
	ldrb r0, [r6]
	mov r1, r8
	orrs r0, r1
	strh r0, [r5]
	adds r6, #1
	adds r5, #2
	adds r4, #1
	cmp r4, #0x17
	ble _08064804
	adds r5, #6
	adds r0, r7, #0
	cmp r0, #3
	ble _08064800
	mov r3, sb
	ldr r0, [r3]
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, _08064870 @ =0x0600E000
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CpuFastSet
	ldr r2, _08064864 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806485C: .4byte 0x030044C8
_08064860: .4byte 0x0809024F
_08064864: .4byte 0x030024E0
_08064868: .4byte 0x0000FF88
_0806486C: .4byte 0x01000140
_08064870: .4byte 0x0600E000

	thumb_func_start sub_08064874
sub_08064874: @ 0x08064874
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0806489C @ =0x030024E0
	ldrh r1, [r5]
	ldr r0, _080648A0 @ =0x0000FDFF
	ands r0, r1
	movs r4, #0
	strh r0, [r5]
	str r4, [sp]
	ldr r1, _080648A4 @ =0x0600E000
	ldr r2, _080648A8 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	strh r4, [r5, #0xc]
	strh r4, [r5, #0x14]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806489C: .4byte 0x030024E0
_080648A0: .4byte 0x0000FDFF
_080648A4: .4byte 0x0600E000
_080648A8: .4byte 0x01000140

	thumb_func_start sub_080648AC
sub_080648AC: @ 0x080648AC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r6, #0xf0
	lsls r6, r6, #0xf
	movs r4, #0x40
	rsbs r0, r5, #0
	orrs r0, r5
	asrs r0, r0, #0x1f
	ands r4, r0
	ldr r7, _080648E0 @ =0x030024E0
_080648C2:
	rsbs r0, r6, #0
	strh r0, [r7, #0xc]
	asrs r0, r6, #0x10
	adds r0, r0, r4
	rsbs r0, r0, #0
	strh r0, [r7, #0x14]
	bl sub_080649F0
	cmp r5, #0
	bne _080648E4
	cmp r4, #0x3f
	bgt _080648F2
	adds r4, #4
	b _080648EA
	.align 2, 0
_080648E0: .4byte 0x030024E0
_080648E4:
	cmp r4, #0
	beq _080648F2
	subs r4, #4
_080648EA:
	movs r0, #1
	bl ProcSleep_08002B98
	b _080648C2
_080648F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080648F8
sub_080648F8: @ 0x080648F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r1, _08064928 @ =0x080902AF
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _0806492C @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x82
	ldrh r0, [r0]
	mov r8, r0
	movs r5, #0
	ldr r7, _08064930 @ =0x080901C0
	mov r6, sp
_0806491A:
	cmp r5, #0
	beq _08064922
	cmp r5, #3
	bne _08064934
_08064922:
	movs r0, #2
	b _08064936
	.align 2, 0
_08064928: .4byte 0x080902AF
_0806492C: .4byte 0x030044C8
_08064930: .4byte 0x080901C0
_08064934:
	movs r0, #1
_08064936:
	movs r1, #0x40
	cmp r5, #3
	bne _0806493E
	movs r1, #0x41
_0806493E:
	bl sub_080099E0
	adds r4, r0, #0
	mov r0, r8
	lsls r1, r0, #5
	adds r0, r4, #0
	ldr r2, _08064974 @ =0x06010000
	adds r1, r1, r2
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #9
	bl sub_08009AB4
	cmp r5, #1
	bgt _08064978
	ldr r1, [r7, #0x2c]
	ldr r2, [r7, #0x28]
	ldrb r3, [r6]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	b _08064984
	.align 2, 0
_08064974: .4byte 0x06010000
_08064978:
	ldr r2, [r7, #0x28]
	ldrb r3, [r6]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
_08064984:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _080649B8 @ =0x030044C8
	ldr r0, [r0]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	str r4, [r0]
	adds r6, #1
	adds r5, #1
	cmp r5, #3
	ble _0806491A
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r0, #1
	adds r1, r2, #0
	bl sub_08064B54
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080649B8: .4byte 0x030044C8

	thumb_func_start sub_080649BC
sub_080649BC: @ 0x080649BC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _080649EC @ =0x030044C8
_080649C2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x20
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _080649DE
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x20
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_080649DE:
	adds r5, #1
	cmp r5, #3
	ble _080649C2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080649EC: .4byte 0x030044C8

	thumb_func_start sub_080649F0
sub_080649F0: @ 0x080649F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r0, sp
	ldr r1, _08064A44 @ =0x080902B4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r5, #0
	ldr r6, _08064A48 @ =0x030024E0
	mov r4, sp
_08064A06:
	cmp r5, #1
	beq _08064A34
	ldr r0, _08064A4C @ =0x030044C8
	ldr r0, [r0]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _08064A34
	ldrh r0, [r6, #0xc]
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r6, #0x14]
	ldrh r2, [r4, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_08009A70
_08064A34:
	adds r4, #4
	adds r5, #1
	cmp r5, #3
	ble _08064A06
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064A44: .4byte 0x080902B4
_08064A48: .4byte 0x030024E0
_08064A4C: .4byte 0x030044C8

	thumb_func_start sub_08064A50
sub_08064A50: @ 0x08064A50
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r4, _08064A80 @ =0x030044C8
	ldr r0, [r4]
	ldr r3, [r0, #0x28]
	cmp r3, #0
	beq _08064A96
	cmp r1, #0
	beq _08064A88
	ldr r0, _08064A84 @ =0x080901C0
	ldr r1, [r0, #0x2c]
	ldr r2, [r0, #0x28]
	adds r0, r3, #0
	movs r3, #2
	bl sub_08009ACC
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	movs r1, #0xff
	bl sub_08009B40
	b _08064A96
	.align 2, 0
_08064A80: .4byte 0x030044C8
_08064A84: .4byte 0x080901C0
_08064A88:
	ldr r0, _08064A9C @ =0x080901C0
	ldr r2, [r0, #0x28]
	adds r0, r3, #0
	movs r1, #0
	movs r3, #2
	bl sub_08009ACC
_08064A96:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064A9C: .4byte 0x080901C0

	thumb_func_start sub_08064AA0
sub_08064AA0: @ 0x08064AA0
	push {lr}
	ldr r0, _08064AC0 @ =0x030044C8
	ldr r0, [r0]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08064ABA
	ldr r0, _08064AC4 @ =0x080901C0
	ldr r1, [r0, #0x2c]
	ldr r2, [r0, #0x28]
	adds r0, r3, #0
	movs r3, #0
	bl sub_08009ACC
_08064ABA:
	pop {r0}
	bx r0
	.align 2, 0
_08064AC0: .4byte 0x030044C8
_08064AC4: .4byte 0x080901C0

	thumb_func_start sub_08064AC8
sub_08064AC8: @ 0x08064AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r2, #6
	ldrsh r1, [r7, r2]
	lsls r5, r1, #0x10
	movs r2, #8
	ldrsh r4, [r7, r2]
	lsls r6, r4, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xa
	bl __divsi3
	str r0, [sp]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	movs r1, #0xa
	bl __divsi3
	str r0, [sp, #4]
	movs r4, #9
_08064B10:
	ldr r2, [sp]
	adds r5, r2, r5
	ldr r0, [sp, #4]
	adds r6, r0, r6
	asrs r1, r5, #0x10
	asrs r2, r6, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	movs r0, #1
	bl ProcSleep_08002B98
	subs r4, #1
	cmp r4, #0
	bge _08064B10
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	movs r0, #1
	bl ProcSleep_08002B98
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08064B54
sub_08064B54: @ 0x08064B54
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r3, #1
	bne _08064B70
	lsls r0, r2, #0x10
	ldr r1, _08064B94 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
_08064B70:
	ldr r0, _08064B98 @ =0x030044C8
	ldr r0, [r0]
	lsls r1, r3, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08064B8C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_08064B8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064B94: .4byte 0xFFFF0000
_08064B98: .4byte 0x030044C8

	thumb_func_start sub_08064B9C
sub_08064B9C: @ 0x08064B9C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _08064C04 @ =0x080902C4
	mov r0, sp
	movs r2, #2
	bl memcpy
	movs r5, #0
	ldr r6, _08064C08 @ =0x030044C8
_08064BAE:
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r6]
	adds r0, #0x7e
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08064C0C @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r0, _08064C10 @ =0x080901C0
	ldr r2, [r0, #8]
	mov r1, sp
	adds r0, r1, r5
	ldrb r3, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r5, #1
	cmp r5, #1
	ble _08064BAE
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064C04: .4byte 0x080902C4
_08064C08: .4byte 0x030044C8
_08064C0C: .4byte 0x06010000
_08064C10: .4byte 0x080901C0

	thumb_func_start sub_08064C14
sub_08064C14: @ 0x08064C14
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08064C40 @ =0x030044C8
_08064C1A:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08064C32
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_08064C32:
	adds r5, #1
	cmp r5, #1
	ble _08064C1A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064C40: .4byte 0x030044C8

	thumb_func_start sub_08064C44
sub_08064C44: @ 0x08064C44
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r0, r0, #0x10
	ldr r2, _08064C7C @ =0xFFF80000
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	ldr r0, _08064C80 @ =0xFFFC0000
	adds r1, r1, r0
	lsrs r6, r1, #0x10
	movs r4, #0
_08064C5C:
	ldr r0, _08064C84 @ =0x030044C8
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08064C96
	adds r3, r0, #0
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r4, #0
	bne _08064C88
	subs r0, r0, r5
	b _08064C8C
	.align 2, 0
_08064C7C: .4byte 0xFFF80000
_08064C80: .4byte 0xFFFC0000
_08064C84: .4byte 0x030044C8
_08064C88:
	adds r0, #1
	adds r0, r0, r5
_08064C8C:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	bl sub_08009A70
_08064C96:
	adds r4, #1
	cmp r4, #1
	ble _08064C5C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08064CA4
sub_08064CA4: @ 0x08064CA4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	movs r1, #1
	ands r0, r1
	ldr r1, _08064CCC @ =0x030044C8
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08064CC6
	adds r1, r2, #0
	bl sub_08009A34
_08064CC6:
	pop {r0}
	bx r0
	.align 2, 0
_08064CCC: .4byte 0x030044C8

	thumb_func_start sub_08064CD0
sub_08064CD0: @ 0x08064CD0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _08064D38 @ =0x080902C6
	mov r0, sp
	movs r2, #2
	bl memcpy
	movs r5, #0
	ldr r6, _08064D3C @ =0x030044C8
_08064CE2:
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r6]
	adds r0, #0x7e
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08064D40 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r0, _08064D44 @ =0x080901C0
	ldr r2, [r0, #8]
	mov r1, sp
	adds r0, r1, r5
	ldrb r3, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r0, #8
	adds r0, r0, r1
	str r4, [r0]
	adds r5, #1
	cmp r5, #1
	ble _08064CE2
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064D38: .4byte 0x080902C6
_08064D3C: .4byte 0x030044C8
_08064D40: .4byte 0x06010000
_08064D44: .4byte 0x080901C0

	thumb_func_start sub_08064D48
sub_08064D48: @ 0x08064D48
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08064D78 @ =0x030044C8
_08064D4E:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08064D6A
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #8
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_08064D6A:
	adds r5, #1
	cmp r5, #1
	ble _08064D4E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064D78: .4byte 0x030044C8

	thumb_func_start sub_08064D7C
sub_08064D7C: @ 0x08064D7C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r4, #0
_08064D84:
	ldr r0, _08064DA8 @ =0x030044C8
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08064D9A
	adds r1, r5, #0
	bl sub_08009A34
_08064D9A:
	adds r4, #1
	cmp r4, #1
	ble _08064D84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064DA8: .4byte 0x030044C8

	thumb_func_start sub_08064DAC
sub_08064DAC: @ 0x08064DAC
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r0, r0, #0x10
	ldr r2, _08064DE0 @ =0xFFFC0000
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	movs r4, #0
	ldr r0, _08064DE4 @ =0xFFF80000
	adds r6, r1, r0
_08064DC2:
	ldr r0, _08064DE8 @ =0x030044C8
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08064DFC
	adds r2, r0, #0
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r4, #0
	bne _08064DEC
	subs r0, r0, r5
	b _08064DF0
	.align 2, 0
_08064DE0: .4byte 0xFFFC0000
_08064DE4: .4byte 0xFFF80000
_08064DE8: .4byte 0x030044C8
_08064DEC:
	adds r0, #1
	adds r0, r0, r5
_08064DF0:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	asrs r2, r6, #0x10
	bl sub_08009A70
_08064DFC:
	adds r4, #1
	cmp r4, #1
	ble _08064DC2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08064E08
sub_08064E08: @ 0x08064E08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r1, _08064EA0 @ =0x080902C8
	mov r0, sp
	movs r2, #7
	bl memcpy
	ldr r0, _08064EA4 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0x70
	orrs r5, r0
	ldr r0, _08064EA8 @ =0x0000FFFF
	ands r5, r0
	movs r0, #0xf0
	lsls r0, r0, #0xf
	orrs r5, r0
	movs r6, #0
	ldr r7, _08064EAC @ =0x030044C8
	asrs r0, r5, #0x10
	lsls r0, r0, #0x10
	mov r8, r0
_08064E36:
	cmp r6, #6
	bgt _08064EB8
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r7]
	adds r0, #0x7e
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08064EB0 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r0, _08064EB4 @ =0x080901C0
	ldr r2, [r0, #8]
	mov r1, sp
	adds r0, r1, r6
	ldrb r3, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
	subs r1, r6, #3
	lsls r1, r1, #4
	adds r1, r5, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	mov r3, r8
	asrs r2, r3, #0x10
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #8
	movs r2, #8
	bl sub_08009C14
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	b _08064F04
	.align 2, 0
_08064EA0: .4byte 0x080902C8
_08064EA4: .4byte 0xFFFF0000
_08064EA8: .4byte 0x0000FFFF
_08064EAC: .4byte 0x030044C8
_08064EB0: .4byte 0x06010000
_08064EB4: .4byte 0x080901C0
_08064EB8:
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r7]
	adds r0, #0x82
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08064F48 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #9
	bl sub_08009AB4
	ldr r0, _08064F4C @ =0x080901C0
	ldr r2, [r0, #0x28]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xa
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x84
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B6C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
_08064F04:
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x4c
	adds r0, r0, r1
	str r4, [r0]
	adds r6, #1
	cmp r6, #7
	ble _08064E36
	bl sub_08009DDC
	adds r4, r0, #0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	ldr r0, _08064F50 @ =0x030044C8
	ldr r0, [r0]
	str r4, [r0, #0x6c]
	ldr r1, _08064F54 @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xc4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x4c
	ldr r0, _08064F58 @ =0x00000808
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064F48: .4byte 0x06010000
_08064F4C: .4byte 0x080901C0
_08064F50: .4byte 0x030044C8
_08064F54: .4byte 0x030024E0
_08064F58: .4byte 0x00000808

	thumb_func_start sub_08064F5C
sub_08064F5C: @ 0x08064F5C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08064F98 @ =0x030044C8
_08064F62:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x4c
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08064F7E
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x4c
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_08064F7E:
	adds r5, #1
	cmp r5, #7
	ble _08064F62
	ldr r0, _08064F9C @ =0x030024E0
	adds r2, r0, #0
	adds r2, #0x4a
	movs r1, #0
	strh r1, [r2]
	adds r0, #0x4c
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064F98: .4byte 0x030044C8
_08064F9C: .4byte 0x030024E0

	thumb_func_start sub_08064FA0
sub_08064FA0: @ 0x08064FA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	ldr r7, _08064FE0 @ =0x030044C8
	movs r6, #3
_08064FB2:
	ldr r0, [r7]
	lsls r1, r5, #2
	adds r0, #0x4c
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08064FFC
	cmp r5, r8
	bne _08064FE4
	ldr r0, [r4, #0x20]
	ldrh r1, [r0, #2]
	lsrs r1, r1, #8
	ands r1, r6
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08009A0C
	ldr r0, [r7]
	ldr r1, [r0, #0x6c]
	adds r0, r4, #0
	bl sub_08009B9C
	b _08064FFC
	.align 2, 0
_08064FE0: .4byte 0x030044C8
_08064FE4:
	ldr r0, [r4, #0x20]
	ldrh r1, [r0, #2]
	lsrs r1, r1, #8
	ands r1, r6
	adds r0, r4, #0
	movs r2, #0x40
	bl sub_08009A0C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B9C
_08064FFC:
	adds r5, #1
	cmp r5, #6
	ble _08064FB2
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806500C
sub_0806500C: @ 0x0806500C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r1, _08065048 @ =0x080902CF
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7, #1]
	cmp r0, #0
	bne _08065050
	movs r5, #0
	ldr r4, _0806504C @ =0x030044C8
_0806502E:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r5, #1
	cmp r5, #3
	ble _0806502E
	b _0806510E
	.align 2, 0
_08065048: .4byte 0x080902CF
_0806504C: .4byte 0x030044C8
_08065050:
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _08065098
	ldr r5, _080650E0 @ =0x030044C8
	ldr r0, [r5]
	ldr r4, [r0, #0x14]
	ldr r0, _080650E4 @ =0x080901C0
	ldr r6, [r0, #0x18]
	ldrb r0, [r7]
	adds r0, #1
	movs r1, #0xa
	bl __divsi3
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_08009ACC
	ldr r0, [r5]
	ldr r4, [r0, #0x18]
	ldrb r0, [r7]
	adds r0, #1
	movs r1, #0xa
	bl __modsi3
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_08009ACC
_08065098:
	ldrb r0, [r7, #2]
	cmp r0, #0x60
	bhi _0806510E
	ldr r1, _080650E8 @ =0x0000FFB8
	adds r0, r1, #0
	ldrb r1, [r7, #2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r5, #0
	movs r6, #0
_080650B0:
	ldr r0, _080650E0 @ =0x030044C8
	ldr r0, [r0]
	lsls r1, r5, #2
	adds r0, #0x10
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r5, #2
	bgt _080650EC
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	add r1, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	asrs r2, r6, #0x10
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	b _08065102
	.align 2, 0
_080650E0: .4byte 0x030044C8
_080650E4: .4byte 0x080901C0
_080650E8: .4byte 0x0000FFB8
_080650EC:
	ldrb r0, [r7, #2]
	movs r1, #0xf0
	subs r1, r1, r0
	adds r0, r4, #0
	asrs r2, r6, #0x10
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
_08065102:
	adds r5, #1
	cmp r5, #3
	ble _080650B0
	ldrb r0, [r7, #2]
	adds r0, #8
	strb r0, [r7, #2]
_0806510E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806511C
sub_0806511C: @ 0x0806511C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08065164 @ =0x030044C8
_08065122:
	cmp r5, #0
	beq _0806512A
	cmp r5, #3
	bne _08065170
_0806512A:
	movs r0, #1
	movs r1, #0x41
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r6]
	adds r0, #0x7e
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08065168 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r0, _0806516C @ =0x080901C0
	ldr r2, [r0, #8]
	movs r3, #0xf
	cmp r5, #0
	bne _0806515A
	movs r3, #0xe
_0806515A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
	b _080651A2
	.align 2, 0
_08065164: .4byte 0x030044C8
_08065168: .4byte 0x06010000
_0806516C: .4byte 0x080901C0
_08065170:
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r6]
	adds r0, #0x80
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _080651E0 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #8
	bl sub_08009AB4
	ldr r0, _080651E4 @ =0x080901C0
	ldr r2, [r0, #0x18]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
_080651A2:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x80
	rsbs r2, r2, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r0, #0x10
	adds r0, r0, r1
	str r4, [r0]
	adds r5, #1
	cmp r5, #3
	ble _08065122
	ldr r0, _080651E8 @ =sub_0806500C
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	ldr r1, _080651EC @ =0x030044C8
	ldr r1, [r1]
	adds r1, #0x8a
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080651E0: .4byte 0x06010000
_080651E4: .4byte 0x080901C0
_080651E8: .4byte sub_0806500C
_080651EC: .4byte 0x030044C8

	thumb_func_start sub_080651F0
sub_080651F0: @ 0x080651F0
	push {r4, r5, r6, lr}
	ldr r4, _08065240 @ =0x030044C8
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x8a
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08065214
	adds r0, r1, #0
	bl sub_08007A08
	ldr r0, [r4]
	adds r0, #0x8a
	ldr r1, _08065244 @ =0x0000FFFF
	strh r1, [r0]
_08065214:
	movs r5, #0
	adds r6, r4, #0
_08065218:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08065234
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x10
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_08065234:
	adds r5, #1
	cmp r5, #3
	ble _08065218
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08065240: .4byte 0x030044C8
_08065244: .4byte 0x0000FFFF

	thumb_func_start sub_08065248
sub_08065248: @ 0x08065248
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08065270 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x8a
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r2, #0
	strb r4, [r0]
	movs r1, #1
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065270: .4byte 0x030044C8

	thumb_func_start sub_08065274
sub_08065274: @ 0x08065274
	push {lr}
	ldr r0, _08065290 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x8a
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	pop {r0}
	bx r0
	.align 2, 0
_08065290: .4byte 0x030044C8

	thumb_func_start sub_08065294
sub_08065294: @ 0x08065294
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r1, _08065310 @ =0x080902D3
	mov r0, sp
	movs r2, #7
	bl memcpy
	movs r5, #0
	ldr r7, _08065314 @ =0x030044C8
_080652AC:
	ldr r0, [r7]
	lsls r6, r5, #2
	adds r0, #0x30
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	bne _080652F6
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r7]
	lsls r1, r5, #1
	adds r0, #0x70
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08065318 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r7]
	adds r0, #0x30
	adds r0, r0, r6
	str r4, [r0]
_080652F6:
	adds r5, #1
	cmp r5, #6
	ble _080652AC
	mov r0, r8
	bl sub_08065350
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065310: .4byte 0x080902D3
_08065314: .4byte 0x030044C8
_08065318: .4byte 0x06010000

	thumb_func_start sub_0806531C
sub_0806531C: @ 0x0806531C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0806534C @ =0x030044C8
_08065322:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x30
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806533E
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x30
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806533E:
	adds r5, #1
	cmp r5, #6
	ble _08065322
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806534C: .4byte 0x030044C8

	thumb_func_start sub_08065350
sub_08065350: @ 0x08065350
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r5, #0
_08065358:
	lsls r2, r5, #2
	cmp r5, #6
	bhi _080653C2
	ldr r0, _08065368 @ =_0806536C
	adds r0, r2, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065368: .4byte _0806536C
_0806536C: @ jump table
	.4byte _08065388 @ case 0
	.4byte _0806538E @ case 1
	.4byte _08065396 @ case 2
	.4byte _0806539E @ case 3
	.4byte _080653A4 @ case 4
	.4byte _080653AA @ case 5
	.4byte _080653B0 @ case 6
_08065388:
	ldr r0, [r6]
	lsls r0, r0, #0x1c
	b _080653B4
_0806538E:
	ldr r0, [r6]
	lsls r0, r0, #0x16
	lsrs r4, r0, #0x1a
	b _080653B6
_08065396:
	ldr r0, [r6]
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x1b
	b _080653B6
_0806539E:
	ldr r0, [r6]
	lsls r0, r0, #0xd
	b _080653B4
_080653A4:
	ldr r0, [r6]
	lsls r0, r0, #9
	b _080653B4
_080653AA:
	ldr r0, [r6]
	lsls r0, r0, #5
	b _080653B4
_080653B0:
	ldr r0, [r6]
	lsls r0, r0, #1
_080653B4:
	lsrs r4, r0, #0x1c
_080653B6:
	ldr r0, _080653EC @ =0x08090248
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blo _080653C2
	movs r4, #0
_080653C2:
	ldr r0, _080653F0 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _080653E0
	ldr r0, _080653F4 @ =0x0809022C
	adds r0, r2, r0
	ldr r2, [r0]
	adds r0, r1, #0
	movs r1, #0
	adds r3, r4, #0
	bl sub_08009ACC
_080653E0:
	adds r5, #1
	cmp r5, #6
	ble _08065358
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080653EC: .4byte 0x08090248
_080653F0: .4byte 0x030044C8
_080653F4: .4byte 0x0809022C

	thumb_func_start sub_080653F8
sub_080653F8: @ 0x080653F8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08065438 @ =0x030024E0
	ldrh r2, [r3, #0xe]
	subs r0, r0, r2
	ldrh r2, [r3, #0x16]
	subs r1, r1, r2
	movs r4, #0
	lsls r6, r0, #0x10
	lsls r5, r1, #0x10
_08065412:
	ldr r0, _0806543C @ =0x030044C8
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x30
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806542A
	asrs r1, r6, #0x10
	asrs r2, r5, #0x10
	bl sub_08009A70
_0806542A:
	adds r4, #1
	cmp r4, #6
	ble _08065412
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08065438: .4byte 0x030024E0
_0806543C: .4byte 0x030044C8

	thumb_func_start sub_08065440
sub_08065440: @ 0x08065440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, [sp, #0x24]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsrs r3, r3, #0x12
	lsrs r2, r2, #0x17
	ldr r0, _080654A4 @ =0x0600F000
	adds r2, r2, r0
	adds r5, r3, r2
	lsls r1, r6, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r4, r1, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080654E0
	movs r0, #1
	mov sb, r0
_0806547A:
	ldrb r0, [r7]
	adds r7, #1
	bl sub_080050EC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0x40
	adds r2, r2, r5
	mov r8, r2
	mov r0, sl
	cmp r0, #0
	bne _080654A8
	mov r2, sb
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #2
	bl sub_08004BB8
	b _080654B6
	.align 2, 0
_080654A4: .4byte 0x0600F000
_080654A8:
	mov r0, sb
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004BB8
_080654B6:
	movs r2, #0xe0
	lsls r2, r2, #8
	adds r1, r2, #0
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r5]
	adds r5, #2
	adds r0, r6, #0
	adds r0, #0x20
	ldr r2, _080654F0 @ =0xFFFFE000
	adds r1, r2, #0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x20
	ldrb r0, [r7]
	cmp r0, #0
	bne _0806547A
_080654E0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080654F0: .4byte 0xFFFFE000

	thumb_func_start sub_080654F4
sub_080654F4: @ 0x080654F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r4, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov ip, r6
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	lsrs r3, r3, #0x12
	lsrs r2, r2, #0x17
	ldr r0, _08065544 @ =0x0600F000
	adds r2, r2, r0
	adds r4, r3, r2
	movs r0, #0x40
	adds r0, r0, r4
	mov r8, r0
	ldr r0, _08065548 @ =0x0000FFFF
	cmp r6, r0
	beq _08065578
	lsls r1, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	cmp r7, #0
	bne _0806554C
	movs r0, #1
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #2
	bl sub_08004BB8
	b _0806555C
	.align 2, 0
_08065544: .4byte 0x0600F000
_08065548: .4byte 0x0000FFFF
_0806554C:
	movs r0, #1
	str r0, [sp]
	adds r0, r1, #0
	mov r1, ip
	movs r2, #2
	movs r3, #0
	bl sub_08004BB8
_0806555C:
	movs r2, #0xe0
	lsls r2, r2, #8
	adds r1, r2, #0
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x20
	ldr r2, _08065574 @ =0xFFFFE000
	adds r1, r2, #0
	orrs r0, r1
	b _0806558A
	.align 2, 0
_08065574: .4byte 0xFFFFE000
_08065578:
	movs r5, #0
	cmp r7, #0
	bne _08065580
	ldr r5, _0806559C @ =0x00000113
_08065580:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r5
	strh r0, [r4]
_0806558A:
	mov r1, r8
	strh r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806559C: .4byte 0x00000113

	thumb_func_start sub_080655A0
sub_080655A0: @ 0x080655A0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x18
	movs r6, #0
	cmp r3, #0
	bne _080655B8
	ldr r6, _080655E8 @ =0x00000113
_080655B8:
	lsls r0, r0, #6
	lsls r1, r5, #1
	ldr r2, _080655EC @ =0x0600F000
	adds r1, r1, r2
	adds r1, r0, r1
	cmp r4, #0
	beq _080655E2
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	adds r3, r6, #0
	orrs r3, r0
	adds r2, r4, #0
_080655D2:
	strh r3, [r1]
	adds r0, r1, #0
	adds r0, #0x40
	adds r1, #2
	strh r3, [r0]
	subs r2, #1
	cmp r2, #0
	bne _080655D2
_080655E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080655E8: .4byte 0x00000113
_080655EC: .4byte 0x0600F000

	thumb_func_start sub_080655F0
sub_080655F0: @ 0x080655F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0xc]
	ldr r0, _080656B4 @ =0x030044C8
	ldr r0, [r0]
	adds r0, #0x8c
	mov r8, r0
	movs r5, #0
	movs r0, #0
	str r0, [sp, #0x10]
	bl sub_080647C0
	bl sub_080648F8
	movs r0, #1
	bl sub_080648AC
	movs r7, #0
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08065656
_08065642:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x1f
	bhi _08065656
	mov r2, r8
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _08065642
_08065656:
	mov r3, sb
	adds r1, r3, r7
	lsls r1, r1, #3
	ldr r2, _080656B8 @ =0x030024E0
	ldrh r0, [r2, #0xe]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, [sp, #8]
	adds r4, #1
	lsls r0, r4, #3
	ldrh r2, [r2, #0x16]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	orrs r6, r0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r0, #1
	bl sub_08064B54
	ldr r0, _080656B4 @ =0x030044C8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	movs r1, #0
	str r4, [sp, #0x14]
	cmp r7, sl
	bhs _08065690
	movs r1, #1
_08065690:
	bl sub_08009A34
	movs r0, #2
	bl ProcSleep_08002B98
_0806569A:
	ldr r0, _080656BC @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080656F0
	cmp r7, #0
	bne _080656C0
	movs r0, #0xd2
	bl m4aSongNumStart
	b _080656F0
	.align 2, 0
_080656B4: .4byte 0x030044C8
_080656B8: .4byte 0x030024E0
_080656BC: .4byte 0x030024B0
_080656C0:
	movs r0, #0xce
	bl m4aSongNumStart
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r1, r0, r7
	movs r0, #0
	strb r0, [r1]
	ldr r2, [sp, #4]
	adds r1, r2, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sb
	adds r2, r3, r7
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [sp, #0xc]
	str r0, [sp]
	ldr r0, _0806570C @ =0x0000FFFF
	ldr r3, [sp, #8]
	bl sub_080654F4
_080656F0:
	ldr r0, _08065710 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065770
	lsls r1, r5, #0x10
	ldr r0, _08065714 @ =0x03160000
	cmp r1, r0
	bne _08065718
	cmp r7, #0
	beq _0806570A
	b _08065968
_0806570A:
	b _0806571C
	.align 2, 0
_0806570C: .4byte 0x0000FFFF
_08065710: .4byte 0x030024B0
_08065714: .4byte 0x03160000
_08065718:
	cmp r7, sl
	blo _08065724
_0806571C:
	movs r0, #0xd2
	bl m4aSongNumStart
	b _08065770
_08065724:
	movs r0, #0xcd
	bl m4aSongNumStart
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	ldr r2, _080657D0 @ =0x0809024F
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r4, [r1]
	adds r0, r4, #0
	bl sub_080050EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #4]
	adds r1, r2, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sb
	adds r2, r3, r7
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, [sp, #0xc]
	str r3, [sp]
	ldr r3, [sp, #8]
	bl sub_080654F4
	adds r1, r7, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r1, r8
	strb r4, [r1]
_08065770:
	ldr r2, _080657D4 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080657E4
	movs r0, #0xcb
	bl m4aSongNumStart
	ldr r0, _080657D8 @ =0xFFFFFF00
	ands r5, r0
	movs r0, #0x16
	orrs r5, r0
	ldr r0, _080657DC @ =0xFFFF00FF
	ands r5, r0
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r5, r0
	lsls r4, r5, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #5
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r4, r0
	adds r4, #1
	lsls r4, r4, #3
	adds r4, #4
	lsls r4, r4, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x13
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r6, r4, #0x10
	orrs r6, r0
	ldr r0, _080657E0 @ =0x030044C8
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	bl sub_08064AC8
	b _08065880
	.align 2, 0
_080657D0: .4byte 0x0809024F
_080657D4: .4byte 0x030024B0
_080657D8: .4byte 0xFFFFFF00
_080657DC: .4byte 0xFFFF00FF
_080657E0: .4byte 0x030044C8
_080657E4:
	ldrh r1, [r2, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08065810
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x10
	ldr r2, _0806580C @ =0xFFFF00FF
	ands r5, r2
	orrs r5, r1
	cmp r0, #0
	bge _08065880
	ands r5, r2
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r5, r0
	b _08065880
	.align 2, 0
_0806580C: .4byte 0xFFFF00FF
_08065810:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08065834
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x10
	ldr r2, _08065830 @ =0xFFFF00FF
	ands r5, r2
	orrs r5, r1
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08065880
	b _0806587E
	.align 2, 0
_08065830: .4byte 0xFFFF00FF
_08065834:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08065858
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _08065854 @ =0xFFFFFF00
	ands r5, r2
	orrs r5, r1
	cmp r0, #0
	bge _08065880
	ands r5, r2
	movs r0, #0x17
	orrs r5, r0
	b _08065880
	.align 2, 0
_08065854: .4byte 0xFFFFFF00
_08065858:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08065880
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	movs r3, #0x18
	cmp r0, #3
	bne _0806586C
	movs r3, #0x17
_0806586C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _080658C0 @ =0xFFFFFF00
	ands r5, r2
	orrs r5, r1
	asrs r0, r0, #0x18
	cmp r0, r3
	blt _08065880
_0806587E:
	ands r5, r2
_08065880:
	ldr r3, _080658C4 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r1, r5, #0x10
	ldr r0, _080658C8 @ =0x03170000
	cmp r1, r0
	bne _08065894
	ldr r0, _080658C0 @ =0xFFFFFF00
	ands r5, r0
	movs r0, #0x16
	orrs r5, r0
_08065894:
	ldr r0, [sp, #0x10]
	ands r0, r2
	adds r4, r5, #0
	ands r4, r2
	cmp r0, r4
	beq _0806591E
	movs r0, #0xcb
	bl m4aSongNumStart
	ldr r0, _080658CC @ =0x00000316
	cmp r4, r0
	bne _080658D4
	ldr r0, _080658D0 @ =0x030044C8
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	movs r1, #0
	bl sub_08009A34
	movs r0, #1
	bl sub_08064A50
	b _080658E6
	.align 2, 0
_080658C0: .4byte 0xFFFFFF00
_080658C4: .4byte 0x0000FFFF
_080658C8: .4byte 0x03170000
_080658CC: .4byte 0x00000316
_080658D0: .4byte 0x030044C8
_080658D4:
	ldr r0, _08065960 @ =0x030044C8
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	movs r1, #1
	bl sub_08009A34
	movs r0, #0
	bl sub_08064A50
_080658E6:
	lsls r4, r5, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #5
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r4, r0
	adds r4, #1
	lsls r4, r4, #0x13
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x13
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r6, r4, #0x10
	orrs r6, r0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r0, #0
	bl sub_08064B54
	bl sub_08064AA0
	str r5, [sp, #0x10]
_0806591E:
	mov r3, sb
	adds r2, r3, r7
	lsls r2, r2, #3
	ldr r3, _08065964 @ =0x030024E0
	ldrh r0, [r3, #0xe]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, [sp, #0x14]
	lsls r1, r0, #3
	ldrh r0, [r3, #0x16]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r2, #0x10
	orrs r6, r1
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	movs r0, #1
	bl sub_08064B54
	ldr r0, _08065960 @ =0x030044C8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	movs r1, #0
	cmp r7, sl
	bhs _08065954
	movs r1, #1
_08065954:
	bl sub_08009A34
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806569A
	.align 2, 0
_08065960: .4byte 0x030044C8
_08065964: .4byte 0x030024E0
_08065968:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_080648AC
	bl sub_080649BC
	bl sub_08064874
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806598C
sub_0806598C: @ 0x0806598C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x20]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r8, r4
	ldr r1, _080659C4 @ =0x0807EEAC
	lsrs r0, r0, #0x16
	subs r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006828
	adds r4, r0, #0
	movs r7, #0
	b _08065A1C
	.align 2, 0
_080659C4: .4byte 0x0807EEAC
_080659C8:
	ldrb r3, [r4]
	ldrb r1, [r4, #1]
	cmp r3, #0x10
	beq _080659D4
	cmp r3, #0x20
	bne _080659D8
_080659D4:
	movs r3, #0x10
	b _080659F8
_080659D8:
	adds r0, r1, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080659F0
	adds r0, r3, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, #1
_080659F0:
	adds r0, r3, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080659F8:
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r5, #0
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r0, r8
	str r0, [sp]
	adds r0, r3, #0
	mov r3, sb
	bl sub_080654F4
	adds r4, #1
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08065A1C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080659C8
	cmp r7, #0xb
	bhi _08065A4C
_08065A26:
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r5, #0
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r0, r8
	str r0, [sp]
	ldr r0, _08065A5C @ =0x0000FFFF
	mov r3, sb
	bl sub_080654F4
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xb
	bls _08065A26
_08065A4C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065A5C: .4byte 0x0000FFFF

	thumb_func_start sub_08065A60
sub_08065A60: @ 0x08065A60
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r0, #0
	bl sub_08007668
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _08065A84
	movs r0, #0
	movs r1, #1
	bl sub_08007644
	movs r4, #1
_08065A84:
	ldr r0, _08065B20 @ =0x030024E0
	ldrh r1, [r0, #0xe]
	rsbs r1, r1, #0
	adds r1, #0x68
	lsls r1, r1, #0x10
	ldrh r0, [r0, #0x16]
	rsbs r0, r0, #0
	adds r0, #0x38
	lsls r0, r0, #0x10
	lsrs r5, r1, #0x10
	orrs r5, r0
	movs r1, #0xea
	lsls r1, r1, #1
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0xb
	movs r3, #6
	bl sub_0806598C
	bl sub_08064B9C
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r1, r5, #0x10
	movs r2, #0xc
	bl sub_08064C44
	cmp r4, #1
	bne _08065AC8
	movs r0, #0
	movs r1, #0
	bl sub_08064CA4
_08065AC8:
	cmp r4, #0xc
	bne _08065AD4
	movs r0, #1
	movs r1, #0
	bl sub_08064CA4
_08065AD4:
	movs r0, #2
	bl ProcSleep_08002B98
	ldr r5, _08065B24 @ =0x030024B0
_08065ADC:
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08065B28
	movs r0, #0xce
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08007668
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _08065B04
	movs r4, #1
_08065B04:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xea
	lsls r1, r1, #1
	movs r2, #0xb
	movs r3, #6
	bl sub_0806598C
	movs r0, #1
	bl ProcSleep_08002B98
	b _08065BD4
	.align 2, 0
_08065B20: .4byte 0x030024E0
_08065B24: .4byte 0x030024B0
_08065B28:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065B40
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	adds r1, r4, #0
	bl sub_08007644
	b _08065BD4
_08065B40:
	ldrh r1, [r5, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08065B58
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08065B6C
	movs r4, #1
	b _08065B6C
_08065B58:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08065B6C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xc
	bls _08065B6C
	movs r4, #0xc
_08065B6C:
	cmp r6, r4
	beq _08065BCC
	movs r0, #0xca
	bl m4aSongNumStart
	cmp r4, #1
	bne _08065B8C
	movs r0, #0
	movs r1, #0
	bl sub_08064CA4
	movs r0, #1
	movs r1, #1
	bl sub_08064CA4
	b _08065BB2
_08065B8C:
	cmp r4, #0xc
	bne _08065BA2
	movs r0, #0
	movs r1, #1
	bl sub_08064CA4
	movs r0, #1
	movs r1, #0
	bl sub_08064CA4
	b _08065BB2
_08065BA2:
	movs r0, #0
	movs r1, #1
	bl sub_08064CA4
	movs r0, #1
	movs r1, #1
	bl sub_08064CA4
_08065BB2:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xea
	lsls r1, r1, #1
	movs r2, #0xb
	movs r3, #6
	bl sub_0806598C
	movs r0, #1
	bl ProcSleep_08002B98
	adds r6, r4, #0
_08065BCC:
	movs r0, #1
	bl ProcSleep_08002B98
	b _08065ADC
_08065BD4:
	bl sub_08064C14
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08065BE0
sub_08065BE0: @ 0x08065BE0
	push {lr}
	sub sp, #8
	ldr r0, _08065BFC @ =0x080902DC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	mov r1, sp
	bl sub_0800768C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08065BFC: .4byte 0x080902DC

	thumb_func_start sub_08065C00
sub_08065C00: @ 0x08065C00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r0, #0
	mov r8, r0
	movs r5, #0
	mov r1, sp
	bl sub_080076B0
	mov r0, sp
	bl sub_08065294
	movs r0, #0x28
	movs r1, #0x40
	bl sub_080653F8
	bl sub_08064E08
	movs r0, #0
	bl sub_08064FA0
	bl sub_08064B9C
	bl sub_08064CD0
	ldr r0, _08065C64 @ =0x030044C8
	ldr r0, [r0]
	ldr r1, [r0, #0x4c]
	ldrh r0, [r1, #6]
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #8]
	adds r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	bl sub_08064C44
	movs r0, #0x78
	movs r1, #0x80
	movs r2, #0x40
	bl sub_08064DAC
	movs r0, #2
	bl ProcSleep_08002B98
	b _08066076
	.align 2, 0
_08065C64: .4byte 0x030044C8
_08065C68:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065C80
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	mov r1, sp
	bl sub_0800768C
	b _08066098
_08065C80:
	ldrh r1, [r2, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08065C8C
	b _08065E20
_08065C8C:
	ldr r1, _08065CA8 @ =0x08090248
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, r1
	ldrb r5, [r1]
	cmp r0, #6
	bls _08065C9E
	b _08066062
_08065C9E:
	lsls r0, r0, #2
	ldr r1, _08065CAC @ =_08065CB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065CA8: .4byte 0x08090248
_08065CAC: .4byte _08065CB0
_08065CB0: @ jump table
	.4byte _08065CCC @ case 0
	.4byte _08065CFE @ case 1
	.4byte _08065D34 @ case 2
	.4byte _08065D64 @ case 3
	.4byte _08065D8C @ case 4
	.4byte _08065DBC @ case 5
	.4byte _08065DF0 @ case 6
_08065CCC:
	ldr r1, [sp]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	adds r2, r1, #0
	ands r2, r0
	mov r0, sp
	ldrb r0, [r0]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r3, r4, #0
	ands r3, r0
	orrs r3, r2
	mov r0, sp
	strb r3, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, r5
	bhs _08065CF6
	b _08066062
_08065CF6:
	ands r3, r4
_08065CF8:
	mov r0, sp
	strb r3, [r0]
	b _08066062
_08065CFE:
	ldr r1, [sp]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1a
	adds r1, #1
	movs r0, #0x3f
	adds r2, r1, #0
	ands r2, r0
	lsls r2, r2, #4
	mov r0, sp
	ldrh r0, [r0]
	ldr r4, _08065D30 @ =0xFFFFFC0F
	adds r3, r4, #0
	ands r3, r0
	orrs r3, r2
	mov r0, sp
	strh r3, [r0]
	movs r0, #0x3f
	ands r1, r0
	cmp r1, r5
	bhs _08065D28
	b _08066062
_08065D28:
	ands r3, r4
_08065D2A:
	mov r0, sp
	strh r3, [r0]
	b _08066062
	.align 2, 0
_08065D30: .4byte 0xFFFFFC0F
_08065D34:
	ldr r1, [sp]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	adds r1, #1
	mov r4, sp
	movs r2, #0x1f
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	ldrb r2, [r4, #1]
	movs r6, #0x7d
	rsbs r6, r6, #0
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	strb r3, [r4, #1]
	movs r0, #0x1f
	ands r1, r0
	cmp r1, r5
	bhs _08065D5E
	b _08066062
_08065D5E:
	ands r3, r6
	strb r3, [r4, #1]
	b _08066062
_08065D64:
	ldr r2, [sp]
	lsls r1, r2, #0xd
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #0xf
	ldr r4, _08065D88 @ =0xFFF87FFF
	adds r3, r4, #0
	ands r3, r2
	orrs r3, r0
	str r3, [sp]
	cmp r1, r5
	bhs _08065D82
	b _08066062
_08065D82:
	ands r3, r4
	str r3, [sp]
	b _08066062
	.align 2, 0
_08065D88: .4byte 0xFFF87FFF
_08065D8C:
	ldr r1, [sp]
	lsls r1, r1, #9
	lsrs r1, r1, #0x1c
	adds r1, #1
	mov r4, sp
	movs r2, #0xf
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #3
	ldrb r2, [r4, #2]
	movs r6, #0x79
	rsbs r6, r6, #0
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	strb r3, [r4, #2]
	movs r0, #0xf
	ands r1, r0
	cmp r1, r5
	bhs _08065DB6
	b _08066062
_08065DB6:
	ands r3, r6
	strb r3, [r4, #2]
	b _08066062
_08065DBC:
	ldr r1, [sp]
	lsls r1, r1, #5
	lsrs r1, r1, #0x1c
	adds r1, #1
	mov r4, sp
	movs r2, #0xf
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #7
	ldrh r2, [r4, #2]
	ldr r6, _08065DEC @ =0xFFFFF87F
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	strh r3, [r4, #2]
	movs r0, #0xf
	ands r1, r0
	cmp r1, r5
	bhs _08065DE4
	b _08066062
_08065DE4:
	ands r3, r6
	strh r3, [r4, #2]
	b _08066062
	.align 2, 0
_08065DEC: .4byte 0xFFFFF87F
_08065DF0:
	ldr r1, [sp]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1c
	adds r1, #1
	mov r4, sp
	movs r2, #0xf
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #3
	ldrb r2, [r4, #3]
	movs r6, #0x79
	rsbs r6, r6, #0
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	strb r3, [r4, #3]
	movs r0, #0xf
	ands r1, r0
	cmp r1, r5
	bhs _08065E1A
	b _08066062
_08065E1A:
	ands r3, r6
	strb r3, [r4, #3]
	b _08066062
_08065E20:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08065E2A
	b _08065FEE
_08065E2A:
	ldr r1, _08065E48 @ =0x08090248
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, r1
	ldrb r5, [r1]
	cmp r0, #6
	bls _08065E3C
	b _08066062
_08065E3C:
	lsls r0, r0, #2
	ldr r1, _08065E4C @ =_08065E50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065E48: .4byte 0x08090248
_08065E4C: .4byte _08065E50
_08065E50: @ jump table
	.4byte _08065E6C @ case 0
	.4byte _08065EA0 @ case 1
	.4byte _08065EDC @ case 2
	.4byte _08065F14 @ case 3
	.4byte _08065F48 @ case 4
	.4byte _08065F7E @ case 5
	.4byte _08065FB8 @ case 6
_08065E6C:
	ldr r1, [sp]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	subs r1, #1
	movs r6, #0xf
	adds r2, r1, #0
	ands r2, r6
	mov r0, sp
	ldrb r0, [r0]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r3, r4, #0
	ands r3, r0
	orrs r3, r2
	mov r0, sp
	strb r3, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, r5
	bhs _08065E96
	b _08066062
_08065E96:
	subs r0, r5, #1
	ands r0, r6
	ands r3, r4
	orrs r3, r0
	b _08065CF8
_08065EA0:
	ldr r1, [sp]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1a
	subs r1, #1
	movs r6, #0x3f
	adds r2, r1, #0
	ands r2, r6
	lsls r2, r2, #4
	mov r0, sp
	ldrh r0, [r0]
	ldr r4, _08065ED8 @ =0xFFFFFC0F
	adds r3, r4, #0
	ands r3, r0
	orrs r3, r2
	mov r0, sp
	strh r3, [r0]
	movs r0, #0x3f
	ands r1, r0
	cmp r1, r5
	bhs _08065ECA
	b _08066062
_08065ECA:
	subs r0, r5, #1
	ands r0, r6
	lsls r0, r0, #4
	ands r3, r4
	orrs r3, r0
	b _08065D2A
	.align 2, 0
_08065ED8: .4byte 0xFFFFFC0F
_08065EDC:
	ldr r1, [sp]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	subs r1, #1
	mov r4, sp
	movs r7, #0x1f
	adds r0, r1, #0
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r4, #1]
	movs r6, #0x7d
	rsbs r6, r6, #0
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	strb r3, [r4, #1]
	movs r0, #0x1f
	ands r1, r0
	cmp r1, r5
	bhs _08065F06
	b _08066062
_08065F06:
	subs r0, r5, #1
	ands r0, r7
	lsls r0, r0, #2
	ands r3, r6
	orrs r3, r0
	strb r3, [r4, #1]
	b _08066062
_08065F14:
	ldr r0, [sp]
	lsls r1, r0, #0xd
	lsrs r1, r1, #0x1c
	subs r1, #1
	movs r4, #0xf
	ands r1, r4
	lsls r2, r1, #0xf
	ldr r6, _08065F44 @ =0xFFF87FFF
	adds r3, r6, #0
	ands r3, r0
	orrs r3, r2
	str r3, [sp]
	cmp r1, r5
	bhs _08065F32
	b _08066062
_08065F32:
	subs r1, r5, #1
	ands r1, r4
	lsls r1, r1, #0xf
	adds r0, r6, #0
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	b _08066062
	.align 2, 0
_08065F44: .4byte 0xFFF87FFF
_08065F48:
	ldr r1, [sp]
	lsls r1, r1, #9
	lsrs r1, r1, #0x1c
	subs r1, #1
	mov r4, sp
	movs r7, #0xf
	adds r0, r1, #0
	ands r0, r7
	lsls r0, r0, #3
	ldrb r2, [r4, #2]
	movs r6, #0x79
	rsbs r6, r6, #0
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	strb r3, [r4, #2]
	movs r0, #0xf
	ands r1, r0
	cmp r1, r5
	blo _08066062
	subs r0, r5, #1
	ands r0, r7
	lsls r0, r0, #3
	ands r3, r6
	orrs r3, r0
	strb r3, [r4, #2]
	b _08066062
_08065F7E:
	ldr r1, [sp]
	lsls r1, r1, #5
	lsrs r1, r1, #0x1c
	subs r1, #1
	mov r4, sp
	movs r7, #0xf
	adds r0, r1, #0
	ands r0, r7
	lsls r0, r0, #7
	ldrh r2, [r4, #2]
	ldr r6, _08065FB4 @ =0xFFFFF87F
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	strh r3, [r4, #2]
	movs r0, #0xf
	ands r1, r0
	cmp r1, r5
	blo _08066062
	subs r0, r5, #1
	ands r0, r7
	lsls r0, r0, #7
	ands r3, r6
	orrs r3, r0
	strh r3, [r4, #2]
	b _08066062
	.align 2, 0
_08065FB4: .4byte 0xFFFFF87F
_08065FB8:
	ldr r1, [sp]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1c
	subs r1, #1
	mov r4, sp
	movs r7, #0xf
	adds r0, r1, #0
	ands r0, r7
	lsls r0, r0, #3
	ldrb r2, [r4, #3]
	movs r6, #0x79
	rsbs r6, r6, #0
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	strb r3, [r4, #3]
	movs r0, #0xf
	ands r1, r0
	cmp r1, r5
	blo _08066062
	subs r0, r5, #1
	ands r0, r7
	lsls r0, r0, #3
	ands r3, r6
	orrs r3, r0
	strb r3, [r4, #3]
	b _08066062
_08065FEE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806600C
	mov r1, r8
	lsls r0, r1, #0x18
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r1, r0, #0x18
	mov r8, r1
	cmp r0, #0
	bge _0806602C
	movs r2, #6
	b _0806602A
_0806600C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806605E
	mov r1, r8
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r1, r0, #0x18
	mov r8, r1
	asrs r0, r0, #0x18
	cmp r0, #6
	ble _0806602C
	movs r2, #0
_0806602A:
	mov r8, r2
_0806602C:
	movs r0, #0xca
	bl m4aSongNumStart
	mov r0, r8
	lsls r4, r0, #0x18
	lsrs r0, r4, #0x18
	bl sub_08064FA0
	ldr r0, _080660B0 @ =0x030044C8
	ldr r0, [r0]
	asrs r4, r4, #0x16
	adds r0, #0x4c
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #8]
	adds r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	bl sub_08064C44
_0806605E:
	cmp r5, #0
	beq _08066070
_08066062:
	movs r0, #0xcb
	bl m4aSongNumStart
	mov r0, sp
	bl sub_08065350
	movs r5, #0
_08066070:
	movs r0, #1
	bl ProcSleep_08002B98
_08066076:
	ldr r2, _080660B4 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08066084
	b _08065C68
_08066084:
	movs r0, #0xce
	bl m4aSongNumStart
	movs r0, #0
	mov r1, sp
	bl sub_080076B0
	mov r0, sp
	bl sub_08065350
_08066098:
	bl sub_08064C14
	bl sub_08064D48
	bl sub_08064F5C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080660B0: .4byte 0x030044C8
_080660B4: .4byte 0x030024B0

	thumb_func_start sub_080660B8
sub_080660B8: @ 0x080660B8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r0, #0
	ldr r2, _08066108 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r0, r3, #0
	movs r5, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0806610C @ =0x00009C05
	adds r0, r1, #0
	cmp r4, #0
	bne _080660DE
	ldr r1, _08066110 @ =0x00005C05
	adds r0, r1, #0
_080660DE:
	strh r0, [r2, #4]
	ldr r1, _08066114 @ =0x00009E02
	adds r0, r1, #0
	cmp r4, #0
	bne _080660EC
	ldr r1, _08066118 @ =0x00005E02
	adds r0, r1, #0
_080660EC:
	strh r0, [r2, #6]
	ldr r0, _0806611C @ =0x00001B03
	strh r0, [r2, #8]
	strh r3, [r2, #0x12]
	strh r3, [r2, #0xa]
	strh r3, [r2, #0x14]
	strh r3, [r2, #0xc]
	strh r3, [r2, #0x16]
	strh r3, [r2, #0xe]
	strh r3, [r2, #0x18]
	strh r3, [r2, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066108: .4byte 0x030024E0
_0806610C: .4byte 0x00009C05
_08066110: .4byte 0x00005C05
_08066114: .4byte 0x00009E02
_08066118: .4byte 0x00005E02
_0806611C: .4byte 0x00001B03

	thumb_func_start sub_08066120
sub_08066120: @ 0x08066120
	push {r4, lr}
	sub sp, #0xc
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1a
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #3
	bl sub_08005A88
	ldr r4, _080661A0 @ =0x030044C8
	movs r0, #0xb0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	add r2, sp, #4
	movs r0, #0
	strh r0, [r2]
	ldr r2, _080661A4 @ =0x01000058
	add r0, sp, #4
	bl CpuSet
	movs r0, #0xa0
	lsls r0, r0, #3
	bl sub_08007CE8
	adds r1, r0, #0
	ldr r0, [r4]
	adds r0, #0xac
	str r1, [r0]
	movs r0, #0
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r2, _080661A8 @ =0x01000140
	bl CpuFastSet
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, _080661AC @ =0x0000FFFF
	strh r0, [r2]
	adds r1, #0x8a
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080661A0: .4byte 0x030044C8
_080661A4: .4byte 0x01000058
_080661A8: .4byte 0x01000140
_080661AC: .4byte 0x0000FFFF

	thumb_func_start sub_080661B0
sub_080661B0: @ 0x080661B0
	push {r4, lr}
	ldr r4, _080661DC @ =0x030044C8
	ldr r0, [r4]
	cmp r0, #0
	beq _080661CC
	adds r0, #0xac
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_080661CC:
	bl sub_0800580C
	bl sub_08003FE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080661DC: .4byte 0x030044C8

	thumb_func_start sub_080661E0
sub_080661E0: @ 0x080661E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r1, _080662EC @ =0x080902E4
	mov r0, sp
	movs r2, #6
	bl memcpy
	add r5, sp, #8
	ldr r1, _080662F0 @ =0x080902EA
	adds r0, r5, #0
	movs r2, #6
	bl memcpy
	add r4, sp, #0x10
	ldr r1, _080662F4 @ =0x080902F0
	adds r0, r4, #0
	movs r2, #0xa
	bl memcpy
	movs r6, #0
	mov r8, r4
	mov r7, sp
	ldr r4, _080662F8 @ =0x0809019C
_08066216:
	ldr r0, [r4]
	ldrh r1, [r5]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl LoadPalette_08008308
	ldr r0, [r4, #4]
	ldrh r1, [r7]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl DecompressData_08008374
	cmp r6, #2
	bne _08066242
	ldr r0, _080662FC @ =0x0811ECE8
	ldr r1, _08066300 @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
_08066242:
	adds r7, #2
	adds r5, #2
	adds r4, #0xc
	adds r6, #1
	cmp r6, #2
	ble _08066216
	movs r6, #0
	ldr r0, _08066304 @ =0x080901C0
	mov sl, r0
	ldr r1, _08066308 @ =0x030044C8
	mov sb, r1
	mov r7, r8
	mov r8, sl
_0806625C:
	lsls r0, r6, #4
	mov r1, sl
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	mov r2, sb
	ldr r1, [r2]
	lsls r4, r6, #1
	adds r1, #0x7e
	adds r1, r1, r4
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r7]
	ldr r2, _0806630C @ =0x05000200
	adds r1, r1, r2
	bl LoadPalette_08008308
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x7e
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08066310 @ =0x06010000
	adds r1, r1, r2
	adds r0, r5, #0
	bl DecompressData_08008374
	adds r7, #2
	movs r0, #0x10
	add r8, r0
	adds r6, #1
	cmp r6, #4
	ble _0806625C
	ldr r0, _08066314 @ =0x0811F0B0
	ldr r1, _08066318 @ =0x05000280
	bl LoadPalette_08008308
	movs r6, #0
	ldr r5, _0806631C @ =0x08090210
_080662B4:
	ldm r5!, {r4}
	adds r0, r4, #0
	bl sub_08006C14
	ldr r1, _08066308 @ =0x030044C8
	ldr r1, [r1]
	lsls r2, r6, #1
	adds r1, #0x70
	adds r1, r1, r2
	strh r0, [r1]
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r2, _08066310 @ =0x06010000
	adds r1, r1, r2
	adds r0, r4, #0
	bl DecompressData_08008374
	adds r6, #1
	cmp r6, #6
	ble _080662B4
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080662EC: .4byte 0x080902E4
_080662F0: .4byte 0x080902EA
_080662F4: .4byte 0x080902F0
_080662F8: .4byte 0x0809019C
_080662FC: .4byte 0x0811ECE8
_08066300: .4byte 0x0600D800
_08066304: .4byte 0x080901C0
_08066308: .4byte 0x030044C8
_0806630C: .4byte 0x05000200
_08066310: .4byte 0x06010000
_08066314: .4byte 0x0811F0B0
_08066318: .4byte 0x05000280
_0806631C: .4byte 0x08090210

	thumb_func_start sub_08066320
sub_08066320: @ 0x08066320
	push {r4, r5, lr}
	ldr r0, _0806634C @ =0x080901C0
	adds r5, r0, #4
	movs r4, #4
_08066328:
	ldr r0, [r5]
	bl sub_08006CA0
	adds r5, #0x10
	subs r4, #1
	cmp r4, #0
	bge _08066328
	ldr r5, _08066350 @ =0x08090210
	movs r4, #6
_0806633A:
	ldm r5!, {r0}
	bl sub_08006CA0
	subs r4, #1
	cmp r4, #0
	bge _0806633A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806634C: .4byte 0x080901C0
_08066350: .4byte 0x08090210

	thumb_func_start sub_08066354
sub_08066354: @ 0x08066354
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _08066470 @ =0x080902FC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, _08066474 @ =0x08090304
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _08066478 @ =0x061B0402
	str r0, [sp, #8]
	movs r0, #0x18
	movs r1, #0x20
	movs r2, #0x3c
	movs r3, #1
	bl sub_08064314
	movs r0, #1
	bl sub_08005A60
	movs r5, #0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x1c]
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x20]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x24]
	ldr r0, _0806647C @ =0x030044C8
	mov sl, r0
	movs r1, #0xc0
	lsls r1, r1, #1
	mov sb, r1
	movs r2, #1
	mov r8, r2
_080663AC:
	movs r0, #0
	str r0, [sp, #4]
	mov r0, sl
	ldr r1, [r0]
	adds r1, #0x8c
	add r0, sp, #4
	ldr r2, _08066480 @ =0x05000008
	bl CpuSet
	lsls r4, r5, #0x18
	lsrs r0, r4, #0x18
	bl sub_080076F8
	mov r2, sl
	ldr r1, [r2]
	adds r1, #0x8c
	movs r2, #0x10
	bl CpuSet
	adds r6, r4, #0
	lsls r4, r5, #2
	adds r7, r5, #1
_080663D8:
	movs r0, #2
	movs r1, #0
	bl sub_080044C0
	ldr r0, [sp, #0x1c]
	movs r1, #0
	bl sub_080059FC
	ldr r1, [sp, #0x20]
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_080062D0
	ldr r5, _0806647C @ =0x030044C8
	ldr r0, [r5]
	adds r0, #0x8c
	mov r2, r8
	str r2, [sp]
	mov r1, sb
	movs r2, #2
	movs r3, #9
	bl sub_08065440
	mov r0, r8
	str r0, [sp]
	mov r0, sb
	movs r1, #2
	movs r2, #9
	movs r3, #0x1a
	bl sub_080655F0
	bl sub_08005A2C
	bl sub_08004504
	movs r0, #0x23
	bl sub_080059E4
	ldr r1, [sp, #0x24]
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_080062D0
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080663D8
	lsrs r0, r6, #0x18
	ldr r1, [r5]
	adds r1, #0x8c
	bl sub_080076D4
	movs r0, #2
	movs r1, #9
	movs r2, #0x1a
	movs r3, #1
	bl sub_080655A0
	adds r5, r7, #0
	cmp r5, #1
	ble _080663AC
	movs r0, #1
	bl sub_08005A74
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066470: .4byte 0x080902FC
_08066474: .4byte 0x08090304
_08066478: .4byte 0x061B0402
_0806647C: .4byte 0x030044C8
_08066480: .4byte 0x05000008

	thumb_func_start sub_08066484
sub_08066484: @ 0x08066484
	push {r4, r5, r6, lr}
	sub sp, #0x14
	movs r6, #0
	bl sub_0800734C
	str r6, [sp, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08066764 @ =0x01006000
	add r0, sp, #4
	bl CpuFastSet
	movs r0, #1
	bl sub_080660B8
	bl sub_08066120
	bl sub_080661E0
	ldr r1, _08066768 @ =0xFFFFFF00
	movs r0, #0x18
	bl sub_080646CC
	bl sub_080646B0
	movs r0, #3
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0806676C @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	bl sub_08064418
	movs r0, #0x23
	bl sub_080059E4
	movs r0, #0xd8
	lsls r0, r0, #0xe
	bl sub_080062D0
	ldr r0, _08066770 @ =0x00360001
	bl sub_080062D0
	ldr r0, _08066774 @ =0x00360002
	bl sub_080062D0
	ldr r0, _08066778 @ =0x00360004
	bl sub_080062D0
	ldr r0, _0806677C @ =0x00360005
	bl sub_080062D0
	bl sub_08005A2C
	movs r0, #0x18
	movs r1, #0x10
	movs r2, #0x20
	bl sub_080646E4
_0806650C:
	movs r0, #0x60
	movs r1, #0x20
	movs r2, #0x1e
	movs r3, #1
	bl sub_08064314
	cmp r6, #0
	bne _0806656E
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _08066780 @ =0x00360006
	bl sub_080062D0
_08066528:
	movs r5, #0
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r4, _08066784 @ =0x030044C8
	ldr r1, [r4]
	adds r1, #0x8c
	ldr r2, _08066788 @ =0x05000008
	bl CpuSet
	movs r0, #0
	bl sub_0800759C
	ldr r1, [r4]
	adds r1, #0x8c
	movs r2, #6
	bl CpuSet
	bl sub_08005A2C
	movs r0, #1
	bl ProcSleep_08002B98
	movs r0, #0xc0
	lsls r0, r0, #1
	str r5, [sp]
	movs r1, #0xb
	movs r2, #2
	movs r3, #0xa
	bl sub_080655F0
	ldr r1, [r4]
	adds r1, #0x8c
	movs r0, #0
	bl sub_08007578
_0806656E:
	movs r0, #0x23
	bl sub_080059E4
	movs r0, #0
	bl sub_0800759C
	adds r1, r0, #0
	movs r0, #0
	bl sub_08005BE0
	ldr r0, _0806678C @ =0x00360007
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08066528
	bl sub_08005A2C
	movs r0, #0x60
	movs r1, #0x40
	movs r2, #0x1e
	movs r3, #1
	bl sub_08064314
	movs r0, #0x23
	bl sub_080059E4
	cmp r6, #0
	bne _080665B6
_080665AC:
	ldr r0, _08066790 @ =0x0036000B
	bl sub_080062D0
	bl sub_08065A60
_080665B6:
	movs r0, #0
	bl sub_08007668
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_08005BE0
	ldr r0, _08066794 @ =0x0036000C
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080665AC
	bl sub_08005A2C
	movs r0, #0x20
	movs r1, #0x20
	movs r2, #0x1e
	movs r3, #1
	bl sub_08064314
	cmp r6, #0
	bne _08066604
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _08066798 @ =0x0036000D
	bl sub_080062D0
	bl sub_08065BE0
_080665FC:
	bl sub_08005A2C
	bl sub_08065C00
_08066604:
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _0806679C @ =0x0036000F
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080665FC
	bl sub_08005A2C
	movs r0, #0x60
	movs r1, #0x60
	movs r2, #0x1e
	movs r3, #1
	bl sub_08064314
	cmp r6, #0
	bne _08066680
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _080667A0 @ =0x00360056
	bl sub_080062D0
_0806663A:
	movs r5, #0
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	ldr r4, _08066784 @ =0x030044C8
	ldr r1, [r4]
	adds r1, #0x8c
	ldr r2, _08066788 @ =0x05000008
	bl CpuSet
	movs r0, #0
	bl sub_080075E0
	ldr r1, [r4]
	adds r1, #0x8c
	movs r2, #6
	bl CpuSet
	bl sub_08005A2C
	movs r0, #1
	bl ProcSleep_08002B98
	movs r0, #0xc8
	lsls r0, r0, #1
	str r5, [sp]
	movs r1, #0xb
	movs r2, #0xa
	movs r3, #0xa
	bl sub_080655F0
	ldr r1, [r4]
	adds r1, #0x8c
	movs r0, #0
	bl sub_080075BC
_08066680:
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _080667A4 @ =0x00360057
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806663A
	bl sub_08005A2C
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r0, #0x18
	movs r2, #0x20
	bl sub_080646E4
	movs r0, #0x40
	movs r1, #0x40
	movs r2, #0x1e
	movs r3, #1
	bl sub_08064314
	cmp r6, #0
	bne _0806670E
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _080667A8 @ =0x00360010
	bl sub_080062D0
	ldr r0, _080667AC @ =0x00360011
	bl sub_080062D0
_080666C8:
	movs r5, #0
	str r5, [sp, #0x10]
	add r0, sp, #0x10
	ldr r4, _08066784 @ =0x030044C8
	ldr r1, [r4]
	adds r1, #0x8c
	ldr r2, _08066788 @ =0x05000008
	bl CpuSet
	movs r0, #0
	bl sub_08007624
	ldr r1, [r4]
	adds r1, #0x8c
	movs r2, #0xa
	bl CpuSet
	bl sub_08005A2C
	movs r0, #1
	bl ProcSleep_08002B98
	movs r0, #0xe0
	lsls r0, r0, #1
	str r5, [sp]
	movs r1, #3
	movs r2, #0xe
	movs r3, #0x13
	bl sub_080655F0
	ldr r1, [r4]
	adds r1, #0x8c
	movs r0, #0
	bl sub_08007600
_0806670E:
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _080667B0 @ =0x00360051
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080666C8
	bl sub_08005A2C
	movs r0, #0x18
	movs r1, #0x10
	movs r2, #0x20
	bl sub_080646E4
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x1e
	movs r3, #1
	bl sub_08064314
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _080667B4 @ =0x00360012
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080667BC
	ldr r0, _080667B8 @ =0x00360013
	bl sub_080062D0
	bl sub_08005A2C
	movs r6, #1
	b _0806650C
	.align 2, 0
_08066764: .4byte 0x01006000
_08066768: .4byte 0xFFFFFF00
_0806676C: .4byte 0x030024E0
_08066770: .4byte 0x00360001
_08066774: .4byte 0x00360002
_08066778: .4byte 0x00360004
_0806677C: .4byte 0x00360005
_08066780: .4byte 0x00360006
_08066784: .4byte 0x030044C8
_08066788: .4byte 0x05000008
_0806678C: .4byte 0x00360007
_08066790: .4byte 0x0036000B
_08066794: .4byte 0x0036000C
_08066798: .4byte 0x0036000D
_0806679C: .4byte 0x0036000F
_080667A0: .4byte 0x00360056
_080667A4: .4byte 0x00360057
_080667A8: .4byte 0x00360010
_080667AC: .4byte 0x00360011
_080667B0: .4byte 0x00360051
_080667B4: .4byte 0x00360012
_080667B8: .4byte 0x00360013
_080667BC:
	ldr r0, _08066854 @ =0x00360014
	bl sub_080062D0
	ldr r0, _08066858 @ =0x00360015
	bl sub_080062D0
	bl sub_08005A2C
	ldr r1, _0806685C @ =0xFFFFFF00
	movs r0, #0x18
	movs r2, #0x20
	bl sub_080646E4
	bl sub_08064794
	bl sub_08066354
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x3c
	movs r3, #1
	bl sub_08064314
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _08066860 @ =0x0036001B
	bl sub_080062D0
	ldr r0, _08066864 @ =0x0036001C
	bl sub_080062D0
	ldr r0, _08066868 @ =0x0036001D
	bl sub_080062D0
	ldr r0, _0806686C @ =0x0036001E
	bl sub_080062D0
	ldr r0, _08066870 @ =0x0036001F
	bl sub_080062D0
	bl sub_08005A2C
	bl sub_08064448
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08007424
	bl sub_08066320
	bl sub_080661B0
	movs r0, #0x12
	bl sub_080072F4
	movs r0, #0x23
	bl ChangeGameState_08008790
	bl sub_08002B0C
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066854: .4byte 0x00360014
_08066858: .4byte 0x00360015
_0806685C: .4byte 0xFFFFFF00
_08066860: .4byte 0x0036001B
_08066864: .4byte 0x0036001C
_08066868: .4byte 0x0036001D
_0806686C: .4byte 0x0036001E
_08066870: .4byte 0x0036001F

	thumb_func_start sub_08066874
sub_08066874: @ 0x08066874
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #0
	str r5, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080668E4 @ =0x01006000
	mov r0, sp
	bl CpuFastSet
	movs r0, #1
	bl sub_080660B8
	bl sub_08066120
	movs r0, #0
	bl sub_0800759C
	adds r1, r0, #0
	movs r0, #0
	bl sub_08005BE0
	bl sub_080661E0
	movs r0, #4
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _080668E8 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r4, #1
	rsbs r4, r4, #0
_080668C6:
	ldr r0, _080668EC @ =0x00360020
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080668FC
	cmp r0, #1
	bgt _080668F0
	cmp r0, #0
	beq _080668F6
	b _08066914
	.align 2, 0
_080668E4: .4byte 0x01006000
_080668E8: .4byte 0x030024E0
_080668EC: .4byte 0x00360020
_080668F0:
	cmp r0, #2
	beq _08066902
	b _08066914
_080668F6:
	bl sub_08066A4C
	b _08066906
_080668FC:
	bl sub_08066E8C
	b _08066906
_08066902:
	bl sub_08066CF8
_08066906:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r4
	bne _08066916
	movs r5, #1
	b _08066916
_08066914:
	movs r1, #0xff
_08066916:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, r4
	beq _08066926
	movs r0, #1
	bl ProcSleep_08002B98
	b _080668C6
_08066926:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08066320
	bl sub_080661B0
	cmp r5, #0
	beq _08066958
	movs r0, #0x12
	bl sub_080072F4
	movs r0, #0x23
	bl ChangeGameState_08008790
	b _0806695E
_08066958:
	movs r0, #0x12
	bl ChangeGameState_08008790
_0806695E:
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806696C
sub_0806696C: @ 0x0806696C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0xb
	movs r1, #2
	movs r2, #0xa
	movs r3, #0
	bl sub_080655A0
	movs r0, #0xb
	movs r1, #6
	movs r2, #0xa
	movs r3, #0
	bl sub_080655A0
	movs r0, #0xb
	movs r1, #0xa
	movs r2, #0xa
	movs r3, #0
	bl sub_080655A0
	movs r0, #3
	movs r1, #0xe
	movs r2, #0x13
	movs r3, #0
	bl sub_080655A0
	bl sub_0806531C
	adds r0, r4, #0
	bl sub_0800759C
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #0
	beq _08066A3E
	adds r0, r4, #0
	bl sub_080075E0
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_08007624
	mov r8, r0
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_080076B0
	adds r0, r4, #0
	bl sub_08007668
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r5, #0
	str r5, [sp]
	adds r0, r7, #0
	movs r2, #0xb
	movs r3, #2
	bl sub_08065440
	movs r0, #1
	bl ProcSleep_08002B98
	movs r1, #0xc8
	lsls r1, r1, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r2, #0xb
	movs r3, #0xa
	bl sub_08065440
	movs r0, #1
	bl ProcSleep_08002B98
	movs r1, #0xe0
	lsls r1, r1, #1
	str r5, [sp]
	mov r0, r8
	movs r2, #3
	movs r3, #0xe
	bl sub_08065440
	movs r0, #1
	bl ProcSleep_08002B98
	movs r1, #0xea
	lsls r1, r1, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r2, #0xb
	movs r3, #6
	bl sub_0806598C
	movs r0, #1
	bl ProcSleep_08002B98
	add r0, sp, #4
	bl sub_08065294
_08066A3E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08066A4C
sub_08066A4C: @ 0x08066A4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007440
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r5, #0
	movs r6, #0
	ldr r1, _08066ABC @ =0xFFFFFF00
	movs r0, #0x18
	bl sub_080646CC
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_080646B0
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_0806511C
	movs r0, #0
	bl sub_0806696C
	movs r0, #0x18
	movs r1, #0x10
	movs r2, #0x10
	bl sub_080646E4
	movs r0, #0
	bl sub_08065248
	bl sub_08064CD0
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x64
	bl sub_08064DAC
	movs r0, #0
	bl sub_080660B8
	movs r0, #0x18
	movs r1, #0x10
	bl sub_080646CC
	lsls r4, r4, #0x18
	asrs r0, r4, #0x18
	mov r8, r0
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r7, r4, r1
	b _08066C88
	.align 2, 0
_08066ABC: .4byte 0xFFFFFF00
_08066AC0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08066B1E
	movs r0, #0xcb
	bl m4aSongNumStart
	lsls r0, r5, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _08066ADE
	lsrs r5, r7, #0x18
_08066ADE:
	movs r0, #0
	bl sub_08064D7C
	bl sub_08065274
	movs r0, #0x84
	lsls r0, r0, #1
	movs r1, #0x10
	movs r2, #0x10
	bl sub_080646E4
	movs r0, #0xd8
	rsbs r0, r0, #0
	movs r1, #0x10
	bl sub_080646CC
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0806696C
	movs r0, #0x18
	movs r1, #0x10
	movs r2, #0x10
	bl sub_080646E4
	adds r0, r4, #0
	bl sub_08065248
	movs r0, #1
	bl sub_08064D7C
	b _08066B7C
_08066B1E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08066B7C
	movs r0, #0xcb
	bl m4aSongNumStart
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	blt _08066B3E
	movs r5, #0
_08066B3E:
	movs r0, #0
	bl sub_08064D7C
	bl sub_08065274
	movs r0, #0xd8
	rsbs r0, r0, #0
	movs r1, #0x10
	movs r2, #0x10
	bl sub_080646E4
	movs r0, #0x84
	lsls r0, r0, #1
	movs r1, #0x10
	bl sub_080646CC
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0806696C
	movs r0, #0x18
	movs r1, #0x10
	movs r2, #0x10
	bl sub_080646E4
	adds r0, r4, #0
	bl sub_08065248
	movs r0, #1
	bl sub_08064D7C
_08066B7C:
	ldr r3, _08066C04 @ =0x030024B0
	ldrh r1, [r3, #2]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	bne _08066C82
	ldrh r0, [r3]
	ands r2, r0
	cmp r2, #0
	beq _08066C82
	lsls r0, r5, #0x18
	cmp r0, #0
	bne _08066C38
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _08066C08 @ =0x00360024
	bl sub_080062D0
	ldr r0, _08066C0C @ =0x00360025
	bl sub_080062D0
	ldr r0, _08066C10 @ =0x00360026
	bl sub_080062D0
	ldr r0, _08066C14 @ =0x00360027
	bl sub_080062D0
	ldr r0, _08066C18 @ =0x00360028
	bl sub_080062D0
	ldr r0, _08066C1C @ =0x00360029
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08066BF0
	ldr r0, _08066C20 @ =0x0036002A
	bl sub_080062D0
	ldr r0, _08066C24 @ =0x0036002B
	bl sub_080062D0
	ldr r0, _08066C28 @ =0x0036002C
	bl sub_080062D0
	ldr r0, _08066C2C @ =0x0036002D
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08066CD0
_08066BF0:
	ldr r0, _08066C30 @ =0x0036002F
	bl sub_080062D0
	ldr r0, _08066C34 @ =0x00360030
	bl sub_080062D0
_08066BFC:
	bl sub_08005A2C
	b _08066C82
	.align 2, 0
_08066C04: .4byte 0x030024B0
_08066C08: .4byte 0x00360024
_08066C0C: .4byte 0x00360025
_08066C10: .4byte 0x00360026
_08066C14: .4byte 0x00360027
_08066C18: .4byte 0x00360028
_08066C1C: .4byte 0x00360029
_08066C20: .4byte 0x0036002A
_08066C24: .4byte 0x0036002B
_08066C28: .4byte 0x0036002C
_08066C2C: .4byte 0x0036002D
_08066C30: .4byte 0x0036002F
_08066C34: .4byte 0x00360030
_08066C38:
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	bl sub_0800759C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08066C7C
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _08066C74 @ =0x00360022
	bl sub_080062D0
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08066BFC
	adds r0, r4, #0
	bl sub_08007544
	adds r0, r4, #0
	bl sub_0806696C
	movs r6, #1
	ldr r0, _08066C78 @ =0x00360023
	bl sub_080062D0
	b _08066BFC
	.align 2, 0
_08066C74: .4byte 0x00360022
_08066C78: .4byte 0x00360023
_08066C7C:
	movs r0, #0xd2
	bl m4aSongNumStart
_08066C82:
	movs r0, #1
	bl ProcSleep_08002B98
_08066C88:
	ldr r0, _08066CC8 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08066C96
	b _08066AC0
_08066C96:
	movs r0, #0xce
	bl m4aSongNumStart
_08066C9C:
	bl sub_08064D48
	bl sub_080651F0
	movs r0, #1
	bl sub_080660B8
	movs r0, #0x18
	movs r1, #0x10
	bl sub_080646CC
	ldr r1, _08066CCC @ =0xFFFFFF00
	movs r0, #0x18
	movs r2, #0x10
	bl sub_080646E4
	bl sub_08064794
	cmp r6, #0
	bne _08066CE8
	movs r0, #0
	b _08066CEC
	.align 2, 0
_08066CC8: .4byte 0x030024B0
_08066CCC: .4byte 0xFFFFFF00
_08066CD0:
	ldr r0, _08066CE4 @ =0x0036002E
	bl sub_080062D0
	bl sub_0800734C
	movs r6, #1
	bl sub_08005A2C
	b _08066C9C
	.align 2, 0
_08066CE4: .4byte 0x0036002E
_08066CE8:
	movs r0, #1
	rsbs r0, r0, #0
_08066CEC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066CF8
sub_08066CF8: @ 0x08066CF8
	push {r4, r5, r6, lr}
	sub sp, #0x38
	movs r6, #0
	bl sub_08064418
	movs r0, #0x23
	bl sub_080059E4
	bl sub_0800750C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08066D3C
	movs r0, #0
	bl sub_0800759C
	adds r1, r0, #0
	movs r0, #0
	bl sub_08005BE0
	ldr r0, _08066D34 @ =0x00360058
	bl sub_080062D0
	ldr r0, _08066D38 @ =0x00360059
	bl sub_080062D0
	b _08066E72
	.align 2, 0
_08066D34: .4byte 0x00360058
_08066D38: .4byte 0x00360059
_08066D3C:
	ldr r0, _08066DB8 @ =0x0036003A
	bl sub_080062D0
	ldr r0, _08066DBC @ =0x0036003B
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08066D54
	b _08066E6C
_08066D54:
	ldr r0, _08066DC0 @ =0x0036003C
	bl sub_080062D0
	ldr r0, _08066DC4 @ =0x0036003D
	bl sub_080062D0
	ldr r0, _08066DC8 @ =0x0036003E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08066D72
	b _08066E6C
_08066D72:
	bl sub_08005A2C
	bl sub_08003468
	bl sub_08003510
	ldr r0, _08066DCC @ =0x004F0002
	bl sub_080033B0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x11
	bl sub_0800353C
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08003458
	cmp r5, #0
	bne _08066DD4
	bl sub_080034DC
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _08066DD0 @ =0x00360044
	bl sub_080062D0
	b _08066E72
	.align 2, 0
_08066DB8: .4byte 0x0036003A
_08066DBC: .4byte 0x0036003B
_08066DC0: .4byte 0x0036003C
_08066DC4: .4byte 0x0036003D
_08066DC8: .4byte 0x0036003E
_08066DCC: .4byte 0x004F0002
_08066DD0: .4byte 0x00360044
_08066DD4:
	movs r0, #0x11
	add r1, sp, #0x34
	strb r0, [r1]
	ldr r0, _08066E4C @ =0x0000999A
	mov r4, sp
	adds r4, #0x35
	adds r2, r4, #0
	movs r3, #1
	bl sub_08003998
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x11
	beq _08066DF4
	bl sub_0800386C
_08066DF4:
	ldr r0, _08066E50 @ =0x00001101
	ldr r1, _08066E54 @ =0x02031060
	mov r2, sp
	movs r3, #0x34
	bl sub_08003998
	movs r0, #0xa
	bl ProcSleep_08002B98
	bl sub_08003530
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_080034DC
	movs r0, #0xc9
	bl m4aSongNumStart
	movs r0, #0x23
	bl sub_080059E4
	mov r0, sp
	bl sub_080074A8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08066E60
	bl sub_0800750C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_08007458
	ldr r0, _08066E58 @ =0x00360040
	bl sub_080062D0
	ldr r0, _08066E5C @ =0x00360041
	bl sub_080062D0
	movs r6, #0xff
	b _08066E72
	.align 2, 0
_08066E4C: .4byte 0x0000999A
_08066E50: .4byte 0x00001101
_08066E54: .4byte 0x02031060
_08066E58: .4byte 0x00360040
_08066E5C: .4byte 0x00360041
_08066E60:
	ldr r0, _08066E68 @ =0x00360042
	bl sub_080062D0
	b _08066E72
	.align 2, 0
_08066E68: .4byte 0x00360042
_08066E6C:
	ldr r0, _08066E88 @ =0x0036003F
	bl sub_080062D0
_08066E72:
	bl sub_08005A2C
	bl sub_08064448
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08066E88: .4byte 0x0036003F

	thumb_func_start sub_08066E8C
sub_08066E8C: @ 0x08066E8C
	push {r4, lr}
	movs r4, #0
	bl sub_08064418
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _08066EC0 @ =0x00360032
	bl sub_080062D0
	ldr r0, _08066EC4 @ =0x00360033
	bl sub_080062D0
	ldr r0, _08066EC8 @ =0x00360034
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08066ED0
	ldr r0, _08066ECC @ =0x00360038
	bl sub_080062D0
	b _08066EFE
	.align 2, 0
_08066EC0: .4byte 0x00360032
_08066EC4: .4byte 0x00360033
_08066EC8: .4byte 0x00360034
_08066ECC: .4byte 0x00360038
_08066ED0:
	movs r4, #0xff
	ldr r0, _08066F10 @ =0x00360035
	bl sub_080062D0
	bl sub_08005A2C
	bl sub_08066354
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #0x3c
	movs r3, #1
	bl sub_08064314
	movs r0, #0x23
	bl sub_080059E4
	ldr r0, _08066F14 @ =0x00360036
	bl sub_080062D0
	ldr r0, _08066F18 @ =0x00360037
	bl sub_080062D0
_08066EFE:
	bl sub_08005A2C
	bl sub_08064448
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08066F10: .4byte 0x00360035
_08066F14: .4byte 0x00360036
_08066F18: .4byte 0x00360037
