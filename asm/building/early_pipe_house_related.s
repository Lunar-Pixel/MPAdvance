	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
	bl memcpy
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
	bl m4aSongNumStart
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
	bl m4aSongNumStart
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
	bl m4aSongNumStart
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
